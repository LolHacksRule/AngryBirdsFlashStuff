package §%x§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §=!U§ implements §^!5§
   {
       
      
      private var §1!4§:Vector.<§^!5§>;
      
      private var §@!&§:Number;
      
      private var §3!f§:Boolean = false;
      
      private var §7Z§:Number = 1.0;
      
      public function §=!U§()
      {
         super();
         this.§@!&§ = 0;
         this.§1!4§ = new Vector.<§^!5§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§7Z§ = param1;
      }
      
      public function add(param1:§^!5§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§1!4§.indexOf(param1) == -1)
         {
            this.§1!4§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§@!i§,this.§ V§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§3!f§ = param1;
      }
      
      public function §22§(param1:§^!5§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§1!4§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§1!4§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§@!i§,this.§ V§);
            }
         }
      }
      
      public function §^1§(param1:Object) : void
      {
         var _loc4_:§"^§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§1!4§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§1!4§[_loc3_] as §"^§) && _loc4_.target == param1)
            {
               this.§1!4§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §8!O§() : void
      {
         this.§1!4§.length = 0;
      }
      
      public function §^u§(param1:Function, param2:Number, ... rest) : §&J§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§&J§ = new §&J§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§3!f§)
         {
            return;
         }
         param1 *= this.§7Z§;
         this.§@!&§ += param1;
         if(this.§1!4§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§1!4§.length;
         var _loc3_:Vector.<§^!5§> = this.§1!4§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function § V§(param1:Event) : void
      {
         this.§22§(param1.target as §^!5§);
      }
      
      public function get §0t§() : Number
      {
         return this.§@!&§;
      }
   }
}
