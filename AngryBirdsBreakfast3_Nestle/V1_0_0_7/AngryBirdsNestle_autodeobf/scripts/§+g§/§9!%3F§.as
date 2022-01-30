package §+g§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §9!?§
   {
       
      
      protected var §%!D§:Sprite;
      
      protected var §"w§:Number;
      
      protected var §?K§:Number;
      
      protected var §0!e§:Class;
      
      protected var §8!^§:Number;
      
      protected var §21§:Number;
      
      protected var §0!J§:Number;
      
      protected var §8!X§:Number;
      
      protected var §%!=§:Number = -1;
      
      protected var §7p§:Array;
      
      protected var §;"$§:int = -1;
      
      protected var § !`§:Number = 0;
      
      protected var §7!U§:int = 0;
      
      protected var §+o§:Vector.<§'!e§>;
      
      protected var §0;§:Vector.<§'!e§>;
      
      public function §9!?§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         this.§+o§ = new Vector.<§'!e§>(0);
         this.§0;§ = new Vector.<§'!e§>(0);
         super();
         this.§%!D§ = new Sprite();
         this.§"w§ = param1;
         this.§?K§ = param2;
         this.§7p§ = param3;
         this.§0!e§ = param4 || §'!e§;
         this.§8!^§ = param5;
         this.§21§ = param6;
         this.calculateMaxItemsVisible();
         this.§0!X§();
         if(this.§7p§)
         {
            this.§5A§();
         }
         this.§%!D§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function calculateMaxItemsVisible() : void
      {
         this.§8!X§ = Math.floor(this.§"w§ / (this.§@!@§ + this.§8!^§));
      }
      
      public function get §0C§() : Sprite
      {
         return this.§%!D§;
      }
      
      protected function §0!X§() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,1);
         _loc1_.graphics.drawRect(0,0,this.§"w§,this.§?K§);
         _loc1_.graphics.endFill();
         this.§%!D§.addChild(_loc1_);
         this.§%!D§.mask = _loc1_;
      }
      
      public function setWidth(param1:Number) : void
      {
         var _loc2_:§'!e§ = null;
         this.§"w§ = this.§%!D§.mask.width = param1;
         this.§8!X§ = Math.floor(this.§"w§ / (this.§@!@§ + this.§8!^§));
         this.§;"$§ = Math.min(this.§8!X§,this.§7p§.length);
         this.calculateMargin();
         while(this.§0;§.length > this.§8!X§)
         {
            _loc2_ = this.§0;§.pop();
            this.§%!D§.removeChild(_loc2_);
            this.§^!r§(_loc2_);
         }
         this.§&W§(0);
         this.§ !`§ = this.§7!U§;
         this.updatePositions();
      }
      
      public function setHeight(param1:Number) : void
      {
         this.§?K§ = this.§%!D§.mask.height = param1;
      }
      
      protected function §5A§() : void
      {
         var _loc2_:§'!e§ = null;
         this.§ !`§ = 0;
         this.§7!U§ = 0;
         this.§;"$§ = Math.min(this.§8!X§,this.§7p§.length);
         this.calculateMargin();
         var _loc1_:int = 0;
         while(_loc1_ < this.§;"$§)
         {
            _loc2_ = this.§4!Q§();
            this.§%!D§.addChild(_loc2_);
            _loc2_.index = _loc1_;
            this.setRendererData(_loc2_,this.data[_loc1_]);
            this.§0;§.push(_loc2_);
            _loc1_++;
         }
         this.updatePositions();
      }
      
      protected function setRendererData(param1:§'!e§, param2:Object) : void
      {
         param1.data = param2;
      }
      
      protected function calculateMargin() : void
      {
         this.§0!J§ = Math.min((this.§"w§ - this.§;"$§ * this.§@!@§) / this.§;"$§,this.§21§);
      }
      
      protected function get §@!@§() : Number
      {
         var _loc1_:§'!e§ = null;
         if(this.§%!=§ == -1)
         {
            _loc1_ = this.§4!Q§();
            this.§%!=§ = _loc1_.width;
            this.§^!r§(_loc1_);
         }
         return this.§%!=§;
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         if(!this.§7p§ || this.§7p§.length == this.§;"$§)
         {
            return;
         }
         this.§&W§(param1);
         if(param2)
         {
            this.§ !`§ = this.§7!U§;
            this.updatePositions();
         }
      }
      
      protected function §&W§(param1:int) : void
      {
         if(this.§7!U§ - param1 > 0)
         {
            this.§7!U§ = 0;
         }
         else if(this.§7!U§ - param1 - this.§,!c§ < -this.§7p§.length)
         {
            this.§7!U§ = -(this.§7p§.length - this.§,!c§);
         }
         else
         {
            this.§7!U§ -= param1;
         }
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         if(this.§7!U§ == this.§ !`§)
         {
            return;
         }
         this.§ !`§ += (this.§7!U§ - this.§ !`§) / 4;
         if(Math.abs(this.§ !`§ - this.§7!U§) < 0.01)
         {
            this.§ !`§ = this.§7!U§;
         }
         this.updatePositions();
      }
      
      protected function updatePositions() : void
      {
         var _loc2_:§'!e§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§'!e§ = null;
         var _loc1_:int = this.§0;§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§0;§[_loc1_];
            _loc2_.x = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.x >= this.§"w§ || _loc2_.x <= -this.§@!@§)
            {
               this.hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§7p§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§@!@§ && _loc3_ < this.§"w§ && !this.§"s§(_loc1_))
            {
               _loc4_ = this.§4!Q§();
               this.§%!D§.addChild(_loc4_);
               this.setRendererData(_loc4_,this.§7p§[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               this.§0;§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function hide(param1:§'!e§) : void
      {
         this.§%!D§.removeChild(param1);
         this.§0;§.splice(this.§0;§.indexOf(param1),1);
         this.§^!r§(param1);
      }
      
      protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(this.§0!J§ / 2 + (param1 + this.§ !`§) * (this.§@!@§ + this.§0!J§));
      }
      
      protected function §"s§(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§0;§.length)
         {
            if(this.§0;§[_loc2_].index == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function refresh() : void
      {
         var _loc1_:§'!e§ = null;
         for each(_loc1_ in this.§0;§)
         {
            this.setRendererData(_loc1_,this.§7p§[_loc1_.index]);
         }
      }
      
      public function get data() : Array
      {
         return this.§7p§;
      }
      
      public function set data(param1:Array) : void
      {
         this.§7p§ = param1;
         this.clear();
         if(this.§7p§)
         {
            this.§5A§();
         }
      }
      
      public function get §,!c§() : int
      {
         return this.§;"$§;
      }
      
      public function clear() : void
      {
         var _loc1_:§'!e§ = null;
         while(this.§0;§.length > 0)
         {
            _loc1_ = this.§0;§.pop();
            this.§%!D§.removeChild(_loc1_);
            this.§^!r§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§7!U§;
      }
      
      protected function §4!Q§() : §'!e§
      {
         if(this.§+o§.length > 0)
         {
            return this.§+o§.pop();
         }
         var _loc1_:§'!e§ = new this.§0!e§();
         _loc1_.§<!P§ = this;
         return _loc1_;
      }
      
      protected function §^!r§(param1:§'!e§) : void
      {
         this.setRendererData(param1,null);
         this.§+o§.push(param1);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§%!D§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
