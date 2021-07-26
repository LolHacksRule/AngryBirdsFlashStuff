package §^?§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §;"'§
   {
       
      
      protected var §&"h§:Sprite;
      
      protected var §#"<§:Number;
      
      protected var §;$+§:Number;
      
      protected var §50§:Class;
      
      protected var §;W§:Number;
      
      protected var §9"O§:Number;
      
      protected var §3#e§:Number;
      
      protected var §["u§:Number;
      
      protected var §4"#§:Number = -1;
      
      protected var §1!,§:Array;
      
      protected var §]"o§:int = -1;
      
      protected var §&#`§:Number = 0;
      
      protected var §="g§:int = 0;
      
      protected var §?#,§:Vector.<§@"<§>;
      
      protected var §?#w§:Vector.<§@"<§>;
      
      public function §;"'§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         this.§?#,§ = new Vector.<§@"<§>(0);
         this.§?#w§ = new Vector.<§@"<§>(0);
         super();
         this.§&"h§ = new Sprite();
         this.§#"<§ = param1;
         this.§;$+§ = param2;
         this.§1!,§ = param3;
         this.§50§ = param4 || §@"<§;
         this.§;W§ = param5;
         this.§9"O§ = param6;
         this.calculateMaxItemsVisible();
         this.§+q§();
         if(this.§1!,§)
         {
            this.§?5§();
         }
         this.§&"h§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function calculateMaxItemsVisible() : void
      {
         this.§["u§ = Math.floor(this.§#"<§ / (this.§9k§ + this.§;W§));
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§&"h§;
      }
      
      protected function §+q§() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,1);
         _loc1_.graphics.drawRect(0,0,this.§#"<§,this.§;$+§);
         _loc1_.graphics.endFill();
         this.§&"h§.addChild(_loc1_);
         this.§&"h§.mask = _loc1_;
      }
      
      public function setWidth(param1:Number) : void
      {
         var _loc2_:§@"<§ = null;
         this.§#"<§ = this.§&"h§.mask.width = param1;
         this.§["u§ = Math.floor(this.§#"<§ / (this.§9k§ + this.§;W§));
         this.§]"o§ = Math.min(this.§["u§,this.§1!,§.length);
         this.calculateMargin();
         while(this.§?#w§.length > this.§["u§)
         {
            _loc2_ = this.§?#w§.pop();
            this.§&"h§.removeChild(_loc2_);
            this.§%#V§(_loc2_);
         }
         this.§-"u§(0);
         this.§&#`§ = this.§="g§;
         this.updatePositions();
      }
      
      public function setHeight(param1:Number) : void
      {
         this.§;$+§ = this.§&"h§.mask.height = param1;
      }
      
      protected function §?5§(param1:Boolean = true) : void
      {
         var _loc3_:§@"<§ = null;
         if(param1)
         {
            this.§&#`§ = 0;
            this.§="g§ = 0;
         }
         this.§]"o§ = Math.min(this.§["u§,this.§1!,§.length);
         this.calculateMargin();
         var _loc2_:int = 0;
         while(_loc2_ < this.§]"o§)
         {
            _loc3_ = this.§0"6§();
            this.§&"h§.addChild(_loc3_);
            _loc3_.index = _loc2_;
            this.§2"d§(_loc3_,this.data[_loc2_]);
            this.§?#w§.push(_loc3_);
            _loc2_++;
         }
         this.updatePositions();
      }
      
      protected function §2"d§(param1:§@"<§, param2:Object) : void
      {
         param1.data = param2;
      }
      
      protected function calculateMargin() : void
      {
         this.§3#e§ = Math.min((this.§#"<§ - this.§]"o§ * this.§9k§) / this.§]"o§,this.§9"O§);
      }
      
      protected function get §9k§() : Number
      {
         var _loc1_:§@"<§ = null;
         if(this.§4"#§ == -1)
         {
            _loc1_ = this.§0"6§();
            this.§4"#§ = _loc1_.width;
            this.§%#V§(_loc1_);
         }
         return this.§4"#§;
      }
      
      public function §8#y§(param1:Array, param2:Boolean = true) : void
      {
         this.§1!,§ = param1;
         this.clear();
         if(this.§1!,§)
         {
            this.§?5§(param2);
         }
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         if(!this.§1!,§ || this.§1!,§.length == this.§]"o§)
         {
            return;
         }
         this.§-"u§(param1);
         if(param2)
         {
            this.§&#`§ = this.§="g§;
            this.updatePositions();
         }
      }
      
      protected function §-"u§(param1:int) : void
      {
         if(this.§="g§ - param1 > 0)
         {
            this.§="g§ = 0;
         }
         else if(this.§="g§ - param1 - this.§["j§ < -this.§1!,§.length)
         {
            this.§="g§ = -(this.§1!,§.length - this.§["j§);
         }
         else
         {
            this.§="g§ -= param1;
         }
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         if(this.§="g§ == this.§&#`§)
         {
            return;
         }
         this.§&#`§ += (this.§="g§ - this.§&#`§) / 4;
         if(Math.abs(this.§&#`§ - this.§="g§) < 0.01)
         {
            this.§&#`§ = this.§="g§;
         }
         this.updatePositions();
      }
      
      protected function updatePositions() : void
      {
         var _loc2_:§@"<§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§@"<§ = null;
         var _loc1_:int = this.§?#w§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§?#w§[_loc1_];
            _loc2_.x = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.x >= this.§#"<§ || _loc2_.x <= -this.§9k§)
            {
               this.hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§1!,§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§9k§ && _loc3_ < this.§#"<§ && !this.§!"<§(_loc1_))
            {
               _loc4_ = this.§0"6§();
               this.§&"h§.addChild(_loc4_);
               this.§2"d§(_loc4_,this.§1!,§[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               this.§?#w§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function hide(param1:§@"<§) : void
      {
         this.§&"h§.removeChild(param1);
         this.§?#w§.splice(this.§?#w§.indexOf(param1),1);
         this.§%#V§(param1);
      }
      
      protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(this.§3#e§ / 2 + (param1 + this.§&#`§) * (this.§9k§ + this.§3#e§));
      }
      
      protected function §!"<§(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§?#w§.length)
         {
            if(this.§?#w§[_loc2_].index == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function refresh() : void
      {
         var _loc1_:§@"<§ = null;
         for each(_loc1_ in this.§?#w§)
         {
            this.§2"d§(_loc1_,this.§1!,§[_loc1_.index]);
         }
      }
      
      public function get data() : Array
      {
         return this.§1!,§;
      }
      
      public function set data(param1:Array) : void
      {
         this.§8#y§(param1);
      }
      
      public function get §["j§() : int
      {
         return this.§]"o§;
      }
      
      public function clear() : void
      {
         var _loc1_:§@"<§ = null;
         while(this.§?#w§.length > 0)
         {
            _loc1_ = this.§?#w§.pop();
            this.§&"h§.removeChild(_loc1_);
            this.§%#V§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§="g§;
      }
      
      protected function §0"6§() : §@"<§
      {
         if(this.§?#,§.length > 0)
         {
            return this.§?#,§.pop();
         }
         var _loc1_:§@"<§ = new this.§50§();
         _loc1_.§]"p§ = this;
         return _loc1_;
      }
      
      protected function §%#V§(param1:§@"<§) : void
      {
         this.§2"d§(param1,null);
         this.§?#,§.push(param1);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§&"h§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
