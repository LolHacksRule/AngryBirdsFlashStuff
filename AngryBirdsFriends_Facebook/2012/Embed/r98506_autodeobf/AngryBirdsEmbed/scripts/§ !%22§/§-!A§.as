package § !"§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §-!A§ implements §`!B§
   {
       
      
      private var §&!7§:Vector.<§`!B§>;
      
      private var §+0§:Number;
      
      private var § %§:Boolean = false;
      
      private var §8w§:Number = 1.0;
      
      public function §-!A§()
      {
         super();
         this.§+0§ = 0;
         this.§&!7§ = new Vector.<§`!B§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§8w§ = param1;
      }
      
      public function add(param1:§`!B§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§&!7§.indexOf(param1) == -1)
         {
            this.§&!7§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§2D§,this.§1S§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§ %§ = param1;
      }
      
      public function §2_§(param1:§`!B§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§&!7§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§&!7§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§2D§,this.§1S§);
            }
         }
      }
      
      public function §?!D§(param1:Object) : void
      {
         var _loc4_:§2!=§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§&!7§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§&!7§[_loc3_] as §2!=§) && _loc4_.target == param1)
            {
               this.§&!7§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §6!>§() : void
      {
         this.§&!7§.length = 0;
      }
      
      public function § A§(param1:Function, param2:Number, ... rest) : §%<§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§%<§ = new §%<§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§ %§)
         {
            return;
         }
         param1 *= this.§8w§;
         this.§+0§ += param1;
         if(this.§&!7§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§&!7§.length;
         var _loc3_:Vector.<§`!B§> = this.§&!7§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §1S§(param1:Event) : void
      {
         this.§2_§(param1.target as §`!B§);
      }
      
      public function get §,a§() : Number
      {
         return this.§+0§;
      }
   }
}
