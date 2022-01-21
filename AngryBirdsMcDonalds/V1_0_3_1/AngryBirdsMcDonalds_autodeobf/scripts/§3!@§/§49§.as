package §3!@§
{
   import § !%§.§0!U§;
   import § !%§.§>f§;
   import §"$§.§-o§;
   import §%!n§.§"+§;
   import §%!n§.§,Y§;
   import §&Y§.Texture;
   import §&c§.§%!a§;
   import §&c§.§2!]§;
   import §&c§.Sprite;
   import §5K§.§[C§;
   import §?!P§.§4!-§;
   import §?!P§.§65§;
   import §?!g§.§ !d§;
   import §finally§.§@z§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §49§
   {
      
      public static const § @§:int = 0;
      
      public static const §[D§:int = 1;
      
      public static const §&!X§:int = 2;
      
      public static const §4!g§:int = 3;
      
      public static const §9-§:int = 5;
      
      public static const §4!K§:int = 3151368;
      
      protected static const §@!@§:int = 8;
      
      protected static const §9!K§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const BIRD_LAUNCH_FORCE_GREEN:Number = 52.5;
      
      protected static const §3!=§:Number = -0.7;
      
      protected static const §#<§:Number = 0;
      
      protected static var §+]§:Texture;
      
      public static const §9m§:Number = 0.4;
       
      
      public var mLevelMain:§ s§;
      
      public var § !^§:Number;
      
      public var §0p§:Number;
      
      public var §7<§:Number;
      
      protected var §"7§:Number;
      
      protected var §;p§:Number;
      
      protected var §?!-§:Number;
      
      protected var §'!2§:Number;
      
      public var §2K§:Number;
      
      public var §%!,§:Boolean = false;
      
      protected var native:Number;
      
      public var §0n§:Vector.<§^!c§>;
      
      public var §%2§:int;
      
      public var §0P§:int;
      
      public var §-M§:Number;
      
      public var §!E§:Sprite;
      
      public var §2s§:int = 0;
      
      public var §+§:Number = 0;
      
      public var §@L§:Array;
      
      public var §#G§:Array;
      
      public var mSlingShotState:int;
      
      public var §"A§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §@!;§:Boolean = false;
      
      public var §^!7§:Number;
      
      protected var §7U§:Sprite;
      
      protected var §1!j§:§2!]§;
      
      protected var §8!8§:§2!]§;
      
      protected var §7f§:Sprite;
      
      protected var §9!c§:Sprite;
      
      protected var §1?§:Sprite;
      
      protected var §&<§:§%!a§;
      
      protected var §9'§:§%!a§;
      
      private var §!0§:Number = 0;
      
      private var §@!>§:int = 0;
      
      protected var §0!g§:Number = -0.7;
      
      protected var §1]§:Number = 0;
      
      public function §49§(param1:§ s§, param2:§@z§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§-o§ = null;
         this.§0n§ = new Vector.<§^!c§>();
         super();
         this.mLevelMain = param1;
         this.§7U§ = param3;
         if(param2)
         {
            this.setPosition(param2.§?s§,param2.§52§);
            this.§^%§();
            _loc4_ = 0;
            while(_loc4_ < param2.§>5§)
            {
               _loc5_ = param2.§%d§(_loc4_);
               this.§?§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§@!>§ = this.§^!V§();
            this.§%2§ = 0;
            if(this.§0n§.length <= 0)
            {
               §[C§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§ !^§ + " " + this.§0p§);
               this.§ !I§(§4!g§);
            }
            else
            {
               this.§ !I§(§ @§);
            }
         }
         else
         {
            §[C§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§ !I§(§4!g§);
         }
         this.§^!7§ = 0;
         this.§'t§();
         this.update(0,true);
         this.§5e§();
         this.updateAnimations(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§7U§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§!0§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§%2§ < this.§0n§.length;
      }
      
      public function dispose() : void
      {
         while(this.§0n§.length > 0)
         {
            this.§2!L§(0);
         }
         this.§0n§ = null;
         if(this.§7U§)
         {
            this.§7U§.dispose();
            this.§7U§ = null;
         }
         this.§!E§ = null;
         this.§@L§ = null;
         this.§#G§ = null;
      }
      
      public function §`V§(param1:String, param2:Number, param3:Number, param4:int = -1) : §^!c§
      {
         var _loc5_:§^!c§;
         (_loc5_ = this.§?§(param1,param2,param3,param4)).§^!J§();
         return _loc5_;
      }
      
      protected function §?§(param1:String, param2:Number, param3:Number, param4:int = -1) : §^!c§
      {
         var _loc5_:§^!c§ = new §^!c§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§0n§.push(_loc5_);
         }
         else
         {
            this.§0n§.splice(param4,0,_loc5_);
         }
         this.§!E§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function § !I§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == § @§)
         {
            this.§4%§();
            this.§-M§ = 1000;
         }
         else if(this.mSlingShotState == §[D§)
         {
            this.§4%§();
            this.§-M§ = 0;
         }
         else if(this.mSlingShotState == §&!X§)
         {
            this.§-M§ = 10000;
            this.§@!;§ = false;
            this.§4%§();
         }
         else if(this.mSlingShotState == §4!g§)
         {
            this.§4%§();
            this.§-M§ = 2000;
         }
         else if(this.mSlingShotState == §9-§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§@!;§ = false;
               this.§4%§();
               this.§0n§[this.§%2§].setPosition(this.§?!-§ - this.§0n§[this.§%2§].radius * Math.cos(this.§+§ / (180 / Math.PI)),this.§'!2§ + this.§0n§[this.§%2§].radius * Math.sin(this.§+§ / (180 / Math.PI)));
            }
            else
            {
               this.§4%§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §'!Y§() : § s§
      {
         return this.mLevelMain;
      }
      
      public function §8;§() : Boolean
      {
         return this.mSlingShotState == §4!g§ && this.§-M§ <= 0;
      }
      
      private function §^%§() : void
      {
         var _loc1_:§>f§ = this.§`!k§();
         var _loc2_:§0!U§ = _loc1_.getFrame(0);
         var _loc3_:§0!U§ = _loc1_.getFrame(1);
         this.§&<§ = new §%!a§(_loc2_.texture);
         this.§&<§.scaleX = _loc2_.scale;
         this.§&<§.scaleY = _loc2_.scale;
         this.§9'§ = new §%!a§(_loc3_.texture);
         this.§9'§.scaleX = _loc3_.scale;
         this.§9'§.scaleY = _loc3_.scale;
         this.§61§();
         this.§<&§();
         this.§!E§ = new Sprite();
         this.§7U§.addChild(this.§&<§);
         this.§7U§.addChild(this.§7f§);
         this.§7U§.addChild(this.§!E§);
         this.§7U§.addChild(this.§1?§);
         this.§7U§.addChild(this.§9!c§);
         this.§7U§.addChild(this.§9'§);
         this.§7<§ = this.§0p§ + 8.5;
      }
      
      protected function §`!k§() : §>f§
      {
         return this.mLevelMain.animationManager.getAnimation("SLINGSHOT");
      }
      
      public function §61§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§"7§ = this.§ !^§;
         this.§;p§ = this.§0p§;
         this.native = §'!0§.§-D§;
         _loc1_ = null;
      }
      
      protected function §<&§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§+]§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §+]§ = this.mLevelMain.textureManager.getTextureFromBitmapData(_loc2_);
         }
         this.§1?§ = new Sprite();
         var _loc1_:§%!a§ = new §%!a§(§+]§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§1?§.addChild(_loc1_);
         this.§7f§ = new Sprite();
         this.§1!j§ = new §2!]§(2,2,§4!K§);
         this.§7f§.addChild(this.§1!j§);
         this.§9!c§ = new Sprite();
         this.§8!8§ = new §2!]§(2,2,§4!K§);
         this.§9!c§.addChild(this.§8!8§);
      }
      
      public function updateAnimations(param1:Number) : void
      {
         var _loc2_:Number = this.§'!2§ / § s§.§<!h§;
         var _loc3_:Number = this.§?!-§ / § s§.§<!h§;
         var _loc4_:Number = 3.5 + 8 * ((this.native - this.§2K§) / this.native);
         this.§1?§.x = _loc3_;
         this.§1?§.y = _loc2_;
         this.§1?§.rotation = -this.§+§ / (180 / Math.PI);
         this.§&<§.x = this.§ !^§ / § s§.§<!h§ - 3;
         this.§&<§.y = this.§0p§ / § s§.§<!h§ - 30;
         this.§9'§.x = this.§ !^§ / § s§.§<!h§ - 30;
         this.§9'§.y = this.§0p§ / § s§.§<!h§ - 30;
         this.§9!c§.x = this.§ !^§ / § s§.§<!h§ - 17;
         this.§9!c§.y = this.§0p§ / § s§.§<!h§ + 5;
         this.§9!c§.rotation = Math.atan2(_loc2_ - this.§9!c§.y,_loc3_ - this.§9!c§.x);
         this.§7f§.x = this.§ !^§ / § s§.§<!h§ + 22;
         this.§7f§.y = this.§0p§ / § s§.§<!h§;
         this.§7f§.rotation = Math.atan2(_loc2_ - this.§7f§.y,_loc3_ - this.§7f§.x);
         this.§8!8§.width = Math.sqrt(Math.pow(_loc3_ - this.§9!c§.x,2) + Math.pow(_loc2_ - this.§9!c§.y,2));
         this.§1!j§.width = Math.sqrt(Math.pow(_loc3_ - this.§7f§.x,2) + Math.pow(_loc2_ - this.§7f§.y,2));
         this.§8!8§.height = this.§1!j§.height = _loc4_ * 2;
         this.§8!8§.y = -this.§8!8§.height / 2;
         this.§1!j§.y = -this.§1!j§.height / 2;
         this.§"A§ = false;
      }
      
      public function §;o§() : void
      {
         while(this.§0n§.length > 0)
         {
            this.§2!L§(0,true);
         }
         this.§+!B§();
         this.§?§("BIRD_SARDINE",this.§ !^§,this.§0p§);
         this.§ !I§(§&!X§);
      }
      
      protected function §+!B§() : void
      {
         § !d§.§-h§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§ !I§(§9-§);
      }
      
      public function §4%§() : void
      {
         this.setNewCoordinatesForRubber(this.§"7§,this.§;p§ + this.native / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§?!-§ == param1 && this.§'!2§ == param2)
         {
            return true;
         }
         this.§2K§ = Math.sqrt((param2 - this.§;p§) * (param2 - this.§;p§) + (param1 - this.§"7§) * (param1 - this.§"7§));
         if(this.§2K§ > this.native)
         {
            if(param3)
            {
               this.§2K§ = Math.sqrt((this.§'!2§ - this.§;p§) * (this.§'!2§ - this.§;p§) + (this.§?!-§ - this.§"7§) * (this.§?!-§ - this.§"7§));
               return false;
            }
            param1 = this.§"7§ + this.native * (param1 - this.§"7§) / this.§2K§;
            param2 = this.§;p§ + this.native * (param2 - this.§;p§) / this.§2K§;
            this.§2K§ = this.native;
         }
         this.§?!-§ = param1;
         this.§'!2§ = param2;
         this.§+§ = Math.atan2(-(this.§'!2§ - this.§;p§),this.§?!-§ - this.§"7§);
         this.§+§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§?!-§ = param1 + this.§0!g§;
            this.§'!2§ = param2 + this.§1]§;
            this.§+§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.native / 2;
         if(this.§2K§ > _loc7_ && this.§+§ > -90 - _loc4_ + _loc5_ && this.§+§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§"7§ + _loc7_ * (param1 - this.§"7§) / this.§2K§;
            param2 = this.§;p§ + _loc7_ * (param2 - this.§;p§) / this.§2K§;
            this.§2K§ = _loc7_;
            this.§?!-§ = param1;
            this.§'!2§ = param2;
         }
         else if(this.§2K§ > _loc7_ && this.§+§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§+§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.native - _loc7_) * (Math.abs(this.§+§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§"7§ + _loc8_ * (param1 - this.§"7§) / this.§2K§;
            param2 = this.§;p§ + _loc8_ * (param2 - this.§;p§) / this.§2K§;
            this.§2K§ = _loc8_;
            this.§?!-§ = param1;
            this.§'!2§ = param2;
         }
         if(this.§2K§ <= this.native * 0.45)
         {
            this.§%!,§ = true;
         }
         else if(this.§%!,§ && this.§2K§ >= this.native * 0.8)
         {
            this.§#%§();
            this.§%!,§ = false;
         }
         this.§"A§ = true;
         return true;
      }
      
      protected function §#%§() : void
      {
         § !d§.§-h§("SlingshotStreched");
      }
      
      public function §?!$§(param1:Number) : void
      {
         this.setPosition(this.§ !^§,this.§0p§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§ !^§;
         this.§ !^§ = param1;
         var _loc5_:Number = param2 - this.§0p§;
         this.§0p§ = param2;
         this.§7<§ += _loc5_;
         this.§;p§ += _loc5_;
         this.§'!2§ += _loc5_;
         this.§"7§ += _loc4_;
         this.§?!-§ += _loc4_;
         if(param3)
         {
            this.updateAnimations(0);
         }
         this.§"A§ = true;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§^!c§ = null;
         _loc2_ = this.§0n§[this.§%2§];
         var _loc3_:Number = this.§2K§ / this.native;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§49§.BIRD_LAUNCH_FORCE_GREEN) : Number(§49§.BIRD_LAUNCH_FORCE);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §@&§() : Point
      {
         var _loc1_:§^!c§ = null;
         if(this.§0n§.length > this.§%2§)
         {
            _loc1_ = this.§0n§[this.§%2§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §63§() : Point
      {
         return new Point(this.§"7§,this.§;p§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§^!c§ = null;
         this.§]!4§(param1);
         if(this.§"A§)
         {
            this.updateAnimations(param1);
         }
         this.§-M§ -= param1;
         if(this.§-M§ < 0)
         {
            this.§-M§ = 0;
         }
         if(this.mSlingShotState != §4!g§)
         {
            this.§!!1§(param1,param2);
            _loc3_ = null;
            if(this.§0n§.length > 0)
            {
               _loc3_ = this.§0n§[this.§%2§];
            }
            if(_loc3_)
            {
               _loc3_.§0o§(param1);
            }
            if(!_loc3_)
            {
               this.§ !I§(§4!g§);
            }
            else if(this.mSlingShotState == § @§)
            {
               if(this.§-M§ <= 0)
               {
                  this.§ !I§(§[D§);
                  _loc3_.§4<§();
               }
            }
            else if(this.mSlingShotState == §[D§)
            {
               if(_loc3_.§5r§)
               {
                  this.§ !I§(§&!X§);
               }
            }
            else if(this.mSlingShotState == §&!X§)
            {
               _loc3_.setPosition(this.§?!-§ - _loc3_.radius * Math.cos(this.§+§ / (180 / Math.PI)),this.§'!2§ + _loc3_.radius * Math.sin(this.§+§ / (180 / Math.PI)));
               if(this.§@!;§)
               {
                  this.§-$§(this.§2K§ / this.native,this.§+§);
               }
            }
         }
      }
      
      public function §-]§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§^!c§ = null;
         if(this.§0n§.length > 0)
         {
            _loc5_ = this.§0n§[this.§%2§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§-$§(param3,param4);
      }
      
      protected function §-$§(param1:Number, param2:Number) : void
      {
         var _loc3_:§^!c§ = null;
         this.§0!g§ = §3!=§;
         this.§1]§ = §#<§;
         if(this.§0n§.length > 0)
         {
            _loc3_ = this.§0n§[this.§%2§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§@!;§ = false;
         this.§!0§ = new Date().time;
         this.mLevelMain.§89§(_loc3_,param1,param2);
         this.§2!L§(this.§%2§,_loc3_.§'N§ > 0);
         this.playBirdShotSound();
         if(this.§%2§ >= this.§0n§.length)
         {
            this.§ !I§(§4!g§);
         }
         else
         {
            this.§ !I§(§ @§);
         }
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         § !d§.§-h§("BirdShot" + _loc1_);
      }
      
      public function §!!1§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§%2§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§0n§.length)
         {
            if(this.mSlingShotState == §9-§)
            {
               this.§0n§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§0n§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§^!c§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§4%§();
         if(this.§0P§ >= this.§0n§.length)
         {
            return false;
         }
         _loc1_ = this.§0n§[this.§0P§];
         _loc2_ = §"+§.§9Q§(_loc1_.name).score;
         this.mLevelMain.addScore(_loc2_,§<!X§.§;4§,true,_loc1_.x,_loc1_.y - 3,§65§.§ m§(_loc1_.name));
         _loc1_.§3e§(-1,true);
         ++this.§0P§;
         return true;
      }
      
      public function §^!V§() : int
      {
         var _loc2_:§^!c§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§0n§)
         {
            _loc1_ += §"+§.§9Q§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §7O§() : int
      {
         return this.§@!>§;
      }
      
      public function §]!4§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§^!7§ >= 0)
         {
            this.§^!7§ -= param1;
            if(this.§^!7§ <= 0)
            {
               _loc2_ = this.mLevelMain.objects.§3!L§(this.§"7§,this.§7<§);
               if(_loc2_ < 0)
               {
                  this.§?!$§(0.1);
                  this.§^!7§ = 0;
               }
               else if(!this.mLevelMain.objects.§2h§(_loc2_).§6!'§)
               {
                  this.§^!7§ = -1;
               }
               else if(this.mLevelMain.objects.§2h§(_loc2_).§-!m§())
               {
                  this.§^!7§ = 2000;
               }
               else
               {
                  this.§^!7§ = 500;
               }
            }
         }
      }
      
      public function §5e§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.mLevelMain.objects.§3!L§(this.§"7§,this.§7<§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§?!$§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§^!7§ = -1;
      }
      
      public function §-B§(param1:Number, param2:Number) : void
      {
         this.§7U§.x = -param1;
         this.§7U§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §&!X§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §&!X§ && this.§2K§ > this.native * §9m§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§ !I§(§&!X§);
         var _loc1_:§^!c§ = this.§0n§[this.§%2§];
         _loc1_.§3e§(§,Y§.§-^§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§^!c§ = this.§0n§[this.§%2§];
         _loc1_.§3e§(§,Y§.§-l§);
      }
      
      public function shoot() : void
      {
         this.§@!;§ = true;
      }
      
      protected function §2!L§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§^!c§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§0n§[param1])
         {
            _loc3_ = this.§0n§[param1];
            this.§!E§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§+k§(this.§0n§[param1]);
            }
            _loc3_.dispose();
            this.§0n§[param1] = null;
         }
         this.§0n§.splice(param1,1);
      }
      
      public function §+k§(param1:§^!c§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * § s§.§<!h§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * § s§.§<!h§) + Math.random() * -_loc8_ * 2;
            this.mLevelMain.particles.§ D§(§65§.§;!m§,§4!-§.§&#§,§65§.§ k§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§65§.§"!o§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.mLevelMain.particles.§ D§(§65§.§#7§,§4!-§.§&#§,§65§.§ k§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §##§(param1:§^!c§) : void
      {
         this.§2!L§(this.§0n§.indexOf(param1));
      }
      
      public function §'t§() : void
      {
         var _loc2_:§^!c§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§^!c§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§0n§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§ !^§ - this.§0n§[_loc1_].x) * (this.§ !^§ - this.§0n§[_loc1_].x) + (this.§0p§ - this.§0n§[_loc1_].y) * (this.§0p§ - this.§0n§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§ !^§ - this.§0n§[_loc1_ + 1].x) * (this.§ !^§ - this.§0n§[_loc1_ + 1].x) + (this.§0p§ - this.§0n§[_loc1_ + 1].y) * (this.§0p§ - this.§0n§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§0n§[_loc1_];
               this.§0n§.splice(_loc1_,1);
               this.§0n§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§!E§.numChildren > 0)
         {
            this.§!E§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§0n§.length)
         {
            _loc2_ = this.§0n§[_loc1_];
            this.§!E§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §9!Y§(param1:Number, param2:Number) : §^!c§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§0n§.length)
         {
            if(this.§0n§[_loc3_])
            {
               if(this.§0n§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§0n§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §<j§(param1:Number, param2:Number) : §49§
      {
         if(param1 >= this.§ !^§ - this.native / 4 && param1 <= this.§ !^§ + this.native / 4 && param2 >= this.§0p§ - this.native / 4 && this.§0p§ <= this.§7<§)
         {
            return this;
         }
         return null;
      }
      
      public function §function§(param1:§@z§) : void
      {
         var _loc3_:§^!c§ = null;
         var _loc4_:§-o§ = null;
         param1.§?s§ = this.§ !^§;
         param1.§52§ = this.§0p§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§0n§.length)
         {
            _loc3_ = this.§0n§[_loc2_];
            (_loc4_ = new §-o§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§0B§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §1+§() : void
      {
         while(this.§0n§.length > 0)
         {
            this.§##§(this.§0n§[0]);
         }
      }
      
      public function §3!m§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§0n§.length)
         {
            if(this.§0n§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§0n§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§ !^§ > param1.x && this.§ !^§ < param2.x && this.§0p§ > param1.y && this.§0p§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §&8§() : Array
      {
         return [this.§9'§,this.§&<§];
      }
      
      public function §]!n§(param1:String, param2:Number, param3:Number) : §^!c§
      {
         var _loc4_:§^!c§ = this.§?§(param1,param2,param3);
         this.§'t§();
         return _loc4_;
      }
      
      public function §4J§() : Number
      {
         return this.§0n§.length;
      }
   }
}
