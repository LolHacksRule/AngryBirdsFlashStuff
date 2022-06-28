package §4H§
{
   import §#!G§.§6!_§;
   import §-^§.§45§;
   import §-^§.§7!6§;
   import §<-§.§"K§;
   import §>L§.§+!i§;
   import §[;§.§#!6§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §!!5§
   {
      
      private static var §9^§:§45§;
      
      private static var §+7§:Object;
      
      private static var §,!>§:String = "";
      
      private static var §8t§:int = 0;
       
      
      public function §!!5§()
      {
         super();
      }
      
      public static function load(param1:String, param2:String, param3:String) : void
      {
         §9^§ = new §45§();
         §9^§.dataFormat = URLLoaderDataFormat.TEXT;
         §9^§.addEventListener(Event.COMPLETE,§94§);
         §9^§.addEventListener(IOErrorEvent.IO_ERROR,§2!@§);
         §9^§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§2!@§);
         if(param1)
         {
            §9^§.load(§7!6§.§7V§(AngryBirdsFP11.§[!S§ + "/init/" + param1 + "/" + param2 + "/" + param3 + "/" + (new Date().timezoneOffset / 60).toString()));
         }
         else
         {
            §9^§.load(§7!6§.§7V§(AngryBirdsFP11.§[!S§ + "/init"));
         }
      }
      
      protected static function §2!@§(param1:Event) : void
      {
         §,!>§ = "Can\'t contact server.\n" + param1.toString();
         §9^§ = null;
      }
      
      private static function §94§(param1:Event) : void
      {
         var serverResponse:String = null;
         var bragObject:Object = null;
         var e:Event = param1;
         var threwError:Boolean = false;
         serverResponse = String(§9^§.data);
         try
         {
            §+7§ = JSON.parse(serverResponse);
            if(§+7§.error)
            {
               §,!>§ = "Server error of type \'" + §+7§.type + "\':\n" + §+7§.message;
               if(§+7§.type == "OAuthException")
               {
                  §8t§ = §"K§.§6$§;
               }
               threwError = true;
            }
         }
         catch(e:Error)
         {
            §,!>§ = "Invalid server response. Expected a json string but got this:\n" + serverResponse;
            §8t§ = §"K§.§6#§;
            threwError = true;
         }
         if(!threwError)
         {
            §6!_§.§8m§(§+7§.friends);
            (AngryBirdsFP11.sUserProgress as §#!6§).§0!2§(§+7§.state as Array,§+7§.user.name,§+7§.user.avatar,§+7§.user.userId,§+7§.eggs,§+7§.user.tutorials);
            §0c§.§[U§.§-c§(§+7§.excludedUserIds);
            §0c§.§[U§.§4C§(§+7§.deauthorizedUserIds);
            if(§+7§.user.name == null)
            {
               throw new Error("User name cannot be null");
            }
            if(§+7§.user.ap == true)
            {
               §+!i§.§>!y§("doAdParlorConversion");
            }
            §<t§.§6v§(§+7§.friends);
            for each(bragObject in §+7§.requests.brags)
            {
               §+!i§.§>!y§("flashDeleteRequest",bragObject.r);
            }
         }
         §9^§ = null;
      }
      
      public static function get §6;§() : Boolean
      {
         return §9^§ != null;
      }
      
      private static function get data() : Object
      {
         return §+7§;
      }
      
      public static function §>!I§() : String
      {
         return §,!>§;
      }
      
      public static function §+!A§() : int
      {
         return §8t§;
      }
   }
}
