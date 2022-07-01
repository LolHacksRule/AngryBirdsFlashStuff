package §%!7§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class § ]§ implements §1"4§
   {
       
      
      private var §!#§:Vector.<§1"4§>;
      
      private var §#!C§:Number;
      
      private var §8R§:Boolean = false;
      
      private var §;!3§:Number = 1.0;
      
      public function § ]§()
      {
         super();
         this.§#!C§ = 0;
         this.§!#§ = new Vector.<§1"4§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§;!3§ = param1;
      }
      
      public function add(param1:§1"4§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§!#§.indexOf(param1) == -1)
         {
            this.§!#§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§;J§,this.§>+§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§8R§ = param1;
      }
      
      public function §2!u§(param1:§1"4§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§!#§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§!#§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§;J§,this.§>+§);
            }
         }
      }
      
      public function §=§(param1:Object) : void
      {
         var _loc4_:§,!b§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§!#§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§!#§[_loc3_] as §,!b§) && _loc4_.target == param1)
            {
               this.§!#§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §^!&§() : void
      {
         this.§!#§.length = 0;
      }
      
      public function §="&§(param1:Function, param2:Number, ... rest) : §%""§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§%""§ = new §%""§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§8R§)
         {
            return;
         }
         param1 *= this.§;!3§;
         this.§#!C§ += param1;
         if(this.§!#§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§!#§.length;
         var _loc3_:Vector.<§1"4§> = this.§!#§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §>+§(param1:Event) : void
      {
         this.§2!u§(param1.target as §1"4§);
      }
      
      public function get §4D§() : Number
      {
         return this.§#!C§;
      }
   }
}
