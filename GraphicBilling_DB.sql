USE [GraphicsBillingApp]
GO
/****** Object:  Table [dbo].[Table]    Script Date: 04-29-2023 12:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table](
	[Id] [int] NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[GrandTotal] [nvarchar](50) NULL,
	[PaidAmount] [nvarchar](50) NULL,
	[BalanceAmount] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Billing1]    Script Date: 04-29-2023 12:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Billing1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Quantity] [numeric](18, 0) NULL,
	[Rate] [numeric](18, 0) NULL,
	[TotalAmount] [numeric](18, 0) NULL,
	[CGST] [numeric](18, 0) NULL,
	[SGST] [numeric](18, 0) NULL,
	[IGST] [numeric](18, 0) NULL,
	[GrandTotal] [numeric](18, 0) NULL,
	[PaidAmount] [numeric](18, 0) NULL,
	[Date] [datetime] NULL,
	[GSTNo] [numeric](18, 0) NULL,
	[BalanceAmount] [numeric](18, 0) NULL,
	[ItemName] [nvarchar](50) NULL,
	[ItemSize] [nvarchar](50) NULL,
	[CompanyID] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Billing1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_createcustomer]    Script Date: 04-29-2023 12:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_createcustomer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[MobileNo] [numeric](18, 0) NULL,
	[GSTNo] [numeric](18, 0) NULL,
	[CompanyName] [nvarchar](50) NULL,
	[EmailID] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_createcustomer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Gharph]    Script Date: 04-29-2023 12:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Gharph](
	[GSTCollection] [numeric](18, 0) NULL,
	[TodaysCollection] [numeric](18, 0) NULL,
	[PendingOrders] [numeric](18, 0) NULL,
	[TodaysOrders] [numeric](18, 0) NULL,
	[BalanceAmount] [numeric](18, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_itemnameandsize]    Script Date: 04-29-2023 12:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_itemnameandsize](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [nvarchar](50) NULL,
	[ItemSize] [nvarchar](50) NULL,
	[GST] [numeric](18, 0) NULL,
 CONSTRAINT [PK_tbl_itemnameandsize] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Login]    Script Date: 04-29-2023 12:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Login](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EmailID] [nvarchar](50) NULL,
	[Password] [numeric](18, 0) NULL,
	[CompanyID] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Login] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Order]    Script Date: 04-29-2023 12:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[GSTNo] [numeric](18, 0) NULL,
	[Quantity] [numeric](18, 0) NULL,
	[Rate] [numeric](18, 0) NULL,
	[Total] [numeric](18, 0) NULL,
	[OrderDate] [datetime] NULL,
	[ItemName] [nvarchar](50) NULL,
	[ItemSize] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_OrderBill]    Script Date: 04-29-2023 12:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_OrderBill](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_OrderBill] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_PendingOrders]    Script Date: 04-29-2023 12:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PendingOrders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Customer] [nvarchar](50) NULL,
	[OrderDate] [datetime] NULL,
	[TotalAmt] [numeric](18, 0) NULL,
	[Advance] [nvarchar](50) NULL,
	[BalanceAmt] [numeric](18, 0) NULL,
 CONSTRAINT [PK_tbl_PendingOrders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Registration1]    Script Date: 04-29-2023 12:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Registration1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[CompanyName] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[MobileNo] [nvarchar](50) NULL,
	[EmailID] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[CompanyID] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Registration1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Report]    Script Date: 04-29-2023 12:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Report](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NULL,
	[OrderCount] [numeric](18, 0) NULL,
	[Total] [numeric](18, 0) NULL,
 CONSTRAINT [PK_tbl_Report] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_todayscollection]    Script Date: 04-29-2023 12:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_todayscollection](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BillNo] [nvarchar](50) NULL,
	[CustomerName] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[Advance] [nvarchar](50) NULL,
	[TotalAmt] [numeric](18, 0) NULL,
 CONSTRAINT [PK_tbl_todayscollection] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_UpdateCustomers]    Script Date: 04-29-2023 12:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_UpdateCustomers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[MobileNo] [numeric](18, 0) NULL,
	[GSTNo] [numeric](18, 0) NULL,
	[CompanyName] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_UpdateCustomers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
