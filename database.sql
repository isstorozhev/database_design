CREATE TABLE "transactions" (
  "transaction_id" varchar PRIMARY KEY,
  "product_id" varchar,
  "product_id_dict" varchar,
  "customer_id" varchar,
  "transaction_date" varchar,
  "online_order" varchar,
  "order_status" varchar,
  "list_price" float,
  "standard_cost" float
);

CREATE TABLE "products" (
  "product_id" varchar PRIMARY KEY,
  "brand" varchar,
  "product_line" varchar,
  "product_class" varchar,
  "product_size" varchar
);

CREATE TABLE "customers" (
  "customer_id" varchar PRIMARY KEY,
  "address_id" varchar,
  "first_name" varchar,
  "last_name" varchar,
  "gender" varchar,
  "DOB" varchar,
  "job_title" varchar,
  "job_industry_category" varchar,
  "wealth_segment" varchar,
  "deceased_indicator" varchar,
  "owns_car" varchar,
  "property_valuation" int
);

CREATE TABLE "addresses" (
  "address_id" varchar PRIMARY KEY,
  "address" varchar,
  "postcode" varchar,
  "state" varchar,
  "country" varchar
);

ALTER TABLE "transactions" ADD FOREIGN KEY ("product_id_dict") REFERENCES "products" ("product_id");

ALTER TABLE "transactions" ADD FOREIGN KEY ("customer_id") REFERENCES "customers" ("customer_id");

ALTER TABLE "customers" ADD FOREIGN KEY ("address_id") REFERENCES "addresses" ("address_id");
