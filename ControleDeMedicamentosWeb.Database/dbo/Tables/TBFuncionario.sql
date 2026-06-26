CREATE TABLE [dbo].[TBFuncionario] (
    [Id]       UNIQUEIDENTIFIER NOT NULL,
    [Nome]     NVARCHAR (100)   NOT NULL,
    [Telefone] NVARCHAR (30)    NOT NULL,
    [Cpf]      NVARCHAR (14)    NOT NULL
);
GO

ALTER TABLE [dbo].[TBFuncionario]
    ADD CONSTRAINT [PK_TBFuncionario] PRIMARY KEY CLUSTERED ([Id] ASC);
GO

