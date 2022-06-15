package §6#O§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §%"`§
   {
       
      
      protected var §]Y§:Sprite;
      
      protected var §3#l§:Number;
      
      protected var §%"e§:Number;
      
      protected var §@!H§:Class;
      
      protected var §3!u§:Number;
      
      protected var §&"c§:Number;
      
      protected var §7!=§:Number;
      
      protected var §41§:Number;
      
      protected var §2"2§:Number = -1;
      
      protected var §+!&§:Array;
      
      protected var §34§:int = -1;
      
      protected var §!"1§:Number = 0;
      
      protected var §&"_§:int = 0;
      
      protected var §,"w§:Vector.<§3?§>;
      
      protected var §+##§:Vector.<§3?§>;
      
      public function §%"`§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         this.§,"w§ = new Vector.<§3?§>(0);
         this.§+##§ = new Vector.<§3?§>(0);
         super();
         this.§]Y§ = new Sprite();
         this.§3#l§ = param1;
         this.§%"e§ = param2;
         this.§+!&§ = param3;
         this.§@!H§ = param4 || §3?§;
         this.§3!u§ = param5;
         this.§&"c§ = param6;
         this.calculateMaxItemsVisible();
         this.§[#§();
         if(this.§+!&§)
         {
            this.§=#C§();
         }
         this.§]Y§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function calculateMaxItemsVisible() : void
      {
         this.§41§ = Math.floor(this.§3#l§ / (this.§1#G§ + this.§3!u§));
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§]Y§;
      }
      
      protected function §[#§() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,1);
         _loc1_.graphics.drawRect(0,0,this.§3#l§,this.§%"e§);
         _loc1_.graphics.endFill();
         this.§]Y§.addChild(_loc1_);
         this.§]Y§.mask = _loc1_;
      }
      
      public function setWidth(param1:Number) : void
      {
         var _loc2_:§3?§ = null;
         this.§3#l§ = this.§]Y§.mask.width = param1;
         this.§41§ = Math.floor(this.§3#l§ / (this.§1#G§ + this.§3!u§));
         this.§34§ = Math.min(this.§41§,this.§+!&§.length);
         this.calculateMargin();
         while(this.§+##§.length > this.§41§)
         {
            _loc2_ = this.§+##§.pop();
            this.§]Y§.removeChild(_loc2_);
            this.§4;§(_loc2_);
         }
         this.§]$6§(0);
         this.§!"1§ = this.§&"_§;
         this.updatePositions();
      }
      
      public function setHeight(param1:Number) : void
      {
         this.§%"e§ = this.§]Y§.mask.height = param1;
      }
      
      protected function §=#C§(param1:Boolean = true) : void
      {
         var _loc3_:§3?§ = null;
         if(param1)
         {
            this.§!"1§ = 0;
            this.§&"_§ = 0;
         }
         this.§34§ = Math.min(this.§41§,this.§+!&§.length);
         this.calculateMargin();
         var _loc2_:int = 0;
         while(_loc2_ < this.§34§)
         {
            _loc3_ = this.§5=§();
            this.§]Y§.addChild(_loc3_);
            _loc3_.index = _loc2_;
            this.§[#%§(_loc3_,this.data[_loc2_]);
            this.§+##§.push(_loc3_);
            _loc2_++;
         }
         this.updatePositions();
      }
      
      protected function §[#%§(param1:§3?§, param2:Object) : void
      {
         param1.data = param2;
      }
      
      protected function calculateMargin() : void
      {
         this.§7!=§ = Math.min((this.§3#l§ - this.§34§ * this.§1#G§) / this.§34§,this.§&"c§);
      }
      
      protected function get §1#G§() : Number
      {
         var _loc1_:§3?§ = null;
         if(this.§2"2§ == -1)
         {
            _loc1_ = this.§5=§();
            this.§2"2§ = _loc1_.width;
            this.§4;§(_loc1_);
         }
         return this.§2"2§;
      }
      
      public function §;"K§(param1:Array, param2:Boolean = true) : void
      {
         this.§+!&§ = param1;
         this.clear();
         if(this.§+!&§)
         {
            this.§=#C§(param2);
         }
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         if(!this.§+!&§ || this.§+!&§.length == this.§34§)
         {
            return;
         }
         this.§]$6§(param1);
         if(param2)
         {
            this.§!"1§ = this.§&"_§;
            this.updatePositions();
         }
      }
      
      protected function §]$6§(param1:int) : void
      {
         if(this.§&"_§ - param1 > 0)
         {
            this.§&"_§ = 0;
         }
         else if(this.§&"_§ - param1 - this.§9!D§ < -this.§+!&§.length)
         {
            this.§&"_§ = -(this.§+!&§.length - this.§9!D§);
         }
         else
         {
            this.§&"_§ -= param1;
         }
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         if(this.§&"_§ == this.§!"1§)
         {
            return;
         }
         this.§!"1§ += (this.§&"_§ - this.§!"1§) / 4;
         if(Math.abs(this.§!"1§ - this.§&"_§) < 0.01)
         {
            this.§!"1§ = this.§&"_§;
         }
         this.updatePositions();
      }
      
      protected function updatePositions() : void
      {
         var _loc2_:§3?§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§3?§ = null;
         var _loc1_:int = this.§+##§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§+##§[_loc1_];
            _loc2_.x = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.x >= this.§3#l§ || _loc2_.x <= -this.§1#G§)
            {
               this.hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§+!&§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§1#G§ && _loc3_ < this.§3#l§ && !this.§27§(_loc1_))
            {
               _loc4_ = this.§5=§();
               this.§]Y§.addChild(_loc4_);
               this.§[#%§(_loc4_,this.§+!&§[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               this.§+##§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function hide(param1:§3?§) : void
      {
         this.§]Y§.removeChild(param1);
         this.§+##§.splice(this.§+##§.indexOf(param1),1);
         this.§4;§(param1);
      }
      
      protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(this.§7!=§ / 2 + (param1 + this.§!"1§) * (this.§1#G§ + this.§7!=§));
      }
      
      protected function §27§(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§+##§.length)
         {
            if(this.§+##§[_loc2_].index == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function refresh() : void
      {
         var _loc1_:§3?§ = null;
         for each(_loc1_ in this.§+##§)
         {
            this.§[#%§(_loc1_,this.§+!&§[_loc1_.index]);
         }
      }
      
      public function get data() : Array
      {
         return this.§+!&§;
      }
      
      public function set data(param1:Array) : void
      {
         this.§;"K§(param1);
      }
      
      public function get §9!D§() : int
      {
         return this.§34§;
      }
      
      public function clear() : void
      {
         var _loc1_:§3?§ = null;
         while(this.§+##§.length > 0)
         {
            _loc1_ = this.§+##§.pop();
            this.§]Y§.removeChild(_loc1_);
            this.§4;§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§&"_§;
      }
      
      protected function §5=§() : §3?§
      {
         if(this.§,"w§.length > 0)
         {
            return this.§,"w§.pop();
         }
         var _loc1_:§3?§ = new this.§@!H§();
         _loc1_.§<`§ = this;
         return _loc1_;
      }
      
      protected function §4;§(param1:§3?§) : void
      {
         this.§[#%§(param1,null);
         this.§,"w§.push(param1);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§]Y§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
