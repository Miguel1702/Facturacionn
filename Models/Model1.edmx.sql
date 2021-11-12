
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/11/2021 23:38:41
-- Generated from EDMX file: C:\Users\Familia\source\repos\Facturacionn\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [FacturacionDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Articulos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Articulos];
GO
IF OBJECT_ID(N'[dbo].[Clientes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Clientes];
GO
IF OBJECT_ID(N'[dbo].[Usuarios]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Usuarios];
GO
IF OBJECT_ID(N'[dbo].[Vendedores]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Vendedores];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Articulos'
CREATE TABLE [dbo].[Articulos] (
    [ID] int  NOT NULL,
    [Descripcion] varchar(255)  NULL,
    [Precio_unidad] int  NULL,
    [Estado] varchar(2)  NULL
);
GO

-- Creating table 'Clientes'
CREATE TABLE [dbo].[Clientes] (
    [ID] int  NOT NULL,
    [Nombre] varchar(255)  NULL,
    [Documento] varchar(50)  NULL,
    [Cuenta_contable] varchar(50)  NULL,
    [Estado] varchar(2)  NULL
);
GO

-- Creating table 'Usuarios'
CREATE TABLE [dbo].[Usuarios] (
    [ID] int  NOT NULL,
    [Nombre] varchar(255)  NULL,
    [Contra] varchar(50)  NULL,
    [Estado] varchar(2)  NULL
);
GO

-- Creating table 'Vendedores'
CREATE TABLE [dbo].[Vendedores] (
    [ID] int  NOT NULL,
    [Nombre] varchar(255)  NULL,
    [Comision] varchar(50)  NULL,
    [Estado] varchar(2)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'Articulos'
ALTER TABLE [dbo].[Articulos]
ADD CONSTRAINT [PK_Articulos]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Clientes'
ALTER TABLE [dbo].[Clientes]
ADD CONSTRAINT [PK_Clientes]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Usuarios'
ALTER TABLE [dbo].[Usuarios]
ADD CONSTRAINT [PK_Usuarios]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Vendedores'
ALTER TABLE [dbo].[Vendedores]
ADD CONSTRAINT [PK_Vendedores]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------