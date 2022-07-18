package §,!,§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §1b§
   {
       
      
      protected var §%G§:Sprite;
      
      protected var §7#4§:Number;
      
      protected var §-[§:Number;
      
      protected var §%t§:Class;
      
      protected var §%!A§:Number;
      
      protected var §=H§:Number;
      
      protected var §;!O§:Number;
      
      protected var §"5§:Number;
      
      protected var §=J§:Number = -1;
      
      protected var §%4§:Array;
      
      protected var §!L§:int = -1;
      
      protected var §?"j§:Number = 0;
      
      protected var §[y§:int = 0;
      
      protected var §^,§:Vector.<§0!d§>;
      
      protected var §!#S§:Vector.<§0!d§>;
      
      public function §1b§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         this.§^,§ = new Vector.<§0!d§>(0);
         this.§!#S§ = new Vector.<§0!d§>(0);
         super();
         this.§%G§ = new Sprite();
         this.§7#4§ = param1;
         this.§-[§ = param2;
         this.§%4§ = param3;
         this.§%t§ = param4 || §0!d§;
         this.§%!A§ = param5;
         this.§=H§ = param6;
         this.calculateMaxItemsVisible();
         this.§!!x§();
         if(this.§%4§)
         {
            this.§@#5§();
         }
         this.§%G§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function calculateMaxItemsVisible() : void
      {
         this.§"5§ = Math.floor(this.§7#4§ / (this.§^#S§ + this.§%!A§));
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§%G§;
      }
      
      protected function §!!x§() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,1);
         _loc1_.graphics.drawRect(0,0,this.§7#4§,this.§-[§);
         _loc1_.graphics.endFill();
         this.§%G§.addChild(_loc1_);
         this.§%G§.mask = _loc1_;
      }
      
      public function setWidth(param1:Number) : void
      {
         var _loc2_:§0!d§ = null;
         this.§7#4§ = this.§%G§.mask.width = param1;
         this.§"5§ = Math.floor(this.§7#4§ / (this.§^#S§ + this.§%!A§));
         this.§!L§ = Math.min(this.§"5§,this.§%4§.length);
         this.calculateMargin();
         while(this.§!#S§.length > this.§"5§)
         {
            _loc2_ = this.§!#S§.pop();
            this.§%G§.removeChild(_loc2_);
            this.§<"j§(_loc2_);
         }
         this.§^#;§(0);
         this.§?"j§ = this.§[y§;
         this.updatePositions();
      }
      
      public function setHeight(param1:Number) : void
      {
         this.§-[§ = this.§%G§.mask.height = param1;
      }
      
      protected function §@#5§(param1:Boolean = true) : void
      {
         var _loc3_:§0!d§ = null;
         if(param1)
         {
            this.§?"j§ = 0;
            this.§[y§ = 0;
         }
         this.§!L§ = Math.min(this.§"5§,this.§%4§.length);
         this.calculateMargin();
         var _loc2_:int = 0;
         while(_loc2_ < this.§!L§)
         {
            _loc3_ = this.§`m§();
            this.§%G§.addChild(_loc3_);
            _loc3_.index = _loc2_;
            this.§6%§(_loc3_,this.data[_loc2_]);
            this.§!#S§.push(_loc3_);
            _loc2_++;
         }
         this.updatePositions();
      }
      
      protected function §6%§(param1:§0!d§, param2:Object) : void
      {
         param1.data = param2;
      }
      
      protected function calculateMargin() : void
      {
         this.§;!O§ = Math.min((this.§7#4§ - this.§!L§ * this.§^#S§) / this.§!L§,this.§=H§);
      }
      
      protected function get §^#S§() : Number
      {
         var _loc1_:§0!d§ = null;
         if(this.§=J§ == -1)
         {
            _loc1_ = this.§`m§();
            this.§=J§ = _loc1_.width;
            this.§<"j§(_loc1_);
         }
         return this.§=J§;
      }
      
      public function setData(param1:Array, param2:Boolean = true) : void
      {
         this.§%4§ = param1;
         this.clear();
         if(this.§%4§)
         {
            this.§@#5§(param2);
         }
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         if(!this.§%4§ || this.§%4§.length == this.§!L§)
         {
            return;
         }
         this.§^#;§(param1);
         if(param2)
         {
            this.§?"j§ = this.§[y§;
            this.updatePositions();
         }
      }
      
      protected function §^#;§(param1:int) : void
      {
         if(this.§[y§ - param1 > 0)
         {
            this.§[y§ = 0;
         }
         else if(this.§[y§ - param1 - this.visibleItemsCount < -this.§%4§.length)
         {
            this.§[y§ = -(this.§%4§.length - this.visibleItemsCount);
         }
         else
         {
            this.§[y§ -= param1;
         }
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         if(this.§[y§ == this.§?"j§)
         {
            return;
         }
         this.§?"j§ += (this.§[y§ - this.§?"j§) / 4;
         if(Math.abs(this.§?"j§ - this.§[y§) < 0.01)
         {
            this.§?"j§ = this.§[y§;
         }
         this.updatePositions();
      }
      
      protected function updatePositions() : void
      {
         var _loc2_:§0!d§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§0!d§ = null;
         var _loc1_:int = this.§!#S§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!#S§[_loc1_];
            _loc2_.x = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.x >= this.§7#4§ || _loc2_.x <= -this.§^#S§)
            {
               this.hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§%4§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§^#S§ && _loc3_ < this.§7#4§ && !this.§'!_§(_loc1_))
            {
               _loc4_ = this.§`m§();
               this.§%G§.addChild(_loc4_);
               this.§6%§(_loc4_,this.§%4§[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               this.§!#S§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function hide(param1:§0!d§) : void
      {
         this.§%G§.removeChild(param1);
         this.§!#S§.splice(this.§!#S§.indexOf(param1),1);
         this.§<"j§(param1);
      }
      
      protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(this.§;!O§ / 2 + (param1 + this.§?"j§) * (this.§^#S§ + this.§;!O§));
      }
      
      protected function §'!_§(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§!#S§.length)
         {
            if(this.§!#S§[_loc2_].index == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function refresh() : void
      {
         var _loc1_:§0!d§ = null;
         for each(_loc1_ in this.§!#S§)
         {
            this.§6%§(_loc1_,this.§%4§[_loc1_.index]);
         }
      }
      
      public function get data() : Array
      {
         return this.§%4§;
      }
      
      public function set data(param1:Array) : void
      {
         this.setData(param1);
      }
      
      public function get visibleItemsCount() : int
      {
         return this.§!L§;
      }
      
      public function clear() : void
      {
         var _loc1_:§0!d§ = null;
         while(this.§!#S§.length > 0)
         {
            _loc1_ = this.§!#S§.pop();
            this.§%G§.removeChild(_loc1_);
            this.§<"j§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§[y§;
      }
      
      protected function §`m§() : §0!d§
      {
         if(this.§^,§.length > 0)
         {
            return this.§^,§.pop();
         }
         var _loc1_:§0!d§ = new this.§%t§();
         _loc1_.§<r§ = this;
         return _loc1_;
      }
      
      protected function §<"j§(param1:§0!d§) : void
      {
         this.§6%§(param1,null);
         this.§^,§.push(param1);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§%G§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
