package §,!"§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §1i§ implements §+!3§
   {
       
      
      private var §#"5§:Vector.<§+!3§>;
      
      private var §<?§:Number;
      
      private var §5L§:Boolean = false;
      
      private var §3"=§:Number = 1.0;
      
      public function §1i§()
      {
         super();
         this.§<?§ = 0;
         this.§#"5§ = new Vector.<§+!3§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§3"=§ = param1;
      }
      
      public function add(param1:§+!3§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§#"5§.indexOf(param1) == -1)
         {
            this.§#"5§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§5!o§,this.§;!O§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§5L§ = param1;
      }
      
      public function § !G§(param1:§+!3§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§#"5§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§#"5§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§5!o§,this.§;!O§);
            }
         }
      }
      
      public function §#!D§(param1:Object) : void
      {
         var _loc4_:§^!X§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§#"5§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§#"5§[_loc3_] as §^!X§) && _loc4_.target == param1)
            {
               this.§#"5§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §6!'§() : void
      {
         this.§#"5§.length = 0;
      }
      
      public function §1!9§(param1:Function, param2:Number, ... rest) : §6V§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§6V§ = new §6V§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§5L§)
         {
            return;
         }
         param1 *= this.§3"=§;
         this.§<?§ += param1;
         if(this.§#"5§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§#"5§.length;
         var _loc3_:Vector.<§+!3§> = this.§#"5§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §;!O§(param1:Event) : void
      {
         this.§ !G§(param1.target as §+!3§);
      }
      
      public function get §8"=§() : Number
      {
         return this.§<?§;
      }
   }
}
