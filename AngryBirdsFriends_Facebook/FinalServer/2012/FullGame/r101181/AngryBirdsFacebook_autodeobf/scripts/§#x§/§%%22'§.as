package §#x§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §%"'§ implements §2n§
   {
       
      
      private var §=",§:Vector.<§2n§>;
      
      private var §0!_§:Number;
      
      private var §^!C§:Boolean = false;
      
      private var § 1§:Number = 1.0;
      
      public function §%"'§()
      {
         super();
         this.§0!_§ = 0;
         this.§=",§ = new Vector.<§2n§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§ 1§ = param1;
      }
      
      public function add(param1:§2n§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§=",§.indexOf(param1) == -1)
         {
            this.§=",§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§@!e§,this.§ S§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§^!C§ = param1;
      }
      
      public function §<"<§(param1:§2n§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§=",§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§=",§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§@!e§,this.§ S§);
            }
         }
      }
      
      public function §4-§(param1:Object) : void
      {
         var _loc4_:§?!n§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§=",§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§=",§[_loc3_] as §?!n§) && _loc4_.target == param1)
            {
               this.§=",§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §6O§() : void
      {
         this.§=",§.length = 0;
      }
      
      public function §9!I§(param1:Function, param2:Number, ... rest) : §6!N§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§6!N§ = new §6!N§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§^!C§)
         {
            return;
         }
         param1 *= this.§ 1§;
         this.§0!_§ += param1;
         if(this.§=",§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§=",§.length;
         var _loc3_:Vector.<§2n§> = this.§=",§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function § S§(param1:Event) : void
      {
         this.§<"<§(param1.target as §2n§);
      }
      
      public function get §while§() : Number
      {
         return this.§0!_§;
      }
   }
}
