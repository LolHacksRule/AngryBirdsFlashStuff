package §4!D§
{
   import §case§.§4W§;
   import §case§.§<!9§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §>!4§ extends EventDispatcher implements §<!9§
   {
      
      private static const §&! §:int = 10;
      
      public static var SERVER_DATA_INVALID:String = "SERVER_DATA_INVALID";
      
      public static var SERVER_CALL_COMPLETE:String = "SERVER_CALL_COMPLETE";
      
      private static var §2x§:§>!4§ = null;
       
      
      private var §1!$§:int = 0;
      
      private var §;0§:int = 0;
      
      private var §&!>§:Boolean = false;
      
      public function §>!4§()
      {
         super();
      }
      
      public static function get §4J§() : §>!4§
      {
         if(§2x§ == null)
         {
            §2x§ = new §>!4§();
         }
         return §2x§;
      }
      
      public function §&§() : void
      {
         this.§&!>§ = true;
         this.§for §();
      }
      
      public function §36§() : int
      {
         return this.§1!$§;
      }
      
      public function §for §() : void
      {
         var _loc1_:String = null;
         var _loc2_:Object = null;
         var _loc3_:§`!F§ = null;
         if(this.§5#§())
         {
            _loc1_ = "levelComplete";
            _loc2_ = {};
            _loc3_ = new §`!F§(_loc2_,§#g§.§;"§ + _loc1_,this,§`!F§.§31§);
         }
         else if(this.§&!>§)
         {
            this.§&!>§ = false;
            dispatchEvent(new Event(SERVER_CALL_COMPLETE));
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc2_:Object = §4W§.§6!P§((param1.currentTarget as URLLoader).data);
         if(_loc2_ && _loc2_.f != null && _loc2_.m != null)
         {
            _loc3_ = §`!F§.§+>§(_loc2_.f);
            if(_loc3_ == _loc2_.m)
            {
               if((_loc4_ = §`!F§.§36§(_loc2_.f)) != -1)
               {
                  this.§1!$§ = _loc4_;
                  if(this.§&!>§)
                  {
                     this.§&!>§ = false;
                     dispatchEvent(new Event(SERVER_CALL_COMPLETE));
                  }
               }
               else
               {
                  dispatchEvent(new Event(SERVER_DATA_INVALID));
               }
            }
         }
      }
      
      public function §-!1§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §!r§(param1:IOErrorEvent) : void
      {
      }
      
      private function §5#§() : Boolean
      {
         return true;
      }
   }
}
