package §4!6§
{
   import §4M§.§5!5§;
   import §4M§.§?j§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §<5§ extends EventDispatcher implements §5!5§
   {
      
      private static const §>!P§:int = 10;
      
      public static var SERVER_DATA_INVALID:String = "SERVER_DATA_INVALID";
      
      public static var SERVER_CALL_COMPLETE:String = "SERVER_CALL_COMPLETE";
      
      private static var §]-§:§<5§ = null;
       
      
      private var §%8§:int = 0;
      
      private var §9G§:int = 0;
      
      private var §1+§:Boolean = false;
      
      public function §<5§()
      {
         super();
      }
      
      public static function get §&y§() : §<5§
      {
         if(§]-§ == null)
         {
            §]-§ = new §<5§();
         }
         return §]-§;
      }
      
      public function §<!L§() : void
      {
         this.§1+§ = true;
         this.§@!K§();
      }
      
      public function §<!7§() : int
      {
         return this.§%8§;
      }
      
      public function §@!K§() : void
      {
         var _loc1_:String = null;
         var _loc2_:Object = null;
         var _loc3_:§%R§ = null;
         if(this.§!N§())
         {
            _loc1_ = "levelComplete";
            _loc2_ = {};
            _loc3_ = new §%R§(_loc2_,§#!1§.§?!A§ + _loc1_,this,§%R§.§9m§);
         }
         else if(this.§1+§)
         {
            this.§1+§ = false;
            dispatchEvent(new Event(SERVER_CALL_COMPLETE));
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc2_:Object = §?j§.§%!%§((param1.currentTarget as URLLoader).data);
         if(_loc2_ && _loc2_.f != null && _loc2_.m != null)
         {
            _loc3_ = §%R§.§!!J§(_loc2_.f);
            if(_loc3_ == _loc2_.m)
            {
               if((_loc4_ = §%R§.§<!7§(_loc2_.f)) != -1)
               {
                  this.§%8§ = _loc4_;
                  if(this.§1+§)
                  {
                     this.§1+§ = false;
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
      
      public function §[!G§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function § C§(param1:IOErrorEvent) : void
      {
      }
      
      private function §!N§() : Boolean
      {
         return true;
      }
   }
}
