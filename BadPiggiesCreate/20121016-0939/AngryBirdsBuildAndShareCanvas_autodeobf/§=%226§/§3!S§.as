package §="6§
{
   import §@!v§.§+!f§;
   import §@!v§.§69§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §3!S§
   {
      
      private static var §+!N§:§69§;
      
      private static var §+>§:Object;
      
      private static var §-!_§:String = "";
      
      private static var §1s§:int = 0;
       
      
      public function §3!S§()
      {
         super();
      }
      
      public static function load(param1:String, param2:String, param3:String) : void
      {
         §+!N§ = new §69§();
         §+!N§.dataFormat = URLLoaderDataFormat.TEXT;
         §+!N§.addEventListener(Event.COMPLETE,§2>§);
         §+!N§.addEventListener(IOErrorEvent.IO_ERROR,§`!'§);
         §+!N§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§`!'§);
         if(param1)
         {
            §+!N§.load(§+!f§.§3!U§(AngryBirdsFP11.§0!^§ + "/init/" + param1 + "/" + param2 + "/" + param3 + "/" + (new Date().timezoneOffset / 60).toString()));
         }
         else
         {
            §+!N§.load(§+!f§.§3!U§(AngryBirdsFP11.§0!^§ + "/init"));
         }
         if(§>"§.§>3§)
         {
            §2>§(new Event("COMPLETE"));
         }
      }
      
      protected static function §`!'§(param1:Event) : void
      {
         §-!_§ = "Can\'t contact server.\n" + param1.toString();
         §+!N§ = null;
      }
      
      private static function §2>§(param1:Event) : void
      {
         §+>§ = {
            "friends":{"items":[{
               "u":"100002999593950",
               "n":"jonas jakob nyman",
               "s":3,
               "me":999999,
               "r":1
            }]},
            "user":{
               "name":"jonas jakob nyman",
               "userId":"100002999593950"
            }
         };
         §+!N§ = null;
      }
      
      public static function get §7!>§() : Boolean
      {
         return §+!N§ != null;
      }
      
      private static function get data() : Object
      {
         return §+>§;
      }
      
      public static function §`!d§() : String
      {
         return §-!_§;
      }
      
      public static function §#!j§() : int
      {
         return §1s§;
      }
   }
}
