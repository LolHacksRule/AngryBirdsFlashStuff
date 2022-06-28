package §^X§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §;P§ implements §5!D§
   {
       
      
      private var §3N§:Vector.<§5!D§>;
      
      private var §3[§:Number;
      
      private var §5F§:Boolean = false;
      
      private var §#A§:Number = 1.0;
      
      public function §;P§()
      {
         super();
         this.§3[§ = 0;
         this.§3N§ = new Vector.<§5!D§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§#A§ = param1;
      }
      
      public function add(param1:§5!D§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§3N§.indexOf(param1) == -1)
         {
            this.§3N§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§^#§,this.§8N§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§5F§ = param1;
      }
      
      public function §4O§(param1:§5!D§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§3N§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§3N§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§^#§,this.§8N§);
            }
         }
      }
      
      public function §0Q§(param1:Object) : void
      {
         var _loc4_:§6b§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§3N§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§3N§[_loc3_] as §6b§) && _loc4_.target == param1)
            {
               this.§3N§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function § '§() : void
      {
         this.§3N§.length = 0;
      }
      
      public function §#!;§(param1:Function, param2:Number, ... rest) : §;$§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§;$§ = new §;$§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§5F§)
         {
            return;
         }
         param1 *= this.§#A§;
         this.§3[§ += param1;
         if(this.§3N§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§3N§.length;
         var _loc3_:Vector.<§5!D§> = this.§3N§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §8N§(param1:Event) : void
      {
         this.§4O§(param1.target as §5!D§);
      }
      
      public function get §'#§() : Number
      {
         return this.§3[§;
      }
   }
}
