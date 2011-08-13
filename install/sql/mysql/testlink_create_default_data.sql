# TestLink Open Source Project - http://testlink.sourceforge.net/
# $Id: testlink_create_default_data.sql,v 1.37.6.2 2010/12/11 17:31:47 franciscom Exp $
# SQL script - create default data (rights & admin account)
#
# Database Type: MySQL 
# 20110813 - franciscom - TICKET 4342: Security problem with multiple Testlink installations on the same server 
# 20110730 - franciscom - TICKET 4661 - DB version
# 20110714 - franciscom - TICKET 4661
# ---------------------------------------------------------------------------------

# Database version
INSERT INTO /*prefix*/db_version (version,notes,upgrade_ts) VALUES('DB 1.5', 'TestLink 1.9.4',CURRENT_TIMESTAMP());

# Node types -
INSERT INTO /*prefix*/node_types  (id,description) VALUES (1,'testproject');
INSERT INTO /*prefix*/node_types  (id,description) VALUES (2,'testsuite');
INSERT INTO /*prefix*/node_types  (id,description) VALUES (3,'testcase');
INSERT INTO /*prefix*/node_types  (id,description) VALUES (4,'testcase_version');
INSERT INTO /*prefix*/node_types  (id,description) VALUES (5,'testplan');
INSERT INTO /*prefix*/node_types  (id,description) VALUES (6,'requirement_spec');
INSERT INTO /*prefix*/node_types  (id,description) VALUES (7,'requirement');
INSERT INTO /*prefix*/node_types  (id,description) VALUES (8,'requirement_version');
INSERT INTO /*prefix*/node_types  (id,description) VALUES (9,'testcase_step');
INSERT INTO /*prefix*/node_types  (id,description) VALUES (10,'requirement_revision');
INSERT INTO /*prefix*/node_types  (id,description) VALUES (11,'requirement_spec_revision');


# Roles -
INSERT INTO /*prefix*/roles  (id,description) VALUES (1, '<reserved system role 1>');
INSERT INTO /*prefix*/roles  (id,description) VALUES (2, '<reserved system role 2>');
INSERT INTO /*prefix*/roles  (id,description) VALUES (3, '<no rights>');
INSERT INTO /*prefix*/roles  (id,description) VALUES (4, 'test designer');
INSERT INTO /*prefix*/roles  (id,description) VALUES (5, 'guest');
INSERT INTO /*prefix*/roles  (id,description) VALUES (6, 'senior tester');
INSERT INTO /*prefix*/roles  (id,description) VALUES (7, 'tester');
INSERT INTO /*prefix*/roles  (id,description) VALUES (8, 'admin');
INSERT INTO /*prefix*/roles  (id,description) VALUES (9, 'leader');

