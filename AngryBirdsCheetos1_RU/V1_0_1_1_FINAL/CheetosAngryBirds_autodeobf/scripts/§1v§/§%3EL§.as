package §1v§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §>L§ implements §,!Y§
   {
       
      
      private var §;1§:Vector.<§,!Y§>;
      
      private var §5]§:Number;
      
      private var §]c§:Boolean = false;
      
      private var §&k§:Number = 1.0;
      
      public function §>L§()
      {
         super();
         this.§5]§ = 0;
         this.§;1§ = new Vector.<§,!Y§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§&k§ = param1;
      }
      
      public function add(param1:§,!Y§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§;1§.indexOf(param1) == -1)
         {
            this.§;1§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§]T§,this.§;!Z§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§]c§ = param1;
      }
      
      public function §7!Y§(param1:§,!Y§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§;1§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§;1§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§]T§,this.§;!Z§);
            }
         }
      }
      
      public function §0!1§(param1:Object) : void
      {
         var _loc4_:§@4§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§;1§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§;1§[_loc3_] as §@4§) && _loc4_.target == param1)
            {
               this.§;1§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §%0§() : void
      {
         this.§;1§.length = 0;
      }
      
      public function §=!F§(param1:Function, param2:Number, ... rest) : § ?§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§ ?§ = new § ?§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§]c§)
         {
            return;
         }
         param1 *= this.§&k§;
         this.§5]§ += param1;
         if(this.§;1§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§;1§.length;
         var _loc3_:Vector.<§,!Y§> = this.§;1§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §;!Z§(param1:Event) : void
      {
         this.§7!Y§(param1.target as §,!Y§);
      }
      
      public function get §"!]§() : Number
      {
         return this.§5]§;
      }
   }
}
