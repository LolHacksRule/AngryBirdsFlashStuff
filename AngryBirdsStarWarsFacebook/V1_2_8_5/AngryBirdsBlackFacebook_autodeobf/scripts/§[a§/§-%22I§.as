package §[a§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §-"I§ implements §8"h§
   {
       
      
      private var §7"q§:Vector.<§8"h§>;
      
      private var §0K§:Number;
      
      private var §0!z§:Boolean = false;
      
      private var §&"'§:Number = 1.0;
      
      public function §-"I§()
      {
         super();
         this.§0K§ = 0;
         this.§7"q§ = new Vector.<§8"h§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§&"'§ = param1;
      }
      
      public function add(param1:§8"h§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§7"q§.indexOf(param1) == -1)
         {
            this.§7"q§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§8"e§,this.§0s§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§0!z§ = param1;
      }
      
      public function §=!1§(param1:§8"h§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§7"q§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§7"q§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§8"e§,this.§0s§);
            }
         }
      }
      
      public function §`"_§(param1:Object) : void
      {
         var _loc4_:§9!i§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§7"q§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§7"q§[_loc3_] as §9!i§) && _loc4_.target == param1)
            {
               this.§7"q§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §9!8§() : void
      {
         this.§7"q§.length = 0;
      }
      
      public function §5!&§(param1:Function, param2:Number, ... rest) : §@"a§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§@"a§ = new §@"a§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§0!z§)
         {
            return;
         }
         param1 *= this.§&"'§;
         this.§0K§ += param1;
         if(this.§7"q§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§7"q§.length;
         var _loc3_:Vector.<§8"h§> = this.§7"q§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §0s§(param1:Event) : void
      {
         this.§=!1§(param1.target as §8"h§);
      }
      
      public function get §=!u§() : Number
      {
         return this.§0K§;
      }
   }
}
