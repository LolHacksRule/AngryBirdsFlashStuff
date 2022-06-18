package §,!5§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §5§ implements §"e§
   {
       
      
      private var § !,§:Vector.<§"e§>;
      
      private var §5!3§:Number;
      
      private var §"y§:Boolean = false;
      
      private var §"!§:Number = 1.0;
      
      public function §5§()
      {
         super();
         this.§5!3§ = 0;
         this.§ !,§ = new Vector.<§"e§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§"!§ = param1;
      }
      
      public function add(param1:§"e§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§ !,§.indexOf(param1) == -1)
         {
            this.§ !,§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§%O§,this.§5v§);
            }
         }
      }
      
      public function set §;P§(param1:Boolean) : void
      {
         this.§"y§ = param1;
      }
      
      public function §&d§(param1:§"e§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§ !,§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§ !,§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§%O§,this.§5v§);
            }
         }
      }
      
      public function §3!A§(param1:Object) : void
      {
         var _loc4_:§>!?§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§ !,§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§ !,§[_loc3_] as §>!?§) && _loc4_.target == param1)
            {
               this.§ !,§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §%!&§() : void
      {
         this.§ !,§.length = 0;
      }
      
      public function § p§(param1:Function, param2:Number, ... rest) : §`B§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§`B§ = new §`B§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§"y§)
         {
            return;
         }
         param1 *= this.§"!§;
         this.§5!3§ += param1;
         if(this.§ !,§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§ !,§.length;
         var _loc3_:Vector.<§"e§> = this.§ !,§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §5v§(param1:Event) : void
      {
         this.§&d§(param1.target as §"e§);
      }
      
      public function get §0K§() : Number
      {
         return this.§5!3§;
      }
   }
}
