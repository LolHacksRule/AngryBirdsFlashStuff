package §=R§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §'!U§ implements §3!N§
   {
       
      
      private var §]-§:Vector.<§3!N§>;
      
      private var §0q§:Number;
      
      private var §`s§:Boolean = false;
      
      private var §#!N§:Number = 1.0;
      
      public function §'!U§()
      {
         super();
         this.§0q§ = 0;
         this.§]-§ = new Vector.<§3!N§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§#!N§ = param1;
      }
      
      public function add(param1:§3!N§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§]-§.indexOf(param1) == -1)
         {
            this.§]-§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§2!&§,this.§7v§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§`s§ = param1;
      }
      
      public function §&c§(param1:§3!N§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§]-§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§]-§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§2!&§,this.§7v§);
            }
         }
      }
      
      public function §9!b§(param1:Object) : void
      {
         var _loc4_:§ T§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§]-§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§]-§[_loc3_] as § T§) && _loc4_.target == param1)
            {
               this.§]-§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §[3§() : void
      {
         this.§]-§.length = 0;
      }
      
      public function §]&§(param1:Function, param2:Number, ... rest) : §'!#§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§'!#§ = new §'!#§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§`s§)
         {
            return;
         }
         param1 *= this.§#!N§;
         this.§0q§ += param1;
         if(this.§]-§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§]-§.length;
         var _loc3_:Vector.<§3!N§> = this.§]-§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §7v§(param1:Event) : void
      {
         this.§&c§(param1.target as §3!N§);
      }
      
      public function get §`!<§() : Number
      {
         return this.§0q§;
      }
   }
}
