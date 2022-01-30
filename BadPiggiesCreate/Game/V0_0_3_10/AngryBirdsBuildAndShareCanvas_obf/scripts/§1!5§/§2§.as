package §1!5§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §2§ implements §>!Y§
   {
       
      
      private var §>!l§:Vector.<§>!Y§>;
      
      private var §;"4§:Number;
      
      private var §+!?§:Boolean = false;
      
      private var §-R§:Number = 1.0;
      
      public function §2§()
      {
         super();
         this.§;"4§ = 0;
         this.§>!l§ = new Vector.<§>!Y§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§-R§ = param1;
      }
      
      public function add(param1:§>!Y§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§>!l§.indexOf(param1) == -1)
         {
            this.§>!l§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§7d§,this.§0!=§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§+!?§ = param1;
      }
      
      public function §5!h§(param1:§>!Y§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§>!l§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§>!l§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§7d§,this.§0!=§);
            }
         }
      }
      
      public function §#!J§(param1:Object) : void
      {
         var _loc4_:§%B§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§>!l§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§>!l§[_loc3_] as §%B§) && _loc4_.target == param1)
            {
               this.§>!l§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §1Q§() : void
      {
         this.§>!l§.length = 0;
      }
      
      public function §!z§(param1:Function, param2:Number, ... rest) : §4!?§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§4!?§ = new §4!?§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§+!?§)
         {
            return;
         }
         param1 *= this.§-R§;
         this.§;"4§ += param1;
         if(this.§>!l§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§>!l§.length;
         var _loc3_:Vector.<§>!Y§> = this.§>!l§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §0!=§(param1:Event) : void
      {
         this.§5!h§(param1.target as §>!Y§);
      }
      
      public function get §?!=§() : Number
      {
         return this.§;"4§;
      }
   }
}
