package §!`§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §>D§ implements §%9§
   {
       
      
      private var §]!I§:Vector.<§%9§>;
      
      private var §>!%§:Number;
      
      private var §4@§:Boolean = false;
      
      private var §`!;§:Number = 1.0;
      
      public function §>D§()
      {
         super();
         this.§>!%§ = 0;
         this.§]!I§ = new Vector.<§%9§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§`!;§ = param1;
      }
      
      public function add(param1:§%9§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§]!I§.indexOf(param1) == -1)
         {
            this.§]!I§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§,m§,this.§&!-§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§4@§ = param1;
      }
      
      public function §2!&§(param1:§%9§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§]!I§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§]!I§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§,m§,this.§&!-§);
            }
         }
      }
      
      public function §<!G§(param1:Object) : void
      {
         var _loc4_:§>!§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§]!I§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§]!I§[_loc3_] as §>!§) && _loc4_.target == param1)
            {
               this.§]!I§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §=i§() : void
      {
         this.§]!I§.length = 0;
      }
      
      public function §!B§(param1:Function, param2:Number, ... rest) : §<§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§<§ = new §<§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§4@§)
         {
            return;
         }
         param1 *= this.§`!;§;
         this.§>!%§ += param1;
         if(this.§]!I§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§]!I§.length;
         var _loc3_:Vector.<§%9§> = this.§]!I§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §&!-§(param1:Event) : void
      {
         this.§2!&§(param1.target as §%9§);
      }
      
      public function get §6!G§() : Number
      {
         return this.§>!%§;
      }
   }
}
