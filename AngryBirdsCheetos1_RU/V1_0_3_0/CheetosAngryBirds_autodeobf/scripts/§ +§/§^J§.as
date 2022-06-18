package § +§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §^J§ implements §8!-§
   {
       
      
      private var §6! §:Vector.<§8!-§>;
      
      private var §!G§:Number;
      
      private var §8!K§:Boolean = false;
      
      private var §4R§:Number = 1.0;
      
      public function §^J§()
      {
         super();
         this.§!G§ = 0;
         this.§6! § = new Vector.<§8!-§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§4R§ = param1;
      }
      
      public function add(param1:§8!-§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§6! §.indexOf(param1) == -1)
         {
            this.§6! §.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§"!B§,this.§^!P§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§8!K§ = param1;
      }
      
      public function §7?§(param1:§8!-§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§6! §.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§6! §.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§"!B§,this.§^!P§);
            }
         }
      }
      
      public function §+!b§(param1:Object) : void
      {
         var _loc4_:§#`§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§6! §.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§6! §[_loc3_] as §#`§) && _loc4_.target == param1)
            {
               this.§6! §.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §"![§() : void
      {
         this.§6! §.length = 0;
      }
      
      public function §^T§(param1:Function, param2:Number, ... rest) : §=V§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§=V§ = new §=V§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§8!K§)
         {
            return;
         }
         param1 *= this.§4R§;
         this.§!G§ += param1;
         if(this.§6! §.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§6! §.length;
         var _loc3_:Vector.<§8!-§> = this.§6! §.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §^!P§(param1:Event) : void
      {
         this.§7?§(param1.target as §8!-§);
      }
      
      public function get §-!P§() : Number
      {
         return this.§!G§;
      }
   }
}
