package §<_§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §1>§ implements §?!0§
   {
       
      
      private var §]!X§:Vector.<§?!0§>;
      
      private var §4!=§:Number;
      
      private var §?r§:Boolean = false;
      
      private var §1u§:Number = 1.0;
      
      public function §1>§()
      {
         super();
         this.§4!=§ = 0;
         this.§]!X§ = new Vector.<§?!0§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§1u§ = param1;
      }
      
      public function add(param1:§?!0§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§]!X§.indexOf(param1) == -1)
         {
            this.§]!X§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§[-§,this.§<!C§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§?r§ = param1;
      }
      
      public function §`C§(param1:§?!0§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§]!X§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§]!X§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§[-§,this.§<!C§);
            }
         }
      }
      
      public function §1^§(param1:Object) : void
      {
         var _loc4_:§@!5§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§]!X§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§]!X§[_loc3_] as §@!5§) && _loc4_.target == param1)
            {
               this.§]!X§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §,!U§() : void
      {
         this.§]!X§.length = 0;
      }
      
      public function §+5§(param1:Function, param2:Number, ... rest) : §1l§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§1l§ = new §1l§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§?r§)
         {
            return;
         }
         param1 *= this.§1u§;
         this.§4!=§ += param1;
         if(this.§]!X§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§]!X§.length;
         var _loc3_:Vector.<§?!0§> = this.§]!X§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §<!C§(param1:Event) : void
      {
         this.§`C§(param1.target as §?!0§);
      }
      
      public function get §+Z§() : Number
      {
         return this.§4!=§;
      }
   }
}
