package §8"h§
{
   import §#!S§.§9"@§;
   import §#!S§.§?##§;
   import §#!S§.§^!5§;
   import §#Z§.DisplayObject;
   import §#Z§.Image;
   import §#Z§.Sprite;
   import §&§.Starling;
   import §-e§.ParticleDesignerPS;
   import §0#I§.§+#P§;
   import §0#I§.§-!6§;
   import §0#I§.§3s§;
   import §9#M§.§%"=§;
   import §9#M§.§'!-§;
   import §9#M§.§7!D§;
   import §?$#§.§<d§;
   import §?$#§.§["n§;
   import §`$,§.ParticleManager;
   import flash.geom.Rectangle;
   
   public class §`#s§ implements §+#P§
   {
       
      
      private var §="y§:int;
      
      private var §-!W§:int;
      
      private var §2$!§:Number;
      
      private var §?!?§:Boolean;
      
      protected var §]#+§:Sprite;
      
      private var §6#E§:Array;
      
      private var §0#]§:Boolean = true;
      
      private var §]#o§:§%"=§;
      
      private var §0#?§:Sprite;
      
      private var §!#!§:Sprite;
      
      private var §=#§:Number = 0;
      
      private var §9"W§:Number = 0;
      
      protected var §6#q§:Number = 1.0;
      
      protected var §1">§:Number = 0.0;
      
      protected var §@l§:Number = 0.0;
      
      protected var §,7§:Number = 0.0;
      
      protected var §@!l§:Number = 0.0;
      
      protected var §#V§:Number = 0.0;
      
      protected var §,#r§:Number = 0.0;
      
      protected var §`#8§:Number = 0.0;
      
      protected var §4"!§:Number = 0.0;
      
      protected var §^"#§:Number = 0.0;
      
      protected var §=j§:Number = 0.0;
      
      protected var §9#V§:Boolean;
      
      private var §,#<§:Vector.<Sprite>;
      
      private var §]v§:int;
      
      private var §`"]§:int;
      
      private var §`#a§:int;
      
      private var §%7§:Vector.<§]#H§>;
      
      protected var §3"j§:§-!6§;
      
      private var §4$+§:Number;
      
      private var §+$<§:Number;
      
      private var §>",§:Number;
      
      private var §0#L§:Number;
      
      private var §^#3§:int = 0;
      
      public function §`#s§(param1:§-!6§, param2:§?##§, param3:Sprite, param4:§%"=§, param5:Number)
      {
         this.§6#E§ = [];
         this.§%7§ = new Vector.<§]#H§>();
         super();
         this.§]#o§ = param4;
         this.§3"j§ = param1;
         this.§]#+§ = param3;
         this.§2$!§ = param2.speed;
         this.§?!?§ = param2.foreground;
         this.§4"!§ = param2.velocityX;
         this.§^"#§ = param2.moveStartOffsetX;
         this.§=j§ = param2.moveEndOffsetX;
         this.initialize(param2,param5);
         this.§]#+§.x = -(this.§1">§ * this.§6#q§) + this.§#V§;
         this.§]#+§.y = -(this.§@l§ * this.§6#q§) + this.§,#r§;
         this.§>",§ = 0;
         this.§0#L§ = 0;
      }
      
      public function get §##9§() : Number
      {
         return this.§2$!§;
      }
      
      public function get §2#p§() : Boolean
      {
         return this.§?!?§;
      }
      
      public function get §-!]§() : Number
      {
         return this.§="y§;
      }
      
      public function get §'!l§() : Number
      {
         return this.§-!W§;
      }
      
      public function get scale() : Number
      {
         return this.§6#q§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§6#q§ = param1;
      }
      
      protected function initializePivotFromTexture(param1:§'!-§) : void
      {
         this.§@l§ = param1.pivotY;
         if(!this.§?!?§)
         {
            this.§1">§ = param1.pivotX;
         }
         else
         {
            this.§1">§ = 0;
         }
      }
      
      protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.bounds;
         this.§@l§ = _loc2_.bottom;
         this.§1">§ = (_loc2_.left + _loc2_.right) / 2;
      }
      
      protected function §%!l§(param1:String, param2:Boolean, param3:Number) : void
      {
         var _loc5_:§'!-§ = null;
         var _loc4_:DisplayObject;
         if(!(_loc4_ = §7!D§.§&##§(param1,this.§]#o§,param2)))
         {
            if(!(_loc5_ = this.§]#o§.getTexture(param1)))
            {
               return;
            }
            this.§6#q§ = param3 * _loc5_.scale;
            this.initializePivotFromTexture(_loc5_);
            this.§="y§ = _loc5_.width - 2;
            this.§-!W§ = _loc5_.height - 2;
         }
         else
         {
            this.§6#q§ = param3;
            this.initializePivotFromComposite(_loc4_);
            this.§="y§ = _loc4_.width - 2;
            this.§-!W§ = _loc4_.height - 2;
            _loc4_.dispose();
         }
         this.§="y§ = Math.round(this.§="y§);
         this.§-!W§ = Math.round(this.§-!W§);
      }
      
      protected function §<s§(param1:String, param2:Boolean, param3:int, param4:int) : Sprite
      {
         var _loc7_:DisplayObject = null;
         var _loc8_:Sprite = null;
         var _loc5_:Sprite = new Sprite();
         var _loc6_:int = param3;
         while(_loc6_ <= param4)
         {
            (_loc7_ = this.§""q§(param1,param2)).x = _loc6_ * this.§="y§;
            _loc7_.y = 0;
            _loc7_.scaleX = 1;
            _loc7_.scaleY = 1;
            _loc5_.addChild(_loc7_);
            _loc6_++;
         }
         if(§7!D§.§&"l§(param1))
         {
            _loc8_ = this.§#$;§(_loc5_);
            _loc5_.removeChildren();
            _loc5_.dispose();
            (_loc5_ = _loc8_).flatten();
         }
         return _loc5_;
      }
      
      private function §#$;§(param1:Sprite) : Sprite
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
      
      protected function §""q§(param1:String, param2:Boolean) : DisplayObject
      {
         var _loc4_:§'!-§ = null;
         var _loc3_:DisplayObject = §7!D§.§&##§(param1,this.§]#o§,param2);
         if(!_loc3_)
         {
            _loc4_ = this.§]#o§.getTexture(param1);
            _loc3_ = new Image(_loc4_.texture,false,param2);
         }
         return _loc3_;
      }
      
      protected function getRepeatCount(param1:Number, param2:int) : int
      {
         return (2 + §<d§.§=2§ * 1.5 / (param2 * param1)) * 2;
      }
      
      protected function initialize(param1:§?##§, param2:Number) : void
      {
         var _loc6_:String = null;
         var _loc7_:Sprite = null;
         if(param1.scale != 0)
         {
            this.§6#q§ = param1.scale;
         }
         else
         {
            this.§6#q§ = 1;
         }
         if(param1.§!#o§ && param1.§!#o§.length > 0)
         {
            this.§%!l§(param1.§!#o§[0],param1.highQuality,this.§6#q§);
         }
         else
         {
            this.§%!l§(param1.spriteName,param1.highQuality,this.§6#q§);
         }
         this.§="y§ = Math.round(this.§="y§);
         this.§-!W§ = Math.round(this.§-!W§);
         if(this.§="y§ <= 0)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.tileable)
         {
            this.§^#3§ = this.getRepeatCount(param2,this.§="y§);
            _loc3_ = -this.§^#3§ / 2 - 1;
            _loc4_ = -_loc3_ - 1;
            this.§9#V§ = true;
         }
         this.§#V§ = param1.xOffset;
         this.§,#r§ = param1.yOffset;
         var _loc5_:int = _loc3_;
         while(_loc5_ <= _loc4_)
         {
            this.§ #y§(param1,_loc5_ * this.§="y§);
            _loc5_++;
         }
         if(param1.§!#o§ && param1.§!#o§.length > 0)
         {
            this.§,#<§ = new Vector.<Sprite>();
            for each(_loc6_ in param1.§!#o§)
            {
               _loc7_ = this.§<s§(_loc6_,param1.highQuality,_loc3_,_loc4_);
               this.§]#+§.addChild(_loc7_);
               _loc7_.visible = false;
               this.§,#<§.push(_loc7_);
            }
            this.§]v§ = param1.frameTime > 0 ? int(param1.frameTime) : 1000;
            this.§`"]§ = 0;
            this.§`#a§ = 0;
            this.§,#<§[this.§`#a§].visible = true;
         }
         else
         {
            _loc7_ = this.§<s§(param1.spriteName,param1.highQuality,_loc3_,_loc4_);
            this.§]#+§.addChild(_loc7_);
         }
         this.§`#W§();
         this.§5!z§();
         this.§[#1§(param1);
         this.setVisibility(param1.§0$?§);
      }
      
      private function §[#1§(param1:§?##§) : void
      {
         var _loc4_:§^!5§ = null;
         var _loc5_:§]#H§ = null;
         var _loc2_:uint = param1.§ "'§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.§0$0§(_loc3_);
            if((_loc5_ = §;$4§.§<!^§(this.§]#+§,this,_loc4_)).§>!T§)
            {
               this.§3"j§.§^"7§(this,_loc5_.§>!T§);
            }
            this.§%7§.push(_loc5_);
            _loc3_++;
         }
      }
      
      private function §>$"§(param1:Sprite, param2:int = -1) : Boolean
      {
         if(param1)
         {
            if(param1.numChildren > 0)
            {
               param1.scaleX = 1 / this.§6#q§;
               param1.scaleY = 1 / this.§6#q§;
               param1.x = this.§1">§ - this.§#V§ / this.§6#q§;
               param1.y = this.§@l§ - this.§,#r§ / this.§6#q§;
               if(param2 < 0)
               {
                  this.§]#+§.addChild(param1);
               }
               else
               {
                  this.§]#+§.addChildAt(param1,param2);
               }
            }
            else
            {
               param1.dispose();
               return false;
            }
         }
         return true;
      }
      
      private function §`#W§() : void
      {
         if(!this.§>$"§(this.§0#?§))
         {
            this.§0#?§ = null;
         }
         if(!this.§>$"§(this.§!#!§,0))
         {
            this.§!#!§ = null;
         }
      }
      
      private function § #y§(param1:§?##§, param2:Number) : void
      {
         var _loc4_:§9"@§ = null;
         var _loc5_:§["n§ = null;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.§7!G§)
         {
            _loc4_ = param1.§'"q§(_loc3_);
            if((_loc5_ = ParticleManager.§'"=§(_loc4_.id,this.§]#o§)) && _loc5_.§#!5§ > 0)
            {
               _loc5_.x = param2 + _loc4_.x + param1.xOffset;
               _loc5_.y = _loc4_.y;
               _loc5_.scaleX = _loc5_.scaleY = _loc4_.scale;
               _loc5_.rotation = _loc4_.rotation;
               _loc5_.alpha = _loc4_.alpha;
               _loc5_.start();
               Starling.§`"E§.add(_loc5_);
               this.§6#E§.push(_loc5_);
               if(_loc4_.§[#=§)
               {
                  if(!this.§!#!§)
                  {
                     this.§!#!§ = new Sprite();
                  }
                  this.§!#!§.addChild(_loc5_);
               }
               else
               {
                  if(!this.§0#?§)
                  {
                     this.§0#?§ = new Sprite();
                  }
                  this.§0#?§.addChild(_loc5_);
               }
               _loc6_ = 0;
               while(_loc6_ < _loc4_.fastForwardsAfterAdd)
               {
                  _loc5_.§0#m§(1 / 20);
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
         var _loc2_:§]#H§ = null;
         this.§]#+§.removeChildren(0,-1,true);
         for each(_loc1_ in this.§6#E§)
         {
            Starling.§`"E§.§`$0§(_loc1_);
            _loc1_.dispose();
         }
         for each(_loc2_ in this.§%7§)
         {
            this.§3"j§.§6#G§(this,_loc2_.§>!T§);
         }
         this.§6#E§ = [];
         this.§!#!§ = null;
         this.§0#?§ = null;
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         this.§4$+§ = param1 - this.§=#§;
         this.§+$<§ = param2 - this.§9"W§;
         this.§=#§ = param1;
         this.§9"W§ = param2;
         this.§]#+§.scaleX = this.§6#q§;
         this.§]#+§.scaleY = this.§6#q§;
         this.§]#+§.x += -this.§4$+§ * this.§2$!§;
         this.§]#+§.y += -this.§+$<§;
      }
      
      private function §5!z§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§6#E§)
         {
            Starling.§`"E§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §,#z§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§6#E§)
         {
            Starling.§`"E§.§`$0§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §1#5§(param1:Boolean) : void
      {
         if(param1 == this.§0#]§)
         {
            return;
         }
         this.§0#]§ = param1;
         if(this.§0#]§)
         {
            this.§5!z§();
         }
         else
         {
            this.§,#z§();
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§]#H§ = null;
         if(!this.§]#+§.visible)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§%7§.length)
         {
            _loc3_ = this.§%7§[_loc2_];
            _loc3_.update(param1);
            _loc2_++;
         }
         if(this.§4"!§ != 0)
         {
            this.§`#8§ = this.§4"!§ * param1 / 1000;
            if(this.§^"#§ != this.§=j§)
            {
               if(this.§`#8§ < this.§^"#§)
               {
                  this.§`#8§ = this.§=j§;
               }
               else if(this.§`#8§ > this.§=j§)
               {
                  this.§`#8§ = this.§^"#§;
               }
            }
            else
            {
               while(this.§`#8§ < -this.§-!]§)
               {
                  this.§`#8§ += this.§-!]§;
               }
               while(this.§`#8§ > this.§-!]§)
               {
                  this.§`#8§ -= this.§-!]§;
               }
            }
            this.§]#+§.x += this.§`#8§ * this.§6#q§;
            if(this.§^#3§ > 0)
            {
               if(this.§>",§ == 0 && this.§0#L§ == 0)
               {
                  this.§>",§ = this.§]#+§.x;
                  this.§0#L§ = this.§-!]§ * this.§^#3§;
               }
               if(this.§4"!§ > 0)
               {
                  if(this.§]#+§.x >= this.§0#L§)
                  {
                     this.§]#+§.x = this.§>",§;
                  }
               }
               else if(this.§]#+§.x <= -this.§0#L§)
               {
                  this.§]#+§.x = this.§>",§;
               }
            }
         }
         if(this.§,#<§ && this.§]v§ > 0)
         {
            this.§`"]§ += param1;
            while(this.§`"]§ >= this.§]v§)
            {
               this.§`"]§ -= this.§]v§;
               ++this.§`#a§;
               if(this.§`#a§ >= this.§,#<§.length)
               {
                  this.§`#a§ = 0;
               }
               _loc2_ = 0;
               while(_loc2_ < this.§,#<§.length)
               {
                  this.§,#<§[_loc2_].visible = this.§`#a§ == _loc2_;
                  _loc2_++;
               }
            }
         }
      }
      
      function §2#k§(param1:String) : void
      {
         var _loc3_:§]#H§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§%7§.length)
         {
            _loc3_ = this.§%7§[_loc2_];
            if(_loc3_.§>!T§ == param1)
            {
               _loc3_.start();
            }
            _loc2_++;
         }
      }
      
      public function §=$7§(param1:§3s§) : void
      {
         this.§2#k§(param1.eventName);
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.§]#+§.visible = param1;
      }
      
      public function §3"l§(param1:Number) : void
      {
         this.§6#q§ += param1;
         this.§]#+§.x = -this.§=#§ * this.§2$!§ - this.§1">§ * this.§6#q§ + this.§#V§ + this.§`#8§ * this.§6#q§;
         this.§]#+§.y = -this.§9"W§ - this.§@l§ * this.§6#q§ + this.§,#r§;
      }
   }
}
