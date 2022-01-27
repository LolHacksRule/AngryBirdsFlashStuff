package §9!&§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §"W§
   {
       
      
      protected var § "6§:Sprite;
      
      protected var §^!l§:Number;
      
      protected var §8"[§:Number;
      
      protected var §5"C§:Class;
      
      protected var §`!+§:Number;
      
      protected var §#R§:Number;
      
      protected var §3!P§:Number;
      
      protected var §2T§:Number;
      
      protected var §0"q§:Number = -1;
      
      protected var §,6§:Array;
      
      protected var §1!=§:int = -1;
      
      protected var §&"4§:Number = 0;
      
      protected var §>!-§:int = 0;
      
      protected var §,!q§:Vector.<§`-§>;
      
      protected var §?"O§:Vector.<§`-§>;
      
      public function §"W§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         this.§,!q§ = new Vector.<§`-§>(0);
         this.§?"O§ = new Vector.<§`-§>(0);
         super();
         this.§ "6§ = new Sprite();
         this.§^!l§ = param1;
         this.§8"[§ = param2;
         this.§,6§ = param3;
         this.§5"C§ = param4 || §`-§;
         this.§`!+§ = param5;
         this.§#R§ = param6;
         this.calculateMaxItemsVisible();
         this.§3C§();
         if(this.§,6§)
         {
            this.§&P§();
         }
         this.§ "6§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function calculateMaxItemsVisible() : void
      {
         this.§2T§ = Math.floor(this.§^!l§ / (this.§@"q§ + this.§`!+§));
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§ "6§;
      }
      
      protected function §3C§() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,1);
         _loc1_.graphics.drawRect(0,0,this.§^!l§,this.§8"[§);
         _loc1_.graphics.endFill();
         this.§ "6§.addChild(_loc1_);
         this.§ "6§.mask = _loc1_;
      }
      
      public function setWidth(param1:Number) : void
      {
         var _loc2_:§`-§ = null;
         this.§^!l§ = this.§ "6§.mask.width = param1;
         this.§2T§ = Math.floor(this.§^!l§ / (this.§@"q§ + this.§`!+§));
         this.§1!=§ = Math.min(this.§2T§,this.§,6§.length);
         this.calculateMargin();
         while(this.§?"O§.length > this.§2T§)
         {
            _loc2_ = this.§?"O§.pop();
            this.§ "6§.removeChild(_loc2_);
            this.§0"R§(_loc2_);
         }
         this.§1§(0);
         this.§&"4§ = this.§>!-§;
         this.updatePositions();
      }
      
      public function setHeight(param1:Number) : void
      {
         this.§8"[§ = this.§ "6§.mask.height = param1;
      }
      
      protected function §&P§(param1:Boolean = true) : void
      {
         var _loc3_:§`-§ = null;
         if(param1)
         {
            this.§&"4§ = 0;
            this.§>!-§ = 0;
         }
         this.§1!=§ = Math.min(this.§2T§,this.§,6§.length);
         this.calculateMargin();
         var _loc2_:int = 0;
         while(_loc2_ < this.§1!=§)
         {
            _loc3_ = this.§%^§();
            this.§ "6§.addChild(_loc3_);
            _loc3_.index = _loc2_;
            this.§3"U§(_loc3_,this.data[_loc2_]);
            this.§?"O§.push(_loc3_);
            _loc2_++;
         }
         this.updatePositions();
      }
      
      protected function §3"U§(param1:§`-§, param2:Object) : void
      {
         param1.data = param2;
      }
      
      protected function calculateMargin() : void
      {
         this.§3!P§ = Math.min((this.§^!l§ - this.§1!=§ * this.§@"q§) / this.§1!=§,this.§#R§);
      }
      
      protected function get §@"q§() : Number
      {
         var _loc1_:§`-§ = null;
         if(this.§0"q§ == -1)
         {
            _loc1_ = this.§%^§();
            this.§0"q§ = _loc1_.width;
            this.§0"R§(_loc1_);
         }
         return this.§0"q§;
      }
      
      public function §2!s§(param1:Array, param2:Boolean = true) : void
      {
         this.§,6§ = param1;
         this.clear();
         if(this.§,6§)
         {
            this.§&P§(param2);
         }
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         if(!this.§,6§ || this.§,6§.length == this.§1!=§)
         {
            return;
         }
         this.§1§(param1);
         if(param2)
         {
            this.§&"4§ = this.§>!-§;
            this.updatePositions();
         }
      }
      
      protected function §1§(param1:int) : void
      {
         if(this.§>!-§ - param1 > 0)
         {
            this.§>!-§ = 0;
         }
         else if(this.§>!-§ - param1 - this.visibleItemsCount < -this.§,6§.length)
         {
            this.§>!-§ = -(this.§,6§.length - this.visibleItemsCount);
         }
         else
         {
            this.§>!-§ -= param1;
         }
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         if(this.§>!-§ == this.§&"4§)
         {
            return;
         }
         this.§&"4§ += (this.§>!-§ - this.§&"4§) / 4;
         if(Math.abs(this.§&"4§ - this.§>!-§) < 0.01)
         {
            this.§&"4§ = this.§>!-§;
         }
         this.updatePositions();
      }
      
      protected function updatePositions() : void
      {
         var _loc2_:§`-§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§`-§ = null;
         var _loc1_:int = this.§?"O§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§?"O§[_loc1_];
            _loc2_.x = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.x >= this.§^!l§ || _loc2_.x <= -this.§@"q§)
            {
               this.hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§,6§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§@"q§ && _loc3_ < this.§^!l§ && !this.§@1§(_loc1_))
            {
               _loc4_ = this.§%^§();
               this.§ "6§.addChild(_loc4_);
               this.§3"U§(_loc4_,this.§,6§[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               this.§?"O§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function hide(param1:§`-§) : void
      {
         this.§ "6§.removeChild(param1);
         this.§?"O§.splice(this.§?"O§.indexOf(param1),1);
         this.§0"R§(param1);
      }
      
      protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(this.§3!P§ / 2 + (param1 + this.§&"4§) * (this.§@"q§ + this.§3!P§));
      }
      
      protected function §@1§(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§?"O§.length)
         {
            if(this.§?"O§[_loc2_].index == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function refresh() : void
      {
         var _loc1_:§`-§ = null;
         for each(_loc1_ in this.§?"O§)
         {
            this.§3"U§(_loc1_,this.§,6§[_loc1_.index]);
         }
      }
      
      public function get data() : Array
      {
         return this.§,6§;
      }
      
      public function set data(param1:Array) : void
      {
         this.§2!s§(param1);
      }
      
      public function get visibleItemsCount() : int
      {
         return this.§1!=§;
      }
      
      public function clear() : void
      {
         var _loc1_:§`-§ = null;
         while(this.§?"O§.length > 0)
         {
            _loc1_ = this.§?"O§.pop();
            this.§ "6§.removeChild(_loc1_);
            this.§0"R§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§>!-§;
      }
      
      protected function §%^§() : §`-§
      {
         if(this.§,!q§.length > 0)
         {
            return this.§,!q§.pop();
         }
         var _loc1_:§`-§ = new this.§5"C§();
         _loc1_.§^f§ = this;
         return _loc1_;
      }
      
      protected function §0"R§(param1:§`-§) : void
      {
         this.§3"U§(param1,null);
         this.§,!q§.push(param1);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§ "6§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
