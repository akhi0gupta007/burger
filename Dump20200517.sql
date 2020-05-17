-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: authdb
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `oauth_access_token`
--

DROP TABLE IF EXISTS `oauth_access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` mediumblob,
  `authentication_id` varchar(256) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  `authentication` mediumblob,
  `refresh_token` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_token`
--

LOCK TABLES `oauth_access_token` WRITE;
/*!40000 ALTER TABLE `oauth_access_token` DISABLE KEYS */;
INSERT INTO `oauth_access_token` VALUES ('7268fc55287f341dc036497cf3d45997',_binary '¨\Ì\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken≤û6$˙\Œ\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6ÖZ\‹\Á\–\0\0xpsr\0java.util.DatehjÅKYt\0\0xpw\0\0r#¶,∂xsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ﬂGcù\–…∑\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\·\ncT\‘^\0L\0valueq\0~\0xpt\0$922bb141-dee7-423a-a5e3-a176dc53bde0sq\0~\0	w\0\0r$‘´xsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0READt\0WRITExt\0bearert\0$f01a3069-6dda-4d02-a63f-0490eb98b1cc','60b9b91cb9659a3c58652830cd69cc74','suranga','mobile',_binary '¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0rolet\0Ljava/lang/String;xpt\0\rROLE_operatorsq\0~\0\rt\0read_profilesq\0~\0\rt\0update_profilexq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0mobilesr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0usernamet\0surangaxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0READt\0WRITExsq\0~\0\'w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0\'w\0\0\0?@\0\0\0\0\0t\0paymentt\0	inventoryxsq\0~\0\'w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0q\0~\0xq\0~\04sr\0java.util.LinkedHashMap4¿N\\l¿˚\0Z\0accessOrderxq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0 q\0~\0!q\0~\0\"q\0~\0#x\0psr\0&com.akhi.app.auth.model.AuthUserDetail~˘ıÃçnB\0\0xr\0com.akhi.app.auth.model.User§\ËÄb\Ï1E\0	Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0emailq\0~\0L\0idt\0Ljava/lang/Integer;L\0passwordq\0~\0L\0rolesq\0~\0L\0usernameq\0~\0xpt\0k@krishantha.compt\0<$2a$10$QJiHxtKaLMMp1tEArYxSFO3GMmRY4ImXgItRIDbKOcQeDGVOlo4Resr\0/org.hibernate.collection.internal.PersistentBag˛W≈Ø\⁄O¶D\0L\0bagq\0~\0L\0providedCollectionq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollectionW∑]ä∫sT\0Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0elementRemovedZ\0initializedZ\0\risTempSessionL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0?xp\0ˇˇˇˇ\0\0\0sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0sq\0~\08q\0~\0;q\0~\0Cq\0~\0<q\0~\0@t\0surangat\0\"com.akhi.app.auth.model.User.rolespsq\0~\0\0\0\0w\0\0\0sr\0com.akhi.app.auth.model.Roles±≠B8\÷\0L\0idq\0~\09L\0nameq\0~\0L\0permissionsq\0~\0xpq\0~\0Cq\0~\0sq\0~\0=\0ˇˇˇˇ\0\0\0q\0~\0Cq\0~\0It\0(com.akhi.app.auth.model.Role.permissionspsq\0~\0\0\0\0w\0\0\0sr\0\"com.akhi.app.auth.model.Permission\Î\À\·ˇ∏ÿ¨ø\0L\0idq\0~\09L\0nameq\0~\0xpq\0~\0Cq\0~\0sq\0~\0Msq\0~\0A\0\0\0q\0~\0xsq\0~\0\0\0\0w\0\0\0q\0~\0Nq\0~\0Oxpxsq\0~\0\0\0\0w\0\0\0q\0~\0Ixpq\0~\0E','3db3886098b62efe5b221493a6777a66'),('4cc70903a9574c683998bade4bd6588d',_binary '¨\Ì\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken≤û6$˙\Œ\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6ÖZ\‹\Á\–\0\0xpsr\0java.util.DatehjÅKYt\0\0xpw\0\0r#°\Àmxsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ﬂGcù\–…∑\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\·\ncT\‘^\0L\0valueq\0~\0xpt\0$2089f8fe-5fe3-4082-87c1-c506d980daacsq\0~\0	w\0\0r$s_xsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0READt\0WRITExt\0bearert\0$e84de31a-994f-4740-94f5-9f95ccf72b8a','9d88608078600a2914f16a10df0e66db','krish','mobile',_binary '¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0rolet\0Ljava/lang/String;xpt\0\nROLE_adminsq\0~\0\rt\0create_profilesq\0~\0\rt\0read_profilesq\0~\0\rt\0update_profilesq\0~\0\rt\0delete_profilexq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0\ZL\0scopeq\0~\0xpt\0mobilesr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0\Zxpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0usernamet\0krishxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0READt\0WRITExsq\0~\0+w\0\0\0?@\0\0\0\0\0\0xsq\0~\0\"?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0+w\0\0\0?@\0\0\0\0\0t\0paymentt\0	inventoryxsq\0~\0+w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0xq\0~\08sr\0java.util.LinkedHashMap4¿N\\l¿˚\0Z\0accessOrderxq\0~\0\"?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0$q\0~\0%q\0~\0&q\0~\0\'x\0psr\0&com.akhi.app.auth.model.AuthUserDetail~˘ıÃçnB\0\0xr\0com.akhi.app.auth.model.User§\ËÄb\Ï1E\0	Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0emailq\0~\0L\0idt\0Ljava/lang/Integer;L\0passwordq\0~\0L\0rolesq\0~\0L\0usernameq\0~\0xpt\0k@krishantha.compt\0<$2a$10$55X.f7AviFtqScttN79Ak.C0mXnL40He2COn9Tz/07gBsgKc9pCzCsr\0/org.hibernate.collection.internal.PersistentBag˛W≈Ø\⁄O¶D\0L\0bagq\0~\0L\0providedCollectionq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollectionW∑]ä∫sT\0Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0elementRemovedZ\0initializedZ\0\risTempSessionL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Cxp\0ˇˇˇˇ\0\0\0sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0sq\0~\0<q\0~\0?q\0~\0Gq\0~\0@q\0~\0Dt\0krisht\0\"com.akhi.app.auth.model.User.rolespsq\0~\0\0\0\0w\0\0\0sr\0com.akhi.app.auth.model.Roles±≠B8\÷\0L\0idq\0~\0=L\0nameq\0~\0L\0permissionsq\0~\0xpq\0~\0Gq\0~\0sq\0~\0A\0ˇˇˇˇ\0\0\0q\0~\0Gq\0~\0Mt\0(com.akhi.app.auth.model.Role.permissionspsq\0~\0\0\0\0w\0\0\0sr\0\"com.akhi.app.auth.model.Permission\Î\À\·ˇ∏ÿ¨ø\0L\0idq\0~\0=L\0nameq\0~\0xpq\0~\0Gq\0~\0sq\0~\0Qsq\0~\0E\0\0\0q\0~\0sq\0~\0Qsq\0~\0E\0\0\0q\0~\0sq\0~\0Qsq\0~\0E\0\0\0q\0~\0xsq\0~\0\0\0\0w\0\0\0q\0~\0Rq\0~\0Sq\0~\0Uq\0~\0Wxpxsq\0~\0\0\0\0w\0\0\0q\0~\0Mxpq\0~\0I','0ce08b6b563c7884bc9f39e2a7014ba6'),('c7eb2273895730004748c93aaad076c4',_binary '¨\Ì\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken≤û6$˙\Œ\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6ÖZ\‹\Á\–\0\0xpsr\0java.util.DatehjÅKYt\0\0xpw\0\0r#¢1™xsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ﬂGcù\–…∑\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\·\ncT\‘^\0L\0valueq\0~\0xpt\0$a5c90771-40cd-4024-aeba-171f43b72555sq\0~\0	w\0\0r$Ÿ•xsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0READt\0WRITExt\0bearert\0$a42da505-5b6e-4b19-8a02-d38e1d23d4de','ae79732879c495f28894d5f1409e0573','nuwan','mobile',_binary '¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0rolet\0Ljava/lang/String;xpt\0ROLE_editorsq\0~\0\rt\0read_profilesq\0~\0\rt\0update_profilesq\0~\0\rt\0delete_profilexq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0\Zxr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0\Zxpt\0mobilesr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0usernamet\0nuwanxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0READt\0WRITExsq\0~\0)w\0\0\0?@\0\0\0\0\0\0xsq\0~\0 ?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0)w\0\0\0?@\0\0\0\0\0t\0paymentt\0	inventoryxsq\0~\0)w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0xq\0~\06sr\0java.util.LinkedHashMap4¿N\\l¿˚\0Z\0accessOrderxq\0~\0 ?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0\"q\0~\0#q\0~\0$q\0~\0%x\0psr\0&com.akhi.app.auth.model.AuthUserDetail~˘ıÃçnB\0\0xr\0com.akhi.app.auth.model.User§\ËÄb\Ï1E\0	Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0emailq\0~\0L\0idt\0Ljava/lang/Integer;L\0passwordq\0~\0L\0rolesq\0~\0L\0usernameq\0~\0xpt\0n@krishantha.compt\0<$2a$10$55X.f7AviFtqScttN79Ak.C0mXnL40He2COn9Tz/07gBsgKc9pCzCsr\0/org.hibernate.collection.internal.PersistentBag˛W≈Ø\⁄O¶D\0L\0bagq\0~\0L\0providedCollectionq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollectionW∑]ä∫sT\0Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0elementRemovedZ\0initializedZ\0\risTempSessionL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Axp\0ˇˇˇˇ\0\0\0sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0sq\0~\0:q\0~\0=q\0~\0Eq\0~\0>q\0~\0Bt\0nuwant\0\"com.akhi.app.auth.model.User.rolespsq\0~\0\0\0\0w\0\0\0sr\0com.akhi.app.auth.model.Roles±≠B8\÷\0L\0idq\0~\0;L\0nameq\0~\0L\0permissionsq\0~\0xpq\0~\0Eq\0~\0sq\0~\0?\0ˇˇˇˇ\0\0\0q\0~\0Eq\0~\0Kt\0(com.akhi.app.auth.model.Role.permissionspsq\0~\0\0\0\0w\0\0\0sr\0\"com.akhi.app.auth.model.Permission\Î\À\·ˇ∏ÿ¨ø\0L\0idq\0~\0;L\0nameq\0~\0xpsq\0~\0C\0\0\0q\0~\0sq\0~\0Oq\0~\0Eq\0~\0sq\0~\0Osq\0~\0C\0\0\0q\0~\0xsq\0~\0\0\0\0w\0\0\0q\0~\0Pq\0~\0Rq\0~\0Sxpxsq\0~\0\0\0\0w\0\0\0q\0~\0Kxpq\0~\0G','2d8f8b2d3b8351affd8791b50ec0f53c');
/*!40000 ALTER TABLE `oauth_access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_approvals`
--

DROP TABLE IF EXISTS `oauth_approvals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_approvals` (
  `userId` varchar(256) DEFAULT NULL,
  `clientId` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `expiresAt` timestamp NULL DEFAULT NULL,
  `lastModifiedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_approvals`
--

LOCK TABLES `oauth_approvals` WRITE;
/*!40000 ALTER TABLE `oauth_approvals` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_approvals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_details`
--

