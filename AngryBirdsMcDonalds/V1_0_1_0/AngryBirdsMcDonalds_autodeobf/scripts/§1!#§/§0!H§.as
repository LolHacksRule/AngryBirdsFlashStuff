package §1!#§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §0!H§ implements §&A§
   {
       
      
      private var §+!B§:Vector.<§&A§>;
      
      private var §4!o§:Number;
      
      private var §-!'§:Boolean = false;
      
      private var §5!h§:Number = 1.0;
      
      public function §0!H§()
      {
         super();
         this.§4!o§ = 0;
         this.§+!B§ = new Vector.<§&A§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§5!h§ = param1;
      }
      
      public function add(param1:§&A§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§+!B§.indexOf(param1) == -1)
         {
            this.§+!B§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§9Q§,this.§7!Y§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§-!'§ = param1;
      }
      
      public function § !B§(param1:§&A§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§+!B§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§+!B§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§9Q§,this.§7!Y§);
            }
         }
      }
      
      public function §2!G§(param1:Object) : void
      {
         var _loc4_:§-T§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§+!B§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§+!B§[_loc3_] as §-T§) && _loc4_.target == param1)
            {
               this.§+!B§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §2>§() : void
      {
         this.§+!B§.length = 0;
      }
      
      public function §#T§(param1:Function, param2:Number, ... rest) : §#U§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§#U§ = new §#U§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§-!'§)
         {
            return;
         }
         param1 *= this.§5!h§;
         this.§4!o§ += param1;
         if(this.§+!B§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§+!B§.length;
         var _loc3_:Vector.<§&A§> = this.§+!B§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §7!Y§(param1:Event) : void
      {
         this.§ !B§(param1.target as §&A§);
      }
      
      public function get §4!b§() : Number
      {
         return this.§4!o§;
      }
   }
}
