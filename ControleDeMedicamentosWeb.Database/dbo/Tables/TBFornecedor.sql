CREATE TABLE [dbo].[TBFornecedor] (
    [Id]       UNIQUEIDENTIFIER NOT NULL,
    [Nome]     NVARCHAR (100)   NOT NULL,
    [Telefone] NVARCHAR (50)    NOT NULL,
    [Cnpj]     NVARCHAR (50)    NOT NULL
);
GO

ALTER TABLE [dbo].[TBFornecedor]
    ADD CONSTRAINT [PK_TBFornecedor] PRIMARY KEY CLUSTERED ([Id] ASC);
GO

