package §^n§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class Juggler implements §"!>§
   {
       
      
      private var §4g§:Vector.<§"!>§>;
      
      private var §"!!§:Number;
      
      private var §^^§:Boolean = false;
      
      private var §-]§:Number = 1.0;
      
      public function Juggler()
      {
         super();
         this.§"!!§ = 0;
         this.§4g§ = new Vector.<§"!>§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§-]§ = param1;
      }
      
      public function add(param1:§"!>§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§4g§.indexOf(param1) == -1)
         {
            this.§4g§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§ Z§,this.§&h§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§^^§ = param1;
      }
      
      public function §>2§(param1:§"!>§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§4g§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§4g§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§ Z§,this.§&h§);
            }
         }
      }
      
      public function §]8§(param1:Object) : void
      {
         var _loc4_:Tween = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§4g§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§4g§[_loc3_] as Tween;
            if(_loc4_ && _loc4_.target == param1)
            {
               this.§4g§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §>_§() : void
      {
         this.§4g§.length = 0;
      }
      
      public function §`N§(param1:Function, param2:Number, ... rest) : §`!!§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§`!!§ = new §`!!§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§^^§)
         {
            return;
         }
         param1 *= this.§-]§;
         this.§"!!§ += param1;
         if(this.§4g§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§4g§.length;
         var _loc3_:Vector.<§"!>§> = this.§4g§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §&h§(param1:Event) : void
      {
         this.§>2§(param1.target as §"!>§);
      }
      
      public function get §6!]§() : Number
      {
         return this.§"!!§;
      }
   }
}
