package §[!-§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §]-§ implements §>'§
   {
       
      
      private var § #§:Vector.<§>'§>;
      
      private var §=M§:Number;
      
      private var §`!"§:Boolean = false;
      
      private var §@c§:Number = 1.0;
      
      public function §]-§()
      {
         super();
         this.§=M§ = 0;
         this.§ #§ = new Vector.<§>'§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§@c§ = param1;
      }
      
      public function add(param1:§>'§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§ #§.indexOf(param1) == -1)
         {
            this.§ #§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§8v§,this.§8!^§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§`!"§ = param1;
      }
      
      public function §3f§(param1:§>'§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§ #§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§ #§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§8v§,this.§8!^§);
            }
         }
      }
      
      public function §7!F§(param1:Object) : void
      {
         var _loc4_:§;4§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§ #§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§ #§[_loc3_] as §;4§) && _loc4_.target == param1)
            {
               this.§ #§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §&M§() : void
      {
         this.§ #§.length = 0;
      }
      
      public function §"t§(param1:Function, param2:Number, ... rest) : §7p§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§7p§ = new §7p§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§`!"§)
         {
            return;
         }
         param1 *= this.§@c§;
         this.§=M§ += param1;
         if(this.§ #§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§ #§.length;
         var _loc3_:Vector.<§>'§> = this.§ #§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §8!^§(param1:Event) : void
      {
         this.§3f§(param1.target as §>'§);
      }
      
      public function get §<q§() : Number
      {
         return this.§=M§;
      }
   }
}
