CREATE DATABASE bds291173651_db
GO
USE bds291173651_db
--�������ݿ�
--�û���
CREATE TABLE users(
ids int  PRIMARY KEY IDENTITY(1,1),					--���
usersname NVARCHAR(200),							--�û���
[password] NVARCHAR(200),							--����
[balance] DECIMAL(18,2),							--���
nikename NVARCHAR(200),								--�ǳ�
sex BIT,											--�Ա�
birthday DATETIME,									--����
email NVARCHAR(200),								--����
name NVARCHAR(200),									--��ʵ����
Payment NVARCHAR(200),								--֧������
[state] BIT,										--�˺�״̬
[address] NVARCHAR(200),							--��ַ
Detailed NVARCHAR(200)								--��ϸ��ַ
)
--��Ʒ��
CREATE TABLE Commodity(
ids INT PRIMARY KEY IDENTITY(1,1),					--���
comname NVARCHAR(200),								--��Ʒ����
KEY_word NVARCHAR(200),								--��Ʒ�ؼ���
price DECIMAL(18,2),								--�۸�
reference_price DECIMAL(18,2),						--�ο���
Specifications NVARCHAR(200),						--���
[type] NVARCHAR(200),								--���ͱ��
Stock INT,											--���
Sales_volume INT,									--����
Shelf_life INT,										--������
component NVARCHAR(200),							--��Ʒ�ɷ�
Comimg NVARCHAR(200),								--��ƷͼƬ
place NVARCHAR(200),								--����
Remarks NVARCHAR(200),								--��ע
)
--��ƷͼƬ��
CREATE TABLE Commoimg(
commocode INT PRIMARY KEY IDENTITY(1,1),			--���									
Commoimg1 NVARCHAR(200),							--ͼƬ1
Commoimg2 NVARCHAR(200),							--ͼƬ2
Commoimg3 NVARCHAR(200),							--ͼƬ3
Commoimg4 NVARCHAR(200),							--ͼƬ4
Commo_details NVARCHAR(MAX)							--��Ʒ����ͼ
)
--���ﳵ��
CREATE TABLE Shopping_Cart(
ids INT PRIMARY KEY IDENTITY(1,1),					--���
userscode INT,										--�û����
Commocode INT,										--��Ʒ���
Unit_Price DECIMAL(18,2),							--����
Number INT											--����
)
--������
CREATE TABLE orders(
ids INT PRIMARY KEY IDENTITY(1,1),					--���
orderscode nvarchar(200),										--�������
o_userscode INT,									--�û����
o_Commocode INT,									--��Ʒ���
o_Price DECIMAL(18,2),								--����
o_Number INT,										--����
o_time DATETIME,									--����ʱ��
o_address NVARCHAR(200)								--��ַ
)
--��ֵ��¼��
CREATE TABLE Recharge(
ids INT PRIMARY KEY IDENTITY(1,1),					--���
ueerscode INT,										--�û����
r_money DECIMAL(18,2),								--��ֵ���
r_time DATETIME,									--��ֵʱ��
r_number INT										--��ֵ��ˮ��
)
--�ֲ���
CREATE TABLE Carousel(
ids INT PRIMARY KEY IDENTITY(1,1),					--���
imgurl NVARCHAR(200)								--ͼƬ·��
)