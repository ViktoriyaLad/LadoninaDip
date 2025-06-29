USE [Apteka]
GO
/****** Object:  Table [dbo].[Postavshik]    Script Date: 08.06.2025 21:32:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Postavshik](
	[IDPostavshik] [int] IDENTITY(1,1) NOT NULL,
	[NamePostavshik] [nvarchar](50) NOT NULL,
	[Telephone] [nvarchar](18) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[DeliveryDate] [date] NOT NULL,
 CONSTRAINT [PK_Postavshik] PRIMARY KEY CLUSTERED 
(
	[IDPostavshik] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prodagi]    Script Date: 08.06.2025 21:32:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prodagi](
	[IDProdagi] [int] IDENTITY(1,1) NOT NULL,
	[IDList] [int] NOT NULL,
	[IDUser] [int] NOT NULL,
	[IDTovar] [int] NOT NULL,
	[DataProdagi] [date] NOT NULL,
	[ProductPrice] [money] NOT NULL,
	[TotalAmount] [money] NOT NULL,
 CONSTRAINT [PK_Prodagi] PRIMARY KEY CLUSTERED 
(
	[IDProdagi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 08.06.2025 21:32:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[IDRole] [int] IDENTITY(1,1) NOT NULL,
	[Rolename] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[IDRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tovar]    Script Date: 08.06.2025 21:32:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tovar](
	[IDTovar] [int] IDENTITY(1,1) NOT NULL,
	[IDPostavshika] [int] NOT NULL,
	[TovarName] [nvarchar](50) NOT NULL,
	[PurchasePrice] [nvarchar](50) NOT NULL,
	[SalePrice] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Recipe] [nvarchar](50) NOT NULL,
	[BestBeforeDate] [date] NOT NULL,
	[IDVid] [int] NOT NULL,
	[ImageTovar] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tovar] PRIMARY KEY CLUSTERED 
(
	[IDTovar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 08.06.2025 21:32:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[IDUser] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Telephone] [int] NOT NULL,
	[IDRol] [int] NOT NULL,
	[UserLogin] [nvarchar](50) NOT NULL,
	[UserPassword] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[IDUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vid]    Script Date: 08.06.2025 21:32:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vid](
	[IDVid] [int] IDENTITY(1,1) NOT NULL,
	[NameVid] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Vid] PRIMARY KEY CLUSTERED 
(
	[IDVid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Postavshik] ON 

INSERT [dbo].[Postavshik] ([IDPostavshik], [NamePostavshik], [Telephone], [Address], [DeliveryDate]) VALUES (1, N'ФармГрупп', N'3424343', N'ул. Ленина, д. 1, г. Москва', CAST(N'2025-11-15' AS Date))
INSERT [dbo].[Postavshik] ([IDPostavshik], [NamePostavshik], [Telephone], [Address], [DeliveryDate]) VALUES (3, N'Новая Аптека', N'545565', N'ул. Краснопресненская, д. 5, г. Москва', CAST(N'2023-11-17' AS Date))
INSERT [dbo].[Postavshik] ([IDPostavshik], [NamePostavshik], [Telephone], [Address], [DeliveryDate]) VALUES (4, N'ФармаЛайн', N'564566', N'ул. Тверская, д. 20, г. Москва', CAST(N'2023-11-18' AS Date))
INSERT [dbo].[Postavshik] ([IDPostavshik], [NamePostavshik], [Telephone], [Address], [DeliveryDate]) VALUES (5, N'МедСнаб', N'4565466', N'ул. Бутырская, д. 2, г. Москва', CAST(N'2023-11-19' AS Date))
INSERT [dbo].[Postavshik] ([IDPostavshik], [NamePostavshik], [Telephone], [Address], [DeliveryDate]) VALUES (6, N'ЭкоФарм', N'4563656', N' ул. Арбат, д. 12, г. Москва', CAST(N'2023-11-20' AS Date))
INSERT [dbo].[Postavshik] ([IDPostavshik], [NamePostavshik], [Telephone], [Address], [DeliveryDate]) VALUES (10, N'МедФормула', N'4645365', N'ул. Щелковская, д. 8, г. Москва', CAST(N'2023-11-24' AS Date))
INSERT [dbo].[Postavshik] ([IDPostavshik], [NamePostavshik], [Telephone], [Address], [DeliveryDate]) VALUES (11, N'Фарма-Про', N'5464564', N'ул. Мироновская, д. 11, г. Москва', CAST(N'2023-11-25' AS Date))
SET IDENTITY_INSERT [dbo].[Postavshik] OFF
GO
SET IDENTITY_INSERT [dbo].[Prodagi] ON 

INSERT [dbo].[Prodagi] ([IDProdagi], [IDList], [IDUser], [IDTovar], [DataProdagi], [ProductPrice], [TotalAmount]) VALUES (1, 1, 2, 1, CAST(N'2023-04-02' AS Date), 1200.0000, 1.0000)
INSERT [dbo].[Prodagi] ([IDProdagi], [IDList], [IDUser], [IDTovar], [DataProdagi], [ProductPrice], [TotalAmount]) VALUES (2, 1, 2, 2, CAST(N'2023-04-02' AS Date), 1200.0000, 1.0000)
INSERT [dbo].[Prodagi] ([IDProdagi], [IDList], [IDUser], [IDTovar], [DataProdagi], [ProductPrice], [TotalAmount]) VALUES (4, 2, 4, 4, CAST(N'2023-04-03' AS Date), 1500.0000, 2.0000)
INSERT [dbo].[Prodagi] ([IDProdagi], [IDList], [IDUser], [IDTovar], [DataProdagi], [ProductPrice], [TotalAmount]) VALUES (5, 2, 4, 5, CAST(N'2023-04-03' AS Date), 1500.0000, 1.0000)
INSERT [dbo].[Prodagi] ([IDProdagi], [IDList], [IDUser], [IDTovar], [DataProdagi], [ProductPrice], [TotalAmount]) VALUES (6, 2, 4, 6, CAST(N'2023-04-03' AS Date), 1500.0000, 1.0000)
INSERT [dbo].[Prodagi] ([IDProdagi], [IDList], [IDUser], [IDTovar], [DataProdagi], [ProductPrice], [TotalAmount]) VALUES (7, 3, 5, 7, CAST(N'2023-04-04' AS Date), 2100.0000, 1.0000)
INSERT [dbo].[Prodagi] ([IDProdagi], [IDList], [IDUser], [IDTovar], [DataProdagi], [ProductPrice], [TotalAmount]) VALUES (8, 3, 5, 8, CAST(N'2023-04-04' AS Date), 2100.0000, 1.0000)
INSERT [dbo].[Prodagi] ([IDProdagi], [IDList], [IDUser], [IDTovar], [DataProdagi], [ProductPrice], [TotalAmount]) VALUES (9, 3, 5, 9, CAST(N'2023-04-04' AS Date), 2100.0000, 1.0000)
INSERT [dbo].[Prodagi] ([IDProdagi], [IDList], [IDUser], [IDTovar], [DataProdagi], [ProductPrice], [TotalAmount]) VALUES (10, 4, 2, 10, CAST(N'2023-04-05' AS Date), 1700.0000, 2.0000)
INSERT [dbo].[Prodagi] ([IDProdagi], [IDList], [IDUser], [IDTovar], [DataProdagi], [ProductPrice], [TotalAmount]) VALUES (11, 5, 4, 11, CAST(N'2023-04-05' AS Date), 1200.0000, 1.0000)
INSERT [dbo].[Prodagi] ([IDProdagi], [IDList], [IDUser], [IDTovar], [DataProdagi], [ProductPrice], [TotalAmount]) VALUES (12, 4, 4, 11, CAST(N'2023-04-05' AS Date), 1000.0000, 1.0000)
INSERT [dbo].[Prodagi] ([IDProdagi], [IDList], [IDUser], [IDTovar], [DataProdagi], [ProductPrice], [TotalAmount]) VALUES (13, 6, 5, 13, CAST(N'2023-04-06' AS Date), 1600.0000, 2.0000)
INSERT [dbo].[Prodagi] ([IDProdagi], [IDList], [IDUser], [IDTovar], [DataProdagi], [ProductPrice], [TotalAmount]) VALUES (14, 6, 5, 14, CAST(N'2023-04-06' AS Date), 1600.0000, 1.0000)
INSERT [dbo].[Prodagi] ([IDProdagi], [IDList], [IDUser], [IDTovar], [DataProdagi], [ProductPrice], [TotalAmount]) VALUES (15, 7, 2, 15, CAST(N'2023-04-07' AS Date), 1450.0000, 2.0000)
INSERT [dbo].[Prodagi] ([IDProdagi], [IDList], [IDUser], [IDTovar], [DataProdagi], [ProductPrice], [TotalAmount]) VALUES (16, 7, 2, 16, CAST(N'2023-04-07' AS Date), 1450.0000, 1.0000)
INSERT [dbo].[Prodagi] ([IDProdagi], [IDList], [IDUser], [IDTovar], [DataProdagi], [ProductPrice], [TotalAmount]) VALUES (17, 7, 2, 17, CAST(N'2023-04-07' AS Date), 1450.0000, 1.0000)
INSERT [dbo].[Prodagi] ([IDProdagi], [IDList], [IDUser], [IDTovar], [DataProdagi], [ProductPrice], [TotalAmount]) VALUES (19, 9, 2, 19, CAST(N'2025-04-09' AS Date), 2000.0000, 2.0000)
INSERT [dbo].[Prodagi] ([IDProdagi], [IDList], [IDUser], [IDTovar], [DataProdagi], [ProductPrice], [TotalAmount]) VALUES (20, 9, 2, 20, CAST(N'2023-04-09' AS Date), 2000.0000, 2.0000)
INSERT [dbo].[Prodagi] ([IDProdagi], [IDList], [IDUser], [IDTovar], [DataProdagi], [ProductPrice], [TotalAmount]) VALUES (22, 1, 1, 2, CAST(N'0001-01-01' AS Date), 22.0000, 2.0000)
SET IDENTITY_INSERT [dbo].[Prodagi] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([IDRole], [Rolename]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([IDRole], [Rolename]) VALUES (2, N'
Pharmacist')
INSERT [dbo].[Role] ([IDRole], [Rolename]) VALUES (3, N'Director')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Tovar] ON 

INSERT [dbo].[Tovar] ([IDTovar], [IDPostavshika], [TovarName], [PurchasePrice], [SalePrice], [Quantity], [Recipe], [BestBeforeDate], [IDVid], [ImageTovar]) VALUES (1, 1, N'Алфавит 50+ таблетки N60 БАД', N'200', N'431,20 ', 10, N'-', CAST(N'2023-02-01' AS Date), 1, N'https://static.zdravcity.ru/upload/iblock/3a6/350_210_photo_es.jpg')
INSERT [dbo].[Tovar] ([IDTovar], [IDPostavshika], [TovarName], [PurchasePrice], [SalePrice], [Quantity], [Recipe], [BestBeforeDate], [IDVid], [ImageTovar]) VALUES (2, 2, N'Алфавит Классик таблетки N120 БАД', N'500', N'980,00 ', 10, N'-', CAST(N'2023-02-01' AS Date), 1, NULL)
INSERT [dbo].[Tovar] ([IDTovar], [IDPostavshika], [TovarName], [PurchasePrice], [SalePrice], [Quantity], [Recipe], [BestBeforeDate], [IDVid], [ImageTovar]) VALUES (3, 1, N'Алфавит Энергия таблетки N60 БАД', N'400', N'803,60', 11, N'-', CAST(N'2023-02-01' AS Date), 1, NULL)
INSERT [dbo].[Tovar] ([IDTovar], [IDPostavshika], [TovarName], [PurchasePrice], [SalePrice], [Quantity], [Recipe], [BestBeforeDate], [IDVid], [ImageTovar]) VALUES (4, 1, N'Компливит Железо таблетки покрытые оболочкой БАД', N'200', N'431,20', 5, N'-', CAST(N'2023-02-01' AS Date), 1, NULL)
INSERT [dbo].[Tovar] ([IDTovar], [IDPostavshika], [TovarName], [PurchasePrice], [SalePrice], [Quantity], [Recipe], [BestBeforeDate], [IDVid], [ImageTovar]) VALUES (5, 2, N'Витамин Ф 99 крем жирный 50мл', N'150', N'352,80', 15, N'-', CAST(N'2023-02-10' AS Date), 2, NULL)
INSERT [dbo].[Tovar] ([IDTovar], [IDPostavshika], [TovarName], [PurchasePrice], [SalePrice], [Quantity], [Recipe], [BestBeforeDate], [IDVid], [ImageTovar]) VALUES (6, 2, N'Витамин Ф 99 крем п/жирный 50мл', N'150', N'333,20', 10, N'-', CAST(N'2023-02-10' AS Date), 2, NULL)
INSERT [dbo].[Tovar] ([IDTovar], [IDPostavshika], [TovarName], [PurchasePrice], [SalePrice], [Quantity], [Recipe], [BestBeforeDate], [IDVid], [ImageTovar]) VALUES (7, 2, N'Витамин В12 Анкерманн 1 мг таблетки покрытые ', N'500', N'1 109,36', 5, N'-', CAST(N'2023-02-10' AS Date), 2, NULL)
INSERT [dbo].[Tovar] ([IDTovar], [IDPostavshika], [TovarName], [PurchasePrice], [SalePrice], [Quantity], [Recipe], [BestBeforeDate], [IDVid], [ImageTovar]) VALUES (8, 2, N'Витамин С 1000 мг таблетки шипучие N20', N'250', N'568,40', 5, N'-', CAST(N'2023-02-10' AS Date), 2, NULL)
INSERT [dbo].[Tovar] ([IDTovar], [IDPostavshika], [TovarName], [PurchasePrice], [SalePrice], [Quantity], [Recipe], [BestBeforeDate], [IDVid], [ImageTovar]) VALUES (9, 3, N'911 Намозоль крем д/удаления сухой мозолей натоп', N'50', N'171,50', 10, N'-', CAST(N'2023-02-20' AS Date), 3, NULL)
INSERT [dbo].[Tovar] ([IDTovar], [IDPostavshika], [TovarName], [PurchasePrice], [SalePrice], [Quantity], [Recipe], [BestBeforeDate], [IDVid], [ImageTovar]) VALUES (10, 3, N'Боро Плюс крем 25мл розов/фиолет', N'50', N'160', 15, N'-', CAST(N'2023-02-20' AS Date), 3, NULL)
INSERT [dbo].[Tovar] ([IDTovar], [IDPostavshika], [TovarName], [PurchasePrice], [SalePrice], [Quantity], [Recipe], [BestBeforeDate], [IDVid], [ImageTovar]) VALUES (11, 3, N'Боро Плюс крем 25мл зеленый', N'50', N'161', 15, N'-', CAST(N'2023-02-20' AS Date), 3, NULL)
INSERT [dbo].[Tovar] ([IDTovar], [IDPostavshika], [TovarName], [PurchasePrice], [SalePrice], [Quantity], [Recipe], [BestBeforeDate], [IDVid], [ImageTovar]) VALUES (12, 4, N'Биодерма Атодерм бальзам для губ 15 мл', N'500', N'1 058,40', 5, N'-', CAST(N'2023-02-25' AS Date), 4, NULL)
INSERT [dbo].[Tovar] ([IDTovar], [IDPostavshika], [TovarName], [PurchasePrice], [SalePrice], [Quantity], [Recipe], [BestBeforeDate], [IDVid], [ImageTovar]) VALUES (13, 4, N'Биодерма Нодэ DS+ шампунь 125мл', N'1500', N'2 863,56', 3, N'-', CAST(N'2023-02-25' AS Date), 4, NULL)
INSERT [dbo].[Tovar] ([IDTovar], [IDPostavshika], [TovarName], [PurchasePrice], [SalePrice], [Quantity], [Recipe], [BestBeforeDate], [IDVid], [ImageTovar]) VALUES (14, 4, N'Алвин Дор Тени для век Bold Eyes AES-19 Жемчужная', N'100', N'225', 6, N'-', CAST(N'2023-02-25' AS Date), 4, NULL)
INSERT [dbo].[Tovar] ([IDTovar], [IDPostavshika], [TovarName], [PurchasePrice], [SalePrice], [Quantity], [Recipe], [BestBeforeDate], [IDVid], [ImageTovar]) VALUES (15, 5, N'Адаптол 500 мг таблетки N20', N'1000', N'1 968,82 ', 7, N'+', CAST(N'2023-03-01' AS Date), 5, NULL)
INSERT [dbo].[Tovar] ([IDTovar], [IDPostavshika], [TovarName], [PurchasePrice], [SalePrice], [Quantity], [Recipe], [BestBeforeDate], [IDVid], [ImageTovar]) VALUES (16, 5, N'Афобазол 10 мг таблетки N60', N'350', N'701', 3, N'+', CAST(N'2023-03-01' AS Date), 5, NULL)
INSERT [dbo].[Tovar] ([IDTovar], [IDPostavshika], [TovarName], [PurchasePrice], [SalePrice], [Quantity], [Recipe], [BestBeforeDate], [IDVid], [ImageTovar]) VALUES (17, 5, N'Билобил 40 мг капсулы N60', N'500', N'1 164,24', 8, N'-', CAST(N'2023-03-01' AS Date), 5, NULL)
INSERT [dbo].[Tovar] ([IDTovar], [IDPostavshika], [TovarName], [PurchasePrice], [SalePrice], [Quantity], [Recipe], [BestBeforeDate], [IDVid], [ImageTovar]) VALUES (18, 5, N'Валокордин 20мл', N'106', N'225', 20, N'-', CAST(N'2023-03-01' AS Date), 5, NULL)
INSERT [dbo].[Tovar] ([IDTovar], [IDPostavshika], [TovarName], [PurchasePrice], [SalePrice], [Quantity], [Recipe], [BestBeforeDate], [IDVid], [ImageTovar]) VALUES (19, 5, N'Винпоцетин Форте 10 мг таблетки N30', N'50', N'127', 50, N'-', CAST(N'2023-03-01' AS Date), 5, NULL)
INSERT [dbo].[Tovar] ([IDTovar], [IDPostavshika], [TovarName], [PurchasePrice], [SalePrice], [Quantity], [Recipe], [BestBeforeDate], [IDVid], [ImageTovar]) VALUES (20, 6, N'Авент Бутылка 260мл Anti-colic с силикон соской ', N'600', N'1 176,00', 8, N'-', CAST(N'2023-03-15' AS Date), 6, NULL)
INSERT [dbo].[Tovar] ([IDTovar], [IDPostavshika], [TovarName], [PurchasePrice], [SalePrice], [Quantity], [Recipe], [BestBeforeDate], [IDVid], [ImageTovar]) VALUES (21, 6, N'ЛАББИ Бутылочка 125мл с сил соск талия 12012', N'100', N'230', 5, N'-', CAST(N'2023-03-15' AS Date), 6, NULL)
INSERT [dbo].[Tovar] ([IDTovar], [IDPostavshika], [TovarName], [PurchasePrice], [SalePrice], [Quantity], [Recipe], [BestBeforeDate], [IDVid], [ImageTovar]) VALUES (22, 6, N'ЛАББИ Бутылочка 250мл с силиконовой соской клас', N'150', N'300', 8, N'-', CAST(N'2023-03-15' AS Date), 6, NULL)
INSERT [dbo].[Tovar] ([IDTovar], [IDPostavshika], [TovarName], [PurchasePrice], [SalePrice], [Quantity], [Recipe], [BestBeforeDate], [IDVid], [ImageTovar]) VALUES (23, 6, N'ЛАББИ Ложка с мягким кончиком с 4+ 15173', N'150', N'298', 6, N'-', CAST(N'2023-03-15' AS Date), 6, NULL)
SET IDENTITY_INSERT [dbo].[Tovar] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([IDUser], [Surname], [FirstName], [MiddleName], [Address], [Telephone], [IDRol], [UserLogin], [UserPassword]) VALUES (1, N'Смирнова', N'Анна', N'Викторовна', N'ул. Ленина, 10, кв. 5', 5665534, 1, N'anna_smirnova', N'P@ssw0rd1!')
INSERT [dbo].[User] ([IDUser], [Surname], [FirstName], [MiddleName], [Address], [Telephone], [IDRol], [UserLogin], [UserPassword]) VALUES (2, N'Иванов', N'Дмитрий
', N'Алексеевич', N'пр. Мира, 20', 5454556, 2, N'dmitry_ivanov', N'Qw3rty!234')
INSERT [dbo].[User] ([IDUser], [Surname], [FirstName], [MiddleName], [Address], [Telephone], [IDRol], [UserLogin], [UserPassword]) VALUES (3, N'Сидоров', N'Алексей', N'Вячеславович', N'ул. Победы, 25', 454534, 3, N'aleksey_sid', N'S!!de2024')
INSERT [dbo].[User] ([IDUser], [Surname], [FirstName], [MiddleName], [Address], [Telephone], [IDRol], [UserLogin], [UserPassword]) VALUES (4, N'Васильева', N'Ольга
', N'Николаевна', N'ул. Чкалова, 5', 45454, 2, N'olga_vas', N'Olg@2023!')
INSERT [dbo].[User] ([IDUser], [Surname], [FirstName], [MiddleName], [Address], [Telephone], [IDRol], [UserLogin], [UserPassword]) VALUES (5, N'Новиков', N'Сергей', N'Игоревич', N'ул. 1 Мая, 35', 565466, 2, N'sergey_nov', N'N0v!k2023')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[Vid] ON 

INSERT [dbo].[Vid] ([IDVid], [NameVid]) VALUES (1, N'БаДы')
INSERT [dbo].[Vid] ([IDVid], [NameVid]) VALUES (2, N'Витамины')
INSERT [dbo].[Vid] ([IDVid], [NameVid]) VALUES (3, N'Гигиена')
INSERT [dbo].[Vid] ([IDVid], [NameVid]) VALUES (4, N'Косметика')
INSERT [dbo].[Vid] ([IDVid], [NameVid]) VALUES (5, N'Лекартсвенные препораты')
INSERT [dbo].[Vid] ([IDVid], [NameVid]) VALUES (6, N'Для мамы и малыша')
SET IDENTITY_INSERT [dbo].[Vid] OFF
GO
ALTER TABLE [dbo].[Prodagi]  WITH CHECK ADD  CONSTRAINT [FK_Prodagi_Tovar] FOREIGN KEY([IDTovar])
REFERENCES [dbo].[Tovar] ([IDTovar])
GO
ALTER TABLE [dbo].[Prodagi] CHECK CONSTRAINT [FK_Prodagi_Tovar]
GO
ALTER TABLE [dbo].[Prodagi]  WITH CHECK ADD  CONSTRAINT [FK_Prodagi_User1] FOREIGN KEY([IDUser])
REFERENCES [dbo].[User] ([IDUser])
GO
ALTER TABLE [dbo].[Prodagi] CHECK CONSTRAINT [FK_Prodagi_User1]
GO
ALTER TABLE [dbo].[Role]  WITH CHECK ADD  CONSTRAINT [FK_Rol_User] FOREIGN KEY([IDRole])
REFERENCES [dbo].[User] ([IDUser])
GO
ALTER TABLE [dbo].[Role] CHECK CONSTRAINT [FK_Rol_User]
GO
