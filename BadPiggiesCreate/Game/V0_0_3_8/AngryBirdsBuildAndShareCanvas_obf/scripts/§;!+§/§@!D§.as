package §;!+§
{
   import §%!k§.§&R§;
   import §%!k§.§=!"§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §@!D§
   {
      
      private static var §+!e§:§=!"§;
      
      private static var §%!+§:Object;
      
      private static var §^w§:String = "";
      
      private static var §^!`§:int = 0;
       
      
      public function §@!D§()
      {
         super();
      }
      
      public static function load(param1:String, param2:String, param3:String) : void
      {
         §+!e§ = new §=!"§();
         §+!e§.dataFormat = URLLoaderDataFormat.TEXT;
         §+!e§.addEventListener(Event.COMPLETE,§?!N§);
         §+!e§.addEventListener(IOErrorEvent.IO_ERROR,§5"3§);
         §+!e§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§5"3§);
         if(param1)
         {
            §+!e§.load(§&R§.§]"!§(AngryBirdsFP11.§!!s§ + "/init/" + param1 + "/" + param2 + "/" + param3 + "/" + (new Date().timezoneOffset / 60).toString()));
         }
         else
         {
            §+!e§.load(§&R§.§]"!§(AngryBirdsFP11.§!!s§ + "/init"));
         }
         if(§3!P§.§`"&§)
         {
            §?!N§(new Event("COMPLETE"));
         }
      }
      
      protected static function §5"3§(param1:Event) : void
      {
         §^w§ = "Can\'t contact server.\n" + param1.toString();
         §+!e§ = null;
      }
      
      private static function §?!N§(param1:Event) : void
      {
         §%!+§ = {
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
         §+!e§ = null;
      }
      
      public static function get §'!L§() : Boolean
      {
         return §+!e§ != null;
      }
      
      private static function get data() : Object
      {
         return §%!+§;
      }
      
      public static function §9!e§() : String
      {
         return §^w§;
      }
      
      public static function §&!K§() : int
      {
         return §^!`§;
      }
   }
}
