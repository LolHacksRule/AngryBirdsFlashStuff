package §8!1§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §3!`§ implements § _§
   {
       
      
      private var §1!'§:Vector.<§ _§>;
      
      private var §=§:Number;
      
      private var §<!T§:Boolean = false;
      
      private var §%S§:Number = 1.0;
      
      public function §3!`§()
      {
         super();
         this.§=§ = 0;
         this.§1!'§ = new Vector.<§ _§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§%S§ = param1;
      }
      
      public function add(param1:§ _§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§1!'§.indexOf(param1) == -1)
         {
            this.§1!'§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§?!E§,this.§6!]§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§<!T§ = param1;
      }
      
      public function §"8§(param1:§ _§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§1!'§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§1!'§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§?!E§,this.§6!]§);
            }
         }
      }
      
      public function §<!]§(param1:Object) : void
      {
         var _loc4_:§]!'§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§1!'§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§1!'§[_loc3_] as §]!'§) && _loc4_.target == param1)
            {
               this.§1!'§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §?!T§() : void
      {
         this.§1!'§.length = 0;
      }
      
      public function §^!'§(param1:Function, param2:Number, ... rest) : §1!-§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§1!-§ = new §1!-§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§<!T§)
         {
            return;
         }
         param1 *= this.§%S§;
         this.§=§ += param1;
         if(this.§1!'§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§1!'§.length;
         var _loc3_:Vector.<§ _§> = this.§1!'§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §6!]§(param1:Event) : void
      {
         this.§"8§(param1.target as § _§);
      }
      
      public function get §5! §() : Number
      {
         return this.§=§;
      }
   }
}
