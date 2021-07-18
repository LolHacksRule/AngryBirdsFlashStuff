package §`!M§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §]!N§ implements § !7§
   {
       
      
      private var §=U§:Vector.<§ !7§>;
      
      private var §-$§:Number;
      
      private var §=2§:Boolean = false;
      
      private var §0t§:Number = 1.0;
      
      public function §]!N§()
      {
         super();
         this.§-$§ = 0;
         this.§=U§ = new Vector.<§ !7§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§0t§ = param1;
      }
      
      public function add(param1:§ !7§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§=U§.indexOf(param1) == -1)
         {
            this.§=U§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§0<§,this.§9!W§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§=2§ = param1;
      }
      
      public function §0@§(param1:§ !7§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§=U§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§=U§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§0<§,this.§9!W§);
            }
         }
      }
      
      public function §['§(param1:Object) : void
      {
         var _loc4_:§@6§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§=U§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§=U§[_loc3_] as §@6§) && _loc4_.target == param1)
            {
               this.§=U§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §[G§() : void
      {
         this.§=U§.length = 0;
      }
      
      public function §@H§(param1:Function, param2:Number, ... rest) : §&!@§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§&!@§ = new §&!@§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§=2§)
         {
            return;
         }
         param1 *= this.§0t§;
         this.§-$§ += param1;
         if(this.§=U§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§=U§.length;
         var _loc3_:Vector.<§ !7§> = this.§=U§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §9!W§(param1:Event) : void
      {
         this.§0@§(param1.target as § !7§);
      }
      
      public function get §-!$§() : Number
      {
         return this.§-$§;
      }
   }
}
