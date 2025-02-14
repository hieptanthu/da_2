USE [QuanLyBanMayAnh]
GO
/****** Object:  UserDefinedFunction [dbo].[ChiTietDonHangSelect1]    Script Date: 11/26/2023 10:47:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  FUNCTION [dbo].[ChiTietDonHangSelect1] (@IdDonHang AS INT)
RETURNS NVARCHAR(MAX)
AS
BEGIN
    DECLARE @list_json_chitiethoadon NVARCHAR(MAX);

    SELECT @list_json_chitiethoadon = (
        SELECT IdDonHang AS 'Id', IdSanPham AS 'IdSanPham', SoLuong AS 'SoLuong', GiaTien AS 'GiaTien'
        FROM [ChiTietDonHang]
        WHERE [IdDonHang] = @IdDonHang
        FOR JSON PATH
    );

    RETURN @list_json_chitiethoadon;
END;
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 11/26/2023 10:47:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[IdDonHang] [int] NOT NULL,
	[IdSanPham] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[GiaTien] [decimal](18, 0) NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[IdDonHang] ASC,
	[IdSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](250) NULL,
	[DanhMucConId] [int] NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiaChi]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaChi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ThanhPho] [nvarchar](150) NULL,
	[Huyen] [nvarchar](250) NULL,
	[Xa] [nvarchar](250) NULL,
	[ten] [nvarchar](250) NULL,
	[sothoai] [nchar](10) NULL,
	[email] [nchar](100) NULL,
	[GiChu] [nvarchar](500) NULL,
	[IdTaiKhoan] [int] NULL,
 CONSTRAINT [PK_DiaChi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[idDiaChi] [int] NULL,
	[NgayTao] [date] NULL,
	[NgayThanhToan] [date] NULL,
	[TrangThai] [int] NULL,
	[ThanhTien] [decimal](18, 0) NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](250) NULL,
	[MotaSp] [nvarchar](400) NULL,
	[anh] [nvarchar](4000) NULL,
	[DanhSachAnh] [nvarchar](4000) NULL,
	[GiaSanPham] [decimal](18, 0) NULL,
	[BaoHanh] [nvarchar](500) NULL,
	[TomTatSanPham] [nvarchar](4000) NULL,
	[LoaiSanPham] [int] NULL,
	[SoLuong] [int] NULL,
	[NgayTao] [date] NULL,
	[IdDanhMuc] [int] NULL,
	[IdThuongHieu] [int] NULL,
	[slBan] [int] NULL,
	[view] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tag]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tag](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenTag] [nvarchar](500) NULL,
 CONSTRAINT [PK_tag] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tag_SanPham]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tag_SanPham](
	[IdSanPham] [int] NOT NULL,
	[IdTag] [int] NOT NULL,
 CONSTRAINT [PK_tag_SanPham] PRIMARY KEY CLUSTERED 
(
	[IdSanPham] ASC,
	[IdTag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoanQuanLy]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoanQuanLy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[userName] [char](200) NOT NULL,
	[password] [char](200) NOT NULL,
	[soDienThoai] [char](11) NULL,
	[Email] [char](110) NULL,
	[Quyen] [int] NULL,
 CONSTRAINT [PK_TaiKhoanQuanLy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuongHieu]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuongHieu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenThuongHieu] [nvarchar](500) NULL,
 CONSTRAINT [PK_ThuongHieu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_slBan]  DEFAULT ((0)) FOR [slBan]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_View]  DEFAULT ((0)) FOR [view]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([IdDonHang])
REFERENCES [dbo].[DonHang] ([Id])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_SanPham] FOREIGN KEY([IdSanPham])
REFERENCES [dbo].[SanPham] ([Id])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_SanPham]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_DiaChi] FOREIGN KEY([idDiaChi])
REFERENCES [dbo].[DiaChi] ([Id])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_DiaChi]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_DanhMuc] FOREIGN KEY([IdDanhMuc])
REFERENCES [dbo].[DanhMuc] ([Id])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_DanhMuc]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_ThuongHieu] FOREIGN KEY([IdThuongHieu])
REFERENCES [dbo].[ThuongHieu] ([Id])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_ThuongHieu]
GO
ALTER TABLE [dbo].[tag_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_tag_SanPham_SanPham] FOREIGN KEY([IdTag])
REFERENCES [dbo].[SanPham] ([Id])
GO
ALTER TABLE [dbo].[tag_SanPham] CHECK CONSTRAINT [FK_tag_SanPham_SanPham]
GO
ALTER TABLE [dbo].[tag_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_tag_SanPham_tag] FOREIGN KEY([IdTag])
REFERENCES [dbo].[tag] ([Id])
GO
ALTER TABLE [dbo].[tag_SanPham] CHECK CONSTRAINT [FK_tag_SanPham_tag]
GO
/****** Object:  StoredProcedure [dbo].[ChiTietDonHangDelete]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ChiTietDonHangDelete] ( @IdDonHang AS INT) AS 
DELETE FROM ChiTietDonHang 
WHERE [IdDonHang] = @IdDonHang
GO
/****** Object:  StoredProcedure [dbo].[ChiTietDonHangInsert]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ChiTietDonHangInsert] ( @IdDonHang as int,
@IdSanPham AS INT ,@SoLuong  AS INT) 
AS 

DECLARE @GiaTien DECIMAL;
select @GiaTien=sp.GiaSanPham from SanPham as sp where sp.Id=@IdSanPham
INSERT INTO ChiTietDonHang ( IdDonHang,
[IdSanPham],[SoLuong],[GiaTien] ) 
VALUES ( 
@IdDonHang,@IdSanPham,@SoLuong,@GiaTien*@SoLuong)

UPDATE DonHang set ThanhTien+=@GiaTien*@SoLuong where Id =@IdDonHang
GO
/****** Object:  StoredProcedure [dbo].[ChiTietDonHangSelect]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ChiTietDonHangSelect] ( @IdDonHang AS INT) AS 
SELECT IdDonHang AS 'Id', IdSanPham AS 'IdSanPham', SoLuong AS 'SoLuong', GiaTien AS 'GiaTien'
        FROM [ChiTietDonHang]
        WHERE [IdDonHang] = @IdDonHang
        FOR JSON PATH;
GO
/****** Object:  StoredProcedure [dbo].[ChiTietDonHangUpdate]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ChiTietDonHangUpdate] (
@IdDonHang AS INT ,@IdSanPham AS INT ,@SoLuong AS INT ,@GiaTien AS DECIMAL ) AS UPDATE ChiTietDonHang SET 
[IdSanPham] = @IdSanPham,[SoLuong] = @SoLuong,[GiaTien] = @GiaTien WHERE [IdDonHang] = @IdDonHang
GO
/****** Object:  StoredProcedure [dbo].[ColumnNameSelect]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[ColumnNameSelect]
(
    @TableName AS VARCHAR(100)
) AS
SELECT COLUMN_NAME, DATA_TYPE,CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_Name = @TableName
GO
/****** Object:  StoredProcedure [dbo].[DanhMucDelete]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DanhMucDelete] (@Id AS INT) 
AS 
BEGIN
    DECLARE @RecordCount INT

    -- Đếm số bản ghi có DanhMucConId = @Id
    SELECT @RecordCount = COUNT(*) FROM DanhMuc WHERE [DanhMucConId] = @Id

    -- Kiểm tra nếu có bản ghi phù hợp
    IF (@RecordCount > 0)
    BEGIN
        -- Ném lỗi với thông báo tùy chỉnh
        print ('Có bản ghi phụ thuộc, không thể xóa!');
    END
    ELSE
    BEGIN
        -- Xóa bản ghi nếu không có bản ghi phù hợp
        DELETE FROM DanhMuc WHERE [Id] = @Id
    END
END
	
GO
/****** Object:  StoredProcedure [dbo].[DanhMucInsert]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DanhMucInsert] (
@TenDanhMuc AS NVARCHAR(300) ,@DanhMucConId AS int ) AS INSERT INTO DanhMuc ( 
[TenDanhMuc],[DanhMucConId] ) VALUES ( 
@TenDanhMuc,@DanhMucConId)
GO
/****** Object:  StoredProcedure [dbo].[DanhMucSelect]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DanhMucSelect] (@id int)  AS 
SELECT 
[Id],[TenDanhMuc],[DanhMucConId] FROM [DanhMuc] where [DanhMucConId]=@id
GO
/****** Object:  StoredProcedure [dbo].[DanhMucUpdate]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DanhMucUpdate] (
@Id AS INT ,@TenDanhMuc AS NVARCHAR(max) ,@DanhMucConId AS int ) AS UPDATE DanhMuc SET 
[TenDanhMuc] = @TenDanhMuc,[DanhMucConId] = @DanhMucConId WHERE [Id] = @Id
GO
/****** Object:  StoredProcedure [dbo].[DiaChiDelete]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DiaChiDelete] ( @Id AS INT) AS 
DELETE FROM DiaChi 
WHERE [Id] = @Id
GO
/****** Object:  StoredProcedure [dbo].[DiaChiInsert]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DiaChiInsert] (
@ThanhPho AS NVARCHAR(200) ,@Huyen AS NVARCHAR(200) ,@Xa AS NVARCHAR(200) ,@GiChu AS NVARCHAR(max) ,@IdTaiKhoan AS char(200) ,@ten as NVARCHAR(200), @sothoai as char(10) ,@email as nchar(100) ) AS INSERT INTO DiaChi ( 
[ThanhPho],[Huyen],[Xa],[GiChu],[IdTaiKhoan],ten,sothoai,email ) VALUES ( 
@ThanhPho,@Huyen,@Xa,@GiChu,@IdTaiKhoan,@ten,@sothoai,@email)
GO
/****** Object:  StoredProcedure [dbo].[DiaChiSelect]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DiaChiSelect] ( @Id AS INT) AS 
SELECT 
[Id],[ThanhPho],[Huyen],[Xa],[GiChu],[IdTaiKhoan] FROM [DiaChi] 
WHERE [Id] = @Id
GO
/****** Object:  StoredProcedure [dbo].[DiaChiUpdate]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DiaChiUpdate] (
@Id AS INT ,
@ThanhPho AS NVARCHAR(200) ,@Huyen AS NVARCHAR(200) ,@Xa AS NVARCHAR(200) ,@GiChu AS NVARCHAR(max) ,@IdTaiKhoan AS char(200) ,@ten as NVARCHAR(200), @sothoai as char(10) ,@email as nchar(100)) AS UPDATE DiaChi SET 
[ThanhPho] = @ThanhPho,[Huyen] = @Huyen,[Xa] = @Xa,[GiChu] = @GiChu,[IdTaiKhoan] = @IdTaiKhoan , ten=@ten,sothoai=@sothoai ,email=@email WHERE [Id] = @Id
GO
/****** Object:  StoredProcedure [dbo].[DonHangDelete]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DonHangDelete] ( @Id AS INT) AS 
	DELETE FROM ChiTietDonHang 
	WHERE [IdDonHang] = @Id
	DELETE FROM DonHang 
	WHERE [Id] = @Id
GO
/****** Object:  StoredProcedure [dbo].[DonHangInsrt]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DonHangInsrt] ( @idDiaChi AS INT, @list_json_chitiethoadon NVARCHAR(MAX)) AS 

    BEGIN
		DECLARE @MaHoaDon INT;
		DECLARE @Tien decimal(18, 0);
        INSERT INTO DonHang( idDiaChi,  NgayTao,TrangThai)
                VALUES
                (@idDiaChi, 
                 GETDATE(),0 
                 );

				SET @MaHoaDon = (SELECT SCOPE_IDENTITY());
                IF(@list_json_chitiethoadon IS NOT NULL)
                    BEGIN
                        INSERT INTO ChiTietDonHang
						 (IdSanPham, 
						  IdDonHang,
                          SoLuong, 
                          GiaTien               
                        )
                    SELECT JSON_VALUE(p.value, '$.idSanPham'), 
                            @MaHoaDon, 
                            JSON_VALUE(p.value, '$.soLuong'), 
                            JSON_VALUE(p.value, '$.giaTien')    
                    FROM OPENJSON(@list_json_chitiethoadon) AS p;
                END;

			select @Tien = sum(GiaTien) from ChiTietDonHang where IdDonHang= @MaHoaDon
			update DonHang set ThanhTien = @Tien where Id=@MaHoaDon
        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[DonHangKoTaiKhoan]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DonHangKoTaiKhoan] ( @list_json_DiaChi AS NVARCHAR(MAX), @list_json_chitiethoadon NVARCHAR(MAX)) AS 

    BEGIN
		DECLARE @MaHoaDon INT;
		DECLARE @IdDiaChi INT;

		DECLARE @Tien decimal(18, 0);

		 IF(@list_json_DiaChi IS NOT NULL)
                    BEGIN
                        INSERT INTO DiaChi
						 ( 
						  ThanhPho,
                          Huyen, 
                          Xa,
						  ten,
						  sothoai,
						  email,
						  GiChu,
						  IdTaiKhoan
                        )
                    SELECT JSON_VALUE(d.value, '$.thanhPho'), 
                            JSON_VALUE(d.value, '$.huyen'), 
                            JSON_VALUE(d.value, '$.xa'), 
                            JSON_VALUE(d.value, '$.ten'),
							JSON_VALUE(d.value, '$.sothoai'),
							JSON_VALUE(d.value, '$.email'),
							JSON_VALUE(d.value, '$.giChu'),
							0
                    FROM OPENJSON(@list_json_DiaChi) AS d;
				SET @IdDiaChi = (SELECT SCOPE_IDENTITY());
				INSERT INTO DonHang( idDiaChi,  NgayTao,TrangThai)
                VALUES
                (@IdDiaChi, 
                 GETDATE(),0 
                 );

				SET @MaHoaDon = (SELECT SCOPE_IDENTITY());
                IF(@list_json_chitiethoadon IS NOT NULL)
                    BEGIN
                        INSERT INTO ChiTietDonHang
						 (IdSanPham, 
						  IdDonHang,
                          SoLuong              
                        )
                    SELECT JSON_VALUE(p.value, '$.idSanPham'), 
                            @MaHoaDon, 
                            JSON_VALUE(p.value, '$.soLuong')
                    FROM OPENJSON(@list_json_chitiethoadon) AS p;
                END;
			END;

			select @Tien = sum(GiaTien) from ChiTietDonHang where IdDonHang= @MaHoaDon
			update DonHang set ThanhTien = @Tien where Id=@MaHoaDon
        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[DonHangSearch]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DonHangSearch] (@page_index  INT, 
                                       @page_size   INT,
									   @TaiKhoanId INT,
									   @NgayTao date,
									   @NgayThanhToan date,
									   @trangThai int,
									   @SanPhamId int
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
		DECLARE @list_json_chitiethoadon nvarchar(max);
		
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY dh.Id ASC)) AS RowNumber, 
                              dh.Id,
							  dh.idDiaChi,
							  dh.NgayTao,
							  dh.NgayThanhToan,
							  dh.TrangThai,
							  dh.ThanhTien,
							  (
							SELECT c.*
							FROM [ChiTietDonHang] AS c
							WHERE dh.Id = c.IdDonHang FOR JSON PATH
						) AS list_json_chitiethoadon
							
                        INTO #Results1
                        FROM (DonHang AS dh inner join ChiTietDonHang as Ct on dh.Id=Ct.IdDonHang) inner join DiaChi as dc on dh.idDiaChi=dc.Id
					    WHERE 
						(@TaiKhoanId = '' Or dc.IdTaiKhoan = @TaiKhoanId) and			
						(@NgayTao = '' Or dh.NgayTao = @NgayTao) and
						(@NgayThanhToan = '' Or dh.NgayThanhToan = @NgayThanhToan)and
						(@trangThai = '' Or dh.trangThai = @trangThai)and
						(@SanPhamId = '' Or Ct.IdSanPham =@SanPhamId); 
					
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY dh.Id ASC)) AS RowNumber, 
                              dh.Id,
							  dh.idDiaChi,
							  dh.NgayTao,
							  dh.NgayThanhToan,
							  dh.TrangThai,
							  dh.ThanhTien,
							  (
							SELECT c.*
							FROM [ChiTietDonHang] AS c
							WHERE dh.Id = c.IdDonHang FOR JSON PATH
						) AS list_json_chitiethoadon
							  
							
                        INTO #Results2
                       FROM (DonHang AS dh inner join ChiTietDonHang as Ct on dh.Id=Ct.IdDonHang) inner join DiaChi as dc on dh.idDiaChi=dc.Id
					    WHERE 
						(@TaiKhoanId = '' Or dc.IdTaiKhoan = @TaiKhoanId)  and			
						(@NgayTao = '' Or dh.NgayTao = @NgayTao) and
						(@NgayThanhToan = '' Or dh.NgayThanhToan = @NgayThanhToan)and
						(@trangThai = '' Or dh.trangThai = @trangThai)and
						(@SanPhamId = '' Or Ct.IdSanPham =@SanPhamId);    
						
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2;                        
                        DROP TABLE #Results1; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[DonHangSelect]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DonHangSelect] ( @Id AS INT) AS 
 begin
 SELECT h.*, 
        (
            SELECT c.*
            FROM [ChiTietDonHang] AS c
            WHERE h.Id = c.IdDonHang FOR JSON PATH
        ) AS list_json_chitiethoadon
        FROM [DonHang] AS h
        WHERE  h.Id = @Id;
    END;
GO
/****** Object:  StoredProcedure [dbo].[DonHangSelectAdmin]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DonHangSelectAdmin] ( @Id AS INT) AS 
 begin
 SELECT h.Id, h.NgayTao,h.NgayThanhToan,h.TrangThai,h.ThanhTien,
		(
            SELECT dc.*
            FROM DiaChi AS dc
            WHERE h.idDiaChi= dc.id FOR JSON PATH
        ) AS list_json_DiaChi, 
        (
            SELECT c.*
            FROM [ChiTietDonHang] AS c
            WHERE h.Id = c.IdDonHang FOR JSON PATH
        ) AS list_json_chitiethoadon
        FROM [DonHang] AS h
        WHERE  h.Id = @Id;
    END;
GO
/****** Object:  StoredProcedure [dbo].[DonHangSelectAll]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[DonHangSelectAll] 
AS 
SELECT * FROM DonHang
ORDER BY NgayTao DESC;
GO
/****** Object:  StoredProcedure [dbo].[DonHangUpdate]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DonHangUpdate] (
@Id AS INT   ,@TrangThai AS INT  )        
AS
IF @TrangThai >2 
	begin
	UPDATE DonHang SET 
	[TrangThai] = @TrangThai ,[NgayThanhToan]=GETDATE()  WHERE [Id] = @Id
	UPDATE SanPham
	SET slBan = slBan + ChiTietDonHang.SoLuong
	FROM SanPham
	INNER JOIN ChiTietDonHang ON SanPham.Id = ChiTietDonHang.IdSanPham
	WHERE ChiTietDonHang.IdDonHang = @Id;
	end
else
UPDATE DonHang SET 
[TrangThai] = @TrangThai  WHERE [Id] = @Id
GO
/****** Object:  StoredProcedure [dbo].[getALLSP]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getALLSP]
AS
BEGIN
    SELECT *
    FROM SanPham
    ORDER BY Id DESC; -- Sắp xếp theo mã từ lớn đến bé
END;
GO
/****** Object:  StoredProcedure [dbo].[GetListByUserID]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetListByUserID] ( @IdTaiKhoan AS INT) AS 
SELECT 
[Id],[ThanhPho],[Huyen],[Xa],[GiChu],[IdTaiKhoan] FROM [DiaChi] 
WHERE [IdTaiKhoan] = @IdTaiKhoan
GO
/****** Object:  StoredProcedure [dbo].[GioHangDelete]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GioHangDelete] ( @IdTaiKhoan AS INT) AS 
DELETE FROM GioHang 
WHERE [IdTaiKhoan] = @IdTaiKhoan
GO
/****** Object:  StoredProcedure [dbo].[GioHangInsert]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GioHangInsert] (
@IdSanPham AS INT ) AS INSERT INTO GioHang ( 
[IdSanPham] ) VALUES ( 
@IdSanPham)
GO
/****** Object:  StoredProcedure [dbo].[GioHangSelect]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GioHangSelect] ( @IdTaiKhoan AS INT) AS 
SELECT 
[IdTaiKhoan],[IdSanPham] FROM [GioHang] 
WHERE [IdTaiKhoan] = @IdTaiKhoan
GO
/****** Object:  StoredProcedure [dbo].[GioHangUpdate]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GioHangUpdate] (
@IdTaiKhoan AS INT ,@IdSanPham AS INT ) AS UPDATE GioHang SET 
[IdSanPham] = @IdSanPham WHERE [IdTaiKhoan] = @IdTaiKhoan
GO
/****** Object:  StoredProcedure [dbo].[SanPhamBanChay]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[SanPhamBanChay]
AS
BEGIN
 select top(10) * from SanPham as a
 ORDER BY a.SoLuong DESC;

END
GO
/****** Object:  StoredProcedure [dbo].[SanPhamDelete]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SanPhamDelete] ( @Id AS INT) AS 
DELETE FROM SanPham 
WHERE [Id] = @Id
GO
/****** Object:  StoredProcedure [dbo].[SanPhamHot]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROC [dbo].[SanPhamHot]
AS
BEGIN
 select top(10) * from SanPham as a
 WHERE a.[View] > 0
 ORDER BY a.[View] DESC 
End
GO
/****** Object:  StoredProcedure [dbo].[SanPhamInsert]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SanPhamInsert] (
@TenSanPham AS NVARCHAR(200) ,@MotaSp AS NVARCHAR(200) ,@anh AS NCHAR(100) ,@DanhSachAnh AS NVARCHAR(200) ,@GiaSanPham AS DECIMAL ,@BaoHanh AS NVARCHAR(200) ,@TomTatSanPham AS NVARCHAR(max) ,@LoaiSanPham AS int ,@SoLuong AS INT ,@NgayTao AS DATE ,@IdDanhMuc AS INT ,@IdThuongHieu AS INT ) AS INSERT INTO SanPham ( 
[TenSanPham],[MotaSp],[anh],[DanhSachAnh],[GiaSanPham],[BaoHanh],[TomTatSanPham],[LoaiSanPham],[SoLuong],[NgayTao],[IdDanhMuc],[IdThuongHieu] ) VALUES ( 
@TenSanPham,@MotaSp,@anh,@DanhSachAnh,@GiaSanPham,@BaoHanh,@TomTatSanPham,@LoaiSanPham,@SoLuong,GETDATE(),@IdDanhMuc,@IdThuongHieu)
GO
/****** Object:  StoredProcedure [dbo].[SanPhamNew]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[SanPhamNew]
AS
BEGIN
 select top(10) * from SanPham as a
 ORDER BY a.NgayTao DESC;
End
GO
/****** Object:  StoredProcedure [dbo].[SanPhamSearch]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SanPhamSearch] (@page_index  INT, 
                                       @page_size   INT,
									   @Ten Nvarchar(250),
									   @DanhMucId int,
									   @ThuongHieuId int,
									   @LoaiSanPham int,
									   @slBan int,
									   @NgayTao date
									   

									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY TenSanPham ASC)) AS RowNumber, 
                              k.Id,

								k.TenSanPham ,
								k.MotaSp,
								k.anh,
								k. DanhSachAnh ,
								k.GiaSanPham,
								k.BaoHanh,
								k.TomTatSanPham,
								k.LoaiSanPham,
								 k.SoLuong ,
								k. NgayTao  ,
								k.IdDanhMuc,
								 k.IdThuongHieu,
								 k.slBan

                        INTO #Results1
                        FROM SanPham AS k
					    WHERE  (@ten = '' Or k.TenSanPham like N'%'+@ten+'%') and						
						(@DanhMucId = '' Or k.IdDanhMuc =@DanhMucId) and
						(@ThuongHieuId = '' Or k.IdThuongHieu =@ThuongHieuId) and 
						(@LoaiSanPham = '' Or k.LoaiSanPham =@LoaiSanPham) and
						(@slBan = '' Or k.SoLuong >@slBan) and
						(@NgayTao = '' Or k.NgayTao >=@NgayTao) ;
						

                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY TenSanPham ASC)) AS RowNumber, 
                               k.Id,

								k.TenSanPham ,
								k.MotaSp,
								k.anh,
								k. DanhSachAnh ,
								k.GiaSanPham,
								k.BaoHanh,
								k.TomTatSanPham,
								k.LoaiSanPham,
								 k.SoLuong ,
								k. NgayTao  ,
								k.IdDanhMuc,
								 k.IdThuongHieu,
								 k.slBan

                        INTO #Results2
                         FROM SanPham AS k
					    WHERE  (@ten = '' Or k.TenSanPham like N'%'+@ten+'%') and						
						(@DanhMucId = '' Or k.IdDanhMuc =@DanhMucId) and
						(@ThuongHieuId = '' Or k.IdThuongHieu =@ThuongHieuId) and 
						(@LoaiSanPham = '' Or k.LoaiSanPham =@LoaiSanPham) and
						(@slBan = '' Or k.SoLuong >@slBan) and
						(@NgayTao = '' Or k.NgayTao >=@NgayTao) ;
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2;                        
                        DROP TABLE #Results1; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[SanPhamSearchUser]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SanPhamSearchUser]
    @page_index INT,
    @page_size INT,
    @Ten NVARCHAR(250),
    @DanhMucId INT,
    @ThuongHieuId INT,
    @LoaiSanPham INT
    
AS
BEGIN
    DECLARE @RecordCount BIGINT;

    IF @page_size <> 0
    BEGIN
        SET NOCOUNT ON;

        SELECT (ROW_NUMBER() OVER (ORDER BY TenSanPham ASC)) AS RowNumber,
            k.*
        INTO #Results1
        FROM SanPham AS k
        WHERE
            (@Ten = '' OR k.TenSanPham LIKE N'%' + @Ten + '%')
            AND
            (@DanhMucId = 0 OR k.IdDanhMuc = @DanhMucId)
            AND
            (@ThuongHieuId = 0 OR k.IdThuongHieu = @ThuongHieuId)
            AND
            (@LoaiSanPham = 0 OR k.LoaiSanPham = @LoaiSanPham)
           

        SELECT @RecordCount = COUNT(*)
        FROM #Results1;

        SELECT *,
            @RecordCount AS RecordCount
        FROM #Results1
        WHERE
            RowNumber BETWEEN (@page_index - 1) * @page_size + 1
            AND
            (((@page_index - 1) * @page_size + 1) + @page_size) - 1
            OR
            @page_index = -1;

        DROP TABLE #Results1;
    END;
    ELSE
    BEGIN
        SET NOCOUNT ON;

        SELECT (ROW_NUMBER() OVER (ORDER BY TenSanPham ASC)) AS RowNumber,
             k.*
        INTO #Results2
        FROM SanPham AS k
        WHERE
            (@Ten = '' OR k.TenSanPham LIKE N'%' + @Ten + '%')
            AND
            (@DanhMucId = 0 OR k.IdDanhMuc = @DanhMucId)
            AND
            (@ThuongHieuId = 0 OR k.IdThuongHieu = @ThuongHieuId)
            AND
            (@LoaiSanPham = 0 OR k.LoaiSanPham = @LoaiSanPham)
            
            
           

        SELECT @RecordCount = COUNT(*)
        FROM #Results2;

        SELECT *,
            @RecordCount AS RecordCount
        FROM #Results2;

        DROP TABLE #Results2;
    END;
END;
GO
/****** Object:  StoredProcedure [dbo].[SanPhamSelect]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SanPhamSelect] ( @Id AS INT) AS 
SELECT 
*  FROM [SanPham] 
WHERE [Id] = @Id
update SanPham  set [View] +=1 where Id=@Id
GO
/****** Object:  StoredProcedure [dbo].[SanPhamUpdate]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SanPhamUpdate] (
@Id AS INT ,@TenSanPham AS NVARCHAR(max) ,@MotaSp AS NVARCHAR(max) ,@anh AS NCHAR(500) ,@DanhSachAnh AS NVARCHAR(max) ,@GiaSanPham AS DECIMAL ,@BaoHanh AS NVARCHAR(max) ,@TomTatSanPham AS NVARCHAR(max) ,@LoaiSanPham AS int ,@SoLuong AS INT ,@NgayTao AS DATE ,@IdDanhMuc AS INT ,@IdThuongHieu AS INT ) AS UPDATE SanPham SET 
[TenSanPham] = @TenSanPham,[MotaSp] = @MotaSp,[anh] = @anh,[DanhSachAnh] = @DanhSachAnh,[GiaSanPham] = @GiaSanPham,[BaoHanh] = @BaoHanh,[TomTatSanPham] = @TomTatSanPham,[LoaiSanPham] = @LoaiSanPham,[SoLuong] = @SoLuong,[NgayTao] = @NgayTao,[IdDanhMuc] = @IdDanhMuc,[IdThuongHieu] = @IdThuongHieu WHERE [Id] = @Id
GO
/****** Object:  StoredProcedure [dbo].[sp_3_kq_sanpham]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[sp_3_kq_sanpham]
AS
BEGIN
    Declare @a NVARCHAR(max);
    Declare @b NVARCHAR(max);
    Declare @c NVARCHAR(max);

    -- Khai báo bảng tạm thời để lưu trữ kết quả
    create table #TempTable (
        list_json_sanphambanchay NVARCHAR(max),
        list_json_sanphammoive NVARCHAR(max),
        list_json_sanphamhot  NVARCHAR(max)
    );

    WITH CTE_BANCHAY AS
    (	
        SELECT TOP(10) S.TenSanPham, C.SoLuong FROM ChiTietDonHang C INNER JOIN SanPham S ON C.IdSanPham = S.Id
        GROUP BY S.TenSanPham, C.SoLuong 
    )
    SELECT @a = (SELECT * FROM CTE_BANCHAY FOR JSON PATH);

    WITH CTE_MOIVE AS 
    (
        SELECT TOP(10) TenSanPham, NgayTao  FROM SanPham
        ORDER BY NgayTao DESC
    )
    SELECT @b = (SELECT * FROM CTE_MOIVE FOR JSON PATH);

    WITH CTE_SANPHAMHOT AS
    (
        SELECT TOP(2) TenSanPham FROM SanPham
        WHERE [View] > 0
        ORDER BY [View] DESC 
    )
    SELECT @c = (SELECT * FROM CTE_SANPHAMHOT FOR JSON PATH);

    -- Chèn kết quả vào bảng tạm thời
    INSERT INTO #TempTable (list_json_sanphambanchay, list_json_sanphammoive, list_json_sanphamhot)
    VALUES (@a, @b, @c);

    -- Trả về kết quả từ bảng tạm thời
    SELECT list_json_sanphambanchay, list_json_sanphammoive, list_json_sanphamhot FROM #TempTable;

    -- Xóa bảng tạm thời
    DROP TABLE #TempTable;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_hoadon_create]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_hoadon_create]
(@idDiaChi             int, 
 @ThanhTien     decimal(18,0),   
 @list_json_chitiethoadon NVARCHAR(MAX)
)
AS
    BEGIN
		DECLARE @MaHoaDon INT;
        INSERT INTO DonHang
                (idDiaChi, 
                 NgayTao, 
                 TrangThai,
				 ThanhTien
                )
                VALUES
                (@idDiaChi,GETDATE(),
                 0, 
                 @ThanhTien
                );

				SET @MaHoaDon = (SELECT SCOPE_IDENTITY());
                IF(@list_json_chitiethoadon IS NOT NULL)
                    BEGIN
                        INSERT INTO ChiTietDonHang
						 (IdDonHang, 
						  IdSanPham,
                          SoLuong, 
                          GiaTien               
                        )
                    SELECT JSON_VALUE(p.value, '$.idSanPham'), 
                            @MaHoaDon, 
                            JSON_VALUE(p.value, '$.soLuong'), 
                            JSON_VALUE(p.value, '$.giaTien')    
                    FROM OPENJSON(@list_json_chitiethoadon) AS p;
                END;
        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_login_Quanly]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_login_Quanly](@userName nvarchar(50), @password nvarchar(50))
AS
    BEGIN
      SELECT  *
      FROM TaiKhoanQuanLy
      where userName= @userName and password = @password;
    END;
GO
/****** Object:  StoredProcedure [dbo].[TableNameSelect]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[TableNameSelect]
(
    @TableCatalog AS VARCHAR(100)
) AS
SELECT Table_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE'
and 	TABLE_CATALOG = @TableCatalog
and 	TABLE_NAME <>   'dtproperties'
GO
/****** Object:  StoredProcedure [dbo].[tag_SanPhamDelete]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tag_SanPhamDelete] ( @IdSanPham AS INT) AS 
DELETE FROM tag_SanPham 
WHERE [IdSanPham] = @IdSanPham
GO
/****** Object:  StoredProcedure [dbo].[tag_SanPhamInsert]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tag_SanPhamInsert] (
@IdTag AS INT ) AS INSERT INTO tag_SanPham ( 
[IdTag] ) VALUES ( 
@IdTag)
GO
/****** Object:  StoredProcedure [dbo].[tag_SanPhamSelect]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tag_SanPhamSelect] ( @IdSanPham AS INT) AS 
SELECT 
[IdSanPham],[IdTag] FROM [tag_SanPham] 
WHERE [IdSanPham] = @IdSanPham
GO
/****** Object:  StoredProcedure [dbo].[tag_SanPhamUpdate]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tag_SanPhamUpdate] (
@IdSanPham AS INT ,@IdTag AS INT ) AS UPDATE tag_SanPham SET 
[IdTag] = @IdTag WHERE [IdSanPham] = @IdSanPham
GO
/****** Object:  StoredProcedure [dbo].[tagDelete]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tagDelete] ( @Id AS INT) AS 
DELETE FROM tag 
WHERE [Id] = @Id
GO
/****** Object:  StoredProcedure [dbo].[tagInsert]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tagInsert] (
@TenTag AS NVARCHAR ) AS INSERT INTO tag ( 
[TenTag] ) VALUES ( 
@TenTag)
GO
/****** Object:  StoredProcedure [dbo].[tagSelect]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tagSelect] ( @Id AS INT) AS 
SELECT 
[Id],[TenTag] FROM [tag] 
WHERE [Id] = @Id
GO
/****** Object:  StoredProcedure [dbo].[tagUpdate]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tagUpdate] (
@Id AS INT ,@TenTag AS NVARCHAR ) AS UPDATE tag SET 
[TenTag] = @TenTag WHERE [Id] = @Id
GO
/****** Object:  StoredProcedure [dbo].[TaiKhoanQuanLyDelete]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TaiKhoanQuanLyDelete] ( @userName AS INT) AS 
DELETE FROM TaiKhoanQuanLy 
WHERE [userName] = @userName
GO
/****** Object:  StoredProcedure [dbo].[TaiKhoanQuanLyInsert]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TaiKhoanQuanLyInsert](
@userName AS CHAR(200) ,@password AS CHAR(200) ,@soDienThoai AS CHAR(11) ,@Email AS CHAR(200),@Quyen as int ) AS INSERT INTO TaiKhoanQuanLy (userName,[password],[soDienThoai],[Email],Quyen ) VALUES (@userName,@password,@soDienThoai,@Email,@Quyen)
GO
/****** Object:  StoredProcedure [dbo].[TaiKhoanQuanLySelect]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TaiKhoanQuanLySelect] ( @userName AS INT) AS 
SELECT 
[userName],[password],[soDienThoai],[Email] FROM [TaiKhoanQuanLy] 
WHERE [userName] = @userName
GO
/****** Object:  StoredProcedure [dbo].[TaiKhoanQuanLyUpdate]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TaiKhoanQuanLyUpdate] (
@Id AS int ,@password AS CHAR(200) ,@soDienThoai AS CHAR(11) ,@Email AS CHAR(200),@Quyen as int ) AS UPDATE TaiKhoanQuanLy SET 
[password] = @password,[soDienThoai] = @soDienThoai,[Email] = @Email  ,Quyen= @Quyen WHERE Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[thongKeDoanhThuSanPham]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongKeDoanhThuSanPham] (@date1 as date,@date2 date)
as
begin
select  sp.TenSanPham as TenSanPham,  sum(ct.GiaTien) as Tien from (SanPham as sp inner join ChiTietDonHang as ct on sp.Id=ct.IdSanPham) inner join DonHang as dh on ct.IdDonHang=dh.Id
where dh.NgayThanhToan BETWEEN  @date1 and @date2 
group by  sp.TenSanPham   
end
GO
/****** Object:  StoredProcedure [dbo].[thongKeSanPhamBanChay]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongKeSanPhamBanChay] (@date1 as date,@date2 date)
as
begin
select top(20) sp.TenSanPham, sum(ct.SoLuong) from (SanPham as sp inner join ChiTietDonHang as ct on sp.Id=ct.IdSanPham) inner join DonHang as dh on ct.IdDonHang=dh.Id
where dh.NgayThanhToan BETWEEN  @date1 and @date2 
group by sp.TenSanPham
end
GO
/****** Object:  StoredProcedure [dbo].[thongKeSanPhamNhieuLuotXem]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongKeSanPhamNhieuLuotXem] 
as
begin
select top(20) sp.TenSanPham, sp.[View] from SanPham as sp 
group by sp.TenSanPham , sp.[View]
end
GO
/****** Object:  StoredProcedure [dbo].[thongKeUserVip]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongKeUserVip] (@date1 as date,@date2 date)
as
begin
select tk.userName as Ten,sum(dh.ThanhTien) as Tien from DonHang as dh inner join DiaChi as dc on dh.idDiaChi=dc.Id  inner join TaiKhoanQuanLy as tk   on dc.IdTaiKhoan =tk.Id
where dh.NgayThanhToan BETWEEN  @date1 and @date2  and tk.id= dc.IdTaiKhoan
group by  tk.userName
end
GO
/****** Object:  StoredProcedure [dbo].[ThuongHieuDelete]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThuongHieuDelete] ( @Id AS INT) AS 
DELETE FROM ThuongHieu 
WHERE [Id] = @Id
GO
/****** Object:  StoredProcedure [dbo].[ThuongHieuInsert]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThuongHieuInsert] (
@TenThuongHieu AS NVARCHAR(max) ) AS INSERT INTO ThuongHieu ( 
[TenThuongHieu] ) VALUES ( 
@TenThuongHieu)
GO
/****** Object:  StoredProcedure [dbo].[ThuongHieuSearch]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[ThuongHieuSearch] (@page_index  INT, 
                                       @page_size   INT,
									   @TenThuongHieu Nvarchar(250))
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY TenThuongHieu ASC)) AS RowNumber, 
                              k.Id,
							  k.TenThuongHieu
                        INTO #Results1
                        FROM ThuongHieu AS k
					    WHERE  k.TenThuongHieu like N'%' +@TenThuongHieu +'%'          
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY TenThuongHieu ASC)) AS RowNumber, 
                              k.Id,
							  k.TenThuongHieu
                        INTO #Results2
                        FROM ThuongHieu AS k
					    WHERE   k.TenThuongHieu like N'%' +@TenThuongHieu +'%'                   
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2;                        
                        DROP TABLE #Results1; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[ThuongHieuSelect]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThuongHieuSelect] ( @Id AS INT) AS 
SELECT 
[Id],[TenThuongHieu] FROM [ThuongHieu] 
WHERE [Id] = @Id
GO
/****** Object:  StoredProcedure [dbo].[ThuongHieuSelectAll]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThuongHieuSelectAll]  AS 
SELECT 
[Id],[TenThuongHieu] FROM [ThuongHieu] 
GO
/****** Object:  StoredProcedure [dbo].[ThuongHieuUpdate]    Script Date: 11/26/2023 10:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThuongHieuUpdate] (
@Id AS INT ,@TenThuongHieu AS NVARCHAR(max) ) AS UPDATE ThuongHieu SET 
[TenThuongHieu] = @TenThuongHieu WHERE [Id] = @Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietDonHang'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SanPham'
GO
