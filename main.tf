resource "local_file" "foo" {
  content  = "foo!"
  filename = "./foo.bar"
}

resource "local_sensitive_file" "foo1" {
  content  = "foo!"
  filename = "${path.module}/foo1.bar"
}


resource "snowflake_table" "raw_table_4" {
  database            = snowflake_database.db.name
  schema              = snowflake_schema.schema.name
  name                = "Order_Summary_1"
  comment             = "This is a RAW Order_Summary Table"

  column {
    name     = "Custkey"
    type     = "NUMBER(38,0)"
  }

  column {
    name     = "Customer"
    type     = "VARCHAR(100)"
  }

  column {
    name     = "Cust_Address"
    type     = "VARCHAR(200)"
  }

  column {
    name = "Phone"
    type = "VARCHAR(20)"
  }

  column {
    name    = "Cust_acctbal"
    type    = "NUMBER(10,4)"
  }

   column {
    name    = "Cust_Mktsegment"
    type    = "VARCHAR(20)"
  }

   column {
    name    = "Orderkey"
    type    = "NUMBER(15,0)"
  }

  column {
    name    = "Orderstatus"
    type    = "VARCHAR(10)"
  }
   column {
    name    = "TotalPrice"
    type    = "NUMBER(10,4)"
  }
   column {
    name    = "Orderdate"
    type    = "VARCHAR(10)"
  }
   column {
    name    = "Orderpriority"
    type    = "VARCHAR(50)"
  }
   column {
    name    = "Clerk"
    type    = "VARCHAR(50)"
  }

    column {
    name    = "Shippriority"
    type    = "VARCHAR(20)"
  }

    column {
    name    = "Order_Comment"
    type    = "VARCHAR(255)"
  }

  column {
    name    = "Nationkey"
    type    = "NUMBER(20,0)"
  }
    column {
    name    = "Nation"
    type    = "VARCHAR(30)"
  }

   column {
    name    = "Regionkey"
    type    = "NUMBER(20,0)"
  }

  column {
    name    = "Region"
    type    = "VARCHAR(30)"
  }
}
