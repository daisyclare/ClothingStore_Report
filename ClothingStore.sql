USE [ClothingStore]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[CartID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[ProductID] [int] NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[Total] [float] NULL,
	[Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[Quantity] [int] NULL,
	[OrderID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](100) NULL,
	[Cost] [float] NULL,
	[ProductDescription] [nvarchar](max) NULL,
	[ProductImageURL] [nvarchar](max) NULL,
	[CategoryID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserAccount] [nvarchar](50) NULL,
	[UserPassword] [nvarchar](50) NULL,
	[UserFullName] [nvarchar](50) NULL,
	[UserAddress] [nvarchar](100) NULL,
	[UserPhoneNumber] [nvarchar](20) NULL,
	[RoleID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (1, N'Shirt')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (2, N'Pants')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (3, N'Hoddie')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (5, N'toy')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [UserID], [Total], [Date]) VALUES (4, 2, 1161.4, CAST(N'2022-05-28T17:19:18.173' AS DateTime))
INSERT [dbo].[Order] ([OrderID], [UserID], [Total], [Date]) VALUES (5, 2, 627.80000000000007, CAST(N'2022-05-28T17:24:05.187' AS DateTime))
INSERT [dbo].[Order] ([OrderID], [UserID], [Total], [Date]) VALUES (6, 2, 402.4, CAST(N'2022-05-28T17:25:53.993' AS DateTime))
INSERT [dbo].[Order] ([OrderID], [UserID], [Total], [Date]) VALUES (7, 2, 960.2, CAST(N'2022-05-29T10:28:47.767' AS DateTime))
INSERT [dbo].[Order] ([OrderID], [UserID], [Total], [Date]) VALUES (8, 5, 253, CAST(N'2022-05-29T12:39:41.540' AS DateTime))
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([OrderDetailID], [ProductID], [Quantity], [OrderID]) VALUES (10, 1, 7, 4)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [ProductID], [Quantity], [OrderID]) VALUES (11, 2, 3, 4)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [ProductID], [Quantity], [OrderID]) VALUES (12, 1, 1, 5)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [ProductID], [Quantity], [OrderID]) VALUES (13, 2, 3, 5)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [ProductID], [Quantity], [OrderID]) VALUES (14, 3, 1, 5)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [ProductID], [Quantity], [OrderID]) VALUES (15, 1, 4, 6)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [ProductID], [Quantity], [OrderID]) VALUES (16, 1, 5, 7)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [ProductID], [Quantity], [OrderID]) VALUES (17, 2, 3, 7)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [ProductID], [Quantity], [OrderID]) VALUES (18, 1, 1, 8)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [ProductID], [Quantity], [OrderID]) VALUES (19, 2, 1, 8)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductName], [Cost], [ProductDescription], [ProductImageURL], [CategoryID]) VALUES (1, N'Military shirt', 100.6, N'for viet cong soldier', N'https://cf.shopee.vn/file/479df3f7833333660237121a6e57f041', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Cost], [ProductDescription], [ProductImageURL], [CategoryID]) VALUES (2, N'Hoddie Basic', 152.4, N'New casual hoddie hiphop street wear', N'https://ae01.alicdn.com/kf/HTB15dUFaPzuK1RjSspeq6ziHVXax/New-Casual-pink-black-gray-blue-hoddie-Hip-Hop-Street-wear-Sweatshirts-Skateboard-Men-Woman-Pullover.jpg_Q90.jpg_.webp', 3)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Cost], [ProductDescription], [ProductImageURL], [CategoryID]) VALUES (3, N'Men''s Notion Pants - Black Diamond ApparelMen''s Notion Pants', 70, N'Man Pant', N'https://cdn11.bigcommerce.com/s-hgn1l9sh63/images/stencil/1000w/attribute_rule_images/4350_source_1650693401.png', 2)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Customer')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserAccount], [UserPassword], [UserFullName], [UserAddress], [UserPhoneNumber], [RoleID]) VALUES (2, N'huy', N'123123', N'Bui Ngoc Huy', N'Quang Tri', N'0901165679', 1)
INSERT [dbo].[User] ([UserID], [UserAccount], [UserPassword], [UserFullName], [UserAddress], [UserPhoneNumber], [RoleID]) VALUES (5, N'huy123', N'123123', N'ngoc huy', N'quang tri', N'0901165679', 2)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
/****** Object:  StoredProcedure [dbo].[SP_AddProductToCart]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_AddProductToCart]


@_ProductID int,
@_UserID int,
@_ResponseCode int OUTPUT


as 
Begin	

SET @_ResponseCode = - 99;

	IF  EXISTS (SELECT 1 FROM [dbo].[Cart] WHERE (ProductID = @_ProductID))
		BEGIN


	
			Set @_ResponseCode = -1

		RETURN
		END


		IF NOT EXISTS (SELECT 1 FROM [dbo].[Cart] WHERE (ProductID = @_ProductID))
		BEGIN


			Insert into [dbo].[Cart](ProductID, [UserID],Quantity)
			values (@_ProductID,@_UserID,1)
			SET @_ResponseCode=1
		RETURN
		END
		




END
GO
/****** Object:  StoredProcedure [dbo].[SP_CartCheckOut]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_CartCheckOut]
@_UserID int,

@_ResponseCode int OUT
as 
Begin	
SET @_ResponseCode = -99

DELETE FROM [dbo].[Cart]
WHERE UserID = @_UserID
SET @_ResponseCode = 1

end
GO
/****** Object:  StoredProcedure [dbo].[SP_CartDelete]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_CartDelete]
@_ProductID int,

@_ResponseCode int OUT
as 
Begin	
SET @_ResponseCode = -99

DELETE FROM [dbo].[Cart]
WHERE ProductID = @_ProductID
SET @_ResponseCode = 1

end
GO
/****** Object:  StoredProcedure [dbo].[SP_CartUpdate]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_CartUpdate]
@_ProductID int,
@_Quantity int,
@_ResponseCode int OUT
as 
Begin	
SET @_ResponseCode = -99

UPDATE [dbo].[Cart]
SET Quantity = @_Quantity
WHERE ProductID = @_ProductID
SET @_ResponseCode = 1

end
GO
/****** Object:  StoredProcedure [dbo].[SP_CategoryGetDetailByID]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_CategoryGetDetailByID]
@_CategoryID int

as 
Begin	


SELECT * FROM [dbo].[Category] WHERE (CategoryID = @_CategoryID)



end
GO
/****** Object:  StoredProcedure [dbo].[SP_CreateCategory]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_CreateCategory]	
@_CategoryName nvarchar(50),

@_ResponseCode int OUTPUT


as 
Begin	

SET @_ResponseCode = - 99;
IF EXISTS (SELECT * FROM [dbo].[Category] WHERE CategoryName = @_CategoryName)
BEGIN 
	SET  @_ResponseCode = -100
	END

INSERT INTO [dbo].[Category]([CategoryName])
VALUES (@_CategoryName);
SET @_ResponseCode = 1



end
GO
/****** Object:  StoredProcedure [dbo].[SP_CreateOrder]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_CreateOrder]
@_UserID int,
@_Total float,
@_Date DateTime,
@_ResponseCode int OUTPUT


as 
Begin	

SET @_ResponseCode = - 99;

INSERT INTO [dbo].[Order] ([UserID], [Total], [Date])
VALUES (@_UserID, @_Total,@_Date);
SET @_ResponseCode = 1



end
GO
/****** Object:  StoredProcedure [dbo].[SP_CreateOrderDetail]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_CreateOrderDetail]

@_ProductID int,
@_Quantity int,
@_OderID int,
@_ResponseCode int OUTPUT


as 
Begin	

SET @_ResponseCode = - 99;

INSERT INTO [dbo].[OrderDetail] (ProductID, [Quantity], [OrderID])
VALUES (@_ProductID, @_Quantity,@_OderID);
SET @_ResponseCode = 1



end
GO
/****** Object:  StoredProcedure [dbo].[SP_CreateProduct]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_CreateProduct]
@_ProductName int,
@_Cost float,
@_ProductDescription NVARCHAR(MAX),
@_ProductImage NVARCHAR(MAX),
@_CategoryID int,
@_ResponseCode int OUTPUT


as 
Begin	

SET @_ResponseCode = - 99;

INSERT INTO [dbo].[Product] ([ProductName], [Cost], [ProductDescription], [ProductImageURL], [CategoryID])
VALUES (@_ProductName, @_Cost,@_ProductDescription,@_ProductImage,@_CategoryID);
SET @_ResponseCode = 1



end
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteProduct]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[SP_DeleteProduct]
@_ProductID int,

@_ResponseCode int OUT
as 
Begin	
SET @_ResponseCode = -99

DELETE FROM [dbo].[Product]
WHERE ProductID = @_ProductID
SET @_ResponseCode = 1

end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetCartByUser]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[SP_GetCartByUser]
@_UserID int

as 
Begin	


SELECT * FROM [dbo].[Cart] WHERE (UserID = @_UserID)



end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetListCategory]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_GetListCategory]


as 
Begin	



SELECT * FROM [dbo].[Category]




end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetListOrder]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_GetListOrder]


as 
Begin	



SELECT * FROM [dbo].[Order]




end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetListProduct]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_GetListProduct]


as 
Begin	



SELECT * FROM [dbo].[Product]




end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetListUser]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_GetListUser]


as 
Begin	



SELECT * FROM [dbo].[User]




end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetOrderID]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_GetOrderID]


@_UserID int,
@_Date DATETIME


as 
Begin	


		SELECT * FROM [dbo].[Order] WHERE 
		([UserID] = @_UserID AND  [Date] = @_Date) 



END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetProductByCategoryAndPagination]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_GetProductByCategoryAndPagination]
@_PageNumber int,
@_NumberPerPage INT,
@_CategoryID INT


as 
Begin	
DECLARE @PageNumber AS INT
DECLARE @NumberPerPage AS INT
DECLARE @CategoryID AS INT


SET @PageNumber = @_PageNumber
SET @NumberPerPage = @_NumberPerPage
SET @CategoryID = @_CategoryID



SELECT [ProductID], [ProductName], [Cost], [ProductDescription], [ProductImageURL], [CategoryID]  FROM [dbo].[Product] WHERE(CategoryID = @CategoryID)
ORDER BY [ProductID] 
OFFSET (@PageNumber-1)*@NumberPerPage ROWS
FETCH NEXT @NumberPerPage ROWS ONLY




end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetProductDetail]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_GetProductDetail]
@_ProductID int

as 
Begin	


SELECT * FROM [dbo].[Product] WHERE (ProductID = @_ProductID)



end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetProductPagination]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_GetProductPagination]
@_PageNumber int,
@_NumberPerPage INT


as 
Begin	
DECLARE @PageNumber AS INT
DECLARE @NumberPerPage AS INT


SET @PageNumber= @_PageNumber
SET @NumberPerPage= @_NumberPerPage


SELECT [ProductID], [ProductName], [Cost], [ProductDescription], [ProductImageURL], [CategoryID]  FROM [dbo].[Product]
ORDER BY [ProductID] 
OFFSET (@PageNumber-1)*@NumberPerPage ROWS
FETCH NEXT @NumberPerPage ROWS ONLY




end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserOrder]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE proc [dbo].[SP_GetUserOrder]
@_UserID int

as 
Begin	


SELECT * FROM [dbo].[Order] WHERE (UserID = @_UserID)



end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserOrderDetail]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE proc [dbo].[SP_GetUserOrderDetail]
@_OrderID int

as 
Begin	


SELECT * FROM [dbo].[OrderDetail] WHERE (OrderID = @_OrderID)



end
GO
/****** Object:  StoredProcedure [dbo].[SP_SearchProductByCategory]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[SP_SearchProductByCategory]

@_CategoryID int

as 
Begin	



SELECT * FROM [dbo].[Product] WHERE (CategoryID = @_CategoryID)




end
GO
/****** Object:  StoredProcedure [dbo].[SP_UserLogin]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[SP_UserLogin]
@_UserAccount nvarchar(100),
@_UserPassword nvarchar(150),
@_ResponseCode INT OUT 
as 
Begin
SET @_ResponseCode =-99

IF NOT EXISTS (select 1 from  [dbo].[User] where UserAccount = @_UserAccount)
	
	BEGIN
			set @_ResponseCode= -1
			RETURN;
		END

IF NOT EXISTS (select 1 from  [dbo].[User] where UserAccount = @_UserAccount and UserPassword =@_UserPassword)
	
	BEGIN
			set @_ResponseCode= -997
			RETURN;
		END



BEGIN

Select * from [dbo].[User] where UserAccount = @_UserAccount and UserPassword =@_UserPassword
SET @_ResponseCode =(select UserID from [dbo].[User] where UserAccount = @_UserAccount and UserPassword =@_UserPassword )
End 

end
GO
/****** Object:  StoredProcedure [dbo].[SP_UserRegister]    Script Date: 5/29/2022 1:09:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_UserRegister]
@_UserAccount NVARCHAR (20),
@_UserPassword	 NVARCHAR (20),
@_UserFullName NVARCHAR (20),
@_UserAddress NVARCHAR (20),
@_UserPhoneNumber NVARCHAR (20),
@_RoleID INT,
@_ResponseCode int OUTPUT


as 
Begin	

SET @_ResponseCode = - 99;

IF EXISTS (SELECT * FROM [dbo].[User] WHERE UserAccount = @_UserAccount)
BEGIN
	SET @_ResponseCode = -100;
	return
END

INSERT INTO [dbo].[User]( [UserAccount], [UserPassword], [UserFullName], [UserAddress], [UserPhoneNumber], [RoleID])
VALUES (@_UserAccount,@_UserPassword ,@_UserFullName, @_UserAddress, @_UserPhoneNumber, @_RoleID);
SET @_ResponseCode = 1



end
GO
