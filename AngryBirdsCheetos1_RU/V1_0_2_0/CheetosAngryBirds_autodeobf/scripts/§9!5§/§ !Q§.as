package §9!5§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class § !Q§ implements §&!&§
   {
       
      
      private var §<!4§:Vector.<§&!&§>;
      
      private var §6-§:Number;
      
      private var §[7§:Boolean = false;
      
      private var §var §:Number = 1.0;
      
      public function § !Q§()
      {
         super();
         this.§6-§ = 0;
         this.§<!4§ = new Vector.<§&!&§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§var § = param1;
      }
      
      public function add(param1:§&!&§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§<!4§.indexOf(param1) == -1)
         {
            this.§<!4§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§^5§,this.§#!3§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§[7§ = param1;
      }
      
      public function §=!M§(param1:§&!&§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§<!4§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§<!4§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§^5§,this.§#!3§);
            }
         }
      }
      
      public function §5w§(param1:Object) : void
      {
         var _loc4_:§<e§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§<!4§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§<!4§[_loc3_] as §<e§) && _loc4_.target == param1)
            {
               this.§<!4§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §+!>§() : void
      {
         this.§<!4§.length = 0;
      }
      
      public function §`S§(param1:Function, param2:Number, ... rest) : §;v§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§;v§ = new §;v§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§[7§)
         {
            return;
         }
         param1 *= this.§var §;
         this.§6-§ += param1;
         if(this.§<!4§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§<!4§.length;
         var _loc3_:Vector.<§&!&§> = this.§<!4§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §#!3§(param1:Event) : void
      {
         this.§=!M§(param1.target as §&!&§);
      }
      
      public function get §#`§() : Number
      {
         return this.§6-§;
      }
   }
}
