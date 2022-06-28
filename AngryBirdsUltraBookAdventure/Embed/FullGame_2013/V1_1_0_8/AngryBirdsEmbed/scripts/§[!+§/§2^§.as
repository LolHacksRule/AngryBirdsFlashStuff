package §[!+§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §2^§ implements §"N§
   {
       
      
      private var §82§:Vector.<§"N§>;
      
      private var §7h§:Number;
      
      private var §in §:Boolean = false;
      
      private var §5!G§:Number = 1.0;
      
      public function §2^§()
      {
         super();
         this.§7h§ = 0;
         this.§82§ = new Vector.<§"N§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§5!G§ = param1;
      }
      
      public function add(param1:§"N§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§82§.indexOf(param1) == -1)
         {
            this.§82§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§'D§,this.§5U§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§in § = param1;
      }
      
      public function §<!A§(param1:§"N§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§82§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§82§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§'D§,this.§5U§);
            }
         }
      }
      
      public function §8&§(param1:Object) : void
      {
         var _loc4_:§3O§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§82§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§82§[_loc3_] as §3O§) && _loc4_.target == param1)
            {
               this.§82§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §74§() : void
      {
         this.§82§.length = 0;
      }
      
      public function §0!H§(param1:Function, param2:Number, ... rest) : §9F§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§9F§ = new §9F§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§in §)
         {
            return;
         }
         param1 *= this.§5!G§;
         this.§7h§ += param1;
         if(this.§82§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§82§.length;
         var _loc3_:Vector.<§"N§> = this.§82§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §5U§(param1:Event) : void
      {
         this.§<!A§(param1.target as §"N§);
      }
      
      public function get § u§() : Number
      {
         return this.§7h§;
      }
   }
}
