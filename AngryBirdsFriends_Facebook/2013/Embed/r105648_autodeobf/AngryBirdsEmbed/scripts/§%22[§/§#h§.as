package §"[§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §#h§ implements §1%§
   {
       
      
      private var § !'§:Vector.<§1%§>;
      
      private var §=m§:Number;
      
      private var §]z§:Boolean = false;
      
      private var §`a§:Number = 1.0;
      
      public function §#h§()
      {
         super();
         this.§=m§ = 0;
         this.§ !'§ = new Vector.<§1%§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§`a§ = param1;
      }
      
      public function add(param1:§1%§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§ !'§.indexOf(param1) == -1)
         {
            this.§ !'§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§!q§,this.§>J§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§]z§ = param1;
      }
      
      public function §2O§(param1:§1%§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§ !'§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§ !'§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§!q§,this.§>J§);
            }
         }
      }
      
      public function §,x§(param1:Object) : void
      {
         var _loc4_:§-§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§ !'§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§ !'§[_loc3_] as §-§) && _loc4_.target == param1)
            {
               this.§ !'§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §3w§() : void
      {
         this.§ !'§.length = 0;
      }
      
      public function §"0§(param1:Function, param2:Number, ... rest) : §7'§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§7'§ = new §7'§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§]z§)
         {
            return;
         }
         param1 *= this.§`a§;
         this.§=m§ += param1;
         if(this.§ !'§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§ !'§.length;
         var _loc3_:Vector.<§1%§> = this.§ !'§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §>J§(param1:Event) : void
      {
         this.§2O§(param1.target as §1%§);
      }
      
      public function get §1!B§() : Number
      {
         return this.§=m§;
      }
   }
}
