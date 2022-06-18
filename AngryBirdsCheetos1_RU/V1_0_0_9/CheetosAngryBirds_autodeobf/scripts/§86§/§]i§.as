package §86§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §]i§ implements §>!J§
   {
       
      
      private var §0!7§:Vector.<§>!J§>;
      
      private var §66§:Number;
      
      private var §4!G§:Boolean = false;
      
      private var §0k§:Number = 1.0;
      
      public function §]i§()
      {
         super();
         this.§66§ = 0;
         this.§0!7§ = new Vector.<§>!J§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§0k§ = param1;
      }
      
      public function add(param1:§>!J§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§0!7§.indexOf(param1) == -1)
         {
            this.§0!7§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§,V§,this.§5!H§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§4!G§ = param1;
      }
      
      public function §]2§(param1:§>!J§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§0!7§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§0!7§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§,V§,this.§5!H§);
            }
         }
      }
      
      public function §`,§(param1:Object) : void
      {
         var _loc4_:§!![§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§0!7§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§0!7§[_loc3_] as §!![§) && _loc4_.target == param1)
            {
               this.§0!7§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §&!R§() : void
      {
         this.§0!7§.length = 0;
      }
      
      public function §9!`§(param1:Function, param2:Number, ... rest) : §!!;§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§!!;§ = new §!!;§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§4!G§)
         {
            return;
         }
         param1 *= this.§0k§;
         this.§66§ += param1;
         if(this.§0!7§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§0!7§.length;
         var _loc3_:Vector.<§>!J§> = this.§0!7§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §5!H§(param1:Event) : void
      {
         this.§]2§(param1.target as §>!J§);
      }
      
      public function get §'n§() : Number
      {
         return this.§66§;
      }
   }
}
