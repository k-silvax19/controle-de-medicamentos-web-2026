USE [ControleDeMedicamentosWeb]
GO

DECLARE @FornecedorId UNIQUEIDENTIFIER = 'de98addf-933b-4263-a366-08c148dc3551';
DECLARE @FuncionarioId UNIQUEIDENTIFIER = '5a2909d3-683c-4f23-a62d-3628b50d3ca8';
DECLARE @PacienteId UNIQUEIDENTIFIER = 'e4cdf17c-79e6-4326-88cf-9cd86ac67ba3';
DECLARE @MedicamentoId UNIQUEIDENTIFIER = '68612fc5-1846-4a4f-a347-355c5501c099';


IF NOT EXISTS (SELECT 1 FROM [dbo].TBFornecedor WHERE [Id] = @FornecedorId)
BEGIN
    INSERT INTO [dbo].[TBFornecedor] ([Id], [Nome], [Telefone], [Cnpj])
    VALUES (@FornecedorId,N'nwadse', N'(11) 99959-9999', N'745834400430155' );
END;

SELECT [Id], [Nome], [Telefone], [Cnpj] FROM [dbo].[TBFornecedor];


IF NOT EXISTS (SELECT 1 FROM [dbo].TBFuncionario WHERE [Id] = @FuncionarioId)
BEGIN
    INSERT INTO [dbo].[TBFuncionario] ([Id], [Nome], [Telefone], [Cpf])
    VALUES (@FuncionarioId, N'Lenda', N'(20)99999-9999', N'04334532123');
END;
SELECT * FROM [dbo].[TBFuncionario]


IF NOT EXISTS (SELECT 1 FROM [dbo].TBPaciente WHERE [Id] = @PacienteId)
BEGIN
    INSERT INTO [dbo].[TBPaciente] ([Id], [Nome], [Telefone], [Cpf], [Cartaosus])
    VALUES (@PacienteId, N'Paciente Lenda', N'(20)99999-9999', N'04334532123', N'287800975890000');
END;
SELECT * FROM [dbo].[TBPaciente]

IF NOT EXISTS (SELECT 1 FROM [dbo].TBMedicamento WHERE [Id] = @MedicamentoId)
BEGIN
    INSERT INTO [dbo].TBMedicamento ([Id], [Nome], [Descricao], [FornecedorId])
    VALUES (@MedicamentoId, N'TST', N'hello world', @FornecedorId)
END;

SELECT * FROM [dbo].[TBMedicamento]

DElETE FROM [dbo].[TBMedicamento]
WHERE [Id] = @MedicamentoId

SELECT * FROM [dbo].[TBMedicamento]