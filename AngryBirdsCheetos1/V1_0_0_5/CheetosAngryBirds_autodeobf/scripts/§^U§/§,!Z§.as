package §^U§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §,!Z§ implements §0j§
   {
       
      
      private var §=!,§:Vector.<§0j§>;
      
      private var §5! §:Number;
      
      private var §<y§:Boolean = false;
      
      private var §4!Y§:Number = 1.0;
      
      public function §,!Z§()
      {
         super();
         this.§5! § = 0;
         this.§=!,§ = new Vector.<§0j§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§4!Y§ = param1;
      }
      
      public function add(param1:§0j§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§=!,§.indexOf(param1) == -1)
         {
            this.§=!,§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§>&§,this.§-A§);
            }
         }
      }
      
      public function set §5!T§(param1:Boolean) : void
      {
         this.§<y§ = param1;
      }
      
      public function §2W§(param1:§0j§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§=!,§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§=!,§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§>&§,this.§-A§);
            }
         }
      }
      
      public function §';§(param1:Object) : void
      {
         var _loc4_:§!f§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§=!,§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§=!,§[_loc3_] as §!f§) && _loc4_.target == param1)
            {
               this.§=!,§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §-p§() : void
      {
         this.§=!,§.length = 0;
      }
      
      public function §4f§(param1:Function, param2:Number, ... rest) : §&p§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§&p§ = new §&p§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§<y§)
         {
            return;
         }
         param1 *= this.§4!Y§;
         this.§5! § += param1;
         if(this.§=!,§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§=!,§.length;
         var _loc3_:Vector.<§0j§> = this.§=!,§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §-A§(param1:Event) : void
      {
         this.§2W§(param1.target as §0j§);
      }
      
      public function get §-H§() : Number
      {
         return this.§5! §;
      }
   }
}
