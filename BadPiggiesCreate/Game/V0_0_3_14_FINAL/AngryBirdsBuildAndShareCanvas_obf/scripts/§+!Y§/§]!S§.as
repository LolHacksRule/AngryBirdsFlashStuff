package §+!Y§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §]!S§ implements §7!@§
   {
       
      
      private var §84§:Vector.<§7!@§>;
      
      private var §1"=§:Number;
      
      private var §93§:Boolean = false;
      
      private var §5!?§:Number = 1.0;
      
      public function §]!S§()
      {
         super();
         this.§1"=§ = 0;
         this.§84§ = new Vector.<§7!@§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§5!?§ = param1;
      }
      
      public function add(param1:§7!@§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§84§.indexOf(param1) == -1)
         {
            this.§84§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§^8§,this.§"P§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§93§ = param1;
      }
      
      public function §'!@§(param1:§7!@§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§84§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§84§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§^8§,this.§"P§);
            }
         }
      }
      
      public function §?!>§(param1:Object) : void
      {
         var _loc4_:§3!V§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§84§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§84§[_loc3_] as §3!V§) && _loc4_.target == param1)
            {
               this.§84§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §#!H§() : void
      {
         this.§84§.length = 0;
      }
      
      public function §'P§(param1:Function, param2:Number, ... rest) : §6!o§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§6!o§ = new §6!o§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§93§)
         {
            return;
         }
         param1 *= this.§5!?§;
         this.§1"=§ += param1;
         if(this.§84§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§84§.length;
         var _loc3_:Vector.<§7!@§> = this.§84§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §"P§(param1:Event) : void
      {
         this.§'!@§(param1.target as §7!@§);
      }
      
      public function get §#!Z§() : Number
      {
         return this.§1"=§;
      }
   }
}
