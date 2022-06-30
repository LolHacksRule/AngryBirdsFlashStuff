package §;!+§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §7%§ implements §?d§
   {
       
      
      private var §&!3§:Vector.<§?d§>;
      
      private var §+!"§:Number;
      
      private var §@@§:Boolean = false;
      
      private var §=v§:Number = 1.0;
      
      public function §7%§()
      {
         super();
         this.§+!"§ = 0;
         this.§&!3§ = new Vector.<§?d§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§=v§ = param1;
      }
      
      public function add(param1:§?d§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§&!3§.indexOf(param1) == -1)
         {
            this.§&!3§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§4f§,this.§#'§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§@@§ = param1;
      }
      
      public function §6h§(param1:§?d§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§&!3§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§&!3§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§4f§,this.§#'§);
            }
         }
      }
      
      public function §0Z§(param1:Object) : void
      {
         var _loc4_:§,!a§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§&!3§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§&!3§[_loc3_] as §,!a§) && _loc4_.target == param1)
            {
               this.§&!3§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §%§() : void
      {
         this.§&!3§.length = 0;
      }
      
      public function §5x§(param1:Function, param2:Number, ... rest) : §2!Y§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§2!Y§ = new §2!Y§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§@@§)
         {
            return;
         }
         param1 *= this.§=v§;
         this.§+!"§ += param1;
         if(this.§&!3§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§&!3§.length;
         var _loc3_:Vector.<§?d§> = this.§&!3§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §#'§(param1:Event) : void
      {
         this.§6h§(param1.target as §?d§);
      }
      
      public function get §8!f§() : Number
      {
         return this.§+!"§;
      }
   }
}
