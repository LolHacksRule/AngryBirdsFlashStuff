package §<z§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §[Z§
   {
       
      
      protected var §8X§:Sprite;
      
      protected var §?=§:Number;
      
      protected var §`!S§:Number;
      
      protected var §6!C§:Class;
      
      protected var §9!!§:Number;
      
      protected var §+4§:Number;
      
      protected var §2!H§:Number;
      
      protected var §0'§:Number;
      
      protected var §!!E§:Number = -1;
      
      protected var §++§:Array;
      
      protected var §"H§:int = -1;
      
      protected var §^!o§:Number = 0;
      
      protected var §[!+§:int = 0;
      
      protected var §3T§:Vector.<§#h§>;
      
      protected var §3U§:Vector.<§#h§>;
      
      public function §[Z§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         this.§3T§ = new Vector.<§#h§>(0);
         this.§3U§ = new Vector.<§#h§>(0);
         super();
         this.§8X§ = new Sprite();
         this.§?=§ = param1;
         this.§`!S§ = param2;
         this.§++§ = param3;
         this.§6!C§ = param4 || §#h§;
         this.§9!!§ = param5;
         this.§+4§ = param6;
         this.§ !c§();
         this.§^!w§();
         if(this.§++§)
         {
            this.§7u§();
         }
         this.§8X§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function § !c§() : void
      {
         this.§0'§ = Math.floor(this.§?=§ / (this.§ !e§ + this.§9!!§));
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§8X§;
      }
      
      protected function §^!w§() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,1);
         _loc1_.graphics.drawRect(0,0,this.§?=§,this.§`!S§);
         _loc1_.graphics.endFill();
         this.§8X§.addChild(_loc1_);
         this.§8X§.mask = _loc1_;
      }
      
      public function §,!q§(param1:Number) : void
      {
         var _loc2_:§#h§ = null;
         this.§?=§ = this.§8X§.mask.width = param1;
         this.§0'§ = Math.max(0,Math.floor(this.§?=§ / (this.§ !e§ + this.§9!!§)));
         this.§"H§ = Math.min(this.§0'§,this.§++§.length);
         this.§,V§();
         while(this.§3U§.length > this.§0'§)
         {
            _loc2_ = this.§3U§.pop();
            if(_loc2_ != null)
            {
               this.§8X§.removeChild(_loc2_);
               this.§<!A§(_loc2_);
            }
         }
         this.§"D§(0);
         this.§^!o§ = this.§[!+§;
         this.updatePositions();
      }
      
      protected function §7u§() : void
      {
         var _loc2_:§#h§ = null;
         this.§^!o§ = 0;
         this.§[!+§ = 0;
         this.§"H§ = Math.min(this.§0'§,this.§++§.length);
         this.§,V§();
         var _loc1_:int = 0;
         while(_loc1_ < this.§"H§)
         {
            _loc2_ = this.§[d§();
            this.§8X§.addChild(_loc2_);
            _loc2_.index = _loc1_;
            _loc2_.data = this.§++§[_loc1_];
            this.§3U§.push(_loc2_);
            _loc1_++;
         }
         this.updatePositions();
      }
      
      protected function §,V§() : void
      {
         this.§2!H§ = Math.min((this.§?=§ - this.§"H§ * this.§ !e§) / this.§"H§,this.§+4§);
      }
      
      protected function get § !e§() : Number
      {
         var _loc1_:§#h§ = null;
         if(this.§!!E§ == -1)
         {
            _loc1_ = this.§[d§();
            this.§!!E§ = _loc1_.width;
            this.§<!A§(_loc1_);
         }
         return this.§!!E§;
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         if(this.§++§.length == this.§"H§)
         {
            return;
         }
         this.§"D§(param1);
         if(param2)
         {
            this.§^!o§ = this.§[!+§;
            this.updatePositions();
         }
      }
      
      protected function §"D§(param1:int) : void
      {
         if(this.§[!+§ - param1 > 0)
         {
            this.§[!+§ = 0;
         }
         else if(this.§[!+§ - param1 - this.§;!O§ < -this.§++§.length)
         {
            this.§[!+§ = -(this.§++§.length - this.§;!O§);
         }
         else
         {
            this.§[!+§ -= param1;
         }
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         if(this.§[!+§ == this.§^!o§)
         {
            return;
         }
         this.§^!o§ += (this.§[!+§ - this.§^!o§) / 4;
         if(Math.abs(this.§^!o§ - this.§[!+§) < 0.01)
         {
            this.§^!o§ = this.§[!+§;
         }
         this.updatePositions();
      }
      
      protected function updatePositions() : void
      {
         var _loc2_:§#h§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§#h§ = null;
         var _loc1_:int = this.§3U§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§3U§[_loc1_];
            _loc2_.x = this.§[<§(_loc2_.index);
            if(_loc2_.x >= this.§?=§ || _loc2_.x <= -this.§ !e§)
            {
               this.§8X§.removeChild(_loc2_);
               this.§3U§.splice(this.§3U§.indexOf(_loc2_),1);
               this.§<!A§(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§++§.length)
         {
            _loc3_ = this.§[<§(_loc1_);
            if(_loc3_ > -this.§ !e§ && _loc3_ < this.§?=§ && !this.§'?§(_loc1_))
            {
               _loc4_ = this.§[d§();
               this.§8X§.addChild(_loc4_);
               _loc4_.data = this.§++§[_loc1_];
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               this.§3U§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function §[<§(param1:Number) : Number
      {
         return Math.round(this.§2!H§ / 2 + (param1 + this.§^!o§) * (this.§ !e§ + this.§2!H§));
      }
      
      protected function §'?§(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§3U§.length)
         {
            if(this.§3U§[_loc2_].index == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §-"§() : void
      {
         var _loc1_:§#h§ = null;
         for each(_loc1_ in this.§3U§)
         {
            _loc1_.data = this.§++§[_loc1_.index];
         }
      }
      
      public function get data() : Array
      {
         return this.§++§;
      }
      
      public function set data(param1:Array) : void
      {
         this.§++§ = param1;
         this.clear();
         if(this.§++§)
         {
            this.§7u§();
         }
      }
      
      public function get §;!O§() : int
      {
         return this.§"H§;
      }
      
      public function clear() : void
      {
         var _loc1_:§#h§ = null;
         while(this.§3U§.length > 0)
         {
            _loc1_ = this.§3U§.pop();
            this.§8X§.removeChild(_loc1_);
            this.§<!A§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§[!+§;
      }
      
      protected function §[d§() : §#h§
      {
         if(this.§3T§.length > 0)
         {
            return this.§3T§.pop();
         }
         var _loc1_:§#h§ = new this.§6!C§();
         _loc1_.§<D§ = this;
         return _loc1_;
      }
      
      protected function §<!A§(param1:§#h§) : void
      {
         param1.data = null;
         this.§3T§.push(param1);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§8X§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
