package §1!8§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §,!n§ implements §#W§
   {
       
      
      private var §>i§:Vector.<§#W§>;
      
      private var §?!o§:Number;
      
      private var §%!r§:Boolean = false;
      
      private var §2!8§:Number = 1.0;
      
      public function §,!n§()
      {
         super();
         this.§?!o§ = 0;
         this.§>i§ = new Vector.<§#W§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§2!8§ = param1;
      }
      
      public function add(param1:§#W§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§>i§.indexOf(param1) == -1)
         {
            this.§>i§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§,5§,this.§&!X§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§%!r§ = param1;
      }
      
      public function §=N§(param1:§#W§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§>i§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§>i§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§,5§,this.§&!X§);
            }
         }
      }
      
      public function §^D§(param1:Object) : void
      {
         var _loc4_:§9!C§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§>i§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§>i§[_loc3_] as §9!C§) && _loc4_.target == param1)
            {
               this.§>i§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §1J§() : void
      {
         this.§>i§.length = 0;
      }
      
      public function §!3§(param1:Function, param2:Number, ... rest) : §9J§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§9J§ = new §9J§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§%!r§)
         {
            return;
         }
         param1 *= this.§2!8§;
         this.§?!o§ += param1;
         if(this.§>i§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§>i§.length;
         var _loc3_:Vector.<§#W§> = this.§>i§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §&!X§(param1:Event) : void
      {
         this.§=N§(param1.target as §#W§);
      }
      
      public function get §5!+§() : Number
      {
         return this.§?!o§;
      }
   }
}
