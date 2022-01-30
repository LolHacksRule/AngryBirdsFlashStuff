package §[!a§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §^!w§
   {
       
      
      protected var §[<§:Sprite;
      
      protected var §^J§:Number;
      
      protected var §@I§:Number;
      
      protected var §5!U§:Class;
      
      protected var §`k§:Number;
      
      protected var §&!w§:Number;
      
      protected var §><§:Number;
      
      protected var §@b§:Number;
      
      protected var §,!4§:Number = -1;
      
      protected var §7n§:Array;
      
      protected var §6K§:int = -1;
      
      protected var §?!W§:Number = 0;
      
      protected var §;!,§:int = 0;
      
      protected var §9!r§:Vector.<§`?§>;
      
      protected var §^`§:Vector.<§`?§>;
      
      public function §^!w§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         this.§9!r§ = new Vector.<§`?§>(0);
         this.§^`§ = new Vector.<§`?§>(0);
         super();
         this.§[<§ = new Sprite();
         this.§^J§ = param1;
         this.§@I§ = param2;
         this.§7n§ = param3;
         this.§5!U§ = param4 || §`?§;
         this.§`k§ = param5;
         this.§&!w§ = param6;
         this.calculateMaxItemsVisible();
         this.§-"4§();
         if(this.§7n§)
         {
            this.§3!#§();
         }
         this.§[<§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function calculateMaxItemsVisible() : void
      {
         this.§@b§ = Math.floor(this.§^J§ / (this.§else§ + this.§`k§));
      }
      
      public function get §8!+§() : Sprite
      {
         return this.§[<§;
      }
      
      protected function §-"4§() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,1);
         _loc1_.graphics.drawRect(0,0,this.§^J§,this.§@I§);
         _loc1_.graphics.endFill();
         this.§[<§.addChild(_loc1_);
         this.§[<§.mask = _loc1_;
      }
      
      public function setWidth(param1:Number) : void
      {
         var _loc2_:§`?§ = null;
         this.§^J§ = this.§[<§.mask.width = param1;
         this.§@b§ = Math.floor(this.§^J§ / (this.§else§ + this.§`k§));
         this.§6K§ = Math.min(this.§@b§,this.§7n§.length);
         this.calculateMargin();
         while(this.§^`§.length > this.§@b§)
         {
            _loc2_ = this.§^`§.pop();
            this.§[<§.removeChild(_loc2_);
            this.§!>§(_loc2_);
         }
         this.§ c§(0);
         this.§?!W§ = this.§;!,§;
         this.updatePositions();
      }
      
      public function setHeight(param1:Number) : void
      {
         this.§@I§ = this.§[<§.mask.height = param1;
      }
      
      protected function §3!#§(param1:Boolean = true) : void
      {
         var _loc3_:§`?§ = null;
         if(param1)
         {
            this.§?!W§ = 0;
            this.§;!,§ = 0;
         }
         this.§6K§ = Math.min(this.§@b§,this.§7n§.length);
         this.calculateMargin();
         var _loc2_:int = 0;
         while(_loc2_ < this.§6K§)
         {
            _loc3_ = this.§[E§();
            this.§[<§.addChild(_loc3_);
            _loc3_.index = _loc2_;
            this.setRendererData(_loc3_,this.data[_loc2_]);
            this.§^`§.push(_loc3_);
            _loc2_++;
         }
         this.updatePositions();
      }
      
      protected function setRendererData(param1:§`?§, param2:Object) : void
      {
         param1.data = param2;
      }
      
      protected function calculateMargin() : void
      {
         this.§><§ = Math.min((this.§^J§ - this.§6K§ * this.§else§) / this.§6K§,this.§&!w§);
      }
      
      protected function get §else§() : Number
      {
         var _loc1_:§`?§ = null;
         if(this.§,!4§ == -1)
         {
            _loc1_ = this.§[E§();
            this.§,!4§ = _loc1_.width;
            this.§!>§(_loc1_);
         }
         return this.§,!4§;
      }
      
      public function setData(param1:Array, param2:Boolean = true) : void
      {
         this.§7n§ = param1;
         this.clear();
         if(this.§7n§)
         {
            this.§3!#§(param2);
         }
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         if(!this.§7n§ || this.§7n§.length == this.§6K§)
         {
            return;
         }
         this.§ c§(param1);
         if(param2)
         {
            this.§?!W§ = this.§;!,§;
            this.updatePositions();
         }
      }
      
      protected function § c§(param1:int) : void
      {
         if(this.§;!,§ - param1 > 0)
         {
            this.§;!,§ = 0;
         }
         else if(this.§;!,§ - param1 - this.§<!F§ < -this.§7n§.length)
         {
            this.§;!,§ = -(this.§7n§.length - this.§<!F§);
         }
         else
         {
            this.§;!,§ -= param1;
         }
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         if(this.§;!,§ == this.§?!W§)
         {
            return;
         }
         this.§?!W§ += (this.§;!,§ - this.§?!W§) / 4;
         if(Math.abs(this.§?!W§ - this.§;!,§) < 0.01)
         {
            this.§?!W§ = this.§;!,§;
         }
         this.updatePositions();
      }
      
      protected function updatePositions() : void
      {
         var _loc2_:§`?§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§`?§ = null;
         var _loc1_:int = this.§^`§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§^`§[_loc1_];
            _loc2_.x = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.x >= this.§^J§ || _loc2_.x <= -this.§else§)
            {
               this.hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§7n§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§else§ && _loc3_ < this.§^J§ && !this.§5!0§(_loc1_))
            {
               _loc4_ = this.§[E§();
               this.§[<§.addChild(_loc4_);
               this.setRendererData(_loc4_,this.§7n§[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               this.§^`§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function hide(param1:§`?§) : void
      {
         this.§[<§.removeChild(param1);
         this.§^`§.splice(this.§^`§.indexOf(param1),1);
         this.§!>§(param1);
      }
      
      protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(this.§><§ / 2 + (param1 + this.§?!W§) * (this.§else§ + this.§><§));
      }
      
      protected function §5!0§(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§^`§.length)
         {
            if(this.§^`§[_loc2_].index == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function refresh() : void
      {
         var _loc1_:§`?§ = null;
         for each(_loc1_ in this.§^`§)
         {
            this.setRendererData(_loc1_,this.§7n§[_loc1_.index]);
         }
      }
      
      public function get data() : Array
      {
         return this.§7n§;
      }
      
      public function set data(param1:Array) : void
      {
         this.setData(param1);
      }
      
      public function get §<!F§() : int
      {
         return this.§6K§;
      }
      
      public function clear() : void
      {
         var _loc1_:§`?§ = null;
         while(this.§^`§.length > 0)
         {
            _loc1_ = this.§^`§.pop();
            this.§[<§.removeChild(_loc1_);
            this.§!>§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§;!,§;
      }
      
      protected function §[E§() : §`?§
      {
         if(this.§9!r§.length > 0)
         {
            return this.§9!r§.pop();
         }
         var _loc1_:§`?§ = new this.§5!U§();
         _loc1_.§?!D§ = this;
         return _loc1_;
      }
      
      protected function §!>§(param1:§`?§) : void
      {
         this.setRendererData(param1,null);
         this.§9!r§.push(param1);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§[<§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
