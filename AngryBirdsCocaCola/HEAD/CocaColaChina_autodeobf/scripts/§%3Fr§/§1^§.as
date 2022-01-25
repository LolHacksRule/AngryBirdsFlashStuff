package §?r§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §1^§ implements §`C§
   {
       
      
      private var §,!U§:Vector.<§`C§>;
      
      private var §+5§:Number;
      
      private var §<!C§:Boolean = false;
      
      private var §1u§:Number = 1.0;
      
      public function §1^§()
      {
         super();
         this.§+5§ = 0;
         this.§,!U§ = new Vector.<§`C§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§1u§ = param1;
      }
      
      public function add(param1:§`C§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§,!U§.indexOf(param1) == -1)
         {
            this.§,!U§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§6=§,this.§2! §);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§<!C§ = param1;
      }
      
      public function §+Z§(param1:§`C§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§,!U§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§,!U§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§6=§,this.§2! §);
            }
         }
      }
      
      public function §1l§(param1:Object) : void
      {
         var _loc4_:§,g§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§,!U§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§,!U§[_loc3_] as §,g§) && _loc4_.target == param1)
            {
               this.§,!U§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function final() : void
      {
         this.§,!U§.length = 0;
      }
      
      public function §%!0§(param1:Function, param2:Number, ... rest) : §finally§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§finally§ = new §finally§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§<!C§)
         {
            return;
         }
         param1 *= this.§1u§;
         this.§+5§ += param1;
         if(this.§,!U§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§,!U§.length;
         var _loc3_:Vector.<§`C§> = this.§,!U§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §2! §(param1:Event) : void
      {
         this.§+Z§(param1.target as §`C§);
      }
      
      public function get §16§() : Number
      {
         return this.§+5§;
      }
   }
}
