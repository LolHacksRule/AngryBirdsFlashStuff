package §@!Z§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §7!B§ implements § '§
   {
       
      
      private var §&!B§:Vector.<§ '§>;
      
      private var §7!h§:Number;
      
      private var §0!P§:Boolean = false;
      
      private var §0!c§:Number = 1.0;
      
      public function §7!B§()
      {
         super();
         this.§7!h§ = 0;
         this.§&!B§ = new Vector.<§ '§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§0!c§ = param1;
      }
      
      public function add(param1:§ '§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§&!B§.indexOf(param1) == -1)
         {
            this.§&!B§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§&`§,this.§&F§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§0!P§ = param1;
      }
      
      public function §>!3§(param1:§ '§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§&!B§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§&!B§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§&`§,this.§&F§);
            }
         }
      }
      
      public function §+"%§(param1:Object) : void
      {
         var _loc4_:§`!y§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§&!B§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§&!B§[_loc3_] as §`!y§) && _loc4_.target == param1)
            {
               this.§&!B§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §,!j§() : void
      {
         this.§&!B§.length = 0;
      }
      
      public function §+!r§(param1:Function, param2:Number, ... rest) : §;<§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§;<§ = new §;<§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§0!P§)
         {
            return;
         }
         param1 *= this.§0!c§;
         this.§7!h§ += param1;
         if(this.§&!B§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§&!B§.length;
         var _loc3_:Vector.<§ '§> = this.§&!B§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §&F§(param1:Event) : void
      {
         this.§>!3§(param1.target as § '§);
      }
      
      public function get § !d§() : Number
      {
         return this.§7!h§;
      }
   }
}
