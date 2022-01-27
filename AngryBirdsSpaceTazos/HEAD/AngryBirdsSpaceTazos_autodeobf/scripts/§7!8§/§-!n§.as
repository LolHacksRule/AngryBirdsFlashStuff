package §7!8§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §-!n§ implements §2s§
   {
       
      
      private var §9!S§:Vector.<§2s§>;
      
      private var § +§:Number;
      
      private var §!B§:Boolean = false;
      
      private var §`"%§:Number = 1.0;
      
      public function §-!n§()
      {
         super();
         this.§ +§ = 0;
         this.§9!S§ = new Vector.<§2s§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§`"%§ = param1;
      }
      
      public function add(param1:§2s§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§9!S§.indexOf(param1) == -1)
         {
            this.§9!S§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§#!B§,this.§!r§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§!B§ = param1;
      }
      
      public function §>!0§(param1:§2s§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§9!S§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§9!S§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§#!B§,this.§!r§);
            }
         }
      }
      
      public function §=a§(param1:Object) : void
      {
         var _loc4_:§?L§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§9!S§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§9!S§[_loc3_] as §?L§) && _loc4_.target == param1)
            {
               this.§9!S§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §%F§() : void
      {
         this.§9!S§.length = 0;
      }
      
      public function §=!5§(param1:Function, param2:Number, ... rest) : §^w§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§^w§ = new §^w§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§!B§)
         {
            return;
         }
         param1 *= this.§`"%§;
         this.§ +§ += param1;
         if(this.§9!S§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§9!S§.length;
         var _loc3_:Vector.<§2s§> = this.§9!S§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §!r§(param1:Event) : void
      {
         this.§>!0§(param1.target as §2s§);
      }
      
      public function get §9!y§() : Number
      {
         return this.§ +§;
      }
   }
}
