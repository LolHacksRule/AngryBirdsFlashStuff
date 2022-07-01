package §74§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §2!§
   {
       
      
      protected var §&%§:Sprite;
      
      protected var §7F§:Number;
      
      protected var §+9§:Number;
      
      protected var §,!`§:Class;
      
      protected var §@"5§:Number;
      
      protected var §`!$§:Number;
      
      protected var §3!d§:Number;
      
      protected var § N§:Number;
      
      protected var §0U§:Number = -1;
      
      protected var §7!?§:Array;
      
      protected var §@!K§:int = -1;
      
      protected var §@q§:Number = 0;
      
      protected var §-!3§:int = 0;
      
      protected var §>!q§:Vector.<§^z§>;
      
      protected var §>1§:Vector.<§^z§>;
      
      public function §2!§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         this.§>!q§ = new Vector.<§^z§>(0);
         this.§>1§ = new Vector.<§^z§>(0);
         super();
         this.§&%§ = new Sprite();
         this.§7F§ = param1;
         this.§+9§ = param2;
         this.§7!?§ = param3;
         this.§,!`§ = param4 || §^z§;
         this.§@"5§ = param5;
         this.§`!$§ = param6;
         this.calculateMaxItemsVisible();
         this.§@"-§();
         if(this.§7!?§)
         {
            this.§-a§();
         }
         this.§&%§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function calculateMaxItemsVisible() : void
      {
         this.§ N§ = Math.floor(this.§7F§ / (this.§<K§ + this.§@"5§));
      }
      
      public function get §"]§() : Sprite
      {
         return this.§&%§;
      }
      
      protected function §@"-§() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,1);
         _loc1_.graphics.drawRect(0,0,this.§7F§,this.§+9§);
         _loc1_.graphics.endFill();
         this.§&%§.addChild(_loc1_);
         this.§&%§.mask = _loc1_;
      }
      
      public function setWidth(param1:Number) : void
      {
         var _loc2_:§^z§ = null;
         this.§7F§ = this.§&%§.mask.width = param1;
         this.§ N§ = Math.floor(this.§7F§ / (this.§<K§ + this.§@"5§));
         this.§@!K§ = Math.min(this.§ N§,this.§7!?§.length);
         this.calculateMargin();
         while(this.§>1§.length > this.§ N§)
         {
            _loc2_ = this.§>1§.pop();
            this.§&%§.removeChild(_loc2_);
            this.§^!?§(_loc2_);
         }
         this.§8!H§(0);
         this.§@q§ = this.§-!3§;
         this.updatePositions();
      }
      
      public function setHeight(param1:Number) : void
      {
         this.§+9§ = this.§&%§.mask.height = param1;
      }
      
      protected function §-a§(param1:Boolean = true) : void
      {
         var _loc3_:§^z§ = null;
         if(param1)
         {
            this.§@q§ = 0;
            this.§-!3§ = 0;
         }
         this.§@!K§ = Math.min(this.§ N§,this.§7!?§.length);
         this.calculateMargin();
         var _loc2_:int = 0;
         while(_loc2_ < this.§@!K§)
         {
            _loc3_ = this.§`E§();
            this.§&%§.addChild(_loc3_);
            _loc3_.index = _loc2_;
            this.setRendererData(_loc3_,this.data[_loc2_]);
            this.§>1§.push(_loc3_);
            _loc2_++;
         }
         this.updatePositions();
      }
      
      protected function setRendererData(param1:§^z§, param2:Object) : void
      {
         param1.data = param2;
      }
      
      protected function calculateMargin() : void
      {
         this.§3!d§ = Math.min((this.§7F§ - this.§@!K§ * this.§<K§) / this.§@!K§,this.§`!$§);
      }
      
      protected function get §<K§() : Number
      {
         var _loc1_:§^z§ = null;
         if(this.§0U§ == -1)
         {
            _loc1_ = this.§`E§();
            this.§0U§ = _loc1_.width;
            this.§^!?§(_loc1_);
         }
         return this.§0U§;
      }
      
      public function setData(param1:Array, param2:Boolean = true) : void
      {
         this.§7!?§ = param1;
         this.clear();
         if(this.§7!?§)
         {
            this.§-a§(param2);
         }
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         if(!this.§7!?§ || this.§7!?§.length == this.§@!K§)
         {
            return;
         }
         this.§8!H§(param1);
         if(param2)
         {
            this.§@q§ = this.§-!3§;
            this.updatePositions();
         }
      }
      
      protected function §8!H§(param1:int) : void
      {
         if(this.§-!3§ - param1 > 0)
         {
            this.§-!3§ = 0;
         }
         else if(this.§-!3§ - param1 - this.§]v§ < -this.§7!?§.length)
         {
            this.§-!3§ = -(this.§7!?§.length - this.§]v§);
         }
         else
         {
            this.§-!3§ -= param1;
         }
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         if(this.§-!3§ == this.§@q§)
         {
            return;
         }
         this.§@q§ += (this.§-!3§ - this.§@q§) / 4;
         if(Math.abs(this.§@q§ - this.§-!3§) < 0.01)
         {
            this.§@q§ = this.§-!3§;
         }
         this.updatePositions();
      }
      
      protected function updatePositions() : void
      {
         var _loc2_:§^z§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§^z§ = null;
         var _loc1_:int = this.§>1§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§>1§[_loc1_];
            _loc2_.x = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.x >= this.§7F§ || _loc2_.x <= -this.§<K§)
            {
               this.hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§7!?§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§<K§ && _loc3_ < this.§7F§ && !this.§!Z§(_loc1_))
            {
               _loc4_ = this.§`E§();
               this.§&%§.addChild(_loc4_);
               this.setRendererData(_loc4_,this.§7!?§[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               this.§>1§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function hide(param1:§^z§) : void
      {
         this.§&%§.removeChild(param1);
         this.§>1§.splice(this.§>1§.indexOf(param1),1);
         this.§^!?§(param1);
      }
      
      protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(this.§3!d§ / 2 + (param1 + this.§@q§) * (this.§<K§ + this.§3!d§));
      }
      
      protected function §!Z§(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§>1§.length)
         {
            if(this.§>1§[_loc2_].index == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function refresh() : void
      {
         var _loc1_:§^z§ = null;
         for each(_loc1_ in this.§>1§)
         {
            this.setRendererData(_loc1_,this.§7!?§[_loc1_.index]);
         }
      }
      
      public function get data() : Array
      {
         return this.§7!?§;
      }
      
      public function set data(param1:Array) : void
      {
         this.setData(param1);
      }
      
      public function get §]v§() : int
      {
         return this.§@!K§;
      }
      
      public function clear() : void
      {
         var _loc1_:§^z§ = null;
         while(this.§>1§.length > 0)
         {
            _loc1_ = this.§>1§.pop();
            this.§&%§.removeChild(_loc1_);
            this.§^!?§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§-!3§;
      }
      
      protected function §`E§() : §^z§
      {
         if(this.§>!q§.length > 0)
         {
            return this.§>!q§.pop();
         }
         var _loc1_:§^z§ = new this.§,!`§();
         _loc1_.§ Y§ = this;
         return _loc1_;
      }
      
      protected function §^!?§(param1:§^z§) : void
      {
         this.setRendererData(param1,null);
         this.§>!q§.push(param1);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§&%§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
