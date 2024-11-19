using System.ServiceProcess;

public class MyService : ServiceBase
{
    protected override void OnStart(string[] args)
    {
        // Write startup logic here
        System.IO.File.WriteAllText(@"C:\ServiceLogs\log.txt", "Service Started");
    }

    protected override void OnStop()
    {
        // Write shutdown logic here
        System.IO.File.AppendAllText(@"C:\ServiceLogs\log.txt", "Service Stopped");
    }
}