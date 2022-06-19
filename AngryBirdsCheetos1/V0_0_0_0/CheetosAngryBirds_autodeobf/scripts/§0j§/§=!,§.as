package §0j§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §=!,§ implements §,!Z§
   {
       
      
      private var §5! §:Vector.<§,!Z§>;
      
      private var §<y§:Number;
      
      private var §2W§:Boolean = false;
      
      private var §4!Y§:Number = 1.0;
      
      public function §=!,§()
      {
         super();
         this.§<y§ = 0;
         this.§5! § = new Vector.<§,!Z§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§4!Y§ = param1;
      }
      
      public function add(param1:§,!Z§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§5! §.indexOf(param1) == -1)
         {
            this.§5! §.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§<@§,this.§-H§);
            }
         }
      }
      
      public function set §5!T§(param1:Boolean) : void
      {
         this.§2W§ = param1;
      }
      
      public function §';§(param1:§,!Z§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§5! §.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§5! §.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§<@§,this.§-H§);
            }
         }
      }
      
      public function §-p§(param1:Object) : void
      {
         var _loc4_:§2L§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§5! §.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§5! §[_loc3_] as §2L§) && _loc4_.target == param1)
            {
               this.§5! §.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §4f§() : void
      {
         this.§5! §.length = 0;
      }
      
      public function §-A§(param1:Function, param2:Number, ... rest) : §,c§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§,c§ = new §,c§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§2W§)
         {
            return;
         }
         param1 *= this.§4!Y§;
         this.§<y§ += param1;
         if(this.§5! §.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§5! §.length;
         var _loc3_:Vector.<§,!Z§> = this.§5! §.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §-H§(param1:Event) : void
      {
         this.§';§(param1.target as §,!Z§);
      }
      
      public function get §&p§() : Number
      {
         return this.§<y§;
      }
   }
}
