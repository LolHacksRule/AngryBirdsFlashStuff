package §3"#§
{
   import §&!]§.§#[§;
   import §&!]§.§7!J§;
   import §&!]§.DisplayObject;
   import §&!]§.Sprite;
   import §1"?§.§4R§;
   import §1"?§.§switch§;
   import §1z§.§2#§;
   import §3!S§.§<5§;
   import §3>§.§-"8§;
   import §3>§.§=!Z§;
   import §9!v§.§1!_§;
   import §9"@§.Texture;
   import §="+§.§]"-§;
   import §`!w§.§^!$§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §0k§ extends EventDispatcher
   {
      
      public static const §9"%§:String = "slingshot_shot_bird";
      
      public static const §;"F§:Number = 0.4;
      
      public static const §0" §:int = 0;
      
      public static const §`";§:int = 1;
      
      public static const §^!>§:int = 2;
      
      public static const §2+§:int = 3;
      
      public static const §3!y§:int = 5;
      
      public static const §&§:int = 6;
      
      public static const §#d§:int = 3151368;
      
      protected static var §6"F§:Texture;
       
      
      protected var §8!=§:§1!_§;
      
      protected var §'"9§:§`"8§;
      
      protected var §''§:Number;
      
      protected var §3"<§:Number;
      
      protected var §#!$§:Number;
      
      protected var §-2§:Number = 8.5;
      
      protected var §]O§:Number;
      
      protected var §5!M§:Number;
      
      protected var §0!M§:Number;
      
      protected var §@`§:Number;
      
      protected var §<!9§:Number;
      
      protected var §5<§:Number;
      
      protected var §4#§:Number = 1.0;
      
      protected var §9!a§:Boolean;
      
      protected var §06§:Boolean;
      
      protected var §7y§:Boolean = false;
      
      public var mBirds:Vector.<§'"&§>;
      
      public var mNextBirdIndex:int;
      
      protected var §>"#§:int;
      
      protected var §;!2§:Number;
      
      public var §1I§:Sprite;
      
      protected var §2]§:Sprite;
      
      public var §`G§:int = 0;
      
      protected var §5!b§:Number = 0;
      
      public var mSlingShotState:int;
      
      public var §;!K§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var § !2§:Boolean = false;
      
      public var §1!=§:Number;
      
      protected var §5"'§:Sprite;
      
      protected var §<b§:Sprite;
      
      protected var §@"?§:Sprite;
      
      protected var §#!%§:DisplayObject;
      
      protected var §<'§:Sprite;
      
      protected var § ;§:DisplayObject;
      
      protected var §>4§:Sprite;
      
      protected var §6">§:DisplayObject;
      
      protected var §8!p§:Sprite;
      
      protected var §[?§:Sprite;
      
      protected var §#B§:DisplayObject;
      
      private var §6Q§:Number = 0;
      
      private var §3"G§:int = 0;
      
      public function §0k§(param1:§`"8§, param2:§2#§, param3:Sprite, param4:Number = 1.0, param5:Boolean = true, param6:Boolean = true)
      {
         var _loc7_:int = 0;
         var _loc8_:§]"-§ = null;
         this.mBirds = new Vector.<§'"&§>();
         super();
         this.§'"9§ = param1;
         this.§5"'§ = param3;
         this.§4#§ = param4;
         this.§9!a§ = param5;
         this.§06§ = param6;
         if(param2)
         {
            this.setPosition(param2.slingshotX,param2.slingshotY,param2.§+-§);
            this.§?!N§();
            _loc7_ = 0;
            while(_loc7_ < param2.§7h§)
            {
               _loc8_ = param2.§<"+§(_loc7_);
               this.§7!W§(_loc8_.type,_loc8_.x,_loc8_.y,_loc8_.angle);
               _loc7_++;
            }
            this.§3"G§ = this.§8e§();
            this.mNextBirdIndex = 0;
            if(this.mBirds.length <= 0)
            {
               §^!$§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§''§ + " " + this.§3"<§);
               this.§?d§(§2+§);
            }
            else
            {
               this.§?d§(§0" §);
            }
         }
         else
         {
            §^!$§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§?d§(§2+§);
         }
         this.§1!=§ = 0;
         this.§2!f§();
         this.update(0,true);
         this.§@"E§();
         this.§<1§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§5"'§;
      }
      
      public function get aimingLineSprite() : Sprite
      {
         return this.§2]§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§6Q§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.mNextBirdIndex < this.mBirds.length;
      }
      
      public function get shootingAngle() : Number
      {
         return this.§5!b§;
      }
      
      public function get x() : Number
      {
         return this.§''§;
      }
      
      public function get y() : Number
      {
         return this.§3"<§;
      }
      
      public function get angle() : Number
      {
         return this.§#!$§;
      }
      
      public function get §"3§() : Boolean
      {
         return this.§06§;
      }
      
      public function dispose() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§6!V§(0);
         }
         this.mBirds = null;
         if(this.§5"'§)
         {
            this.§5"'§.dispose();
            this.§5"'§ = null;
         }
         this.§1I§ = null;
      }
      
      public function §-+§(param1:String, param2:Number, param3:Number, param4:int = -1) : §'"&§
      {
         var _loc6_:§'"&§ = null;
         if(this.mBirds.length > 0)
         {
            (_loc6_ = this.mBirds[0]).§%R§(false);
            _loc6_.§`j§ = false;
         }
         var _loc5_:§'"&§;
         (_loc5_ = this.§7!W§(param1,param2,param3,0,param4)).§%R§(true);
         return _loc5_;
      }
      
      protected function §7!W§(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §'"&§
      {
         var _loc6_:§-"8§ = this.§'"9§.levelItemManager.getItem(param1);
         var _loc7_:Sprite;
         (_loc7_ = new Sprite()).scaleX = _loc6_.scale;
         _loc7_.scaleY = _loc6_.scale;
         var _loc8_:§'"&§ = this.initializeSlingshotObject(_loc6_,param2,param3,param4,_loc7_);
         if(param5 < 0)
         {
            this.mBirds.push(_loc8_);
         }
         else
         {
            this.mBirds.splice(param5,0,_loc8_);
         }
         this.§1I§.addChild(_loc8_.sprite);
         return _loc8_;
      }
      
      protected function initializeSlingshotObject(param1:§-"8§, param2:Number, param3:Number, param4:Number, param5:Sprite) : §'"&§
      {
         return new §'"&§(this,param5,param1.itemName,param1,param2,param3,param4);
      }
      
      public function §?d§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §0" §)
         {
            this.§69§();
            this.§;!2§ = 1000;
         }
         else if(this.mSlingShotState == §`";§)
         {
            this.§69§();
            this.§;!2§ = 0;
         }
         else if(this.mSlingShotState == §^!>§)
         {
            this.§;!2§ = 10000;
            this.§ !2§ = false;
            this.§69§();
         }
         else if(this.mSlingShotState == §2+§)
         {
            this.§69§();
            this.§;!2§ = 2000;
         }
         else if(this.mSlingShotState == §3!y§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§ !2§ = false;
               this.§69§();
               this.mBirds[this.mNextBirdIndex].setPosition(this.§&! § - this.mBirds[this.mNextBirdIndex].radius * Math.cos(this.§5!b§ / (180 / Math.PI)),this.§"!Z§ + this.mBirds[this.mNextBirdIndex].radius * Math.sin(this.§5!b§ / (180 / Math.PI)),180 - this.§5!b§);
            }
            else
            {
               this.§69§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §#@§() : §`"8§
      {
         return this.§'"9§;
      }
      
      public function §%!v§() : Boolean
      {
         return this.mSlingShotState == §2+§ && this.§;!2§ <= 0;
      }
      
      private function §?!N§() : void
      {
         this.§8!=§ = this.§'"9§.animationManager.getAnimation("SLINGSHOT");
         this.§#!%§ = this.§8!=§.getFrame(0);
         this.§#!%§.pivotX = -3;
         this.§#!%§.pivotY = -24;
         this.§#B§ = this.§8!=§.getFrame(1);
         this.§#B§.pivotX = -30;
         this.§#B§.pivotY = -30;
         this.§["0§();
         this.§-!f§();
         this.§<b§ = new Sprite();
         this.§<b§.addChild(this.§#!%§);
         this.§<b§.addChild(this.§<'§);
         this.§2]§ = new Sprite();
         this.§1I§ = new Sprite();
         this.§@"?§ = new Sprite();
         this.§@"?§.addChild(this.§8!p§);
         this.§@"?§.addChild(this.§>4§);
         this.§@"?§.addChild(this.§#B§);
         this.§7o§();
      }
      
      protected function §7o§() : void
      {
         this.§5"'§.addChild(this.§<b§);
         this.§5"'§.addChild(this.§2]§);
         this.§5"'§.addChild(this.§1I§);
         this.§5"'§.addChild(this.§@"?§);
      }
      
      public function §["0§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§]O§ = this.§''§;
         this.§5!M§ = this.§3"<§;
         this.§5<§ = §#2§.§7!b§;
         _loc1_ = null;
      }
      
      protected function §5Z§(param1:uint) : DisplayObject
      {
         return new §7!J§(2,2,param1);
      }
      
      protected function §!"+§(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc3_:BitmapData = null;
         if(!§6"F§ || param2)
         {
            _loc3_ = new BitmapData(18,26,true,4278190080 | param1);
            if(§6"F§)
            {
               this.§'"9§.textureManager.unregisterBitmapDataTexture(§6"F§);
            }
            §6"F§ = this.§'"9§.textureManager.getTextureFromBitmapData(_loc3_);
         }
         return new §#[§(§6"F§);
      }
      
      protected function §-!f§(param1:uint = 3151368, param2:uint = 3151368, param3:Boolean = false) : void
      {
         this.§8!p§ = new Sprite();
         this.§[?§ = new Sprite();
         var _loc4_:DisplayObject;
         (_loc4_ = this.§!"+§(param2,param3)).rotation = Math.PI;
         _loc4_.x = _loc4_.width / 2;
         _loc4_.y = _loc4_.height / 2;
         this.§[?§.addChild(_loc4_);
         this.§8!p§.addChild(this.§[?§);
         this.§<'§ = new Sprite();
         this.§<'§.x = 22;
         this.§<'§.y = 0;
         this.§ ;§ = this.§5Z§(param1);
         this.§<'§.addChild(this.§ ;§);
         this.§>4§ = new Sprite();
         this.§>4§.x = -17;
         this.§>4§.y = 5;
         this.§6">§ = this.§5Z§(param1);
         this.§>4§.addChild(this.§6">§);
      }
      
      public function §<1§(param1:Number) : void
      {
         var _loc2_:Number = (this.§"!Z§ - this.§3"<§) / §`"8§.§3!=§;
         var _loc3_:Number = (this.§&! § - this.§''§) / §`"8§.§3!=§;
         var _loc4_:Number = Math.cos(this.§#!$§);
         var _loc5_:Number = Math.sin(this.§#!$§);
         var _loc6_:Number = -Math.sin(this.§#!$§);
         var _loc7_:Number = Math.cos(this.§#!$§);
         var _loc8_:Number = _loc3_;
         var _loc9_:Number = _loc2_;
         _loc3_ = _loc8_ * _loc4_ + _loc9_ * _loc5_;
         _loc2_ = _loc8_ * _loc6_ + _loc9_ * _loc7_;
         var _loc10_:Number = 3.5 + 8 * ((this.§5<§ - this.§3!"§) / this.§5<§);
         this.§8!p§.x = _loc3_;
         this.§8!p§.y = _loc2_;
         this.§8!p§.rotation = -this.§#!$§ - this.§5!b§ / (180 / Math.PI);
         this.§<b§.x = this.§''§ / §`"8§.§3!=§;
         this.§<b§.y = this.§3"<§ / §`"8§.§3!=§;
         this.§<b§.rotation = this.§#!$§;
         this.§@"?§.x = this.§''§ / §`"8§.§3!=§;
         this.§@"?§.y = this.§3"<§ / §`"8§.§3!=§;
         this.§@"?§.rotation = this.§#!$§;
         this.§>4§.rotation = Math.atan2(_loc2_ - this.§>4§.y,_loc3_ - this.§>4§.x);
         this.§6">§.width = Math.sqrt(Math.pow(_loc3_ - this.§>4§.x,2) + Math.pow(_loc2_ - this.§>4§.y,2));
         this.§6">§.height = _loc10_ * 2;
         this.§6">§.y = -this.§6">§.height / 2;
         this.§<'§.rotation = Math.atan2(_loc2_ - this.§<'§.y,_loc3_ - this.§<'§.x);
         this.§ ;§.width = Math.sqrt(Math.pow(_loc3_ - this.§<'§.x,2) + Math.pow(_loc2_ - this.§<'§.y,2));
         this.§ ;§.height = _loc10_ * 2;
         this.§ ;§.y = -this.§ ;§.height / 2;
         this.§;!K§ = false;
      }
      
      public function §2!c§() : void
      {
         var _loc2_:§'"&§ = null;
         while(this.mBirds.length > 0)
         {
            this.§6!V§(0,true);
         }
         this.§>!6§();
         if(this.mBirds.length > 0)
         {
            _loc2_ = this.mBirds[0];
            _loc2_.§%R§(false);
         }
         var _loc1_:§'"&§ = this.§7!W§("BIRD_SARDINE",this.§''§,this.§3"<§,0);
         _loc1_.§%R§(true);
         _loc1_.§`j§ = false;
         this.§?d§(§^!>§);
      }
      
      protected function §>!6§() : void
      {
         §<5§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§?d§(§3!y§);
      }
      
      public function §69§() : void
      {
         this.setNewCoordinatesForRubber(this.§]O§,this.§5!M§ + this.§5<§ / 8);
      }
      
      protected function get §>"!§() : Number
      {
         return this.§<!9§ * this.§4#§;
      }
      
      protected function get §3!"§() : Number
      {
         return Math.min(this.§<!9§,this.§5<§);
      }
      
      protected function get §&! §() : Number
      {
         if(this.§<!9§ >= this.§5<§)
         {
            return this.§]O§ + this.§5<§ * Math.cos(this.§5!b§ / 180 * Math.PI);
         }
         return this.§0!M§;
      }
      
      protected function get §"!Z§() : Number
      {
         if(this.§<!9§ >= this.§5<§)
         {
            return this.§5!M§ - this.§5<§ * Math.sin(this.§5!b§ / 180 * Math.PI);
         }
         return this.§@`§;
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         if(this.§0!M§ == param1 && this.§@`§ == param2)
         {
            return true;
         }
         this.§<!9§ = Math.sqrt((param2 - this.§5!M§) * (param2 - this.§5!M§) + (param1 - this.§]O§) * (param1 - this.§]O§));
         var _loc4_:Number = this.§<!9§;
         if(this.§>"!§ > this.§5<§)
         {
            if(param3)
            {
               _loc5_ = this.§0!M§ - this.§]O§;
               _loc6_ = this.§@`§ - this.§5!M§;
               this.§<!9§ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
               return false;
            }
            this.§<!9§ = this.§5<§ / this.§4#§;
         }
         this.§0!M§ = param1;
         this.§@`§ = param2;
         this.§5!b§ = Math.atan2(-(this.§@`§ - this.§5!M§),this.§0!M§ - this.§]O§);
         this.§5!b§ *= 180 / Math.PI;
         if(!this.mDragging)
         {
            this.§0!M§ = param1 - 0.7;
            this.§@`§ = param2;
            this.§5!b§ = -160;
         }
         if(this.§9!a§)
         {
            _loc7_ = 12;
            _loc8_ = 5;
            _loc9_ = 4;
            _loc10_ = this.§5<§ / 2;
            if(this.§<!9§ > _loc10_ && this.§5!b§ > -90 - _loc7_ + _loc8_ && this.§5!b§ < -90 + _loc7_ + _loc8_)
            {
               param1 = this.§]O§ + _loc10_ * (param1 - this.§]O§) / _loc4_;
               param2 = this.§5!M§ + _loc10_ * (param2 - this.§5!M§) / _loc4_;
               this.§<!9§ = _loc10_;
               this.§0!M§ = param1;
               this.§@`§ = param2;
            }
            else if(this.§<!9§ > _loc10_ && this.§5!b§ > -90 - _loc7_ - _loc9_ + _loc8_ && this.§5!b§ < -90 + _loc7_ + _loc9_ + _loc8_)
            {
               _loc11_ = _loc10_ + (this.§5<§ - _loc10_) * (Math.abs(this.§5!b§ - -90 - _loc8_) - _loc7_) / _loc9_;
               param1 = this.§]O§ + _loc11_ * (param1 - this.§]O§) / _loc4_;
               param2 = this.§5!M§ + _loc11_ * (param2 - this.§5!M§) / _loc4_;
               this.§<!9§ = _loc11_;
               this.§0!M§ = param1;
               this.§@`§ = param2;
            }
         }
         if(this.§<!9§ <= this.§5<§ * 0.45)
         {
            this.§7y§ = true;
         }
         else if(this.§7y§ && this.§<!9§ >= this.§5<§ * 0.8)
         {
            this.playStretchSound();
            this.§7y§ = false;
         }
         this.§;!K§ = true;
         return true;
      }
      
      protected function playStretchSound() : void
      {
         §<5§.playSound("SlingshotStreched");
      }
      
      protected function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§''§ + param1 * Math.cos(this.§#!$§ + Math.PI / 2),this.§3"<§ + param1 * Math.sin(this.§#!$§ + Math.PI / 2),this.§#!$§);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc5_:Number = param1 - this.§''§;
         this.§''§ = param1;
         var _loc6_:Number = param2 - this.§3"<§;
         this.§3"<§ = param2;
         this.§#!$§ = param3;
         this.§5!M§ += _loc6_;
         this.§@`§ += _loc6_;
         this.§]O§ += _loc5_;
         this.§0!M§ += _loc5_;
         if(param4)
         {
            this.§<1§(0);
         }
         this.§;!K§ = true;
      }
      
      protected function §6j§() : Number
      {
         return this.§>"!§ / this.§5<§;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§'"&§ = this.mBirds[this.mNextBirdIndex];
         var _loc3_:Number = this.§6j§();
         if(_loc2_)
         {
            _loc1_ = _loc2_.§9-§;
         }
         return _loc1_ * _loc3_;
      }
      
      public function getPosition() : Point
      {
         var _loc1_:§'"&§ = null;
         if(this.mBirds.length > this.mNextBirdIndex)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §"4§() : Point
      {
         return new Point(this.§]O§,this.§5!M§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§'"&§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§;!K§)
         {
            this.§<1§(param1);
         }
         this.§;!2§ -= param1;
         if(this.§;!2§ < 0)
         {
            this.§;!2§ = 0;
         }
         if(this.mSlingShotState != §2+§)
         {
            this.§+!D§(param1,param2);
            _loc3_ = null;
            if(this.mBirds.length > 0)
            {
               _loc3_ = this.mBirds[this.mNextBirdIndex];
            }
            if(_loc3_)
            {
               _loc3_.§8!g§(param1);
            }
            if(!_loc3_)
            {
               this.§?d§(§2+§);
            }
            else if(this.mSlingShotState == §0" §)
            {
               if(this.§;!2§ <= 0)
               {
                  this.§?d§(§`";§);
                  _loc3_.§]!k§();
               }
            }
            else if(this.mSlingShotState == §`";§)
            {
               if(_loc3_.§]!?§)
               {
                  this.§?d§(§^!>§);
               }
            }
            else if(this.mSlingShotState == §^!>§)
            {
               _loc4_ = this.§&! § - _loc3_.radius * Math.cos(this.§5!b§ / (180 / Math.PI));
               _loc5_ = this.§"!Z§ + _loc3_.radius * Math.sin(this.§5!b§ / (180 / Math.PI));
               if(this.mDragging)
               {
                  _loc3_.setPosition(_loc4_,_loc5_,180 - this.§5!b§);
               }
               else
               {
                  _loc3_.setPosition(_loc4_,_loc5_,this.angle);
               }
               if(this.§ !2§)
               {
                  this.shootCurrentBird(this.§6j§(),this.§5!b§);
               }
            }
         }
      }
      
      public function §#!Z§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§'"&§ = null;
         if(this.mBirds.length > 0)
         {
            _loc5_ = this.mBirds[this.mNextBirdIndex];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2,180 - this.§5!b§);
         this.shootCurrentBird(param3,param4);
      }
      
      public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         var _loc3_:§'"&§ = null;
         if(this.mBirds.length > this.mNextBirdIndex)
         {
            _loc3_ = this.mBirds[this.mNextBirdIndex];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§ !2§ = false;
         this.§6Q§ = new Date().time;
         this.§'"9§.§3!V§(_loc3_,param1,param2);
         this.§6!V§(this.mNextBirdIndex,_loc3_.§3!+§ > 0);
         this.playBirdShotSound();
         if(this.mNextBirdIndex >= this.mBirds.length)
         {
            this.§?d§(§2+§);
         }
         else
         {
            this.§?d§(§0" §);
         }
         dispatchEvent(new Event(§9"%§));
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §<5§.playSound("BirdShot" + _loc1_);
      }
      
      public function §+!D§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.mNextBirdIndex;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.mBirds.length)
         {
            this.mBirds[_loc4_].update(param1,this.mSlingShotState == §3!y§,param2);
            _loc4_++;
         }
      }
      
      public function getCurrentBirdType() : String
      {
         var _loc1_:§'"&§ = null;
         if(this.mNextBirdIndex < this.mBirds.length)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
            return _loc1_.name;
         }
         return null;
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§'"&§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§69§();
         if(this.§>"#§ >= this.mBirds.length)
         {
            return false;
         }
         _loc1_ = this.mBirds[this.§>"#§];
         _loc1_.§'!g§(-1,true);
         _loc2_ = this.§'"9§.levelItemManager.getItem(_loc1_.name).score;
         this.showScoreForRemainingBird(_loc1_,_loc2_);
         ++this.§>"#§;
         return true;
      }
      
      protected function showScoreForRemainingBird(param1:§'"&§, param2:int) : void
      {
         this.§'"9§.addScore(param2,§ 7§.§>"G§,true,param1.x,param1.y - 3,§4R§.§;'§(param1.name));
      }
      
      public function §8e§() : int
      {
         var _loc2_:§'"&§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mBirds)
         {
            _loc1_ += this.§'"9§.levelItemManager.getItem(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §3u§() : int
      {
         return this.§3"G§;
      }
      
      protected function §@"E§() : void
      {
         var _loc4_:int = 0;
         var _loc1_:int = 1000;
         var _loc2_:Number = Math.cos(this.§#!$§ + Math.PI / 2) * this.§-2§;
         var _loc3_:Number = Math.sin(this.§#!$§ + Math.PI / 2) * this.§-2§;
         while((_loc4_ = this.§'"9§.objects.§^!g§(this.§]O§ + _loc2_,this.§5!M§ + _loc3_)) == -1)
         {
            this.applyGravity(0.1);
            if(_loc1_-- <= 0)
            {
               break;
            }
         }
         this.§1!=§ = -1;
      }
      
      public function §5x§(param1:Number, param2:Number) : void
      {
         this.§5"'§.x = -param1;
         this.§5"'§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §^!>§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function get canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §^!>§ && this.§6j§() >= §;"F§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§?d§(§^!>§);
         var _loc1_:§'"&§ = this.mBirds[this.mNextBirdIndex];
         _loc1_.§'!g§(§=!Z§.§7f§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§'"&§ = this.mBirds[this.mNextBirdIndex];
         _loc1_.§'!g§(§=!Z§.§-!9§);
      }
      
      public function shoot() : void
      {
         this.§ !2§ = true;
      }
      
      protected function §6!V§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§'"&§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.mBirds[param1])
         {
            _loc3_ = this.mBirds[param1];
            this.§1I§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.showDestructionParticles(this.mBirds[param1]);
            }
            _loc3_.dispose();
            this.mBirds[param1] = null;
         }
         this.mBirds.splice(param1,1);
      }
      
      protected function showDestructionParticles(param1:§'"&§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §`"8§.§3!=§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §`"8§.§3!=§) + Math.random() * -_loc8_ * 2;
            this.§'"9§.particles.§'"-§(§4R§.§6"!§,§switch§.§%!y§,§4R§.§!o§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§4R§.§#!y§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§'"9§.particles.§'"-§(§4R§.§0!C§,§switch§.§%!y§,§4R§.§!o§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:§'"&§) : void
      {
         this.§6!V§(this.mBirds.indexOf(param1));
      }
      
      public function §2!f§() : void
      {
         var _loc2_:§'"&§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§'"&§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.mBirds.length - 1)
         {
            _loc3_ = Math.sqrt((this.§''§ - this.mBirds[_loc1_].x) * (this.§''§ - this.mBirds[_loc1_].x) + (this.§3"<§ - this.mBirds[_loc1_].y) * (this.§3"<§ - this.mBirds[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§''§ - this.mBirds[_loc1_ + 1].x) * (this.§''§ - this.mBirds[_loc1_ + 1].x) + (this.§3"<§ - this.mBirds[_loc1_ + 1].y) * (this.§3"<§ - this.mBirds[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.mBirds[_loc1_];
               this.mBirds.splice(_loc1_,1);
               this.mBirds.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§1I§.numChildren > 0)
         {
            this.§1I§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.mBirds.length)
         {
            _loc2_ = this.mBirds[_loc1_];
            this.§1I§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §'"&§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.mBirds.length)
         {
            if(this.mBirds[_loc3_])
            {
               if(this.mBirds[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.mBirds[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §"!z§(param1:Number, param2:Number) : §0k§
      {
         if(param1 >= this.§''§ - this.§5<§ / 4 && param1 <= this.§''§ + this.§5<§ / 4 && param2 >= this.§3"<§ - this.§5<§ / 4 && this.§3"<§ <= this.§3"<§ + this.§-2§)
         {
            return this;
         }
         return null;
      }
      
      public function writeSlingshotInformation(param1:§2#§) : void
      {
         var _loc3_:§'"&§ = null;
         var _loc4_:§]"-§ = null;
         param1.slingshotX = this.§''§;
         param1.slingshotY = this.§3"<§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc3_ = this.mBirds[_loc2_];
            (_loc4_ = new §]"-§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.type = _loc3_.name;
            param1.§="&§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §!!v§() : void
      {
         while(this.mBirds.length > 0)
         {
            this.removeObject(this.mBirds[0]);
         }
      }
      
      public function §#",§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.mBirds.length)
         {
            if(this.mBirds[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.mBirds[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§''§ > param1.x && this.§''§ < param2.x && this.§3"<§ > param1.y && this.§3"<§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §^!B§(param1:String, param2:Number, param3:Number, param4:Number) : §'"&§
      {
         var _loc5_:§'"&§ = this.§7!W§(param1,param2,param3,param4);
         this.§2!f§();
         return _loc5_;
      }
      
      public function §4!`§() : Number
      {
         return this.mBirds.length;
      }
   }
}
