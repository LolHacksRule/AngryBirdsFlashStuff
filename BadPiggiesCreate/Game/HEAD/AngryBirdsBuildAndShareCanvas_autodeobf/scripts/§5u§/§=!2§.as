package §5u§
{
   import §^!m§.§0G§;
   import §^!m§.§="&§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §=!2§
   {
      
      private static var §"K§:§0G§;
      
      private static var §&Z§:Object;
      
      private static var §!=§:String = "";
      
      private static var §?!H§:int = 0;
       
      
      public function §=!2§()
      {
         super();
      }
      
      public static function load(param1:String, param2:String, param3:String) : void
      {
         §"K§ = new §0G§();
         §"K§.dataFormat = URLLoaderDataFormat.TEXT;
         §"K§.addEventListener(Event.COMPLETE,§%j§);
         §"K§.addEventListener(IOErrorEvent.IO_ERROR,§0!q§);
         §"K§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§0!q§);
         if(param1)
         {
            §"K§.load(§="&§.§&!r§(AngryBirdsFP11.§ !i§ + "/init/" + param1 + "/" + param2 + "/" + param3 + "/" + (new Date().timezoneOffset / 60).toString()));
         }
         else
         {
            §"K§.load(§="&§.§&!r§(AngryBirdsFP11.§ !i§ + "/init"));
         }
         if(§[!^§.§^q§)
         {
            §%j§(new Event("COMPLETE"));
         }
      }
      
      protected static function §0!q§(param1:Event) : void
      {
         §!=§ = "Can\'t contact server.\n" + param1.toString();
         §"K§ = null;
      }
      
      private static function §%j§(param1:Event) : void
      {
         §&Z§ = {
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
         §"K§ = null;
      }
      
      public static function get §1!C§() : Boolean
      {
         return §"K§ != null;
      }
      
      private static function get data() : Object
      {
         return §&Z§;
      }
      
      public static function §1z§() : String
      {
         return §!=§;
      }
      
      public static function §7!^§() : int
      {
         return §?!H§;
      }
   }
}
