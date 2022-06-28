package §<!=§
{
   import § $§.§-!Q§;
   import § $§.§1!6§;
   import §,!#§.ExternalInterfaceHandler;
   import §7!6§.FriendsDataCache;
   import §8T§.FacebookUserProgress;
   import §9!!§.§1!E§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class InitDataLoader
   {
      
      private static var sLoader:§1!6§;
      
      private static var sData:Object;
      
      private static var sError:String = "";
      
      private static var sErrorCode:int = 0;
       
      
      public function InitDataLoader()
      {
         super();
      }
      
      public static function load(facebookUserId:String, accessToken:String, expiresInSeconds:String) : void
      {
         sLoader = new §1!6§();
         sLoader.dataFormat = URLLoaderDataFormat.TEXT;
         sLoader.addEventListener(Event.COMPLETE,§6K§);
         sLoader.addEventListener(IOErrorEvent.IO_ERROR,§9!f§);
         sLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§9!f§);
         if(facebookUserId)
         {
            sLoader.load(§-!Q§.§<!%§(AngryBirdsFP11.SERVER_ROOT + "/init/" + facebookUserId + "/" + accessToken + "/" + expiresInSeconds + "/" + (new Date().timezoneOffset / 60).toString()));
         }
         else
         {
            sLoader.load(§-!Q§.§<!%§(AngryBirdsFP11.SERVER_ROOT + "/init"));
         }
      }
      
      protected static function §9!f§(e:Event) : void
      {
         sError = "Can\'t contact server.\n" + e.toString();
         sLoader = null;
      }
      
      private static function §6K§(e:Event) : void
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
                  sErrorCode = §1!E§.§ !L§;
               }
               threwError = true;
            }
         }
         catch(e:Error)
         {
            sError = "Invalid server response. Expected a json string but got this:\n" + serverResponse;
            sErrorCode = §1!E§.§`z§;
            threwError = true;
         }
         if(!threwError)
         {
            FriendsDataCache.§]k§(sData.friends);
            (AngryBirdsFP11.sUserProgress as FacebookUserProgress).§ N§(sData.state as Array,sData.user.name,sData.user.avatar,sData.user.userId,sData.eggs,sData.user.tutorials);
            §@a§.§&!'§.§;g§(sData.excludedUserIds);
            §@a§.§&!'§.§64§(sData.deauthorizedUserIds);
            if(sData.user.name == null)
            {
               throw new Error("User name cannot be null");
            }
            if(sData.user.ap == true)
            {
               ExternalInterfaceHandler.§!!@§("doAdParlorConversion");
            }
            AngryBirdsUltraBook.§<8§(sData.friends);
            for each(bragObject in sData.requests.brags)
            {
               ExternalInterfaceHandler.§!!@§("flashDeleteRequest",bragObject.r);
            }
         }
         sLoader = null;
      }
      
      public static function get §?,§() : Boolean
      {
         return sLoader != null;
      }
      
      private static function get data() : Object
      {
         return sData;
      }
      
      public static function §5,§() : String
      {
         return sError;
      }
      
      public static function §<!>§() : int
      {
         return sErrorCode;
      }
   }
}
