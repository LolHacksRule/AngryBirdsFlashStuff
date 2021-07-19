package §9!B§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §?![§ implements § _§
   {
       
      
      private var §2!z§:Vector.<§ _§>;
      
      private var §%!=§:Number;
      
      private var §=2§:Boolean = false;
      
      private var §>3§:Number = 1.0;
      
      public function §?![§()
      {
         super();
         this.§%!=§ = 0;
         this.§2!z§ = new Vector.<§ _§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§>3§ = param1;
      }
      
      public function add(param1:§ _§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§2!z§.indexOf(param1) == -1)
         {
            this.§2!z§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§;8§,this.§+!F§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§=2§ = param1;
      }
      
      public function §3O§(param1:§ _§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§2!z§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§2!z§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§;8§,this.§+!F§);
            }
         }
      }
      
      public function §@s§(param1:Object) : void
      {
         var _loc4_:§5!D§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§2!z§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§2!z§[_loc3_] as §5!D§) && _loc4_.target == param1)
            {
               this.§2!z§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §+!z§() : void
      {
         this.§2!z§.length = 0;
      }
      
      public function §9c§(param1:Function, param2:Number, ... rest) : §&!@§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§&!@§ = new §&!@§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§=2§)
         {
            return;
         }
         param1 *= this.§>3§;
         this.§%!=§ += param1;
         if(this.§2!z§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§2!z§.length;
         var _loc3_:Vector.<§ _§> = this.§2!z§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §+!F§(param1:Event) : void
      {
         this.§3O§(param1.target as § _§);
      }
      
      public function get §[!O§() : Number
      {
         return this.§%!=§;
      }
   }
}
