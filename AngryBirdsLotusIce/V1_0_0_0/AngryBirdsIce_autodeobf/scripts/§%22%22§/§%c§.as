package §""§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §%c§ implements §"!A§
   {
       
      
      private var §68§:Vector.<§"!A§>;
      
      private var §[d§:Number;
      
      private var §2A§:Boolean = false;
      
      private var §&!A§:Number = 1.0;
      
      public function §%c§()
      {
         super();
         this.§[d§ = 0;
         this.§68§ = new Vector.<§"!A§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§&!A§ = param1;
      }
      
      public function add(param1:§"!A§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§68§.indexOf(param1) == -1)
         {
            this.§68§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§=O§,this.§3!?§);
            }
         }
      }
      
      public function set §;!A§(param1:Boolean) : void
      {
         this.§2A§ = param1;
      }
      
      public function §1h§(param1:§"!A§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§68§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§68§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§=O§,this.§3!?§);
            }
         }
      }
      
      public function §8X§(param1:Object) : void
      {
         var _loc4_:§3!0§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§68§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§68§[_loc3_] as §3!0§) && _loc4_.target == param1)
            {
               this.§68§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §3q§() : void
      {
         this.§68§.length = 0;
      }
      
      public function §[F§(param1:Function, param2:Number, ... rest) : §<!"§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§<!"§ = new §<!"§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§2A§)
         {
            return;
         }
         param1 *= this.§&!A§;
         this.§[d§ += param1;
         if(this.§68§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§68§.length;
         var _loc3_:Vector.<§"!A§> = this.§68§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §3!?§(param1:Event) : void
      {
         this.§1h§(param1.target as §"!A§);
      }
      
      public function get §?8§() : Number
      {
         return this.§[d§;
      }
   }
}
