package §]d§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §@Z§ implements §;=§
   {
       
      
      private var §5h§:Vector.<§;=§>;
      
      private var §^! §:Number;
      
      private var §^l§:Boolean = false;
      
      private var §default§:Number = 1.0;
      
      public function §@Z§()
      {
         super();
         this.§^! § = 0;
         this.§5h§ = new Vector.<§;=§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§default§ = param1;
      }
      
      public function add(param1:§;=§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§5h§.indexOf(param1) == -1)
         {
            this.§5h§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§<x§,this.§;!7§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§^l§ = param1;
      }
      
      public function §]4§(param1:§;=§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§5h§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§5h§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§<x§,this.§;!7§);
            }
         }
      }
      
      public function §"n§(param1:Object) : void
      {
         var _loc4_:§@!i§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§5h§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§5h§[_loc3_] as §@!i§) && _loc4_.target == param1)
            {
               this.§5h§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §4^§() : void
      {
         this.§5h§.length = 0;
      }
      
      public function §<5§(param1:Function, param2:Number, ... rest) : §@=§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§@=§ = new §@=§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§^l§)
         {
            return;
         }
         param1 *= this.§default§;
         this.§^! § += param1;
         if(this.§5h§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§5h§.length;
         var _loc3_:Vector.<§;=§> = this.§5h§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §;!7§(param1:Event) : void
      {
         this.§]4§(param1.target as §;=§);
      }
      
      public function get §+!%§() : Number
      {
         return this.§^! §;
      }
   }
}
