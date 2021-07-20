package §85§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §[D§ implements §?!%§
   {
       
      
      private var §7-§:Vector.<§?!%§>;
      
      private var §9m§:Number;
      
      private var §9!U§:Boolean = false;
      
      private var § ;§:Number = 1.0;
      
      public function §[D§()
      {
         super();
         this.§9m§ = 0;
         this.§7-§ = new Vector.<§?!%§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§ ;§ = param1;
      }
      
      public function add(param1:§?!%§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§7-§.indexOf(param1) == -1)
         {
            this.§7-§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§%!W§,this.§'-§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§9!U§ = param1;
      }
      
      public function §0z§(param1:§?!%§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§7-§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§7-§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§%!W§,this.§'-§);
            }
         }
      }
      
      public function §?!a§(param1:Object) : void
      {
         var _loc4_:§5S§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§7-§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§7-§[_loc3_] as §5S§) && _loc4_.target == param1)
            {
               this.§7-§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §4Y§() : void
      {
         this.§7-§.length = 0;
      }
      
      public function §9!"§(param1:Function, param2:Number, ... rest) : §!!b§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§!!b§ = new §!!b§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§9!U§)
         {
            return;
         }
         param1 *= this.§ ;§;
         this.§9m§ += param1;
         if(this.§7-§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§7-§.length;
         var _loc3_:Vector.<§?!%§> = this.§7-§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §'-§(param1:Event) : void
      {
         this.§0z§(param1.target as §?!%§);
      }
      
      public function get §7&§() : Number
      {
         return this.§9m§;
      }
   }
}
