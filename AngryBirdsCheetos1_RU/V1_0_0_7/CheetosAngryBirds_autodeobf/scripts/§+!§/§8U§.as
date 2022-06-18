package §+!§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §8U§ implements §[!P§
   {
       
      
      private var §'_§:Vector.<§[!P§>;
      
      private var §4G§:Number;
      
      private var §[@§:Boolean = false;
      
      private var §8W§:Number = 1.0;
      
      public function §8U§()
      {
         super();
         this.§4G§ = 0;
         this.§'_§ = new Vector.<§[!P§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§8W§ = param1;
      }
      
      public function add(param1:§[!P§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§'_§.indexOf(param1) == -1)
         {
            this.§'_§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§<P§,this.§7!T§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§[@§ = param1;
      }
      
      public function §[!§(param1:§[!P§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§'_§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§'_§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§<P§,this.§7!T§);
            }
         }
      }
      
      public function §'!9§(param1:Object) : void
      {
         var _loc4_:§<c§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§'_§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§'_§[_loc3_] as §<c§) && _loc4_.target == param1)
            {
               this.§'_§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §]j§() : void
      {
         this.§'_§.length = 0;
      }
      
      public function §50§(param1:Function, param2:Number, ... rest) : §^d§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§^d§ = new §^d§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§[@§)
         {
            return;
         }
         param1 *= this.§8W§;
         this.§4G§ += param1;
         if(this.§'_§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§'_§.length;
         var _loc3_:Vector.<§[!P§> = this.§'_§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §7!T§(param1:Event) : void
      {
         this.§[!§(param1.target as §[!P§);
      }
      
      public function get §,y§() : Number
      {
         return this.§4G§;
      }
   }
}
