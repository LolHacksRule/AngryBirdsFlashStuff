package §[=§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §-T§ implements §`!<§
   {
       
      
      private var §!!I§:Vector.<§`!<§>;
      
      private var §9l§:Number;
      
      private var §'t§:Boolean = false;
      
      private var §9_§:Number = 1.0;
      
      public function §-T§()
      {
         super();
         this.§9l§ = 0;
         this.§!!I§ = new Vector.<§`!<§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§9_§ = param1;
      }
      
      public function add(param1:§`!<§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§!!I§.indexOf(param1) == -1)
         {
            this.§!!I§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§6w§,this.§@U§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§'t§ = param1;
      }
      
      public function §`!D§(param1:§`!<§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§!!I§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§!!I§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§6w§,this.§@U§);
            }
         }
      }
      
      public function §7V§(param1:Object) : void
      {
         var _loc4_:§`z§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§!!I§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§!!I§[_loc3_] as §`z§) && _loc4_.target == param1)
            {
               this.§!!I§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §-W§() : void
      {
         this.§!!I§.length = 0;
      }
      
      public function §%J§(param1:Function, param2:Number, ... rest) : §!!E§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§!!E§ = new §!!E§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§'t§)
         {
            return;
         }
         param1 *= this.§9_§;
         this.§9l§ += param1;
         if(this.§!!I§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§!!I§.length;
         var _loc3_:Vector.<§`!<§> = this.§!!I§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §@U§(param1:Event) : void
      {
         this.§`!D§(param1.target as §`!<§);
      }
      
      public function get §?!B§() : Number
      {
         return this.§9l§;
      }
   }
}
