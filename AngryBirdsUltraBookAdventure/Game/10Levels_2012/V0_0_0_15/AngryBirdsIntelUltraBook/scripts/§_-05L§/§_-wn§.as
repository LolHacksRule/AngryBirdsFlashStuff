package §_-05L§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §_-wn§
   {
       
      
      protected var §_-FQ§:Sprite;
      
      protected var §_-7S§:Number;
      
      protected var §_-Dg§:Number;
      
      protected var §_-ub§:Class;
      
      protected var §_-ap§:Number;
      
      protected var §_-uV§:Number;
      
      protected var §_-KI§:Number;
      
      protected var §_-0D6§:Number;
      
      protected var §_-018§:Number = -1;
      
      protected var §_-WB§:Array;
      
      protected var §_-wH§:int = -1;
      
      protected var §_-EM§:Number = 0;
      
      protected var §_-07x§:int = 0;
      
      protected var §_-0BP§:Vector.<§_-p§>;
      
      protected var §_-2x§:Vector.<§_-p§>;
      
      public function §_-wn§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         this.§_-0BP§ = new Vector.<§_-p§>(0);
         this.§_-2x§ = new Vector.<§_-p§>(0);
         super();
         this.§_-FQ§ = new Sprite();
         this.§_-7S§ = param1;
         this.§_-Dg§ = param2;
         this.§_-WB§ = param3;
         this.§_-ub§ = param4 || §_-p§;
         this.§_-ap§ = param5;
         this.§_-uV§ = param6;
         this.§_-0Ao§();
         this.§_-016§();
         if(this.§_-WB§)
         {
            this.§_-Iq§();
         }
         this.§_-FQ§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function §_-0Ao§() : void
      {
         this.§_-0D6§ = Math.floor(this.§_-7S§ / (this.§_-gG§ + this.§_-ap§));
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§_-FQ§;
      }
      
      protected function §_-016§() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,1);
         _loc1_.graphics.drawRect(0,0,this.§_-7S§,this.§_-Dg§);
         _loc1_.graphics.endFill();
         this.§_-FQ§.addChild(_loc1_);
         this.§_-FQ§.mask = _loc1_;
      }
      
      public function §_-7Z§(param1:Number) : void
      {
         var _loc2_:§_-p§ = null;
         this.§_-7S§ = this.§_-FQ§.mask.width = param1;
         this.§_-0D6§ = Math.max(0,Math.floor(this.§_-7S§ / (this.§_-gG§ + this.§_-ap§)));
         this.§_-wH§ = Math.min(this.§_-0D6§,this.§_-WB§.length);
         this.§_-cN§();
         while(this.§_-2x§.length > this.§_-0D6§)
         {
            _loc2_ = this.§_-2x§.pop();
            if(_loc2_ != null)
            {
               this.§_-FQ§.removeChild(_loc2_);
               this.§_-2D§(_loc2_);
            }
         }
         this.§_-MZ§(0);
         this.§_-EM§ = this.§_-07x§;
         this.updatePositions();
      }
      
      protected function §_-Iq§() : void
      {
         var _loc2_:§_-p§ = null;
         this.§_-EM§ = 0;
         this.§_-07x§ = 0;
         this.§_-wH§ = Math.min(this.§_-0D6§,this.§_-WB§.length);
         this.§_-cN§();
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-wH§)
         {
            _loc2_ = this.§_-Dt§();
            this.§_-FQ§.addChild(_loc2_);
            _loc2_.index = _loc1_;
            _loc2_.data = this.§_-WB§[_loc1_];
            this.§_-2x§.push(_loc2_);
            _loc1_++;
         }
         this.updatePositions();
      }
      
      protected function §_-cN§() : void
      {
         this.§_-KI§ = Math.min((this.§_-7S§ - this.§_-wH§ * this.§_-gG§) / this.§_-wH§,this.§_-uV§);
      }
      
      protected function get §_-gG§() : Number
      {
         var _loc1_:§_-p§ = null;
         if(this.§_-018§ == -1)
         {
            _loc1_ = this.§_-Dt§();
            this.§_-018§ = _loc1_.width;
            this.§_-2D§(_loc1_);
         }
         return this.§_-018§;
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         if(this.§_-WB§.length == this.§_-wH§)
         {
            return;
         }
         this.§_-MZ§(param1);
         if(param2)
         {
            this.§_-EM§ = this.§_-07x§;
            this.updatePositions();
         }
      }
      
      protected function §_-MZ§(param1:int) : void
      {
         if(this.§_-07x§ - param1 > 0)
         {
            this.§_-07x§ = 0;
         }
         else if(this.§_-07x§ - param1 - this.§_-xC§ < -this.§_-WB§.length)
         {
            this.§_-07x§ = -(this.§_-WB§.length - this.§_-xC§);
         }
         else
         {
            this.§_-07x§ -= param1;
         }
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         if(this.§_-07x§ == this.§_-EM§)
         {
            return;
         }
         this.§_-EM§ += (this.§_-07x§ - this.§_-EM§) / 4;
         if(Math.abs(this.§_-EM§ - this.§_-07x§) < 0.01)
         {
            this.§_-EM§ = this.§_-07x§;
         }
         this.updatePositions();
      }
      
      protected function updatePositions() : void
      {
         var _loc2_:§_-p§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§_-p§ = null;
         var _loc1_:int = this.§_-2x§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-2x§[_loc1_];
            _loc2_.x = this.§_-03Q§(_loc2_.index);
            if(_loc2_.x >= this.§_-7S§ || _loc2_.x <= -this.§_-gG§)
            {
               this.§_-FQ§.removeChild(_loc2_);
               this.§_-2x§.splice(this.§_-2x§.indexOf(_loc2_),1);
               this.§_-2D§(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§_-WB§.length)
         {
            _loc3_ = this.§_-03Q§(_loc1_);
            if(_loc3_ > -this.§_-gG§ && _loc3_ < this.§_-7S§ && !this.§ if§(_loc1_))
            {
               _loc4_ = this.§_-Dt§();
               this.§_-FQ§.addChild(_loc4_);
               _loc4_.data = this.§_-WB§[_loc1_];
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               this.§_-2x§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function §_-03Q§(param1:Number) : Number
      {
         return Math.round(this.§_-KI§ / 2 + (param1 + this.§_-EM§) * (this.§_-gG§ + this.§_-KI§));
      }
      
      protected function § if§(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-2x§.length)
         {
            if(this.§_-2x§[_loc2_].index == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §_-8B§() : void
      {
         var _loc1_:§_-p§ = null;
         for each(_loc1_ in this.§_-2x§)
         {
            _loc1_.data = this.§_-WB§[_loc1_.index];
         }
      }
      
      public function get data() : Array
      {
         return this.§_-WB§;
      }
      
      public function set data(param1:Array) : void
      {
         this.§_-WB§ = param1;
         this.clear();
         if(this.§_-WB§)
         {
            this.§_-Iq§();
         }
      }
      
      public function get §_-xC§() : int
      {
         return this.§_-wH§;
      }
      
      public function clear() : void
      {
         var _loc1_:§_-p§ = null;
         while(this.§_-2x§.length > 0)
         {
            _loc1_ = this.§_-2x§.pop();
            this.§_-FQ§.removeChild(_loc1_);
            this.§_-2D§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§_-07x§;
      }
      
      protected function §_-Dt§() : §_-p§
      {
         if(this.§_-0BP§.length > 0)
         {
            return this.§_-0BP§.pop();
         }
         var _loc1_:§_-p§ = new this.§_-ub§();
         _loc1_.§_-FJ§ = this;
         return _loc1_;
      }
      
      protected function §_-2D§(param1:§_-p§) : void
      {
         param1.data = null;
         this.§_-0BP§.push(param1);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§_-FQ§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
