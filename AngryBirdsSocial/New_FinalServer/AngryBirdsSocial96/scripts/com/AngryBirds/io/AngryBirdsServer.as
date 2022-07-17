package com.AngryBirds.io
{
   import com.AngryBirds.model.UserInfoModel;
   import com.rovio.adobe.serialization.json.JSON;
   import com.rovio.factory.Base64;
   import com.rovio.factory.XMLFactory;
   import com.rovio.server.Server;
   
   public class AngryBirdsServer
   {
      
      private static var smServerConfiguration:Class = AngryBirdsServer_smServerConfiguration;
       
      
      private var cmd:String = "";
      
      private var data:Object = "";
      
      private var callback:Function = null;
      
      public function AngryBirdsServer(param1:String, param2:Object, param3:Function = null)
      {
         super();
         this.cmd = param1;
         this.data = param2;
         this.callback = param3;
         Server.addCommandCallback(param1,this.onResponse);
         Server.sendRequest(param1,param2);
      }
      
      public static function initServerConfiguration() : void
      {
         Server.smServerConfigurationData = XMLFactory.fromOctetStreamClass(smServerConfiguration);
      }
      
      public static function initCommands() : void
      {
         Server.addCommand(ServerCommands.COMMAND_LOGIN_USER);
         Server.addCommand(ServerCommands.COMMAND_GET_STATISTICS);
         Server.addCommand(ServerCommands.COMMAND_UPDATE_STATISTICS);
         Server.addCommand(ServerCommands.COMMAND_GET_SCORE_FOR_LEVEL);
         Server.addCommand(ServerCommands.COMMAND_STORE_SCORE_FOR_LEVEL);
         Server.addCommand(ServerCommands.COMMAND_GET_LEVEL);
         Server.addCommand(ServerCommands.COMMAND_GET_MORE_LEVELS);
         Server.addCommand(ServerCommands.COMMAND_SET_LEVEL_RATING);
         Server.addCommand(ServerCommands.COMMAND_GET_LEVEL_RATING);
         Server.addCommand(ServerCommands.COMMAND_GET_HIGH_SCORES_FOR_LEVEL);
         Server.addCommand(ServerCommands.COMMAND_STORE_LEVEL_THUMBNAIL);
         Server.addCommand(ServerCommands.COMMAND_UPLOAD_LEVEL);
         Server.addCommand(ServerCommands.COMMAND_DELETE_LEVEL);
         Server.addCommand(ServerCommands.COMMAND_GET_LEVEL_SLOT_DATA);
         Server.addCommand(ServerCommands.COMMAND_UNLOCK_LEVEL_SLOT);
         Server.addCommand(ServerCommands.COMMAND_GET_FRIEND_SCORES_FOR_LEVEL);
         Server.addCommand(ServerCommands.COMMAND_GET_FACEBOOK_USER_IDENTIFIERS);
         Server.addCommand(ServerCommands.COMMAND_GET_LEVEL_OF_DAY);
         Server.addCommand(ServerCommands.COMMAND_SUBMIT_LEVEL_OF_DAY_SCORE);
         Server.addCommand(ServerCommands.COMMAND_GET_LEVEL_STATS);
         Server.addCommand(ServerCommands.COMMAND_GET_DAILY_SPRINT_DATA);
         Server.addCommand(ServerCommands.COMMAND_GET_WEEKLY_RACE_DATA);
         Server.addCommand(ServerCommands.COMMAND_GET_META_GAME_DATA);
         Server.addCommand(ServerCommands.COMMAND_GET_LEVEL_OF_THE_DAY_INFO);
         Server.addCommand(ServerCommands.COMMAND_SET_USER_SETTING);
         Server.addCommand(ServerCommands.COMMAND_GET_USER_SETTINGS);
      }
      
      public static function getLevel(param1:String, param2:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_GET_LEVEL,{
            "levelKey":param1,
            "token":AngryBirdsSocial.USER.authenticationToken
         },param2);
      }
      
      public static function getMoreLevels(param1:Function, param2:Boolean = false) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_GET_MORE_LEVELS,{
            "token":AngryBirdsSocial.USER.authenticationToken,
            "includeScreenShot":param2
         },param1);
      }
      
      public static function getCurrentRateLevel(param1:Function, param2:String) : void
      {
         if(param2 == null)
         {
            param1(null);
            return;
         }
         new AngryBirdsServer(ServerCommands.COMMAND_GET_LEVEL_RATING,{
            "token":AngryBirdsSocial.USER.authenticationToken,
            "levelKey":param2
         },param1);
      }
      
      public static function setCurrentRateLevel(param1:Function, param2:String, param3:String) : void
      {
         if(param2 == null)
         {
            param1(null);
            return;
         }
         new AngryBirdsServer(ServerCommands.COMMAND_SET_LEVEL_RATING,{
            "token":AngryBirdsSocial.USER.authenticationToken,
            "levelKey":param2,
            "rate":param3
         },param1);
      }
      
      public static function login(param1:String, param2:String, param3:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_LOGIN_USER,{
            "auth":param1,
            "pass":param2,
            "type":"AB"
         },param3);
      }
      
      public static function getLevelScore(param1:String, param2:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_GET_SCORE_FOR_LEVEL,{
            "levelKey":param1,
            "token":AngryBirdsSocial.USER.authenticationToken
         },param2);
      }
      
      public static function getStats(param1:Function) : void
      {
      }
      
      public static function updateStats(param1:Object, param2:Function) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(AngryBirdsSocial.USER.loggedIn)
         {
            param1.token = AngryBirdsSocial.USER.authenticationToken;
         }
         new AngryBirdsServer(ServerCommands.COMMAND_UPDATE_STATISTICS,param1,param2);
      }
      
      public static function storeLevelScore(param1:String, param2:int, param3:Function) : void
      {
         if(param1 == null)
         {
            return;
         }
         new AngryBirdsServer(ServerCommands.COMMAND_STORE_SCORE_FOR_LEVEL,{
            "token":AngryBirdsSocial.USER.authenticationToken,
            "levelKey":param1,
            "score":param2
         },param3);
      }
      
      public static function sendScreenshot(param1:String, param2:String, param3:Function = null) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_STORE_LEVEL_THUMBNAIL,{
            "token":AngryBirdsSocial.USER.authenticationToken,
            "levelKey":param1,
            "screenShot":param2
         },param3);
      }
      
      public static function uploadLevel(param1:String, param2:String, param3:Boolean, param4:String, param5:Function) : void
      {
         var _loc6_:String = escape(Base64.encode(param2));
         var _loc7_:XML = new XML(Base64.decode(unescape(_loc6_)));
         var _loc8_:Object = {
            "token":AngryBirdsSocial.USER.authenticationToken,
            "level":param1,
            "data":_loc6_,
            "published":param3
         };
         if(param4 != null)
         {
            _loc8_.levelKey = param4;
         }
         new AngryBirdsServer(ServerCommands.COMMAND_UPLOAD_LEVEL,_loc8_,param5);
      }
      
      public static function getFriendScoresForLevel(param1:String, param2:Function) : void
      {
         var _loc4_:UserInfoModel = null;
         var _loc3_:String = "";
         if(AngryBirdsSocial.FRIENDS_LIST)
         {
            for each(_loc4_ in AngryBirdsSocial.FRIENDS_LIST)
            {
               if(_loc4_.userName != null)
               {
                  _loc3_ += _loc4_.userName + ",";
               }
            }
         }
         if(_loc3_.length == 0)
         {
            param2(null);
            return;
         }
         new AngryBirdsServer(ServerCommands.COMMAND_GET_FRIEND_SCORES_FOR_LEVEL,{
            "token":AngryBirdsSocial.USER.authenticationToken,
            "level_id":param1,
            "friends_list":_loc3_
         },param2);
      }
      
      public static function getScoreListForLevel(param1:String, param2:Function) : void
      {
         if(param1 == null)
         {
            param2(null);
            return;
         }
         new AngryBirdsServer(ServerCommands.COMMAND_GET_HIGH_SCORES_FOR_LEVEL,{
            "token":AngryBirdsSocial.USER.authenticationToken,
            "levelKey":param1,
            "getImageURLs":true,
            "amount":100
         },param2);
      }
      
      public static function getFacebookUserIdentifiers(param1:String, param2:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_GET_FACEBOOK_USER_IDENTIFIERS,{"list":param1},param2);
      }
      
      public static function getLevelsForUser(param1:Function) : void
      {
         var _loc2_:Object = new Object();
         _loc2_.creator = AngryBirdsSocial.USER.name;
         var _loc3_:String = com.rovio.adobe.serialization.json.JSON.encode(_loc2_);
         new AngryBirdsServer(ServerCommands.COMMAND_GET_MORE_LEVELS,{
            "token":AngryBirdsSocial.USER.authenticationToken,
            "includeScreenShot":true,
            "filter":_loc3_
         },param1);
      }
      
      public static function getSlotInfo(param1:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_GET_LEVEL_SLOT_DATA,{"token":AngryBirdsSocial.USER.authenticationToken},param1);
      }
      
      public static function unlockLevelSlot(param1:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_UNLOCK_LEVEL_SLOT,{"token":AngryBirdsSocial.USER.authenticationToken},param1);
      }
      
      public static function deleteLevel(param1:String, param2:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_DELETE_LEVEL,{
            "token":AngryBirdsSocial.USER.authenticationToken,
            "levelKey":param1
         },param2);
      }
      
      public static function getLevelOfTheDay(param1:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_GET_LEVEL_OF_DAY,{"token":AngryBirdsSocial.USER.authenticationToken},param1);
      }
      
      public static function getLevelOfDayInfo(param1:String, param2:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_GET_LEVEL_OF_THE_DAY_INFO,{"token":AngryBirdsSocial.USER.authenticationToken},param2);
      }
      
      public static function submitLevelOfDayScore(param1:String, param2:int, param3:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_SUBMIT_LEVEL_OF_DAY_SCORE,{
            "token":AngryBirdsSocial.USER.authenticationToken,
            "levelKey":param1,
            "score":param2
         },param3);
      }
      
      public static function getLevelStats(param1:String, param2:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_GET_LEVEL_STATS,{
            "token":AngryBirdsSocial.USER.authenticationToken,
            "levelKey":param1
         },param2);
      }
      
      public static function getDailySprintData(param1:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_GET_DAILY_SPRINT_DATA,{"token":AngryBirdsSocial.USER.authenticationToken},param1);
      }
      
      public static function getWeeklyRaceData(param1:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_GET_WEEKLY_RACE_DATA,{"token":AngryBirdsSocial.USER.authenticationToken},param1);
      }
      
      public static function getMetaGameData(param1:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_GET_META_GAME_DATA,{"token":AngryBirdsSocial.USER.authenticationToken},param1);
      }
      
      public static function setUserSetting(param1:String, param2:String) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_SET_USER_SETTING,{
            "token":AngryBirdsSocial.USER.authenticationToken,
            "key":param1,
            "value":param2
         });
      }
      
      public static function getUserSettings(param1:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_GET_USER_SETTINGS,{"token":AngryBirdsSocial.USER.authenticationToken},param1);
      }
      
      private function onResponse(param1:Object) : void
      {
         Server.removeCommandCallback(this.cmd,this.onResponse);
         if(!param1.E)
         {
         }
         if(this.callback != null)
         {
            this.callback(param1);
         }
      }
   }
}
