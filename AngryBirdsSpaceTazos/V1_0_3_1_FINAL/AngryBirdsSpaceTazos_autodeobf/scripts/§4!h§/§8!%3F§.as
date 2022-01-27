package §4!h§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §8!?§ implements §'!;§
   {
       
      
      private var §%!§:Vector.<§'!;§>;
      
      private var § !8§:Number;
      
      private var §8!t§:Boolean = false;
      
      private var §3!^§:Number = 1.0;
      
      public function §8!?§()
      {
         super();
         this.§ !8§ = 0;
         this.§%!§ = new Vector.<§'!;§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§3!^§ = param1;
      }
      
      public function add(param1:§'!;§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§%!§.indexOf(param1) == -1)
         {
            this.§%!§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§@" §,this.§1j§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§8!t§ = param1;
      }
      
      public function §[!E§(param1:§'!;§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§%!§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§%!§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§@" §,this.§1j§);
            }
         }
      }
      
      public function §#"@§(param1:Object) : void
      {
         var _loc4_:§6!@§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§%!§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§%!§[_loc3_] as §6!@§) && _loc4_.target == param1)
            {
               this.§%!§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §2!p§() : void
      {
         this.§%!§.length = 0;
      }
      
      public function §!n§(param1:Function, param2:Number, ... rest) : §-"?§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§-"?§ = new §-"?§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§8!t§)
         {
            return;
         }
         param1 *= this.§3!^§;
         this.§ !8§ += param1;
         if(this.§%!§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§%!§.length;
         var _loc3_:Vector.<§'!;§> = this.§%!§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §1j§(param1:Event) : void
      {
         this.§[!E§(param1.target as §'!;§);
      }
      
      public function get §,!<§() : Number
      {
         return this.§ !8§;
      }
   }
}
