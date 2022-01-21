package §3A§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §;!M§ implements §,!L§
   {
       
      
      private var §?D§:Vector.<§,!L§>;
      
      private var §=!L§:Number;
      
      private var §6!$§:Boolean = false;
      
      private var §'!X§:Number = 1.0;
      
      public function §;!M§()
      {
         super();
         this.§=!L§ = 0;
         this.§?D§ = new Vector.<§,!L§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§'!X§ = param1;
      }
      
      public function add(param1:§,!L§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§?D§.indexOf(param1) == -1)
         {
            this.§?D§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§#G§,this.§4!'§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§6!$§ = param1;
      }
      
      public function §7n§(param1:§,!L§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§?D§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§?D§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§#G§,this.§4!'§);
            }
         }
      }
      
      public function §[!g§(param1:Object) : void
      {
         var _loc4_:§;m§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§?D§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§?D§[_loc3_] as §;m§) && _loc4_.target == param1)
            {
               this.§?D§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function § ?§() : void
      {
         this.§?D§.length = 0;
      }
      
      public function §5!^§(param1:Function, param2:Number, ... rest) : §>c§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§>c§ = new §>c§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§6!$§)
         {
            return;
         }
         param1 *= this.§'!X§;
         this.§=!L§ += param1;
         if(this.§?D§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§?D§.length;
         var _loc3_:Vector.<§,!L§> = this.§?D§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §4!'§(param1:Event) : void
      {
         this.§7n§(param1.target as §,!L§);
      }
      
      public function get §"W§() : Number
      {
         return this.§=!L§;
      }
   }
}
