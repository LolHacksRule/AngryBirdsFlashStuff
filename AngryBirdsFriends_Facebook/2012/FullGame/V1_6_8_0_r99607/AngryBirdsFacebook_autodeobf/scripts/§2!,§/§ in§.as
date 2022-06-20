package §2!,§
{
   import §"!m§.§,!<§;
   import §&C§.§6!;§;
   import §+"§.§'!0§;
   import §,"-§.§2!P§;
   import §9"%§.§,!S§;
   import §9"%§.§4!J§;
   import §9&§.§7!O§;
   import §<!<§.§^!I§;
   import §<!e§.§[!t§;
   import §<"1§.§,U§;
   import §>y§.§`"2§;
   import §?"#§.§%!X§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class § in§
   {
      
      private static var §["!§:§,!S§;
      
      private static var §&!X§:Object;
      
      private static var §>_§:String = "";
      
      private static var §['§:int = 0;
       
      
      public function § in§()
      {
         super();
      }
      
      public static function load(param1:String, param2:String, param3:String) : void
      {
         §["!§ = new §,!S§();
         §["!§.dataFormat = URLLoaderDataFormat.TEXT;
         §["!§.addEventListener(Event.COMPLETE,§ !q§);
         §["!§.addEventListener(IOErrorEvent.IO_ERROR,§class§);
         §["!§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§class§);
         if(param1)
         {
            §["!§.load(§4!J§.§3j§(AngryBirdsFP11.§7!!§ + "/init/" + param1 + "/" + param2 + "/" + param3 + "/" + (new Date().timezoneOffset / 60).toString()));
         }
         else
         {
            §["!§.load(§4!J§.§3j§(AngryBirdsFP11.§7!!§ + "/init"));
         }
      }
      
      protected static function §class§(param1:Event) : void
      {
         §>_§ = "Can\'t contact server.\n" + param1.toString();
         §["!§ = null;
      }
      
      private static function § !q§(param1:Event) : void
      {
         var serverResponse:String = null;
         var bragObject:Object = null;
         var e:Event = param1;
         var threwError:Boolean = false;
         serverResponse = String(§["!§.data);
         try
         {
            §&!X§ = JSON.parse(serverResponse);
            if(§&!X§.error)
            {
               §>_§ = "Server error of type \'" + §&!X§.type + "\':\n" + §&!X§.message;
               if(§&!X§.type == "OAuthException")
               {
                  §['§ = §^!I§.§4!5§;
               }
               threwError = true;
            }
         }
         catch(e:Error)
         {
            §>_§ = "Invalid server response. Expected a json string but got this:\n" + serverResponse;
            §['§ = §^!I§.§50§;
            threwError = true;
         }
         if(!threwError)
         {
            §%!X§.injectData(§&!X§.friends);
            §,!<§.injectData(§&!X§.shopcampaigns);
            §[!t§.§8c§.injectData(§&!X§.tournament);
            (AngryBirdsFP11.sUserProgress as §2!P§).§?>§(§[!t§.§8c§.levelScores);
            (AngryBirdsFP11.sUserProgress as §2!P§).§8J§(§&!X§.state as Array,§&!X§.user.name,§&!X§.user.avatar,§&!X§.user.userId,§&!X§.eggs,§&!X§.user.tutorials);
            §'!0§.§8c§.§,d§(§&!X§.items as Array);
            §6!;§.§7"%§(§&!X§.dailyReward);
            §7!O§.injectData(§&!X§.requests);
            §!"§.§8c§.§6'§(§&!X§.excludedUserIds);
            §!"§.§8c§.§9i§(§&!X§.deauthorizedUserIds);
            §!"§.§8c§.§7!,§(null);
            §`"2§.§7m§();
            if(§&!X§.user.name == null)
            {
               throw new Error("User name cannot be null");
            }
            if(§&!X§.user.ap == true)
            {
               §,U§.§53§("doAdParlorConversion");
            }
            § W§.§8!j§(§&!X§.friends);
            for each(bragObject in §&!X§.requests.brags)
            {
               §,U§.§53§("flashDeleteRequest",bragObject.r);
            }
         }
         §["!§ = null;
      }
      
      public static function get §%!H§() : Boolean
      {
         return §["!§ != null;
      }
      
      private static function get data() : Object
      {
         return §&!X§;
      }
      
      public static function §'"7§() : String
      {
         return §>_§;
      }
      
      public static function §,y§() : int
      {
         return §['§;
      }
   }
}
