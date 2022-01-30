package §?!J§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §3!2§
   {
       
      
      protected var §2!&§:Sprite;
      
      protected var §`T§:Number;
      
      protected var §^,§:Number;
      
      protected var §!k§:Class;
      
      protected var §&+§:Number;
      
      protected var §2!1§:Number;
      
      protected var §@"$§:Number;
      
      protected var §""6§:Number;
      
      protected var §'q§:Number = -1;
      
      protected var §]"+§:Array;
      
      protected var §'m§:int = -1;
      
      protected var §1G§:Number = 0;
      
      protected var §#!"§:int = 0;
      
      protected var §"u§:Vector.<§#e§>;
      
      protected var §+&§:Vector.<§#e§>;
      
      public function §3!2§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         this.§"u§ = new Vector.<§#e§>(0);
         this.§+&§ = new Vector.<§#e§>(0);
         super();
         this.§2!&§ = new Sprite();
         this.§`T§ = param1;
         this.§^,§ = param2;
         this.§]"+§ = param3;
         this.§!k§ = param4 || §#e§;
         this.§&+§ = param5;
         this.§2!1§ = param6;
         this.calculateMaxItemsVisible();
         this.§>5§();
         if(this.§]"+§)
         {
            this.§`!m§();
         }
         this.§2!&§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function calculateMaxItemsVisible() : void
      {
         this.§""6§ = Math.floor(this.§`T§ / (this.§3!H§ + this.§&+§));
      }
      
      public function get §6!t§() : Sprite
      {
         return this.§2!&§;
      }
      
      protected function §>5§() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,1);
         _loc1_.graphics.drawRect(0,0,this.§`T§,this.§^,§);
         _loc1_.graphics.endFill();
         this.§2!&§.addChild(_loc1_);
         this.§2!&§.mask = _loc1_;
      }
      
      public function setWidth(param1:Number) : void
      {
         var _loc2_:§#e§ = null;
         this.§`T§ = this.§2!&§.mask.width = param1;
         this.§""6§ = Math.floor(this.§`T§ / (this.§3!H§ + this.§&+§));
         this.§'m§ = Math.min(this.§""6§,this.§]"+§.length);
         this.calculateMargin();
         while(this.§+&§.length > this.§""6§)
         {
            _loc2_ = this.§+&§.pop();
            this.§2!&§.removeChild(_loc2_);
            this.§"n§(_loc2_);
         }
         this.§^x§(0);
         this.§1G§ = this.§#!"§;
         this.updatePositions();
      }
      
      public function setHeight(param1:Number) : void
      {
         this.§^,§ = this.§2!&§.mask.height = param1;
      }
      
      protected function §`!m§() : void
      {
         var _loc2_:§#e§ = null;
         this.§1G§ = 0;
         this.§#!"§ = 0;
         this.§'m§ = Math.min(this.§""6§,this.§]"+§.length);
         this.calculateMargin();
         var _loc1_:int = 0;
         while(_loc1_ < this.§'m§)
         {
            _loc2_ = this.§4]§();
            this.§2!&§.addChild(_loc2_);
            _loc2_.index = _loc1_;
            this.setRendererData(_loc2_,this.data[_loc1_]);
            this.§+&§.push(_loc2_);
            _loc1_++;
         }
         this.updatePositions();
      }
      
      protected function setRendererData(param1:§#e§, param2:Object) : void
      {
         param1.data = param2;
      }
      
      protected function calculateMargin() : void
      {
         this.§@"$§ = Math.min((this.§`T§ - this.§'m§ * this.§3!H§) / this.§'m§,this.§2!1§);
      }
      
      protected function get §3!H§() : Number
      {
         var _loc1_:§#e§ = null;
         if(this.§'q§ == -1)
         {
            _loc1_ = this.§4]§();
            this.§'q§ = _loc1_.width;
            this.§"n§(_loc1_);
         }
         return this.§'q§;
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         if(!this.§]"+§ || this.§]"+§.length == this.§'m§)
         {
            return;
         }
         this.§^x§(param1);
         if(param2)
         {
            this.§1G§ = this.§#!"§;
            this.updatePositions();
         }
      }
      
      protected function §^x§(param1:int) : void
      {
         if(this.§#!"§ - param1 > 0)
         {
            this.§#!"§ = 0;
         }
         else if(this.§#!"§ - param1 - this.§^!s§ < -this.§]"+§.length)
         {
            this.§#!"§ = -(this.§]"+§.length - this.§^!s§);
         }
         else
         {
            this.§#!"§ -= param1;
         }
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         if(this.§#!"§ == this.§1G§)
         {
            return;
         }
         this.§1G§ += (this.§#!"§ - this.§1G§) / 4;
         if(Math.abs(this.§1G§ - this.§#!"§) < 0.01)
         {
            this.§1G§ = this.§#!"§;
         }
         this.updatePositions();
      }
      
      protected function updatePositions() : void
      {
         var _loc2_:§#e§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§#e§ = null;
         var _loc1_:int = this.§+&§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§+&§[_loc1_];
            _loc2_.x = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.x >= this.§`T§ || _loc2_.x <= -this.§3!H§)
            {
               this.hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§]"+§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§3!H§ && _loc3_ < this.§`T§ && !this.§ x§(_loc1_))
            {
               _loc4_ = this.§4]§();
               this.§2!&§.addChild(_loc4_);
               this.setRendererData(_loc4_,this.§]"+§[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               this.§+&§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function hide(param1:§#e§) : void
      {
         this.§2!&§.removeChild(param1);
         this.§+&§.splice(this.§+&§.indexOf(param1),1);
         this.§"n§(param1);
      }
      
      protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(this.§@"$§ / 2 + (param1 + this.§1G§) * (this.§3!H§ + this.§@"$§));
      }
      
      protected function § x§(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§+&§.length)
         {
            if(this.§+&§[_loc2_].index == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function refresh() : void
      {
         var _loc1_:§#e§ = null;
         for each(_loc1_ in this.§+&§)
         {
            this.setRendererData(_loc1_,this.§]"+§[_loc1_.index]);
         }
      }
      
      public function get data() : Array
      {
         return this.§]"+§;
      }
      
      public function set data(param1:Array) : void
      {
         this.§]"+§ = param1;
         this.clear();
         if(this.§]"+§)
         {
            this.§`!m§();
         }
      }
      
      public function get §^!s§() : int
      {
         return this.§'m§;
      }
      
      public function clear() : void
      {
         var _loc1_:§#e§ = null;
         while(this.§+&§.length > 0)
         {
            _loc1_ = this.§+&§.pop();
            this.§2!&§.removeChild(_loc1_);
            this.§"n§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§#!"§;
      }
      
      protected function §4]§() : §#e§
      {
         if(this.§"u§.length > 0)
         {
            return this.§"u§.pop();
         }
         var _loc1_:§#e§ = new this.§!k§();
         _loc1_.§8!-§ = this;
         return _loc1_;
      }
      
      protected function §"n§(param1:§#e§) : void
      {
         this.setRendererData(param1,null);
         this.§"u§.push(param1);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§2!&§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
