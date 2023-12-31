USE [Restorant]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 11.12.2023 11:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[idCustomers] [int] IDENTITY(1,1) NOT NULL,
	[lastName] [nvarchar](100) NULL,
	[firstName] [nvarchar](100) NULL,
	[middleName] [nvarchar](100) NULL,
	[address] [nvarchar](100) NULL,
	[email] [nvarchar](50) NULL,
 CONSTRAINT [PK__Customer__D2815072165AE575] PRIMARY KEY CLUSTERED 
(
	[idCustomers] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dishes]    Script Date: 11.12.2023 11:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dishes](
	[idDishes] [int] IDENTITY(1,1) NOT NULL,
	[idEmployees] [int] NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](max) NULL,
	[price] [decimal](10, 2) NULL,
 CONSTRAINT [PK__Dishes__F5A2703CF6389A9A] PRIMARY KEY CLUSTERED 
(
	[idDishes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DishIngredients]    Script Date: 11.12.2023 11:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DishIngredients](
	[idDishIngredients] [int] IDENTITY(1,1) NOT NULL,
	[idDish] [int] NOT NULL,
	[idIngredients] [int] NULL,
	[quantity] [decimal](10, 2) NULL,
 CONSTRAINT [PK_DishIngredients] PRIMARY KEY CLUSTERED 
(
	[idDishIngredients] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DishOrders]    Script Date: 11.12.2023 11:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DishOrders](
	[idDishOrders] [int] IDENTITY(1,1) NOT NULL,
	[idOrder] [int] NULL,
	[idDish] [int] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK__DishOrde__5619825CB5FC5836] PRIMARY KEY CLUSTERED 
