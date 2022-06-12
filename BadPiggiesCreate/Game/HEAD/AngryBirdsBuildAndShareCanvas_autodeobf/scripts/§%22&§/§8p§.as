package §"&§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §8p§ implements §=q§
   {
       
      
      private var §9n§:Vector.<§=q§>;
      
      private var §7!`§:Number;
      
      private var §`!-§:Boolean = false;
      
      private var §?!B§:Number = 1.0;
      
      public function §8p§()
      {
         super();
         this.§7!`§ = 0;
         this.§9n§ = new Vector.<§=q§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§?!B§ = param1;
      }
      
      public function add(param1:§=q§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§9n§.indexOf(param1) == -1)
         {
            this.§9n§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§'m§,this.§%c§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§`!-§ = param1;
      }
      
      public function §!!Z§(param1:§=q§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§9n§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§9n§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§'m§,this.§%c§);
            }
         }
      }
      
      public function §5T§(param1:Object) : void
      {
         var _loc4_:§ !>§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§9n§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§9n§[_loc3_] as § !>§) && _loc4_.target == param1)
            {
               this.§9n§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §-n§() : void
      {
         this.§9n§.length = 0;
      }
      
      public function § 3§(param1:Function, param2:Number, ... rest) : §5!k§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§5!k§ = new §5!k§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§`!-§)
         {
            return;
         }
         param1 *= this.§?!B§;
         this.§7!`§ += param1;
         if(this.§9n§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§9n§.length;
         var _loc3_:Vector.<§=q§> = this.§9n§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §%c§(param1:Event) : void
      {
         this.§!!Z§(param1.target as §=q§);
      }
      
      public function get §&"-§() : Number
      {
         return this.§7!`§;
      }
   }
}
