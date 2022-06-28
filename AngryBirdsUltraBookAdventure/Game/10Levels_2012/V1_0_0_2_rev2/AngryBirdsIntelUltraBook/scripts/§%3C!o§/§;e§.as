package §<!o§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §;e§ implements §8!h§
   {
       
      
      private var §;Y§:Vector.<§8!h§>;
      
      private var §5Y§:Number;
      
      private var § D§:Boolean = false;
      
      private var §5y§:Number = 1.0;
      
      public function §;e§()
      {
         super();
         this.§5Y§ = 0;
         this.§;Y§ = new Vector.<§8!h§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§5y§ = param1;
      }
      
      public function add(param1:§8!h§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§;Y§.indexOf(param1) == -1)
         {
            this.§;Y§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§]!%§,this.§'J§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§ D§ = param1;
      }
      
      public function §4!g§(param1:§8!h§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§;Y§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§;Y§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§]!%§,this.§'J§);
            }
         }
      }
      
      public function §??§(param1:Object) : void
      {
         var _loc4_:§=!A§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§;Y§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§;Y§[_loc3_] as §=!A§) && _loc4_.target == param1)
            {
               this.§;Y§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §]!I§() : void
      {
         this.§;Y§.length = 0;
      }
      
      public function §>s§(param1:Function, param2:Number, ... rest) : §!!Z§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§!!Z§ = new §!!Z§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§ D§)
         {
            return;
         }
         param1 *= this.§5y§;
         this.§5Y§ += param1;
         if(this.§;Y§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§;Y§.length;
         var _loc3_:Vector.<§8!h§> = this.§;Y§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §'J§(param1:Event) : void
      {
         this.§4!g§(param1.target as §8!h§);
      }
      
      public function get §8!%§() : Number
      {
         return this.§5Y§;
      }
   }
}