(
	[idDishOrders] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 11.12.2023 11:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[idEmployee] [int] IDENTITY(1,1) NOT NULL,
	[idProfession] [int] NULL,
	[lastName] [nvarchar](100) NULL,
	[firstName] [nvarchar](100) NULL,
	[middleName] [nvarchar](100) NULL,
	[passportSeries] [nvarchar](4) NULL,
	[passportNumber] [nvarchar](6) NULL,
	[passportIssueDate] [nvarchar](10) NULL,
	[address] [nvarchar](100) NULL,
	[dateOfBirth] [date] NULL,
	[profession] [nvarchar](50) NULL,
	[workExperience] [int] NULL,
	[tenure] [int] NULL,
	[salary] [decimal](10, 2) NULL,
 CONSTRAINT [PK__Employee__227F26A5E5F739BB] PRIMARY KEY CLUSTERED 
(
	[idEmployee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntertainmentPrograms]    Script Date: 11.12.2023 11:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntertainmentPrograms](
	[idEntertainmentPrograms] [int] IDENTITY(1,1) NOT NULL,
	[idCustomers] [int] NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](max) NULL,
	[date] [date] NULL,
 CONSTRAINT [PK__Entertai__F96EAF614075AFEA] PRIMARY KEY CLUSTERED 
(
	[idEntertainmentPrograms] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingredients]    Script Date: 11.12.2023 11:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredients](
	[idIngredients] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[unitOfMeasurement] [nvarchar](10) NULL,
 CONSTRAINT [PK__Ingredie__563C0D218CA27E48] PRIMARY KEY CLUSTERED 
(
	[idIngredients] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 11.12.2023 11:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[idMenu] [int] IDENTITY(1,1) NOT NULL,
	[idDish] [int] NULL,
	[date] [date] NULL,
 CONSTRAINT [PK__Menu__C26AF483CD0C2ECD] PRIMARY KEY CLUSTERED 
(
	[idMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11.12.2023 11:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[idOrders] [int] IDENTITY(1,1) NOT NULL,
	[idCustomer] [int] NULL,
	[date] [datetime] NULL,
	[orderType] [nvarchar](50) NULL,
	[orderStatus] [nvarchar](50) NULL,
 CONSTRAINT [PK__Orders__57EB7B0D488B5389] PRIMARY KEY CLUSTERED 
(
	[idOrders] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profession]    Script Date: 11.12.2023 11:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profession](
	[idProfession] [int] IDENTITY(1,1) NOT NULL,
	[professionName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Profession] PRIMARY KEY CLUSTERED 
(
	[idProfession] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purchases]    Script Date: 11.12.2023 11:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchases](
	[idPurchases] [int] IDENTITY(1,1) NOT NULL,
	[idIngredient] [int] NULL,
	[date] [date] NULL,
	[quantity] [decimal](10, 2) NULL,
 CONSTRAINT [PK__Purchase__3928D634AFD2D45D] PRIMARY KEY CLUSTERED 
(
	[idPurchases] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reports]    Script Date: 11.12.2023 11:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reports](
	[idReports] [int] IDENTITY(1,1) NOT NULL,
	[idEmployee] [int] NULL,
	[reportDate] [date] NULL,
	[expenses] [decimal](10, 2) NULL,
	[taxes] [decimal](10, 2) NULL,
	[profit] [decimal](10, 2) NULL,
 CONSTRAINT [PK__Reports__3213E83FADE1BEBD] PRIMARY KEY CLUSTERED 
(
	[idReports] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 11.12.2023 11:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[idReviews] [int] IDENTITY(1,1) NOT NULL,
	[idCustomer] [int] NULL,
	[text] [nvarchar](max) NULL,
 CONSTRAINT [PK__Reviews__64D9B4076E270E0E] PRIMARY KEY CLUSTERED 
(
	[idReviews] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 11.12.2023 11:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[idRole] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[idRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11.12.2023 11:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[idUser] [int] IDENTITY(1,1) NOT NULL,
	[idRole] [int] NULL,
	[idEmployee] [int] NULL,
	[login] [nvarchar](50) NULL,
	[password] [nvarchar](100) NULL,
 CONSTRAINT [PK__LoginsAn__19E652447DCA4B48] PRIMARY KEY CLUSTERED 
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([idEmployee], [idProfession], [lastName], [firstName], [middleName], [passportSeries], [passportNumber], [passportIssueDate], [address], [dateOfBirth], [profession], [workExperience], [tenure], [salary]) VALUES (1, 1, N'Ефримовив', N'Ерафим', N'Ефранкович', N'1234', N'123456', N'01.01.2000', N'Москва', CAST(N'2000-12-02' AS Date), NULL, 10, 5, CAST(2500.00 AS Decimal(10, 2)))
INSERT [dbo].[Employees] ([idEmployee], [idProfession], [lastName], [firstName], [middleName], [passportSeries], [passportNumber], [passportIssueDate], [address], [dateOfBirth], [profession], [workExperience], [tenure], [salary]) VALUES (2, 1, N'Добрыня', N'Никита', N'Богомилович', N'1234', N'12345', N'01.01.200', N'Русь, Киев', CAST(N'2000-01-01' AS Date), NULL, 100, 100, CAST(10000.00 AS Decimal(10, 2)))
INSERT [dbo].[Employees] ([idEmployee], [idProfession], [lastName], [firstName], [middleName], [passportSeries], [passportNumber], [passportIssueDate], [address], [dateOfBirth], [profession], [workExperience], [tenure], [salary]) VALUES (3, 1, N'Анатольевна', N'Ирина', N'Сиренева', N'7777', N'777555', N'03.03.2003', N'Краснопырков', CAST(N'2003-03-03' AS Date), NULL, 10, 7, CAST(1500.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Profession] ON 

INSERT [dbo].[Profession] ([idProfession], [professionName]) VALUES (1, N'Стажер')
INSERT [dbo].[Profession] ([idProfession], [professionName]) VALUES (2, N'Хозяин')
INSERT [dbo].[Profession] ([idProfession], [professionName]) VALUES (3, N'Повар')
INSERT [dbo].[Profession] ([idProfession], [professionName]) VALUES (4, N'Шеф-повар')
INSERT [dbo].[Profession] ([idProfession], [professionName]) VALUES (5, N'Сушеф-повар')
INSERT [dbo].[Profession] ([idProfession], [professionName]) VALUES (6, N'Админ')
INSERT [dbo].[Profession] ([idProfession], [professionName]) VALUES (7, N'Оператор')
SET IDENTITY_INSERT [dbo].[Profession] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([idRole], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([idRole], [RoleName]) VALUES (2, N'Operator')
INSERT [dbo].[Role] ([idRole], [RoleName]) VALUES (3, N'Syperadmin')
INSERT [dbo].[Role] ([idRole], [RoleName]) VALUES (4, N'User')
INSERT [dbo].[Role] ([idRole], [RoleName]) VALUES (5, N'Quest')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([idUser], [idRole], [idEmployee], [login], [password]) VALUES (1, 1, 1, N'Admin', N'8C6976E5B5410415BDE908BD4DEE15DFB167A9C873FC4BB8A81F6F2AB448A918')
INSERT [dbo].[User] ([idUser], [idRole], [idEmployee], [login], [password]) VALUES (2, 3, 2, N'Syperadmin', N'6930BDA3F4833B2DE87FA8E2AD03A8C8949BC27DE0B01D217C604834E3A3C2F9')
INSERT [dbo].[User] ([idUser], [idRole], [idEmployee], [login], [password]) VALUES (3, 2, 3, N'Operator', N'06E55B633481F7BB072957EABCF110C972E86691C3CFEDABE088024BFFE42F23')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Dishes]  WITH CHECK ADD  CONSTRAINT [FK_Dishes_Employees] FOREIGN KEY([idEmployees])
REFERENCES [dbo].[Employees] ([idEmployee])
GO
ALTER TABLE [dbo].[Dishes] CHECK CONSTRAINT [FK_Dishes_Employees]
GO
ALTER TABLE [dbo].[DishIngredients]  WITH CHECK ADD  CONSTRAINT [FK__DishIngre__idDis__3A81B327] FOREIGN KEY([idDish])
REFERENCES [dbo].[Dishes] ([idDishes])
GO
ALTER TABLE [dbo].[DishIngredients] CHECK CONSTRAINT [FK__DishIngre__idDis__3A81B327]
GO
ALTER TABLE [dbo].[DishIngredients]  WITH CHECK ADD  CONSTRAINT [FK__DishIngre__idIng__3B75D760] FOREIGN KEY([idIngredients])
REFERENCES [dbo].[Ingredients] ([idIngredients])
GO
ALTER TABLE [dbo].[DishIngredients] CHECK CONSTRAINT [FK__DishIngre__idIng__3B75D760]
GO
ALTER TABLE [dbo].[DishOrders]  WITH CHECK ADD  CONSTRAINT [FK__DishOrder__dish___49C3F6B7] FOREIGN KEY([idDish])
REFERENCES [dbo].[Dishes] ([idDishes])
GO
ALTER TABLE [dbo].[DishOrders] CHECK CONSTRAINT [FK__DishOrder__dish___49C3F6B7]
GO
ALTER TABLE [dbo].[DishOrders]  WITH CHECK ADD  CONSTRAINT [FK__DishOrder__idOrd__48CFD27E] FOREIGN KEY([idOrder])
REFERENCES [dbo].[Orders] ([idOrders])
GO
ALTER TABLE [dbo].[DishOrders] CHECK CONSTRAINT [FK__DishOrder__idOrd__48CFD27E]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Profession] FOREIGN KEY([idProfession])
REFERENCES [dbo].[Profession] ([idProfession])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Profession]
GO
ALTER TABLE [dbo].[EntertainmentPrograms]  WITH CHECK ADD  CONSTRAINT [FK_EntertainmentPrograms_Customers] FOREIGN KEY([idCustomers])
REFERENCES [dbo].[Customers] ([idCustomers])
GO
ALTER TABLE [dbo].[EntertainmentPrograms] CHECK CONSTRAINT [FK_EntertainmentPrograms_Customers]
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD  CONSTRAINT [FK__Menu__idDish__3E52440B] FOREIGN KEY([idDish])
REFERENCES [dbo].[Dishes] ([idDishes])
GO
ALTER TABLE [dbo].[Menu] CHECK CONSTRAINT [FK__Menu__idDish__3E52440B]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__idCustom__45F365D3] FOREIGN KEY([idCustomer])
REFERENCES [dbo].[Customers] ([idCustomers])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__idCustom__45F365D3]
GO
ALTER TABLE [dbo].[Purchases]  WITH CHECK ADD  CONSTRAINT [FK__Purchases__idIng__412EB0B6] FOREIGN KEY([idIngredient])
REFERENCES [dbo].[Ingredients] ([idIngredients])
GO
ALTER TABLE [dbo].[Purchases] CHECK CONSTRAINT [FK__Purchases__idIng__412EB0B6]
GO
ALTER TABLE [dbo].[Reports]  WITH CHECK ADD  CONSTRAINT [FK__Reports__employe__5629CD9C] FOREIGN KEY([idEmployee])
REFERENCES [dbo].[Employees] ([idEmployee])
GO
ALTER TABLE [dbo].[Reports] CHECK CONSTRAINT [FK__Reports__employe__5629CD9C]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK__Reviews__idCusto__4CA06362] FOREIGN KEY([idCustomer])
REFERENCES [dbo].[Customers] ([idCustomers])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK__Reviews__idCusto__4CA06362]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Employees] FOREIGN KEY([idEmployee])
REFERENCES [dbo].[Employees] ([idEmployee])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Employees]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([idRole])
REFERENCES [dbo].[Role] ([idRole])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
