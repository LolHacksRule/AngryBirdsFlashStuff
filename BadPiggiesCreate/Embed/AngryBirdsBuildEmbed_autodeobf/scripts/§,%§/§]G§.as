package §,%§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §]G§ implements §&!Z§
   {
       
      
      private var §do §:Vector.<§&!Z§>;
      
      private var §3!q§:Number;
      
      private var §`!;§:Boolean = false;
      
      private var § 2§:Number = 1.0;
      
      public function §]G§()
      {
         super();
         this.§3!q§ = 0;
         this.§do § = new Vector.<§&!Z§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§ 2§ = param1;
      }
      
      public function add(param1:§&!Z§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§do §.indexOf(param1) == -1)
         {
            this.§do §.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§%%§,this.§ !e§);
            }
         }
      }
      
      public function set §=!A§(param1:Boolean) : void
      {
         this.§`!;§ = param1;
      }
      
      public function §-!6§(param1:§&!Z§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§do §.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§do §.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§%%§,this.§ !e§);
            }
         }
      }
      
      public function §@I§(param1:Object) : void
      {
         var _loc4_:§#!+§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§do §.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§do §[_loc3_] as §#!+§) && _loc4_.target == param1)
            {
               this.§do §.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §6>§() : void
      {
         this.§do §.length = 0;
      }
      
      public function §1!=§(param1:Function, param2:Number, ... rest) : §+!E§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§+!E§ = new §+!E§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§`!;§)
         {
            return;
         }
         param1 *= this.§ 2§;
         this.§3!q§ += param1;
         if(this.§do §.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§do §.length;
         var _loc3_:Vector.<§&!Z§> = this.§do §.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function § !e§(param1:Event) : void
      {
         this.§-!6§(param1.target as §&!Z§);
      }
      
      public function get §+B§() : Number
      {
         return this.§3!q§;
      }
   }
}
