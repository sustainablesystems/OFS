SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


INSERT INTO `ofs_configuration` (`section`, `name`, `constant`, `options`, `value`, `description`) VALUES
('1. Server Setup', '', '', '', '', 'Configure the server'),
('1. Server Setup', 'create_image_files', 'CREATE_IMAGE_FILES', 'checkbox=\r\nfalse\r\ntrue', 'true', 'Determine whether the server will automatically create image files when it access images through the database interface.'),
('1. Server Setup', 'current_version', 'CURRENT_VERSION', 'read_only=\r\nOFSv0.9.0\r\nOFSv0.9.1\r\nOFSv0.9.2\r\nOFSv0.9.3\r\nOFSv1.0.0\r\nOFSv1.0.1\r\n', 'OFSv1.0.1', 'Current version of the Open Food Software installed on this server.'),
('1. Server Setup', 'debug', 'DEBUG', 'checkbox=\r\nfalse\r\ntrue', 'false', 'Whether to show debugging messages on web pages (true) or not (false). Normally, this should be turned off for production servers.'),
('1. Server Setup', 'debug_logging', 'DEBUG_LOGGING', 'checkbox=\r\nfalse\r\ntrue', 'true', 'Whether to log errors to a file (normally located at the PATH location.'),
('1. Server Setup', 'domainname', 'DOMAIN_NAME', 'input_pattern=\r\n[a-zA-Z0-9]+[a-zA-Z0-9.-]*.[a-zA-Z0-9.-]*[a-zA-Z0-9]+', 'openfoodsource.org', 'Domain name that will be used for email. Example openfoodsource.org gives email addresses like help@openfoodsource.org. This should not include any subdomain portion, like www.'),
('1. Server Setup', 'fill_in_member_id', 'FILL_IN_MEMBER_ID', 'checkbox=\r\nfalse\r\ntrue', 'false', 'Should each new member_id be chosen to fill in missing values (true) or should each new member receive a sequentially higher member_id, even if some numbers are skipped (false)?'),
('1. Server Setup', 'htmldoc_paging', 'HTMLDOC_PAGING', 'input_pattern=\r\n.*', '<!-- MEDIA DUPLEX NO --><!-- MEDIA TOP 0.3in --><!-- MEDIA BOTTOM 0.3in -->', 'Place this markup at the bottom of each bulk invoice page to provide pagination.'),
('1. Server Setup', 'keep_old_prod_conf', 'KEEP_OLD_PROD_CONF', 'checkbox=\r\nfalse\r\ntrue', 'true', 'When a producer change to a product forces a new version, this will determine whether the current (old version) becomes UN-confirmed or not. Benefits of keeping the old product confirmation are that customers can still buy it -- even before the change gets validated. Detriments are the same. When the new version is validated the old version will automatically be unconfirmed.'),
('1. Server Setup', 'local_time_zone', 'LOCAL_TIME_ZONE', 'input_options=\r\nAmerica/New_York\r\nAmerica/Chicago\r\nAmerica/Denver\r\nAmerica/Phoenix\r\nAmerica/Los_Angeles\r\nAmerica/Anchorage\r\nAmerica/Adak\r\nPacific/Honolulu', 'America/Chicago', 'Time zone for calculating dates/times'),
('1. Server Setup', 'md5_master_password', 'MD5_MASTER_PASSWORD', 'input_pattern=\r\n[a-f0-9]*', '', 'If you want to use a master password that will allow access to all member accounts enter the MD5 of master password, which can be generated by mysql. The value displayed here is NOT the master password. This value is the MD5 hash of the master password. Clear the value to disable any master password usage.'),
('1. Server Setup', 'mission_vision_values', 'MISSION_VISION_VALUES', 'text_area', '<strong>Our mission:</strong> To create and provide software for the local food community that is consistent with the values of the community.', 'This field is mainly used for including mission / vision / values in the page headers. This may include HTML codes.'),
('1. Server Setup', 'new_producer_pending', 'NEW_PRODUCER_PENDING', 'checkbox=\r\n0\r\n1', '1', 'Determine if new producers begin as pending (1) or if new producers should have immediate access (0)'),
('1. Server Setup', 'new_producer_status', 'NEW_PRODUCER_STATUS', 'select=\r\n0\r\n1\r\n2', '0', 'Determine the status of new producers. 0=listed, 1=unlisted, 2=suspended.'),
('1. Server Setup', 'organization_type', 'ORGANIZATION_TYPE', 'input_pattern=\r\n.*', 'cooperative', 'Examples might be cooperative or partnership.  This is used in various textual places with results such as... Welcome to the partnership.'),
('1. Server Setup', 'serve_file_images', 'SERVE_FILE_IMAGES', 'checkbox=\r\nfalse\r\ntrue', 'true', 'Select this option to preferentially serve images from image files rather than from the database, which is the legacy configuration. This option will check if an image file exists and redirect the server to it. Otherwise, it will create the file before redirecting the server to the newly-created file.\r\n\r\nIf this option is selected, then the "create image files" option is implied and has no additional function.\r\n\r\nNOTE: For the full legacy setup, which serves image files directly from the database, this option should be unchecked and the "create image files" option should also be unchecked. This is provided because some servers might not support all of the auto-creation options.'),
('1. Server Setup', 'site_contact_info', 'SITE_CONTACT_INFO', 'text_area', '1234 Mallard Ln., Duckworth, FW 54321 1-800-555-1212', 'Contact information. Should probably include address and phone number. This may include HTML codes.'),
('1. Server Setup', 'site_mailing_address', 'SITE_MAILING_ADDR', 'text_area\r\n', 'Open Food Source<br />1234 Mallard Ln.<br />Duckworth, FW 54321', 'Address to use for ground-mail contacts. This information will be displayed in page footers and other relevant places. This may include HTML codes.'),
('1. Server Setup', 'site_name', 'SITE_NAME', 'input_pattern=\r\n.+', 'Open Food Source', 'Human-readable site name. Example: Open Food Source Website'),
('1. Server Setup', 'site_url', 'BASE_URL', 'input_pattern=\r\nhttp[s]{0,1}://[a-zA-Z0-9\\.\\-]+', 'https://www.openfoodsource.org', 'Enter the preferred host URL for your website. Do not include a trailing slash. Example: http://www.openfoodsource.org'),
('1. Server Setup', 'tagline', 'TAGLINE', 'text_area', 'Software for local food networks', 'This field is mainly used for including a tagline on page headers. It may include HTML codes.'),
('1. Server Setup', 'upload_maximum_size', 'UPLOAD_MAX_FILE_KB', 'input_pattern=\r\n[0-9]+', '2000', 'Maximum file size for pictures uploaded to the server (kilobytes).'),
('1. Server Setup', 'use_htmldoc', 'USE_HTMLDOC', 'checkbox=\r\nfalse\r\ntrue', 'true', 'Enable/disable pdf generation by HTMLDoc.'),
('2. Site Behavior', 'checkout_member_id', 'CHECKOUT_MEMBER_ID', 'input_pattern=\r\n[0-9]+', '1', 'This value is a temporary work-around. Enter the member_id for a person who will checkout each order at the end of ordering each cycle. In the future the process will be exposed so that members can check themselves out.'),
('2. Site Behavior', '', '', '', '', 'Configure order cycles and other site behavior'),
('2. Site Behavior', 'days_per_cycle', 'DAYS_PER_CYCLE', 'input_pattern=\r\n[0-9]+', '14', 'Typical period of cycle &ndash; for predicting values when prepping new ordering cycles.'),
('2. Site Behavior', 'email_customer', 'CUSTOMER_EMAIL', 'input_pattern=\r\n[A-Za-z0-9\\._%+\\-]+@[A-Za-z0-9\\.\\-]+.[A-Za-z]{2,6}', 'customer@openfoodsource.org', 'E-mail address for customer messages.'),
('2. Site Behavior', 'email_general', 'GENERAL_EMAIL', 'input_pattern=\r\n[A-Za-z0-9\\._%+\\-]+@[A-Za-z0-9\\.\\-]+.[A-Za-z]{2,6}', 'info@openfoodsource.org', 'E-mail address for general messages.'),
('2. Site Behavior', 'email_help', 'HELP_EMAIL', 'input_pattern=\r\n[A-Za-z0-9\\._%+\\-]+@[A-Za-z0-9\\.\\-]+.[A-Za-z]{2,6}', 'help@openfoodsource.org', 'E-mail address for help messages.'),
('2. Site Behavior', 'email_member_form', 'MEMBER_FORM_EMAIL', 'input_pattern=\r\n(SELF,){0,1}[A-Za-z0-9\\._%+\\-]+@[A-Za-z0-9\\.\\-]+.[A-Za-z]{2,6}', 'SELF,membership@openfoodsource.org', 'The membership application will be sent to these email address(es) -- separate with commas. The key-word &quot;SELF&quot; will be replaced with the email address for the member who is filling out the form.'),
('2. Site Behavior', 'email_membership', 'MEMBERSHIP_EMAIL', 'input_pattern=\r\n[A-Za-z0-9\\._%+\\-]+@[A-Za-z0-9\\.\\-]+.[A-Za-z]{2,6}', 'membership@openfoodsource.org', 'E-mail address for membership messages.'),
('2. Site Behavior', 'email_orders', 'ORDER_EMAIL', 'input_pattern=\r\n[A-Za-z0-9\\._%+\\-]+@[A-Za-z0-9\\.\\-]+.[A-Za-z]{2,6}', 'orders@openfoodsource.org', 'E-mail address for orders messages.'),
('2. Site Behavior', 'email_pricelist', 'PRICELIST_EMAIL', 'input_pattern=\r\n[A-Za-z0-9\\._%+\\-]+@[A-Za-z0-9\\.\\-]+.[A-Za-z]{2,6}', 'pricelist@openfoodsource.org', 'E-mail address for pricelist messages.'),
('2. Site Behavior', 'email_problems', 'PROBLEMS_EMAIL', 'input_pattern=\r\n[A-Za-z0-9\\._%+\\-]+@[A-Za-z0-9\\.\\-]+.[A-Za-z]{2,6}', 'problems@openfoodsource.org', 'E-mail address for problems messages.'),
('2. Site Behavior', 'email_producer_care', 'PRODUCER_CARE_EMAIL', 'input_pattern=\r\n[A-Za-z0-9\\._%+\\-]+@[A-Za-z0-9\\.\\-]+.[A-Za-z]{2,6}', 'producer-care@openfoodsource.org', 'E-mail address for producer-care messages.'),
('2. Site Behavior', 'email_producer_form', 'PRODUCER_FORM_EMAIL', 'input_pattern=\r\n(SELF,){0,1}[A-Za-z0-9\\._%+\\-]+@[A-Za-z0-9\\.\\-]+.[A-Za-z]{2,6}', 'SELF,standards@openfoodsource.org', 'The producer application will be sent to these email address(es) -- separate with commas. The key-word &quot;SELF&quot; will be replaced with the email address for the producer who is filling out the form.'),
('2. Site Behavior', 'email_software', 'SOFTWARE_EMAIL', 'input_pattern=\r\n[A-Za-z0-9\\._%+\\-]+@[A-Za-z0-9\\.\\-]+.[A-Za-z]{2,6}', 'software@openfoodsource.org', 'E-mail address for software messages.'),
('2. Site Behavior', 'email_standards', 'STANDARDS_EMAIL', 'input_pattern=\r\n[A-Za-z0-9\\._%+\\-]+@[A-Za-z0-9\\.\\-]+.[A-Za-z]{2,6}', 'standards@openfoodsource.org', 'E-mail address for standards messages.'),
('2. Site Behavior', 'email_treasurer', 'TREASURER_EMAIL', 'input_pattern=\r\n[A-Za-z0-9\\._%+\\-]+@[A-Za-z0-9\\.\\-]+.[A-Za-z]{2,6}', 'treasurer@openfoodsource.org', 'E-mail address for treasurer messages.'),
('2. Site Behavior', 'email_volunteer', 'VOLUNTEER_EMAIL', 'input_pattern=\r\n[A-Za-z0-9\\._%+\\-]+@[A-Za-z0-9\\.\\-]+.[A-Za-z]{2,6}', 'volunteer@openfoodsource.org', 'E-mail address for volunteer messages.'),
('2. Site Behavior', 'email_webmaster', 'WEBMASTER_EMAIL', 'input_pattern=\r\n[A-Za-z0-9\\._%+\\-]+@[A-Za-z0-9\\.\\-]+.[A-Za-z]{2,6}', 'web@openfoodsource.org', 'E-mail address for webmaster messages.'),
('2. Site Behavior', 'fields_req_confirm', 'FIELDS_REQ_CONFIRM', 'multi_options=\r\nproduct_name\r\nproduct_description\r\nsubcategory_id\r\naccount_number\r\ninventory_id\r\ninventory_pull\r\nunit_price\r\npricing_unit\r\nordering_unit\r\nproduction_type_id\r\nextra_charge\r\nproduct_fee_percent\r\nrandom_weight\r\nminimum_weight\r\nmaximum_weight\r\nmeat_weight_type\r\nlisting_auth_type\r\nsticky\r\ntangible\r\nstorage_id\r\nretail_staple\r\nfuture_delivery\r\nfuture_delivery_type\r\nimage_id\r\nconfirmed\r\nstaple_type\r\ncreated\r\nmodified\r\nhide_from_invoice', 'subcategory_id,extra_charge', 'Identify which product fields, when changed, should initiate a new product version and require confirmation.'),
('2. Site Behavior', 'institution_window', 'INSTITUTION_WINDOW', 'input_pattern=\r\n[0-9]+', '0', 'End-of-order window for institutional buyers (seconds) Set value larger than the ordering window to allow institutional buyers all the time and set to zero to prevent any institutional use. NOTE: 3600 x 24 = 1 day in seconds.'),
('3. File Setup', '', '', '', '', 'Configure locations of resources pages'),
('3. File Setup', 'db_backup_root', 'DB_BACKUP_ROOT', 'input_pattern=\r\n/[a-zA-Z0-9./-_]+[a-zA-Z0-9.-_]', '/home/openfoodsource', 'Internal file path to the database backup directory (not currently implemented). This should have a leading slash but no trailing slash. Example: /home/ofs'),
('3. File Setup', 'favicon', 'FAVICON', 'input_pattern=\r\n/[a-zA-Z0-9./-_]+', '/favicon.ico', 'Filename of your favicon (usually in the root directory). This is the tiny icon that appears in bookmarks and tabs of some web browsers. Example: /favicon.ico'),
('3. File Setup', 'file_path', 'FILE_PATH', 'input_pattern=\r\n/[a-zA-Z0-9\\.\\/\\-_]*[a-zA-Z0-9\\.\\-_]+', '/home/openfoodsource/public_html', 'Internal file path to document_root. This should have a leading slash but no trailing slash. Example: /home/ofs/public_html'),
('3. File Setup', 'food_coop_store_path', 'PATH', 'input_pattern=\r\n/[a-zA-Z0-9\\.\\/\\-_]+/', '/food/', 'Directory in which the Open Food Source software resides. Include directory slashes before and after. Example: /food/'),
('3. File Setup', 'invoice_file_path', 'INVOICE_FILE_PATH', 'input_pattern=\r\n/[a-zA-Z0-9./-_]+/', '/home/openfoodsource/public_html/food/invoices/', 'This is the server path to archived invoices. This should be referenced to the file-system root. Example: /home/ofs/public_html/shop/invoices/'),
('3. File Setup', 'invoice_web_path', 'INVOICE_WEB_PATH', 'input_pattern=\r\n/[a-zA-Z0-9./-_]+/', '/food/invoices/', 'This is the web-accessible path to archived invoices. This should be referenced to document root. Example: /shop/invoices/'),
('3. File Setup', 'page_coopproducers', 'COOP_PRODUCERS_PAGE', 'input_pattern=\r\n/[a-zA-Z0-9./-_]+', '/food/prdcr_list.php', 'Page that lists the producers. File should be referenced to document root. Example: /shop/prdcr_list.php'),
('3. File Setup', 'page_locations', 'LOCATIONS_PAGE', 'input_pattern=\r\n/[a-zA-Z0-9./-_]+', '/food/locations.php', 'Page that explains where food pickup locations are. File should be referenced to document root. Example: /shop/locations.php'),
('3. File Setup', 'page_membership', 'MEMBERSHIP_PAGE', 'input_pattern=\r\n/[a-zA-Z0-9./-_]+', '/join.php', 'Page about how to join the organization. File should be referenced to document root. Example: /join.php'),
('3. File Setup', 'page_terms_of_service', 'TERMS_OF_SERVICE', 'input_pattern=\r\n/[a-zA-Z0-9./-_]+', '/pdf/member_information.pdf', 'Page about membership standards. File should be referenced to document root. Example: /terms_of_service.php'),
('3. File Setup', 'product_image_path', 'PRODUCT_IMAGE_PATH', 'input_pattern=\r\n/[a-zA-Z0-9./-_]+/', '/food/product_images/', 'This is the web-accessible path to product images. This should be referenced to document root. Example: /shop/product_images/'),
('3. File Setup', 'site_graphics', 'DIR_GRAPHICS', 'input_pattern=\r\n/[a-zA-Z0-9./-_]+/', '/food/grfx/', 'Directory for graphic files for the coop section of your website with leading and trailing slashes. Example: /food/grfx/'),
('4. Display Options', 'authorized_person', 'AUTHORIZED_PERSON', 'input_pattern=\r\n.*', 'Danger Duck (General Manager)', 'Name of the membership coordinator or other official contact person (plain-text only). This is used e.g. for signing the member welcome letter.'),
('4. Display Options', '', '', '', '', 'Configure elements related to how information is displayed'),
('4. Display Options', 'date_format_closed', 'DATE_FORMAT_CLOSED', 'input_pattern=\r\n.*[d|D|j|l|N|w|z|W|F|m|M|n|t|o|Y|y]+.*\r\n', 'F j, Y', 'Date format for order closed text. CODES &ndash; Day: d [01, 02 .. 30, 31], D [Mon Tue .. Sat, Sun], j [1, 2 .. 30, 31], l [Monday, Tuesday .. Saturday, Sunday], N [1 2 .. 6, 7], S [suffix: st, nd, rd, th], w [1, 2, .. 6, 0], z [0, 1, 2, 3 .. 364, 365]<br />Week: W [1, 2, 3 .. 51, 52]<br />Month: F [January, February .. November, December], m [01, 02 .. 11, 12], M [Jan, Feb .. Nov, Dec], n [1, 2 .. 11, 12], t [28, 29, 30, 31]<br />Year: L [leap-year: 1, 0], o [ISO-8601: 1999, 2000, 2001 ...], Y [1999, 2000, 2001 ...], y [99, 00, 01, 02 ...]'),
('4. Display Options', 'days_considered_changed', 'DAYS_CONSIDERED_CHANGED', 'input_pattern=\r\n[0-9]+', '28', 'Number of days a changed product will show up on the &quot;changed&quot; listings.'),
('4. Display Options', 'days_considered_new', 'DAYS_CONSIDERED_NEW', 'input_pattern=\r\n[0-9]+', '28', 'Number of days a new product will show up on the &quot;new&quot; listings.'),
('4. Display Options', 'default_results_per_page', 'PER_PAGE', 'input_pattern=\r\n[1-9]+[0-9]*', '25', 'Some listings use this value to determine how many results to show on each page.'),
('4. Display Options', 'exclude_zero_inv', 'EXCLUDE_ZERO_INV', 'checkbox=\r\nfalse\r\ntrue', 'true', 'In public product lists, this will force suppression of zero-inventory items. Should items with zero inventory amounts be shown in product lists (checked) or not shown (unchecked)?'),
('4. Display Options', 'fontface', '', 'input_pattern=\r\n[a-zA0Z0-9-_]*', 'arial', 'Font face used in various locations. This value will be deprecated soon.'),
('4. Display Options', 'font', '', 'input_pattern=\r\n.*', '<font class="default_font">', 'Font declaration used in some locations. This value will be deprecated soon.'),
('4. Display Options', 'organization_abbreviation', 'ORGANIZATION_ABBR', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'OFS', 'Abbreviated organizational name that is used for with PayPal and in other places where a short recognizable designator is needed (e.g. OFS).'),
('4. Display Options', 'prdcr_info_public', 'PRDCR_INFO_PUBLIC', 'checkbox=\r\nfalse\r\ntrue', 'true', 'Should producer contact information be shown on the public pages (true) or should it be restricted to logged-in members (false)?'),
('4. Display Options', 'product_image_size', 'PRODUCT_IMAGE_SIZE', 'input_pattern=\r\n[0-9]+', '300', 'This value sets the maximum number of pixels (height or width) at which images will be stored for later display. Full-scale images will always be stored in the database and changing this number will cause images to be recreated at the changed scale as they are needed.'),
('4. Display Options', 'random_calc', 'RANDOM_CALC', 'select=\r\nZERO\r\nAVG\r\nMAX\r\nMIN', 'MAX', 'Possible values for estimating charges for items with random weights: ZERO [show zero cost for the item], AVG [use a cost based on the average of minimum and maximum weights], MAX [base costs on maximum weights], MIN [base costs on minimum weights]'),
('4. Display Options', 'route_code_template', 'ROUTE_CODE_TEMPLATE', 'text_area', '<span>!HUB_SHORT!-</span><span style="font-size:120%;font-weight:bold;">!SITE_SHORT!</span>&nbsp; &nbsp;#!MEMBER_ID! (!SITE_LONG!) [!STORAGE_CODE!]', 'Configure this to reflect your desired routing code template: The following values will be auto-filled from like-named variables in the scripts used to create the routing templates.  For example, !BASKET_ID! is replaced with the customer basket id. Allowable values are &ndash; !BASKET_ID! [customer basket id], !MEMBER_ID! [customer member id], !FIRST_NAME! [customer first name], !LAST_NAME! [customer last name], !PREFERRED_NAME! [customer preferred name], !BUSINESS_NAME! [customer business name], !HUB! [hub where order will be delivered], !TRUCK_CODE! [truck code for truck delivering products], !DELCODE_ID! [delivery code id of the pickup site], !DELCODE! [delivery code (human readable) of the pickup site], !DELTYPE! [delivery type: H (home), W (work), P (pickup)], !A_BUSINESS_NAME! [producer business name], !PRODUCT_ID! [product id number], !PRODUCT_NAME! [product name], !ITEM_PRICE! [item price per pricing unit], !ORDERING_UNIT! [quantity units used for ordering], !QUANTITY! [quantity of ordering units that were ordered], !STORAGE_CODE! [storage code for the product]'),
('4. Display Options', 'show_actual_price', 'SHOW_ACTUAL_PRICE', 'checkbox=\r\nfalse\r\ntrue', 'true', 'Show actual price customers will pay vs. base price (between the producer and customer price) This is the global value for price-lists. It must be changed in the order_cycles table for display on invoices of specific order cycles. Should the actual full price of products be shown in product lists and on the invoice (checked), or should the "co-op" price be shown, with fees added as a separate line-item (unchecked)?'),
('4. Display Options', 'show_header_logo', 'SHOW_HEADER_LOGO', 'checkbox=\r\nfalse\r\ntrue', 'true', 'Should we show the logo in the header? If the template_header.php file has been modified, this setting can probalby be ignored.'),
('4. Display Options', 'show_header_sitename', 'SHOW_HEADER_SITENAME', 'checkbox=\r\nfalse\r\ntrue', 'false', 'Should we show the site name in the header? If the template_header.php file has been modified, this setting can probalby be ignored.'),
('5. Finances', 'aggregate_customer_fee', 'AGGREGATE_CUSTOMER_FEE', 'select=\r\nby product\r\nby basket', 'by product', 'In the ledger, how are customer fees aggregated? Only &quot;by product&quot; is currently functional. This selection is reserved for future use.'),
('5. Finances', 'aggregate_producer_fee', 'AGGREGATE_PRODUCER_FEE', 'select=\r\nby product\r\nby basket', 'by product', 'In the ledger, how are producer fees aggregated? Only &quot;by product&quot; is currently functional. This selection is reserved for future use.'),
('5. Finances', 'aggregate_taxes', 'AGGREGATE_TAXES', 'select=\r\nby product\r\nby basket', 'by product', 'In the ledger, how are taxes aggregated? Only &quot;by product&quot; is currently functional. This selection is reserved for future use.'),
('5. Finances', '', '', '', '', 'Configure financial behavior'),
('5. Finances', 'coop_fee_taxed', 'COOP_FEE_IS_TAXED', 'select=\r\nalways\r\non taxable items\r\nnever', 'on taxable items', 'When should the markup (sometimes called the co-op fee) be taxable? Always, only on taxable items, or never?'),
('5. Finances', 'membership_taxed', 'MEMBERSHIP_IS_TAXED', 'checkbox=\r\nfalse\r\ntrue', 'false', 'Should payments for membership in the organization be taxable (true) or not (false)?'),
('5. Finances', 'pays_customer_fee', 'PAYS_CUSTOMER_FEE', 'select=\r\ncustomer\r\nproducer\r\nnobody', 'customer', 'Who pays the customer fee? Normally this will be the customer. Other options should be tested before use.'),
('5. Finances', 'pays_producer_fee', 'PAYS_PRODUCER_FEE', 'select=\r\ncustomer\r\nproducer\r\nnobody', 'producer', 'Who pays the producer fee? Normally this will be the producer. Other options should be tested before use.'),
('5. Finances', 'pays_product_fee', 'PAYS_PRODUCT_FEE', 'select=\r\ncustomer\r\nproducer\r\nnobody', 'customer', 'Who pays the product fee? This option is not well-tested.'),
('5. Finances', 'pays_subcategory_fee', 'PAYS_SUBCATEGORY_FEE', 'select=\r\ncustomer\r\nproducer\r\nnobody', 'customer', 'Who pays the subcategory fee? This option is not well-tested.'),
('5. Finances', 'state_tax', 'STATE_TAX', 'input_pattern=\r\n[0-9.]+', '0.07', 'This value should not be needed if the tax table in the database is properly set up. This value will eventually be deprecated.'),
('6. Software', '', '', '', '', 'Configure database and software'),
('6. Software', 'error_flags', 'ERROR_FLAGS', 'multi_options=\r\nE_ERROR\r\nE_WARNING\r\nE_PARSE\r\nE_NOTICE\r\nE_CORE_ERROR\r\nE_CORE_WARNING\r\nE_COMPILE_ERROR\r\nE_COMPILE_WARNING\r\nE_USER_ERROR\r\nE_USER_WARNING\r\nE_USER_NOTICE\r\nE_STRICT\r\nE_RECOVERABLE_ERROR\r\nE_ALL', 'E_ERROR,E_WARNING,E_PARSE', 'Select error codes to trap.'),
('6. Software', 'new_table_accounts', 'NEW_TABLE_ACCOUNTS', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'accounts', 'Table containing details of internal accounts and their names.'),
('6. Software', 'new_table_basket_items', 'NEW_TABLE_BASKET_ITEMS', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'basket_items', 'Name of the database table containing details about items placed into customer baskets.'),
('6. Software', 'new_table_baskets', 'NEW_TABLE_BASKETS', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'baskets', 'Name of the database table containing information about customer shopping baskets.'),
('6. Software', 'new_table_ledger', 'NEW_TABLE_LEDGER', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'ledger', 'Name of the database table containing ledger (accounting) information for all transactions.'),
('6. Software', 'new_table_messages', 'NEW_TABLE_MESSAGES', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'messages', 'Name of the database table containing content of messages of all kinds.'),
('6. Software', 'new_table_message_types', 'NEW_TABLE_MESSAGE_TYPES', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'message_types', 'Name of the database table detailing different types of messages.'),
('6. Software', 'new_table_products', 'NEW_TABLE_PRODUCTS', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'products', 'Name of the database table containing information about products and product versions.'),
('6. Software', 'new_table_sites', 'NEW_TABLE_SITES', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'sites', 'Name of the database table containing details about customer pickup locations.'),
('6. Software', 'new_table_status', 'NEW_TABLE_STATUS', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'status', 'Name of the database table containing volatile status information.'),
('6. Software', 'new_table_tax_rates', 'NEW_TABLE_TAX_RATES', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'tax_rates', 'Name of the database table containing regional codes and associated tax rates for those locations.'),
('6. Software', 'new_table_transaction_group_enum', 'NEW_TABLE_ADJUSTMENT_GROUP_ENUM', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'transaction_group_enum', 'Name of the database table enumerating adjustment groups. Used internally by the software to group adjustments.'),
('6. Software', 'status_ttl_minutes', 'STATUS_TTL_MINUTES', 'input_pattern=\r\n[0-9]+', '50000', 'Default number of minutes to keep data in the status table before dumping it as garbage.'),
('6. Software', 'table_availability', 'TABLE_AVAILABILITY', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'availability', 'Name of the database table containing details about which producers have products available at which sites.'),
('6. Software', 'table_cat', 'TABLE_CATEGORY', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'categories', 'Name of the database table containing details of product categories.'),
('6. Software', 'table_deltypes', 'TABLE_DELTYPE', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'delivery_types', 'Name of the database table containing information about order pickup types (pickup vs. delivery).'),
('6. Software', 'table_how_heard', 'TABLE_HOW_HEARD', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'how_heard', 'Name of the database table containing options for new members to indicate how they were referred to the website.'),
('6. Software', 'table_hubs', 'TABLE_HUBS', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'hubs', 'Name of the database table containing details of food hubs in the routing network.'),
('6. Software', 'table_inventory', 'TABLE_INVENTORY', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'inventory', 'Name of the database table containing details about product inventory.'),
('6. Software', 'table_membership_types', 'TABLE_MEMBERSHIP_TYPES', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'membership_types', 'Name of the database table containing details about membership type options.'),
('6. Software', 'table_mem', 'TABLE_MEMBER', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'members', 'Name of the database table containing information about organization members.'),
('6. Software', 'table_order_cycles', 'TABLE_ORDER_CYCLES', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'order_cycles', 'Name of the database table containing information about each order cycle.'),
('6. Software', 'table_pay', 'TABLE_PAY', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'payment_method', 'Name of the database table containing options for customer payment methods.'),
('6. Software', 'table_prdcr_logos', 'TABLE_PRODUCER_LOGOS', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'producers_logos', 'Name of the database table containing logo data for producers.'),
('6. Software', 'table_prdcr_reg', 'TABLE_PRODUCER_REG', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'producers_registration', 'Name of the database table containing detailed information about each producer&rsquo;s operation.'),
('6. Software', 'table_prodtype', 'TABLE_PRODUCT_TYPES', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'production_types', 'Name of the database table containing production type options (organic, natural, etc).'),
('6. Software', 'table_producers', 'TABLE_PRODUCER', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'producers', 'Name of the database table containing information about member producers.'),
('6. Software', 'table_product_img', 'TABLE_PRODUCT_IMAGES', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'product_images', 'Name of the database table containing image data for products.'),
('6. Software', 'table_product_store', 'TABLE_PRODUCT_STORAGE_TYPES', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'product_storage_types', 'Name of the database table containing options for product storage (FROZ, REF, NON, EGGS, etc).'),
('6. Software', 'table_rt', 'TABLE_ROUTE', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'routes', 'Name of the database table containing details of transportation routes.'),
('6. Software', 'table_subcat', 'TABLE_SUBCATEGORY', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'subcategories', 'Name of the database table containing details of product subcategories.'),
('6. Software', 'table_translation', 'TABLE_TRANSLATION', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'translation', 'Name of the database table containing various types of translation information.'),
('6. Software', 'table_trans', 'TABLE_TRANSACTIONS', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'transactions', 'Name of the database table containing details of transactions. NOTE: This table is deprecated but retained for future reference.'),
('6. Software', 'table_trans_type', 'TABLE_TRANS_TYPES', 'input_pattern=\r\n[A-Za-z0-9.-_]+', 'transactions_types', 'Name of the database table containing details of transaction types. NOTE: This table is deprecated but retained for future reference.'),
('7. Optional Modules', '', '', '', '', 'Configure optional modules such as WordPress and PayPal for integration with Open Food Source.'),
('7. Optional Modules', 'delivery_no_paypal', 'DELIVERY_NO_PAYPAL', 'input_pattern=\r\n[0-9]+', '0', 'Use this to control whether paypal fees are passed to customers.  Please note that it is of questionable legality to pass along paypal or credit-card fees. Also note that this ability will probably be deprecated in future versions so it is strongly suggested NOT to use this setting.  If paypal charges will not be passed on to customers, then set this value to zero.  To always use paypal surcharges, set this to a very large number -- like 1000000. The intention of this setting is to quit passing surcharges on to customers. Then set the ordering cycle where paypal surcharges are no longer passed on to customers. The value should be zero (0) unless there is a good reason for it to be otherwise.'),
('7. Optional Modules', 'email_paypal', 'PAYPAL_EMAIL', 'input_pattern=\r\n[A-Za-z0-9\\._%+\\-]+@[A-Za-z0-9\\.\\-]+.[A-Za-z]{2,6}', 'paypal@openfoodsource.org', 'The PayPal e-mail address used by this organization.'),
('7. Optional Modules', 'google_analytics_tracking_id', 'GOOGLE_ANALYTICS_TRACKING_ID', 'input_pattern=\r\nUA\\-[0-9]+\\-[0-9]+', '', 'To monitor the traffic on your site with Google Analytics, enter the tracking ID here. The ID will look something like UA-000000-01'),
('7. Optional Modules', 'paypal_currency', 'PAYPAL_CURRENCY', 'select=\r\nAUD\r\nBRL\r\nCAD\r\nCHF\r\nCZK\r\nDKK\r\nEUR\r\nGBP\r\nHKD\r\nILS\r\nMXN\r\nMYR\r\nNOK\r\nNZD\r\nPHP\r\nPLN\r\nRUB\r\nSEK\r\nSGD\r\nTHB\r\nTRY\r\nTWD\r\nUSD\r\n', 'USD', 'Select the currency that should be used PayPal transactions.'),
('7. Optional Modules', 'paypal_enabled', 'PAYPAL_ENABLED', 'checkbox=\r\nfalse\r\ntrue', 'true', 'Select this option if the site is integrated with PayPal.'),
('7. Optional Modules', 'paypal_ipn_endpoint', 'PAYPAL_IPN_ENDPOINT', 'input_pattern=\r\nhttp[s]*://[a-zA-Z0-9_\\-\\./]+', 'https://www.paypal.com/cgi-bin/webscr', 'The URL with which Paypal IPN (instant payment notification) communications are made. For testing, this might include www.sandbox.paypal.com but production use will not include the "sandbox" portion.'),
('7. Optional Modules', 'paypal_ttl', 'PAYPAL_TTL', 'input_pattern=\r\n[0-9]+', '6000', 'Set the TTL (time to live) for the paypal IPN (instant payment notification) receipts. After this, we can delete records from the status table because there should be no additional attempts to post a payment. Four days is 5760 minutes, the timeout used by PayPal.'),
('7. Optional Modules', 'paypal_valid_emails', 'PAYPAL_VALID_EMAILS', 'text_area', 'paypal@openfoodsource.org\r\ngm@openfoodsource.org\r\ninfo@openfoodsource.org', 'List all e-mail addresses through which this organization can receive paypal payments, one per line.'),
('7. Optional Modules', 'wordpress2openfood_groups', 'WORDPRESS2OPENFOOD_GROUPS', 'text_area', '1=registered\r\n2=member\r\n3=producer\r\n4=institution\r\n5=route_admin\r\n6=cashier\r\n7=board\r\n8=member_admin\r\n9=producer_admin\r\n10=site_admin', 'This is a configurable list of wordpress group numbers (from the groups plugin) and their corresponding auth_type in openfood. Enter one correlation per row beginning with the group number and auth_type separated by an equal sign. Example: 1=registered 2=member 3=producer The first row should always be 1=registered.'),
('7. Optional Modules', 'wordpress_config', 'WORDPRESS_CONFIG', 'input_pattern=\r\n/[a-zA-Z0-9\\.\\/\\-_]*[a-zA-Z0-9\\.\\-_]+', '/wordpress/wp-config.php', 'Path, within document root, where the wordpress configuration file is located. This should have a leading slash. Example: /wordpress/wp-config.php'),
('7. Optional Modules', 'wordpress_enabled', 'WORDPRESS_ENABLED', 'checkbox=\r\nfalse\r\ntrue', 'false', 'Select this option if the site is integrated with WordPress.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;