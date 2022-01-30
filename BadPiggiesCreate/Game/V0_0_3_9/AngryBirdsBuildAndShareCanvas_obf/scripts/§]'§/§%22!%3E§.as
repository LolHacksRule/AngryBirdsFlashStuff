package §]'§
{
   import §5<§.§'w§;
   import §5<§.§?o§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §"!>§
   {
      
      private static var §>!;§:§'w§;
      
      private static var §"!?§:Object;
      
      private static var §!![§:String = "";
      
      private static var §#! §:int = 0;
       
      
      public function §"!>§()
      {
         super();
      }
      
      public static function load(param1:String, param2:String, param3:String) : void
      {
         §>!;§ = new §'w§();
         §>!;§.dataFormat = URLLoaderDataFormat.TEXT;
         §>!;§.addEventListener(Event.COMPLETE,§'"9§);
         §>!;§.addEventListener(IOErrorEvent.IO_ERROR,§0"-§);
         §>!;§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§0"-§);
         if(param1)
         {
            §>!;§.load(§?o§.§0b§(AngryBirdsFP11.§`]§ + "/init/" + param1 + "/" + param2 + "/" + param3 + "/" + (new Date().timezoneOffset / 60).toString()));
         }
         else
         {
            §>!;§.load(§?o§.§0b§(AngryBirdsFP11.§`]§ + "/init"));
         }
         if(§1+§.§3'§)
         {
            §'"9§(new Event("COMPLETE"));
         }
      }
      
      protected static function §0"-§(param1:Event) : void
      {
         §!![§ = "Can\'t contact server.\n" + param1.toString();
         §>!;§ = null;
      }
      
      private static function §'"9§(param1:Event) : void
      {
         §"!?§ = {
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
         §>!;§ = null;
      }
      
      public static function get §5!H§() : Boolean
      {
         return §>!;§ != null;
      }
      
      private static function get data() : Object
      {
         return §"!?§;
      }
      
      public static function §?!9§() : String
      {
         return §!![§;
      }
      
      public static function §2a§() : int
      {
         return §#! §;
      }
   }
}
