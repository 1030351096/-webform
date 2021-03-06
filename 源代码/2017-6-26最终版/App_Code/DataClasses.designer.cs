﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:4.0.30319.42000
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="bds291173651_db")]
public partial class DataClassesDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region 可扩展性方法定义
  partial void OnCreated();
  partial void Insertusers(users instance);
  partial void Updateusers(users instance);
  partial void Deleteusers(users instance);
  partial void InsertCarousel(Carousel instance);
  partial void UpdateCarousel(Carousel instance);
  partial void DeleteCarousel(Carousel instance);
  partial void InsertCommodity(Commodity instance);
  partial void UpdateCommodity(Commodity instance);
  partial void DeleteCommodity(Commodity instance);
  partial void InsertCommoimg(Commoimg instance);
  partial void UpdateCommoimg(Commoimg instance);
  partial void DeleteCommoimg(Commoimg instance);
  partial void Insertorders(orders instance);
  partial void Updateorders(orders instance);
  partial void Deleteorders(orders instance);
  partial void InsertRecharge(Recharge instance);
  partial void UpdateRecharge(Recharge instance);
  partial void DeleteRecharge(Recharge instance);
  partial void InsertShopping_Cart(Shopping_Cart instance);
  partial void UpdateShopping_Cart(Shopping_Cart instance);
  partial void DeleteShopping_Cart(Shopping_Cart instance);
  #endregion
	
	public DataClassesDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["bds291173651_dbConnectionString1"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<users> users
	{
		get
		{
			return this.GetTable<users>();
		}
	}
	
	public System.Data.Linq.Table<Carousel> Carousel
	{
		get
		{
			return this.GetTable<Carousel>();
		}
	}
	
	public System.Data.Linq.Table<Commodity> Commodity
	{
		get
		{
			return this.GetTable<Commodity>();
		}
	}
	
	public System.Data.Linq.Table<Commoimg> Commoimg
	{
		get
		{
			return this.GetTable<Commoimg>();
		}
	}
	
	public System.Data.Linq.Table<orders> orders
	{
		get
		{
			return this.GetTable<orders>();
		}
	}
	
	public System.Data.Linq.Table<Recharge> Recharge
	{
		get
		{
			return this.GetTable<Recharge>();
		}
	}
	
	public System.Data.Linq.Table<Shopping_Cart> Shopping_Cart
	{
		get
		{
			return this.GetTable<Shopping_Cart>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.users")]
public partial class users : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _ids;
	
	private string _usersname;
	
	private string _password;
	
	private System.Nullable<decimal> _balance;
	
	private string _nikename;
	
	private System.Nullable<bool> _sex;
	
	private System.Nullable<System.DateTime> _birthday;
	
	private string _email;
	
	private string _name;
	
	private string _Payment;
	
	private System.Nullable<bool> _state;
	
	private string _address;
	
	private string _Detailed;
	
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidsChanging(int value);
    partial void OnidsChanged();
    partial void OnusersnameChanging(string value);
    partial void OnusersnameChanged();
    partial void OnpasswordChanging(string value);
    partial void OnpasswordChanged();
    partial void OnbalanceChanging(System.Nullable<decimal> value);
    partial void OnbalanceChanged();
    partial void OnnikenameChanging(string value);
    partial void OnnikenameChanged();
    partial void OnsexChanging(System.Nullable<bool> value);
    partial void OnsexChanged();
    partial void OnbirthdayChanging(System.Nullable<System.DateTime> value);
    partial void OnbirthdayChanged();
    partial void OnemailChanging(string value);
    partial void OnemailChanged();
    partial void OnnameChanging(string value);
    partial void OnnameChanged();
    partial void OnPaymentChanging(string value);
    partial void OnPaymentChanged();
    partial void OnstateChanging(System.Nullable<bool> value);
    partial void OnstateChanged();
    partial void OnaddressChanging(string value);
    partial void OnaddressChanged();
    partial void OnDetailedChanging(string value);
    partial void OnDetailedChanged();
    #endregion
	
	public users()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ids", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int ids
	{
		get
		{
			return this._ids;
		}
		set
		{
			if ((this._ids != value))
			{
				this.OnidsChanging(value);
				this.SendPropertyChanging();
				this._ids = value;
				this.SendPropertyChanged("ids");
				this.OnidsChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_usersname", DbType="NVarChar(200)")]
	public string usersname
	{
		get
		{
			return this._usersname;
		}
		set
		{
			if ((this._usersname != value))
			{
				this.OnusersnameChanging(value);
				this.SendPropertyChanging();
				this._usersname = value;
				this.SendPropertyChanged("usersname");
				this.OnusersnameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_password", DbType="NVarChar(200)")]
	public string password
	{
		get
		{
			return this._password;
		}
		set
		{
			if ((this._password != value))
			{
				this.OnpasswordChanging(value);
				this.SendPropertyChanging();
				this._password = value;
				this.SendPropertyChanged("password");
				this.OnpasswordChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_balance", DbType="Decimal(18,2)")]
	public System.Nullable<decimal> balance
	{
		get
		{
			return this._balance;
		}
		set
		{
			if ((this._balance != value))
			{
				this.OnbalanceChanging(value);
				this.SendPropertyChanging();
				this._balance = value;
				this.SendPropertyChanged("balance");
				this.OnbalanceChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_nikename", DbType="NVarChar(200)")]
	public string nikename
	{
		get
		{
			return this._nikename;
		}
		set
		{
			if ((this._nikename != value))
			{
				this.OnnikenameChanging(value);
				this.SendPropertyChanging();
				this._nikename = value;
				this.SendPropertyChanged("nikename");
				this.OnnikenameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_sex", DbType="Bit")]
	public System.Nullable<bool> sex
	{
		get
		{
			return this._sex;
		}
		set
		{
			if ((this._sex != value))
			{
				this.OnsexChanging(value);
				this.SendPropertyChanging();
				this._sex = value;
				this.SendPropertyChanged("sex");
				this.OnsexChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_birthday", DbType="DateTime")]
	public System.Nullable<System.DateTime> birthday
	{
		get
		{
			return this._birthday;
		}
		set
		{
			if ((this._birthday != value))
			{
				this.OnbirthdayChanging(value);
				this.SendPropertyChanging();
				this._birthday = value;
				this.SendPropertyChanged("birthday");
				this.OnbirthdayChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_email", DbType="NVarChar(200)")]
	public string email
	{
		get
		{
			return this._email;
		}
		set
		{
			if ((this._email != value))
			{
				this.OnemailChanging(value);
				this.SendPropertyChanging();
				this._email = value;
				this.SendPropertyChanged("email");
				this.OnemailChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_name", DbType="NVarChar(200)")]
	public string name
	{
		get
		{
			return this._name;
		}
		set
		{
			if ((this._name != value))
			{
				this.OnnameChanging(value);
				this.SendPropertyChanging();
				this._name = value;
				this.SendPropertyChanged("name");
				this.OnnameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Payment", DbType="NVarChar(200)")]
	public string Payment
	{
		get
		{
			return this._Payment;
		}
		set
		{
			if ((this._Payment != value))
			{
				this.OnPaymentChanging(value);
				this.SendPropertyChanging();
				this._Payment = value;
				this.SendPropertyChanged("Payment");
				this.OnPaymentChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_state", DbType="Bit")]
	public System.Nullable<bool> state
	{
		get
		{
			return this._state;
		}
		set
		{
			if ((this._state != value))
			{
				this.OnstateChanging(value);
				this.SendPropertyChanging();
				this._state = value;
				this.SendPropertyChanged("state");
				this.OnstateChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_address", DbType="NVarChar(200)")]
	public string address
	{
		get
		{
			return this._address;
		}
		set
		{
			if ((this._address != value))
			{
				this.OnaddressChanging(value);
				this.SendPropertyChanging();
				this._address = value;
				this.SendPropertyChanged("address");
				this.OnaddressChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Detailed", DbType="NVarChar(200)")]
	public string Detailed
	{
		get
		{
			return this._Detailed;
		}
		set
		{
			if ((this._Detailed != value))
			{
				this.OnDetailedChanging(value);
				this.SendPropertyChanging();
				this._Detailed = value;
				this.SendPropertyChanged("Detailed");
				this.OnDetailedChanged();
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Carousel")]
public partial class Carousel : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _ids;
	
	private string _imgurl;
	
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidsChanging(int value);
    partial void OnidsChanged();
    partial void OnimgurlChanging(string value);
    partial void OnimgurlChanged();
    #endregion
	
	public Carousel()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ids", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int ids
	{
		get
		{
			return this._ids;
		}
		set
		{
			if ((this._ids != value))
			{
				this.OnidsChanging(value);
				this.SendPropertyChanging();
				this._ids = value;
				this.SendPropertyChanged("ids");
				this.OnidsChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_imgurl", DbType="NVarChar(200)")]
	public string imgurl
	{
		get
		{
			return this._imgurl;
		}
		set
		{
			if ((this._imgurl != value))
			{
				this.OnimgurlChanging(value);
				this.SendPropertyChanging();
				this._imgurl = value;
				this.SendPropertyChanged("imgurl");
				this.OnimgurlChanged();
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Commodity")]
public partial class Commodity : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _ids;
	
	private string _comname;
	
	private string _KEY_word;
	
	private System.Nullable<decimal> _price;
	
	private System.Nullable<decimal> _reference_price;
	
	private string _Specifications;
	
	private string _type;
	
	private System.Nullable<int> _Stock;
	
	private System.Nullable<int> _Sales_volume;
	
	private System.Nullable<int> _Shelf_life;
	
	private string _component;
	
	private string _Comimg;
	
	private string _place;
	
	private string _Remarks;
	
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidsChanging(int value);
    partial void OnidsChanged();
    partial void OncomnameChanging(string value);
    partial void OncomnameChanged();
    partial void OnKEY_wordChanging(string value);
    partial void OnKEY_wordChanged();
    partial void OnpriceChanging(System.Nullable<decimal> value);
    partial void OnpriceChanged();
    partial void Onreference_priceChanging(System.Nullable<decimal> value);
    partial void Onreference_priceChanged();
    partial void OnSpecificationsChanging(string value);
    partial void OnSpecificationsChanged();
    partial void OntypeChanging(string value);
    partial void OntypeChanged();
    partial void OnStockChanging(System.Nullable<int> value);
    partial void OnStockChanged();
    partial void OnSales_volumeChanging(System.Nullable<int> value);
    partial void OnSales_volumeChanged();
    partial void OnShelf_lifeChanging(System.Nullable<int> value);
    partial void OnShelf_lifeChanged();
    partial void OncomponentChanging(string value);
    partial void OncomponentChanged();
    partial void OnComimgChanging(string value);
    partial void OnComimgChanged();
    partial void OnplaceChanging(string value);
    partial void OnplaceChanged();
    partial void OnRemarksChanging(string value);
    partial void OnRemarksChanged();
    #endregion
	
	public Commodity()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ids", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int ids
	{
		get
		{
			return this._ids;
		}
		set
		{
			if ((this._ids != value))
			{
				this.OnidsChanging(value);
				this.SendPropertyChanging();
				this._ids = value;
				this.SendPropertyChanged("ids");
				this.OnidsChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_comname", DbType="NVarChar(200)")]
	public string comname
	{
		get
		{
			return this._comname;
		}
		set
		{
			if ((this._comname != value))
			{
				this.OncomnameChanging(value);
				this.SendPropertyChanging();
				this._comname = value;
				this.SendPropertyChanged("comname");
				this.OncomnameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_KEY_word", DbType="NVarChar(200)")]
	public string KEY_word
	{
		get
		{
			return this._KEY_word;
		}
		set
		{
			if ((this._KEY_word != value))
			{
				this.OnKEY_wordChanging(value);
				this.SendPropertyChanging();
				this._KEY_word = value;
				this.SendPropertyChanged("KEY_word");
				this.OnKEY_wordChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_price", DbType="Decimal(18,2)")]
	public System.Nullable<decimal> price
	{
		get
		{
			return this._price;
		}
		set
		{
			if ((this._price != value))
			{
				this.OnpriceChanging(value);
				this.SendPropertyChanging();
				this._price = value;
				this.SendPropertyChanged("price");
				this.OnpriceChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_reference_price", DbType="Decimal(18,2)")]
	public System.Nullable<decimal> reference_price
	{
		get
		{
			return this._reference_price;
		}
		set
		{
			if ((this._reference_price != value))
			{
				this.Onreference_priceChanging(value);
				this.SendPropertyChanging();
				this._reference_price = value;
				this.SendPropertyChanged("reference_price");
				this.Onreference_priceChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Specifications", DbType="NVarChar(200)")]
	public string Specifications
	{
		get
		{
			return this._Specifications;
		}
		set
		{
			if ((this._Specifications != value))
			{
				this.OnSpecificationsChanging(value);
				this.SendPropertyChanging();
				this._Specifications = value;
				this.SendPropertyChanged("Specifications");
				this.OnSpecificationsChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_type", DbType="NVarChar(200)")]
	public string type
	{
		get
		{
			return this._type;
		}
		set
		{
			if ((this._type != value))
			{
				this.OntypeChanging(value);
				this.SendPropertyChanging();
				this._type = value;
				this.SendPropertyChanged("type");
				this.OntypeChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Stock", DbType="Int")]
	public System.Nullable<int> Stock
	{
		get
		{
			return this._Stock;
		}
		set
		{
			if ((this._Stock != value))
			{
				this.OnStockChanging(value);
				this.SendPropertyChanging();
				this._Stock = value;
				this.SendPropertyChanged("Stock");
				this.OnStockChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Sales_volume", DbType="Int")]
	public System.Nullable<int> Sales_volume
	{
		get
		{
			return this._Sales_volume;
		}
		set
		{
			if ((this._Sales_volume != value))
			{
				this.OnSales_volumeChanging(value);
				this.SendPropertyChanging();
				this._Sales_volume = value;
				this.SendPropertyChanged("Sales_volume");
				this.OnSales_volumeChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Shelf_life", DbType="Int")]
	public System.Nullable<int> Shelf_life
	{
		get
		{
			return this._Shelf_life;
		}
		set
		{
			if ((this._Shelf_life != value))
			{
				this.OnShelf_lifeChanging(value);
				this.SendPropertyChanging();
				this._Shelf_life = value;
				this.SendPropertyChanged("Shelf_life");
				this.OnShelf_lifeChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_component", DbType="NVarChar(200)")]
	public string component
	{
		get
		{
			return this._component;
		}
		set
		{
			if ((this._component != value))
			{
				this.OncomponentChanging(value);
				this.SendPropertyChanging();
				this._component = value;
				this.SendPropertyChanged("component");
				this.OncomponentChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Comimg", DbType="NVarChar(200)")]
	public string Comimg
	{
		get
		{
			return this._Comimg;
		}
		set
		{
			if ((this._Comimg != value))
			{
				this.OnComimgChanging(value);
				this.SendPropertyChanging();
				this._Comimg = value;
				this.SendPropertyChanged("Comimg");
				this.OnComimgChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_place", DbType="NVarChar(200)")]
	public string place
	{
		get
		{
			return this._place;
		}
		set
		{
			if ((this._place != value))
			{
				this.OnplaceChanging(value);
				this.SendPropertyChanging();
				this._place = value;
				this.SendPropertyChanged("place");
				this.OnplaceChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Remarks", DbType="NVarChar(200)")]
	public string Remarks
	{
		get
		{
			return this._Remarks;
		}
		set
		{
			if ((this._Remarks != value))
			{
				this.OnRemarksChanging(value);
				this.SendPropertyChanging();
				this._Remarks = value;
				this.SendPropertyChanged("Remarks");
				this.OnRemarksChanged();
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Commoimg")]
public partial class Commoimg : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _commocode;
	
	private string _Commoimg1;
	
	private string _Commoimg2;
	
	private string _Commoimg3;
	
	private string _Commoimg4;
	
	private string _Commo_details;
	
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OncommocodeChanging(int value);
    partial void OncommocodeChanged();
    partial void OnCommoimg1Changing(string value);
    partial void OnCommoimg1Changed();
    partial void OnCommoimg2Changing(string value);
    partial void OnCommoimg2Changed();
    partial void OnCommoimg3Changing(string value);
    partial void OnCommoimg3Changed();
    partial void OnCommoimg4Changing(string value);
    partial void OnCommoimg4Changed();
    partial void OnCommo_detailsChanging(string value);
    partial void OnCommo_detailsChanged();
    #endregion
	
	public Commoimg()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_commocode", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int commocode
	{
		get
		{
			return this._commocode;
		}
		set
		{
			if ((this._commocode != value))
			{
				this.OncommocodeChanging(value);
				this.SendPropertyChanging();
				this._commocode = value;
				this.SendPropertyChanged("commocode");
				this.OncommocodeChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Commoimg1", DbType="NVarChar(200)")]
	public string Commoimg1
	{
		get
		{
			return this._Commoimg1;
		}
		set
		{
			if ((this._Commoimg1 != value))
			{
				this.OnCommoimg1Changing(value);
				this.SendPropertyChanging();
				this._Commoimg1 = value;
				this.SendPropertyChanged("Commoimg1");
				this.OnCommoimg1Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Commoimg2", DbType="NVarChar(200)")]
	public string Commoimg2
	{
		get
		{
			return this._Commoimg2;
		}
		set
		{
			if ((this._Commoimg2 != value))
			{
				this.OnCommoimg2Changing(value);
				this.SendPropertyChanging();
				this._Commoimg2 = value;
				this.SendPropertyChanged("Commoimg2");
				this.OnCommoimg2Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Commoimg3", DbType="NVarChar(200)")]
	public string Commoimg3
	{
		get
		{
			return this._Commoimg3;
		}
		set
		{
			if ((this._Commoimg3 != value))
			{
				this.OnCommoimg3Changing(value);
				this.SendPropertyChanging();
				this._Commoimg3 = value;
				this.SendPropertyChanged("Commoimg3");
				this.OnCommoimg3Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Commoimg4", DbType="NVarChar(200)")]
	public string Commoimg4
	{
		get
		{
			return this._Commoimg4;
		}
		set
		{
			if ((this._Commoimg4 != value))
			{
				this.OnCommoimg4Changing(value);
				this.SendPropertyChanging();
				this._Commoimg4 = value;
				this.SendPropertyChanged("Commoimg4");
				this.OnCommoimg4Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Commo_details", DbType="NVarChar(MAX)")]
	public string Commo_details
	{
		get
		{
			return this._Commo_details;
		}
		set
		{
			if ((this._Commo_details != value))
			{
				this.OnCommo_detailsChanging(value);
				this.SendPropertyChanging();
				this._Commo_details = value;
				this.SendPropertyChanged("Commo_details");
				this.OnCommo_detailsChanged();
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.orders")]
public partial class orders : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _ids;
	
	private System.Nullable<int> _orderscode;
	
	private System.Nullable<int> _o_userscode;
	
	private System.Nullable<int> _o_Commocode;
	
	private System.Nullable<decimal> _o_Price;
	
	private System.Nullable<int> _o_Number;
	
	private System.Nullable<System.DateTime> _o_time;
	
	private string _o_address;
	
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidsChanging(int value);
    partial void OnidsChanged();
    partial void OnorderscodeChanging(System.Nullable<int> value);
    partial void OnorderscodeChanged();
    partial void Ono_userscodeChanging(System.Nullable<int> value);
    partial void Ono_userscodeChanged();
    partial void Ono_CommocodeChanging(System.Nullable<int> value);
    partial void Ono_CommocodeChanged();
    partial void Ono_PriceChanging(System.Nullable<decimal> value);
    partial void Ono_PriceChanged();
    partial void Ono_NumberChanging(System.Nullable<int> value);
    partial void Ono_NumberChanged();
    partial void Ono_timeChanging(System.Nullable<System.DateTime> value);
    partial void Ono_timeChanged();
    partial void Ono_addressChanging(string value);
    partial void Ono_addressChanged();
    #endregion
	
	public orders()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ids", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int ids
	{
		get
		{
			return this._ids;
		}
		set
		{
			if ((this._ids != value))
			{
				this.OnidsChanging(value);
				this.SendPropertyChanging();
				this._ids = value;
				this.SendPropertyChanged("ids");
				this.OnidsChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_orderscode", DbType="Int")]
	public System.Nullable<int> orderscode
	{
		get
		{
			return this._orderscode;
		}
		set
		{
			if ((this._orderscode != value))
			{
				this.OnorderscodeChanging(value);
				this.SendPropertyChanging();
				this._orderscode = value;
				this.SendPropertyChanged("orderscode");
				this.OnorderscodeChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_o_userscode", DbType="Int")]
	public System.Nullable<int> o_userscode
	{
		get
		{
			return this._o_userscode;
		}
		set
		{
			if ((this._o_userscode != value))
			{
				this.Ono_userscodeChanging(value);
				this.SendPropertyChanging();
				this._o_userscode = value;
				this.SendPropertyChanged("o_userscode");
				this.Ono_userscodeChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_o_Commocode", DbType="Int")]
	public System.Nullable<int> o_Commocode
	{
		get
		{
			return this._o_Commocode;
		}
		set
		{
			if ((this._o_Commocode != value))
			{
				this.Ono_CommocodeChanging(value);
				this.SendPropertyChanging();
				this._o_Commocode = value;
				this.SendPropertyChanged("o_Commocode");
				this.Ono_CommocodeChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_o_Price", DbType="Decimal(18,2)")]
	public System.Nullable<decimal> o_Price
	{
		get
		{
			return this._o_Price;
		}
		set
		{
			if ((this._o_Price != value))
			{
				this.Ono_PriceChanging(value);
				this.SendPropertyChanging();
				this._o_Price = value;
				this.SendPropertyChanged("o_Price");
				this.Ono_PriceChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_o_Number", DbType="Int")]
	public System.Nullable<int> o_Number
	{
		get
		{
			return this._o_Number;
		}
		set
		{
			if ((this._o_Number != value))
			{
				this.Ono_NumberChanging(value);
				this.SendPropertyChanging();
				this._o_Number = value;
				this.SendPropertyChanged("o_Number");
				this.Ono_NumberChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_o_time", DbType="DateTime")]
	public System.Nullable<System.DateTime> o_time
	{
		get
		{
			return this._o_time;
		}
		set
		{
			if ((this._o_time != value))
			{
				this.Ono_timeChanging(value);
				this.SendPropertyChanging();
				this._o_time = value;
				this.SendPropertyChanged("o_time");
				this.Ono_timeChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_o_address", DbType="NVarChar(200)")]
	public string o_address
	{
		get
		{
			return this._o_address;
		}
		set
		{
			if ((this._o_address != value))
			{
				this.Ono_addressChanging(value);
				this.SendPropertyChanging();
				this._o_address = value;
				this.SendPropertyChanged("o_address");
				this.Ono_addressChanged();
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Recharge")]
public partial class Recharge : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _ids;
	
	private System.Nullable<int> _ueerscode;
	
	private System.Nullable<decimal> _r_money;
	
	private System.Nullable<System.DateTime> _r_time;
	
	private string _r_number;
	
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidsChanging(int value);
    partial void OnidsChanged();
    partial void OnueerscodeChanging(System.Nullable<int> value);
    partial void OnueerscodeChanged();
    partial void Onr_moneyChanging(System.Nullable<decimal> value);
    partial void Onr_moneyChanged();
    partial void Onr_timeChanging(System.Nullable<System.DateTime> value);
    partial void Onr_timeChanged();
    partial void Onr_numberChanging(string value);
    partial void Onr_numberChanged();
    #endregion
	
	public Recharge()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ids", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int ids
	{
		get
		{
			return this._ids;
		}
		set
		{
			if ((this._ids != value))
			{
				this.OnidsChanging(value);
				this.SendPropertyChanging();
				this._ids = value;
				this.SendPropertyChanged("ids");
				this.OnidsChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ueerscode", DbType="Int")]
	public System.Nullable<int> ueerscode
	{
		get
		{
			return this._ueerscode;
		}
		set
		{
			if ((this._ueerscode != value))
			{
				this.OnueerscodeChanging(value);
				this.SendPropertyChanging();
				this._ueerscode = value;
				this.SendPropertyChanged("ueerscode");
				this.OnueerscodeChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_r_money", DbType="Decimal(18,2)")]
	public System.Nullable<decimal> r_money
	{
		get
		{
			return this._r_money;
		}
		set
		{
			if ((this._r_money != value))
			{
				this.Onr_moneyChanging(value);
				this.SendPropertyChanging();
				this._r_money = value;
				this.SendPropertyChanged("r_money");
				this.Onr_moneyChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_r_time", DbType="DateTime")]
	public System.Nullable<System.DateTime> r_time
	{
		get
		{
			return this._r_time;
		}
		set
		{
			if ((this._r_time != value))
			{
				this.Onr_timeChanging(value);
				this.SendPropertyChanging();
				this._r_time = value;
				this.SendPropertyChanged("r_time");
				this.Onr_timeChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_r_number", DbType="NVarChar(50)")]
	public string r_number
	{
		get
		{
			return this._r_number;
		}
		set
		{
			if ((this._r_number != value))
			{
				this.Onr_numberChanging(value);
				this.SendPropertyChanging();
				this._r_number = value;
				this.SendPropertyChanged("r_number");
				this.Onr_numberChanged();
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Shopping_Cart")]
public partial class Shopping_Cart : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _ids;
	
	private System.Nullable<int> _userscode;
	
	private System.Nullable<int> _Commocode;
	
	private System.Nullable<decimal> _Unit_Price;
	
	private System.Nullable<int> _Number;
	
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidsChanging(int value);
    partial void OnidsChanged();
    partial void OnuserscodeChanging(System.Nullable<int> value);
    partial void OnuserscodeChanged();
    partial void OnCommocodeChanging(System.Nullable<int> value);
    partial void OnCommocodeChanged();
    partial void OnUnit_PriceChanging(System.Nullable<decimal> value);
    partial void OnUnit_PriceChanged();
    partial void OnNumberChanging(System.Nullable<int> value);
    partial void OnNumberChanged();
    #endregion
	
	public Shopping_Cart()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ids", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int ids
	{
		get
		{
			return this._ids;
		}
		set
		{
			if ((this._ids != value))
			{
				this.OnidsChanging(value);
				this.SendPropertyChanging();
				this._ids = value;
				this.SendPropertyChanged("ids");
				this.OnidsChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_userscode", DbType="Int")]
	public System.Nullable<int> userscode
	{
		get
		{
			return this._userscode;
		}
		set
		{
			if ((this._userscode != value))
			{
				this.OnuserscodeChanging(value);
				this.SendPropertyChanging();
				this._userscode = value;
				this.SendPropertyChanged("userscode");
				this.OnuserscodeChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Commocode", DbType="Int")]
	public System.Nullable<int> Commocode
	{
		get
		{
			return this._Commocode;
		}
		set
		{
			if ((this._Commocode != value))
			{
				this.OnCommocodeChanging(value);
				this.SendPropertyChanging();
				this._Commocode = value;
				this.SendPropertyChanged("Commocode");
				this.OnCommocodeChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Unit_Price", DbType="Decimal(18,2)")]
	public System.Nullable<decimal> Unit_Price
	{
		get
		{
			return this._Unit_Price;
		}
		set
		{
			if ((this._Unit_Price != value))
			{
				this.OnUnit_PriceChanging(value);
				this.SendPropertyChanging();
				this._Unit_Price = value;
				this.SendPropertyChanged("Unit_Price");
				this.OnUnit_PriceChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Number", DbType="Int")]
	public System.Nullable<int> Number
	{
		get
		{
			return this._Number;
		}
		set
		{
			if ((this._Number != value))
			{
				this.OnNumberChanging(value);
				this.SendPropertyChanging();
				this._Number = value;
				this.SendPropertyChanged("Number");
				this.OnNumberChanged();
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}
#pragma warning restore 1591
