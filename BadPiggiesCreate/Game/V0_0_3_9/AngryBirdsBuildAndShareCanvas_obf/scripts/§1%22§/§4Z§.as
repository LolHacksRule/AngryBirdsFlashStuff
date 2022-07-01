package §1"§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §4Z§ implements §&+§
   {
       
      
      private var §var §:Vector.<§&+§>;
      
      private var §@"0§:Number;
      
      private var §4!§:Boolean = false;
      
      private var §7^§:Number = 1.0;
      
      public function §4Z§()
      {
         super();
         this.§@"0§ = 0;
         this.§var § = new Vector.<§&+§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§7^§ = param1;
      }
      
      public function add(param1:§&+§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§var §.indexOf(param1) == -1)
         {
            this.§var §.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§5F§,this.§1q§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§4!§ = param1;
      }
      
      public function §#@§(param1:§&+§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§var §.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§var §.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§5F§,this.§1q§);
            }
         }
      }
      
      public function §=!G§(param1:Object) : void
      {
         var _loc4_:§^-§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§var §.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§var §[_loc3_] as §^-§) && _loc4_.target == param1)
            {
               this.§var §.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §6!F§() : void
      {
         this.§var §.length = 0;
      }
      
      public function §<!l§(param1:Function, param2:Number, ... rest) : §[J§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§[J§ = new §[J§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§4!§)
         {
            return;
         }
         param1 *= this.§7^§;
         this.§@"0§ += param1;
         if(this.§var §.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§var §.length;
         var _loc3_:Vector.<§&+§> = this.§var §.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §1q§(param1:Event) : void
      {
         this.§#@§(param1.target as §&+§);
      }
      
      public function get §8>§() : Number
      {
         return this.§@"0§;
      }
   }
}
