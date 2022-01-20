package §-P§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §7i§ implements §&s§
   {
       
      
      private var §@'§:Vector.<§&s§>;
      
      private var §`C§:Number;
      
      private var §+!=§:Boolean = false;
      
      private var §7l§:Number = 1.0;
      
      public function §7i§()
      {
         super();
         this.§`C§ = 0;
         this.§@'§ = new Vector.<§&s§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§7l§ = param1;
      }
      
      public function add(param1:§&s§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§@'§.indexOf(param1) == -1)
         {
            this.§@'§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§?i§,this.§#!D§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§+!=§ = param1;
      }
      
      public function §&0§(param1:§&s§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§@'§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§@'§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§?i§,this.§#!D§);
            }
         }
      }
      
      public function §1!T§(param1:Object) : void
      {
         var _loc4_:§,"§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§@'§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§@'§[_loc3_] as §,"§) && _loc4_.target == param1)
            {
               this.§@'§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §^b§() : void
      {
         this.§@'§.length = 0;
      }
      
      public function §+!b§(param1:Function, param2:Number, ... rest) : §"!O§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§"!O§ = new §"!O§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§+!=§)
         {
            return;
         }
         param1 *= this.§7l§;
         this.§`C§ += param1;
         if(this.§@'§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§@'§.length;
         var _loc3_:Vector.<§&s§> = this.§@'§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §#!D§(param1:Event) : void
      {
         this.§&0§(param1.target as §&s§);
      }
      
      public function get §>!V§() : Number
      {
         return this.§`C§;
      }
   }
}
