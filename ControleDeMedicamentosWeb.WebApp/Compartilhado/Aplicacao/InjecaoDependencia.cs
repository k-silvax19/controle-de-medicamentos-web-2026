using ControleDeMedicamentosWeb.WebApp.Compartilhado.Aplicacao.Logging;
using ControleDeMedicamentosWeb.WebApp.Modulos.ModuloEstoque.Aplicacao;
using ControleDeMedicamentosWeb.WebApp.Modulos.ModuloFornecedor.Aplicacao;
using ControleDeMedicamentosWeb.WebApp.Modulos.ModuloFuncionario.Aplicacao;
using ControleDeMedicamentosWeb.WebApp.Modulos.ModuloMedicamento.Aplicacao;
using ControleDeMedicamentosWeb.WebApp.Modulos.ModuloPaciente.Aplicacao;
using Serilog;

namespace ControleDeMedicamentosWeb.WebApp.Compartilhado.Aplicacao;

public static class InjecaoDependencia
{
    public static void AddApplicationServices(this IServiceCollection services, IConfiguration configuration, ILoggingBuilder logging)
    {
        services.AddSerilogLogger(logging, configuration);

        services.AddScoped<ServicoEstoque>();
        services.AddScoped<ServicoFornecedor>();
        services.AddScoped<ServicoFuncionario>();
        services.AddScoped<ServicoMedicamento>();
        services.AddScoped<ServicoPaciente>();
    }
}
