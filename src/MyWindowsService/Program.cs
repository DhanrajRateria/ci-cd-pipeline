using System.ServiceProcess;

internal static class Program
{
    static void Main()
    {
        ServiceBase.Run(new MyService());
    }
}