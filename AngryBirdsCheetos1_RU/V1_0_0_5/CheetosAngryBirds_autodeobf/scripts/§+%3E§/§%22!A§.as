package §+>§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §"!A§ implements §=!E§
   {
       
      
      private var §,v§:Vector.<§=!E§>;
      
      private var §=_§:Number;
      
      private var §<S§:Boolean = false;
      
      private var §!!!§:Number = 1.0;
      
      public function §"!A§()
      {
         super();
         this.§=_§ = 0;
         this.§,v§ = new Vector.<§=!E§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§!!!§ = param1;
      }
      
      public function add(param1:§=!E§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§,v§.indexOf(param1) == -1)
         {
            this.§,v§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§7W§,this.§8p§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§<S§ = param1;
      }
      
      public function §6!J§(param1:§=!E§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§,v§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§,v§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§7W§,this.§8p§);
            }
         }
      }
      
      public function §`6§(param1:Object) : void
      {
         var _loc4_:§+t§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§,v§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§,v§[_loc3_] as §+t§) && _loc4_.target == param1)
            {
               this.§,v§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §%n§() : void
      {
         this.§,v§.length = 0;
      }
      
      public function §#8§(param1:Function, param2:Number, ... rest) : § >§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§ >§ = new § >§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§<S§)
         {
            return;
         }
         param1 *= this.§!!!§;
         this.§=_§ += param1;
         if(this.§,v§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§,v§.length;
         var _loc3_:Vector.<§=!E§> = this.§,v§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §8p§(param1:Event) : void
      {
         this.§6!J§(param1.target as §=!E§);
      }
      
      public function get §if §() : Number
      {
         return this.§=_§;
      }
   }
}
