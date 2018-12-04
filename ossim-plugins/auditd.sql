-- auditd
-- plugin_id: 91131
-- Fatih USTA <fatihusta@labrisnetworks.com>
--
SET @pluginid = 91131;
SET @type = 1;
SET @pluginname = 'auditd';
SET @desc = 'auditd';
SET @product_type = 12;
SET @vendor = NULL;
DELETE FROM plugin WHERE id = @pluginid;
DELETE FROM plugin_sid where plugin_id = @pluginid;
-- id    | type | name     | description                     | product_type | vendor
INSERT IGNORE INTO plugin (id, type, name, description, product_type, vendor) VALUES (@pluginid, @type, @pluginname, @desc, @product_type, @vendor);
-- plugin_id | sid        | class_id | reliability | priority | name                        | aro    | subcategory_id | category_id
INSERT IGNORE INTO plugin_sid (plugin_id, sid, reliability,
                               priority, subcategory_id,
                               category_id, name) VALUES (@pluginid, 1, 1, 1, 71, 10, 'auditd: event alert');
