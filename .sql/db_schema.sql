CREATE TABLE [dbo].[TBFornecedor] (
[Id] uniqueidentifier NOT NULL,
[Nome] nvarchar(100) NOT NULL,
[Telefone] nvarchar(50) NOT NULL,
[Cnpj] nvarchar(50),
PRIMARY KEY ([Id])
);

CREATE TABLE [dbo].[TBPaciente] (
[Id] uniqueidentifier NOT NULL IDENTITY(1,1),
[Nome] nvarchar(100) NOT NULL,
[Telefone] nvarchar(15) NOT NULL,
[Cpf] nvarchar(14) NOT NULL,
[Cartaosus] nvarchar(15) NOT NULL,
PRIMARY KEY ([Id])
);

CREATE TABLE [dbo].[TBFuncionario] (
[Id] uniqueidentifier NOT NULL IDENTITY(1,1),
[Nome] nvarchar(100) NOT NULL,
[Telefone] nvarchar(30) NOT NULL,
[Cpf] nvarchar(14) NOT NULL,
PRIMARY KEY ([Id])
);

CREATE TABLE [dbo].[TBMedicamento] (
[Id] uniqueidentifier NOT NULL IDENTITY(1,1),
[Nome] nvarchar(100),
[Descricao] nvarchar(255) NOT NULL,
[FornecedorId] uniqueidentifier,
PRIMARY KEY ([Id])
);


ALTER TABLE [dbo].[TBMedicamento]
ADD CONSTRAINT [FK_TBMedicamento_TBFornecedor]
FOREIGN KEY ([FornecedorId]) 
REFERENCES [dbo].[TBFornecedor]([Id])
ON DELETE NO ACTION
ON UPDATE NO ACTION;
