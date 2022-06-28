package §#!"§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §6r§
   {
       
      
      protected var §2O§:Sprite;
      
      protected var §@5§:Number;
      
      protected var §?!k§:Number;
      
      protected var §5$§:Class;
      
      protected var §@f§:Number;
      
      protected var §,E§:Number;
      
      protected var §%R§:Number;
      
      protected var §%!L§:Number;
      
      protected var §<r§:Number = -1;
      
      protected var §%v§:Array;
      
      protected var §'6§:int = -1;
      
      protected var § true§:Number = 0;
      
      protected var §5!4§:int = 0;
      
      protected var §@!O§:Vector.<§[!'§>;
      
      protected var §;E§:Vector.<§[!'§>;
      
      public function §6r§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         this.§@!O§ = new Vector.<§[!'§>(0);
         this.§;E§ = new Vector.<§[!'§>(0);
         super();
         this.§2O§ = new Sprite();
         this.§@5§ = param1;
         this.§?!k§ = param2;
         this.§%v§ = param3;
         this.§5$§ = param4 || §[!'§;
         this.§@f§ = param5;
         this.§,E§ = param6;
         this.§5W§();
         this.§1d§();
         if(this.§%v§)
         {
            this.§%!F§();
         }
         this.§2O§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function §5W§() : void
      {
         this.§%!L§ = Math.floor(this.§@5§ / (this.§&!b§ + this.§@f§));
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§2O§;
      }
      
      protected function §1d§() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,1);
         _loc1_.graphics.drawRect(0,0,this.§@5§,this.§?!k§);
         _loc1_.graphics.endFill();
         this.§2O§.addChild(_loc1_);
         this.§2O§.mask = _loc1_;
      }
      
      public function §?!]§(param1:Number) : void
      {
         var _loc2_:§[!'§ = null;
         this.§@5§ = this.§2O§.mask.width = param1;
         this.§%!L§ = Math.max(0,Math.floor(this.§@5§ / (this.§&!b§ + this.§@f§)));
         this.§'6§ = Math.min(this.§%!L§,this.§%v§.length);
         this.§8s§();
         while(this.§;E§.length > this.§%!L§)
         {
            _loc2_ = this.§;E§.pop();
            if(_loc2_ != null)
            {
               this.§2O§.removeChild(_loc2_);
               this.§1K§(_loc2_);
            }
         }
         this.§+!"§(0);
         this.§ true§ = this.§5!4§;
         this.updatePositions();
      }
      
      protected function §%!F§() : void
      {
         var _loc2_:§[!'§ = null;
         this.§ true§ = 0;
         this.§5!4§ = 0;
         this.§'6§ = Math.min(this.§%!L§,this.§%v§.length);
         this.§8s§();
         var _loc1_:int = 0;
         while(_loc1_ < this.§'6§)
         {
            _loc2_ = this.§7!C§();
            this.§2O§.addChild(_loc2_);
            _loc2_.index = _loc1_;
            _loc2_.data = this.§%v§[_loc1_];
            this.§;E§.push(_loc2_);
            _loc1_++;
         }
         this.updatePositions();
      }
      
      protected function §8s§() : void
      {
         this.§%R§ = Math.min((this.§@5§ - this.§'6§ * this.§&!b§) / this.§'6§,this.§,E§);
      }
      
      protected function get §&!b§() : Number
      {
         var _loc1_:§[!'§ = null;
         if(this.§<r§ == -1)
         {
            _loc1_ = this.§7!C§();
            this.§<r§ = _loc1_.width;
            this.§1K§(_loc1_);
         }
         return this.§<r§;
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         if(this.§%v§.length == this.§'6§)
         {
            return;
         }
         this.§+!"§(param1);
         if(param2)
         {
            this.§ true§ = this.§5!4§;
            this.updatePositions();
         }
      }
      
      protected function §+!"§(param1:int) : void
      {
         if(this.§5!4§ - param1 > 0)
         {
            this.§5!4§ = 0;
         }
         else if(this.§5!4§ - param1 - this.§#X§ < -this.§%v§.length)
         {
            this.§5!4§ = -(this.§%v§.length - this.§#X§);
         }
         else
         {
            this.§5!4§ -= param1;
         }
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         if(this.§5!4§ == this.§ true§)
         {
            return;
         }
         this.§ true§ += (this.§5!4§ - this.§ true§) / 4;
         if(Math.abs(this.§ true§ - this.§5!4§) < 0.01)
         {
            this.§ true§ = this.§5!4§;
         }
         this.updatePositions();
      }
      
      protected function updatePositions() : void
      {
         var _loc2_:§[!'§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§[!'§ = null;
         var _loc1_:int = this.§;E§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§;E§[_loc1_];
            _loc2_.x = this.§=5§(_loc2_.index);
            if(_loc2_.x >= this.§@5§ || _loc2_.x <= -this.§&!b§)
            {
               this.§2O§.removeChild(_loc2_);
               this.§;E§.splice(this.§;E§.indexOf(_loc2_),1);
               this.§1K§(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§%v§.length)
         {
            _loc3_ = this.§=5§(_loc1_);
            if(_loc3_ > -this.§&!b§ && _loc3_ < this.§@5§ && !this.§,z§(_loc1_))
            {
               _loc4_ = this.§7!C§();
               this.§2O§.addChild(_loc4_);
               _loc4_.data = this.§%v§[_loc1_];
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               this.§;E§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function §=5§(param1:Number) : Number
      {
         return Math.round(this.§%R§ / 2 + (param1 + this.§ true§) * (this.§&!b§ + this.§%R§));
      }
      
      protected function §,z§(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§;E§.length)
         {
            if(this.§;E§[_loc2_].index == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §6!%§() : void
      {
         var _loc1_:§[!'§ = null;
         for each(_loc1_ in this.§;E§)
         {
            _loc1_.data = this.§%v§[_loc1_.index];
         }
      }
      
      public function get data() : Array
      {
         return this.§%v§;
      }
      
      public function set data(param1:Array) : void
      {
         this.§%v§ = param1;
         this.clear();
         if(this.§%v§)
         {
            this.§%!F§();
         }
      }
      
      public function get §#X§() : int
      {
         return this.§'6§;
      }
      
      public function clear() : void
      {
         var _loc1_:§[!'§ = null;
         while(this.§;E§.length > 0)
         {
            _loc1_ = this.§;E§.pop();
            this.§2O§.removeChild(_loc1_);
            this.§1K§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§5!4§;
      }
      
      protected function §7!C§() : §[!'§
      {
         if(this.§@!O§.length > 0)
         {
            return this.§@!O§.pop();
         }
         var _loc1_:§[!'§ = new this.§5$§();
         _loc1_.§-!+§ = this;
         return _loc1_;
      }
      
      protected function §1K§(param1:§[!'§) : void
      {
         param1.data = null;
         this.§@!O§.push(param1);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§2O§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
