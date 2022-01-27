package §8§#7
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §""b§
   {
       
      
      protected var §0v§:Sprite;
      
      protected var §[b§:Number;
      
      protected var §9!C§:Number;
      
      protected var §]q§:Class;
      
      protected var §9"9§:Number;
      
      protected var §+!!§:Number;
      
      protected var §`!-§:Number;
      
      protected var §6!,§:Number;
      
      protected var §3!n§:Number = -1;
      
      protected var §+3§:Array;
      
      protected var §,!t§:int = -1;
      
      protected var §`J§:Number = 0;
      
      protected var §&B§:int = 0;
      
      protected var § "c§:Vector.<§"!E§>;
      
      protected var §+7§:Vector.<§"!E§>;
      
      public function §""b§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         this.§ "c§ = new Vector.<§"!E§>(0);
         this.§+7§ = new Vector.<§"!E§>(0);
         super();
         this.§0v§ = new Sprite();
         this.§[b§ = param1;
         this.§9!C§ = param2;
         this.§+3§ = param3;
         this.§]q§ = param4 || §"!E§;
         this.§9"9§ = param5;
         this.§+!!§ = param6;
         this.calculateMaxItemsVisible();
         this.§4k§();
         if(this.§+3§)
         {
            this.§8"r§();
         }
         this.§0v§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function calculateMaxItemsVisible() : void
      {
         this.§6!,§ = Math.floor(this.§[b§ / (this.§ !M§ + this.§9"9§));
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§0v§;
      }
      
      protected function §4k§() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,1);
         _loc1_.graphics.drawRect(0,0,this.§[b§,this.§9!C§);
         _loc1_.graphics.endFill();
         this.§0v§.addChild(_loc1_);
         this.§0v§.mask = _loc1_;
      }
      
      public function setWidth(param1:Number) : void
      {
         var _loc2_:§"!E§ = null;
         this.§[b§ = this.§0v§.mask.width = param1;
         this.§6!,§ = Math.floor(this.§[b§ / (this.§ !M§ + this.§9"9§));
         this.§,!t§ = Math.min(this.§6!,§,this.§+3§.length);
         this.calculateMargin();
         while(this.§+7§.length > this.§6!,§)
         {
            _loc2_ = this.§+7§.pop();
            this.§0v§.removeChild(_loc2_);
            this.§'f§(_loc2_);
         }
         this.§1"j§(0);
         this.§`J§ = this.§&B§;
         this.updatePositions();
      }
      
      public function setHeight(param1:Number) : void
      {
         this.§9!C§ = this.§0v§.mask.height = param1;
      }
      
      protected function §8"r§(param1:Boolean = true) : void
      {
         var _loc3_:§"!E§ = null;
         if(param1)
         {
            this.§`J§ = 0;
            this.§&B§ = 0;
         }
         this.§,!t§ = Math.min(this.§6!,§,this.§+3§.length);
         this.calculateMargin();
         var _loc2_:int = 0;
         while(_loc2_ < this.§,!t§)
         {
            _loc3_ = this.§!e§();
            this.§0v§.addChild(_loc3_);
            _loc3_.index = _loc2_;
            this.§]#2§(_loc3_,this.data[_loc2_]);
            this.§+7§.push(_loc3_);
            _loc2_++;
         }
         this.updatePositions();
      }
      
      protected function §]#2§(param1:§"!E§, param2:Object) : void
      {
         param1.data = param2;
      }
      
      protected function calculateMargin() : void
      {
         this.§`!-§ = Math.min((this.§[b§ - this.§,!t§ * this.§ !M§) / this.§,!t§,this.§+!!§);
      }
      
      protected function get § !M§() : Number
      {
         var _loc1_:§"!E§ = null;
         if(this.§3!n§ == -1)
         {
            _loc1_ = this.§!e§();
            this.§3!n§ = _loc1_.width;
            this.§'f§(_loc1_);
         }
         return this.§3!n§;
      }
      
      public function §2x§(param1:Array, param2:Boolean = true) : void
      {
         this.§+3§ = param1;
         this.clear();
         if(this.§+3§)
         {
            this.§8"r§(param2);
         }
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         if(!this.§+3§ || this.§+3§.length == this.§,!t§)
         {
            return;
         }
         this.§1"j§(param1);
         if(param2)
         {
            this.§`J§ = this.§&B§;
            this.updatePositions();
         }
      }
      
      protected function §1"j§(param1:int) : void
      {
         if(this.§&B§ - param1 > 0)
         {
            this.§&B§ = 0;
         }
         else if(this.§&B§ - param1 - this.visibleItemsCount < -this.§+3§.length)
         {
            this.§&B§ = -(this.§+3§.length - this.visibleItemsCount);
         }
         else
         {
            this.§&B§ -= param1;
         }
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         if(this.§&B§ == this.§`J§)
         {
            return;
         }
         this.§`J§ += (this.§&B§ - this.§`J§) / 4;
         if(Math.abs(this.§`J§ - this.§&B§) < 0.01)
         {
            this.§`J§ = this.§&B§;
         }
         this.updatePositions();
      }
      
      protected function updatePositions() : void
      {
         var _loc2_:§"!E§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§"!E§ = null;
         var _loc1_:int = this.§+7§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§+7§[_loc1_];
            _loc2_.x = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.x >= this.§[b§ || _loc2_.x <= -this.§ !M§)
            {
               this.hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§+3§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§ !M§ && _loc3_ < this.§[b§ && !this.§@!3§(_loc1_))
            {
               _loc4_ = this.§!e§();
               this.§0v§.addChild(_loc4_);
               this.§]#2§(_loc4_,this.§+3§[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               this.§+7§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function hide(param1:§"!E§) : void
      {
         this.§0v§.removeChild(param1);
         this.§+7§.splice(this.§+7§.indexOf(param1),1);
         this.§'f§(param1);
      }
      
      protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(this.§`!-§ / 2 + (param1 + this.§`J§) * (this.§ !M§ + this.§`!-§));
      }
      
      protected function §@!3§(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§+7§.length)
         {
            if(this.§+7§[_loc2_].index == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function refresh() : void
      {
         var _loc1_:§"!E§ = null;
         for each(_loc1_ in this.§+7§)
         {
            this.§]#2§(_loc1_,this.§+3§[_loc1_.index]);
         }
      }
      
      public function get data() : Array
      {
         return this.§+3§;
      }
      
      public function set data(param1:Array) : void
      {
         this.§2x§(param1);
      }
      
      public function get visibleItemsCount() : int
      {
         return this.§,!t§;
      }
      
      public function clear() : void
      {
         var _loc1_:§"!E§ = null;
         while(this.§+7§.length > 0)
         {
            _loc1_ = this.§+7§.pop();
            this.§0v§.removeChild(_loc1_);
            this.§'f§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§&B§;
      }
      
      protected function §!e§() : §"!E§
      {
         if(this.§ "c§.length > 0)
         {
            return this.§ "c§.pop();
         }
         var _loc1_:§"!E§ = new this.§]q§();
         _loc1_.§`!c§ = this;
         return _loc1_;
      }
      
      protected function §'f§(param1:§"!E§) : void
      {
         this.§]#2§(param1,null);
         this.§ "c§.push(param1);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§0v§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
