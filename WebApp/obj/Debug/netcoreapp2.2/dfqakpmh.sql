IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;

GO

CREATE TABLE [Student] (
    [Id] int NOT NULL IDENTITY,
    [Name] nvarchar(max) NULL,
    [Age] int NOT NULL,
    CONSTRAINT [PK_Student] PRIMARY KEY ([Id])
);

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20190524145728_Init', N'2.2.2-servicing-10034');

GO

ALTER TABLE [Student] ADD [IQ] int NOT NULL DEFAULT 0;

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20190524150408_Init2', N'2.2.2-servicing-10034');

GO

