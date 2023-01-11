DROP
DATABASE IF EXISTS db_bloomingdale;

CREATE
DATABASE db_bloomingdale;
USE
db_bloomingdale;

CREATE TABLE IF NOT EXISTS product_category
(
    id BIGINT
(
    20
) NOT NULL AUTO_INCREMENT,
    category_name VARCHAR
(
    255
) NOT NULL,
    PRIMARY KEY
(
    id
)
    ) ENGINE=InnoDB
    AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS product
(
    id BIGINT
(
    20
) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR
(
    255
) NOT NULL,
    description VARCHAR
(
    500
) DEFAULT NULL,
    unit_price INT DEFAULT NULL,
    image_url VARCHAR
(
    500
) DEFAULT NULL,
    active BIT DEFAULT 1,
    units_in_stock INT DEFAULT NULL,
    category_id BIGINT
(
    20
),
    PRIMARY KEY
(
    id
),
    CONSTRAINT FOREIGN KEY
(
    category_id
)
    REFERENCES product_category
(
    id
)
    ON DELETE CASCADE
    ON UPDATE CASCADE
    ) ENGINE=InnoDB
    AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Products
-- -----------------------------------------------------
INSERT INTO product_category(category_name)
VALUES (''Women''),
       (''Shoes''),
       (''Handbags''),
       (''Men''),
       (''Jewelry & Accessories''),
       (''Kids''),
       (''HOME''),
       (''SALE''),
       (''DESIGNERS''),
       (''EDITORIAL''),
       (''GIFTS'');;

