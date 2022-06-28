package §#&§
{
   import §,!§.§![§;
   import §7X§.§+!p§;
   import §7X§.§7^§;
   import §;!o§.§>!l§;
   import §;0§.§7;§;
   import §]+§.§&!$§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §1A§
   {
      
      private static var §]!"§:§7^§;
      
      private static var §^!s§:Object;
      
      private static var §3y§:String = "";
      
      private static var §5X§:int = 0;
       
      
      public function §1A§()
      {
         super();
      }
      
      public static function load(param1:String, param2:String, param3:String) : void
      {
         §]!"§ = new §7^§();
         §]!"§.dataFormat = URLLoaderDataFormat.TEXT;
         §]!"§.addEventListener(Event.COMPLETE,§,r§);
         §]!"§.addEventListener(IOErrorEvent.IO_ERROR,§6!_§);
         §]!"§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§6!_§);
         if(param1)
         {
            §]!"§.load(§+!p§.§`;§(AngryBirdsFP11.§;!1§ + "/init/" + param1 + "/" + param2 + "/" + param3 + "/" + (new Date().timezoneOffset / 60).toString()));
         }
         else
         {
            §]!"§.load(§+!p§.§`;§(AngryBirdsFP11.§;!1§ + "/init"));
         }
      }
      
      protected static function §6!_§(param1:Event) : void
      {
         §3y§ = "Can\'t contact server.\n" + param1.toString();
         §]!"§ = null;
      }
      
      private static function §,r§(param1:Event) : void
      {
         var serverResponse:String = null;
         var bragObject:Object = null;
         var e:Event = param1;
         var threwError:Boolean = false;
         serverResponse = String(§]!"§.data);
         try
         {
            §^!s§ = JSON.parse(serverResponse);
            if(§^!s§.error)
            {
               §3y§ = "Server error of type \'" + §^!s§.type + "\':\n" + §^!s§.message;
               if(§^!s§.type == "OAuthException")
               {
                  §5X§ = §&!$§.§@+§;
               }
               threwError = true;
            }
         }
         catch(e:Error)
         {
            §3y§ = "Invalid server response. Expected a json string but got this:\n" + serverResponse;
            §5X§ = §&!$§.§1!`§;
            threwError = true;
         }
         if(!threwError)
         {
            §7;§.§??§(§^!s§.friends);
            (AngryBirdsFP11.sUserProgress as §![§).§!!h§(§^!s§.state as Array,§^!s§.user.name,§^!s§.user.avatar,§^!s§.user.userId,§^!s§.eggs,§^!s§.user.tutorials);
            §+!@§.§7!j§.§6t§(§^!s§.excludedUserIds);
            §+!@§.§7!j§.§@!$§(§^!s§.deauthorizedUserIds);
            if(§^!s§.user.name == null)
            {
               throw new Error("User name cannot be null");
            }
            if(§^!s§.user.ap == true)
            {
               §>!l§.§ a§("doAdParlorConversion");
            }
            §[!P§.§'!F§(§^!s§.friends);
            for each(bragObject in §^!s§.requests.brags)
            {
               §>!l§.§ a§("flashDeleteRequest",bragObject.r);
            }
         }
         §]!"§ = null;
      }
      
      public static function get §@B§() : Boolean
      {
         return §]!"§ != null;
      }
      
      private static function get data() : Object
      {
         return §^!s§;
      }
      
      public static function §;!l§() : String
      {
         return §3y§;
      }
      
      public static function §?!L§() : int
      {
         return §5X§;
      }
   }
}
