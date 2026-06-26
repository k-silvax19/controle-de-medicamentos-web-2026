CREATE TABLE [dbo].[TBPaciente] (
    [Id]        UNIQUEIDENTIFIER NOT NULL,
    [Nome]      NVARCHAR (100)   NOT NULL,
    [Telefone]  NVARCHAR (15)    NOT NULL,
    [Cpf]       NVARCHAR (14)    NOT NULL,
    [Cartaosus] NVARCHAR (15)    NOT NULL
);
GO

ALTER TABLE [dbo].[TBPaciente]
    ADD CONSTRAINT [PK_TBPaciente] PRIMARY KEY CLUSTERED ([Id] ASC);
GO

