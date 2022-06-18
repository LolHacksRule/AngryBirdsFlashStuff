package §%"<§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §?$8§
   {
       
      
      protected var §'$&§:Sprite;
      
      protected var §0O§:Number;
      
      protected var §"#S§:Number;
      
      protected var § !^§:Class;
      
      protected var §0!R§:Number;
      
      protected var §46§:Number;
      
      protected var §`"t§:Number;
      
      protected var §5!0§:Number;
      
      protected var §-$2§:Number = -1;
      
      protected var §]!$§:Array;
      
      protected var §@$"§:int = -1;
      
      protected var §@!a§:Number = 0;
      
      protected var §+!g§:int = 0;
      
      protected var §7$§:Vector.<§9@§>;
      
      protected var §]B§:Vector.<§9@§>;
      
      public function §?$8§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         this.§7$§ = new Vector.<§9@§>(0);
         this.§]B§ = new Vector.<§9@§>(0);
         super();
         this.§'$&§ = new Sprite();
         this.§0O§ = param1;
         this.§"#S§ = param2;
         this.§]!$§ = param3;
         this.§ !^§ = param4 || §9@§;
         this.§0!R§ = param5;
         this.§46§ = param6;
         this.calculateMaxItemsVisible();
         this.§^"x§();
         if(this.§]!$§)
         {
            this.§="3§();
         }
         this.§'$&§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function calculateMaxItemsVisible() : void
      {
         this.§5!0§ = Math.floor(this.§0O§ / (this.§#"Y§ + this.§0!R§));
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§'$&§;
      }
      
      protected function §^"x§() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,1);
         _loc1_.graphics.drawRect(0,0,this.§0O§,this.§"#S§);
         _loc1_.graphics.endFill();
         this.§'$&§.addChild(_loc1_);
         this.§'$&§.mask = _loc1_;
      }
      
      public function setWidth(param1:Number) : void
      {
         var _loc2_:§9@§ = null;
         this.§0O§ = this.§'$&§.mask.width = param1;
         this.§5!0§ = Math.floor(this.§0O§ / (this.§#"Y§ + this.§0!R§));
         this.§@$"§ = Math.min(this.§5!0§,this.§]!$§.length);
         this.calculateMargin();
         while(this.§]B§.length > this.§5!0§)
         {
            _loc2_ = this.§]B§.pop();
            this.§'$&§.removeChild(_loc2_);
            this.§!"T§(_loc2_);
         }
         this.§=$9§(0);
         this.§@!a§ = this.§+!g§;
         this.updatePositions();
      }
      
      public function setHeight(param1:Number) : void
      {
         this.§"#S§ = this.§'$&§.mask.height = param1;
      }
      
      protected function §="3§(param1:Boolean = true) : void
      {
         var _loc3_:§9@§ = null;
         if(param1)
         {
            this.§@!a§ = 0;
            this.§+!g§ = 0;
         }
         this.§@$"§ = Math.min(this.§5!0§,this.§]!$§.length);
         this.calculateMargin();
         var _loc2_:int = 0;
         while(_loc2_ < this.§@$"§)
         {
            _loc3_ = this.§;!Z§();
            this.§'$&§.addChild(_loc3_);
            _loc3_.index = _loc2_;
            this.§-!,§(_loc3_,this.data[_loc2_]);
            this.§]B§.push(_loc3_);
            _loc2_++;
         }
         this.updatePositions();
      }
      
      protected function §-!,§(param1:§9@§, param2:Object) : void
      {
         param1.data = param2;
      }
      
      protected function calculateMargin() : void
      {
         this.§`"t§ = Math.min((this.§0O§ - this.§@$"§ * this.§#"Y§) / this.§@$"§,this.§46§);
      }
      
      protected function get §#"Y§() : Number
      {
         var _loc1_:§9@§ = null;
         if(this.§-$2§ == -1)
         {
            _loc1_ = this.§;!Z§();
            this.§-$2§ = _loc1_.width;
            this.§!"T§(_loc1_);
         }
         return this.§-$2§;
      }
      
      public function §5a§(param1:Array, param2:Boolean = true) : void
      {
         this.§]!$§ = param1;
         this.clear();
         if(this.§]!$§)
         {
            this.§="3§(param2);
         }
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         if(!this.§]!$§ || this.§]!$§.length == this.§@$"§)
         {
            return;
         }
         this.§=$9§(param1);
         if(param2)
         {
            this.§@!a§ = this.§+!g§;
            this.updatePositions();
         }
      }
      
      protected function §=$9§(param1:int) : void
      {
         if(this.§+!g§ - param1 > 0)
         {
            this.§+!g§ = 0;
         }
         else if(this.§+!g§ - param1 - this.§0#?§ < -this.§]!$§.length)
         {
            this.§+!g§ = -(this.§]!$§.length - this.§0#?§);
         }
         else
         {
            this.§+!g§ -= param1;
         }
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         if(this.§+!g§ == this.§@!a§)
         {
            return;
         }
         this.§@!a§ += (this.§+!g§ - this.§@!a§) / 4;
         if(Math.abs(this.§@!a§ - this.§+!g§) < 0.01)
         {
            this.§@!a§ = this.§+!g§;
         }
         this.updatePositions();
      }
      
      protected function updatePositions() : void
      {
         var _loc2_:§9@§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§9@§ = null;
         var _loc1_:int = this.§]B§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§]B§[_loc1_];
            _loc2_.x = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.x >= this.§0O§ || _loc2_.x <= -this.§#"Y§)
            {
               this.hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§]!$§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§#"Y§ && _loc3_ < this.§0O§ && !this.§"D§(_loc1_))
            {
               _loc4_ = this.§;!Z§();
               this.§'$&§.addChild(_loc4_);
               this.§-!,§(_loc4_,this.§]!$§[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               this.§]B§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function hide(param1:§9@§) : void
      {
         this.§'$&§.removeChild(param1);
         this.§]B§.splice(this.§]B§.indexOf(param1),1);
         this.§!"T§(param1);
      }
      
      protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(this.§`"t§ / 2 + (param1 + this.§@!a§) * (this.§#"Y§ + this.§`"t§));
      }
      
      protected function §"D§(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§]B§.length)
         {
            if(this.§]B§[_loc2_].index == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function refresh() : void
      {
         var _loc1_:§9@§ = null;
         for each(_loc1_ in this.§]B§)
         {
            this.§-!,§(_loc1_,this.§]!$§[_loc1_.index]);
         }
      }
      
      public function get data() : Array
      {
         return this.§]!$§;
      }
      
      public function set data(param1:Array) : void
      {
         this.§5a§(param1);
      }
      
      public function get §0#?§() : int
      {
         return this.§@$"§;
      }
      
      public function clear() : void
      {
         var _loc1_:§9@§ = null;
         while(this.§]B§.length > 0)
         {
            _loc1_ = this.§]B§.pop();
            this.§'$&§.removeChild(_loc1_);
            this.§!"T§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§+!g§;
      }
      
      protected function §;!Z§() : §9@§
      {
         if(this.§7$§.length > 0)
         {
            return this.§7$§.pop();
         }
         var _loc1_:§9@§ = new this.§ !^§();
         _loc1_.§#!B§ = this;
         return _loc1_;
      }
      
      protected function §!"T§(param1:§9@§) : void
      {
         this.§-!,§(param1,null);
         this.§7$§.push(param1);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§'$&§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
