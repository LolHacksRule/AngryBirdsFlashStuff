package §1"#§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §3-§ implements §>"3§
   {
       
      
      private var § G§:Vector.<§>"3§>;
      
      private var §%!G§:Number;
      
      private var §]p§:Boolean = false;
      
      private var §!#§:Number = 1.0;
      
      public function §3-§()
      {
         super();
         this.§%!G§ = 0;
         this.§ G§ = new Vector.<§>"3§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§!#§ = param1;
      }
      
      public function add(param1:§>"3§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§ G§.indexOf(param1) == -1)
         {
            this.§ G§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§3!Y§,this.§]!X§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§]p§ = param1;
      }
      
      public function §[!X§(param1:§>"3§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§ G§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§ G§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§3!Y§,this.§]!X§);
            }
         }
      }
      
      public function §4!j§(param1:Object) : void
      {
         var _loc4_:§&k§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§ G§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§ G§[_loc3_] as §&k§) && _loc4_.target == param1)
            {
               this.§ G§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §&!v§() : void
      {
         this.§ G§.length = 0;
      }
      
      public function §7!G§(param1:Function, param2:Number, ... rest) : §2X§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§2X§ = new §2X§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§]p§)
         {
            return;
         }
         param1 *= this.§!#§;
         this.§%!G§ += param1;
         if(this.§ G§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§ G§.length;
         var _loc3_:Vector.<§>"3§> = this.§ G§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §]!X§(param1:Event) : void
      {
         this.§[!X§(param1.target as §>"3§);
      }
      
      public function get §<D§() : Number
      {
         return this.§%!G§;
      }
   }
}
