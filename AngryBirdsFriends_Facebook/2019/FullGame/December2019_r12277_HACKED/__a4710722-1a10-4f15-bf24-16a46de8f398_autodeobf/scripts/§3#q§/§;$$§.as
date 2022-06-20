package §3#q§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §;$$§
   {
       
      
      protected var §]#+§:Sprite;
      
      protected var §-#5§:Number;
      
      protected var §!"%§:Number;
      
      protected var §@"#§:Class;
      
      protected var §[$9§:Number;
      
      protected var §1>§:Number;
      
      protected var §@[§:Number;
      
      protected var §2$2§:Number;
      
      protected var §,#J§:Number = -1;
      
      protected var §6"G§:Array;
      
      protected var §7"i§:int = -1;
      
      protected var §]!C§:Number = 0;
      
      protected var §#"S§:int = 0;
      
      protected var §8+§:Vector.<§ !Q§>;
      
      protected var §=#]§:Vector.<§ !Q§>;
      
      public function §;$$§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         this.§8+§ = new Vector.<§ !Q§>(0);
         this.§=#]§ = new Vector.<§ !Q§>(0);
         super();
         this.§]#+§ = new Sprite();
         this.§-#5§ = param1;
         this.§!"%§ = param2;
         this.§6"G§ = param3;
         this.§@"#§ = param4 || § !Q§;
         this.§[$9§ = param5;
         this.§1>§ = param6;
         this.calculateMaxItemsVisible();
         this.§6"?§();
         if(this.§6"G§)
         {
            this.§<#z§();
         }
         this.§]#+§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function calculateMaxItemsVisible() : void
      {
         this.§2$2§ = Math.floor(this.§-#5§ / (this.§8!r§ + this.§[$9§));
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§]#+§;
      }
      
      protected function §6"?§() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,1);
         _loc1_.graphics.drawRect(0,0,this.§-#5§,this.§!"%§);
         _loc1_.graphics.endFill();
         this.§]#+§.addChild(_loc1_);
         this.§]#+§.mask = _loc1_;
      }
      
      public function setWidth(param1:Number) : void
      {
         var _loc2_:§ !Q§ = null;
         this.§-#5§ = this.§]#+§.mask.width = param1;
         this.§2$2§ = Math.floor(this.§-#5§ / (this.§8!r§ + this.§[$9§));
         this.§7"i§ = Math.min(this.§2$2§,this.§6"G§.length);
         this.calculateMargin();
         while(this.§=#]§.length > this.§2$2§)
         {
            _loc2_ = this.§=#]§.pop();
            this.§]#+§.removeChild(_loc2_);
            this.§9#o§(_loc2_);
         }
         this.§;$?§(0);
         this.§]!C§ = this.§#"S§;
         this.updatePositions();
      }
      
      public function §##d§() : void
      {
         var _loc2_:§ !Q§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§=#]§.length)
         {
            this.§]#+§.removeChild(this.§=#]§[_loc1_]);
            _loc1_++;
         }
         this.§=#]§.splice(0,this.§=#]§.length);
         _loc1_ = 0;
         while(_loc1_ < this.§6"G§.length)
         {
            _loc2_ = this.§6"8§();
            _loc2_.index = _loc1_;
            _loc2_.data = this.§6"G§[_loc1_];
            this.§=#]§.push(_loc2_);
            this.§]#+§.addChild(_loc2_);
            _loc1_++;
         }
      }
      
      protected function §<#z§() : void
      {
         var _loc2_:§ !Q§ = null;
         this.§]!C§ = 0;
         this.§#"S§ = 0;
         this.§7"i§ = Math.min(this.§2$2§,this.§6"G§.length);
         this.calculateMargin();
         var _loc1_:int = 0;
         while(_loc1_ < this.§7"i§)
         {
            _loc2_ = this.§6"8§();
            this.§]#+§.addChild(_loc2_);
            _loc2_.index = _loc1_;
            _loc2_.data = this.§6"G§[_loc1_];
            this.§=#]§.push(_loc2_);
            _loc1_++;
         }
         this.updatePositions();
      }
      
      protected function calculateMargin() : void
      {
         this.§@[§ = Math.min((this.§-#5§ - this.§7"i§ * this.§8!r§) / this.§7"i§,this.§1>§);
      }
      
      protected function get §8!r§() : Number
      {
         var _loc1_:§ !Q§ = null;
         if(this.§,#J§ == -1)
         {
            _loc1_ = this.§6"8§();
            this.§,#J§ = _loc1_.width;
            this.§9#o§(_loc1_);
         }
         return this.§,#J§;
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         if(this.§6"G§.length == this.§7"i§)
         {
            return;
         }
         this.§;$?§(param1);
         if(param2)
         {
            this.§]!C§ = this.§#"S§;
            this.updatePositions();
         }
      }
      
      public function §!Y§(param1:int) : Boolean
      {
         if(this.§#"S§ - param1 > 0 || this.§#"S§ - param1 - this.§-"7§ < -this.§6"G§.length)
         {
            return true;
         }
         return false;
      }
      
      protected function §;$?§(param1:int) : void
      {
         if(this.§#"S§ - param1 > 0)
         {
            this.§#"S§ = 0;
         }
         else if(this.§#"S§ - param1 - this.§-"7§ < -this.§6"G§.length)
         {
            this.§#"S§ = -(this.§6"G§.length - this.§-"7§);
         }
         else
         {
            this.§#"S§ -= param1;
         }
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         if(this.§#"S§ == this.§]!C§)
         {
            return;
         }
         this.§]!C§ += (this.§#"S§ - this.§]!C§) / 4;
         if(Math.abs(this.§]!C§ - this.§#"S§) < 0.01)
         {
            this.§]!C§ = this.§#"S§;
         }
         this.updatePositions();
      }
      
      public function updatePositions() : void
      {
         var _loc2_:§ !Q§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§ !Q§ = null;
         var _loc1_:int = this.§=#]§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=#]§[_loc1_];
            _loc2_.x = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.x >= this.§-#5§ || _loc2_.x <= -this.§8!r§)
            {
               this.§]#+§.removeChild(_loc2_);
               this.§=#]§.splice(this.§=#]§.indexOf(_loc2_),1);
               this.§9#o§(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§6"G§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§8!r§ && _loc3_ < this.§-#5§ - this.§8!r§ && !this.§<e§(_loc1_))
            {
               _loc4_ = this.§6"8§();
               this.§]#+§.addChild(_loc4_);
               _loc4_.data = this.§6"G§[_loc1_];
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               this.§=#]§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(this.§@[§ / 2 + (param1 + this.§]!C§) * (this.§8!r§ + this.§@[§));
      }
      
      protected function §<e§(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§=#]§.length)
         {
            if(this.§=#]§[_loc2_].index == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function refresh() : void
      {
         var _loc1_:§ !Q§ = null;
         for each(_loc1_ in this.§=#]§)
         {
            _loc1_.data = this.§6"G§[_loc1_.index];
         }
      }
      
      public function get data() : Array
      {
         return this.§6"G§;
      }
      
      public function set data(param1:Array) : void
      {
         this.§6"G§ = param1;
         this.clear();
         if(this.§6"G§)
         {
            this.§<#z§();
         }
      }
      
      public function get §-"7§() : int
      {
         return this.§7"i§;
      }
      
      public function clear() : void
      {
         var _loc1_:§ !Q§ = null;
         while(this.§=#]§.length > 0)
         {
            _loc1_ = this.§=#]§.pop();
            this.§]#+§.removeChild(_loc1_);
            this.§9#o§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§#"S§;
      }
      
      protected function §6"8§() : § !Q§
      {
         if(this.§8+§.length > 0)
         {
            return this.§8+§.pop();
         }
         var _loc1_:§ !Q§ = new this.§@"#§();
         _loc1_.§[i§ = this;
         return _loc1_;
      }
      
      protected function §9#o§(param1:§ !Q§) : void
      {
         param1.data = null;
         this.§8+§.push(param1);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§]#+§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
