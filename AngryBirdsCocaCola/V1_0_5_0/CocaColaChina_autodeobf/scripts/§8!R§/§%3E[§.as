package §8!R§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §>[§ implements §8$§
   {
       
      
      private var §<!4§:Vector.<§8$§>;
      
      private var §,!a§:Number;
      
      private var §4!c§:Boolean = false;
      
      private var §%a§:Number = 1.0;
      
      public function §>[§()
      {
         super();
         this.§,!a§ = 0;
         this.§<!4§ = new Vector.<§8$§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§%a§ = param1;
      }
      
      public function add(param1:§8$§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§<!4§.indexOf(param1) == -1)
         {
            this.§<!4§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§?!V§,this.§%!R§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§4!c§ = param1;
      }
      
      public function §`!§(param1:§8$§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§<!4§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§<!4§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§?!V§,this.§%!R§);
            }
         }
      }
      
      public function §<d§(param1:Object) : void
      {
         var _loc4_:§^I§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§<!4§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§<!4§[_loc3_] as §^I§) && _loc4_.target == param1)
            {
               this.§<!4§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §7"§() : void
      {
         this.§<!4§.length = 0;
      }
      
      public function §+!O§(param1:Function, param2:Number, ... rest) : §#%§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§#%§ = new §#%§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§4!c§)
         {
            return;
         }
         param1 *= this.§%a§;
         this.§,!a§ += param1;
         if(this.§<!4§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§<!4§.length;
         var _loc3_:Vector.<§8$§> = this.§<!4§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §%!R§(param1:Event) : void
      {
         this.§`!§(param1.target as §8$§);
      }
      
      public function get §#!;§() : Number
      {
         return this.§,!a§;
      }
   }
}
