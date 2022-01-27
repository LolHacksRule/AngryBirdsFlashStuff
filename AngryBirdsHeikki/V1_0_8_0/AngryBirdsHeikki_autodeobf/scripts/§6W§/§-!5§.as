package §6W§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §-!5§ implements §-B§
   {
       
      
      private var §59§:Vector.<§-B§>;
      
      private var §6k§:Number;
      
      private var §2!I§:Boolean = false;
      
      private var §[!R§:Number = 1.0;
      
      public function §-!5§()
      {
         super();
         this.§6k§ = 0;
         this.§59§ = new Vector.<§-B§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§[!R§ = param1;
      }
      
      public function add(param1:§-B§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§59§.indexOf(param1) == -1)
         {
            this.§59§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§@j§,this.§3!f§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§2!I§ = param1;
      }
      
      public function §&]§(param1:§-B§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§59§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§59§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§@j§,this.§3!f§);
            }
         }
      }
      
      public function §`!$§(param1:Object) : void
      {
         var _loc4_:§var§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§59§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§59§[_loc3_] as §var§) && _loc4_.target == param1)
            {
               this.§59§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §&!N§() : void
      {
         this.§59§.length = 0;
      }
      
      public function §@!"§(param1:Function, param2:Number, ... rest) : §@'§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§@'§ = new §@'§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§2!I§)
         {
            return;
         }
         param1 *= this.§[!R§;
         this.§6k§ += param1;
         if(this.§59§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§59§.length;
         var _loc3_:Vector.<§-B§> = this.§59§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §3!f§(param1:Event) : void
      {
         this.§&]§(param1.target as §-B§);
      }
      
      public function get §;!'§() : Number
      {
         return this.§6k§;
      }
   }
}
