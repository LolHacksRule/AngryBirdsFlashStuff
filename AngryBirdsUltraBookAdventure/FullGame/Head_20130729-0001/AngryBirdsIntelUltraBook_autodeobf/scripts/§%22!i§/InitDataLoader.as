package §"!i§
{
   import § 3§.FacebookUserProgress;
   import §&"§.ExternalInterfaceHandler;
   import §&e§.FriendsDataCache;
   import §5=§.§8O§;
   import §^!7§.§+!I§;
   import §^!7§.§[!<§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class InitDataLoader
   {
      
      private static var sLoader:§[!<§;
      
      private static var sData:Object;
      
      private static var sError:String = "";
      
      private static var sErrorCode:int = 0;
       
      
      public function InitDataLoader()
      {
         super();
      }
      
      public static function load(facebookUserId:String, accessToken:String, expiresInSeconds:String) : void
      {
         sLoader = new §[!<§();
         sLoader.dataFormat = URLLoaderDataFormat.TEXT;
         sLoader.addEventListener(Event.COMPLETE,§5f§);
         sLoader.addEventListener(IOErrorEvent.IO_ERROR,§`3§);
         sLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§`3§);
         if(facebookUserId)
         {
            sLoader.load(§+!I§.§[O§(AngryBirdsFP11.SERVER_ROOT + "/init/" + facebookUserId + "/" + accessToken + "/" + expiresInSeconds + "/" + (new Date().timezoneOffset / 60).toString()));
         }
         else
         {
            sLoader.load(§+!I§.§[O§(AngryBirdsFP11.SERVER_ROOT + "/init"));
         }
      }
      
      protected static function §`3§(e:Event) : void
      {
         sError = "Can\'t contact server.\n" + e.toString();
         sLoader = null;
      }
      
      private static function §5f§(e:Event) : void
      {
         var serverResponse:String = null;
         var bragObject:Object = null;
         var threwError:Boolean = false;
         serverResponse = String(sLoader.data);
         try
         {
            sData = JSON.parse(serverResponse);
            if(sData.error)
            {
               sError = "Server error of type \'" + sData.type + "\':\n" + sData.message;
               if(sData.type == "OAuthException")
               {
                  sErrorCode = §8O§.§[!I§;
               }
               threwError = true;
            }
         }
         catch(e:Error)
         {
            sError = "Invalid server response. Expected a json string but got this:\n" + serverResponse;
            sErrorCode = §8O§.§?6§;
            threwError = true;
         }
         if(!threwError)
         {
            FriendsDataCache.§"!9§(sData.friends);
            (AngryBirdsFP11.sUserProgress as FacebookUserProgress).§?!7§(sData.state as Array,sData.user.name,sData.user.avatar,sData.user.userId,sData.eggs,sData.user.tutorials);
            §5>§.§7!E§.§[F§(sData.excludedUserIds);
            §5>§.§7!E§.§+X§(sData.deauthorizedUserIds);
            if(sData.user.name == null)
            {
               throw new Error("User name cannot be null");
            }
            if(sData.user.ap == true)
            {
               ExternalInterfaceHandler.§`F§("doAdParlorConversion");
            }
            AngryBirdsUltraBook.§=[§(sData.friends);
            for each(bragObject in sData.requests.brags)
            {
               ExternalInterfaceHandler.§`F§("flashDeleteRequest",bragObject.r);
            }
         }
         sLoader = null;
      }
      
      public static function get §#]§() : Boolean
      {
         return sLoader != null;
      }
      
      private static function get data() : Object
      {
         return sData;
      }
      
      public static function §=J§() : String
      {
         return sError;
      }
      
      public static function §2!§() : int
      {
         return sErrorCode;
      }
   }
}
