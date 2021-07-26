package §,#+§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §>"8§
   {
       
      
      protected var §'#f§:Sprite;
      
      protected var §9"z§:Number;
      
      protected var §]!G§:Number;
      
      protected var §!!4§:Class;
      
      protected var §[!Q§:Number;
      
      protected var §9#e§:Number;
      
      protected var §>A§:Number;
      
      protected var §&!V§:Number;
      
      protected var §4!"§:Number = -1;
      
      protected var §8#f§:Array;
      
      protected var §6#^§:int = -1;
      
      protected var §`#e§:Number = 0;
      
      protected var §;=§:int = 0;
      
      protected var §`"w§:Vector.<§>!Y§>;
      
      protected var §4$!§:Vector.<§>!Y§>;
      
      public function §>"8§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         this.§`"w§ = new Vector.<§>!Y§>(0);
         this.§4$!§ = new Vector.<§>!Y§>(0);
         super();
         this.§'#f§ = new Sprite();
         this.§9"z§ = param1;
         this.§]!G§ = param2;
         this.§8#f§ = param3;
         this.§!!4§ = param4 || §>!Y§;
         this.§[!Q§ = param5;
         this.§9#e§ = param6;
         this.calculateMaxItemsVisible();
         this.§?q§();
         if(this.§8#f§)
         {
            this.§9;§();
         }
         this.§'#f§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function calculateMaxItemsVisible() : void
      {
         this.§&!V§ = Math.floor(this.§9"z§ / (this.§4!2§ + this.§[!Q§));
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§'#f§;
      }
      
      protected function §?q§() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,1);
         _loc1_.graphics.drawRect(0,0,this.§9"z§,this.§]!G§);
         _loc1_.graphics.endFill();
         this.§'#f§.addChild(_loc1_);
         this.§'#f§.mask = _loc1_;
      }
      
      public function setWidth(param1:Number) : void
      {
         var _loc2_:§>!Y§ = null;
         this.§9"z§ = this.§'#f§.mask.width = param1;
         this.§&!V§ = Math.floor(this.§9"z§ / (this.§4!2§ + this.§[!Q§));
         this.§6#^§ = Math.min(this.§&!V§,this.§8#f§.length);
         this.calculateMargin();
         while(this.§4$!§.length > this.§&!V§)
         {
            _loc2_ = this.§4$!§.pop();
            this.§'#f§.removeChild(_loc2_);
            this.§6!Y§(_loc2_);
         }
         this.§[B§(0);
         this.§`#e§ = this.§;=§;
         this.updatePositions();
      }
      
      public function setHeight(param1:Number) : void
      {
         this.§]!G§ = this.§'#f§.mask.height = param1;
      }
      
      protected function §9;§(param1:Boolean = true) : void
      {
         var _loc3_:§>!Y§ = null;
         if(param1)
         {
            this.§`#e§ = 0;
            this.§;=§ = 0;
         }
         this.§6#^§ = Math.min(this.§&!V§,this.§8#f§.length);
         this.calculateMargin();
         var _loc2_:int = 0;
         while(_loc2_ < this.§6#^§)
         {
            _loc3_ = this.§!"<§();
            this.§'#f§.addChild(_loc3_);
            _loc3_.index = _loc2_;
            this.§,#V§(_loc3_,this.data[_loc2_]);
            this.§4$!§.push(_loc3_);
            _loc2_++;
         }
         this.updatePositions();
      }
      
      protected function §,#V§(param1:§>!Y§, param2:Object) : void
      {
         param1.data = param2;
      }
      
      protected function calculateMargin() : void
      {
         this.§>A§ = Math.min((this.§9"z§ - this.§6#^§ * this.§4!2§) / this.§6#^§,this.§9#e§);
      }
      
      protected function get §4!2§() : Number
      {
         var _loc1_:§>!Y§ = null;
         if(this.§4!"§ == -1)
         {
            _loc1_ = this.§!"<§();
            this.§4!"§ = _loc1_.width;
            this.§6!Y§(_loc1_);
         }
         return this.§4!"§;
      }
      
      public function §`#[§(param1:Array, param2:Boolean = true) : void
      {
         this.§8#f§ = param1;
         this.clear();
         if(this.§8#f§)
         {
            this.§9;§(param2);
         }
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         if(!this.§8#f§ || this.§8#f§.length == this.§6#^§)
         {
            return;
         }
         this.§[B§(param1);
         if(param2)
         {
            this.§`#e§ = this.§;=§;
            this.updatePositions();
         }
      }
      
      protected function §[B§(param1:int) : void
      {
         if(this.§;=§ - param1 > 0)
         {
            this.§;=§ = 0;
         }
         else if(this.§;=§ - param1 - this.§=#V§ < -this.§8#f§.length)
         {
            this.§;=§ = -(this.§8#f§.length - this.§=#V§);
         }
         else
         {
            this.§;=§ -= param1;
         }
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         if(this.§;=§ == this.§`#e§)
         {
            return;
         }
         this.§`#e§ += (this.§;=§ - this.§`#e§) / 4;
         if(Math.abs(this.§`#e§ - this.§;=§) < 0.01)
         {
            this.§`#e§ = this.§;=§;
         }
         this.updatePositions();
      }
      
      protected function updatePositions() : void
      {
         var _loc2_:§>!Y§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§>!Y§ = null;
         var _loc1_:int = this.§4$!§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§4$!§[_loc1_];
            _loc2_.x = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.x >= this.§9"z§ || _loc2_.x <= -this.§4!2§)
            {
               this.hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§8#f§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§4!2§ && _loc3_ < this.§9"z§ && !this.§>@§(_loc1_))
            {
               _loc4_ = this.§!"<§();
               this.§'#f§.addChild(_loc4_);
               this.§,#V§(_loc4_,this.§8#f§[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               this.§4$!§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function hide(param1:§>!Y§) : void
      {
         this.§'#f§.removeChild(param1);
         this.§4$!§.splice(this.§4$!§.indexOf(param1),1);
         this.§6!Y§(param1);
      }
      
      protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(this.§>A§ / 2 + (param1 + this.§`#e§) * (this.§4!2§ + this.§>A§));
      }
      
      protected function §>@§(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§4$!§.length)
         {
            if(this.§4$!§[_loc2_].index == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function refresh() : void
      {
         var _loc1_:§>!Y§ = null;
         for each(_loc1_ in this.§4$!§)
         {
            this.§,#V§(_loc1_,this.§8#f§[_loc1_.index]);
         }
      }
      
      public function get data() : Array
      {
         return this.§8#f§;
      }
      
      public function set data(param1:Array) : void
      {
         this.§`#[§(param1);
      }
      
      public function get §=#V§() : int
      {
         return this.§6#^§;
      }
      
      public function clear() : void
      {
         var _loc1_:§>!Y§ = null;
         while(this.§4$!§.length > 0)
         {
            _loc1_ = this.§4$!§.pop();
            this.§'#f§.removeChild(_loc1_);
            this.§6!Y§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§;=§;
      }
      
      protected function §!"<§() : §>!Y§
      {
         if(this.§`"w§.length > 0)
         {
            return this.§`"w§.pop();
         }
         var _loc1_:§>!Y§ = new this.§!!4§();
         _loc1_.§`"5§ = this;
         return _loc1_;
      }
      
      protected function §6!Y§(param1:§>!Y§) : void
      {
         this.§,#V§(param1,null);
         this.§`"w§.push(param1);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§'#f§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
