package §12§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §[L§
   {
       
      
      protected var §<q§:Sprite;
      
      protected var §`!o§:Number;
      
      protected var §7"+§:Number;
      
      protected var § ![§:Class;
      
      protected var §>!;§:Number;
      
      protected var §>!+§:Number;
      
      protected var §?!v§:Number;
      
      protected var §;o§:Number;
      
      protected var §<!r§:Number = -1;
      
      protected var §@r§:Array;
      
      protected var §+N§:int = -1;
      
      protected var §[!A§:Number = 0;
      
      protected var §3"+§:int = 0;
      
      protected var §+!#§:Vector.<§-!U§>;
      
      protected var §'W§:Vector.<§-!U§>;
      
      public function §[L§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         this.§+!#§ = new Vector.<§-!U§>(0);
         this.§'W§ = new Vector.<§-!U§>(0);
         super();
         this.§<q§ = new Sprite();
         this.§`!o§ = param1;
         this.§7"+§ = param2;
         this.§@r§ = param3;
         this.§ ![§ = param4 || §-!U§;
         this.§>!;§ = param5;
         this.§>!+§ = param6;
         this.calculateMaxItemsVisible();
         this.§3!C§();
         if(this.§@r§)
         {
            this.§=!x§();
         }
         this.§<q§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function calculateMaxItemsVisible() : void
      {
         this.§;o§ = Math.floor(this.§`!o§ / (this.§?,§ + this.§>!;§));
      }
      
      public function get §!d§() : Sprite
      {
         return this.§<q§;
      }
      
      protected function §3!C§() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,1);
         _loc1_.graphics.drawRect(0,0,this.§`!o§,this.§7"+§);
         _loc1_.graphics.endFill();
         this.§<q§.addChild(_loc1_);
         this.§<q§.mask = _loc1_;
      }
      
      public function setWidth(param1:Number) : void
      {
         var _loc2_:§-!U§ = null;
         this.§`!o§ = this.§<q§.mask.width = param1;
         this.§;o§ = Math.floor(this.§`!o§ / (this.§?,§ + this.§>!;§));
         this.§+N§ = Math.min(this.§;o§,this.§@r§.length);
         this.calculateMargin();
         while(this.§'W§.length > this.§;o§)
         {
            _loc2_ = this.§'W§.pop();
            this.§<q§.removeChild(_loc2_);
            this.§3!1§(_loc2_);
         }
         this.§+"5§(0);
         this.§[!A§ = this.§3"+§;
         this.updatePositions();
      }
      
      public function setHeight(param1:Number) : void
      {
         this.§7"+§ = this.§<q§.mask.height = param1;
      }
      
      protected function §=!x§() : void
      {
         var _loc2_:§-!U§ = null;
         this.§[!A§ = 0;
         this.§3"+§ = 0;
         this.§+N§ = Math.min(this.§;o§,this.§@r§.length);
         this.calculateMargin();
         var _loc1_:int = 0;
         while(_loc1_ < this.§+N§)
         {
            _loc2_ = this.§2!u§();
            this.§<q§.addChild(_loc2_);
            _loc2_.index = _loc1_;
            this.setRendererData(_loc2_,this.data[_loc1_]);
            this.§'W§.push(_loc2_);
            _loc1_++;
         }
         this.updatePositions();
      }
      
      protected function setRendererData(param1:§-!U§, param2:Object) : void
      {
         param1.data = param2;
      }
      
      protected function calculateMargin() : void
      {
         this.§?!v§ = Math.min((this.§`!o§ - this.§+N§ * this.§?,§) / this.§+N§,this.§>!+§);
      }
      
      protected function get §?,§() : Number
      {
         var _loc1_:§-!U§ = null;
         if(this.§<!r§ == -1)
         {
            _loc1_ = this.§2!u§();
            this.§<!r§ = _loc1_.width;
            this.§3!1§(_loc1_);
         }
         return this.§<!r§;
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         if(!this.§@r§ || this.§@r§.length == this.§+N§)
         {
            return;
         }
         this.§+"5§(param1);
         if(param2)
         {
            this.§[!A§ = this.§3"+§;
            this.updatePositions();
         }
      }
      
      protected function §+"5§(param1:int) : void
      {
         if(this.§3"+§ - param1 > 0)
         {
            this.§3"+§ = 0;
         }
         else if(this.§3"+§ - param1 - this.§=H§ < -this.§@r§.length)
         {
            this.§3"+§ = -(this.§@r§.length - this.§=H§);
         }
         else
         {
            this.§3"+§ -= param1;
         }
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         if(this.§3"+§ == this.§[!A§)
         {
            return;
         }
         this.§[!A§ += (this.§3"+§ - this.§[!A§) / 4;
         if(Math.abs(this.§[!A§ - this.§3"+§) < 0.01)
         {
            this.§[!A§ = this.§3"+§;
         }
         this.updatePositions();
      }
      
      protected function updatePositions() : void
      {
         var _loc2_:§-!U§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§-!U§ = null;
         var _loc1_:int = this.§'W§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§'W§[_loc1_];
            _loc2_.x = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.x >= this.§`!o§ || _loc2_.x <= -this.§?,§)
            {
               this.hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§@r§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§?,§ && _loc3_ < this.§`!o§ && !this.§@!@§(_loc1_))
            {
               _loc4_ = this.§2!u§();
               this.§<q§.addChild(_loc4_);
               this.setRendererData(_loc4_,this.§@r§[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               this.§'W§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function hide(param1:§-!U§) : void
      {
         this.§<q§.removeChild(param1);
         this.§'W§.splice(this.§'W§.indexOf(param1),1);
         this.§3!1§(param1);
      }
      
      protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(this.§?!v§ / 2 + (param1 + this.§[!A§) * (this.§?,§ + this.§?!v§));
      }
      
      protected function §@!@§(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§'W§.length)
         {
            if(this.§'W§[_loc2_].index == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function refresh() : void
      {
         var _loc1_:§-!U§ = null;
         for each(_loc1_ in this.§'W§)
         {
            this.setRendererData(_loc1_,this.§@r§[_loc1_.index]);
         }
      }
      
      public function get data() : Array
      {
         return this.§@r§;
      }
      
      public function set data(param1:Array) : void
      {
         this.§@r§ = param1;
         this.clear();
         if(this.§@r§)
         {
            this.§=!x§();
         }
      }
      
      public function get §=H§() : int
      {
         return this.§+N§;
      }
      
      public function clear() : void
      {
         var _loc1_:§-!U§ = null;
         while(this.§'W§.length > 0)
         {
            _loc1_ = this.§'W§.pop();
            this.§<q§.removeChild(_loc1_);
            this.§3!1§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§3"+§;
      }
      
      protected function §2!u§() : §-!U§
      {
         if(this.§+!#§.length > 0)
         {
            return this.§+!#§.pop();
         }
         var _loc1_:§-!U§ = new this.§ ![§();
         _loc1_.§6§ = this;
         return _loc1_;
      }
      
      protected function §3!1§(param1:§-!U§) : void
      {
         this.setRendererData(param1,null);
         this.§+!#§.push(param1);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§<q§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
