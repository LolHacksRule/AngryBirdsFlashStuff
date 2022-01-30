package §>!]§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §07§ implements §6!B§
   {
       
      
      private var §,!6§:Vector.<§6!B§>;
      
      private var §^! §:Number;
      
      private var §4!1§:Boolean = false;
      
      private var §8!i§:Number = 1.0;
      
      public function §07§()
      {
         super();
         this.§^! § = 0;
         this.§,!6§ = new Vector.<§6!B§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§8!i§ = param1;
      }
      
      public function add(param1:§6!B§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§,!6§.indexOf(param1) == -1)
         {
            this.§,!6§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§=P§,this.§#!;§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§4!1§ = param1;
      }
      
      public function §0j§(param1:§6!B§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§,!6§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§,!6§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§=P§,this.§#!;§);
            }
         }
      }
      
      public function §7!n§(param1:Object) : void
      {
         var _loc4_:§>!N§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§,!6§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§,!6§[_loc3_] as §>!N§) && _loc4_.target == param1)
            {
               this.§,!6§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §>!C§() : void
      {
         this.§,!6§.length = 0;
      }
      
      public function §,!=§(param1:Function, param2:Number, ... rest) : §9Z§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§9Z§ = new §9Z§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§4!1§)
         {
            return;
         }
         param1 *= this.§8!i§;
         this.§^! § += param1;
         if(this.§,!6§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§,!6§.length;
         var _loc3_:Vector.<§6!B§> = this.§,!6§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §#!;§(param1:Event) : void
      {
         this.§0j§(param1.target as §6!B§);
      }
      
      public function get §][§() : Number
      {
         return this.§^! §;
      }
   }
}
