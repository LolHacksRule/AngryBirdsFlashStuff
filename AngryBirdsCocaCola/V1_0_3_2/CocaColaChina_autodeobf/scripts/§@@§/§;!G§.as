package §@@§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §;!G§ implements §6!%§
   {
       
      
      private var §^!'§:Vector.<§6!%§>;
      
      private var §"p§:Number;
      
      private var §0l§:Boolean = false;
      
      private var §8j§:Number = 1.0;
      
      public function §;!G§()
      {
         super();
         this.§"p§ = 0;
         this.§^!'§ = new Vector.<§6!%§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§8j§ = param1;
      }
      
      public function add(param1:§6!%§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§^!'§.indexOf(param1) == -1)
         {
            this.§^!'§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§?s§,this.§,7§);
            }
         }
      }
      
      public function set §catch§(param1:Boolean) : void
      {
         this.§0l§ = param1;
      }
      
      public function §!M§(param1:§6!%§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§^!'§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§^!'§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§?s§,this.§,7§);
            }
         }
      }
      
      public function §9!'§(param1:Object) : void
      {
         var _loc4_:§=-§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§^!'§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§^!'§[_loc3_] as §=-§) && _loc4_.target == param1)
            {
               this.§^!'§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §?!§() : void
      {
         this.§^!'§.length = 0;
      }
      
      public function §9!U§(param1:Function, param2:Number, ... rest) : §7Q§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§7Q§ = new §7Q§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§0l§)
         {
            return;
         }
         param1 *= this.§8j§;
         this.§"p§ += param1;
         if(this.§^!'§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§^!'§.length;
         var _loc3_:Vector.<§6!%§> = this.§^!'§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §,7§(param1:Event) : void
      {
         this.§!M§(param1.target as §6!%§);
      }
      
      public function get §-Q§() : Number
      {
         return this.§"p§;
      }
   }
}
