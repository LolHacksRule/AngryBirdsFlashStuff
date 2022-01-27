package §=R§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §9Y§ implements §6I§
   {
       
      
      private var §<o§:Vector.<§6I§>;
      
      private var §[4§:Number;
      
      private var §16§:Boolean = false;
      
      private var §<H§:Number = 1.0;
      
      public function §9Y§()
      {
         super();
         this.§[4§ = 0;
         this.§<o§ = new Vector.<§6I§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§<H§ = param1;
      }
      
      public function add(param1:§6I§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§<o§.indexOf(param1) == -1)
         {
            this.§<o§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§^4§,this.§<!"§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§16§ = param1;
      }
      
      public function §-%§(param1:§6I§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§<o§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§<o§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§^4§,this.§<!"§);
            }
         }
      }
      
      public function §3-§(param1:Object) : void
      {
         var _loc4_:§7D§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§<o§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§<o§[_loc3_] as §7D§) && _loc4_.target == param1)
            {
               this.§<o§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function § I§() : void
      {
         this.§<o§.length = 0;
      }
      
      public function §@Y§(param1:Function, param2:Number, ... rest) : §-!N§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§-!N§ = new §-!N§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§16§)
         {
            return;
         }
         param1 *= this.§<H§;
         this.§[4§ += param1;
         if(this.§<o§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§<o§.length;
         var _loc3_:Vector.<§6I§> = this.§<o§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §<!"§(param1:Event) : void
      {
         this.§-%§(param1.target as §6I§);
      }
      
      public function get §]P§() : Number
      {
         return this.§[4§;
      }
   }
}
