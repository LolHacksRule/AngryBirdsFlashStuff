package §"H§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §+!y§ implements §!7§
   {
       
      
      private var §#;§:Vector.<§!7§>;
      
      private var §8!=§:Number;
      
      private var §1i§:Boolean = false;
      
      private var §&!&§:Number = 1.0;
      
      public function §+!y§()
      {
         super();
         this.§8!=§ = 0;
         this.§#;§ = new Vector.<§!7§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§&!&§ = param1;
      }
      
      public function add(param1:§!7§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§#;§.indexOf(param1) == -1)
         {
            this.§#;§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§^U§,this.§7!_§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§1i§ = param1;
      }
      
      public function §1+§(param1:§!7§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§#;§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§#;§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§^U§,this.§7!_§);
            }
         }
      }
      
      public function §=!H§(param1:Object) : void
      {
         var _loc4_:§=j§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§#;§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§#;§[_loc3_] as §=j§) && _loc4_.target == param1)
            {
               this.§#;§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §;!v§() : void
      {
         this.§#;§.length = 0;
      }
      
      public function §!!u§(param1:Function, param2:Number, ... rest) : §,!2§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§,!2§ = new §,!2§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§1i§)
         {
            return;
         }
         param1 *= this.§&!&§;
         this.§8!=§ += param1;
         if(this.§#;§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§#;§.length;
         var _loc3_:Vector.<§!7§> = this.§#;§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §7!_§(param1:Event) : void
      {
         this.§1+§(param1.target as §!7§);
      }
      
      public function get §[[§() : Number
      {
         return this.§8!=§;
      }
   }
}
