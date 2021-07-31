package §4'§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §!o§ implements §9N§
   {
       
      
      private var §+E§:Vector.<§9N§>;
      
      private var §2;§:Number;
      
      private var §;-§:Boolean = false;
      
      private var §4p§:Number = 1.0;
      
      public function §!o§()
      {
         super();
         this.§2;§ = 0;
         this.§+E§ = new Vector.<§9N§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§4p§ = param1;
      }
      
      public function add(param1:§9N§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§+E§.indexOf(param1) == -1)
         {
            this.§+E§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§#!7§,this.§7G§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§;-§ = param1;
      }
      
      public function §1r§(param1:§9N§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§+E§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§+E§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§#!7§,this.§7G§);
            }
         }
      }
      
      public function §[D§(param1:Object) : void
      {
         var _loc4_:§-D§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§+E§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§+E§[_loc3_] as §-D§) && _loc4_.target == param1)
            {
               this.§+E§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §'3§() : void
      {
         this.§+E§.length = 0;
      }
      
      public function §[!F§(param1:Function, param2:Number, ... rest) : §+d§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§+d§ = new §+d§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§;-§)
         {
            return;
         }
         param1 *= this.§4p§;
         this.§2;§ += param1;
         if(this.§+E§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§+E§.length;
         var _loc3_:Vector.<§9N§> = this.§+E§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §7G§(param1:Event) : void
      {
         this.§1r§(param1.target as §9N§);
      }
      
      public function get §7Z§() : Number
      {
         return this.§2;§;
      }
   }
}
