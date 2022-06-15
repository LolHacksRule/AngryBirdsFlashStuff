package §!!P§
{
   import §&$&§.ParticleDesignerPS;
   import §'!j§.Starling;
   import §'G§.§0!d§;
   import §'G§.§3$§;
   import §'G§.§3$B§;
   import §-<§.§4#N§;
   import §-<§.§8"h§;
   import §-<§.§?!N§;
   import §2!l§.§&y§;
   import §2!l§.§0"[§;
   import §2!l§.§4"3§;
   import §6#H§.DisplayObject;
   import §6#H§.Image;
   import §6#H§.Sprite;
   import §<1§.ParticleManager;
   import §>2§.§!6§;
   import §>2§.§+!t§;
   import flash.geom.Rectangle;
   
   public class §2#%§ implements §&y§
   {
       
      
      private var §"# §:int;
      
      private var §^!T§:int;
      
      private var §+#T§:Number;
      
      private var §=#c§:Boolean;
      
      protected var §'#f§:Sprite;
      
      private var §##>§:Array;
      
      private var §%#2§:Boolean = true;
      
      private var §?#r§:§3$§;
      
      private var §2"k§:Sprite;
      
      private var §+!v§:Sprite;
      
      private var §+!w§:Number = 0;
      
      private var §4!0§:Number = 0;
      
      protected var §5>§:Number = 1.0;
      
      protected var §-!,§:Number = 0.0;
      
      protected var §;"K§:Number = 0.0;
      
      protected var §^l§:Number = 0.0;
      
      protected var §>H§:Number = 0.0;
      
      protected var §<#C§:Number = 0.0;
      
      protected var §""a§:Number = 0.0;
      
      protected var §1"$§:Number = 0.0;
      
      protected var §3#h§:Number = 0.0;
      
      protected var §3"[§:Number = 0.0;
      
      protected var §@!k§:Number = 0.0;
      
      protected var §"#k§:Boolean;
      
      private var §'"M§:Vector.<Sprite>;
      
      private var §^#U§:int;
      
      private var §5!9§:int;
      
      private var §?!3§:int;
      
      private var §7#c§:Vector.<§4"T§>;
      
      protected var §3#K§:§0"[§;
      
      private var §4#r§:Number;
      
      private var §4"!§:Number;
      
      private var §@#l§:Number;
      
      private var §2#B§:Number;
      
      private var §,!M§:int = 0;
      
      public function §2#%§(param1:§0"[§, param2:§8"h§, param3:Sprite, param4:§3$§, param5:Number)
      {
         this.§##>§ = [];
         this.§7#c§ = new Vector.<§4"T§>();
         super();
         this.§?#r§ = param4;
         this.§3#K§ = param1;
         this.§'#f§ = param3;
         this.§+#T§ = param2.speed;
         this.§=#c§ = param2.foreground;
         this.§3#h§ = param2.velocityX;
         this.§3"[§ = param2.moveStartOffsetX;
         this.§@!k§ = param2.moveEndOffsetX;
         this.initialize(param2,param5);
         this.§'#f§.x = -(this.§-!,§ * this.§5>§) + this.§<#C§;
         this.§'#f§.y = -(this.§;"K§ * this.§5>§) + this.§""a§;
         this.§@#l§ = 0;
         this.§2#B§ = 0;
      }
      
      public function get §+!5§() : Number
      {
         return this.§+#T§;
      }
      
      public function get §-"c§() : Boolean
      {
         return this.§=#c§;
      }
      
      public function get §1">§() : Number
      {
         return this.§"# §;
      }
      
      public function get §,$§() : Number
      {
         return this.§^!T§;
      }
      
      public function get scale() : Number
      {
         return this.§5>§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§5>§ = param1;
      }
      
      protected function initializePivotFromTexture(param1:§3$B§) : void
      {
         this.§;"K§ = param1.pivotY;
         if(!this.§=#c§)
         {
            this.§-!,§ = param1.pivotX;
         }
         else
         {
            this.§-!,§ = 0;
         }
      }
      
      protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.bounds;
         this.§;"K§ = _loc2_.bottom;
         this.§-!,§ = (_loc2_.left + _loc2_.right) / 2;
      }
      
      protected function §3!T§(param1:String, param2:Boolean, param3:Number) : void
      {
         var _loc5_:§3$B§ = null;
         var _loc4_:DisplayObject;
         if(!(_loc4_ = §0!d§.§4#-§(param1,this.§?#r§,param2)))
         {
            if(!(_loc5_ = this.§?#r§.getTexture(param1)))
            {
               return;
            }
            this.§5>§ = param3 * _loc5_.scale;
            this.initializePivotFromTexture(_loc5_);
            this.§"# § = _loc5_.width - 2;
            this.§^!T§ = _loc5_.height - 2;
         }
         else
         {
            this.§5>§ = param3;
            this.initializePivotFromComposite(_loc4_);
            this.§"# § = _loc4_.width - 2;
            this.§^!T§ = _loc4_.height - 2;
            _loc4_.dispose();
         }
         this.§"# § = Math.round(this.§"# §);
         this.§^!T§ = Math.round(this.§^!T§);
      }
      
      protected function §,@§(param1:String, param2:Boolean, param3:int, param4:int) : Sprite
      {
         var _loc7_:DisplayObject = null;
         var _loc8_:Sprite = null;
         var _loc5_:Sprite = new Sprite();
         var _loc6_:int = param3;
         while(_loc6_ <= param4)
         {
            (_loc7_ = this.§!M§(param1,param2)).x = _loc6_ * this.§"# §;
            _loc7_.y = 0;
            _loc7_.scaleX = 1;
            _loc7_.scaleY = 1;
            _loc5_.addChild(_loc7_);
            _loc6_++;
         }
         if(§0!d§.§7a§(param1))
         {
            _loc8_ = this.§>h§(_loc5_);
            _loc5_.removeChildren();
            _loc5_.dispose();
            (_loc5_ = _loc8_).flatten();
         }
         return _loc5_;
      }
      
      private function §>h§(param1:Sprite) : Sprite
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc2_:Sprite = new Sprite();
         if(param1.numChildren > 0 && param1.getChildAt(0) is Sprite)
         {
            _loc3_ = Sprite(param1.getChildAt(0)).numChildren;
            _loc4_ = _loc3_ - 1;
            while(_loc4_ >= 0)
            {
               _loc5_ = 0;
               while(_loc5_ < param1.numChildren)
               {
                  if(_loc6_ = param1.getChildAt(_loc5_) as Sprite)
                  {
                     _loc7_ = _loc6_.getChildAt(_loc4_);
                     _loc2_.addChildAt(_loc7_,0);
                     _loc7_.x += _loc6_.x;
                  }
                  _loc5_++;
               }
               _loc4_--;
            }
         }
         return _loc2_;
      }
      
      protected function §!M§(param1:String, param2:Boolean) : DisplayObject
      {
         var _loc4_:§3$B§ = null;
         var _loc3_:DisplayObject = §0!d§.§4#-§(param1,this.§?#r§,param2);
         if(!_loc3_)
         {
            _loc4_ = this.§?#r§.getTexture(param1);
            _loc3_ = new Image(_loc4_.texture,false,param2);
         }
         return _loc3_;
      }
      
      protected function getRepeatCount(param1:Number, param2:int) : int
      {
         return (2 + §!6§.§+#P§ * 1.5 / (param2 * param1)) * 2;
      }
      
      protected function initialize(param1:§8"h§, param2:Number) : void
      {
         var _loc6_:String = null;
         var _loc7_:Sprite = null;
         if(param1.scale != 0)
         {
            this.§5>§ = param1.scale;
         }
         else
         {
            this.§5>§ = 1;
         }
         if(param1.§7"1§ && param1.§7"1§.length > 0)
         {
            this.§3!T§(param1.§7"1§[0],param1.highQuality,this.§5>§);
         }
         else
         {
            this.§3!T§(param1.spriteName,param1.highQuality,this.§5>§);
         }
         this.§"# § = Math.round(this.§"# §);
         this.§^!T§ = Math.round(this.§^!T§);
         if(this.§"# § <= 0)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.tileable)
         {
            this.§,!M§ = this.getRepeatCount(param2,this.§"# §);
            _loc3_ = -this.§,!M§ / 2 - 1;
            _loc4_ = -_loc3_ - 1;
            this.§"#k§ = true;
         }
         this.§<#C§ = param1.xOffset;
         this.§""a§ = param1.yOffset;
         var _loc5_:int = _loc3_;
         while(_loc5_ <= _loc4_)
         {
            this.§>$9§(param1,_loc5_ * this.§"# §);
            _loc5_++;
         }
         if(param1.§7"1§ && param1.§7"1§.length > 0)
         {
            this.§'"M§ = new Vector.<Sprite>();
            for each(_loc6_ in param1.§7"1§)
            {
               _loc7_ = this.§,@§(_loc6_,param1.highQuality,_loc3_,_loc4_);
               this.§'#f§.addChild(_loc7_);
               _loc7_.visible = false;
               this.§'"M§.push(_loc7_);
            }
            this.§^#U§ = param1.frameTime > 0 ? int(param1.frameTime) : 1000;
            this.§5!9§ = 0;
            this.§?!3§ = 0;
            this.§'"M§[this.§?!3§].visible = true;
         }
         else
         {
            _loc7_ = this.§,@§(param1.spriteName,param1.highQuality,_loc3_,_loc4_);
            this.§'#f§.addChild(_loc7_);
         }
         this.§]"Z§();
         this.§'!L§();
         this.§`##§(param1);
         this.setVisibility(param1.§3"L§);
      }
      
      private function §`##§(param1:§8"h§) : void
      {
         var _loc4_:§?!N§ = null;
         var _loc5_:§4"T§ = null;
         var _loc2_:uint = param1.§2$$§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.§,1§(_loc3_);
            if((_loc5_ = §2#8§.§8"r§(this.§'#f§,this,_loc4_)).§&#]§)
            {
               this.§3#K§.§"a§(this,_loc5_.§&#]§);
            }
            this.§7#c§.push(_loc5_);
            _loc3_++;
         }
      }
      
      private function §&",§(param1:Sprite, param2:int = -1) : Boolean
      {
         if(param1)
         {
            if(param1.numChildren <= 0)
            {
               param1.dispose();
               return false;
            }
            param1.scaleX = 1 / this.§5>§;
            param1.scaleY = 1 / this.§5>§;
            param1.x = this.§-!,§ - this.§<#C§ / this.§5>§;
            param1.y = this.§;"K§ - this.§""a§ / this.§5>§;
            if(param2 < 0)
            {
               this.§'#f§.addChild(param1);
            }
            else
            {
               this.§'#f§.addChildAt(param1,param2);
            }
         }
         return true;
      }
      
      private function §]"Z§() : void
      {
         if(!this.§&",§(this.§2"k§))
         {
            this.§2"k§ = null;
         }
         if(!this.§&",§(this.§+!v§,0))
         {
            this.§+!v§ = null;
         }
      }
      
      private function §>$9§(param1:§8"h§, param2:Number) : void
      {
         var _loc4_:§4#N§ = null;
         var _loc5_:§+!t§ = null;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.§]e§)
         {
            _loc4_ = param1.§-P§(_loc3_);
            if((_loc5_ = ParticleManager.§#$#§(_loc4_.id,this.§?#r§)) && _loc5_.§,!g§ > 0)
            {
               _loc5_.x = param2 + _loc4_.x + param1.xOffset;
               _loc5_.y = _loc4_.y;
               _loc5_.scaleX = _loc5_.scaleY = _loc4_.scale;
               _loc5_.rotation = _loc4_.rotation;
               _loc5_.alpha = _loc4_.alpha;
               _loc5_.start();
               Starling.§@!T§.add(_loc5_);
               this.§##>§.push(_loc5_);
               if(_loc4_.§-"=§)
               {
                  if(!this.§+!v§)
                  {
                     this.§+!v§ = new Sprite();
                  }
                  this.§+!v§.addChild(_loc5_);
               }
               else
               {
                  if(!this.§2"k§)
                  {
                     this.§2"k§ = new Sprite();
                  }
                  this.§2"k§.addChild(_loc5_);
               }
               _loc6_ = 0;
               while(_loc6_ < _loc4_.fastForwardsAfterAdd)
               {
                  _loc5_.§^"3§(1 / 20);
                  _loc6_++;
               }
            }
            else if(_loc5_)
            {
               _loc5_.dispose();
            }
            _loc3_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         var _loc2_:§4"T§ = null;
         this.§'#f§.removeChildren(0,-1,true);
         for each(_loc1_ in this.§##>§)
         {
            Starling.§@!T§.§>L§(_loc1_);
            _loc1_.dispose();
         }
         for each(_loc2_ in this.§7#c§)
         {
            this.§3#K§.§?"?§(this,_loc2_.§&#]§);
         }
         this.§##>§ = [];
         this.§+!v§ = null;
         this.§2"k§ = null;
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         this.§4#r§ = param1 - this.§+!w§;
         this.§4"!§ = param2 - this.§4!0§;
         this.§+!w§ = param1;
         this.§4!0§ = param2;
         this.§'#f§.scaleX = this.§5>§;
         this.§'#f§.scaleY = this.§5>§;
         this.§'#f§.x += -this.§4#r§ * this.§+#T§;
         this.§'#f§.y += -this.§4"!§;
      }
      
      private function §'!L§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§##>§)
         {
            Starling.§@!T§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §!"U§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§##>§)
         {
            Starling.§@!T§.§>L§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §4#P§(param1:Boolean) : void
      {
         if(param1 == this.§%#2§)
         {
            return;
         }
         this.§%#2§ = param1;
         if(this.§%#2§)
         {
            this.§'!L§();
         }
         else
         {
            this.§!"U§();
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§4"T§ = null;
         if(!this.§'#f§.visible)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§7#c§.length)
         {
            _loc3_ = this.§7#c§[_loc2_];
            _loc3_.update(param1);
            _loc2_++;
         }
         if(this.§3#h§ != 0)
         {
            this.§1"$§ = this.§3#h§ * param1 / 1000;
            if(this.§3"[§ != this.§@!k§)
            {
               if(this.§1"$§ < this.§3"[§)
               {
                  this.§1"$§ = this.§@!k§;
               }
               else if(this.§1"$§ > this.§@!k§)
               {
                  this.§1"$§ = this.§3"[§;
               }
            }
            else
            {
               while(this.§1"$§ < -this.§1">§)
               {
                  this.§1"$§ += this.§1">§;
               }
               while(this.§1"$§ > this.§1">§)
               {
                  this.§1"$§ -= this.§1">§;
               }
            }
            this.§'#f§.x += this.§1"$§ * this.§5>§;
            if(this.§,!M§ > 0)
            {
               if(this.§@#l§ == 0 && this.§2#B§ == 0)
               {
                  this.§@#l§ = this.§'#f§.x;
                  this.§2#B§ = this.§1">§ * this.§,!M§;
               }
               if(this.§3#h§ > 0)
               {
                  if(this.§'#f§.x >= this.§2#B§)
                  {
                     this.§'#f§.x = this.§@#l§;
                  }
               }
               else if(this.§'#f§.x <= -this.§2#B§)
               {
                  this.§'#f§.x = this.§@#l§;
               }
            }
         }
         if(this.§'"M§ && this.§^#U§ > 0)
         {
            this.§5!9§ += param1;
            while(this.§5!9§ >= this.§^#U§)
            {
               this.§5!9§ -= this.§^#U§;
               ++this.§?!3§;
               if(this.§?!3§ >= this.§'"M§.length)
               {
                  this.§?!3§ = 0;
               }
               _loc2_ = 0;
               while(_loc2_ < this.§'"M§.length)
               {
                  this.§'"M§[_loc2_].visible = this.§?!3§ == _loc2_;
                  _loc2_++;
               }
            }
         }
      }
      
      function §%$-§(param1:String) : void
      {
         var _loc3_:§4"T§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§7#c§.length)
         {
            _loc3_ = this.§7#c§[_loc2_];
            if(_loc3_.§&#]§ == param1)
            {
               _loc3_.start();
            }
            _loc2_++;
         }
      }
      
      public function §+P§(param1:§4"3§) : void
      {
         this.§%$-§(param1.eventName);
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.§'#f§.visible = param1;
      }
      
      public function §%!<§(param1:Number) : void
      {
         this.§5>§ += param1;
         this.§'#f§.x = -this.§+!w§ * this.§+#T§ - this.§-!,§ * this.§5>§ + this.§<#C§ + this.§1"$§ * this.§5>§;
         this.§'#f§.y = -this.§4!0§ - this.§;"K§ * this.§5>§ + this.§""a§;
      }
   }
}
