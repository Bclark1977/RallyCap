using System.Threading;
using Microsoft.AspNet.SignalR;

namespace RallyCap.Journeys
{
    public class JourneyHub : Hub
    {
        public static JourneyHub Instance;
        public JourneyHub()
        {
            Instance = this;
        }
        public void Taunt(string messageType)
        {
            Clients.All.sendMessage(string.Format("PlayTaunt||{0}", messageType));
        }
        public void Chant(string messageType)
        {

            Clients.All.sendMessage(string.Format("PlayChant||{0}", messageType));

        }
        public void ResetTimer(string timer)
        {
            GameStart = false;
            CountDownTimer = int.Parse(timer);
            CountdownToGameTime();
        }
        private volatile static bool GameStart = false;
        private volatile static int CountDownTimer = 300;

        private volatile static bool isCountdownRunning = false;


        private static System.Threading.Thread CountdownTimer_Thread;
        private void CountdownTimer_OutOfProcess()
        {
            while (!GameStart && CountDownTimer > 0)
            {
                
                Clients.All.sendMessage(string.Format("CountDown||{0}", CountDownTimer));
                CountDownTimer--;

                System.Threading.Thread.Sleep(1000);
            }
            isCountdownRunning = false;
            CountdownTimer_Thread = null;

            if (CountDownTimer <= 0)
            {
                StartGameNow();
            }
        }
        public void CountdownToGameTime()
        {
            if (isCountdownRunning)
                return;
            isCountdownRunning = true;
            ThreadStart ths = new ThreadStart(CountdownTimer_OutOfProcess);
            CountdownTimer_Thread = new Thread(ths);
            CountdownTimer_Thread.Start();

        }
        public void StartGameNow()
        {
            isCountdownRunning = false;
            CountDownTimer = 0;
            GameStart = true;
         
            try
            {
                CountdownTimer_Thread.Abort();
            }
            catch
            {
                // swallow
            }
            Clients.All.sendMessage(string.Format("GameStart"));
        }
    }
}