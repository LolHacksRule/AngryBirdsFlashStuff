package §?h§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §]!=§ implements §3!&§
   {
       
      
      private var §3!`§:Vector.<§3!&§>;
      
      private var §8!C§:Number;
      
      private var §7!e§:Boolean = false;
      
      private var §8!#§:Number = 1.0;
      
      public function §]!=§()
      {
         super();
         this.§8!C§ = 0;
         this.§3!`§ = new Vector.<§3!&§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§8!#§ = param1;
      }
      
      public function add(param1:§3!&§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§3!`§.indexOf(param1) == -1)
         {
            this.§3!`§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§5!3§,this.§5O§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§7!e§ = param1;
      }
      
      public function §1!P§(param1:§3!&§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§3!`§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§3!`§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§5!3§,this.§5O§);
            }
         }
      }
      
      public function §75§(param1:Object) : void
      {
         var _loc4_:§#G§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§3!`§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§3!`§[_loc3_] as §#G§) && _loc4_.target == param1)
            {
               this.§3!`§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §8S§() : void
      {
         this.§3!`§.length = 0;
      }
      
      public function §4!F§(param1:Function, param2:Number, ... rest) : §`!7§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§`!7§ = new §`!7§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§7!e§)
         {
            return;
         }
         param1 *= this.§8!#§;
         this.§8!C§ += param1;
         if(this.§3!`§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§3!`§.length;
         var _loc3_:Vector.<§3!&§> = this.§3!`§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §5O§(param1:Event) : void
      {
         this.§1!P§(param1.target as §3!&§);
      }
      
      public function get §7!M§() : Number
      {
         return this.§8!C§;
      }
   }
}
