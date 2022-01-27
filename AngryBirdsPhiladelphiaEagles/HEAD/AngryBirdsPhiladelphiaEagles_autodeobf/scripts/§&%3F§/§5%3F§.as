package §&?§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §5?§ implements §3l§
   {
       
      
      private var §@L§:Vector.<§3l§>;
      
      private var §,s§:Number;
      
      private var §>N§:Boolean = false;
      
      private var §1!@§:Number = 1.0;
      
      public function §5?§()
      {
         super();
         this.§,s§ = 0;
         this.§@L§ = new Vector.<§3l§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§1!@§ = param1;
      }
      
      public function add(param1:§3l§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§@L§.indexOf(param1) == -1)
         {
            this.§@L§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§8! §,this.§^>§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§>N§ = param1;
      }
      
      public function §;8§(param1:§3l§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§@L§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§@L§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§8! §,this.§^>§);
            }
         }
      }
      
      public function §88§(param1:Object) : void
      {
         var _loc4_:§;!2§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§@L§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§@L§[_loc3_] as §;!2§) && _loc4_.target == param1)
            {
               this.§@L§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §1a§() : void
      {
         this.§@L§.length = 0;
      }
      
      public function §9j§(param1:Function, param2:Number, ... rest) : § ^§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§ ^§ = new § ^§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§>N§)
         {
            return;
         }
         param1 *= this.§1!@§;
         this.§,s§ += param1;
         if(this.§@L§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§@L§.length;
         var _loc3_:Vector.<§3l§> = this.§@L§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §^>§(param1:Event) : void
      {
         this.§;8§(param1.target as §3l§);
      }
      
      public function get §1!1§() : Number
      {
         return this.§,s§;
      }
   }
}
