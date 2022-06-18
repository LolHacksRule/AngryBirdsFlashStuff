package §9! §
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §7X§ implements §,!3§
   {
       
      
      private var §7D§:Vector.<§,!3§>;
      
      private var §3Y§:Number;
      
      private var §++§:Boolean = false;
      
      private var §<w§:Number = 1.0;
      
      public function §7X§()
      {
         super();
         this.§3Y§ = 0;
         this.§7D§ = new Vector.<§,!3§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§<w§ = param1;
      }
      
      public function add(param1:§,!3§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§7D§.indexOf(param1) == -1)
         {
            this.§7D§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§!!8§,this.§+I§);
            }
         }
      }
      
      public function set §"7§(param1:Boolean) : void
      {
         this.§++§ = param1;
      }
      
      public function §+M§(param1:§,!3§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§7D§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§7D§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§!!8§,this.§+I§);
            }
         }
      }
      
      public function §>$§(param1:Object) : void
      {
         var _loc4_:§#9§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§7D§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§7D§[_loc3_] as §#9§) && _loc4_.target == param1)
            {
               this.§7D§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §-c§() : void
      {
         this.§7D§.length = 0;
      }
      
      public function §56§(param1:Function, param2:Number, ... rest) : §%E§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§%E§ = new §%E§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§++§)
         {
            return;
         }
         param1 *= this.§<w§;
         this.§3Y§ += param1;
         if(this.§7D§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§7D§.length;
         var _loc3_:Vector.<§,!3§> = this.§7D§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §+I§(param1:Event) : void
      {
         this.§+M§(param1.target as §,!3§);
      }
      
      public function get §2_§() : Number
      {
         return this.§3Y§;
      }
   }
}
