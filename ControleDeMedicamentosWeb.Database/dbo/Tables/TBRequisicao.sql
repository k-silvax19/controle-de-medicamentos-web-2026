CREATE TABLE [dbo].[TBRequisicao] (
    [Id]          UNIQUEIDENTIFIER NOT NULL,
    [DataCriacao] DATETIME2 (0)    NULL
);
GO

ALTER TABLE [dbo].[TBRequisicao]
    ADD CONSTRAINT [PK_TBRequisicao] PRIMARY KEY CLUSTERED ([Id] ASC);
GO

