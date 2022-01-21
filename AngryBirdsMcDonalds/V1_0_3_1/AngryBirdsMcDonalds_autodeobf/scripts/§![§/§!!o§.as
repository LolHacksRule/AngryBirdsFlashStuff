package §![§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §!!o§ implements §5R§
   {
       
      
      private var § !i§:Vector.<§5R§>;
      
      private var §,!F§:Number;
      
      private var §6!!§:Boolean = false;
      
      private var §[A§:Number = 1.0;
      
      public function §!!o§()
      {
         super();
         this.§,!F§ = 0;
         this.§ !i§ = new Vector.<§5R§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§[A§ = param1;
      }
      
      public function add(param1:§5R§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§ !i§.indexOf(param1) == -1)
         {
            this.§ !i§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§>>§,this.§[5§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§6!!§ = param1;
      }
      
      public function §!A§(param1:§5R§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§ !i§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§ !i§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§>>§,this.§[5§);
            }
         }
      }
      
      public function §,O§(param1:Object) : void
      {
         var _loc4_:§01§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§ !i§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§ !i§[_loc3_] as §01§) && _loc4_.target == param1)
            {
               this.§ !i§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §5L§() : void
      {
         this.§ !i§.length = 0;
      }
      
      public function §;"§(param1:Function, param2:Number, ... rest) : §7!o§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§7!o§ = new §7!o§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§6!!§)
         {
            return;
         }
         param1 *= this.§[A§;
         this.§,!F§ += param1;
         if(this.§ !i§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§ !i§.length;
         var _loc3_:Vector.<§5R§> = this.§ !i§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §[5§(param1:Event) : void
      {
         this.§!A§(param1.target as §5R§);
      }
      
      public function get §<b§() : Number
      {
         return this.§,!F§;
      }
   }
}
