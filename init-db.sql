-- Create the NLQS database if it doesn't exist
IF DB_ID('NLQS') IS NULL
    CREATE DATABASE [NLQS];
GO

-- Switch context to the NLQS database
USE [NLQS];
GO

-- Create the Departments table if it doesn't exist
IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Departments' AND xtype='U')
BEGIN
    CREATE TABLE [dbo].[Departments](
        [DepartmentID] INT NOT NULL,
        [DepartmentName] NVARCHAR(100) NULL,
        [Location] NVARCHAR(100) NULL,
        CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED ([DepartmentID] ASC)
    );
END
GO

-- Create the Employees table if it doesn't exist
IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Employees' AND xtype='U')
BEGIN
    CREATE TABLE [dbo].[Employees](
        [EmployeeID] INT NOT NULL,
        [Name] NVARCHAR(100) NULL,
        [DepartmentID] INT NULL,
        [Salary] DECIMAL(10, 2) NULL,
        [HireDate] DATE NULL,
        CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED ([EmployeeID] ASC)
    );
END
GO

-- Insert seed data into Departments table (if not already there)
IF NOT EXISTS (SELECT 1 FROM [dbo].[Departments] WHERE [DepartmentID] = 1)
BEGIN
    INSERT INTO [dbo].[Departments] ([DepartmentID], [DepartmentName], [Location]) VALUES 
    (1, N'Human Resources', N'New York'),
    (2, N'Finance', N'Chicago'),
    (3, N'IT', N'San Francisco'),
    (4, N'Marketing', N'Los Angeles'),
    (5, N'Sales', N'Seattle'),
    (6, N'Research', N'Boston'),
    (7, N'Operations', N'Austin'),
    (8, N'Customer Support', N'Denver'),
    (9, N'Legal', N'Washington D.C.'),
    (10, N'Administration', N'Miami');
END
GO

-- Insert seed data into Employees table (if not already there)
IF NOT EXISTS (SELECT 1 FROM [dbo].[Employees] WHERE [EmployeeID] = 101)
BEGIN
    INSERT INTO [dbo].[Employees] ([EmployeeID], [Name], [DepartmentID], [Salary], [HireDate]) VALUES 
    (101, N'John Doe', 1, 60000.00, '2025-04-10'),
    (102, N'Jane Smith', 2, 75000.00, '2025-04-10'),
    (103, N'Mike Johnson', 3, 85000.00, '2025-04-10'),
    (104, N'Emily Davis', 4, 65000.00, '2025-04-10'),
    (105, N'Chris Brown', 5, 55000.00, '2025-04-10'),
    (106, N'Laura Wilson', 6, 90000.00, '2025-04-10'),
    (107, N'Tom Anderson', 7, 70000.00, '2025-04-10'),
    (108, N'Sarah Lee', 8, 58000.00, '2025-04-10'),
    (109, N'David Clark', 9, 95000.00, '2025-04-10'),
    (110, N'Emma Miller', 10, 67000.00, '2025-04-10');
END
GO
