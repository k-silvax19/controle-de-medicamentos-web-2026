CREATE TABLE [dbo].[TBRequisicaoSaida] (
    [Id]         UNIQUEIDENTIFIER NOT NULL,
    [PacienteId] UNIQUEIDENTIFIER NULL
);
GO

ALTER TABLE [dbo].[TBRequisicaoSaida]
    ADD CONSTRAINT [FK_TBRequisicaoSaida_TBPaciente] FOREIGN KEY ([PacienteId]) REFERENCES [dbo].[TBPaciente] ([Id]);
GO

ALTER TABLE [dbo].[TBRequisicaoSaida]
    ADD CONSTRAINT [FK_TBRequisicaoSaida_TBRequisicao] FOREIGN KEY ([Id]) REFERENCES [dbo].[TBRequisicao] ([Id]) ON DELETE CASCADE;
GO

ALTER TABLE [dbo].[TBRequisicaoSaida]
    ADD CONSTRAINT [PK_TB_RequisicaoSaida] PRIMARY KEY CLUSTERED ([Id] ASC);
GO

