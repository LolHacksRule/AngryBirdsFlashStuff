package §?!<§
{
   import §""<§.§#N§;
   import §'!&§.§ "E§;
   import §'!&§.§9!c§;
   import §'!&§.DisplayObject;
   import §'!&§.Sprite;
   import §,7§.§9!v§;
   import §,7§.§?L§;
   import §3"$§.Texture;
   import §8o§.§]!U§;
   import §9!G§.§"!S§;
   import §;!0§.§!!X§;
   import §;"=§.§"!Y§;
   import §;"=§.§]"<§;
   import §[!v§.§9c§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §&V§ extends EventDispatcher
   {
      
      public static const §<"A§:String = "slingshot_shot_bird";
      
      public static const §%F§:Number = 0.4;
      
      public static const §>x§:int = 0;
      
      public static const §0!4§:int = 1;
      
      public static const §?K§:int = 2;
      
      public static const §'!0§:int = 3;
      
      public static const §+!7§:int = 5;
      
      public static const §+!=§:int = 6;
      
      public static const §3Y§:int = 3151368;
      
      protected static var §0"B§:Texture;
       
      
      protected var §#1§:§]!U§;
      
      protected var §1!3§:§'!1§;
      
      protected var §>!J§:Number;
      
      protected var §;`§:Number;
      
      protected var §%!^§:Number;
      
      protected var § D§:Number = 8.5;
      
      protected var §,";§:Number;
      
      protected var §2;§:Number;
      
      protected var §<"3§:Number;
      
      protected var §^"G§:Number;
      
      protected var §1"5§:Number;
      
      protected var §1!?§:Number;
      
      protected var §2!k§:Number = 1.0;
      
      protected var §,&§:Boolean;
      
      protected var §"o§:Boolean;
      
      protected var §%!A§:Boolean = false;
      
      public var mBirds:Vector.<§6"3§>;
      
      public var mNextBirdIndex:int;
      
      protected var §4]§:int;
      
      protected var §^"F§:Number;
      
      public var §do §:Sprite;
      
      protected var §]!]§:Sprite;
      
      public var §!!A§:int = 0;
      
      protected var §7!W§:Number = 0;
      
      public var mSlingShotState:int;
      
      public var §&^§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §[!%§:Boolean = false;
      
      public var §6p§:Number;
      
      protected var §>#§:Sprite;
      
      protected var §%N§:Sprite;
      
      protected var §4"H§:Sprite;
      
      protected var §&3§:DisplayObject;
      
      protected var §<!g§:Sprite;
      
      protected var §;>§:DisplayObject;
      
      protected var §!!l§:Sprite;
      
      protected var §;i§:DisplayObject;
      
      protected var §59§:Sprite;
      
      protected var §&""§:Sprite;
      
      protected var §<!<§:DisplayObject;
      
      private var §8!b§:Number = 0;
      
      private var §[5§:int = 0;
      
      public function §&V§(param1:§'!1§, param2:§!!X§, param3:Sprite, param4:Number = 1.0, param5:Boolean = true, param6:Boolean = true)
      {
         var _loc7_:int = 0;
         var _loc8_:§9c§ = null;
         this.mBirds = new Vector.<§6"3§>();
         super();
         this.§1!3§ = param1;
         this.§>#§ = param3;
         this.§2!k§ = param4;
         this.§,&§ = param5;
         this.§"o§ = param6;
         if(param2)
         {
            this.setPosition(param2.slingshotX,param2.slingshotY,param2.§[<§);
            this.§6z§();
            _loc7_ = 0;
            while(_loc7_ < param2.§`C§)
            {
               _loc8_ = param2.§3u§(_loc7_);
               this.§6!N§(_loc8_.type,_loc8_.x,_loc8_.y,_loc8_.angle);
               _loc7_++;
            }
            this.§[5§ = this.§3!?§();
            this.mNextBirdIndex = 0;
            if(this.mBirds.length <= 0)
            {
               §#N§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§>!J§ + " " + this.§;`§);
               this.§[![§(§'!0§);
            }
            else
            {
               this.§[![§(§>x§);
            }
         }
         else
         {
            §#N§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§[![§(§'!0§);
         }
         this.§6p§ = 0;
         this.§6!,§();
         this.update(0,true);
         this.§'!@§();
         this.§>"C§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§>#§;
      }
      
      public function get aimingLineSprite() : Sprite
      {
         return this.§]!]§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§8!b§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.mNextBirdIndex < this.mBirds.length;
      }
      
      public function get shootingAngle() : Number
      {
         return this.§7!W§;
      }
      
      public function get x() : Number
      {
         return this.§>!J§;
      }
      
      public function get y() : Number
      {
         return this.§;`§;
      }
      
      public function get angle() : Number
      {
         return this.§%!^§;
      }
      
      public function get §57§() : Boolean
      {
         return this.§"o§;
      }
      
      public function dispose() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§6!C§(0);
         }
         this.mBirds = null;
         if(this.§>#§)
         {
            this.§>#§.dispose();
            this.§>#§ = null;
         }
         this.§do § = null;
      }
      
      public function §]t§(param1:String, param2:Number, param3:Number, param4:int = -1) : §6"3§
      {
         var _loc6_:§6"3§ = null;
         if(this.mBirds.length > 0)
         {
            (_loc6_ = this.mBirds[0]).§!!H§(false);
            _loc6_.§"=§ = false;
         }
         var _loc5_:§6"3§;
         (_loc5_ = this.§6!N§(param1,param2,param3,0,param4)).§!!H§(true);
         return _loc5_;
      }
      
      protected function §6!N§(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §6"3§
      {
         var _loc6_:§]"<§ = this.§1!3§.levelItemManager.getItem(param1);
         var _loc7_:Sprite;
         (_loc7_ = new Sprite()).scaleX = _loc6_.scale;
         _loc7_.scaleY = _loc6_.scale;
         var _loc8_:§6"3§ = this.initializeSlingshotObject(_loc6_,param2,param3,param4,_loc7_);
         if(param5 < 0)
         {
            this.mBirds.push(_loc8_);
         }
         else
         {
            this.mBirds.splice(param5,0,_loc8_);
         }
         this.§do §.addChild(_loc8_.sprite);
         return _loc8_;
      }
      
      protected function initializeSlingshotObject(param1:§]"<§, param2:Number, param3:Number, param4:Number, param5:Sprite) : §6"3§
      {
         return new §6"3§(this,param5,param1.itemName,param1,param2,param3,param4);
      }
      
      public function §[![§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §>x§)
         {
            this.§^`§();
            this.§^"F§ = 1000;
         }
         else if(this.mSlingShotState == §0!4§)
         {
            this.§^`§();
            this.§^"F§ = 0;
         }
         else if(this.mSlingShotState == §?K§)
         {
            this.§^"F§ = 10000;
            this.§[!%§ = false;
            this.§^`§();
         }
         else if(this.mSlingShotState == §'!0§)
         {
            this.§^`§();
            this.§^"F§ = 2000;
         }
         else if(this.mSlingShotState == §+!7§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§[!%§ = false;
               this.§^`§();
               this.mBirds[this.mNextBirdIndex].setPosition(this.§^!O§ - this.mBirds[this.mNextBirdIndex].radius * Math.cos(this.§7!W§ / (180 / Math.PI)),this.§'!s§ + this.mBirds[this.mNextBirdIndex].radius * Math.sin(this.§7!W§ / (180 / Math.PI)),180 - this.§7!W§);
            }
            else
            {
               this.§^`§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §#!@§() : §'!1§
      {
         return this.§1!3§;
      }
      
      public function §?!§() : Boolean
      {
         return this.mSlingShotState == §'!0§ && this.§^"F§ <= 0;
      }
      
      private function §6z§() : void
      {
         this.§#1§ = this.§1!3§.animationManager.getAnimation("SLINGSHOT");
         this.§&3§ = this.§#1§.getFrame(0);
         this.§&3§.pivotX = -3;
         this.§&3§.pivotY = -24;
         this.§<!<§ = this.§#1§.getFrame(1);
         this.§<!<§.pivotX = -30;
         this.§<!<§.pivotY = -30;
         this.§,"A§();
         this.§1!!§();
         this.§%N§ = new Sprite();
         this.§%N§.addChild(this.§&3§);
         this.§%N§.addChild(this.§<!g§);
         this.§]!]§ = new Sprite();
         this.§do § = new Sprite();
         this.§4"H§ = new Sprite();
         this.§4"H§.addChild(this.§59§);
         this.§4"H§.addChild(this.§!!l§);
         this.§4"H§.addChild(this.§<!<§);
         this.§[! §();
      }
      
      protected function §[! §() : void
      {
         this.§>#§.addChild(this.§%N§);
         this.§>#§.addChild(this.§]!]§);
         this.§>#§.addChild(this.§do §);
         this.§>#§.addChild(this.§4"H§);
      }
      
      public function §,"A§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§,";§ = this.§>!J§;
         this.§2;§ = this.§;`§;
         this.§1!?§ = §`!Y§.§&!K§;
         _loc1_ = null;
      }
      
      protected function §=!?§(param1:uint) : DisplayObject
      {
         return new § "E§(2,2,param1);
      }
      
      protected function §?B§(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc3_:BitmapData = null;
         if(!§0"B§ || param2)
         {
            _loc3_ = new BitmapData(18,26,true,4278190080 | param1);
            if(§0"B§)
            {
               this.§1!3§.textureManager.unregisterBitmapDataTexture(§0"B§);
            }
            §0"B§ = this.§1!3§.textureManager.getTextureFromBitmapData(_loc3_);
         }
         return new §9!c§(§0"B§);
      }
      
      protected function §1!!§(param1:uint = 3151368, param2:uint = 3151368, param3:Boolean = false) : void
      {
         this.§59§ = new Sprite();
         this.§&""§ = new Sprite();
         var _loc4_:DisplayObject;
         (_loc4_ = this.§?B§(param2,param3)).rotation = Math.PI;
         _loc4_.x = _loc4_.width / 2;
         _loc4_.y = _loc4_.height / 2;
         this.§&""§.addChild(_loc4_);
         this.§59§.addChild(this.§&""§);
         this.§<!g§ = new Sprite();
         this.§<!g§.x = 22;
         this.§<!g§.y = 0;
         this.§;>§ = this.§=!?§(param1);
         this.§<!g§.addChild(this.§;>§);
         this.§!!l§ = new Sprite();
         this.§!!l§.x = -17;
         this.§!!l§.y = 5;
         this.§;i§ = this.§=!?§(param1);
         this.§!!l§.addChild(this.§;i§);
      }
      
      public function §>"C§(param1:Number) : void
      {
         var _loc2_:Number = (this.§'!s§ - this.§;`§) / §'!1§.§<!@§;
         var _loc3_:Number = (this.§^!O§ - this.§>!J§) / §'!1§.§<!@§;
         var _loc4_:Number = Math.cos(this.§%!^§);
         var _loc5_:Number = Math.sin(this.§%!^§);
         var _loc6_:Number = -Math.sin(this.§%!^§);
         var _loc7_:Number = Math.cos(this.§%!^§);
         var _loc8_:Number = _loc3_;
         var _loc9_:Number = _loc2_;
         _loc3_ = _loc8_ * _loc4_ + _loc9_ * _loc5_;
         _loc2_ = _loc8_ * _loc6_ + _loc9_ * _loc7_;
         var _loc10_:Number = 3.5 + 8 * ((this.§1!?§ - this.§0g§) / this.§1!?§);
         this.§59§.x = _loc3_;
         this.§59§.y = _loc2_;
         this.§59§.rotation = -this.§%!^§ - this.§7!W§ / (180 / Math.PI);
         this.§%N§.x = this.§>!J§ / §'!1§.§<!@§;
         this.§%N§.y = this.§;`§ / §'!1§.§<!@§;
         this.§%N§.rotation = this.§%!^§;
         this.§4"H§.x = this.§>!J§ / §'!1§.§<!@§;
         this.§4"H§.y = this.§;`§ / §'!1§.§<!@§;
         this.§4"H§.rotation = this.§%!^§;
         this.§!!l§.rotation = Math.atan2(_loc2_ - this.§!!l§.y,_loc3_ - this.§!!l§.x);
         this.§;i§.width = Math.sqrt(Math.pow(_loc3_ - this.§!!l§.x,2) + Math.pow(_loc2_ - this.§!!l§.y,2));
         this.§;i§.height = _loc10_ * 2;
         this.§;i§.y = -this.§;i§.height / 2;
         this.§<!g§.rotation = Math.atan2(_loc2_ - this.§<!g§.y,_loc3_ - this.§<!g§.x);
         this.§;>§.width = Math.sqrt(Math.pow(_loc3_ - this.§<!g§.x,2) + Math.pow(_loc2_ - this.§<!g§.y,2));
         this.§;>§.height = _loc10_ * 2;
         this.§;>§.y = -this.§;>§.height / 2;
         this.§&^§ = false;
      }
      
      public function §[E§() : void
      {
         var _loc2_:§6"3§ = null;
         while(this.mBirds.length > 0)
         {
            this.§6!C§(0,true);
         }
         this.§3I§();
         if(this.mBirds.length > 0)
         {
            _loc2_ = this.mBirds[0];
            _loc2_.§!!H§(false);
         }
         var _loc1_:§6"3§ = this.§6!N§("BIRD_SARDINE",this.§>!J§,this.§;`§,0);
         _loc1_.§!!H§(true);
         _loc1_.§"=§ = false;
         this.§[![§(§?K§);
      }
      
      protected function §3I§() : void
      {
         §"!S§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§[![§(§+!7§);
      }
      
      public function §^`§() : void
      {
         this.setNewCoordinatesForRubber(this.§,";§,this.§2;§ + this.§1!?§ / 8);
      }
      
      protected function get §%-§() : Number
      {
         return this.§1"5§ * this.§2!k§;
      }
      
      protected function get §0g§() : Number
      {
         return Math.min(this.§1"5§,this.§1!?§);
      }
      
      protected function get §^!O§() : Number
      {
         if(this.§1"5§ >= this.§1!?§)
         {
            return this.§,";§ + this.§1!?§ * Math.cos(this.§7!W§ / 180 * Math.PI);
         }
         return this.§<"3§;
      }
      
      protected function get §'!s§() : Number
      {
         if(this.§1"5§ >= this.§1!?§)
         {
            return this.§2;§ - this.§1!?§ * Math.sin(this.§7!W§ / 180 * Math.PI);
         }
         return this.§^"G§;
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
         if(this.§<"3§ == param1 && this.§^"G§ == param2)
         {
            return true;
         }
         this.§1"5§ = Math.sqrt((param2 - this.§2;§) * (param2 - this.§2;§) + (param1 - this.§,";§) * (param1 - this.§,";§));
         var _loc4_:Number = this.§1"5§;
         if(this.§%-§ > this.§1!?§)
         {
            if(param3)
            {
               _loc5_ = this.§<"3§ - this.§,";§;
               _loc6_ = this.§^"G§ - this.§2;§;
               this.§1"5§ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
               return false;
            }
            this.§1"5§ = this.§1!?§ / this.§2!k§;
         }
         this.§<"3§ = param1;
         this.§^"G§ = param2;
         this.§7!W§ = Math.atan2(-(this.§^"G§ - this.§2;§),this.§<"3§ - this.§,";§);
         this.§7!W§ *= 180 / Math.PI;
         if(!this.mDragging)
         {
            this.§<"3§ = param1 - 0.7;
            this.§^"G§ = param2;
            this.§7!W§ = -160;
         }
         if(this.§,&§)
         {
            _loc7_ = 12;
            _loc8_ = 5;
            _loc9_ = 4;
            _loc10_ = this.§1!?§ / 2;
            if(this.§1"5§ > _loc10_ && this.§7!W§ > -90 - _loc7_ + _loc8_ && this.§7!W§ < -90 + _loc7_ + _loc8_)
            {
               param1 = this.§,";§ + _loc10_ * (param1 - this.§,";§) / _loc4_;
               param2 = this.§2;§ + _loc10_ * (param2 - this.§2;§) / _loc4_;
               this.§1"5§ = _loc10_;
               this.§<"3§ = param1;
               this.§^"G§ = param2;
            }
            else if(this.§1"5§ > _loc10_ && this.§7!W§ > -90 - _loc7_ - _loc9_ + _loc8_ && this.§7!W§ < -90 + _loc7_ + _loc9_ + _loc8_)
            {
               _loc11_ = _loc10_ + (this.§1!?§ - _loc10_) * (Math.abs(this.§7!W§ - -90 - _loc8_) - _loc7_) / _loc9_;
               param1 = this.§,";§ + _loc11_ * (param1 - this.§,";§) / _loc4_;
               param2 = this.§2;§ + _loc11_ * (param2 - this.§2;§) / _loc4_;
               this.§1"5§ = _loc11_;
               this.§<"3§ = param1;
               this.§^"G§ = param2;
            }
         }
         if(this.§1"5§ <= this.§1!?§ * 0.45)
         {
            this.§%!A§ = true;
         }
         else if(this.§%!A§ && this.§1"5§ >= this.§1!?§ * 0.8)
         {
            this.playStretchSound();
            this.§%!A§ = false;
         }
         this.§&^§ = true;
         return true;
      }
      
      protected function playStretchSound() : void
      {
         §"!S§.playSound("SlingshotStreched");
      }
      
      protected function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§>!J§ + param1 * Math.cos(this.§%!^§ + Math.PI / 2),this.§;`§ + param1 * Math.sin(this.§%!^§ + Math.PI / 2),this.§%!^§);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc5_:Number = param1 - this.§>!J§;
         this.§>!J§ = param1;
         var _loc6_:Number = param2 - this.§;`§;
         this.§;`§ = param2;
         this.§%!^§ = param3;
         this.§2;§ += _loc6_;
         this.§^"G§ += _loc6_;
         this.§,";§ += _loc5_;
         this.§<"3§ += _loc5_;
         if(param4)
         {
            this.§>"C§(0);
         }
         this.§&^§ = true;
      }
      
      protected function §>"8§() : Number
      {
         return this.§%-§ / this.§1!?§;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§6"3§ = this.mBirds[this.mNextBirdIndex];
         var _loc3_:Number = this.§>"8§();
         if(_loc2_)
         {
            _loc1_ = _loc2_.§`!9§;
         }
         return _loc1_ * _loc3_;
      }
      
      public function getPosition() : Point
      {
         var _loc1_:§6"3§ = null;
         if(this.mBirds.length > this.mNextBirdIndex)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §1#§() : Point
      {
         return new Point(this.§,";§,this.§2;§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§6"3§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§&^§)
         {
            this.§>"C§(param1);
         }
         this.§^"F§ -= param1;
         if(this.§^"F§ < 0)
         {
            this.§^"F§ = 0;
         }
         if(this.mSlingShotState != §'!0§)
         {
            this.§4!b§(param1,param2);
            _loc3_ = null;
            if(this.mBirds.length > 0)
            {
               _loc3_ = this.mBirds[this.mNextBirdIndex];
            }
            if(_loc3_)
            {
               _loc3_.§#!E§(param1);
            }
            if(!_loc3_)
            {
               this.§[![§(§'!0§);
            }
            else if(this.mSlingShotState == §>x§)
            {
               if(this.§^"F§ <= 0)
               {
                  this.§[![§(§0!4§);
                  _loc3_.§<!0§();
               }
            }
            else if(this.mSlingShotState == §0!4§)
            {
               if(_loc3_.§7;§)
               {
                  this.§[![§(§?K§);
               }
            }
            else if(this.mSlingShotState == §?K§)
            {
               _loc4_ = this.§^!O§ - _loc3_.radius * Math.cos(this.§7!W§ / (180 / Math.PI));
               _loc5_ = this.§'!s§ + _loc3_.radius * Math.sin(this.§7!W§ / (180 / Math.PI));
               if(this.mDragging)
               {
                  _loc3_.setPosition(_loc4_,_loc5_,180 - this.§7!W§);
               }
               else
               {
                  _loc3_.setPosition(_loc4_,_loc5_,this.angle);
               }
               if(this.§[!%§)
               {
                  this.shootCurrentBird(this.§>"8§(),this.§7!W§);
               }
            }
         }
      }
      
      public function §[!N§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§6"3§ = null;
         if(this.mBirds.length > 0)
         {
            _loc5_ = this.mBirds[this.mNextBirdIndex];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2,180 - this.§7!W§);
         this.shootCurrentBird(param3,param4);
      }
      
      public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         var _loc3_:§6"3§ = null;
         if(this.mBirds.length > this.mNextBirdIndex)
         {
            _loc3_ = this.mBirds[this.mNextBirdIndex];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§[!%§ = false;
         this.§8!b§ = new Date().time;
         this.§1!3§.§#n§(_loc3_,param1,param2);
         this.§6!C§(this.mNextBirdIndex,_loc3_.§'Y§ > 0);
         this.playBirdShotSound();
         if(this.mNextBirdIndex >= this.mBirds.length)
         {
            this.§[![§(§'!0§);
         }
         else
         {
            this.§[![§(§>x§);
         }
         dispatchEvent(new Event(§<"A§));
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §"!S§.playSound("BirdShot" + _loc1_);
      }
      
      public function §4!b§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.mNextBirdIndex;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.mBirds.length)
         {
            this.mBirds[_loc4_].update(param1,this.mSlingShotState == §+!7§,param2);
            _loc4_++;
         }
      }
      
      public function getCurrentBirdType() : String
      {
         var _loc1_:§6"3§ = null;
         if(this.mNextBirdIndex < this.mBirds.length)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
            return _loc1_.name;
         }
         return null;
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§6"3§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§^`§();
         if(this.§4]§ >= this.mBirds.length)
         {
            return false;
         }
         _loc1_ = this.mBirds[this.§4]§];
         _loc1_.§%3§(-1,true);
         _loc2_ = this.§1!3§.levelItemManager.getItem(_loc1_.name).score;
         this.showScoreForRemainingBird(_loc1_,_loc2_);
         ++this.§4]§;
         return true;
      }
      
      protected function showScoreForRemainingBird(param1:§6"3§, param2:int) : void
      {
         this.§1!3§.addScore(param2,§8R§.§2?§,true,param1.x,param1.y - 3,§9!v§.§#8§(param1.name));
      }
      
      public function §3!?§() : int
      {
         var _loc2_:§6"3§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mBirds)
         {
            _loc1_ += this.§1!3§.levelItemManager.getItem(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §7!b§() : int
      {
         return this.§[5§;
      }
      
      protected function §'!@§() : void
      {
         var _loc4_:int = 0;
         var _loc1_:int = 1000;
         var _loc2_:Number = Math.cos(this.§%!^§ + Math.PI / 2) * this.§ D§;
         var _loc3_:Number = Math.sin(this.§%!^§ + Math.PI / 2) * this.§ D§;
         while((_loc4_ = this.§1!3§.objects.§ "0§(this.§,";§ + _loc2_,this.§2;§ + _loc3_)) == -1)
         {
            this.applyGravity(0.1);
            if(_loc1_-- <= 0)
            {
               break;
            }
         }
         this.§6p§ = -1;
      }
      
      public function §%!2§(param1:Number, param2:Number) : void
      {
         this.§>#§.x = -param1;
         this.§>#§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §?K§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function get canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §?K§ && this.§>"8§() >= §%F§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§[![§(§?K§);
         var _loc1_:§6"3§ = this.mBirds[this.mNextBirdIndex];
         _loc1_.§%3§(§"!Y§.§=!^§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§6"3§ = this.mBirds[this.mNextBirdIndex];
         _loc1_.§%3§(§"!Y§.§5V§);
      }
      
      public function shoot() : void
      {
         this.§[!%§ = true;
      }
      
      protected function §6!C§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§6"3§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.mBirds[param1])
         {
            _loc3_ = this.mBirds[param1];
            this.§do §.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.showDestructionParticles(this.mBirds[param1]);
            }
            _loc3_.dispose();
            this.mBirds[param1] = null;
         }
         this.mBirds.splice(param1,1);
      }
      
      protected function showDestructionParticles(param1:§6"3§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §'!1§.§<!@§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §'!1§.§<!@§) + Math.random() * -_loc8_ * 2;
            this.§1!3§.particles.§=J§(§9!v§.§=!`§,§?L§.§7!B§,§9!v§.§7!@§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§9!v§.§'!Y§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§1!3§.particles.§=J§(§9!v§.§"a§,§?L§.§7!B§,§9!v§.§7!@§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §="6§(param1:§6"3§) : void
      {
         this.§6!C§(this.mBirds.indexOf(param1));
      }
      
      public function §6!,§() : void
      {
         var _loc2_:§6"3§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§6"3§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.mBirds.length - 1)
         {
            _loc3_ = Math.sqrt((this.§>!J§ - this.mBirds[_loc1_].x) * (this.§>!J§ - this.mBirds[_loc1_].x) + (this.§;`§ - this.mBirds[_loc1_].y) * (this.§;`§ - this.mBirds[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§>!J§ - this.mBirds[_loc1_ + 1].x) * (this.§>!J§ - this.mBirds[_loc1_ + 1].x) + (this.§;`§ - this.mBirds[_loc1_ + 1].y) * (this.§;`§ - this.mBirds[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.mBirds[_loc1_];
               this.mBirds.splice(_loc1_,1);
               this.mBirds.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§do §.numChildren > 0)
         {
            this.§do §.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.mBirds.length)
         {
            _loc2_ = this.mBirds[_loc1_];
            this.§do §.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §#!^§(param1:Number, param2:Number) : §6"3§
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
      
      public function §@r§(param1:Number, param2:Number) : §&V§
      {
         if(param1 >= this.§>!J§ - this.§1!?§ / 4 && param1 <= this.§>!J§ + this.§1!?§ / 4 && param2 >= this.§;`§ - this.§1!?§ / 4 && this.§;`§ <= this.§;`§ + this.§ D§)
         {
            return this;
         }
         return null;
      }
      
      public function writeSlingshotInformation(param1:§!!X§) : void
      {
         var _loc3_:§6"3§ = null;
         var _loc4_:§9c§ = null;
         param1.slingshotX = this.§>!J§;
         param1.slingshotY = this.§;`§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc3_ = this.mBirds[_loc2_];
            (_loc4_ = new §9c§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.type = _loc3_.name;
            param1.§[!a§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §0!2§() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§="6§(this.mBirds[0]);
         }
      }
      
      public function §4L§(param1:Point, param2:Point) : Array
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
         if(this.§>!J§ > param1.x && this.§>!J§ < param2.x && this.§;`§ > param1.y && this.§;`§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §=!Z§(param1:String, param2:Number, param3:Number, param4:Number) : §6"3§
      {
         var _loc5_:§6"3§ = this.§6!N§(param1,param2,param3,param4);
         this.§6!,§();
         return _loc5_;
      }
      
      public function §4R§() : Number
      {
         return this.mBirds.length;
      }
   }
}
