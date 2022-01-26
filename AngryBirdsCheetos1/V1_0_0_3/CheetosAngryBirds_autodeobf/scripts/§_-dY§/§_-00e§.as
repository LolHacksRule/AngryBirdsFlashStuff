package §_-dY§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §_-00e§ implements §default§
   {
       
      
      private var §_-zQ§:Vector.<§default§>;
      
      private var §_-ZH§:Number;
      
      private var §_-uQ§:Boolean = false;
      
      private var §_-00z§:Number = 1.0;
      
      public function §_-00e§()
      {
         super();
         this.§_-ZH§ = 0;
         this.§_-zQ§ = new Vector.<§default§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§_-00z§ = param1;
      }
      
      public function add(param1:§default§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§_-zQ§.indexOf(param1) == -1)
         {
            this.§_-zQ§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§_-VS§,this.§_-xO§);
            }
         }
      }
      
      public function set §_-QF§(param1:Boolean) : void
      {
         this.§_-uQ§ = param1;
      }
      
      public function §_-sz§(param1:§default§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§_-zQ§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§_-zQ§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§_-VS§,this.§_-xO§);
            }
         }
      }
      
      public function §_-Ez§(param1:Object) : void
      {
         var _loc4_:§_-qI§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§_-zQ§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§_-zQ§[_loc3_] as §_-qI§) && _loc4_.target == param1)
            {
               this.§_-zQ§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §_-bq§() : void
      {
         this.§_-zQ§.length = 0;
      }
      
      public function §_-eD§(param1:Function, param2:Number, ... rest) : §_-j0§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§_-j0§ = new §_-j0§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§_-uQ§)
         {
            return;
         }
         param1 *= this.§_-00z§;
         this.§_-ZH§ += param1;
         if(this.§_-zQ§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§_-zQ§.length;
         var _loc3_:Vector.<§default§> = this.§_-zQ§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §_-xO§(param1:Event) : void
      {
         this.§_-sz§(param1.target as §default§);
      }
      
      public function get §_-Ss§() : Number
      {
         return this.§_-ZH§;
      }
   }
}
