package §07§
{
   import §5!8§.§ !r§;
   import §5!8§.§0u§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §4!@§
   {
      
      private static var §'z§:§0u§;
      
      private static var §,!'§:Object;
      
      private static var §`!x§:String = "";
      
      private static var §4!r§:int = 0;
       
      
      public function §4!@§()
      {
         super();
      }
      
      public static function load(param1:String, param2:String, param3:String) : void
      {
         §'z§ = new §0u§();
         §'z§.dataFormat = URLLoaderDataFormat.TEXT;
         §'z§.addEventListener(Event.COMPLETE,§ !@§);
         §'z§.addEventListener(IOErrorEvent.IO_ERROR,§-Y§);
         §'z§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§-Y§);
         if(param1)
         {
            §'z§.load(§ !r§.§'s§(AngryBirdsFP11.§;!N§ + "/init/" + param1 + "/" + param2 + "/" + param3 + "/" + (new Date().timezoneOffset / 60).toString()));
         }
         else
         {
            §'z§.load(§ !r§.§'s§(AngryBirdsFP11.§;!N§ + "/init"));
         }
         if(§@=§.§1D§)
         {
            § !@§(new Event("COMPLETE"));
         }
      }
      
      protected static function §-Y§(param1:Event) : void
      {
         §`!x§ = "Can\'t contact server.\n" + param1.toString();
         §'z§ = null;
      }
      
      private static function § !@§(param1:Event) : void
      {
         §,!'§ = {
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
         §'z§ = null;
      }
      
      public static function get § #§() : Boolean
      {
         return §'z§ != null;
      }
      
      private static function get data() : Object
      {
         return §,!'§;
      }
      
      public static function §&p§() : String
      {
         return §`!x§;
      }
      
      public static function §8!u§() : int
      {
         return §4!r§;
      }
   }
}
