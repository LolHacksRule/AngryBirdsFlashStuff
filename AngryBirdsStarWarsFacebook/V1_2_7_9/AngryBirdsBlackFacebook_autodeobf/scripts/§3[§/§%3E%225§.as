package §3[§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §>"5§ implements §+",§
   {
       
      
      private var §,z§:Vector.<§+",§>;
      
      private var §?"§:Number;
      
      private var §>!=§:Boolean = false;
      
      private var §`w§:Number = 1.0;
      
      public function §>"5§()
      {
         super();
         this.§?"§ = 0;
         this.§,z§ = new Vector.<§+",§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§`w§ = param1;
      }
      
      public function add(param1:§+",§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§,z§.indexOf(param1) == -1)
         {
            this.§,z§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§>!V§,this.§!" §);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§>!=§ = param1;
      }
      
      public function §##&§(param1:§+",§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§,z§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§,z§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§>!V§,this.§!" §);
            }
         }
      }
      
      public function §4"t§(param1:Object) : void
      {
         var _loc4_:§1!Z§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§,z§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§,z§[_loc3_] as §1!Z§) && _loc4_.target == param1)
            {
               this.§,z§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §4!,§() : void
      {
         this.§,z§.length = 0;
      }
      
      public function §`!w§(param1:Function, param2:Number, ... rest) : §+#6§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§+#6§ = new §+#6§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§>!=§)
         {
            return;
         }
         param1 *= this.§`w§;
         this.§?"§ += param1;
         if(this.§,z§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§,z§.length;
         var _loc3_:Vector.<§+",§> = this.§,z§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §!" §(param1:Event) : void
      {
         this.§##&§(param1.target as §+",§);
      }
      
      public function get §'"7§() : Number
      {
         return this.§?"§;
      }
   }
}
