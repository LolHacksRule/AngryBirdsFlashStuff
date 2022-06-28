package §2!9§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class Juggler implements §"m§
   {
       
      
      private var §8c§:Vector.<§"m§>;
      
      private var §&z§:Number;
      
      private var §"!&§:Boolean = false;
      
      private var §8%§:Number = 1.0;
      
      public function Juggler()
      {
         super();
         this.§&z§ = 0;
         this.§8c§ = new Vector.<§"m§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§8%§ = param1;
      }
      
      public function add(param1:§"m§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§8c§.indexOf(param1) == -1)
         {
            this.§8c§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§-!&§,this.§3%§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§"!&§ = param1;
      }
      
      public function §+K§(param1:§"m§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§8c§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§8c§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§-!&§,this.§3%§);
            }
         }
      }
      
      public function §%w§(param1:Object) : void
      {
         var _loc4_:Tween = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§8c§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§8c§[_loc3_] as Tween;
            if(_loc4_ && _loc4_.target == param1)
            {
               this.§8c§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §7f§() : void
      {
         this.§8c§.length = 0;
      }
      
      public function §4d§(param1:Function, param2:Number, ... rest) : §=G§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§=G§ = new §=G§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§"!&§)
         {
            return;
         }
         param1 *= this.§8%§;
         this.§&z§ += param1;
         if(this.§8c§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§8c§.length;
         var _loc3_:Vector.<§"m§> = this.§8c§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §3%§(param1:Event) : void
      {
         this.§+K§(param1.target as §"m§);
      }
      
      public function get §<!,§() : Number
      {
         return this.§&z§;
      }
   }
}
