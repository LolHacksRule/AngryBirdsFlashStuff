package §@!`§
{
   import §'b§.ExternalInterfaceHandler;
   import §6!a§.§"!F§;
   import §6!a§.§>!K§;
   import §7p§.§]E§;
   import §;L§.FriendsDataCache;
   import §?j§.FacebookUserProgress;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class InitDataLoader
   {
      
      private static var sLoader:§>!K§;
      
      private static var sData:Object;
      
      private static var sError:String = "";
      
      private static var sErrorCode:int = 0;
       
      
      public function InitDataLoader()
      {
         super();
      }
      
      public static function load(facebookUserId:String, accessToken:String, expiresInSeconds:String) : void
      {
         sLoader = new §>!K§();
         sLoader.dataFormat = URLLoaderDataFormat.TEXT;
         sLoader.addEventListener(Event.COMPLETE,§^!d§);
         sLoader.addEventListener(IOErrorEvent.IO_ERROR,§@!F§);
         sLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§@!F§);
         if(facebookUserId)
         {
            sLoader.load(§"!F§.§=i§(AngryBirdsFP11.SERVER_ROOT + "/init/" + facebookUserId + "/" + accessToken + "/" + expiresInSeconds + "/" + (new Date().timezoneOffset / 60).toString()));
         }
         else
         {
            sLoader.load(§"!F§.§=i§(AngryBirdsFP11.SERVER_ROOT + "/init"));
         }
      }
      
      protected static function §@!F§(e:Event) : void
      {
         sError = "Can\'t contact server.\n" + e.toString();
         sLoader = null;
      }
      
      private static function §^!d§(e:Event) : void
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
                  sErrorCode = §]E§.§=X§;
               }
               threwError = true;
            }
         }
         catch(e:Error)
         {
            sError = "Invalid server response. Expected a json string but got this:\n" + serverResponse;
            sErrorCode = §]E§.§'-§;
            threwError = true;
         }
         if(!threwError)
         {
            FriendsDataCache.§2!$§(sData.friends);
            (AngryBirdsFP11.sUserProgress as FacebookUserProgress).§=d§(sData.state as Array,sData.user.name,sData.user.avatar,sData.user.userId,sData.eggs,sData.user.tutorials);
            §&!D§.§8!X§.§@!c§(sData.excludedUserIds);
            §&!D§.§8!X§.§'!c§(sData.deauthorizedUserIds);
            if(sData.user.name == null)
            {
               throw new Error("User name cannot be null");
            }
            if(sData.user.ap == true)
            {
               ExternalInterfaceHandler.§>!2§("doAdParlorConversion");
            }
            AngryBirdsUltraBook.§7r§(sData.friends);
            for each(bragObject in sData.requests.brags)
            {
               ExternalInterfaceHandler.§>!2§("flashDeleteRequest",bragObject.r);
            }
         }
         sLoader = null;
      }
      
      public static function get §5!W§() : Boolean
      {
         return sLoader != null;
      }
      
      private static function get data() : Object
      {
         return sData;
      }
      
      public static function §1!9§() : String
      {
         return sError;
      }
      
      public static function §3!D§() : int
      {
         return sErrorCode;
      }
   }
}
