package §55§
{
   import §&!9§.Texture;
   import §-!F§.§`+§;
   import §0@§.§"%§;
   import §0@§.§1]§;
   import §0@§.Sprite;
   import §0i§.§4!%§;
   import §3G§.§-s§;
   import §3G§.§9! §;
   import §7! §.§%!h§;
   import §7! §.§;!7§;
   import §9!C§.§,!j§;
   import §9!C§.§3!f§;
   import §]^§.§7G§;
   import §`i§.§0u§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §"!P§
   {
      
      public static const §=!_§:int = 0;
      
      public static const §;!W§:int = 1;
      
      public static const §1g§:int = 2;
      
      public static const §5I§:int = 3;
      
      public static const §;!L§:int = 5;
      
      public static const §>W§:int = 3151368;
      
      protected static const §>!8§:int = 8;
      
      protected static const §&6§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const BIRD_LAUNCH_FORCE_GREEN:Number = 52.5;
      
      protected static const §=!R§:Number = -0.7;
      
      protected static const §0p§:Number = 0;
      
      protected static var §!T§:Texture;
      
      public static const § !S§:Number = 0.4;
       
      
      public var mLevelMain:§>![§;
      
      public var §=!=§:Number;
      
      public var §[!;§:Number;
      
      public var §6!p§:Number;
      
      protected var §6L§:Number;
      
      protected var §#O§:Number;
      
      protected var §"!b§:Number;
      
      protected var §63§:Number;
      
      public var §@!6§:Number;
      
      public var §2!M§:Boolean = false;
      
      protected var §=m§:Number;
      
      public var §!!e§:Vector.<§7!B§>;
      
      public var §3w§:int;
      
      public var §@f§:int;
      
      public var §0+§:Number;
      
      public var §>t§:Sprite;
      
      public var §9s§:int = 0;
      
      public var §>O§:Number = 0;
      
      public var §0!J§:Array;
      
      public var §3!e§:Array;
      
      public var mSlingShotState:int;
      
      public var §1!`§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §2`§:Boolean = false;
      
      public var §&d§:Number;
      
      protected var §#Y§:Sprite;
      
      protected var §&;§:§"%§;
      
      protected var §=w§:§"%§;
      
      protected var §9b§:Sprite;
      
      protected var §7!W§:Sprite;
      
      protected var §?-§:Sprite;
      
      protected var §'n§:§1]§;
      
      protected var §!!f§:§1]§;
      
      private var §6!@§:Number = 0;
      
      private var §%!>§:int = 0;
      
      protected var §3!1§:Number = -0.7;
      
      protected var § !D§:Number = 0;
      
      public function §"!P§(param1:§>![§, param2:§`+§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§0u§ = null;
         this.§!!e§ = new Vector.<§7!B§>();
         super();
         this.mLevelMain = param1;
         this.§#Y§ = param3;
         if(param2)
         {
            this.setPosition(param2.§&l§,param2.§60§);
            this.§^!n§();
            _loc4_ = 0;
            while(_loc4_ < param2.§4!f§)
            {
               _loc5_ = param2.§&9§(_loc4_);
               this.§%q§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§%!>§ = this.§0!U§();
            this.§3w§ = 0;
            if(this.§!!e§.length <= 0)
            {
               §4!%§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§=!=§ + " " + this.§[!;§);
               this.§7!7§(§5I§);
            }
            else
            {
               this.§7!7§(§=!_§);
            }
         }
         else
         {
            §4!%§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§7!7§(§5I§);
         }
         this.§&d§ = 0;
         this.§9!@§();
         this.update(0,true);
         this.§44§();
         this.updateAnimations(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§#Y§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§6!@§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§3w§ < this.§!!e§.length;
      }
      
      public function dispose() : void
      {
         while(this.§!!e§.length > 0)
         {
            this.§>!A§(0);
         }
         this.§!!e§ = null;
         if(this.§#Y§)
         {
            this.§#Y§.dispose();
            this.§#Y§ = null;
         }
         this.§>t§ = null;
         this.§0!J§ = null;
         this.§3!e§ = null;
      }
      
      public function §!!g§(param1:String, param2:Number, param3:Number, param4:int = -1) : §7!B§
      {
         var _loc5_:§7!B§;
         (_loc5_ = this.§%q§(param1,param2,param3,param4)).§-]§();
         return _loc5_;
      }
      
      protected function §%q§(param1:String, param2:Number, param3:Number, param4:int = -1) : §7!B§
      {
         var _loc5_:§7!B§ = new §7!B§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§!!e§.push(_loc5_);
         }
         else
         {
            this.§!!e§.splice(param4,0,_loc5_);
         }
         this.§>t§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §7!7§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §=!_§)
         {
            this.§5S§();
            this.§0+§ = 1000;
         }
         else if(this.mSlingShotState == §;!W§)
         {
            this.§5S§();
            this.§0+§ = 0;
         }
         else if(this.mSlingShotState == §1g§)
         {
            this.§0+§ = 10000;
            this.§2`§ = false;
            this.§5S§();
         }
         else if(this.mSlingShotState == §5I§)
         {
            this.§5S§();
            this.§0+§ = 2000;
         }
         else if(this.mSlingShotState == §;!L§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§2`§ = false;
               this.§5S§();
               this.§!!e§[this.§3w§].setPosition(this.§"!b§ - this.§!!e§[this.§3w§].radius * Math.cos(this.§>O§ / (180 / Math.PI)),this.§63§ + this.§!!e§[this.§3w§].radius * Math.sin(this.§>O§ / (180 / Math.PI)));
            }
            else
            {
               this.§5S§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §]!5§() : §>![§
      {
         return this.mLevelMain;
      }
      
      public function §+!5§() : Boolean
      {
         return this.mSlingShotState == §5I§ && this.§0+§ <= 0;
      }
      
      private function §^!n§() : void
      {
         var _loc1_:§;!7§ = this.§"!^§();
         var _loc2_:§%!h§ = _loc1_.getFrame(0);
         var _loc3_:§%!h§ = _loc1_.getFrame(1);
         this.§'n§ = new §1]§(_loc2_.texture);
         this.§'n§.scaleX = _loc2_.scale;
         this.§'n§.scaleY = _loc2_.scale;
         this.§!!f§ = new §1]§(_loc3_.texture);
         this.§!!f§.scaleX = _loc3_.scale;
         this.§!!f§.scaleY = _loc3_.scale;
         this.§3!o§();
         this.§?U§();
         this.§>t§ = new Sprite();
         this.§#Y§.addChild(this.§'n§);
         this.§#Y§.addChild(this.§9b§);
         this.§#Y§.addChild(this.§>t§);
         this.§#Y§.addChild(this.§?-§);
         this.§#Y§.addChild(this.§7!W§);
         this.§#Y§.addChild(this.§!!f§);
         this.§6!p§ = this.§[!;§ + 8.5;
      }
      
      protected function §"!^§() : §;!7§
      {
         return this.mLevelMain.animationManager.getAnimation("SLINGSHOT");
      }
      
      public function §3!o§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§6L§ = this.§=!=§;
         this.§#O§ = this.§[!;§;
         this.§=m§ = §7!k§.§3V§;
         _loc1_ = null;
      }
      
      protected function §?U§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§!T§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §!T§ = this.mLevelMain.textureManager.getTextureFromBitmapData(_loc2_);
         }
         this.§?-§ = new Sprite();
         var _loc1_:§1]§ = new §1]§(§!T§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§?-§.addChild(_loc1_);
         this.§9b§ = new Sprite();
         this.§&;§ = new §"%§(2,2,§>W§);
         this.§9b§.addChild(this.§&;§);
         this.§7!W§ = new Sprite();
         this.§=w§ = new §"%§(2,2,§>W§);
         this.§7!W§.addChild(this.§=w§);
      }
      
      public function updateAnimations(param1:Number) : void
      {
         var _loc2_:Number = this.§63§ / §>![§.§%!k§;
         var _loc3_:Number = this.§"!b§ / §>![§.§%!k§;
         var _loc4_:Number = 3.5 + 8 * ((this.§=m§ - this.§@!6§) / this.§=m§);
         this.§?-§.x = _loc3_;
         this.§?-§.y = _loc2_;
         this.§?-§.rotation = -this.§>O§ / (180 / Math.PI);
         this.§'n§.x = this.§=!=§ / §>![§.§%!k§ - 3;
         this.§'n§.y = this.§[!;§ / §>![§.§%!k§ - 30;
         this.§!!f§.x = this.§=!=§ / §>![§.§%!k§ - 30;
         this.§!!f§.y = this.§[!;§ / §>![§.§%!k§ - 30;
         this.§7!W§.x = this.§=!=§ / §>![§.§%!k§ - 17;
         this.§7!W§.y = this.§[!;§ / §>![§.§%!k§ + 5;
         this.§7!W§.rotation = Math.atan2(_loc2_ - this.§7!W§.y,_loc3_ - this.§7!W§.x);
         this.§9b§.x = this.§=!=§ / §>![§.§%!k§ + 22;
         this.§9b§.y = this.§[!;§ / §>![§.§%!k§;
         this.§9b§.rotation = Math.atan2(_loc2_ - this.§9b§.y,_loc3_ - this.§9b§.x);
         this.§=w§.width = Math.sqrt(Math.pow(_loc3_ - this.§7!W§.x,2) + Math.pow(_loc2_ - this.§7!W§.y,2));
         this.§&;§.width = Math.sqrt(Math.pow(_loc3_ - this.§9b§.x,2) + Math.pow(_loc2_ - this.§9b§.y,2));
         this.§=w§.height = this.§&;§.height = _loc4_ * 2;
         this.§=w§.y = -this.§=w§.height / 2;
         this.§&;§.y = -this.§&;§.height / 2;
         this.§1!`§ = false;
      }
      
      public function §?8§() : void
      {
         while(this.§!!e§.length > 0)
         {
            this.§>!A§(0,true);
         }
         this.§8i§();
         this.§%q§("BIRD_SARDINE",this.§=!=§,this.§[!;§);
         this.§7!7§(§1g§);
      }
      
      protected function §8i§() : void
      {
         §7G§.§4W§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§7!7§(§;!L§);
      }
      
      public function §5S§() : void
      {
         this.setNewCoordinatesForRubber(this.§6L§,this.§#O§ + this.§=m§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§"!b§ == param1 && this.§63§ == param2)
         {
            return true;
         }
         this.§@!6§ = Math.sqrt((param2 - this.§#O§) * (param2 - this.§#O§) + (param1 - this.§6L§) * (param1 - this.§6L§));
         if(this.§@!6§ > this.§=m§)
         {
            if(param3)
            {
               this.§@!6§ = Math.sqrt((this.§63§ - this.§#O§) * (this.§63§ - this.§#O§) + (this.§"!b§ - this.§6L§) * (this.§"!b§ - this.§6L§));
               return false;
            }
            param1 = this.§6L§ + this.§=m§ * (param1 - this.§6L§) / this.§@!6§;
            param2 = this.§#O§ + this.§=m§ * (param2 - this.§#O§) / this.§@!6§;
            this.§@!6§ = this.§=m§;
         }
         this.§"!b§ = param1;
         this.§63§ = param2;
         this.§>O§ = Math.atan2(-(this.§63§ - this.§#O§),this.§"!b§ - this.§6L§);
         this.§>O§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§"!b§ = param1 + this.§3!1§;
            this.§63§ = param2 + this.§ !D§;
            this.§>O§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§=m§ / 2;
         if(this.§@!6§ > _loc7_ && this.§>O§ > -90 - _loc4_ + _loc5_ && this.§>O§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§6L§ + _loc7_ * (param1 - this.§6L§) / this.§@!6§;
            param2 = this.§#O§ + _loc7_ * (param2 - this.§#O§) / this.§@!6§;
            this.§@!6§ = _loc7_;
            this.§"!b§ = param1;
            this.§63§ = param2;
         }
         else if(this.§@!6§ > _loc7_ && this.§>O§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§>O§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§=m§ - _loc7_) * (Math.abs(this.§>O§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§6L§ + _loc8_ * (param1 - this.§6L§) / this.§@!6§;
            param2 = this.§#O§ + _loc8_ * (param2 - this.§#O§) / this.§@!6§;
            this.§@!6§ = _loc8_;
            this.§"!b§ = param1;
            this.§63§ = param2;
         }
         if(this.§@!6§ <= this.§=m§ * 0.45)
         {
            this.§2!M§ = true;
         }
         else if(this.§2!M§ && this.§@!6§ >= this.§=m§ * 0.8)
         {
            this.§&S§();
            this.§2!M§ = false;
         }
         this.§1!`§ = true;
         return true;
      }
      
      protected function §&S§() : void
      {
         §7G§.§4W§("SlingshotStreched");
      }
      
      public function §'S§(param1:Number) : void
      {
         this.setPosition(this.§=!=§,this.§[!;§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§=!=§;
         this.§=!=§ = param1;
         var _loc5_:Number = param2 - this.§[!;§;
         this.§[!;§ = param2;
         this.§6!p§ += _loc5_;
         this.§#O§ += _loc5_;
         this.§63§ += _loc5_;
         this.§6L§ += _loc4_;
         this.§"!b§ += _loc4_;
         if(param3)
         {
            this.updateAnimations(0);
         }
         this.§1!`§ = true;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§7!B§ = null;
         _loc2_ = this.§!!e§[this.§3w§];
         var _loc3_:Number = this.§@!6§ / this.§=m§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§"!P§.BIRD_LAUNCH_FORCE_GREEN) : Number(§"!P§.BIRD_LAUNCH_FORCE);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §&!%§() : Point
      {
         var _loc1_:§7!B§ = null;
         if(this.§!!e§.length > this.§3w§)
         {
            _loc1_ = this.§!!e§[this.§3w§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §@!9§() : Point
      {
         return new Point(this.§6L§,this.§#O§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§7!B§ = null;
         this.§!L§(param1);
         if(this.§1!`§)
         {
            this.updateAnimations(param1);
         }
         this.§0+§ -= param1;
         if(this.§0+§ < 0)
         {
            this.§0+§ = 0;
         }
         if(this.mSlingShotState != §5I§)
         {
            this.§'!H§(param1,param2);
            _loc3_ = null;
            if(this.§!!e§.length > 0)
            {
               _loc3_ = this.§!!e§[this.§3w§];
            }
            if(_loc3_)
            {
               _loc3_.§<#§(param1);
            }
            if(!_loc3_)
            {
               this.§7!7§(§5I§);
            }
            else if(this.mSlingShotState == §=!_§)
            {
               if(this.§0+§ <= 0)
               {
                  this.§7!7§(§;!W§);
                  _loc3_.§6l§();
               }
            }
            else if(this.mSlingShotState == §;!W§)
            {
               if(_loc3_.§7+§)
               {
                  this.§7!7§(§1g§);
               }
            }
            else if(this.mSlingShotState == §1g§)
            {
               _loc3_.setPosition(this.§"!b§ - _loc3_.radius * Math.cos(this.§>O§ / (180 / Math.PI)),this.§63§ + _loc3_.radius * Math.sin(this.§>O§ / (180 / Math.PI)));
               if(this.§2`§)
               {
                  this.§=O§(this.§@!6§ / this.§=m§,this.§>O§);
               }
            }
         }
      }
      
      public function § u§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§7!B§ = null;
         if(this.§!!e§.length > 0)
         {
            _loc5_ = this.§!!e§[this.§3w§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§=O§(param3,param4);
      }
      
      protected function §=O§(param1:Number, param2:Number) : void
      {
         var _loc3_:§7!B§ = null;
         this.§3!1§ = §=!R§;
         this.§ !D§ = §0p§;
         if(this.§!!e§.length > 0)
         {
            _loc3_ = this.§!!e§[this.§3w§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§2`§ = false;
         this.§6!@§ = new Date().time;
         this.mLevelMain.§3!M§(_loc3_,param1,param2);
         this.§>!A§(this.§3w§,_loc3_.§6!j§ > 0);
         this.playBirdShotSound();
         if(this.§3w§ >= this.§!!e§.length)
         {
            this.§7!7§(§5I§);
         }
         else
         {
            this.§7!7§(§=!_§);
         }
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §7G§.§4W§("BirdShot" + _loc1_);
      }
      
      public function §'!H§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§3w§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§!!e§.length)
         {
            if(this.mSlingShotState == §;!L§)
            {
               this.§!!e§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§!!e§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§7!B§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§5S§();
         if(this.§@f§ >= this.§!!e§.length)
         {
            return false;
         }
         _loc1_ = this.§!!e§[this.§@f§];
         _loc2_ = §-s§.§[!G§(_loc1_.name).score;
         this.mLevelMain.addScore(_loc2_,§1!g§.§=!O§,true,_loc1_.x,_loc1_.y - 3,§3!f§.§?0§(_loc1_.name));
         _loc1_.§>!?§(-1,true);
         ++this.§@f§;
         return true;
      }
      
      public function §0!U§() : int
      {
         var _loc2_:§7!B§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§!!e§)
         {
            _loc1_ += §-s§.§[!G§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §0!Z§() : int
      {
         return this.§%!>§;
      }
      
      public function §!L§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§&d§ >= 0)
         {
            this.§&d§ -= param1;
            if(this.§&d§ <= 0)
            {
               _loc2_ = this.mLevelMain.objects.§89§(this.§6L§,this.§6!p§);
               if(_loc2_ < 0)
               {
                  this.§'S§(0.1);
                  this.§&d§ = 0;
               }
               else if(!this.mLevelMain.objects.§3$§(_loc2_).§'!8§)
               {
                  this.§&d§ = -1;
               }
               else if(this.mLevelMain.objects.§3$§(_loc2_).§1-§())
               {
                  this.§&d§ = 2000;
               }
               else
               {
                  this.§&d§ = 500;
               }
            }
         }
      }
      
      public function §44§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.mLevelMain.objects.§89§(this.§6L§,this.§6!p§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§'S§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§&d§ = -1;
      }
      
      public function § !l§(param1:Number, param2:Number) : void
      {
         this.§#Y§.x = -param1;
         this.§#Y§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §1g§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §1g§ && this.§@!6§ > this.§=m§ * § !S§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§7!7§(§1g§);
         var _loc1_:§7!B§ = this.§!!e§[this.§3w§];
         _loc1_.§>!?§(§9! §.§;!'§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§7!B§ = this.§!!e§[this.§3w§];
         _loc1_.§>!?§(§9! §.§ Y§);
      }
      
      public function shoot() : void
      {
         this.§2`§ = true;
      }
      
      protected function §>!A§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§7!B§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§!!e§[param1])
         {
            _loc3_ = this.§!!e§[param1];
            this.§>t§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§,!i§(this.§!!e§[param1]);
            }
            _loc3_.dispose();
            this.§!!e§[param1] = null;
         }
         this.§!!e§.splice(param1,1);
      }
      
      public function §,!i§(param1:§7!B§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §>![§.§%!k§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §>![§.§%!k§) + Math.random() * -_loc8_ * 2;
            this.mLevelMain.particles.§4!2§(§3!f§.§1w§,§,!j§.§++§,§3!f§.§"!&§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§3!f§.§-!Z§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.mLevelMain.particles.§4!2§(§3!f§.§>v§,§,!j§.§++§,§3!f§.§"!&§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §5!0§(param1:§7!B§) : void
      {
         this.§>!A§(this.§!!e§.indexOf(param1));
      }
      
      public function §9!@§() : void
      {
         var _loc2_:§7!B§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§7!B§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§!!e§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§=!=§ - this.§!!e§[_loc1_].x) * (this.§=!=§ - this.§!!e§[_loc1_].x) + (this.§[!;§ - this.§!!e§[_loc1_].y) * (this.§[!;§ - this.§!!e§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§=!=§ - this.§!!e§[_loc1_ + 1].x) * (this.§=!=§ - this.§!!e§[_loc1_ + 1].x) + (this.§[!;§ - this.§!!e§[_loc1_ + 1].y) * (this.§[!;§ - this.§!!e§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§!!e§[_loc1_];
               this.§!!e§.splice(_loc1_,1);
               this.§!!e§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§>t§.numChildren > 0)
         {
            this.§>t§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§!!e§.length)
         {
            _loc2_ = this.§!!e§[_loc1_];
            this.§>t§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §2R§(param1:Number, param2:Number) : §7!B§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§!!e§.length)
         {
            if(this.§!!e§[_loc3_])
            {
               if(this.§!!e§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§!!e§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §-!J§(param1:Number, param2:Number) : §"!P§
      {
         if(param1 >= this.§=!=§ - this.§=m§ / 4 && param1 <= this.§=!=§ + this.§=m§ / 4 && param2 >= this.§[!;§ - this.§=m§ / 4 && this.§[!;§ <= this.§6!p§)
         {
            return this;
         }
         return null;
      }
      
      public function §!!`§(param1:§`+§) : void
      {
         var _loc3_:§7!B§ = null;
         var _loc4_:§0u§ = null;
         param1.§&l§ = this.§=!=§;
         param1.§60§ = this.§[!;§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§!!e§.length)
         {
            _loc3_ = this.§!!e§[_loc2_];
            (_loc4_ = new §0u§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§3[§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §@!K§() : void
      {
         while(this.§!!e§.length > 0)
         {
            this.§5!0§(this.§!!e§[0]);
         }
      }
      
      public function §6P§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§!!e§.length)
         {
            if(this.§!!e§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§!!e§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§=!=§ > param1.x && this.§=!=§ < param2.x && this.§[!;§ > param1.y && this.§[!;§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §9F§() : Array
      {
         return [this.§!!f§,this.§'n§];
      }
      
      public function §`!5§(param1:String, param2:Number, param3:Number) : §7!B§
      {
         var _loc4_:§7!B§ = this.§%q§(param1,param2,param3);
         this.§9!@§();
         return _loc4_;
      }
      
      public function § a§() : Number
      {
         return this.§!!e§.length;
      }
   }
}