DROP TABLE IF EXISTS `oauth_client_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(255) NOT NULL,
  `client_secret` varchar(255) NOT NULL,
  `web_server_redirect_uri` varchar(2048) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `access_token_validity` int DEFAULT NULL,
  `refresh_token_validity` int DEFAULT NULL,
  `resource_ids` varchar(1024) DEFAULT NULL,
  `authorized_grant_types` varchar(1024) DEFAULT NULL,
  `authorities` varchar(1024) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_details`
--

LOCK TABLES `oauth_client_details` WRITE;
/*!40000 ALTER TABLE `oauth_client_details` DISABLE KEYS */;
INSERT INTO `oauth_client_details` VALUES ('mobile','$2a$10$4vCbrt3t47HgFrSSac/KRePQDP3.aPyxIpBEF69S74ByDT/RZBwvq','http://localhost:8080/code','READ,WRITE',3600,10000,'inventory,payment','authorization_code,password,refresh_token,implicit',NULL,'{}',NULL);
/*!40000 ALTER TABLE `oauth_client_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_token`
--

DROP TABLE IF EXISTS `oauth_client_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_client_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` mediumblob,
  `authentication_id` varchar(256) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_token`
--

LOCK TABLES `oauth_client_token` WRITE;
/*!40000 ALTER TABLE `oauth_client_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_client_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_code`
--

DROP TABLE IF EXISTS `oauth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_code` (
  `code` varchar(256) DEFAULT NULL,
  `authentication` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_code`
--

LOCK TABLES `oauth_code` WRITE;
/*!40000 ALTER TABLE `oauth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_token`
--

DROP TABLE IF EXISTS `oauth_refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` mediumblob,
  `authentication` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_token`
--

LOCK TABLES `oauth_refresh_token` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_token` DISABLE KEYS */;
INSERT INTO `oauth_refresh_token` VALUES ('0ce08b6b563c7884bc9f39e2a7014ba6',_binary '¨\Ì\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ﬂGcù\–…∑\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\·\ncT\‘^\0L\0valuet\0Ljava/lang/String;xpt\0$2089f8fe-5fe3-4082-87c1-c506d980daacsr\0java.util.DatehjÅKYt\0\0xpw\0\0r$s_x',_binary '¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0rolet\0Ljava/lang/String;xpt\0\nROLE_adminsq\0~\0\rt\0create_profilesq\0~\0\rt\0read_profilesq\0~\0\rt\0update_profilesq\0~\0\rt\0delete_profilexq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0\ZL\0scopeq\0~\0xpt\0mobilesr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0\Zxpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0usernamet\0krishxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0READt\0WRITExsq\0~\0+w\0\0\0?@\0\0\0\0\0\0xsq\0~\0\"?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0+w\0\0\0?@\0\0\0\0\0t\0paymentt\0	inventoryxsq\0~\0+w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0xq\0~\08sr\0java.util.LinkedHashMap4¿N\\l¿˚\0Z\0accessOrderxq\0~\0\"?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0$q\0~\0%q\0~\0&q\0~\0\'x\0psr\0&com.akhi.app.auth.model.AuthUserDetail~˘ıÃçnB\0\0xr\0com.akhi.app.auth.model.User§\ËÄb\Ï1E\0	Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0emailq\0~\0L\0idt\0Ljava/lang/Integer;L\0passwordq\0~\0L\0rolesq\0~\0L\0usernameq\0~\0xpt\0k@krishantha.compt\0<$2a$10$55X.f7AviFtqScttN79Ak.C0mXnL40He2COn9Tz/07gBsgKc9pCzCsr\0/org.hibernate.collection.internal.PersistentBag˛W≈Ø\⁄O¶D\0L\0bagq\0~\0L\0providedCollectionq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollectionW∑]ä∫sT\0Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0elementRemovedZ\0initializedZ\0\risTempSessionL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Cxp\0ˇˇˇˇ\0\0\0sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0sq\0~\0<q\0~\0?q\0~\0Gq\0~\0@q\0~\0Dt\0krisht\0\"com.akhi.app.auth.model.User.rolespsq\0~\0\0\0\0w\0\0\0sr\0com.akhi.app.auth.model.Roles±≠B8\÷\0L\0idq\0~\0=L\0nameq\0~\0L\0permissionsq\0~\0xpq\0~\0Gq\0~\0sq\0~\0A\0ˇˇˇˇ\0\0\0q\0~\0Gq\0~\0Mt\0(com.akhi.app.auth.model.Role.permissionspsq\0~\0\0\0\0w\0\0\0sr\0\"com.akhi.app.auth.model.Permission\Î\À\·ˇ∏ÿ¨ø\0L\0idq\0~\0=L\0nameq\0~\0xpq\0~\0Gq\0~\0sq\0~\0Qsq\0~\0E\0\0\0q\0~\0sq\0~\0Qsq\0~\0E\0\0\0q\0~\0sq\0~\0Qsq\0~\0E\0\0\0q\0~\0xsq\0~\0\0\0\0w\0\0\0q\0~\0Rq\0~\0Sq\0~\0Uq\0~\0Wxpxsq\0~\0\0\0\0w\0\0\0q\0~\0Mxpq\0~\0I'),('2d8f8b2d3b8351affd8791b50ec0f53c',_binary '¨\Ì\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ﬂGcù\–…∑\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\·\ncT\‘^\0L\0valuet\0Ljava/lang/String;xpt\0$a5c90771-40cd-4024-aeba-171f43b72555sr\0java.util.DatehjÅKYt\0\0xpw\0\0r$Ÿ•x',_binary '¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0xq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUrit\0Ljava/lang/String;L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0mobilesr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0usernamet\0nuwanxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0READt\0WRITExsq\0~\0 w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0 w\0\0\0?@\0\0\0\0\0t\0paymentt\0	inventoryxsq\0~\0 w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0\0w\0\0\0\0xq\0~\0-sr\0java.util.LinkedHashMap4¿N\\l¿˚\0Z\0accessOrderxq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0q\0~\0\Zq\0~\0q\0~\0x\0psr\0&com.akhi.app.auth.model.AuthUserDetail~˘ıÃçnB\0\0xr\0com.akhi.app.auth.model.User§\ËÄb\Ï1E\0	Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0emailq\0~\0L\0idt\0Ljava/lang/Integer;L\0passwordq\0~\0L\0rolesq\0~\0L\0usernameq\0~\0xpt\0n@krishantha.compt\0<$2a$10$55X.f7AviFtqScttN79Ak.C0mXnL40He2COn9Tz/07gBsgKc9pCzCsr\0/org.hibernate.collection.internal.PersistentBag˛W≈Ø\⁄O¶D\0L\0bagq\0~\0L\0providedCollectionq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollectionW∑]ä∫sT\0Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0elementRemovedZ\0initializedZ\0\risTempSessionL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\08xp\0ˇˇˇˇ\0\0\0sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0sq\0~\01q\0~\04q\0~\0<q\0~\05q\0~\09t\0nuwant\0\"com.akhi.app.auth.model.User.rolespsq\0~\0\0\0\0\0w\0\0\0\0xsq\0~\0\0\0\0\0w\0\0\0\0xpq\0~\0>'),('3db3886098b62efe5b221493a6777a66',_binary '¨\Ì\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ﬂGcù\–…∑\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\·\ncT\‘^\0L\0valuet\0Ljava/lang/String;xpt\0$922bb141-dee7-423a-a5e3-a176dc53bde0sr\0java.util.DatehjÅKYt\0\0xpw\0\0r$‘´x',_binary '¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0rolet\0Ljava/lang/String;xpt\0\rROLE_operatorsq\0~\0\rt\0read_profilesq\0~\0\rt\0update_profilexq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0mobilesr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0usernamet\0surangaxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0READt\0WRITExsq\0~\0\'w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0\'w\0\0\0?@\0\0\0\0\0t\0paymentt\0	inventoryxsq\0~\0\'w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0q\0~\0xq\0~\04sr\0java.util.LinkedHashMap4¿N\\l¿˚\0Z\0accessOrderxq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0 q\0~\0!q\0~\0\"q\0~\0#x\0psr\0&com.akhi.app.auth.model.AuthUserDetail~˘ıÃçnB\0\0xr\0com.akhi.app.auth.model.User§\ËÄb\Ï1E\0	Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0emailq\0~\0L\0idt\0Ljava/lang/Integer;L\0passwordq\0~\0L\0rolesq\0~\0L\0usernameq\0~\0xpt\0k@krishantha.compt\0<$2a$10$QJiHxtKaLMMp1tEArYxSFO3GMmRY4ImXgItRIDbKOcQeDGVOlo4Resr\0/org.hibernate.collection.internal.PersistentBag˛W≈Ø\⁄O¶D\0L\0bagq\0~\0L\0providedCollectionq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollectionW∑]ä∫sT\0Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0elementRemovedZ\0initializedZ\0\risTempSessionL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0?xp\0ˇˇˇˇ\0\0\0sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0sq\0~\08q\0~\0;q\0~\0Cq\0~\0<q\0~\0@t\0surangat\0\"com.akhi.app.auth.model.User.rolespsq\0~\0\0\0\0w\0\0\0sr\0com.akhi.app.auth.model.Roles±≠B8\÷\0L\0idq\0~\09L\0nameq\0~\0L\0permissionsq\0~\0xpq\0~\0Cq\0~\0sq\0~\0=\0ˇˇˇˇ\0\0\0q\0~\0Cq\0~\0It\0(com.akhi.app.auth.model.Role.permissionspsq\0~\0\0\0\0w\0\0\0sr\0\"com.akhi.app.auth.model.Permission\Î\À\·ˇ∏ÿ¨ø\0L\0idq\0~\09L\0nameq\0~\0xpq\0~\0Cq\0~\0sq\0~\0Msq\0~\0A\0\0\0q\0~\0xsq\0~\0\0\0\0w\0\0\0q\0~\0Nq\0~\0Oxpxsq\0~\0\0\0\0w\0\0\0q\0~\0Ixpq\0~\0E');
/*!40000 ALTER TABLE `oauth_refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,'create_profile'),(4,'delete_profile'),(2,'read_profile'),(3,'update_profile');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_role` (
  `permission_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  KEY `permission_id` (`permission_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `permission_role_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`),
  CONSTRAINT `permission_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(2,2),(3,2),(2,3),(3,3),(4,3);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_admin'),(3,'ROLE_editor'),(2,'ROLE_operator');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_user` (
  `role_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  KEY `role_id` (`role_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `role_user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `role_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,1),(2,2),(3,3);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(1024) NOT NULL,
  `email` varchar(1024) NOT NULL,
  `enabled` tinyint NOT NULL,
  `accountNonExpired` tinyint NOT NULL,
  `credentialsNonExpired` tinyint NOT NULL,
  `accountNonLocked` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'krish','$2a$10$55X.f7AviFtqScttN79Ak.C0mXnL40He2COn9Tz/07gBsgKc9pCzC','k@krishantha.com',1,1,1,1),(2,'suranga','$2a$10$QJiHxtKaLMMp1tEArYxSFO3GMmRY4ImXgItRIDbKOcQeDGVOlo4Re','k@krishantha.com',1,1,1,1),(3,'nuwan','$2a$10$55X.f7AviFtqScttN79Ak.C0mXnL40He2COn9Tz/07gBsgKc9pCzC','n@krishantha.com',1,1,1,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-17 22:03:22
