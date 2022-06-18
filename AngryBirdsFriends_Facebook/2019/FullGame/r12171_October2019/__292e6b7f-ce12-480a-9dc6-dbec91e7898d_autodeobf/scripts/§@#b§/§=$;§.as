package §@#b§
{
   import §"#k§.Starling;
   import §#g§.§#" §;
   import §#g§.§8§;
   import §,#e§.DisplayObject;
   import §,#e§.Image;
   import §,#e§.Sprite;
   import §,0§.§0"0§;
   import §,0§.§?h§;
   import §,0§.§`5§;
   import §2!<§.ParticleDesignerPS;
   import §4"Y§.§'#x§;
   import §4"Y§.§6"Q§;
   import §4"Y§.§@!H§;
   import §7"T§.§#"^§;
   import §7"T§.§,o§;
   import §7"T§.§4!L§;
   import §]p§.ParticleManager;
   import flash.geom.Rectangle;
   
   public class §=$;§ implements §?h§
   {
       
      
      private var §#$9§:int;
      
      private var §0!g§:int;
      
      private var § !!§:Number;
      
      private var § $!§:Boolean;
      
      protected var §&"h§:Sprite;
      
      private var §3#=§:Array;
      
      private var §1"H§:Boolean = true;
      
      private var §-i§:§#"^§;
      
      private var §3#q§:Sprite;
      
      private var §8"_§:Sprite;
      
      private var §,n§:Number = 0;
      
      private var §%""§:Number = 0;
      
      protected var §#!1§:Number = 1.0;
      
      protected var §;"M§:Number = 0.0;
      
      protected var §>!H§:Number = 0.0;
      
      protected var §"#G§:Number = 0.0;
      
      protected var §>"h§:Number = 0.0;
      
      protected var §&!l§:Number = 0.0;
      
      protected var §?"=§:Number = 0.0;
      
      protected var §6"-§:Number = 0.0;
      
      protected var §8"k§:Number = 0.0;
      
      protected var §?#<§:Number = 0.0;
      
      protected var §!$§:Number = 0.0;
      
      protected var §&a§:Boolean;
      
      private var §0"q§:Vector.<Sprite>;
      
      private var §]"m§:int;
      
      private var §+$?§:int;
      
      private var §="e§:int;
      
      private var §"$§:Vector.<§6$,§>;
      
      protected var §9!Q§:§`5§;
      
      private var §'!?§:Number;
      
      private var §&"t§:Number;
      
      private var §;!5§:Number;
      
      private var §&J§:Number;
      
      private var §4P§:int = 0;
      
      public function §=$;§(param1:§`5§, param2:§@!H§, param3:Sprite, param4:§#"^§, param5:Number)
      {
         this.§3#=§ = [];
         this.§"$§ = new Vector.<§6$,§>();
         super();
         this.§-i§ = param4;
         this.§9!Q§ = param1;
         this.§&"h§ = param3;
         this.§ !!§ = param2.speed;
         this.§ $!§ = param2.foreground;
         this.§8"k§ = param2.velocityX;
         this.§?#<§ = param2.moveStartOffsetX;
         this.§!$§ = param2.moveEndOffsetX;
         this.initialize(param2,param5);
         this.§&"h§.x = -(this.§;"M§ * this.§#!1§) + this.§&!l§;
         this.§&"h§.y = -(this.§>!H§ * this.§#!1§) + this.§?"=§;
         this.§;!5§ = 0;
         this.§&J§ = 0;
      }
      
      public function get §<"Y§() : Number
      {
         return this.§ !!§;
      }
      
      public function get §["M§() : Boolean
      {
         return this.§ $!§;
      }
      
      public function get §=b§() : Number
      {
         return this.§#$9§;
      }
      
      public function get §[!]§() : Number
      {
         return this.§0!g§;
      }
      
      public function get scale() : Number
      {
         return this.§#!1§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§#!1§ = param1;
      }
      
      protected function initializePivotFromTexture(param1:§4!L§) : void
      {
         this.§>!H§ = param1.pivotY;
         if(!this.§ $!§)
         {
            this.§;"M§ = param1.pivotX;
         }
         else
         {
            this.§;"M§ = 0;
         }
      }
      
      protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.bounds;
         this.§>!H§ = _loc2_.bottom;
         this.§;"M§ = (_loc2_.left + _loc2_.right) / 2;
      }
      
      protected function §<#Q§(param1:String, param2:Boolean, param3:Number) : void
      {
         var _loc5_:§4!L§ = null;
         var _loc4_:DisplayObject;
         if(!(_loc4_ = §,o§.§7#'§(param1,this.§-i§,param2)))
         {
            if(!(_loc5_ = this.§-i§.getTexture(param1)))
            {
               return;
            }
            this.§#!1§ = param3 * _loc5_.scale;
            this.initializePivotFromTexture(_loc5_);
            this.§#$9§ = _loc5_.width - 2;
            this.§0!g§ = _loc5_.height - 2;
         }
         else
         {
            this.§#!1§ = param3;
            this.initializePivotFromComposite(_loc4_);
            this.§#$9§ = _loc4_.width - 2;
            this.§0!g§ = _loc4_.height - 2;
            _loc4_.dispose();
         }
         this.§#$9§ = Math.round(this.§#$9§);
         this.§0!g§ = Math.round(this.§0!g§);
      }
      
      protected function §]"_§(param1:String, param2:Boolean, param3:int, param4:int) : Sprite
      {
         var _loc7_:DisplayObject = null;
         var _loc8_:Sprite = null;
         var _loc5_:Sprite = new Sprite();
         var _loc6_:int = param3;
         while(_loc6_ <= param4)
         {
            (_loc7_ = this.§@$3§(param1,param2)).x = _loc6_ * this.§#$9§;
            _loc7_.y = 0;
            _loc7_.scaleX = 1;
            _loc7_.scaleY = 1;
            _loc5_.addChild(_loc7_);
            _loc6_++;
         }
         if(§,o§.§#!e§(param1))
         {
            _loc8_ = this.§@d§(_loc5_);
            _loc5_.removeChildren();
            _loc5_.dispose();
            (_loc5_ = _loc8_).flatten();
         }
         return _loc5_;
      }
      
      private function §@d§(param1:Sprite) : Sprite
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
      
      protected function §@$3§(param1:String, param2:Boolean) : DisplayObject
      {
         var _loc4_:§4!L§ = null;
         var _loc3_:DisplayObject = §,o§.§7#'§(param1,this.§-i§,param2);
         if(!_loc3_)
         {
            _loc4_ = this.§-i§.getTexture(param1);
            _loc3_ = new Image(_loc4_.texture,false,param2);
         }
         return _loc3_;
      }
      
      protected function getRepeatCount(param1:Number, param2:int) : int
      {
         return (2 + §8#3§.§"#I§ * 1.5 / (param2 * param1)) * 2;
      }
      
      protected function initialize(param1:§@!H§, param2:Number) : void
      {
         var _loc6_:String = null;
         var _loc7_:Sprite = null;
         if(param1.scale != 0)
         {
            this.§#!1§ = param1.scale;
         }
         else
         {
            this.§#!1§ = 1;
         }
         if(param1.§2#;§ && param1.§2#;§.length > 0)
         {
            this.§<#Q§(param1.§2#;§[0],param1.highQuality,this.§#!1§);
         }
         else
         {
            this.§<#Q§(param1.spriteName,param1.highQuality,this.§#!1§);
         }
         this.§#$9§ = Math.round(this.§#$9§);
         this.§0!g§ = Math.round(this.§0!g§);
         if(this.§#$9§ <= 0)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.tileable)
         {
            this.§4P§ = this.getRepeatCount(param2,this.§#$9§);
            _loc3_ = -this.§4P§ / 2 - 1;
            _loc4_ = -_loc3_ - 1;
            this.§&a§ = true;
         }
         this.§&!l§ = param1.xOffset;
         this.§?"=§ = param1.yOffset;
         var _loc5_:int = _loc3_;
         while(_loc5_ <= _loc4_)
         {
            this.§!#8§(param1,_loc5_ * this.§#$9§);
            _loc5_++;
         }
         if(param1.§2#;§ && param1.§2#;§.length > 0)
         {
            this.§0"q§ = new Vector.<Sprite>();
            for each(_loc6_ in param1.§2#;§)
            {
               _loc7_ = this.§]"_§(_loc6_,param1.highQuality,_loc3_,_loc4_);
               this.§&"h§.addChild(_loc7_);
               _loc7_.visible = false;
               this.§0"q§.push(_loc7_);
            }
            this.§]"m§ = param1.frameTime > 0 ? int(param1.frameTime) : 1000;
            this.§+$?§ = 0;
            this.§="e§ = 0;
            this.§0"q§[this.§="e§].visible = true;
         }
         else
         {
            _loc7_ = this.§]"_§(param1.spriteName,param1.highQuality,_loc3_,_loc4_);
            this.§&"h§.addChild(_loc7_);
         }
         this.§2#n§();
         this.§>#2§();
         this.§&"?§(param1);
         this.setVisibility(param1.§'A§);
      }
      
      private function §&"?§(param1:§@!H§) : void
      {
         var _loc4_:§'#x§ = null;
         var _loc5_:§6$,§ = null;
         var _loc2_:uint = param1.§[U§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.§6#?§(_loc3_);
            if((_loc5_ = §;"r§.§`0§(this.§&"h§,this,_loc4_)).§%!j§)
            {
               this.§9!Q§.§!@§(this,_loc5_.§%!j§);
            }
            this.§"$§.push(_loc5_);
            _loc3_++;
         }
      }
      
      private function §""!§(param1:Sprite, param2:int = -1) : Boolean
      {
         if(param1)
         {
            if(param1.numChildren <= 0)
            {
               param1.dispose();
               return false;
            }
            param1.scaleX = 1 / this.§#!1§;
            param1.scaleY = 1 / this.§#!1§;
            param1.x = this.§;"M§ - this.§&!l§ / this.§#!1§;
            param1.y = this.§>!H§ - this.§?"=§ / this.§#!1§;
            if(param2 < 0)
            {
               this.§&"h§.addChild(param1);
            }
            else
            {
               this.§&"h§.addChildAt(param1,param2);
            }
         }
         return true;
      }
      
      private function §2#n§() : void
      {
         if(!this.§""!§(this.§3#q§))
         {
            this.§3#q§ = null;
         }
         if(!this.§""!§(this.§8"_§,0))
         {
            this.§8"_§ = null;
         }
      }
      
      private function §!#8§(param1:§@!H§, param2:Number) : void
      {
         var _loc4_:§6"Q§ = null;
         var _loc5_:§#" § = null;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.§9#%§)
         {
            _loc4_ = param1.§&T§(_loc3_);
            if((_loc5_ = ParticleManager.§2"W§(_loc4_.id,this.§-i§)) && _loc5_.§&6§ > 0)
            {
               _loc5_.x = param2 + _loc4_.x + param1.xOffset;
               _loc5_.y = _loc4_.y;
               _loc5_.scaleX = _loc5_.scaleY = _loc4_.scale;
               _loc5_.rotation = _loc4_.rotation;
               _loc5_.alpha = _loc4_.alpha;
               _loc5_.start();
               Starling.§%",§.add(_loc5_);
               this.§3#=§.push(_loc5_);
               if(_loc4_.§6'§)
               {
                  if(!this.§8"_§)
                  {
                     this.§8"_§ = new Sprite();
                  }
                  this.§8"_§.addChild(_loc5_);
               }
               else
               {
                  if(!this.§3#q§)
                  {
                     this.§3#q§ = new Sprite();
                  }
                  this.§3#q§.addChild(_loc5_);
               }
               _loc6_ = 0;
               while(_loc6_ < _loc4_.fastForwardsAfterAdd)
               {
                  _loc5_.§+#%§(1 / 20);
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
         var _loc2_:§6$,§ = null;
         this.§&"h§.removeChildren(0,-1,true);
         for each(_loc1_ in this.§3#=§)
         {
            Starling.§%",§.§=8§(_loc1_);
            _loc1_.dispose();
         }
         for each(_loc2_ in this.§"$§)
         {
            this.§9!Q§.§ g§(this,_loc2_.§%!j§);
         }
         this.§3#=§ = [];
         this.§8"_§ = null;
         this.§3#q§ = null;
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         this.§'!?§ = param1 - this.§,n§;
         this.§&"t§ = param2 - this.§%""§;
         this.§,n§ = param1;
         this.§%""§ = param2;
         this.§&"h§.scaleX = this.§#!1§;
         this.§&"h§.scaleY = this.§#!1§;
         this.§&"h§.x += -this.§'!?§ * this.§ !!§;
         this.§&"h§.y += -this.§&"t§;
      }
      
      private function §>#2§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§3#=§)
         {
            Starling.§%",§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §#$B§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§3#=§)
         {
            Starling.§%",§.§=8§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §-!$§(param1:Boolean) : void
      {
         if(param1 == this.§1"H§)
         {
            return;
         }
         this.§1"H§ = param1;
         if(this.§1"H§)
         {
            this.§>#2§();
         }
         else
         {
            this.§#$B§();
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§6$,§ = null;
         if(!this.§&"h§.visible)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§"$§.length)
         {
            _loc3_ = this.§"$§[_loc2_];
            _loc3_.update(param1);
            _loc2_++;
         }
         if(this.§8"k§ != 0)
         {
            this.§6"-§ = this.§8"k§ * param1 / 1000;
            if(this.§?#<§ != this.§!$§)
            {
               if(this.§6"-§ < this.§?#<§)
               {
                  this.§6"-§ = this.§!$§;
               }
               else if(this.§6"-§ > this.§!$§)
               {
                  this.§6"-§ = this.§?#<§;
               }
            }
            else
            {
               while(this.§6"-§ < -this.§=b§)
               {
                  this.§6"-§ += this.§=b§;
               }
               while(this.§6"-§ > this.§=b§)
               {
                  this.§6"-§ -= this.§=b§;
               }
            }
            this.§&"h§.x += this.§6"-§ * this.§#!1§;
            if(this.§4P§ > 0)
            {
               if(this.§;!5§ == 0 && this.§&J§ == 0)
               {
                  this.§;!5§ = this.§&"h§.x;
                  this.§&J§ = this.§=b§ * this.§4P§;
               }
               if(this.§8"k§ > 0)
               {
                  if(this.§&"h§.x >= this.§&J§)
                  {
                     this.§&"h§.x = this.§;!5§;
                  }
               }
               else if(this.§&"h§.x <= -this.§&J§)
               {
                  this.§&"h§.x = this.§;!5§;
               }
            }
         }
         if(this.§0"q§ && this.§]"m§ > 0)
         {
            this.§+$?§ += param1;
            while(this.§+$?§ >= this.§]"m§)
            {
               this.§+$?§ -= this.§]"m§;
               ++this.§="e§;
               if(this.§="e§ >= this.§0"q§.length)
               {
                  this.§="e§ = 0;
               }
               _loc2_ = 0;
               while(_loc2_ < this.§0"q§.length)
               {
                  this.§0"q§[_loc2_].visible = this.§="e§ == _loc2_;
                  _loc2_++;
               }
            }
         }
      }
      
      function §,#t§(param1:String) : void
      {
         var _loc3_:§6$,§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§"$§.length)
         {
            _loc3_ = this.§"$§[_loc2_];
            if(_loc3_.§%!j§ == param1)
            {
               _loc3_.start();
            }
            _loc2_++;
         }
      }
      
      public function §[y§(param1:§0"0§) : void
      {
         this.§,#t§(param1.eventName);
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.§&"h§.visible = param1;
      }
      
      public function §`"G§(param1:Number) : void
      {
         this.§#!1§ += param1;
         this.§&"h§.x = -this.§,n§ * this.§ !!§ - this.§;"M§ * this.§#!1§ + this.§&!l§ + this.§6"-§ * this.§#!1§;
         this.§&"h§.y = -this.§%""§ - this.§>!H§ * this.§#!1§ + this.§?"=§;
      }
   }
}
