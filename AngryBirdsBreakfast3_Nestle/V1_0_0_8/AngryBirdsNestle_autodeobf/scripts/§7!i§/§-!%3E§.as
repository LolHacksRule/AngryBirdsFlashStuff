package §7!i§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §-!>§ implements §]"2§
   {
       
      
      private var §0I§:Vector.<§]"2§>;
      
      private var §9T§:Number;
      
      private var §%y§:Boolean = false;
      
      private var §1g§:Number = 1.0;
      
      public function §-!>§()
      {
         super();
         this.§9T§ = 0;
         this.§0I§ = new Vector.<§]"2§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§1g§ = param1;
      }
      
      public function add(param1:§]"2§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§0I§.indexOf(param1) == -1)
         {
            this.§0I§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§#X§,this.§-!N§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§%y§ = param1;
      }
      
      public function §`!g§(param1:§]"2§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§0I§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§0I§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§#X§,this.§-!N§);
            }
         }
      }
      
      public function §4!y§(param1:Object) : void
      {
         var _loc4_:§-!;§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§0I§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§0I§[_loc3_] as §-!;§) && _loc4_.target == param1)
            {
               this.§0I§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §?!O§() : void
      {
         this.§0I§.length = 0;
      }
      
      public function §'!#§(param1:Function, param2:Number, ... rest) : §!K§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§!K§ = new §!K§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§%y§)
         {
            return;
         }
         param1 *= this.§1g§;
         this.§9T§ += param1;
         if(this.§0I§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§0I§.length;
         var _loc3_:Vector.<§]"2§> = this.§0I§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §-!N§(param1:Event) : void
      {
         this.§`!g§(param1.target as §]"2§);
      }
      
      public function get §]!m§() : Number
      {
         return this.§9T§;
      }
   }
}
