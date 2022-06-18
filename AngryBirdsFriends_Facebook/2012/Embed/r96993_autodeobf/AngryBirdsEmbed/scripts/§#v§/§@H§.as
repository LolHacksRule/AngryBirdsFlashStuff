package §#v§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §@H§ implements §-l§
   {
       
      
      private var §;,§:Vector.<§-l§>;
      
      private var §,<§:Number;
      
      private var § !9§:Boolean = false;
      
      private var §+j§:Number = 1.0;
      
      public function §@H§()
      {
         super();
         this.§,<§ = 0;
         this.§;,§ = new Vector.<§-l§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§+j§ = param1;
      }
      
      public function add(param1:§-l§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§;,§.indexOf(param1) == -1)
         {
            this.§;,§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§]I§,this.§-n§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§ !9§ = param1;
      }
      
      public function §4D§(param1:§-l§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§;,§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§;,§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§]I§,this.§-n§);
            }
         }
      }
      
      public function §@-§(param1:Object) : void
      {
         var _loc4_:§'V§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§;,§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§;,§[_loc3_] as §'V§) && _loc4_.target == param1)
            {
               this.§;,§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §9!<§() : void
      {
         this.§;,§.length = 0;
      }
      
      public function §-!3§(param1:Function, param2:Number, ... rest) : §2X§
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
         if(this.§ !9§)
         {
            return;
         }
         param1 *= this.§+j§;
         this.§,<§ += param1;
         if(this.§;,§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§;,§.length;
         var _loc3_:Vector.<§-l§> = this.§;,§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §-n§(param1:Event) : void
      {
         this.§4D§(param1.target as §-l§);
      }
      
      public function get § !3§() : Number
      {
         return this.§,<§;
      }
   }
}
