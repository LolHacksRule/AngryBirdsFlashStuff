package §=E§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §="$§
   {
       
      
      protected var §`b§:Sprite;
      
      protected var §^P§:Number;
      
      protected var §%!N§:Number;
      
      protected var §'j§:Class;
      
      protected var §&i§:Number;
      
      protected var §<k§:Number;
      
      protected var §^"E§:Number;
      
      protected var §"!M§:Number;
      
      protected var §""7§:Number = -1;
      
      protected var §=]§:Array;
      
      protected var §`!R§:int = -1;
      
      protected var §'_§:Number = 0;
      
      protected var §9s§:int = 0;
      
      protected var §3!l§:Vector.<§0"1§>;
      
      protected var §%b§:Vector.<§0"1§>;
      
      public function §="$§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         this.§3!l§ = new Vector.<§0"1§>(0);
         this.§%b§ = new Vector.<§0"1§>(0);
         super();
         this.§`b§ = new Sprite();
         this.§^P§ = param1;
         this.§%!N§ = param2;
         this.§=]§ = param3;
         this.§'j§ = param4 || §0"1§;
         this.§&i§ = param5;
         this.§<k§ = param6;
         this.calculateMaxItemsVisible();
         this.§0i§();
         if(this.§=]§)
         {
            this.§8!'§();
         }
         this.§`b§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function calculateMaxItemsVisible() : void
      {
         this.§"!M§ = Math.floor(this.§^P§ / (this.§?]§ + this.§&i§));
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§`b§;
      }
      
      protected function §0i§() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,1);
         _loc1_.graphics.drawRect(0,0,this.§^P§,this.§%!N§);
         _loc1_.graphics.endFill();
         this.§`b§.addChild(_loc1_);
         this.§`b§.mask = _loc1_;
      }
      
      public function setWidth(param1:Number) : void
      {
         var _loc2_:§0"1§ = null;
         this.§^P§ = this.§`b§.mask.width = param1;
         this.§"!M§ = Math.floor(this.§^P§ / (this.§?]§ + this.§&i§));
         this.§`!R§ = Math.min(this.§"!M§,this.§=]§.length);
         this.calculateMargin();
         while(this.§%b§.length > this.§"!M§)
         {
            _loc2_ = this.§%b§.pop();
            this.§`b§.removeChild(_loc2_);
            this.§7!M§(_loc2_);
         }
         this.§61§(0);
         this.§'_§ = this.§9s§;
         this.updatePositions();
      }
      
      protected function §8!'§() : void
      {
         var _loc2_:§0"1§ = null;
         this.§'_§ = 0;
         this.§9s§ = 0;
         this.§`!R§ = Math.min(this.§"!M§,this.§=]§.length);
         this.calculateMargin();
         var _loc1_:int = 0;
         while(_loc1_ < this.§`!R§)
         {
            _loc2_ = this.§5'§();
            this.§`b§.addChild(_loc2_);
            _loc2_.index = _loc1_;
            _loc2_.data = this.§=]§[_loc1_];
            this.§%b§.push(_loc2_);
            _loc1_++;
         }
         this.updatePositions();
      }
      
      protected function calculateMargin() : void
      {
         this.§^"E§ = Math.min((this.§^P§ - this.§`!R§ * this.§?]§) / this.§`!R§,this.§<k§);
      }
      
      protected function get §?]§() : Number
      {
         var _loc1_:§0"1§ = null;
         if(this.§""7§ == -1)
         {
            _loc1_ = this.§5'§();
            this.§""7§ = _loc1_.width;
            this.§7!M§(_loc1_);
         }
         return this.§""7§;
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         if(this.§=]§.length == this.§`!R§)
         {
            return;
         }
         this.§61§(param1);
         if(param2)
         {
            this.§'_§ = this.§9s§;
            this.updatePositions();
         }
      }
      
      public function §]"H§(param1:int) : Boolean
      {
         if(this.§9s§ - param1 > 0 || this.§9s§ - param1 - this.§-!v§ < -this.§=]§.length)
         {
            return true;
         }
         return false;
      }
      
      protected function §61§(param1:int) : void
      {
         if(this.§9s§ - param1 > 0)
         {
            this.§9s§ = 0;
         }
         else if(this.§9s§ - param1 - this.§-!v§ < -this.§=]§.length)
         {
            this.§9s§ = -(this.§=]§.length - this.§-!v§);
         }
         else
         {
            this.§9s§ -= param1;
         }
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         if(this.§9s§ == this.§'_§)
         {
            return;
         }
         this.§'_§ += (this.§9s§ - this.§'_§) / 4;
         if(Math.abs(this.§'_§ - this.§9s§) < 0.01)
         {
            this.§'_§ = this.§9s§;
         }
         this.updatePositions();
      }
      
      protected function updatePositions() : void
      {
         var _loc2_:§0"1§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§0"1§ = null;
         var _loc1_:int = this.§%b§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§%b§[_loc1_];
            _loc2_.x = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.x >= this.§^P§ || _loc2_.x <= -this.§?]§)
            {
               this.§`b§.removeChild(_loc2_);
               this.§%b§.splice(this.§%b§.indexOf(_loc2_),1);
               this.§7!M§(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§=]§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§?]§ && _loc3_ < this.§^P§ - this.§?]§ && !this.§^"F§(_loc1_))
            {
               _loc4_ = this.§5'§();
               this.§`b§.addChild(_loc4_);
               _loc4_.data = this.§=]§[_loc1_];
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               this.§%b§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(this.§^"E§ / 2 + (param1 + this.§'_§) * (this.§?]§ + this.§^"E§));
      }
      
      protected function §^"F§(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§%b§.length)
         {
            if(this.§%b§[_loc2_].index == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §#6§() : void
      {
         var _loc1_:§0"1§ = null;
         for each(_loc1_ in this.§%b§)
         {
            _loc1_.data = this.§=]§[_loc1_.index];
         }
      }
      
      public function get data() : Array
      {
         return this.§=]§;
      }
      
      public function set data(param1:Array) : void
      {
         this.§=]§ = param1;
         this.clear();
         if(this.§=]§)
         {
            this.§8!'§();
         }
      }
      
      public function get §-!v§() : int
      {
         return this.§`!R§;
      }
      
      public function clear() : void
      {
         var _loc1_:§0"1§ = null;
         while(this.§%b§.length > 0)
         {
            _loc1_ = this.§%b§.pop();
            this.§`b§.removeChild(_loc1_);
            this.§7!M§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§9s§;
      }
      
      protected function §5'§() : §0"1§
      {
         if(this.§3!l§.length > 0)
         {
            return this.§3!l§.pop();
         }
         var _loc1_:§0"1§ = new this.§'j§();
         _loc1_.§^!8§ = this;
         return _loc1_;
      }
      
      protected function §7!M§(param1:§0"1§) : void
      {
         param1.data = null;
         this.§3!l§.push(param1);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§`b§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
