
xcopy D:\Xampp\htdocs\magento_1_9_3\media pub\media /E /C /I /Q /G /H /R /K /Y /Z /J

php bin/magento migrate:settings --reset vendor/magento/data-migration-tool/etc/opensource-to-opensource/1.9.3.2/config.xml

php bin/magento migrate:data --reset vendor/magento/data-migration-tool/etc/opensource-to-opensource/1.9.3.2/config.xml

xcopy D:\Xampp\htdocs\magento_1_9_3\skin\frontend\rwd\default\css app\design\frontend\Hexaware\Magento\web\css /E /C /I /Q /G /H /R /K /Y /Z /J

xcopy D:\Xampp\htdocs\magento_1_9_3\skin\frontend\rwd\default\js app\design\frontend\Hexaware\Magento\web\js /E /C /I /Q /G /H /R /K /Y /Z /J

xcopy D:\Xampp\htdocs\magento_1_9_3\skin\frontend\rwd\default\images app\design\frontend\Hexaware\Magento\web\images /E /C /I /Q /G /H /R /K /Y /Z /J

php bin/magento setup:static-content:deploy -f
 
php bin/magento indexer:reindex

php bin/magento cache:flush