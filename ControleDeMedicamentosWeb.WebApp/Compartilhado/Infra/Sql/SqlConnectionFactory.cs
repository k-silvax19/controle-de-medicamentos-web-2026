using System.Data.Common;
using Microsoft.AspNetCore.Authorization.Infrastructure;
using Microsoft.Data.SqlClient;

namespace ControleDeMedicamentosWeb.WebApp.Compartilhado.Infra.Sql;

public interface ISqlConnctionFactory
{
    SqlConnection CreateConnection();
}

public sealed class SqlConnectionFactory(IConfiguration configuration) : ISqlConnctionFactory
{
    private const string NomeConnectionString = "ControleDeMedicamentosWeb";

    public SqlConnection CreateConnection()
    {
        string? connectionString = configuration.GetConnectionString(NomeConnectionString);
    
        if (string.IsNullOrWhiteSpace(connectionString))
            throw new InvalidOperationException(
                $"A connection string {NomeConnectionString} não foi encontrada"
        );

        return new SqlConnection(connectionString);
    }
}