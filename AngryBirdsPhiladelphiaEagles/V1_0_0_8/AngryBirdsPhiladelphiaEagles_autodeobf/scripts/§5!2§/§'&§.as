package §5!2§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §'&§ implements §5>§
   {
       
      
      private var §<w§:Vector.<§5>§>;
      
      private var §if§:Number;
      
      private var §^%§:Boolean = false;
      
      private var §2!P§:Number = 1.0;
      
      public function §'&§()
      {
         super();
         this.§if§ = 0;
         this.§<w§ = new Vector.<§5>§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§2!P§ = param1;
      }
      
      public function add(param1:§5>§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§<w§.indexOf(param1) == -1)
         {
            this.§<w§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§>r§,this.§,q§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§^%§ = param1;
      }
      
      public function §@!"§(param1:§5>§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§<w§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§<w§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§>r§,this.§,q§);
            }
         }
      }
      
      public function §;!+§(param1:Object) : void
      {
         var _loc4_:§break§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§<w§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§<w§[_loc3_] as §break§) && _loc4_.target == param1)
            {
               this.§<w§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §"F§() : void
      {
         this.§<w§.length = 0;
      }
      
      public function §=W§(param1:Function, param2:Number, ... rest) : §+k§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§+k§ = new §+k§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§^%§)
         {
            return;
         }
         param1 *= this.§2!P§;
         this.§if§ += param1;
         if(this.§<w§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§<w§.length;
         var _loc3_:Vector.<§5>§> = this.§<w§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §,q§(param1:Event) : void
      {
         this.§@!"§(param1.target as §5>§);
      }
      
      public function get §+G§() : Number
      {
         return this.§if§;
      }
   }
}
