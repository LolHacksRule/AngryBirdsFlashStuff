package §9!G§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §!!I§ implements §8W§
   {
       
      
      private var §+"'§:Vector.<§8W§>;
      
      private var §>g§:Number;
      
      private var §`!K§:Boolean = false;
      
      private var §,"8§:Number = 1.0;
      
      public function §!!I§()
      {
         super();
         this.§>g§ = 0;
         this.§+"'§ = new Vector.<§8W§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§,"8§ = param1;
      }
      
      public function add(param1:§8W§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§+"'§.indexOf(param1) == -1)
         {
            this.§+"'§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§,!c§,this.§,!>§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§`!K§ = param1;
      }
      
      public function §1O§(param1:§8W§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§+"'§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§+"'§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§,!c§,this.§,!>§);
            }
         }
      }
      
      public function §>"6§(param1:Object) : void
      {
         var _loc4_:§-u§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§+"'§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§+"'§[_loc3_] as §-u§) && _loc4_.target == param1)
            {
               this.§+"'§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §?"§() : void
      {
         this.§+"'§.length = 0;
      }
      
      public function §>!J§(param1:Function, param2:Number, ... rest) : §-!A§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§-!A§ = new §-!A§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§`!K§)
         {
            return;
         }
         param1 *= this.§,"8§;
         this.§>g§ += param1;
         if(this.§+"'§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§+"'§.length;
         var _loc3_:Vector.<§8W§> = this.§+"'§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §,!>§(param1:Event) : void
      {
         this.§1O§(param1.target as §8W§);
      }
      
      public function get §3";§() : Number
      {
         return this.§>g§;
      }
   }
}
