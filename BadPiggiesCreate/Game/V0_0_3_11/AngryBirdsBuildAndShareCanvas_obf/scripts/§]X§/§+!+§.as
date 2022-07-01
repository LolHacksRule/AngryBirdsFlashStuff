package §]X§
{
   import §45§.§<!0§;
   import §45§.§`U§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §+!+§
   {
      
      private static var §[>§:§`U§;
      
      private static var §[!T§:Object;
      
      private static var §[!R§:String = "";
      
      private static var §2W§:int = 0;
       
      
      public function §+!+§()
      {
         super();
      }
      
      public static function load(param1:String, param2:String, param3:String) : void
      {
         §[>§ = new §`U§();
         §[>§.dataFormat = URLLoaderDataFormat.TEXT;
         §[>§.addEventListener(Event.COMPLETE,§>k§);
         §[>§.addEventListener(IOErrorEvent.IO_ERROR,§91§);
         §[>§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§91§);
         if(param1)
         {
            §[>§.load(§<!0§.§+#§(AngryBirdsFP11.§ >§ + "/init/" + param1 + "/" + param2 + "/" + param3 + "/" + (new Date().timezoneOffset / 60).toString()));
         }
         else
         {
            §[>§.load(§<!0§.§+#§(AngryBirdsFP11.§ >§ + "/init"));
         }
         if(§'N§.§8&§)
         {
            §>k§(new Event("COMPLETE"));
         }
      }
      
      protected static function §91§(param1:Event) : void
      {
         §[!R§ = "Can\'t contact server.\n" + param1.toString();
         §[>§ = null;
      }
      
      private static function §>k§(param1:Event) : void
      {
         §[!T§ = {
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
         §[>§ = null;
      }
      
      public static function get §6!x§() : Boolean
      {
         return §[>§ != null;
      }
      
      private static function get data() : Object
      {
         return §[!T§;
      }
      
      public static function §+G§() : String
      {
         return §[!R§;
      }
      
      public static function §%!v§() : int
      {
         return §2W§;
      }
   }
}
