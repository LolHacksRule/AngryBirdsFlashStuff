package § "7§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §9,§ implements §1t§
   {
       
      
      private var §,"!§:Vector.<§1t§>;
      
      private var §>!C§:Number;
      
      private var §'"6§:Boolean = false;
      
      private var §0!A§:Number = 1.0;
      
      public function §9,§()
      {
         super();
         this.§>!C§ = 0;
         this.§,"!§ = new Vector.<§1t§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§0!A§ = param1;
      }
      
      public function add(param1:§1t§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§,"!§.indexOf(param1) == -1)
         {
            this.§,"!§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§4v§,this.§]!T§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§'"6§ = param1;
      }
      
      public function § "%§(param1:§1t§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§,"!§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§,"!§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§4v§,this.§]!T§);
            }
         }
      }
      
      public function §>S§(param1:Object) : void
      {
         var _loc4_:§-" § = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§,"!§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§,"!§[_loc3_] as §-" §) && _loc4_.target == param1)
            {
               this.§,"!§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §2-§() : void
      {
         this.§,"!§.length = 0;
      }
      
      public function §=!6§(param1:Function, param2:Number, ... rest) : dynamic
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:dynamic = new dynamic(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§'"6§)
         {
            return;
         }
         param1 *= this.§0!A§;
         this.§>!C§ += param1;
         if(this.§,"!§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§,"!§.length;
         var _loc3_:Vector.<§1t§> = this.§,"!§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §]!T§(param1:Event) : void
      {
         this.§ "%§(param1.target as §1t§);
      }
      
      public function get §+?§() : Number
      {
         return this.§>!C§;
      }
   }
}
