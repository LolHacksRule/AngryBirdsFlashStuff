package §0K§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §2I§ implements §0h§
   {
       
      
      private var §[8§:Vector.<§0h§>;
      
      private var §&!A§:Number;
      
      private var §'!&§:Boolean = false;
      
      private var §^§:Number = 1.0;
      
      public function §2I§()
      {
         super();
         this.§&!A§ = 0;
         this.§[8§ = new Vector.<§0h§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§^§ = param1;
      }
      
      public function add(param1:§0h§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§[8§.indexOf(param1) == -1)
         {
            this.§[8§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§'!-§,this.§`3§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§'!&§ = param1;
      }
      
      public function §+b§(param1:§0h§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§[8§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§[8§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§'!-§,this.§`3§);
            }
         }
      }
      
      public function §"b§(param1:Object) : void
      {
         var _loc4_:§!u§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§[8§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§[8§[_loc3_] as §!u§) && _loc4_.target == param1)
            {
               this.§[8§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function § !G§() : void
      {
         this.§[8§.length = 0;
      }
      
      public function §]W§(param1:Function, param2:Number, ... rest) : §?2§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§?2§ = new §?2§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§'!&§)
         {
            return;
         }
         param1 *= this.§^§;
         this.§&!A§ += param1;
         if(this.§[8§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§[8§.length;
         var _loc3_:Vector.<§0h§> = this.§[8§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §`3§(param1:Event) : void
      {
         this.§+b§(param1.target as §0h§);
      }
      
      public function get §>1§() : Number
      {
         return this.§&!A§;
      }
   }
}
