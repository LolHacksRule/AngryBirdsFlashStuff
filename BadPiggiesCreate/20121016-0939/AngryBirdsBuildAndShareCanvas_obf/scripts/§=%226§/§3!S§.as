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
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §-!_§ = "";
         }
         do
         {
            §1s§ = 0;
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function §3!S§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function load(param1:String, param2:String, param3:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            §+!N§ = new §69§();
            loop0:
            while(true)
            {
               §§push(§+!N§);
               addr217:
               while(true)
               {
                  §§pop().dataFormat = URLLoaderDataFormat.TEXT;
                  continue loop0;
               }
            }
         }
         §§goto(addr175);
      }
      
      protected static function §`!'§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || §3!S§)
         {
            §-!_§ = "Can\'t contact server.\n" + param1.toString();
            do
            {
               §+!N§ = null;
            }
            while(_loc3_);
            
         }
      }
      
      private static function §2>§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
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
            do
            {
               §+!N§ = null;
            }
            while(_loc2_ && §3!S§);
            
         }
      }
      
      public static function get §7!>§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§+!N§ == null);
         if(!(_loc2_ && _loc1_))
         {
            return !§§pop();
         }
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
