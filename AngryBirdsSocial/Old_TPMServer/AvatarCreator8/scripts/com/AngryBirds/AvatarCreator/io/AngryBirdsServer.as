package com.AngryBirds.AvatarCreator.io
{
   import com.adobe.images.JPGEncoder;
   import com.adobe.images.PNGEncoder;
   import com.rovio.factory.Base64;
   import com.rovio.factory.Log;
   import com.rovio.factory.XMLFactory;
   import com.rovio.server.Server;
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class AngryBirdsServer
   {
      
      private static var smServerConfiguration:Class = AngryBirdsServer_smServerConfiguration;
      
      public static const COMMAND_SUBMIT_ITEM_LIST:String = "submitItemList";
      
      public static const COMMAND_GET_ITEM_LIST:String = "getItemList";
      
      public static const COMMAND_UPLOAD_PROFILE_IMAGE:String = "uploadProfileImage";
       
      
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
         Server.addCommand(COMMAND_SUBMIT_ITEM_LIST);
         Server.addCommand(COMMAND_GET_ITEM_LIST);
         Server.addCommand(COMMAND_UPLOAD_PROFILE_IMAGE);
      }
      
      public static function saveItemList(param1:Function = null) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         Log.log("Save item list..." + Server.smServerType);
         if(AvatarCreator.USER.loggedIn)
         {
            _loc3_ = AvatarCreator.USER.authenticationToken;
            _loc2_ = AvatarCreator.smAvatar.getAvatarData();
            Log.log(_loc2_);
            new AngryBirdsServer(COMMAND_SUBMIT_ITEM_LIST,{
               "token":_loc3_,
               "type":"avatarItemList",
               "list":_loc2_
            },param1);
         }
         else
         {
            _loc2_ = AvatarCreator.smAvatar.getAvatarData();
            Log.log(_loc2_);
         }
      }
      
      public static function getItemList(param1:Function) : void
      {
         var _loc2_:String = null;
         Log.log("Get item list...");
         if(AvatarCreator.USER.loggedIn)
         {
            _loc2_ = AvatarCreator.USER.authenticationToken;
            new AngryBirdsServer(COMMAND_GET_ITEM_LIST,{
               "token":_loc2_,
               "type":"avatarItemList"
            },param1);
         }
      }
      
      public static function saveProfileImage(param1:BitmapData, param2:Function = null) : void
      {
         var _loc3_:ByteArray = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         if(AvatarCreator.USER.loggedIn)
         {
            _loc3_ = PNGEncoder.encode(param1);
            _loc4_ = Base64.encodeByteArray(_loc3_);
            _loc5_ = AvatarCreator.USER.authenticationToken;
            Log.log("uploading profile image: " + _loc5_ + " img: " + _loc4_.length);
            new AngryBirdsServer(COMMAND_UPLOAD_PROFILE_IMAGE,{
               "token":_loc5_,
               "profileImageData":_loc4_
            },param2);
         }
      }
      
      public static function sendSnapshot(param1:String, param2:BitmapData) : void
      {
         var _loc3_:JPGEncoder = new JPGEncoder(90);
         var _loc4_:ByteArray = _loc3_.encode(param2);
         trace("Bytes in jpg: " + _loc4_.length);
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
