package §2!o§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §-"%§
   {
       
      
      protected var §?!T§:Sprite;
      
      protected var §#!n§:Number;
      
      protected var §,9§:Number;
      
      protected var §<!m§:Class;
      
      protected var §="-§:Number;
      
      protected var §const§:Number;
      
      protected var §1^§:Number;
      
      protected var §<M§:Number;
      
      protected var §;"8§:Number = -1;
      
      protected var §+]§:Array;
      
      protected var §7"A§:int = -1;
      
      protected var §&"P§:Number = 0;
      
      protected var §#w§:int = 0;
      
      protected var §6"J§:Vector.<§2"3§>;
      
      protected var §5C§:Vector.<§2"3§>;
      
      public function §-"%§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         this.§6"J§ = new Vector.<§2"3§>(0);
         this.§5C§ = new Vector.<§2"3§>(0);
         super();
         this.§?!T§ = new Sprite();
         this.§#!n§ = param1;
         this.§,9§ = param2;
         this.§+]§ = param3;
         this.§<!m§ = param4 || §2"3§;
         this.§="-§ = param5;
         this.§const§ = param6;
         this.calculateMaxItemsVisible();
         this.§0v§();
         if(this.§+]§)
         {
            this.§=`§();
         }
         this.§?!T§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function calculateMaxItemsVisible() : void
      {
         this.§<M§ = Math.floor(this.§#!n§ / (this.§+q§ + this.§="-§));
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§?!T§;
      }
      
      protected function §0v§() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,1);
         _loc1_.graphics.drawRect(0,0,this.§#!n§,this.§,9§);
         _loc1_.graphics.endFill();
         this.§?!T§.addChild(_loc1_);
         this.§?!T§.mask = _loc1_;
      }
      
      public function setWidth(param1:Number) : void
      {
         var _loc2_:§2"3§ = null;
         this.§#!n§ = this.§?!T§.mask.width = param1;
         this.§<M§ = Math.floor(this.§#!n§ / (this.§+q§ + this.§="-§));
         this.§7"A§ = Math.min(this.§<M§,this.§+]§.length);
         this.calculateMargin();
         while(this.§5C§.length > this.§<M§)
         {
            _loc2_ = this.§5C§.pop();
            this.§?!T§.removeChild(_loc2_);
            this.§&!N§(_loc2_);
         }
         this.§@+§(0);
         this.§&"P§ = this.§#w§;
         this.updatePositions();
      }
      
      protected function §=`§() : void
      {
         var _loc2_:§2"3§ = null;
         this.§&"P§ = 0;
         this.§#w§ = 0;
         this.§7"A§ = Math.min(this.§<M§,this.§+]§.length);
         this.calculateMargin();
         var _loc1_:int = 0;
         while(_loc1_ < this.§7"A§)
         {
            _loc2_ = this.§5!v§();
            this.§?!T§.addChild(_loc2_);
            _loc2_.index = _loc1_;
            _loc2_.data = this.§+]§[_loc1_];
            this.§5C§.push(_loc2_);
            _loc1_++;
         }
         this.updatePositions();
      }
      
      protected function calculateMargin() : void
      {
         this.§1^§ = Math.min((this.§#!n§ - this.§7"A§ * this.§+q§) / this.§7"A§,this.§const§);
      }
      
      protected function get §+q§() : Number
      {
         var _loc1_:§2"3§ = null;
         if(this.§;"8§ == -1)
         {
            _loc1_ = this.§5!v§();
            this.§;"8§ = _loc1_.width;
            this.§&!N§(_loc1_);
         }
         return this.§;"8§;
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         if(this.§+]§.length == this.§7"A§)
         {
            return;
         }
         this.§@+§(param1);
         if(param2)
         {
            this.§&"P§ = this.§#w§;
            this.updatePositions();
         }
      }
      
      public function §0"Q§(param1:int) : Boolean
      {
         if(this.§#w§ - param1 > 0 || this.§#w§ - param1 - this.§0"P§ < -this.§+]§.length)
         {
            return true;
         }
         return false;
      }
      
      protected function §@+§(param1:int) : void
      {
         if(this.§#w§ - param1 > 0)
         {
            this.§#w§ = 0;
         }
         else if(this.§#w§ - param1 - this.§0"P§ < -this.§+]§.length)
         {
            this.§#w§ = -(this.§+]§.length - this.§0"P§);
         }
         else
         {
            this.§#w§ -= param1;
         }
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         if(this.§#w§ == this.§&"P§)
         {
            return;
         }
         this.§&"P§ += (this.§#w§ - this.§&"P§) / 4;
         if(Math.abs(this.§&"P§ - this.§#w§) < 0.01)
         {
            this.§&"P§ = this.§#w§;
         }
         this.updatePositions();
      }
      
      protected function updatePositions() : void
      {
         var _loc2_:§2"3§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§2"3§ = null;
         var _loc1_:int = this.§5C§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§5C§[_loc1_];
            _loc2_.x = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.x >= this.§#!n§ || _loc2_.x <= -this.§+q§)
            {
               this.§?!T§.removeChild(_loc2_);
               this.§5C§.splice(this.§5C§.indexOf(_loc2_),1);
               this.§&!N§(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§+]§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§+q§ && _loc3_ < this.§#!n§ - this.§+q§ && !this.§2X§(_loc1_))
            {
               _loc4_ = this.§5!v§();
               this.§?!T§.addChild(_loc4_);
               _loc4_.data = this.§+]§[_loc1_];
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               this.§5C§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(this.§1^§ / 2 + (param1 + this.§&"P§) * (this.§+q§ + this.§1^§));
      }
      
      protected function §2X§(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§5C§.length)
         {
            if(this.§5C§[_loc2_].index == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §->§() : void
      {
         var _loc1_:§2"3§ = null;
         for each(_loc1_ in this.§5C§)
         {
            _loc1_.data = this.§+]§[_loc1_.index];
         }
      }
      
      public function get data() : Array
      {
         return this.§+]§;
      }
      
      public function set data(param1:Array) : void
      {
         this.§+]§ = param1;
         this.clear();
         if(this.§+]§)
         {
            this.§=`§();
         }
      }
      
      public function get §0"P§() : int
      {
         return this.§7"A§;
      }
      
      public function clear() : void
      {
         var _loc1_:§2"3§ = null;
         while(this.§5C§.length > 0)
         {
            _loc1_ = this.§5C§.pop();
            this.§?!T§.removeChild(_loc1_);
            this.§&!N§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§#w§;
      }
      
      protected function §5!v§() : §2"3§
      {
         if(this.§6"J§.length > 0)
         {
            return this.§6"J§.pop();
         }
         var _loc1_:§2"3§ = new this.§<!m§();
         _loc1_.§>"7§ = this;
         return _loc1_;
      }
      
      protected function §&!N§(param1:§2"3§) : void
      {
         param1.data = null;
         this.§6"J§.push(param1);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§?!T§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
