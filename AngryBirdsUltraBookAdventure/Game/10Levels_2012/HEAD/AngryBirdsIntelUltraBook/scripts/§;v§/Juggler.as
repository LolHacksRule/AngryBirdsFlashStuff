package §;v§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class Juggler implements §!!8§
   {
       
      
      private var §!2§:Vector.<§!!8§>;
      
      private var §9%§:Number;
      
      private var §"^§:Boolean = false;
      
      private var §<,§:Number = 1.0;
      
      public function Juggler()
      {
         super();
         this.§9%§ = 0;
         this.§!2§ = new Vector.<§!!8§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§<,§ = param1;
      }
      
      public function add(param1:§!!8§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§!2§.indexOf(param1) == -1)
         {
            this.§!2§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§4P§,this.§6!j§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§"^§ = param1;
      }
      
      public function §[v§(param1:§!!8§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§!2§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§!2§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§4P§,this.§6!j§);
            }
         }
      }
      
      public function §^!_§(param1:Object) : void
      {
         var _loc4_:Tween = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§!2§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§!2§[_loc3_] as Tween;
            if(_loc4_ && _loc4_.target == param1)
            {
               this.§!2§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §"Y§() : void
      {
         this.§!2§.length = 0;
      }
      
      public function §2!P§(param1:Function, param2:Number, ... rest) : §0,§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§0,§ = new §0,§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§"^§)
         {
            return;
         }
         param1 *= this.§<,§;
         this.§9%§ += param1;
         if(this.§!2§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§!2§.length;
         var _loc3_:Vector.<§!!8§> = this.§!2§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §6!j§(param1:Event) : void
      {
         this.§[v§(param1.target as §!!8§);
      }
      
      public function get §1=§() : Number
      {
         return this.§9%§;
      }
   }
}