-- -----------------------------------------------------
-- Women
-- -----------------------------------------------------
INSERT INTO product(name, description, unit_price, image_url, active, units_in_stock, category_id)
VALUES (''Jean1'', ''Jean description...'', 29,
        ''https://assets.vogue.com/photos/6303e996be0e9b0e8c9fc4d9/3:4/w_1280%2Cc_limit/slide_17.jpg'', 1, 10, 1),
       (''Top1'', ''Top1 description...'', 26,
        ''https://i0.wp.com/www.tahlia.lk/wp-content/uploads/2020/08/TC0044-1.jpg?resize=247%2C296&ssl=1'', 1, 12, 1),
       (''Blouse1'', ''Blouse1 description...'', 18,
        ''https://m.media-amazon.com/images/G/01/AMAZON_FASHION/2021/ShoppingPage_SearchCards/Widget_Test_Assets/B09G9DYW7Q_Widget_Test_SearchFeatureCards_800x800.jpg'',
        1, 10, 1),
       (''Dress1'', ''Dress1 description...'', 17,
        ''http://cdn.shopify.com/s/files/1/0011/9783/4252/products/20_375a8763-f5d7-4184-a352-4523ef713733.jpg?v=1576267132'',
        1, 20, 1),
       (''Gown1'', ''Gown1 description...'', 30,
        ''https://www.na-kd.com/globalassets/nakd_draped_linen_dress-1018-007096-00681070_01c.jpg?ref=63C3874C42'', 1,
        15, 1),
       (''Jean2'', ''Jean2 description...'', 32, ''https://oldnavy.gap.com/webcontent/0051/857/938/cn51857938.jpg'', 1,
        15, 1);

-- -----------------------------------------------------
-- Shoes
-- -----------------------------------------------------
INSERT INTO product(name, description, unit_price, image_url, active, units_in_stock, category_id)
VALUES (''Boots'', ''Boots description...'', 35,
        ''https://cdn.shopify.com/s/files/1/1145/2636/products/gsmith_x20210615_002_3a9a0710-d302-4f5b-96f6-ac98d5d44c81_2048x2048.jpg?v=1648234823'',
        1, 10, 2),
       (''Sandals'', ''Scandals description...'', 45,
        ''https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/1-index-summer-sandals-2022-1648073538.jpg?crop=0.435xw:0.870xh;
0.265xw,0.0684xh&resize=640:*'',1,12,2),
       (''Sneakers'',''Sneakers description...'',59,''https://pyxis.nymag.com/v1/imgs/388/cda/a896a62ed3f7e2b9b36230ea5617f8abcd-11---.rsquare.w600.jpg'',1,10,2),
       (''Heels'',''Heels description...'',32,''https://thumbs.dreamstime.com/b/high-fashion-14925149.jpg'',1,10,2),
       (''Shoe1'',''Shoe1 description...'',49,''https://images.vans.com/is/image/Vans/VN000D3HY28-HERO?hei=1024&wid=1024&qlt=95
'',1,12,2),
       (''Shoe2'',''Shoe2 description...'',36,''https://images.vans.com/is/image/VansEU/VN000EE3RED-HERO?$PDP-FULL-IMAGE$'',1,15,2);


-- -----------------------------------------------------
-- Handbag
-- -----------------------------------------------------
INSERT INTO product(name, description, unit_price, image_url, active, units_in_stock, category_id)
VALUES (''Backpack'',''Backpack description...'',29,''https://cdn.shopify.com/s/files/1/0068/7341/5750/products/The-Backpack-Mini-1_7fe17eb5-0563-45e0-970b-81804a0295cc_grande.jpg?v=1664265899
'',1,12,3),
       (''Shoulder Bag'',''bag description...'',26,''https://www.prada.com/content/dam/pradabkg_products/1/1BD/1BD311/ZO6F0002/1BD311_ZO6_F0002_V_OOO_SLF.jpg/jcr:content/renditions/cq5dam.web.hebebed.1000.1000.crop.jpg'',1,10,3),
       (''Crossbody Bag'',''bag2 description...'',28,''https://m.media-amazon.com/images/I/71yub4XqVQL._AC_UL1000_.jpg'',1,10,3),
       (''Evening Bag'',''bag3 description...'',39,''https://static-01.daraz.lk/p/c80e23df1cc3227d0b75eed74d74ab5f.jpg'',1,10,3),
       (''Leather Bag'',''bag4 description...'',40,''https://s.alicdn.com/@sc04/kf/H7c421fd933b54d9ca3529fbf80dae9c61.jpg_300x300.jpg'',1,2,3),
       (''Totes'',''bag5 description...'',52,''https://assets.vogue.com/photos/6261bc04578fb7fe79a85eeb/1:1/w_2667,h_2667,c_limit/slide_23.jpg'',1,10,3);


-- -----------------------------------------------------
-- Men
-- -----------------------------------------------------
INSERT INTO product(name, description, unit_price, image_url, active, units_in_stock, category_id)
VALUES (''Coats & Jackets'',''asds description...'',29,''https://slimages.macysassets.com/is/image/McomMedia/media/MensMensCoatsJacketsOvercoatsPeacoats2878265_1482598.jpg'',1,10,4),
       (''T-Shirt'',''dgdf description...'',26,''https://assets.ajio.com/medias/sys_master/root/20220901/ARH5/6310ee67f997dd1f8dd3e3fd/-473Wx593H-464918983-blue-MODEL.jpg'',1,12,4),
       (''Belt'',''dfgfh description...'',18,''https://static-01.daraz.lk/p/2cf2cdd63b6eb3550e5b847b69cca77b.jpg'',1,10,4),
       (''Sweater'',''hgjh description...'',17,''https://static-01.daraz.com.bd/p/0e6d49a1da44118c13a0c7029c7de56a.png'',1,20,4),
       (''Jean'',''thggx description...'',30,''https://cdn.shopify.com/s/files/1/2153/3679/products/A-Brand-A-Dropped-Slim-Jean-Blazed-Shred-Og-Blazed-Shred-Edge-Clothing_1600x.jpg?v=1647991741
'',1,15,4),
       (''Suits'',''wdeg description...'',32,''https://i.ebayimg.com/images/g/TYMAAOSwGNthLuhn/s-l1600.jpg'',1,15,4);