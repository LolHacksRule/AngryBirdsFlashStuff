package com.AngryBirds.io
{
   import com.AngryBirds.model.UserInfoModel;
   import com.adobe.images.JPGEncoder;
   import com.rovio.factory.Base64;
   import com.rovio.factory.Log;
   import com.rovio.factory.XMLFactory;
   import com.rovio.server.Server;
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
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
         Server.addCommand(ServerCommands.COMMAND_STORE_LEVEL_THUMBNAIL);
         Server.addCommand(ServerCommands.COMMAND_UPLOAD_LEVEL);
         Server.addCommand(ServerCommands.COMMAND_GET_FRIEND_SCORES_FOR_LEVEL);
         Server.addCommand(ServerCommands.COMMAND_GET_FACEBOOK_USER_IDENTIFIERS);
      }
      
      public static function getLevel(param1:String, param2:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_GET_LEVEL,{
            "levelKey":param1,
            "token":AngryBirdsSocial.USER.authenticationToken
         },param2);
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
         new AngryBirdsServer(ServerCommands.COMMAND_GET_STATISTICS,{"token":AngryBirdsSocial.USER.authenticationToken},param1);
      }
      
      public static function updateStats(param1:Object, param2:Function) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.auth = AngryBirdsSocial.USER.authenticationToken;
         new AngryBirdsServer(ServerCommands.COMMAND_UPDATE_STATISTICS,param1,param2);
      }
      
      public static function storeLevelScore(param1:String, param2:int, param3:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_STORE_SCORE_FOR_LEVEL,{
            "token":AngryBirdsSocial.USER.authenticationToken,
            "levelKey":param1,
            "score":param2
         },param3);
      }
      
      public static function sendScreenshot(param1:String, param2:BitmapData, param3:Function = null) : void
      {
         var _loc4_:JPGEncoder;
         var _loc5_:ByteArray = (_loc4_ = new JPGEncoder(90)).encode(param2);
         var _loc6_:String = Base64.encodeByteArray(_loc5_);
         new AngryBirdsServer(ServerCommands.COMMAND_STORE_LEVEL_THUMBNAIL,{
            "token":AngryBirdsSocial.USER.authenticationToken,
            "levelKey":param1,
            "screenShot":_loc6_
         },param3);
      }
      
      public static function uploadLevel(param1:String, param2:String, param3:Function) : void
      {
         Log.log("uploadLevel step 1");
         var _loc4_:String = escape(Base64.encode(param2));
         var _loc5_:XML = new XML(Base64.decode(unescape(_loc4_)));
         new AngryBirdsServer(ServerCommands.COMMAND_UPLOAD_LEVEL,{
            "token":AngryBirdsSocial.USER.authenticationToken,
            "level":param1,
            "data":_loc4_
         },param3);
         Log.log("uploadLevel step 2");
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
      
      public static function getFacebookUserIdentifiers(param1:String, param2:Function) : void
      {
         new AngryBirdsServer(ServerCommands.COMMAND_GET_FACEBOOK_USER_IDENTIFIERS,{"list":param1},param2);
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
