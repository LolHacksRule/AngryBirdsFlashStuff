package §for §
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §#!"§
   {
       
      
      protected var §]!c§:Sprite;
      
      protected var §@!1§:Number;
      
      protected var §,!i§:Number;
      
      protected var §-i§:Class;
      
      protected var §3!n§:Number;
      
      protected var §`!m§:Number;
      
      protected var §;^§:Number;
      
      protected var §2&§:Number;
      
      protected var § %§:Number = -1;
      
      protected var §5!d§:Array;
      
      protected var §8!y§:int = -1;
      
      protected var §'!q§:Number = 0;
      
      protected var §import§:int = 0;
      
      protected var §6i§:Vector.<§<!]§>;
      
      protected var §'Q§:Vector.<§<!]§>;
      
      public function §#!"§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         this.§6i§ = new Vector.<§<!]§>(0);
         this.§'Q§ = new Vector.<§<!]§>(0);
         super();
         this.§]!c§ = new Sprite();
         this.§@!1§ = param1;
         this.§,!i§ = param2;
         this.§5!d§ = param3;
         this.§-i§ = param4 || §<!]§;
         this.§3!n§ = param5;
         this.§`!m§ = param6;
         this.calculateMaxItemsVisible();
         this.§-o§();
         if(this.§5!d§)
         {
            this.§;%§();
         }
         this.§]!c§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function calculateMaxItemsVisible() : void
      {
         this.§2&§ = Math.floor(this.§@!1§ / (this.§3"2§ + this.§3!n§));
      }
      
      public function get §9B§() : Sprite
      {
         return this.§]!c§;
      }
      
      protected function §-o§() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,1);
         _loc1_.graphics.drawRect(0,0,this.§@!1§,this.§,!i§);
         _loc1_.graphics.endFill();
         this.§]!c§.addChild(_loc1_);
         this.§]!c§.mask = _loc1_;
      }
      
      public function setWidth(param1:Number) : void
      {
         var _loc2_:§<!]§ = null;
         this.§@!1§ = this.§]!c§.mask.width = param1;
         this.§2&§ = Math.floor(this.§@!1§ / (this.§3"2§ + this.§3!n§));
         this.§8!y§ = Math.min(this.§2&§,this.§5!d§.length);
         this.calculateMargin();
         while(this.§'Q§.length > this.§2&§)
         {
            _loc2_ = this.§'Q§.pop();
            this.§]!c§.removeChild(_loc2_);
            this.§%!J§(_loc2_);
         }
         this.§ r§(0);
         this.§'!q§ = this.§import§;
         this.updatePositions();
      }
      
      public function setHeight(param1:Number) : void
      {
         this.§,!i§ = this.§]!c§.mask.height = param1;
      }
      
      protected function §;%§() : void
      {
         var _loc2_:§<!]§ = null;
         this.§'!q§ = 0;
         this.§import§ = 0;
         this.§8!y§ = Math.min(this.§2&§,this.§5!d§.length);
         this.calculateMargin();
         var _loc1_:int = 0;
         while(_loc1_ < this.§8!y§)
         {
            _loc2_ = this.§7!0§();
            this.§]!c§.addChild(_loc2_);
            _loc2_.index = _loc1_;
            this.setRendererData(_loc2_,this.data[_loc1_]);
            this.§'Q§.push(_loc2_);
            _loc1_++;
         }
         this.updatePositions();
      }
      
      protected function setRendererData(param1:§<!]§, param2:Object) : void
      {
         param1.data = param2;
      }
      
      protected function calculateMargin() : void
      {
         this.§;^§ = Math.min((this.§@!1§ - this.§8!y§ * this.§3"2§) / this.§8!y§,this.§`!m§);
      }
      
      protected function get §3"2§() : Number
      {
         var _loc1_:§<!]§ = null;
         if(this.§ %§ == -1)
         {
            _loc1_ = this.§7!0§();
            this.§ %§ = _loc1_.width;
            this.§%!J§(_loc1_);
         }
         return this.§ %§;
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         if(!this.§5!d§ || this.§5!d§.length == this.§8!y§)
         {
            return;
         }
         this.§ r§(param1);
         if(param2)
         {
            this.§'!q§ = this.§import§;
            this.updatePositions();
         }
      }
      
      protected function § r§(param1:int) : void
      {
         if(this.§import§ - param1 > 0)
         {
            this.§import§ = 0;
         }
         else if(this.§import§ - param1 - this.§?"+§ < -this.§5!d§.length)
         {
            this.§import§ = -(this.§5!d§.length - this.§?"+§);
         }
         else
         {
            this.§import§ -= param1;
         }
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         if(this.§import§ == this.§'!q§)
         {
            return;
         }
         this.§'!q§ += (this.§import§ - this.§'!q§) / 4;
         if(Math.abs(this.§'!q§ - this.§import§) < 0.01)
         {
            this.§'!q§ = this.§import§;
         }
         this.updatePositions();
      }
      
      protected function updatePositions() : void
      {
         var _loc2_:§<!]§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§<!]§ = null;
         var _loc1_:int = this.§'Q§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§'Q§[_loc1_];
            _loc2_.x = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.x >= this.§@!1§ || _loc2_.x <= -this.§3"2§)
            {
               this.hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§5!d§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§3"2§ && _loc3_ < this.§@!1§ && !this.§"!c§(_loc1_))
            {
               _loc4_ = this.§7!0§();
               this.§]!c§.addChild(_loc4_);
               this.setRendererData(_loc4_,this.§5!d§[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               this.§'Q§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function hide(param1:§<!]§) : void
      {
         this.§]!c§.removeChild(param1);
         this.§'Q§.splice(this.§'Q§.indexOf(param1),1);
         this.§%!J§(param1);
      }
      
      protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(this.§;^§ / 2 + (param1 + this.§'!q§) * (this.§3"2§ + this.§;^§));
      }
      
      protected function §"!c§(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§'Q§.length)
         {
            if(this.§'Q§[_loc2_].index == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function refresh() : void
      {
         var _loc1_:§<!]§ = null;
         for each(_loc1_ in this.§'Q§)
         {
            this.setRendererData(_loc1_,this.§5!d§[_loc1_.index]);
         }
      }
      
      public function get data() : Array
      {
         return this.§5!d§;
      }
      
      public function set data(param1:Array) : void
      {
         this.§5!d§ = param1;
         this.clear();
         if(this.§5!d§)
         {
            this.§;%§();
         }
      }
      
      public function get §?"+§() : int
      {
         return this.§8!y§;
      }
      
      public function clear() : void
      {
         var _loc1_:§<!]§ = null;
         while(this.§'Q§.length > 0)
         {
            _loc1_ = this.§'Q§.pop();
            this.§]!c§.removeChild(_loc1_);
            this.§%!J§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§import§;
      }
      
      protected function §7!0§() : §<!]§
      {
         if(this.§6i§.length > 0)
         {
            return this.§6i§.pop();
         }
         var _loc1_:§<!]§ = new this.§-i§();
         _loc1_.§>!0§ = this;
         return _loc1_;
      }
      
      protected function §%!J§(param1:§<!]§) : void
      {
         this.setRendererData(param1,null);
         this.§6i§.push(param1);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§]!c§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
