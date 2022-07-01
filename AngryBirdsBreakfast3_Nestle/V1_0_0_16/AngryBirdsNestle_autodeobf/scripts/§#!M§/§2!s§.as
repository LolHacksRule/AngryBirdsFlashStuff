package §#!M§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §2!s§ implements §,!Y§
   {
       
      
      private var §-"2§:Vector.<§,!Y§>;
      
      private var §&!5§:Number;
      
      private var §7!J§:Boolean = false;
      
      private var §6J§:Number = 1.0;
      
      public function §2!s§()
      {
         super();
         this.§&!5§ = 0;
         this.§-"2§ = new Vector.<§,!Y§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§6J§ = param1;
      }
      
      public function add(param1:§,!Y§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§-"2§.indexOf(param1) == -1)
         {
            this.§-"2§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§2"$§,this.§ o§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§7!J§ = param1;
      }
      
      public function native(param1:§,!Y§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§-"2§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§-"2§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§2"$§,this.§ o§);
            }
         }
      }
      
      public function §6!<§(param1:Object) : void
      {
         var _loc4_:§>!i§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§-"2§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§-"2§[_loc3_] as §>!i§) && _loc4_.target == param1)
            {
               this.§-"2§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §98§() : void
      {
         this.§-"2§.length = 0;
      }
      
      public function §+"+§(param1:Function, param2:Number, ... rest) : §2"§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§2"§ = new §2"§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§7!J§)
         {
            return;
         }
         param1 *= this.§6J§;
         this.§&!5§ += param1;
         if(this.§-"2§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§-"2§.length;
         var _loc3_:Vector.<§,!Y§> = this.§-"2§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function § o§(param1:Event) : void
      {
         this.native(param1.target as §,!Y§);
      }
      
      public function get §`!h§() : Number
      {
         return this.§&!5§;
      }
   }
}
