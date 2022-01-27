package §+!Q§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §`l§ implements §;!S§
   {
       
      
      private var §0Y§:Vector.<§;!S§>;
      
      private var §9!+§:Number;
      
      private var §@>§:Boolean = false;
      
      private var §&w§:Number = 1.0;
      
      public function §`l§()
      {
         super();
         this.§9!+§ = 0;
         this.§0Y§ = new Vector.<§;!S§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§&w§ = param1;
      }
      
      public function add(param1:§;!S§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§0Y§.indexOf(param1) == -1)
         {
            this.§0Y§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§[!y§,this.§%!d§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§@>§ = param1;
      }
      
      public function §9!>§(param1:§;!S§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§0Y§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§0Y§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§[!y§,this.§%!d§);
            }
         }
      }
      
      public function §>!&§(param1:Object) : void
      {
         var _loc4_:§8q§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§0Y§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§0Y§[_loc3_] as §8q§) && _loc4_.target == param1)
            {
               this.§0Y§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §=@§() : void
      {
         this.§0Y§.length = 0;
      }
      
      public function §5!;§(param1:Function, param2:Number, ... rest) : §!"H§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§!"H§ = new §!"H§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§@>§)
         {
            return;
         }
         param1 *= this.§&w§;
         this.§9!+§ += param1;
         if(this.§0Y§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§0Y§.length;
         var _loc3_:Vector.<§;!S§> = this.§0Y§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §%!d§(param1:Event) : void
      {
         this.§9!>§(param1.target as §;!S§);
      }
      
      public function get §5j§() : Number
      {
         return this.§9!+§;
      }
   }
}
