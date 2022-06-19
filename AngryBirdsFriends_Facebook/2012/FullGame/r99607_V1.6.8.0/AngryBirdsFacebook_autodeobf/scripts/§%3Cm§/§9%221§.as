package §<m§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §9"1§
   {
       
      
      protected var §3!b§:Sprite;
      
      protected var §,I§:Number;
      
      protected var §^!p§:Number;
      
      protected var §&!F§:Class;
      
      protected var §=!8§:Number;
      
      protected var §%!N§:Number;
      
      protected var §;!H§:Number;
      
      protected var §>h§:Number;
      
      protected var §'"@§:Number = -1;
      
      protected var § 9§:Array;
      
      protected var §0!B§:int = -1;
      
      protected var §0!"§:Number = 0;
      
      protected var §'"&§:int = 0;
      
      protected var §?"?§:Vector.<§,0§>;
      
      protected var §""#§:Vector.<§,0§>;
      
      public function §9"1§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         this.§?"?§ = new Vector.<§,0§>(0);
         this.§""#§ = new Vector.<§,0§>(0);
         super();
         this.§3!b§ = new Sprite();
         this.§,I§ = param1;
         this.§^!p§ = param2;
         this.§ 9§ = param3;
         this.§&!F§ = param4 || §,0§;
         this.§=!8§ = param5;
         this.§%!N§ = param6;
         this.calculateMaxItemsVisible();
         this.§4!4§();
         if(this.§ 9§)
         {
            this.§4!%§();
         }
         this.§3!b§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function calculateMaxItemsVisible() : void
      {
         this.§>h§ = Math.floor(this.§,I§ / (this.§;!X§ + this.§=!8§));
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§3!b§;
      }
      
      protected function §4!4§() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,1);
         _loc1_.graphics.drawRect(0,0,this.§,I§,this.§^!p§);
         _loc1_.graphics.endFill();
         this.§3!b§.addChild(_loc1_);
         this.§3!b§.mask = _loc1_;
      }
      
      public function setWidth(param1:Number) : void
      {
         var _loc2_:§,0§ = null;
         this.§,I§ = this.§3!b§.mask.width = param1;
         this.§>h§ = Math.floor(this.§,I§ / (this.§;!X§ + this.§=!8§));
         this.§0!B§ = Math.min(this.§>h§,this.§ 9§.length);
         this.calculateMargin();
         while(this.§""#§.length > this.§>h§)
         {
            _loc2_ = this.§""#§.pop();
            this.§3!b§.removeChild(_loc2_);
            this.§!%§(_loc2_);
         }
         this.§&!Y§(0);
         this.§0!"§ = this.§'"&§;
         this.updatePositions();
      }
      
      protected function §4!%§() : void
      {
         var _loc2_:§,0§ = null;
         this.§0!"§ = 0;
         this.§'"&§ = 0;
         this.§0!B§ = Math.min(this.§>h§,this.§ 9§.length);
         this.calculateMargin();
         var _loc1_:int = 0;
         while(_loc1_ < this.§0!B§)
         {
            _loc2_ = this.§#"<§();
            this.§3!b§.addChild(_loc2_);
            _loc2_.index = _loc1_;
            _loc2_.data = this.§ 9§[_loc1_];
            this.§""#§.push(_loc2_);
            _loc1_++;
         }
         this.updatePositions();
      }
      
      protected function calculateMargin() : void
      {
         this.§;!H§ = Math.min((this.§,I§ - this.§0!B§ * this.§;!X§) / this.§0!B§,this.§%!N§);
      }
      
      protected function get §;!X§() : Number
      {
         var _loc1_:§,0§ = null;
         if(this.§'"@§ == -1)
         {
            _loc1_ = this.§#"<§();
            this.§'"@§ = _loc1_.width;
            this.§!%§(_loc1_);
         }
         return this.§'"@§;
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         if(this.§ 9§.length == this.§0!B§)
         {
            return;
         }
         this.§&!Y§(param1);
         if(param2)
         {
            this.§0!"§ = this.§'"&§;
            this.updatePositions();
         }
      }
      
      public function §>!e§(param1:int) : Boolean
      {
         if(this.§'"&§ - param1 > 0 || this.§'"&§ - param1 - this.§?3§ < -this.§ 9§.length)
         {
            return true;
         }
         return false;
      }
      
      protected function §&!Y§(param1:int) : void
      {
         if(this.§'"&§ - param1 > 0)
         {
            this.§'"&§ = 0;
         }
         else if(this.§'"&§ - param1 - this.§?3§ < -this.§ 9§.length)
         {
            this.§'"&§ = -(this.§ 9§.length - this.§?3§);
         }
         else
         {
            this.§'"&§ -= param1;
         }
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         if(this.§'"&§ == this.§0!"§)
         {
            return;
         }
         this.§0!"§ += (this.§'"&§ - this.§0!"§) / 4;
         if(Math.abs(this.§0!"§ - this.§'"&§) < 0.01)
         {
            this.§0!"§ = this.§'"&§;
         }
         this.updatePositions();
      }
      
      protected function updatePositions() : void
      {
         var _loc2_:§,0§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§,0§ = null;
         var _loc1_:int = this.§""#§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§""#§[_loc1_];
            _loc2_.x = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.x >= this.§,I§ || _loc2_.x <= -this.§;!X§)
            {
               this.§3!b§.removeChild(_loc2_);
               this.§""#§.splice(this.§""#§.indexOf(_loc2_),1);
               this.§!%§(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§ 9§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§;!X§ && _loc3_ < this.§,I§ - this.§;!X§ && !this.§%Z§(_loc1_))
            {
               _loc4_ = this.§#"<§();
               this.§3!b§.addChild(_loc4_);
               _loc4_.data = this.§ 9§[_loc1_];
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               this.§""#§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(this.§;!H§ / 2 + (param1 + this.§0!"§) * (this.§;!X§ + this.§;!H§));
      }
      
      protected function §%Z§(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§""#§.length)
         {
            if(this.§""#§[_loc2_].index == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §'!d§() : void
      {
         var _loc1_:§,0§ = null;
         for each(_loc1_ in this.§""#§)
         {
            _loc1_.data = this.§ 9§[_loc1_.index];
         }
      }
      
      public function get data() : Array
      {
         return this.§ 9§;
      }
      
      public function set data(param1:Array) : void
      {
         this.§ 9§ = param1;
         this.clear();
         if(this.§ 9§)
         {
            this.§4!%§();
         }
      }
      
      public function get §?3§() : int
      {
         return this.§0!B§;
      }
      
      public function clear() : void
      {
         var _loc1_:§,0§ = null;
         while(this.§""#§.length > 0)
         {
            _loc1_ = this.§""#§.pop();
            this.§3!b§.removeChild(_loc1_);
            this.§!%§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§'"&§;
      }
      
      protected function §#"<§() : §,0§
      {
         if(this.§?"?§.length > 0)
         {
            return this.§?"?§.pop();
         }
         var _loc1_:§,0§ = new this.§&!F§();
         _loc1_.§1!B§ = this;
         return _loc1_;
      }
      
      protected function §!%§(param1:§,0§) : void
      {
         param1.data = null;
         this.§?"?§.push(param1);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§3!b§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
