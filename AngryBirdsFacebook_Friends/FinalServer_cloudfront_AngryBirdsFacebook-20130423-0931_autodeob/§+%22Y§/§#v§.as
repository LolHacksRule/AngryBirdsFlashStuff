package §+"Y§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §#v§ implements §]g§
   {
       
      
      private var §@!Z§:Vector.<§]g§>;
      
      private var §[-§:Number;
      
      private var §[$§:Boolean = false;
      
      private var §?E§:Number = 1.0;
      
      public function §#v§()
      {
         super();
         this.§[-§ = 0;
         this.§@!Z§ = new Vector.<§]g§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§?E§ = param1;
      }
      
      public function add(param1:§]g§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§@!Z§.indexOf(param1) == -1)
         {
            this.§@!Z§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§'J§,this.§,!U§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§[$§ = param1;
      }
      
      public function § !V§(param1:§]g§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§@!Z§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§@!Z§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§'J§,this.§,!U§);
            }
         }
      }
      
      public function §0!L§(param1:Object) : void
      {
         var _loc4_:§4! § = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§@!Z§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§@!Z§[_loc3_] as §4! §) && _loc4_.target == param1)
            {
               this.§@!Z§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §=<§() : void
      {
         this.§@!Z§.length = 0;
      }
      
      public function §^=§(param1:Function, param2:Number, ... rest) : §'!]§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§'!]§ = new §'!]§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§[$§)
         {
            return;
         }
         param1 *= this.§?E§;
         this.§[-§ += param1;
         if(this.§@!Z§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§@!Z§.length;
         var _loc3_:Vector.<§]g§> = this.§@!Z§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §,!U§(param1:Event) : void
      {
         this.§ !V§(param1.target as §]g§);
      }
      
      public function get §5!i§() : Number
      {
         return this.§[-§;
      }
   }
}
