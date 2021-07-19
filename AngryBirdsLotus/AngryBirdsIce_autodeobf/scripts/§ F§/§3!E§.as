package § F§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §3!E§ implements §9U§
   {
       
      
      private var §=! §:Vector.<§9U§>;
      
      private var §^w§:Number;
      
      private var §>2§:Boolean = false;
      
      private var §?!A§:Number = 1.0;
      
      public function §3!E§()
      {
         super();
         this.§^w§ = 0;
         this.§=! § = new Vector.<§9U§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§?!A§ = param1;
      }
      
      public function add(param1:§9U§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§=! §.indexOf(param1) == -1)
         {
            this.§=! §.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§<!D§,this.§"K§);
            }
         }
      }
      
      public function set §'Z§(param1:Boolean) : void
      {
         this.§>2§ = param1;
      }
      
      public function §60§(param1:§9U§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§=! §.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§=! §.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§<!D§,this.§"K§);
            }
         }
      }
      
      public function §%6§(param1:Object) : void
      {
         var _loc4_:§^!'§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§=! §.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§=! §[_loc3_] as §^!'§) && _loc4_.target == param1)
            {
               this.§=! §.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §-j§() : void
      {
         this.§=! §.length = 0;
      }
      
      public function §6>§(param1:Function, param2:Number, ... rest) : §]!#§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§]!#§ = new §]!#§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§>2§)
         {
            return;
         }
         param1 *= this.§?!A§;
         this.§^w§ += param1;
         if(this.§=! §.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§=! §.length;
         var _loc3_:Vector.<§9U§> = this.§=! §.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §"K§(param1:Event) : void
      {
         this.§60§(param1.target as §9U§);
      }
      
      public function get §3!B§() : Number
      {
         return this.§^w§;
      }
   }
}
