using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Item
/// </summary>
public class Item
{
	public Item()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    string name;

    public string Name
    {
        get { return name; }
        set { name = value; }
    }

    string serialnumber;

    public string Serialnumber
    {
        get { return serialnumber; }
        set { serialnumber = value; }
    }

    int numinbox;

    public int Numinbox
    {
        get { return numinbox; }
        set { numinbox = value; }
    }

    string category;

    public string Category
    {
        get { return category; }
        set { category = value; }
    }

    int price;

    public int Price
    {
        get { return price; }
        set { price = value; }
    }

    string vandor;

    public string Vandor
    {
        get { return vandor; }
        set { vandor = value; }
    }

    public Item(string _name, string _serialnumber, int _numinbox, string _category)
    {
        Name = _name;
        Serialnumber = _serialnumber;
        Numinbox = _numinbox;
        Category = _category;
    }

    //public Item(string _name, string _serialnumber, int _numinbox, string _category, int _price, string _vandor)
    //{
    //    Name = _name;
    //    Serialnumber = _serialnumber;
    //    Numinbox = _numinbox;
    //    Category = _category;
    //    Price = _price;
    //    Vandor = _vandor;

    //}
}