package §&[§
{
   import §7I§.§+U§;
   import §7I§.§?Q§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §<c§ extends EventDispatcher implements §+U§
   {
      
      private static const §0!'§:int = 10;
      
      public static var SERVER_DATA_INVALID:String = "SERVER_DATA_INVALID";
      
      public static var SERVER_CALL_COMPLETE:String = "SERVER_CALL_COMPLETE";
      
      private static var §4#§:§<c§ = null;
       
      
      private var §=`§:int = 0;
      
      private var §@!F§:int = 0;
      
      private var §6!3§:Boolean = false;
      
      public function §<c§()
      {
         super();
      }
      
      public static function get § set§() : §<c§
      {
         if(§4#§ == null)
         {
            §4#§ = new §<c§();
         }
         return §4#§;
      }
      
      public function §'7§() : void
      {
         this.§6!3§ = true;
         this.§;$§();
      }
      
      public function §"q§() : int
      {
         return this.§=`§;
      }
      
      public function §;$§() : void
      {
         var _loc1_:String = null;
         var _loc2_:Object = null;
         var _loc3_:§"W§ = null;
         if(this.§8,§())
         {
            _loc1_ = "levelComplete";
            _loc2_ = {};
            _loc3_ = new §"W§(_loc2_,§#'§.§7Y§ + _loc1_,this,§"W§.§,"§);
         }
         else if(this.§6!3§)
         {
            this.§6!3§ = false;
            dispatchEvent(new Event(SERVER_CALL_COMPLETE));
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc2_:Object = §?Q§.§7L§((param1.currentTarget as URLLoader).data);
         if(_loc2_ && _loc2_.f != null && _loc2_.m != null)
         {
            _loc3_ = §"W§.§2G§(_loc2_.f);
            if(_loc3_ == _loc2_.m)
            {
               if((_loc4_ = §"W§.§"q§(_loc2_.f)) != -1)
               {
                  this.§=`§ = _loc4_;
                  if(this.§6!3§)
                  {
                     this.§6!3§ = false;
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
      
      public function §+!?§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §0w§(param1:IOErrorEvent) : void
      {
      }
      
      private function §8,§() : Boolean
      {
         return true;
      }
   }
}
