package §]z§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §7v§
   {
       
      
      protected var §8!9§:Sprite;
      
      protected var §70§:Number;
      
      protected var §-!&§:Number;
      
      protected var § d§:Class;
      
      protected var §'!f§:Number;
      
      protected var §#^§:Number;
      
      protected var §true §:Number;
      
      protected var §7!O§:Number;
      
      protected var §`!=§:Number = -1;
      
      protected var §0A§:Array;
      
      protected var §!k§:int = -1;
      
      protected var §7!f§:Number = 0;
      
      protected var §7k§:int = 0;
      
      protected var §=e§:Vector.<§`V§>;
      
      protected var §4"§:Vector.<§`V§>;
      
      public function §7v§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         this.§=e§ = new Vector.<§`V§>(0);
         this.§4"§ = new Vector.<§`V§>(0);
         super();
         this.§8!9§ = new Sprite();
         this.§70§ = param1;
         this.§-!&§ = param2;
         this.§0A§ = param3;
         this.§ d§ = param4 || §`V§;
         this.§'!f§ = param5;
         this.§#^§ = param6;
         this.§]]§();
         this.§^!O§();
         if(this.§0A§)
         {
            this.§&y§();
         }
         this.§8!9§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function §]]§() : void
      {
         this.§7!O§ = Math.floor(this.§70§ / (this.§=!C§ + this.§'!f§));
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§8!9§;
      }
      
      protected function §^!O§() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,1);
         _loc1_.graphics.drawRect(0,0,this.§70§,this.§-!&§);
         _loc1_.graphics.endFill();
         this.§8!9§.addChild(_loc1_);
         this.§8!9§.mask = _loc1_;
      }
      
      public function §;<§(param1:Number) : void
      {
         var _loc2_:§`V§ = null;
         this.§70§ = this.§8!9§.mask.width = param1;
         this.§7!O§ = Math.max(0,Math.floor(this.§70§ / (this.§=!C§ + this.§'!f§)));
         this.§!k§ = Math.min(this.§7!O§,this.§0A§.length);
         this.§=%§();
         while(this.§4"§.length > this.§7!O§)
         {
            _loc2_ = this.§4"§.pop();
            if(_loc2_ != null)
            {
               this.§8!9§.removeChild(_loc2_);
               this.§9t§(_loc2_);
            }
         }
         this.§ !-§(0);
         this.§7!f§ = this.§7k§;
         this.updatePositions();
      }
      
      protected function §&y§() : void
      {
         var _loc2_:§`V§ = null;
         this.§7!f§ = 0;
         this.§7k§ = 0;
         this.§!k§ = Math.min(this.§7!O§,this.§0A§.length);
         this.§=%§();
         var _loc1_:int = 0;
         while(_loc1_ < this.§!k§)
         {
            _loc2_ = this.get();
            this.§8!9§.addChild(_loc2_);
            _loc2_.index = _loc1_;
            _loc2_.data = this.§0A§[_loc1_];
            this.§4"§.push(_loc2_);
            _loc1_++;
         }
         this.updatePositions();
      }
      
      protected function §=%§() : void
      {
         this.§true § = Math.min((this.§70§ - this.§!k§ * this.§=!C§) / this.§!k§,this.§#^§);
      }
      
      protected function get §=!C§() : Number
      {
         var _loc1_:§`V§ = null;
         if(this.§`!=§ == -1)
         {
            _loc1_ = this.get();
            this.§`!=§ = _loc1_.width;
            this.§9t§(_loc1_);
         }
         return this.§`!=§;
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         if(this.§0A§.length == this.§!k§)
         {
            return;
         }
         this.§ !-§(param1);
         if(param2)
         {
            this.§7!f§ = this.§7k§;
            this.updatePositions();
         }
      }
      
      protected function § !-§(param1:int) : void
      {
         if(this.§7k§ - param1 > 0)
         {
            this.§7k§ = 0;
         }
         else if(this.§7k§ - param1 - this.§'!V§ < -this.§0A§.length)
         {
            this.§7k§ = -(this.§0A§.length - this.§'!V§);
         }
         else
         {
            this.§7k§ -= param1;
         }
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         if(this.§7k§ == this.§7!f§)
         {
            return;
         }
         this.§7!f§ += (this.§7k§ - this.§7!f§) / 4;
         if(Math.abs(this.§7!f§ - this.§7k§) < 0.01)
         {
            this.§7!f§ = this.§7k§;
         }
         this.updatePositions();
      }
      
      protected function updatePositions() : void
      {
         var _loc2_:§`V§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§`V§ = null;
         var _loc1_:int = this.§4"§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§4"§[_loc1_];
            _loc2_.x = this.§"!§(_loc2_.index);
            if(_loc2_.x >= this.§70§ || _loc2_.x <= -this.§=!C§)
            {
               this.§8!9§.removeChild(_loc2_);
               this.§4"§.splice(this.§4"§.indexOf(_loc2_),1);
               this.§9t§(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§0A§.length)
         {
            _loc3_ = this.§"!§(_loc1_);
            if(_loc3_ > -this.§=!C§ && _loc3_ < this.§70§ && !this.§%>§(_loc1_))
            {
               _loc4_ = this.get();
               this.§8!9§.addChild(_loc4_);
               _loc4_.data = this.§0A§[_loc1_];
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               this.§4"§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function §"!§(param1:Number) : Number
      {
         return Math.round(this.§true § / 2 + (param1 + this.§7!f§) * (this.§=!C§ + this.§true §));
      }
      
      protected function §%>§(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§4"§.length)
         {
            if(this.§4"§[_loc2_].index == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §#!g§() : void
      {
         var _loc1_:§`V§ = null;
         for each(_loc1_ in this.§4"§)
         {
            _loc1_.data = this.§0A§[_loc1_.index];
         }
      }
      
      public function get data() : Array
      {
         return this.§0A§;
      }
      
      public function set data(param1:Array) : void
      {
         this.§0A§ = param1;
         this.clear();
         if(this.§0A§)
         {
            this.§&y§();
         }
      }
      
      public function get §'!V§() : int
      {
         return this.§!k§;
      }
      
      public function clear() : void
      {
         var _loc1_:§`V§ = null;
         while(this.§4"§.length > 0)
         {
            _loc1_ = this.§4"§.pop();
            this.§8!9§.removeChild(_loc1_);
            this.§9t§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§7k§;
      }
      
      protected function get() : §`V§
      {
         if(this.§=e§.length > 0)
         {
            return this.§=e§.pop();
         }
         var _loc1_:§`V§ = new this.§ d§();
         _loc1_.§7!I§ = this;
         return _loc1_;
      }
      
      protected function §9t§(param1:§`V§) : void
      {
         param1.data = null;
         this.§=e§.push(param1);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§8!9§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
