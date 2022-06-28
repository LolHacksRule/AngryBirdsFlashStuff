package §_-Nq§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §_-RO§ implements §_-eI§
   {
       
      
      private var §_-Tx§:Vector.<§_-eI§>;
      
      private var §_-je§:Number;
      
      private var §_-A5§:Boolean = false;
      
      private var §_-0D2§:Number = 1.0;
      
      public function §_-RO§()
      {
         super();
         this.§_-je§ = 0;
         this.§_-Tx§ = new Vector.<§_-eI§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§_-0D2§ = param1;
      }
      
      public function add(param1:§_-eI§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§_-Tx§.indexOf(param1) == -1)
         {
            this.§_-Tx§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§_-rC§,this.§_-qg§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§_-A5§ = param1;
      }
      
      public function §_-Ob§(param1:§_-eI§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§_-Tx§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§_-Tx§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§_-rC§,this.§_-qg§);
            }
         }
      }
      
      public function §_-FX§(param1:Object) : void
      {
         var _loc4_:§ for§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§_-Tx§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§_-Tx§[_loc3_] as § for§) && _loc4_.target == param1)
            {
               this.§_-Tx§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §_-Qn§() : void
      {
         this.§_-Tx§.length = 0;
      }
      
      public function §_-fX§(param1:Function, param2:Number, ... rest) : §_-K§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§_-K§ = new §_-K§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§_-A5§)
         {
            return;
         }
         param1 *= this.§_-0D2§;
         this.§_-je§ += param1;
         if(this.§_-Tx§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§_-Tx§.length;
         var _loc3_:Vector.<§_-eI§> = this.§_-Tx§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §_-qg§(param1:Event) : void
      {
         this.§_-Ob§(param1.target as §_-eI§);
      }
      
      public function get §_-0EP§() : Number
      {
         return this.§_-je§;
      }
   }
}
