package §8H§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §2h§ implements §=b§
   {
       
      
      private var §3!F§:Vector.<§=b§>;
      
      private var §&#§:Number;
      
      private var §0!,§:Boolean = false;
      
      private var §-!2§:Number = 1.0;
      
      public function §2h§()
      {
         super();
         this.§&#§ = 0;
         this.§3!F§ = new Vector.<§=b§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§-!2§ = param1;
      }
      
      public function add(param1:§=b§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§3!F§.indexOf(param1) == -1)
         {
            this.§3!F§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§&^§,this.§!!>§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§0!,§ = param1;
      }
      
      public function §,+§(param1:§=b§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§3!F§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§3!F§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§&^§,this.§!!>§);
            }
         }
      }
      
      public function §3! §(param1:Object) : void
      {
         var _loc4_:§2!&§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§3!F§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§3!F§[_loc3_] as §2!&§) && _loc4_.target == param1)
            {
               this.§3!F§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §<w§() : void
      {
         this.§3!F§.length = 0;
      }
      
      public function §4T§(param1:Function, param2:Number, ... rest) : § var§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§ var§ = new § var§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§0!,§)
         {
            return;
         }
         param1 *= this.§-!2§;
         this.§&#§ += param1;
         if(this.§3!F§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§3!F§.length;
         var _loc3_:Vector.<§=b§> = this.§3!F§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §!!>§(param1:Event) : void
      {
         this.§,+§(param1.target as §=b§);
      }
      
      public function get §-g§() : Number
      {
         return this.§&#§;
      }
   }
}
