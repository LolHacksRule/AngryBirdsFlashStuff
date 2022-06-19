package §&!F§
{
   import §1!E§.§>f§;
   import §12§.§25§;
   import §5G§.§39§;
   import §[h§.§7Z§;
   import §[h§.§[!U§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §%2§ extends EventDispatcher implements §7Z§
   {
       
      
      private var §%!K§:§3S§;
      
      public function §%2§(param1:§3S§)
      {
         super();
         this.§%!K§ = param1;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         var _loc8_:String = null;
         var _loc2_:Object = §[!U§.§ !=§((param1.currentTarget as URLLoader).data);
         if(_loc2_.error)
         {
            dispatchEvent(new §25§(this.getCreditUseErrorEventType()));
            this.§%!K§.§%!L§();
            return;
         }
         var _loc3_:int = 0;
         var _loc4_:Array = _loc2_.items;
         for each(_loc5_ in _loc4_)
         {
            if(_loc5_.type == §"!d§.§;,§)
            {
               _loc3_ = _loc5_.count;
            }
         }
         this.§%!K§.§5<§(_loc3_);
         dispatchEvent(new §25§(§25§.§&g§));
         (_loc6_ = {}).type = §"!d§.§;,§;
         _loc6_.count = _loc3_;
         (_loc7_ = []).push(_loc6_);
         if(§>f§.§%!`§)
         {
            _loc8_ = §"!d§.§+!5§(§>f§.§%!`§.id,_loc7_);
         }
         if(_loc8_ != _loc2_.itemsSecurity)
         {
            dispatchEvent(new §25§(this.getCreditUseErrorEventType()));
            return;
         }
         dispatchEvent(new §25§(this.getCreditUseCompleteEventType()));
      }
      
      public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      public function onIOError(param1:IOErrorEvent) : void
      {
         §5!9§.§-!O§.§;!;§(§39§.§3!?§);
      }
      
      public function §6!a§(param1:int) : void
      {
         if(!§>f§.§%!`§)
         {
            return;
         }
         var _loc2_:String = §"!d§.§#u§;
         var _loc3_:Object = {};
         _loc3_.type = §"!d§.§;,§;
         _loc3_.count = param1;
         var _loc4_:Array;
         (_loc4_ = []).push(_loc3_);
         var _loc5_:String = §"!d§.§+!5§(§>f§.§%!`§.id,_loc4_);
         var _loc6_:Object = {
            "id":§>f§.§%!`§.id,
            "items":_loc4_,
            "itemsSecurity":_loc5_
         };
         new §"!d§(_loc6_,§5!9§.§<V§ + _loc2_,this,§"!d§.§9X§);
      }
      
      protected function getCreditUseErrorEventType() : String
      {
         return §25§.§3M§;
      }
      
      protected function getCreditUseCompleteEventType() : String
      {
         return §25§.§]5§;
      }
   }
}
