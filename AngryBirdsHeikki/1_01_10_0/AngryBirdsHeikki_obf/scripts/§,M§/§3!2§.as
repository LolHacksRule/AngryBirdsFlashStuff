package §,M§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §3!2§ implements §6!G§
   {
       
      
      private var §7@§:Vector.<§6!G§>;
      
      private var §=u§:Number;
      
      private var §6Q§:Boolean = false;
      
      private var §4r§:Number = 1.0;
      
      public function §3!2§()
      {
         super();
         this.§=u§ = 0;
         this.§7@§ = new Vector.<§6!G§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§4r§ = param1;
      }
      
      public function add(param1:§6!G§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§7@§.indexOf(param1) == -1)
         {
            this.§7@§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§9Y§,this.§ 6§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§6Q§ = param1;
      }
      
      public function §8!8§(param1:§6!G§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§7@§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§7@§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§9Y§,this.§ 6§);
            }
         }
      }
      
      public function §&!B§(param1:Object) : void
      {
         var _loc4_:§@-§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§7@§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§7@§[_loc3_] as §@-§) && _loc4_.target == param1)
            {
               this.§7@§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §5!_§() : void
      {
         this.§7@§.length = 0;
      }
      
      public function §^G§(param1:Function, param2:Number, ... rest) : § #§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§ #§ = new § #§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§6Q§)
         {
            return;
         }
         param1 *= this.§4r§;
         this.§=u§ += param1;
         if(this.§7@§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§7@§.length;
         var _loc3_:Vector.<§6!G§> = this.§7@§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function § 6§(param1:Event) : void
      {
         this.§8!8§(param1.target as §6!G§);
      }
      
      public function get §?E§() : Number
      {
         return this.§=u§;
      }
   }
}
