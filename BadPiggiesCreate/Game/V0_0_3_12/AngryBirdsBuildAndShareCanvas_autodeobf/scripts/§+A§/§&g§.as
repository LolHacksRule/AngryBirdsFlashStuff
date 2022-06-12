package §+A§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §&g§ implements §,T§
   {
       
      
      private var §7!q§:Vector.<§,T§>;
      
      private var §-!l§:Number;
      
      private var §2x§:Boolean = false;
      
      private var §"Y§:Number = 1.0;
      
      public function §&g§()
      {
         super();
         this.§-!l§ = 0;
         this.§7!q§ = new Vector.<§,T§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§"Y§ = param1;
      }
      
      public function add(param1:§,T§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§7!q§.indexOf(param1) == -1)
         {
            this.§7!q§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§<">§,this.§>!w§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§2x§ = param1;
      }
      
      public function §^!2§(param1:§,T§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§7!q§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§7!q§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§<">§,this.§>!w§);
            }
         }
      }
      
      public function §]8§(param1:Object) : void
      {
         var _loc4_:§8!t§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§7!q§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§7!q§[_loc3_] as §8!t§) && _loc4_.target == param1)
            {
               this.§7!q§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §!!-§() : void
      {
         this.§7!q§.length = 0;
      }
      
      public function §6!t§(param1:Function, param2:Number, ... rest) : §@!h§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§@!h§ = new §@!h§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§2x§)
         {
            return;
         }
         param1 *= this.§"Y§;
         this.§-!l§ += param1;
         if(this.§7!q§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§7!q§.length;
         var _loc3_:Vector.<§,T§> = this.§7!q§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §>!w§(param1:Event) : void
      {
         this.§^!2§(param1.target as §,T§);
      }
      
      public function get §`k§() : Number
      {
         return this.§-!l§;
      }
   }
}
