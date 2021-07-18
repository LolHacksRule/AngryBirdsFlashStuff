package §>!7§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §0![§ implements §`B§
   {
       
      
      private var §-`§:Vector.<§`B§>;
      
      private var §`"8§:Number;
      
      private var §%"&§:Boolean = false;
      
      private var §^§:Number = 1.0;
      
      public function §0![§()
      {
         super();
         this.§`"8§ = 0;
         this.§-`§ = new Vector.<§`B§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§^§ = param1;
      }
      
      public function add(param1:§`B§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§-`§.indexOf(param1) == -1)
         {
            this.§-`§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§^m§,this.§<y§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§%"&§ = param1;
      }
      
      public function §;T§(param1:§`B§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§-`§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§-`§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§^m§,this.§<y§);
            }
         }
      }
      
      public function §1D§(param1:Object) : void
      {
         var _loc4_:§#k§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§-`§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§-`§[_loc3_] as §#k§) && _loc4_.target == param1)
            {
               this.§-`§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §&""§() : void
      {
         this.§-`§.length = 0;
      }
      
      public function §[O§(param1:Function, param2:Number, ... rest) : §8"?§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§8"?§ = new §8"?§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§%"&§)
         {
            return;
         }
         param1 *= this.§^§;
         this.§`"8§ += param1;
         if(this.§-`§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§-`§.length;
         var _loc3_:Vector.<§`B§> = this.§-`§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §<y§(param1:Event) : void
      {
         this.§;T§(param1.target as §`B§);
      }
      
      public function get §'"G§() : Number
      {
         return this.§`"8§;
      }
   }
}
