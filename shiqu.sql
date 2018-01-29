CREATE DATABASE bds291173651_db
GO
USE bds291173651_db
--创建数据库
--用户表
CREATE TABLE users(
ids int  PRIMARY KEY IDENTITY(1,1),					--编号
usersname NVARCHAR(200),							--用户名
[password] NVARCHAR(200),							--密码
[balance] DECIMAL(18,2),							--余额
nikename NVARCHAR(200),								--昵称
sex BIT,											--性别
birthday DATETIME,									--生日
email NVARCHAR(200),								--邮箱
name NVARCHAR(200),									--真实姓名
Payment NVARCHAR(200),								--支付密码
[state] BIT,										--账号状态
[address] NVARCHAR(200),							--地址
Detailed NVARCHAR(200)								--详细地址
)
--商品表
CREATE TABLE Commodity(
ids INT PRIMARY KEY IDENTITY(1,1),					--编号
comname NVARCHAR(200),								--商品名称
KEY_word NVARCHAR(200),								--商品关键词
price DECIMAL(18,2),								--价格
reference_price DECIMAL(18,2),						--参考价
Specifications NVARCHAR(200),						--规格
[type] NVARCHAR(200),								--类型编号
Stock INT,											--库存
Sales_volume INT,									--销量
Shelf_life INT,										--保质期
component NVARCHAR(200),							--商品成分
Comimg NVARCHAR(200),								--商品图片
place NVARCHAR(200),								--产地
Remarks NVARCHAR(200),								--备注
)
--商品图片表
CREATE TABLE Commoimg(
commocode INT PRIMARY KEY IDENTITY(1,1),			--编号									
Commoimg1 NVARCHAR(200),							--图片1
Commoimg2 NVARCHAR(200),							--图片2
Commoimg3 NVARCHAR(200),							--图片3
Commoimg4 NVARCHAR(200),							--图片4
Commo_details NVARCHAR(MAX)							--商品详情图
)
--购物车表
CREATE TABLE Shopping_Cart(
ids INT PRIMARY KEY IDENTITY(1,1),					--编号
userscode INT,										--用户编号
Commocode INT,										--商品编号
Unit_Price DECIMAL(18,2),							--单价
Number INT											--数量
)
--订单表
CREATE TABLE orders(
ids INT PRIMARY KEY IDENTITY(1,1),					--编号
orderscode nvarchar(200),										--订单编号
o_userscode INT,									--用户编号
o_Commocode INT,									--商品编号
o_Price DECIMAL(18,2),								--单价
o_Number INT,										--数量
o_time DATETIME,									--订单时间
o_address NVARCHAR(200)								--地址
)
--充值记录表
CREATE TABLE Recharge(
ids INT PRIMARY KEY IDENTITY(1,1),					--编号
ueerscode INT,										--用户编号
r_money DECIMAL(18,2),								--充值金币
r_time DATETIME,									--充值时间
r_number INT										--充值流水号
)
--轮播表
CREATE TABLE Carousel(
ids INT PRIMARY KEY IDENTITY(1,1),					--编号
imgurl NVARCHAR(200)								--图片路径
)