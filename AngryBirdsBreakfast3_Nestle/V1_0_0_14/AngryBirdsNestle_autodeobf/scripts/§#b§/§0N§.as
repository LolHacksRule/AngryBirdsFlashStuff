package §#b§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §0N§
   {
       
      
      protected var § C§:Sprite;
      
      protected var §,Y§:Number;
      
      protected var §]!2§:Number;
      
      protected var §4!Y§:Class;
      
      protected var §35§:Number;
      
      protected var §]!l§:Number;
      
      protected var static:Number;
      
      protected var §8L§:Number;
      
      protected var §0W§:Number = -1;
      
      protected var §9"-§:Array;
      
      protected var §="!§:int = -1;
      
      protected var §^-§:Number = 0;
      
      protected var §0!§:int = 0;
      
      protected var §`O§:Vector.<§[9§>;
      
      protected var §!c§:Vector.<§[9§>;
      
      public function §0N§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         this.§`O§ = new Vector.<§[9§>(0);
         this.§!c§ = new Vector.<§[9§>(0);
         super();
         this.§ C§ = new Sprite();
         this.§,Y§ = param1;
         this.§]!2§ = param2;
         this.§9"-§ = param3;
         this.§4!Y§ = param4 || §[9§;
         this.§35§ = param5;
         this.§]!l§ = param6;
         this.calculateMaxItemsVisible();
         this.§`5§();
         if(this.§9"-§)
         {
            this.§1",§();
         }
         this.§ C§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function calculateMaxItemsVisible() : void
      {
         this.§8L§ = Math.floor(this.§,Y§ / (this.§=W§ + this.§35§));
      }
      
      public function get §<&§() : Sprite
      {
         return this.§ C§;
      }
      
      protected function §`5§() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,1);
         _loc1_.graphics.drawRect(0,0,this.§,Y§,this.§]!2§);
         _loc1_.graphics.endFill();
         this.§ C§.addChild(_loc1_);
         this.§ C§.mask = _loc1_;
      }
      
      public function setWidth(param1:Number) : void
      {
         var _loc2_:§[9§ = null;
         this.§,Y§ = this.§ C§.mask.width = param1;
         this.§8L§ = Math.floor(this.§,Y§ / (this.§=W§ + this.§35§));
         this.§="!§ = Math.min(this.§8L§,this.§9"-§.length);
         this.calculateMargin();
         while(this.§!c§.length > this.§8L§)
         {
            _loc2_ = this.§!c§.pop();
            this.§ C§.removeChild(_loc2_);
            this.§ !l§(_loc2_);
         }
         this.§,>§(0);
         this.§^-§ = this.§0!§;
         this.updatePositions();
      }
      
      public function setHeight(param1:Number) : void
      {
         this.§]!2§ = this.§ C§.mask.height = param1;
      }
      
      protected function §1",§(param1:Boolean = true) : void
      {
         var _loc3_:§[9§ = null;
         if(param1)
         {
            this.§^-§ = 0;
            this.§0!§ = 0;
         }
         this.§="!§ = Math.min(this.§8L§,this.§9"-§.length);
         this.calculateMargin();
         var _loc2_:int = 0;
         while(_loc2_ < this.§="!§)
         {
            _loc3_ = this.§9w§();
            this.§ C§.addChild(_loc3_);
            _loc3_.index = _loc2_;
            this.setRendererData(_loc3_,this.data[_loc2_]);
            this.§!c§.push(_loc3_);
            _loc2_++;
         }
         this.updatePositions();
      }
      
      protected function setRendererData(param1:§[9§, param2:Object) : void
      {
         param1.data = param2;
      }
      
      protected function calculateMargin() : void
      {
         this.static = Math.min((this.§,Y§ - this.§="!§ * this.§=W§) / this.§="!§,this.§]!l§);
      }
      
      protected function get §=W§() : Number
      {
         var _loc1_:§[9§ = null;
         if(this.§0W§ == -1)
         {
            _loc1_ = this.§9w§();
            this.§0W§ = _loc1_.width;
            this.§ !l§(_loc1_);
         }
         return this.§0W§;
      }
      
      public function setData(param1:Array, param2:Boolean = true) : void
      {
         this.§9"-§ = param1;
         this.clear();
         if(this.§9"-§)
         {
            this.§1",§(param2);
         }
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         if(!this.§9"-§ || this.§9"-§.length == this.§="!§)
         {
            return;
         }
         this.§,>§(param1);
         if(param2)
         {
            this.§^-§ = this.§0!§;
            this.updatePositions();
         }
      }
      
      protected function §,>§(param1:int) : void
      {
         if(this.§0!§ - param1 > 0)
         {
            this.§0!§ = 0;
         }
         else if(this.§0!§ - param1 - this.§`!P§ < -this.§9"-§.length)
         {
            this.§0!§ = -(this.§9"-§.length - this.§`!P§);
         }
         else
         {
            this.§0!§ -= param1;
         }
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         if(this.§0!§ == this.§^-§)
         {
            return;
         }
         this.§^-§ += (this.§0!§ - this.§^-§) / 4;
         if(Math.abs(this.§^-§ - this.§0!§) < 0.01)
         {
            this.§^-§ = this.§0!§;
         }
         this.updatePositions();
      }
      
      protected function updatePositions() : void
      {
         var _loc2_:§[9§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§[9§ = null;
         var _loc1_:int = this.§!c§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!c§[_loc1_];
            _loc2_.x = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.x >= this.§,Y§ || _loc2_.x <= -this.§=W§)
            {
               this.hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§9"-§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§=W§ && _loc3_ < this.§,Y§ && !this.§9z§(_loc1_))
            {
               _loc4_ = this.§9w§();
               this.§ C§.addChild(_loc4_);
               this.setRendererData(_loc4_,this.§9"-§[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               this.§!c§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function hide(param1:§[9§) : void
      {
         this.§ C§.removeChild(param1);
         this.§!c§.splice(this.§!c§.indexOf(param1),1);
         this.§ !l§(param1);
      }
      
      protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(this.static / 2 + (param1 + this.§^-§) * (this.§=W§ + this.static));
      }
      
      protected function §9z§(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§!c§.length)
         {
            if(this.§!c§[_loc2_].index == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function refresh() : void
      {
         var _loc1_:§[9§ = null;
         for each(_loc1_ in this.§!c§)
         {
            this.setRendererData(_loc1_,this.§9"-§[_loc1_.index]);
         }
      }
      
      public function get data() : Array
      {
         return this.§9"-§;
      }
      
      public function set data(param1:Array) : void
      {
         this.setData(param1);
      }
      
      public function get §`!P§() : int
      {
         return this.§="!§;
      }
      
      public function clear() : void
      {
         var _loc1_:§[9§ = null;
         while(this.§!c§.length > 0)
         {
            _loc1_ = this.§!c§.pop();
            this.§ C§.removeChild(_loc1_);
            this.§ !l§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§0!§;
      }
      
      protected function §9w§() : §[9§
      {
         if(this.§`O§.length > 0)
         {
            return this.§`O§.pop();
         }
         var _loc1_:§[9§ = new this.§4!Y§();
         _loc1_.§2!§ = this;
         return _loc1_;
      }
      
      protected function § !l§(param1:§[9§) : void
      {
         this.setRendererData(param1,null);
         this.§`O§.push(param1);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§ C§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
