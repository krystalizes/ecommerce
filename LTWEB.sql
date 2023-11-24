USE [LTWEB]
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
))

CREATE TABLE [dbo].[Cart](
	[AccountID] int NULL,
	[ProductID] int NOT NULL,
	[Amount] [varchar](255) NOT NULL, 
)  ON [PRIMARY]

CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [int] NULL,
	[description] [nvarchar](max) NULL,
	[category] [nvarchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


SET IDENTITY_INSERT [dbo].[Account] ON 
INSERT [dbo].[Account] ([uID], [user], [pass], [isAdmin]) VALUES (1, N'Adam', N'123456', 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isAdmin]) VALUES (3, N'BAO', N'123456', 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
SET IDENTITY_INSERT [dbo].[product] ON 
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [category]) VALUES (1, N'MYSTERY BOX SLY 2022', N'anh/mockup-768x960.jpg', 100000, N' ',  N'accessories')
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [category]) VALUES (2, N'MYSTERY BOX 2.0', N'anh/Box2.jpg', 120000, N' ', N'accessories')
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [category]) VALUES (3, N'T-SHIRT STUDIO WHITE', N'anh/t-shirt-studio-White.jpg', 320000, N' ', N'top')
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [category]) VALUES (4, N'T-SHIRT STUDIO BLACK', N'anh/t-shirt-studio-black.jpg', 320000, N' ', N'top')
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [category]) VALUES (5, N'T-SHIRT DIFL BLUE', N'anh/t-shirt-Difl-blue.jpg', 320000, N' ', N'top')
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [category]) VALUES (6, N'T-SHIRT DIFL WHITE', N'anh/t-shirt-Difl-White.jpg', 320000, N' ', N'top')
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [category]) VALUES (7, N'T-SHIRT DIFL GREEN', N'anh/t-shirt-Difl-Green.jpg', 320000, N' ', N'top')
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [category]) VALUES (8, N'T-SHIRT DIFL BLACK', N'anh/t-shirt-Difl-black.jpg', 320000, N' ', N'top')
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [category]) VALUES (9, N'T-SHIRT DIFL BROWN', N'anh/t-shirt-Difl-Brown.jpg', 320000, N'1', N'top')
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [category]) VALUES (10, N'T-SHIRT DIFL GREY', N'anh/t-shirt-Difl-Grey.jpg', 320000, N' ', N'top')
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [category]) VALUES (11, N'HOODIE ZIP FLORA BEAN', N'anh/Hoodie-Zip-Bean1-scaled-1-768x960.jpg', 550000, N' ', N'outwear')
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [category]) VALUES (12, N'HOODIE ZIP FLORA WHITE', N'anh/Hoodie-Zip-Flora-White1-scaled-1-768x960.jpg', 550000, N' ', N'outwear')
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [category]) VALUES (13, N'HOODIE ZIP FLORA BLACK', N'anh/Hoodie-Zip-Flora-Black1-scaled-1-768x960.jpg', 550000, N' ', N'outwear')
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [category]) VALUES (14, N'HOODIE ZIP FLORA PEPPER', N'anh/Hoodie-Zip-Flora-Pepper1-scaled-1-768x960.jpg', 550000, N' ', N'outwear')
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [category]) VALUES (15, N'HOODIE 253 TAN', N'anh/Hoodie-253-tan-1.jpg', 590000, N' ', N'outwear')
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [category]) VALUES (16, N'HOODIE 253 GREEN', N'anh/Hoodie-253-Green-1-768x960.jpg', 590000, N' ', N'outwear')
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [category]) VALUES (17, N'SHORT UNIVER', N'anh/Short-universe-2.jpg', 350000, N' ', N'bottom')
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [category]) VALUES (18, N'PANTS UNIVERSE', N'anh/Pants-universe-2-768x960.jpg', 380000, N' ', N'bottom')
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [category]) VALUES (19, N'BOX PANTBLACK', N'anh/pant-box-black_2-768x960.jpg', 390000, N' ', N'bottom')
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [category]) VALUES (20, N'JOGGER SLY BLACK', N'anh/Jogger-SLY-Black_1-768x960.jpg', 330000, N' ', N'bottom')
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [category]) VALUES (21, N'BOX SHORT BLACK', N'anh/short-box-black_2.jpg', 320000, N' ', N'bottom')
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [category]) VALUES (22, N'PANT CHAOS TAN', N'anh/pant-chaos-tan-2-768x960.jpg', 390000, N' ', N'bottom')
SET IDENTITY_INSERT [dbo].[product] OFF
