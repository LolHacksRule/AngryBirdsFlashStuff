package §<!>§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §<#R§ implements § §
   {
       
      
      private var §1!b§:Vector.<§ §>;
      
      private var §-#H§:Number;
      
      private var §7!q§:Boolean = false;
      
      private var §<C§:Number = 1.0;
      
      public function §<#R§()
      {
         super();
         this.§-#H§ = 0;
         this.§1!b§ = new Vector.<§ §>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§<C§ = param1;
      }
      
      public function add(param1:§ §) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§1!b§.indexOf(param1) == -1)
         {
            this.§1!b§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§&!T§,this.§[!A§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§7!q§ = param1;
      }
      
      public function §>"k§(param1:§ §) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§1!b§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§1!b§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§&!T§,this.§[!A§);
            }
         }
      }
      
      public function §%#=§(param1:Object) : void
      {
         var _loc4_:§0!k§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§1!b§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§1!b§[_loc3_] as §0!k§) && _loc4_.target == param1)
            {
               this.§1!b§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §%W§() : void
      {
         this.§1!b§.length = 0;
      }
      
      public function §=#%§(param1:Function, param2:Number, ... rest) : §11§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§11§ = new §11§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§7!q§)
         {
            return;
         }
         param1 *= this.§<C§;
         this.§-#H§ += param1;
         if(this.§1!b§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§1!b§.length;
         var _loc3_:Vector.<§ §> = this.§1!b§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §[!A§(param1:Event) : void
      {
         this.§>"k§(param1.target as § §);
      }
      
      public function get §?#"§() : Number
      {
         return this.§-#H§;
      }
   }
}