# Rights - 
INSERT INTO /*prefix*/rights  (id,description) VALUES (1 ,'testplan_execute');
INSERT INTO /*prefix*/rights  (id,description) VALUES (2 ,'testplan_create_build');
INSERT INTO /*prefix*/rights  (id,description) VALUES (3 ,'testplan_metrics');
INSERT INTO /*prefix*/rights  (id,description) VALUES (4 ,'testplan_planning');
INSERT INTO /*prefix*/rights  (id,description) VALUES (5 ,'testplan_user_role_assignment');
INSERT INTO /*prefix*/rights  (id,description) VALUES (6 ,'mgt_view_tc');
INSERT INTO /*prefix*/rights  (id,description) VALUES (7 ,'mgt_modify_tc');
INSERT INTO /*prefix*/rights  (id,description) VALUES (8 ,'mgt_view_key');
INSERT INTO /*prefix*/rights  (id,description) VALUES (9 ,'mgt_modify_key');
INSERT INTO /*prefix*/rights  (id,description) VALUES (10,'mgt_view_req');
INSERT INTO /*prefix*/rights  (id,description) VALUES (11,'mgt_modify_req');
INSERT INTO /*prefix*/rights  (id,description) VALUES (12,'mgt_modify_product');
INSERT INTO /*prefix*/rights  (id,description) VALUES (13,'mgt_users');
INSERT INTO /*prefix*/rights  (id,description) VALUES (14,'role_management');
INSERT INTO /*prefix*/rights  (id,description) VALUES (15,'user_role_assignment');
INSERT INTO /*prefix*/rights  (id,description) VALUES (16,'mgt_testplan_create');
INSERT INTO /*prefix*/rights  (id,description) VALUES (17,'cfield_view');
INSERT INTO /*prefix*/rights  (id,description) VALUES (18,'cfield_management');
INSERT INTO /*prefix*/rights  (id,description) VALUES (19,'system_configuration');
INSERT INTO /*prefix*/rights  (id,description) VALUES (20,'mgt_view_events');
INSERT INTO /*prefix*/rights  (id,description) VALUES (21,'mgt_view_usergroups');
INSERT INTO /*prefix*/rights  (id,description) VALUES (22,'events_mgt');
INSERT INTO /*prefix*/rights  (id,description) VALUES (23 ,'testproject_user_role_assignment');
INSERT INTO /*prefix*/rights  (id,description) VALUES (24 ,'platform_management');
INSERT INTO /*prefix*/rights  (id,description) VALUES (25 ,'platform_view');
INSERT INTO /*prefix*/rights  (id,description) VALUES (26 ,'project_inventory_management');
INSERT INTO /*prefix*/rights  (id,description) VALUES (27 ,'project_inventory_view');


# Rights for Administrator role
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (8,1 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (8,2 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (8,3 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (8,4 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (8,5 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (8,6 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (8,7 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (8,8 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (8,9 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (8,10);
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (8,11);
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (8,12);
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (8,13);
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (8,14);
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (8,15);
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (8,16);
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (8,17);
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (8,18);
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (8,19);
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (8,20);
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (8,21);
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (8,22);
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (8,23);
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (8,24);
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (8,25);
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (8,26);
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (8,27);

# Rights for guest role
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (5,3 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (5,6 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (5,8 );

# Rights for test designer role
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (4,3 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (4,6 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (4,7 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (4,8 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (4,9 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (4,10);
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (4,11);

# Rights for tester role
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (7,1 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (7,3 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (7,6 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (7,8 );

# Rights for senior tester role
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (6,1 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (6,2 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (6,3 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (6,6 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (6,7 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (6,8 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (6,9 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (6,11);
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (6,25);
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (6,27);

# Rights for leader role
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (9,1 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (9,2 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (9,3 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (9,4 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (9,5 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (9,6 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (9,7 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (9,8 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (9,9 );
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (9,10);
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (9,11);
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (9,15);
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (9,16);
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (9,24);
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (9,25);
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (9,26);
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (9,27);

# admin account 
# SECURITY: change password after first login
#
# TICKET 4342: Security problem with multiple Testlink installations on the same server 
INSERT INTO /*prefix*/users (login,password,role_id,email,first,last,locale,active,cookie_string)
			VALUES ('admin','21232f297a57a5a743894a0e4a801fc3', 8,'', 'Testlink',
					'Administrator', 'en_GB',1,'21232f297a57a5a743894a0e4a801fc321232f297a57a5a743894a0e4a801fc3');


# Assignment types
INSERT INTO /*prefix*/assignment_types (id,fk_table,description) VALUES(1,'testplan_tcversions','testcase_execution');
INSERT INTO /*prefix*/assignment_types (id,fk_table,description) VALUES(2,'tcversions','testcase_review');

# Assignment status
INSERT INTO /*prefix*/assignment_status (id,description) VALUES(1,'open');
INSERT INTO /*prefix*/assignment_status (id,description) VALUES(2,'closed');
INSERT INTO /*prefix*/assignment_status (id,description) VALUES(3,'completed');
INSERT INTO /*prefix*/assignment_status (id,description) VALUES(4,'todo_urgent');
INSERT INTO /*prefix*/assignment_status (id,description) VALUES(5,'todo');