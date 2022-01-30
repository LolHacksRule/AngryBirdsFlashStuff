package §+!v§
{
   import § i§.§&;§;
   import § i§.§]"7§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §01§
   {
      
      private static var §?!'§:§]"7§;
      
      private static var §9L§:Object;
      
      private static var §0m§:String = "";
      
      private static var §8"-§:int = 0;
       
      
      public function §01§()
      {
         super();
      }
      
      public static function load(param1:String, param2:String, param3:String) : void
      {
         §?!'§ = new §]"7§();
         §?!'§.dataFormat = URLLoaderDataFormat.TEXT;
         §?!'§.addEventListener(Event.COMPLETE,§[!h§);
         §?!'§.addEventListener(IOErrorEvent.IO_ERROR,§ !i§);
         §?!'§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§ !i§);
         if(param1)
         {
            §?!'§.load(§&;§.§3!x§(AngryBirdsFP11.§8V§ + "/init/" + param1 + "/" + param2 + "/" + param3 + "/" + (new Date().timezoneOffset / 60).toString()));
         }
         else
         {
            §?!'§.load(§&;§.§3!x§(AngryBirdsFP11.§8V§ + "/init"));
         }
         if(§7"$§.§2!_§)
         {
            §[!h§(new Event("COMPLETE"));
         }
      }
      
      protected static function § !i§(param1:Event) : void
      {
         §0m§ = "Can\'t contact server.\n" + param1.toString();
         §?!'§ = null;
      }
      
      private static function §[!h§(param1:Event) : void
      {
         §9L§ = {
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
         §?!'§ = null;
      }
      
      public static function get §9+§() : Boolean
      {
         return §?!'§ != null;
      }
      
      private static function get data() : Object
      {
         return §9L§;
      }
      
      public static function §1!V§() : String
      {
         return §0m§;
      }
      
      public static function §?!t§() : int
      {
         return §8"-§;
      }
   }
}
