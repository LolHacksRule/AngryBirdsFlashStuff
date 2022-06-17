package §2!u§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §1#q§
   {
       
      
      protected var § U§:Sprite;
      
      protected var §<#@§:Number;
      
      protected var §!l§:Number;
      
      protected var §6I§:Class;
      
      protected var §'#1§:Number;
      
      protected var §%"&§:Number;
      
      protected var §1#<§:Number;
      
      protected var §,$ §:Number;
      
      protected var §&m§:Number = -1;
      
      protected var §"""§:Array;
      
      protected var §8"d§:int = -1;
      
      protected var §'#B§:Number = 0;
      
      protected var §@#+§:int = 0;
      
      protected var §'#K§:Vector.<§<#h§>;
      
      protected var §9n§:Vector.<§<#h§>;
      
      public function §1#q§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         this.§'#K§ = new Vector.<§<#h§>(0);
         this.§9n§ = new Vector.<§<#h§>(0);
         super();
         this.§ U§ = new Sprite();
         this.§<#@§ = param1;
         this.§!l§ = param2;
         this.§"""§ = param3;
         this.§6I§ = param4 || §<#h§;
         this.§'#1§ = param5;
         this.§%"&§ = param6;
         this.calculateMaxItemsVisible();
         this.§'!r§();
         if(this.§"""§)
         {
            this.§%!7§();
         }
         this.§ U§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function calculateMaxItemsVisible() : void
      {
         this.§,$ § = Math.floor(this.§<#@§ / (this.§@#v§ + this.§'#1§));
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§ U§;
      }
      
      protected function §'!r§() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,1);
         _loc1_.graphics.drawRect(0,0,this.§<#@§,this.§!l§);
         _loc1_.graphics.endFill();
         this.§ U§.addChild(_loc1_);
         this.§ U§.mask = _loc1_;
      }
      
      public function setWidth(param1:Number) : void
      {
         var _loc2_:§<#h§ = null;
         this.§<#@§ = this.§ U§.mask.width = param1;
         this.§,$ § = Math.floor(this.§<#@§ / (this.§@#v§ + this.§'#1§));
         this.§8"d§ = Math.min(this.§,$ §,this.§"""§.length);
         this.calculateMargin();
         while(this.§9n§.length > this.§,$ §)
         {
            _loc2_ = this.§9n§.pop();
            this.§ U§.removeChild(_loc2_);
            this.§4$%§(_loc2_);
         }
         this.§5u§(0);
         this.§'#B§ = this.§@#+§;
         this.updatePositions();
      }
      
      public function §""4§() : void
      {
         var _loc2_:§<#h§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§9n§.length)
         {
            this.§ U§.removeChild(this.§9n§[_loc1_]);
            _loc1_++;
         }
         this.§9n§.splice(0,this.§9n§.length);
         _loc1_ = 0;
         while(_loc1_ < this.§"""§.length)
         {
            _loc2_ = this.§3"C§();
            _loc2_.index = _loc1_;
            _loc2_.data = this.§"""§[_loc1_];
            this.§9n§.push(_loc2_);
            this.§ U§.addChild(_loc2_);
            _loc1_++;
         }
      }
      
      protected function §%!7§() : void
      {
         var _loc2_:§<#h§ = null;
         this.§'#B§ = 0;
         this.§@#+§ = 0;
         this.§8"d§ = Math.min(this.§,$ §,this.§"""§.length);
         this.calculateMargin();
         var _loc1_:int = 0;
         while(_loc1_ < this.§8"d§)
         {
            _loc2_ = this.§3"C§();
            this.§ U§.addChild(_loc2_);
            _loc2_.index = _loc1_;
            _loc2_.data = this.§"""§[_loc1_];
            this.§9n§.push(_loc2_);
            _loc1_++;
         }
         this.updatePositions();
      }
      
      protected function calculateMargin() : void
      {
         this.§1#<§ = Math.min((this.§<#@§ - this.§8"d§ * this.§@#v§) / this.§8"d§,this.§%"&§);
      }
      
      protected function get §@#v§() : Number
      {
         var _loc1_:§<#h§ = null;
         if(this.§&m§ == -1)
         {
            _loc1_ = this.§3"C§();
            this.§&m§ = _loc1_.width;
            this.§4$%§(_loc1_);
         }
         return this.§&m§;
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         if(this.§"""§.length == this.§8"d§)
         {
            return;
         }
         this.§5u§(param1);
         if(param2)
         {
            this.§'#B§ = this.§@#+§;
            this.updatePositions();
         }
      }
      
      public function §9!E§(param1:int) : Boolean
      {
         if(this.§@#+§ - param1 > 0 || this.§@#+§ - param1 - this.§@"t§ < -this.§"""§.length)
         {
            return true;
         }
         return false;
      }
      
      protected function §5u§(param1:int) : void
      {
         if(this.§@#+§ - param1 > 0)
         {
            this.§@#+§ = 0;
         }
         else if(this.§@#+§ - param1 - this.§@"t§ < -this.§"""§.length)
         {
            this.§@#+§ = -(this.§"""§.length - this.§@"t§);
         }
         else
         {
            this.§@#+§ -= param1;
         }
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         if(this.§@#+§ == this.§'#B§)
         {
            return;
         }
         this.§'#B§ += (this.§@#+§ - this.§'#B§) / 4;
         if(Math.abs(this.§'#B§ - this.§@#+§) < 0.01)
         {
            this.§'#B§ = this.§@#+§;
         }
         this.updatePositions();
      }
      
      public function updatePositions() : void
      {
         var _loc2_:§<#h§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§<#h§ = null;
         var _loc1_:int = this.§9n§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§9n§[_loc1_];
            _loc2_.x = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.x >= this.§<#@§ || _loc2_.x <= -this.§@#v§)
            {
               this.§ U§.removeChild(_loc2_);
               this.§9n§.splice(this.§9n§.indexOf(_loc2_),1);
               this.§4$%§(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§"""§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§@#v§ && _loc3_ < this.§<#@§ - this.§@#v§ && !this.§^$ §(_loc1_))
            {
               _loc4_ = this.§3"C§();
               this.§ U§.addChild(_loc4_);
               _loc4_.data = this.§"""§[_loc1_];
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               this.§9n§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(this.§1#<§ / 2 + (param1 + this.§'#B§) * (this.§@#v§ + this.§1#<§));
      }
      
      protected function §^$ §(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§9n§.length)
         {
            if(this.§9n§[_loc2_].index == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function refresh() : void
      {
         var _loc1_:§<#h§ = null;
         for each(_loc1_ in this.§9n§)
         {
            _loc1_.data = this.§"""§[_loc1_.index];
         }
      }
      
      public function get data() : Array
      {
         return this.§"""§;
      }
      
      public function set data(param1:Array) : void
      {
         this.§"""§ = param1;
         this.clear();
         if(this.§"""§)
         {
            this.§%!7§();
         }
      }
      
      public function get §@"t§() : int
      {
         return this.§8"d§;
      }
      
      public function clear() : void
      {
         var _loc1_:§<#h§ = null;
         while(this.§9n§.length > 0)
         {
            _loc1_ = this.§9n§.pop();
            this.§ U§.removeChild(_loc1_);
            this.§4$%§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§@#+§;
      }
      
      protected function §3"C§() : §<#h§
      {
         if(this.§'#K§.length > 0)
         {
            return this.§'#K§.pop();
         }
         var _loc1_:§<#h§ = new this.§6I§();
         _loc1_.§"!<§ = this;
         return _loc1_;
      }
      
      protected function §4$%§(param1:§<#h§) : void
      {
         param1.data = null;
         this.§'#K§.push(param1);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§ U§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
