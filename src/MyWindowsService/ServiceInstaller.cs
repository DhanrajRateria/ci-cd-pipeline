using System.Configuration.Install;
using System.ServiceProcess;

[RunInstaller(true)]
public class ServiceInstaller : Installer
{
    public ServiceInstaller()
    {
        var serviceProcessInstaller = new ServiceProcessInstaller
        {
            Account = ServiceAccount.LocalSystem
        };

        var serviceInstaller = new ServiceInstaller
        {
            ServiceName = "MyWindowsService",
            DisplayName = "My Windows Service",
            StartType = ServiceStartMode.Automatic
        };

        Installers.Add(serviceProcessInstaller);
        Installers.Add(serviceInstaller);
    }
}