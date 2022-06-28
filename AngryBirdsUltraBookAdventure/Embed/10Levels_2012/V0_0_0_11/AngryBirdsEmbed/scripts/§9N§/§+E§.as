package §9N§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §+E§ implements §!o§
   {
       
      
      private var §2;§:Vector.<§!o§>;
      
      private var §1r§:Number;
      
      private var §;-§:Boolean = false;
      
      private var §4p§:Number = 1.0;
      
      public function §+E§()
      {
         super();
         this.§1r§ = 0;
         this.§2;§ = new Vector.<§!o§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§4p§ = param1;
      }
      
      public function add(param1:§!o§) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.§2;§.indexOf(param1) == -1)
         {
            this.§2;§.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.§0=§,this.§7Z§);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§;-§ = param1;
      }
      
      public function §[D§(param1:§!o§) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§2;§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§2;§.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.§0=§,this.§7Z§);
            }
         }
      }
      
      public function §'3§(param1:Object) : void
      {
         var _loc4_:§&l§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§2;§.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§2;§[_loc3_] as §&l§) && _loc4_.target == param1)
            {
               this.§2;§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §[!F§() : void
      {
         this.§2;§.length = 0;
      }
      
      public function §7G§(param1:Function, param2:Number, ... rest) : §!H§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§!H§ = new §!H§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.§;-§)
         {
            return;
         }
         param1 *= this.§4p§;
         this.§1r§ += param1;
         if(this.§2;§.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§2;§.length;
         var _loc3_:Vector.<§!o§> = this.§2;§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function §7Z§(param1:Event) : void
      {
         this.§[D§(param1.target as §!o§);
      }
      
      public function get §+d§() : Number
      {
         return this.§1r§;
      }
   }
}
