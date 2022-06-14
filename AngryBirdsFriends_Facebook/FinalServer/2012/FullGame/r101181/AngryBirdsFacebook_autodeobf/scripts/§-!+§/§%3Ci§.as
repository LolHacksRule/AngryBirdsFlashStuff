package §-!+§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §<i§
   {
       
      
      protected var §3^§:Sprite;
      
      protected var §,!!§:Number;
      
      protected var §`X§:Number;
      
      protected var §,i§:Class;
      
      protected var §<"@§:Number;
      
      protected var §'!$§:Number;
      
      protected var §[!8§:Number;
      
      protected var §9`§:Number;
      
      protected var §>!d§:Number = -1;
      
      protected var §>">§:Array;
      
      protected var §`!N§:int = -1;
      
      protected var §>!X§:Number = 0;
      
      protected var §7x§:int = 0;
      
      protected var §+!&§:Vector.<§;!B§>;
      
      protected var §%!G§:Vector.<§;!B§>;
      
      public function §<i§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         this.§+!&§ = new Vector.<§;!B§>(0);
         this.§%!G§ = new Vector.<§;!B§>(0);
         super();
         this.§3^§ = new Sprite();
         this.§,!!§ = param1;
         this.§`X§ = param2;
         this.§>">§ = param3;
         this.§,i§ = param4 || §;!B§;
         this.§<"@§ = param5;
         this.§'!$§ = param6;
         this.calculateMaxItemsVisible();
         this.§2"7§();
         if(this.§>">§)
         {
            this.§'!u§();
         }
         this.§3^§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function calculateMaxItemsVisible() : void
      {
         this.§9`§ = Math.floor(this.§,!!§ / (this.§ O§ + this.§<"@§));
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§3^§;
      }
      
      protected function §2"7§() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,1);
         _loc1_.graphics.drawRect(0,0,this.§,!!§,this.§`X§);
         _loc1_.graphics.endFill();
         this.§3^§.addChild(_loc1_);
         this.§3^§.mask = _loc1_;
      }
      
      public function setWidth(param1:Number) : void
      {
         var _loc2_:§;!B§ = null;
         this.§,!!§ = this.§3^§.mask.width = param1;
         this.§9`§ = Math.floor(this.§,!!§ / (this.§ O§ + this.§<"@§));
         this.§`!N§ = Math.min(this.§9`§,this.§>">§.length);
         this.calculateMargin();
         while(this.§%!G§.length > this.§9`§)
         {
            _loc2_ = this.§%!G§.pop();
            this.§3^§.removeChild(_loc2_);
            this.§>!^§(_loc2_);
         }
         this.§0[§(0);
         this.§>!X§ = this.§7x§;
         this.updatePositions();
      }
      
      protected function §'!u§() : void
      {
         var _loc2_:§;!B§ = null;
         this.§>!X§ = 0;
         this.§7x§ = 0;
         this.§`!N§ = Math.min(this.§9`§,this.§>">§.length);
         this.calculateMargin();
         var _loc1_:int = 0;
         while(_loc1_ < this.§`!N§)
         {
            _loc2_ = this.§17§();
            this.§3^§.addChild(_loc2_);
            _loc2_.index = _loc1_;
            _loc2_.data = this.§>">§[_loc1_];
            this.§%!G§.push(_loc2_);
            _loc1_++;
         }
         this.updatePositions();
      }
      
      protected function calculateMargin() : void
      {
         this.§[!8§ = Math.min((this.§,!!§ - this.§`!N§ * this.§ O§) / this.§`!N§,this.§'!$§);
      }
      
      protected function get § O§() : Number
      {
         var _loc1_:§;!B§ = null;
         if(this.§>!d§ == -1)
         {
            _loc1_ = this.§17§();
            this.§>!d§ = _loc1_.width;
            this.§>!^§(_loc1_);
         }
         return this.§>!d§;
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         if(this.§>">§.length == this.§`!N§)
         {
            return;
         }
         this.§0[§(param1);
         if(param2)
         {
            this.§>!X§ = this.§7x§;
            this.updatePositions();
         }
      }
      
      public function §@!%§(param1:int) : Boolean
      {
         if(this.§7x§ - param1 > 0 || this.§7x§ - param1 - this.§1!a§ < -this.§>">§.length)
         {
            return true;
         }
         return false;
      }
      
      protected function §0[§(param1:int) : void
      {
         if(this.§7x§ - param1 > 0)
         {
            this.§7x§ = 0;
         }
         else if(this.§7x§ - param1 - this.§1!a§ < -this.§>">§.length)
         {
            this.§7x§ = -(this.§>">§.length - this.§1!a§);
         }
         else
         {
            this.§7x§ -= param1;
         }
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         if(this.§7x§ == this.§>!X§)
         {
            return;
         }
         this.§>!X§ += (this.§7x§ - this.§>!X§) / 4;
         if(Math.abs(this.§>!X§ - this.§7x§) < 0.01)
         {
            this.§>!X§ = this.§7x§;
         }
         this.updatePositions();
      }
      
      protected function updatePositions() : void
      {
         var _loc2_:§;!B§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§;!B§ = null;
         var _loc1_:int = this.§%!G§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§%!G§[_loc1_];
            _loc2_.x = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.x >= this.§,!!§ || _loc2_.x <= -this.§ O§)
            {
               this.§3^§.removeChild(_loc2_);
               this.§%!G§.splice(this.§%!G§.indexOf(_loc2_),1);
               this.§>!^§(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§>">§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§ O§ && _loc3_ < this.§,!!§ - this.§ O§ && !this.§-m§(_loc1_))
            {
               _loc4_ = this.§17§();
               this.§3^§.addChild(_loc4_);
               _loc4_.data = this.§>">§[_loc1_];
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               this.§%!G§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(this.§[!8§ / 2 + (param1 + this.§>!X§) * (this.§ O§ + this.§[!8§));
      }
      
      protected function §-m§(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§%!G§.length)
         {
            if(this.§%!G§[_loc2_].index == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §7C§() : void
      {
         var _loc1_:§;!B§ = null;
         for each(_loc1_ in this.§%!G§)
         {
            _loc1_.data = this.§>">§[_loc1_.index];
         }
      }
      
      public function get data() : Array
      {
         return this.§>">§;
      }
      
      public function set data(param1:Array) : void
      {
         this.§>">§ = param1;
         this.clear();
         if(this.§>">§)
         {
            this.§'!u§();
         }
      }
      
      public function get §1!a§() : int
      {
         return this.§`!N§;
      }
      
      public function clear() : void
      {
         var _loc1_:§;!B§ = null;
         while(this.§%!G§.length > 0)
         {
            _loc1_ = this.§%!G§.pop();
            this.§3^§.removeChild(_loc1_);
            this.§>!^§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§7x§;
      }
      
      protected function §17§() : §;!B§
      {
         if(this.§+!&§.length > 0)
         {
            return this.§+!&§.pop();
         }
         var _loc1_:§;!B§ = new this.§,i§();
         _loc1_.§-r§ = this;
         return _loc1_;
      }
      
      protected function §>!^§(param1:§;!B§) : void
      {
         param1.data = null;
         this.§+!&§.push(param1);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§3^§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
