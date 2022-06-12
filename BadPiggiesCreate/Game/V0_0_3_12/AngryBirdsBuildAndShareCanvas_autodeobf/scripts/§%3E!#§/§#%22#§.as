package §>!#§
{
   import §[8§.§,G§;
   import §[8§.§2a§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §#"#§
   {
      
      private static var §8!r§:§2a§;
      
      private static var §9s§:Object;
      
      private static var §+!o§:String = "";
      
      private static var §0!M§:int = 0;
       
      
      public function §#"#§()
      {
         super();
      }
      
      public static function load(param1:String, param2:String, param3:String) : void
      {
         §8!r§ = new §2a§();
         §8!r§.dataFormat = URLLoaderDataFormat.TEXT;
         §8!r§.addEventListener(Event.COMPLETE,§7!"§);
         §8!r§.addEventListener(IOErrorEvent.IO_ERROR,§9!K§);
         §8!r§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§9!K§);
         if(param1)
         {
            §8!r§.load(§,G§.§7"4§(AngryBirdsFP11.§7!A§ + "/init/" + param1 + "/" + param2 + "/" + param3 + "/" + (new Date().timezoneOffset / 60).toString()));
         }
         else
         {
            §8!r§.load(§,G§.§7"4§(AngryBirdsFP11.§7!A§ + "/init"));
         }
         if(§%"$§.§;[§)
         {
            §7!"§(new Event("COMPLETE"));
         }
      }
      
      protected static function §9!K§(param1:Event) : void
      {
         §+!o§ = "Can\'t contact server.\n" + param1.toString();
         §8!r§ = null;
      }
      
      private static function §7!"§(param1:Event) : void
      {
         §9s§ = {
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
         §8!r§ = null;
      }
      
      public static function get §9'§() : Boolean
      {
         return §8!r§ != null;
      }
      
      private static function get data() : Object
      {
         return §9s§;
      }
      
      public static function §8!<§() : String
      {
         return §+!o§;
      }
      
      public static function §99§() : int
      {
         return §0!M§;
      }
   }
}
