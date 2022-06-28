package §6!M§
{
   import §+!Q§.§<[§;
   import §0X§.§%'§;
   import §8A§.§%!4§;
   import §;!5§.§ v§;
   import §;!5§.§!e§;
   import §@i§.§=r§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §;!G§
   {
      
      private static var §,Y§:§!e§;
      
      private static var §4M§:Object;
      
      private static var §+!U§:String = "";
      
      private static var § 7§:int = 0;
       
      
      public function §;!G§()
      {
         super();
      }
      
      public static function load(param1:String, param2:String, param3:String) : void
      {
         §,Y§ = new §!e§();
         §,Y§.dataFormat = URLLoaderDataFormat.TEXT;
         §,Y§.addEventListener(Event.COMPLETE,§#6§);
         §,Y§.addEventListener(IOErrorEvent.IO_ERROR,§5!`§);
         §,Y§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§5!`§);
         if(param1)
         {
            §,Y§.load(§ v§.§<N§(AngryBirdsFP11.§8!`§ + "/init/" + param1 + "/" + param2 + "/" + param3 + "/" + (new Date().timezoneOffset / 60).toString()));
         }
         else
         {
            §,Y§.load(§ v§.§<N§(AngryBirdsFP11.§8!`§ + "/init"));
         }
      }
      
      protected static function §5!`§(param1:Event) : void
      {
         §+!U§ = "Can\'t contact server.\n" + param1.toString();
         §,Y§ = null;
      }
      
      private static function §#6§(param1:Event) : void
      {
         var serverResponse:String = null;
         var bragObject:Object = null;
         var e:Event = param1;
         var threwError:Boolean = false;
         serverResponse = String(§,Y§.data);
         try
         {
            §4M§ = JSON.parse(serverResponse);
            if(§4M§.error)
            {
               §+!U§ = "Server error of type \'" + §4M§.type + "\':\n" + §4M§.message;
               if(§4M§.type == "OAuthException")
               {
                  § 7§ = §%'§.§!D§;
               }
               threwError = true;
            }
         }
         catch(e:Error)
         {
            §+!U§ = "Invalid server response. Expected a json string but got this:\n" + serverResponse;
            § 7§ = §%'§.§<!D§;
            threwError = true;
         }
         if(!threwError)
         {
            §%!4§.§5!J§(§4M§.friends);
            (AngryBirdsFP11.sUserProgress as §<[§).§90§(§4M§.state as Array,§4M§.user.name,§4M§.user.avatar,§4M§.user.userId,§4M§.eggs,§4M§.user.tutorials);
            §2F§.§<d§.§`!c§(§4M§.excludedUserIds);
            §2F§.§<d§.§-!M§(§4M§.deauthorizedUserIds);
            if(§4M§.user.name == null)
            {
               throw new Error("User name cannot be null");
            }
            if(§4M§.user.ap == true)
            {
               §=r§.§[!3§("doAdParlorConversion");
            }
            §@!9§.§`3§(§4M§.friends);
            for each(bragObject in §4M§.requests.brags)
            {
               §=r§.§[!3§("flashDeleteRequest",bragObject.r);
            }
         }
         §,Y§ = null;
      }
      
      public static function get §2Q§() : Boolean
      {
         return §,Y§ != null;
      }
      
      private static function get data() : Object
      {
         return §4M§;
      }
      
      public static function § t§() : String
      {
         return §+!U§;
      }
      
      public static function §;K§() : int
      {
         return § 7§;
      }
   }
}
