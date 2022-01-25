package §true §
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §]!'§ implements §3t§
   {
       
      
      private var §4]§:Vector.<§3t§>;
      
      private var §'!b§:Number;
      
      private var §=!P§:Boolean = false;
      
      private var § !6§:Number = 1.0;
      
      public function §]!'§()
      {
         super();
         this.§'!b§ = 0;
         this.§4]§ = new Vector.<§3t§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§ !6§ = param1;
      }
      
      public function add(param1:§3t§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§4]§.indexOf(param1) == -1)
         {
            this.§4]§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§#3§,this.§#o§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§=!P§ = param1;
      }
      
      public function §%!X§(param1:§3t§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§4]§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§4]§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§#3§,this.§#o§);
            }
         }
      }
      
      public function §^M§(param1:Object) : void
      {
         var _loc4_:§@z§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§4]§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§4]§[_loc3_] as §@z§) && _loc4_.target == param1)
            {
               this.§4]§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §8=§() : void
      {
         this.§4]§.length = 0;
      }
      
      public function §1[§(param1:Function, param2:Number, ... rest) : §5!p§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§5!p§ = new §5!p§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§=!P§)
         {
            return;
         }
         param1 *= this.§ !6§;
         this.§'!b§ += param1;
         if(this.§4]§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§4]§.length;
         var _loc3_:Vector.<§3t§> = this.§4]§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §#o§(param1:Event) : void
      {
         this.§%!X§(param1.target as §3t§);
      }
      
      public function get §%!%§() : Number
      {
         return this.§'!b§;
      }
   }
}
