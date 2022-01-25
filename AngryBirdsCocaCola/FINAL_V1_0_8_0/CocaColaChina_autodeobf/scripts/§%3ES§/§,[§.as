package §>S§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §,[§ implements §",§
   {
       
      
      private var §[1§:Vector.<§",§>;
      
      private var §^G§:Number;
      
      private var §&[§:Boolean = false;
      
      private var §#n§:Number = 1.0;
      
      public function §,[§()
      {
         super();
         this.§^G§ = 0;
         this.§[1§ = new Vector.<§",§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§#n§ = param1;
      }
      
      public function add(param1:§",§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§[1§.indexOf(param1) == -1)
         {
            this.§[1§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§`c§,this.§<!F§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§&[§ = param1;
      }
      
      public function §8u§(param1:§",§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§[1§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§[1§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§`c§,this.§<!F§);
            }
         }
      }
      
      public function §`0§(param1:Object) : void
      {
         var _loc4_:§4!6§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§[1§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§[1§[_loc3_] as §4!6§) && _loc4_.target == param1)
            {
               this.§[1§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §'!Q§() : void
      {
         this.§[1§.length = 0;
      }
      
      public function §9!a§(param1:Function, param2:Number, ... rest) : §3"§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§3"§ = new §3"§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§&[§)
         {
            return;
         }
         param1 *= this.§#n§;
         this.§^G§ += param1;
         if(this.§[1§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§[1§.length;
         var _loc3_:Vector.<§",§> = this.§[1§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §<!F§(param1:Event) : void
      {
         this.§8u§(param1.target as §",§);
      }
      
      public function get §08§() : Number
      {
         return this.§^G§;
      }
   }
}
