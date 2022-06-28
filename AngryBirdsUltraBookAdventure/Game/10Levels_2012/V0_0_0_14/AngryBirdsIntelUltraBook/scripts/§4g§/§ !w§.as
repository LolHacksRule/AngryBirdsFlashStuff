package §4g§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class § !w§ implements §@7§
   {
       
      
      private var §@!d§:Vector.<§@7§>;
      
      private var §@!w§:Number;
      
      private var §#m§:Boolean = false;
      
      private var §9j§:Number = 1.0;
      
      public function § !w§()
      {
         super();
         this.§@!w§ = 0;
         this.§@!d§ = new Vector.<§@7§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§9j§ = param1;
      }
      
      public function add(param1:§@7§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§@!d§.indexOf(param1) == -1)
         {
            this.§@!d§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§"!_§,this.§"!-§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§#m§ = param1;
      }
      
      public function § !L§(param1:§@7§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§@!d§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§@!d§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§"!_§,this.§"!-§);
            }
         }
      }
      
      public function §?<§(param1:Object) : void
      {
         var _loc4_:§`!^§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§@!d§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§@!d§[_loc3_] as §`!^§) && _loc4_.target == param1)
            {
               this.§@!d§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §=-§() : void
      {
         this.§@!d§.length = 0;
      }
      
      public function §6!w§(param1:Function, param2:Number, ... rest) : §>f§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§>f§ = new §>f§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§#m§)
         {
            return;
         }
         param1 *= this.§9j§;
         this.§@!w§ += param1;
         if(this.§@!d§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§@!d§.length;
         var _loc3_:Vector.<§@7§> = this.§@!d§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §"!-§(param1:Event) : void
      {
         this.§ !L§(param1.target as §@7§);
      }
      
      public function get §>!§() : Number
      {
         return this.§@!w§;
      }
   }
}
