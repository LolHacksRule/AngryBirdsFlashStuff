package §-5§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §'j§
   {
       
      
      protected var §]2§:Sprite;
      
      protected var §%!8§:Number;
      
      protected var §package§:Number;
      
      protected var §`!+§:Class;
      
      protected var §7?§:Number;
      
      protected var §5!"§:Number;
      
      protected var §5!g§:Number;
      
      protected var §4!r§:Number;
      
      protected var §0!j§:Number = -1;
      
      protected var §9%§:Array;
      
      protected var §2_§:int = -1;
      
      protected var §[!3§:Number = 0;
      
      protected var §%R§:int = 0;
      
      protected var §>M§:Vector.<§8!g§>;
      
      protected var §#!D§:Vector.<§8!g§>;
      
      public function §'j§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         this.§>M§ = new Vector.<§8!g§>(0);
         this.§#!D§ = new Vector.<§8!g§>(0);
         super();
         this.§]2§ = new Sprite();
         this.§%!8§ = param1;
         this.§package§ = param2;
         this.§9%§ = param3;
         this.§`!+§ = param4 || §8!g§;
         this.§7?§ = param5;
         this.§5!"§ = param6;
         this.§+!G§();
         this.§8!j§();
         if(this.§9%§)
         {
            this.§2!5§();
         }
         this.§]2§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function §+!G§() : void
      {
         this.§4!r§ = Math.floor(this.§%!8§ / (this.§,!R§ + this.§7?§));
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§]2§;
      }
      
      protected function §8!j§() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,1);
         _loc1_.graphics.drawRect(0,0,this.§%!8§,this.§package§);
         _loc1_.graphics.endFill();
         this.§]2§.addChild(_loc1_);
         this.§]2§.mask = _loc1_;
      }
      
      public function §6P§(param1:Number) : void
      {
         var _loc2_:§8!g§ = null;
         this.§%!8§ = this.§]2§.mask.width = param1;
         this.§4!r§ = Math.max(0,Math.floor(this.§%!8§ / (this.§,!R§ + this.§7?§)));
         this.§2_§ = Math.min(this.§4!r§,this.§9%§.length);
         this.§@!B§();
         while(this.§#!D§.length > this.§4!r§)
         {
            _loc2_ = this.§#!D§.pop();
            if(_loc2_ != null)
            {
               this.§]2§.removeChild(_loc2_);
               this.§`Q§(_loc2_);
            }
         }
         this.§#!E§(0);
         this.§[!3§ = this.§%R§;
         this.updatePositions();
      }
      
      protected function §2!5§() : void
      {
         var _loc2_:§8!g§ = null;
         this.§[!3§ = 0;
         this.§%R§ = 0;
         this.§2_§ = Math.min(this.§4!r§,this.§9%§.length);
         this.§@!B§();
         var _loc1_:int = 0;
         while(_loc1_ < this.§2_§)
         {
            _loc2_ = this.§%!x§();
            this.§]2§.addChild(_loc2_);
            _loc2_.index = _loc1_;
            _loc2_.data = this.§9%§[_loc1_];
            this.§#!D§.push(_loc2_);
            _loc1_++;
         }
         this.updatePositions();
      }
      
      protected function §@!B§() : void
      {
         this.§5!g§ = Math.min((this.§%!8§ - this.§2_§ * this.§,!R§) / this.§2_§,this.§5!"§);
      }
      
      protected function get §,!R§() : Number
      {
         var _loc1_:§8!g§ = null;
         if(this.§0!j§ == -1)
         {
            _loc1_ = this.§%!x§();
            this.§0!j§ = _loc1_.width;
            this.§`Q§(_loc1_);
         }
         return this.§0!j§;
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         if(this.§9%§.length == this.§2_§)
         {
            return;
         }
         this.§#!E§(param1);
         if(param2)
         {
            this.§[!3§ = this.§%R§;
            this.updatePositions();
         }
      }
      
      protected function §#!E§(param1:int) : void
      {
         if(this.§%R§ - param1 > 0)
         {
            this.§%R§ = 0;
         }
         else if(this.§%R§ - param1 - this.final < -this.§9%§.length)
         {
            this.§%R§ = -(this.§9%§.length - this.final);
         }
         else
         {
            this.§%R§ -= param1;
         }
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         if(this.§%R§ == this.§[!3§)
         {
            return;
         }
         this.§[!3§ += (this.§%R§ - this.§[!3§) / 4;
         if(Math.abs(this.§[!3§ - this.§%R§) < 0.01)
         {
            this.§[!3§ = this.§%R§;
         }
         this.updatePositions();
      }
      
      protected function updatePositions() : void
      {
         var _loc2_:§8!g§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§8!g§ = null;
         var _loc1_:int = this.§#!D§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§#!D§[_loc1_];
            _loc2_.x = this.§#!§(_loc2_.index);
            if(_loc2_.x >= this.§%!8§ || _loc2_.x <= -this.§,!R§)
            {
               this.§]2§.removeChild(_loc2_);
               this.§#!D§.splice(this.§#!D§.indexOf(_loc2_),1);
               this.§`Q§(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§9%§.length)
         {
            _loc3_ = this.§#!§(_loc1_);
            if(_loc3_ > -this.§,!R§ && _loc3_ < this.§%!8§ && !this.§throw§(_loc1_))
            {
               _loc4_ = this.§%!x§();
               this.§]2§.addChild(_loc4_);
               _loc4_.data = this.§9%§[_loc1_];
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               this.§#!D§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function §#!§(param1:Number) : Number
      {
         return Math.round(this.§5!g§ / 2 + (param1 + this.§[!3§) * (this.§,!R§ + this.§5!g§));
      }
      
      protected function §throw§(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§#!D§.length)
         {
            if(this.§#!D§[_loc2_].index == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §=!n§() : void
      {
         var _loc1_:§8!g§ = null;
         for each(_loc1_ in this.§#!D§)
         {
            _loc1_.data = this.§9%§[_loc1_.index];
         }
      }
      
      public function get data() : Array
      {
         return this.§9%§;
      }
      
      public function set data(param1:Array) : void
      {
         this.§9%§ = param1;
         this.clear();
         if(this.§9%§)
         {
            this.§2!5§();
         }
      }
      
      public function get final() : int
      {
         return this.§2_§;
      }
      
      public function clear() : void
      {
         var _loc1_:§8!g§ = null;
         while(this.§#!D§.length > 0)
         {
            _loc1_ = this.§#!D§.pop();
            this.§]2§.removeChild(_loc1_);
            this.§`Q§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§%R§;
      }
      
      protected function §%!x§() : §8!g§
      {
         if(this.§>M§.length > 0)
         {
            return this.§>M§.pop();
         }
         var _loc1_:§8!g§ = new this.§`!+§();
         _loc1_.§7!P§ = this;
         return _loc1_;
      }
      
      protected function §`Q§(param1:§8!g§) : void
      {
         param1.data = null;
         this.§>M§.push(param1);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§]2§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
