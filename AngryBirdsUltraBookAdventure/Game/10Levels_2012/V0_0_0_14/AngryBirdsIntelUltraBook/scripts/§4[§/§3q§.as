package §4[§
{
   import §&!h§.§4!<§;
   import §&9§.§1?§;
   import §'H§.§9!f§;
   import §4!C§.§"!m§;
   import §4!C§.§]!X§;
   import §5!3§.§#!B§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §3q§
   {
      
      private static var §0!a§:§"!m§;
      
      private static var §,<§:Object;
      
      private static var §else§:String = "";
      
      private static var §^D§:int = 0;
       
      
      public function §3q§()
      {
         super();
      }
      
      public static function load(param1:String, param2:String, param3:String) : void
      {
         §0!a§ = new §"!m§();
         §0!a§.dataFormat = URLLoaderDataFormat.TEXT;
         §0!a§.addEventListener(Event.COMPLETE,§^!J§);
         §0!a§.addEventListener(IOErrorEvent.IO_ERROR,§"!v§);
         §0!a§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§"!v§);
         if(param1)
         {
            §0!a§.load(§]!X§.§#l§(AngryBirdsFP11.§6S§ + "/init/" + param1 + "/" + param2 + "/" + param3 + "/" + (new Date().timezoneOffset / 60).toString()));
         }
         else
         {
            §0!a§.load(§]!X§.§#l§(AngryBirdsFP11.§6S§ + "/init"));
         }
      }
      
      protected static function §"!v§(param1:Event) : void
      {
         §else§ = "Can\'t contact server.\n" + param1.toString();
         §0!a§ = null;
      }
      
      private static function §^!J§(param1:Event) : void
      {
         var serverResponse:String = null;
         var bragObject:Object = null;
         var e:Event = param1;
         var threwError:Boolean = false;
         serverResponse = String(§0!a§.data);
         try
         {
            §,<§ = JSON.parse(serverResponse);
            if(§,<§.error)
            {
               §else§ = "Server error of type \'" + §,<§.type + "\':\n" + §,<§.message;
               if(§,<§.type == "OAuthException")
               {
                  §^D§ = §4!<§.§7!1§;
               }
               threwError = true;
            }
         }
         catch(e:Error)
         {
            §else§ = "Invalid server response. Expected a json string but got this:\n" + serverResponse;
            §^D§ = §4!<§.§ 5§;
            threwError = true;
         }
         if(!threwError)
         {
            §#!B§.§&?§(§,<§.friends);
            (AngryBirdsFP11.sUserProgress as §9!f§).§<v§(§,<§.state as Array,§,<§.user.name,§,<§.user.avatar,§,<§.user.userId,§,<§.eggs,§,<§.user.tutorials);
            §8!g§.§^Z§.§"!P§(§,<§.excludedUserIds);
            §8!g§.§^Z§.§8!6§(§,<§.deauthorizedUserIds);
            if(§,<§.user.name == null)
            {
               throw new Error("User name cannot be null");
            }
            if(§,<§.user.ap == true)
            {
               §1?§.§>!X§("doAdParlorConversion");
            }
            §[!m§.§2!]§(§,<§.friends);
            for each(bragObject in §,<§.requests.brags)
            {
               §1?§.§>!X§("flashDeleteRequest",bragObject.r);
            }
         }
         §0!a§ = null;
      }
      
      public static function get §6j§() : Boolean
      {
         return §0!a§ != null;
      }
      
      private static function get data() : Object
      {
         return §,<§;
      }
      
      public static function §]!M§() : String
      {
         return §else§;
      }
      
      public static function §?s§() : int
      {
         return §^D§;
      }
   }
}
