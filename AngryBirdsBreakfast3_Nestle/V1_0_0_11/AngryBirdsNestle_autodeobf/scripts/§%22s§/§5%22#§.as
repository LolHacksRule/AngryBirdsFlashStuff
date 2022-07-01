package §"s§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §5"#§ implements §<!A§
   {
       
      
      private var §2"3§:Vector.<§<!A§>;
      
      private var §1^§:Number;
      
      private var §32§:Boolean = false;
      
      private var §<L§:Number = 1.0;
      
      public function §5"#§()
      {
         super();
         this.§1^§ = 0;
         this.§2"3§ = new Vector.<§<!A§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§<L§ = param1;
      }
      
      public function add(param1:§<!A§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§2"3§.indexOf(param1) == -1)
         {
            this.§2"3§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§2"+§,this.§6b§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§32§ = param1;
      }
      
      public function §#"%§(param1:§<!A§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§2"3§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§2"3§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§2"+§,this.§6b§);
            }
         }
      }
      
      public function §,!B§(param1:Object) : void
      {
         var _loc4_:§8!9§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§2"3§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§2"3§[_loc3_] as §8!9§) && _loc4_.target == param1)
            {
               this.§2"3§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §+%§() : void
      {
         this.§2"3§.length = 0;
      }
      
      public function §?" §(param1:Function, param2:Number, ... rest) : §?!p§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§?!p§ = new §?!p§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§32§)
         {
            return;
         }
         param1 *= this.§<L§;
         this.§1^§ += param1;
         if(this.§2"3§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§2"3§.length;
         var _loc3_:Vector.<§<!A§> = this.§2"3§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §6b§(param1:Event) : void
      {
         this.§#"%§(param1.target as §<!A§);
      }
      
      public function get §[!'§() : Number
      {
         return this.§1^§;
      }
   }
}
