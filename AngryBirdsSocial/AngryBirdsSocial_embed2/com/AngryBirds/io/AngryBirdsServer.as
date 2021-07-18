package com.AngryBirds.io
{
   import com.AngryBirds.model.UserInfoModel;
   import com.rovio.adobe.serialization.json.JSON;
   import com.rovio.factory.Base64;
   import com.rovio.factory.XMLFactory;
   import com.rovio.server.Server;
   
   public class AngryBirdsServer
   {
      
      [Embed(source="../embedded_assets/xml/server_configuration.xml",mimeType="application/octet-stream")]
      private static var smServerConfiguration:Class = AngryBirdsServer_smServerConfiguration;
       
      
      private var cmd:String = "";
      
      private var data:Object = "";
      
      private var callback:Function = null;
      
      public function AngryBirdsServer(cmd:String, data:Object, callback:Function = null)
      {
         super();
         this.cmd = cmd;
         this.data = data;
         this.callback = callback;
         Server.addCommandCallback(cmd,this.onResponse);
         Server.sendRequest(cmd,data);
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
      }
      
      public static function getLevel(levelId:String, callback:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_GET_LEVEL,{
            "levelKey":levelId,
            "token":AngryBirdsSocial.USER.authenticationToken
         },callback);
      }
      
      public static function getMoreLevels(callback:Function, getImages:Boolean = false) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_GET_MORE_LEVELS,{
            "token":AngryBirdsSocial.USER.authenticationToken,
            "includeScreenShot":getImages
         },callback);
      }
      
      public static function getCurrentRateLevel(callback:Function, levelId:String) : void
      {
         if(levelId == null)
         {
            callback(null);
            return;
         }
         new AngryBirdsServer(ServerCommands.COMMAND_GET_LEVEL_RATING,{
            "token":AngryBirdsSocial.USER.authenticationToken,
            "levelKey":levelId
         },callback);
      }
      
      public static function setCurrentRateLevel(callback:Function, levelId:String, value:String) : void
      {
         if(levelId == null)
         {
            callback(null);
            return;
         }
         new AngryBirdsServer(ServerCommands.COMMAND_SET_LEVEL_RATING,{
            "token":AngryBirdsSocial.USER.authenticationToken,
            "levelKey":levelId,
            "rate":value
         },callback);
      }
      
      public static function login(email:String, password:String, callback:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_LOGIN_USER,{
            "auth":email,
            "pass":password,
            "type":"AB"
         },callback);
      }
      
      public static function getLevelScore(levelId:String, callback:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_GET_SCORE_FOR_LEVEL,{
            "levelKey":levelId,
            "token":AngryBirdsSocial.USER.authenticationToken
         },callback);
      }
      
      public static function getStats(callback:Function) : void
      {
      }
      
      public static function updateStats(data:Object, callback:Function) : void
      {
         if(data == null)
         {
            return;
         }
         if(AngryBirdsSocial.USER.loggedIn)
         {
            data.token = AngryBirdsSocial.USER.authenticationToken;
         }
         new AngryBirdsServer(ServerCommands.COMMAND_UPDATE_STATISTICS,data,callback);
      }
      
      public static function storeLevelScore(level:String, score:int, callback:Function) : void
      {
         if(level == null)
         {
            return;
         }
         new AngryBirdsServer(ServerCommands.COMMAND_STORE_SCORE_FOR_LEVEL,{
            "token":AngryBirdsSocial.USER.authenticationToken,
            "levelKey":level,
            "score":score
         },callback);
      }
      
      public static function sendScreenshot(levelKey:String, data:String, callback:Function = null) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_STORE_LEVEL_THUMBNAIL,{
            "token":AngryBirdsSocial.USER.authenticationToken,
            "levelKey":levelKey,
            "screenShot":data
         },callback);
      }
      
      public static function uploadLevel(levelName:String, xmlData:String, publish:Boolean, levelKey:String, callback:Function) : void
      {
         var levelData:String = escape(Base64.encode(xmlData));
         var myXML:XML = new XML(Base64.decode(unescape(levelData)));
         var params:Object = {
            "token":AngryBirdsSocial.USER.authenticationToken,
            "level":levelName,
            "data":levelData,
            "published":publish
         };
         if(levelKey != null)
         {
            params.levelKey = levelKey;
         }
         new AngryBirdsServer(ServerCommands.COMMAND_UPLOAD_LEVEL,params,callback);
      }
      
      public static function getFriendScoresForLevel(levelId:String, callback:Function) : void
      {
         var fdata:UserInfoModel = null;
         var friendsList:String = "";
         if(AngryBirdsSocial.FRIENDS_LIST)
         {
            for each(fdata in AngryBirdsSocial.FRIENDS_LIST)
            {
               if(fdata.userName != null)
               {
                  friendsList += fdata.userName + ",";
               }
            }
         }
         if(friendsList.length == 0)
         {
            callback(null);
            return;
         }
         new AngryBirdsServer(ServerCommands.COMMAND_GET_FRIEND_SCORES_FOR_LEVEL,{
            "token":AngryBirdsSocial.USER.authenticationToken,
            "level_id":levelId,
            "friends_list":friendsList
         },callback);
      }
      
      public static function getScoreListForLevel(levelId:String, callback:Function) : void
      {
         if(levelId == null)
         {
            callback(null);
            return;
         }
         new AngryBirdsServer(ServerCommands.COMMAND_GET_HIGH_SCORES_FOR_LEVEL,{
            "token":AngryBirdsSocial.USER.authenticationToken,
            "levelKey":levelId,
            "getImageURLs":true,
            "amount":100
         },callback);
      }
      
      public static function getFacebookUserIdentifiers(list:String, callback:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_GET_FACEBOOK_USER_IDENTIFIERS,{"list":list},callback);
      }
      
      public static function getLevelsForUser(callback:Function) : void
      {
         var obj:Object = new Object();
         obj.creator = AngryBirdsSocial.USER.name;
         var filter:String = JSON.encode(obj);
         new AngryBirdsServer(ServerCommands.COMMAND_GET_MORE_LEVELS,{
            "token":AngryBirdsSocial.USER.authenticationToken,
            "includeScreenShot":true,
            "filter":filter
         },callback);
      }
      
      public static function getSlotInfo(callback:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_GET_LEVEL_SLOT_DATA,{"token":AngryBirdsSocial.USER.authenticationToken},callback);
      }
      
      public static function unlockLevelSlot(callback:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_UNLOCK_LEVEL_SLOT,{"token":AngryBirdsSocial.USER.authenticationToken},callback);
      }
      
      public static function deleteLevel(key:String, callback:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_DELETE_LEVEL,{
            "token":AngryBirdsSocial.USER.authenticationToken,
            "levelKey":key
         },callback);
      }
      
      public static function getLevelOfTheDay(callback:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_GET_LEVEL_OF_DAY,{"token":AngryBirdsSocial.USER.authenticationToken},callback);
      }
      
      public static function getLevelOfDayInfo(key:String, callback:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_GET_LEVEL_OF_THE_DAY_INFO,{"token":AngryBirdsSocial.USER.authenticationToken},callback);
      }
      
      public static function submitLevelOfDayScore(key:String, score:int, callback:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_SUBMIT_LEVEL_OF_DAY_SCORE,{
            "token":AngryBirdsSocial.USER.authenticationToken,
            "levelKey":key,
            "score":score
         },callback);
      }
      
      public static function getLevelStats(levelKey:String, callback:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_GET_LEVEL_STATS,{
            "token":AngryBirdsSocial.USER.authenticationToken,
            "levelKey":levelKey
         },callback);
      }
      
      public static function getDailySprintData(callback:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_GET_DAILY_SPRINT_DATA,{"token":AngryBirdsSocial.USER.authenticationToken},callback);
      }
      
      public static function getWeeklyRaceData(callback:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_GET_WEEKLY_RACE_DATA,{"token":AngryBirdsSocial.USER.authenticationToken},callback);
      }
      
      public static function getMetaGameData(callback:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_GET_META_GAME_DATA,{"token":AngryBirdsSocial.USER.authenticationToken},callback);
      }
      
      private function onResponse(response:Object) : void
      {
         Server.removeCommandCallback(this.cmd,this.onResponse);
         if(response.E)
         {
         }
         if(this.callback != null)
         {
            this.callback(response);
         }
      }
   }
}
