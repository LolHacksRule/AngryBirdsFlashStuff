package § M§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §+M§ implements §]-§
   {
       
      
      private var § ! §:Vector.<§]-§>;
      
      private var §+!D§:Number;
      
      private var §6!§:Boolean = false;
      
      private var §6;§:Number = 1.0;
      
      public function §+M§()
      {
         super();
         this.§+!D§ = 0;
         this.§ ! § = new Vector.<§]-§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§6;§ = param1;
      }
      
      public function add(param1:§]-§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§ ! §.indexOf(param1) == -1)
         {
            this.§ ! §.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§1E§,this.§&e§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§6!§ = param1;
      }
      
      public function §try§(param1:§]-§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§ ! §.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§ ! §.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§1E§,this.§&e§);
            }
         }
      }
      
      public function §@k§(param1:Object) : void
      {
         var _loc4_:§-!=§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§ ! §.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§ ! §[_loc3_] as §-!=§) && _loc4_.target == param1)
            {
               this.§ ! §.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §'N§() : void
      {
         this.§ ! §.length = 0;
      }
      
      public function §7&§(param1:Function, param2:Number, ... rest) : §if§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§if§ = new §if§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§6!§)
         {
            return;
         }
         param1 *= this.§6;§;
         this.§+!D§ += param1;
         if(this.§ ! §.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§ ! §.length;
         var _loc3_:Vector.<§]-§> = this.§ ! §.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §&e§(param1:Event) : void
      {
         this.§try§(param1.target as §]-§);
      }
      
      public function get §]O§() : Number
      {
         return this.§+!D§;
      }
   }
}
