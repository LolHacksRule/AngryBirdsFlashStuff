package §-!u§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §&"-§
   {
       
      
      protected var §#e§:Sprite;
      
      protected var §^!,§:Number;
      
      protected var §,2§:Number;
      
      protected var §;!!§:Class;
      
      protected var §'!=§:Number;
      
      protected var §!!x§:Number;
      
      protected var §<N§:Number;
      
      protected var §0!r§:Number;
      
      protected var §2m§:Number = -1;
      
      protected var §&"$§:Array;
      
      protected var §'",§:int = -1;
      
      protected var §'!"§:Number = 0;
      
      protected var §8! §:int = 0;
      
      protected var §1`§:Vector.<§2u§>;
      
      protected var §+7§:Vector.<§2u§>;
      
      public function §&"-§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         this.§1`§ = new Vector.<§2u§>(0);
         this.§+7§ = new Vector.<§2u§>(0);
         super();
         this.§#e§ = new Sprite();
         this.§^!,§ = param1;
         this.§,2§ = param2;
         this.§&"$§ = param3;
         this.§;!!§ = param4 || §2u§;
         this.§'!=§ = param5;
         this.§!!x§ = param6;
         this.calculateMaxItemsVisible();
         this.§6x§();
         if(this.§&"$§)
         {
            this.§]X§();
         }
         this.§#e§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function calculateMaxItemsVisible() : void
      {
         this.§0!r§ = Math.floor(this.§^!,§ / (this.§6Q§ + this.§'!=§));
      }
      
      public function get §`h§() : Sprite
      {
         return this.§#e§;
      }
      
      protected function §6x§() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,1);
         _loc1_.graphics.drawRect(0,0,this.§^!,§,this.§,2§);
         _loc1_.graphics.endFill();
         this.§#e§.addChild(_loc1_);
         this.§#e§.mask = _loc1_;
      }
      
      public function setWidth(param1:Number) : void
      {
         var _loc2_:§2u§ = null;
         this.§^!,§ = this.§#e§.mask.width = param1;
         this.§0!r§ = Math.floor(this.§^!,§ / (this.§6Q§ + this.§'!=§));
         this.§'",§ = Math.min(this.§0!r§,this.§&"$§.length);
         this.calculateMargin();
         while(this.§+7§.length > this.§0!r§)
         {
            _loc2_ = this.§+7§.pop();
            this.§#e§.removeChild(_loc2_);
            this.§@!e§(_loc2_);
         }
         this.§8!`§(0);
         this.§'!"§ = this.§8! §;
         this.updatePositions();
      }
      
      public function setHeight(param1:Number) : void
      {
         this.§,2§ = this.§#e§.mask.height = param1;
      }
      
      protected function §]X§(param1:Boolean = true) : void
      {
         var _loc3_:§2u§ = null;
         if(param1)
         {
            this.§'!"§ = 0;
            this.§8! § = 0;
         }
         this.§'",§ = Math.min(this.§0!r§,this.§&"$§.length);
         this.calculateMargin();
         var _loc2_:int = 0;
         while(_loc2_ < this.§'",§)
         {
            _loc3_ = this.§"!n§();
            this.§#e§.addChild(_loc3_);
            _loc3_.index = _loc2_;
            this.setRendererData(_loc3_,this.data[_loc2_]);
            this.§+7§.push(_loc3_);
            _loc2_++;
         }
         this.updatePositions();
      }
      
      protected function setRendererData(param1:§2u§, param2:Object) : void
      {
         param1.data = param2;
      }
      
      protected function calculateMargin() : void
      {
         this.§<N§ = Math.min((this.§^!,§ - this.§'",§ * this.§6Q§) / this.§'",§,this.§!!x§);
      }
      
      protected function get §6Q§() : Number
      {
         var _loc1_:§2u§ = null;
         if(this.§2m§ == -1)
         {
            _loc1_ = this.§"!n§();
            this.§2m§ = _loc1_.width;
            this.§@!e§(_loc1_);
         }
         return this.§2m§;
      }
      
      public function setData(param1:Array, param2:Boolean = true) : void
      {
         this.§&"$§ = param1;
         this.clear();
         if(this.§&"$§)
         {
            this.§]X§(param2);
         }
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         if(!this.§&"$§ || this.§&"$§.length == this.§'",§)
         {
            return;
         }
         this.§8!`§(param1);
         if(param2)
         {
            this.§'!"§ = this.§8! §;
            this.updatePositions();
         }
      }
      
      protected function §8!`§(param1:int) : void
      {
         if(this.§8! § - param1 > 0)
         {
            this.§8! § = 0;
         }
         else if(this.§8! § - param1 - this.§=I§ < -this.§&"$§.length)
         {
            this.§8! § = -(this.§&"$§.length - this.§=I§);
         }
         else
         {
            this.§8! § -= param1;
         }
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         if(this.§8! § == this.§'!"§)
         {
            return;
         }
         this.§'!"§ += (this.§8! § - this.§'!"§) / 4;
         if(Math.abs(this.§'!"§ - this.§8! §) < 0.01)
         {
            this.§'!"§ = this.§8! §;
         }
         this.updatePositions();
      }
      
      protected function updatePositions() : void
      {
         var _loc2_:§2u§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§2u§ = null;
         var _loc1_:int = this.§+7§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§+7§[_loc1_];
            _loc2_.x = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.x >= this.§^!,§ || _loc2_.x <= -this.§6Q§)
            {
               this.hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§&"$§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§6Q§ && _loc3_ < this.§^!,§ && !this.§3!L§(_loc1_))
            {
               _loc4_ = this.§"!n§();
               this.§#e§.addChild(_loc4_);
               this.setRendererData(_loc4_,this.§&"$§[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               this.§+7§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function hide(param1:§2u§) : void
      {
         this.§#e§.removeChild(param1);
         this.§+7§.splice(this.§+7§.indexOf(param1),1);
         this.§@!e§(param1);
      }
      
      protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(this.§<N§ / 2 + (param1 + this.§'!"§) * (this.§6Q§ + this.§<N§));
      }
      
      protected function §3!L§(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§+7§.length)
         {
            if(this.§+7§[_loc2_].index == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function refresh() : void
      {
         var _loc1_:§2u§ = null;
         for each(_loc1_ in this.§+7§)
         {
            this.setRendererData(_loc1_,this.§&"$§[_loc1_.index]);
         }
      }
      
      public function get data() : Array
      {
         return this.§&"$§;
      }
      
      public function set data(param1:Array) : void
      {
         this.setData(param1);
      }
      
      public function get §=I§() : int
      {
         return this.§'",§;
      }
      
      public function clear() : void
      {
         var _loc1_:§2u§ = null;
         while(this.§+7§.length > 0)
         {
            _loc1_ = this.§+7§.pop();
            this.§#e§.removeChild(_loc1_);
            this.§@!e§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§8! §;
      }
      
      protected function §"!n§() : §2u§
      {
         if(this.§1`§.length > 0)
         {
            return this.§1`§.pop();
         }
         var _loc1_:§2u§ = new this.§;!!§();
         _loc1_.§6!2§ = this;
         return _loc1_;
      }
      
      protected function §@!e§(param1:§2u§) : void
      {
         this.setRendererData(param1,null);
         this.§1`§.push(param1);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§#e§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
