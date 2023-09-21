$BASEDIR=$(pwd).Path
$WILDFLY_VERSION="26.1.3.Final"
$KEYCLOAK_VERSION="16.1.0"

$WILDFLY_DIR="$BASEDIR/wildfly-$WILDFLY_VERSION"

echo "Gerando arquivo Wildfly $WILDFLY_VERSION com Keycloak $KEYCLOAK_VERSION"

#echo "baixando o widlfy"
#$URL_WILDFLY="https://download.jboss.org/wildfly/$WILDFLY_VERSION/wildfly-$WILDFLY_VERSION.tar.gz"
#$TEST_JBOSS_SITE=$(curl.exe $URL_WILDFLY --ssl-no-revoke -s | Select-String -Pattern "404")
#
#if($TEST_JBOSS_SITE -ne ""){
#    $URL_WILDFLY="https://github.com/wildfly/wildfly/releases/download/$WILDFLY_VERSION/wildfly-$WILDFLY_VERSION.tar.gz"
#}
#echo $URL_WILDFLY
#
#curl.exe $URL_WILDFLY --ssl-no-revoke -L -o "wildfly-$WILDFLY_VERSION.tar.gz"
#tar.exe -zxf "wildfly-$WILDFLY_VERSION.tar.gz"

#echo "trocando o profile pelo standalone-full"
#Remove-Item $WILDFLY_DIR/standalone/configuration/standalone.xml
#cp $WILDFLY_DIR/standalone/configuration/standalone-full.xml $WILDFLY_DIR/standalone/configuration/standalone.xml

#echo "adicionando arquivos de database-modules"
#tar.exe -zxf files/database-modules.tar.gz -C $WILDFLY_DIR

echo "adicionando arquivos de teiid-client"
tar.exe -zxf files/teiid_client.tar.gz -C $WILDFLY_DIR/modules


echo FIM
