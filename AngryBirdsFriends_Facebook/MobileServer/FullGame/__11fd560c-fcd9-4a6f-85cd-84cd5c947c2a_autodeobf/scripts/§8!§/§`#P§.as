package §8!§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §`#P§
   {
       
      
      protected var §4"D§:Sprite;
      
      protected var §5"S§:Number;
      
      protected var §]"]§:Number;
      
      protected var §]$'§:Class;
      
      protected var §""l§:Number;
      
      protected var §!#'§:Number;
      
      protected var §7%§:Number;
      
      protected var §<!I§:Number;
      
      protected var §^#e§:Number = -1;
      
      protected var §["[§:Array;
      
      protected var §>!T§:int = -1;
      
      protected var §9"7§:Number = 0;
      
      protected var §`!M§:int = 0;
      
      protected var §0"x§:Vector.<§;+§>;
      
      protected var §2"k§:Vector.<§;+§>;
      
      public function §`#P§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         this.§0"x§ = new Vector.<§;+§>(0);
         this.§2"k§ = new Vector.<§;+§>(0);
         super();
         this.§4"D§ = new Sprite();
         this.§5"S§ = param1;
         this.§]"]§ = param2;
         this.§["[§ = param3;
         this.§]$'§ = param4 || §;+§;
         this.§""l§ = param5;
         this.§!#'§ = param6;
         this.calculateMaxItemsVisible();
         this.§!"F§();
         if(this.§["[§)
         {
            this.§-!P§();
         }
         this.§4"D§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function calculateMaxItemsVisible() : void
      {
         this.§<!I§ = Math.floor(this.§5"S§ / (this.§"$>§ + this.§""l§));
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§4"D§;
      }
      
      protected function §!"F§() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,1);
         _loc1_.graphics.drawRect(0,0,this.§5"S§,this.§]"]§);
         _loc1_.graphics.endFill();
         this.§4"D§.addChild(_loc1_);
         this.§4"D§.mask = _loc1_;
      }
      
      public function setWidth(param1:Number) : void
      {
         var _loc2_:§;+§ = null;
         this.§5"S§ = this.§4"D§.mask.width = param1;
         this.§<!I§ = Math.floor(this.§5"S§ / (this.§"$>§ + this.§""l§));
         this.§>!T§ = Math.min(this.§<!I§,this.§["[§.length);
         this.calculateMargin();
         while(this.§2"k§.length > this.§<!I§)
         {
            _loc2_ = this.§2"k§.pop();
            this.§4"D§.removeChild(_loc2_);
            this.§`"4§(_loc2_);
         }
         this.§?d§(0);
         this.§9"7§ = this.§`!M§;
         this.updatePositions();
      }
      
      public function §<"p§() : void
      {
         var _loc2_:§;+§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§2"k§.length)
         {
            this.§4"D§.removeChild(this.§2"k§[_loc1_]);
            _loc1_++;
         }
         this.§2"k§.splice(0,this.§2"k§.length);
         _loc1_ = 0;
         while(_loc1_ < this.§["[§.length)
         {
            _loc2_ = this.§>"u§();
            _loc2_.index = _loc1_;
            _loc2_.data = this.§["[§[_loc1_];
            this.§2"k§.push(_loc2_);
            this.§4"D§.addChild(_loc2_);
            _loc1_++;
         }
      }
      
      protected function §-!P§() : void
      {
         var _loc2_:§;+§ = null;
         this.§9"7§ = 0;
         this.§`!M§ = 0;
         this.§>!T§ = Math.min(this.§<!I§,this.§["[§.length);
         this.calculateMargin();
         var _loc1_:int = 0;
         while(_loc1_ < this.§>!T§)
         {
            _loc2_ = this.§>"u§();
            this.§4"D§.addChild(_loc2_);
            _loc2_.index = _loc1_;
            _loc2_.data = this.§["[§[_loc1_];
            this.§2"k§.push(_loc2_);
            _loc1_++;
         }
         this.updatePositions();
      }
      
      protected function calculateMargin() : void
      {
         this.§7%§ = Math.min((this.§5"S§ - this.§>!T§ * this.§"$>§) / this.§>!T§,this.§!#'§);
      }
      
      protected function get §"$>§() : Number
      {
         var _loc1_:§;+§ = null;
         if(this.§^#e§ == -1)
         {
            _loc1_ = this.§>"u§();
            this.§^#e§ = _loc1_.width;
            this.§`"4§(_loc1_);
         }
         return this.§^#e§;
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         if(this.§["[§.length == this.§>!T§)
         {
            return;
         }
         this.§?d§(param1);
         if(param2)
         {
            this.§9"7§ = this.§`!M§;
            this.updatePositions();
         }
      }
      
      public function §3"&§(param1:int) : Boolean
      {
         if(this.§`!M§ - param1 > 0 || this.§`!M§ - param1 - this.§,!a§ < -this.§["[§.length)
         {
            return true;
         }
         return false;
      }
      
      protected function §?d§(param1:int) : void
      {
         if(this.§`!M§ - param1 > 0)
         {
            this.§`!M§ = 0;
         }
         else if(this.§`!M§ - param1 - this.§,!a§ < -this.§["[§.length)
         {
            this.§`!M§ = -(this.§["[§.length - this.§,!a§);
         }
         else
         {
            this.§`!M§ -= param1;
         }
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         if(this.§`!M§ == this.§9"7§)
         {
            return;
         }
         this.§9"7§ += (this.§`!M§ - this.§9"7§) / 4;
         if(Math.abs(this.§9"7§ - this.§`!M§) < 0.01)
         {
            this.§9"7§ = this.§`!M§;
         }
         this.updatePositions();
      }
      
      public function updatePositions() : void
      {
         var _loc2_:§;+§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§;+§ = null;
         var _loc1_:int = this.§2"k§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§2"k§[_loc1_];
            _loc2_.x = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.x >= this.§5"S§ || _loc2_.x <= -this.§"$>§)
            {
               this.§4"D§.removeChild(_loc2_);
               this.§2"k§.splice(this.§2"k§.indexOf(_loc2_),1);
               this.§`"4§(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§["[§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§"$>§ && _loc3_ < this.§5"S§ - this.§"$>§ && !this.§6"$§(_loc1_))
            {
               _loc4_ = this.§>"u§();
               this.§4"D§.addChild(_loc4_);
               _loc4_.data = this.§["[§[_loc1_];
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               this.§2"k§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(this.§7%§ / 2 + (param1 + this.§9"7§) * (this.§"$>§ + this.§7%§));
      }
      
      protected function §6"$§(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§2"k§.length)
         {
            if(this.§2"k§[_loc2_].index == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function refresh() : void
      {
         var _loc1_:§;+§ = null;
         for each(_loc1_ in this.§2"k§)
         {
            _loc1_.data = this.§["[§[_loc1_.index];
         }
      }
      
      public function get data() : Array
      {
         return this.§["[§;
      }
      
      public function set data(param1:Array) : void
      {
         this.§["[§ = param1;
         this.clear();
         if(this.§["[§)
         {
            this.§-!P§();
         }
      }
      
      public function get §,!a§() : int
      {
         return this.§>!T§;
      }
      
      public function clear() : void
      {
         var _loc1_:§;+§ = null;
         while(this.§2"k§.length > 0)
         {
            _loc1_ = this.§2"k§.pop();
            this.§4"D§.removeChild(_loc1_);
            this.§`"4§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§`!M§;
      }
      
      protected function §>"u§() : §;+§
      {
         if(this.§0"x§.length > 0)
         {
            return this.§0"x§.pop();
         }
         var _loc1_:§;+§ = new this.§]$'§();
         _loc1_.§ #T§ = this;
         return _loc1_;
      }
      
      protected function §`"4§(param1:§;+§) : void
      {
         param1.data = null;
         this.§0"x§.push(param1);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§4"D§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
