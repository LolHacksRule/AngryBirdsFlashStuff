package §3R§
{
   import §!u§.§'!X§;
   import §!u§.§8"#§;
   import §'@§.Texture;
   import §4",§.§3v§;
   import §4"@§.§6p§;
   import §4"@§.§?!0§;
   import §4"@§.DisplayObject;
   import §4"@§.Sprite;
   import §5!<§.§2"%§;
   import §6!C§.§6E§;
   import §6!M§.§<!r§;
   import §6!M§.§=!P§;
   import §>"!§.§@!9§;
   import §^e§.§^5§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §,@§ extends EventDispatcher
   {
      
      public static const §%0§:String = "slingshot_shot_bird";
      
      public static const §-!<§:Number = 0.4;
      
      public static const § S§:int = 0;
      
      public static const §'2§:int = 1;
      
      public static const §87§:int = 2;
      
      public static const §,!R§:int = 3;
      
      public static const §!4§:int = 5;
      
      public static const §1l§:int = 6;
      
      public static const §!"#§:int = 3151368;
      
      protected static var §=X§:Texture;
       
      
      protected var §2W§:§^5§;
      
      protected var §;H§:§1!R§;
      
      protected var §1!`§:Number;
      
      protected var §<2§:Number;
      
      protected var §7_§:Number;
      
      protected var §]v§:Number = 8.5;
      
      protected var §8q§:Number;
      
      protected var §4o§:Number;
      
      protected var §+O§:Number;
      
      protected var §'[§:Number;
      
      protected var §8G§:Number;
      
      protected var §3!8§:Number;
      
      protected var §#J§:Number = 1.0;
      
      protected var §%"4§:Boolean;
      
      protected var §#"C§:Boolean;
      
      protected var §2!4§:Boolean = false;
      
      public var mBirds:Vector.<§;!h§>;
      
      public var mNextBirdIndex:int;
      
      protected var §>w§:int;
      
      protected var §@!q§:Number;
      
      public var §3";§:Sprite;
      
      protected var §,^§:Sprite;
      
      public var §+"G§:int = 0;
      
      protected var §9!@§:Number = 0;
      
      public var mSlingShotState:int;
      
      public var §#-§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §8g§:Boolean = false;
      
      public var §<h§:Number;
      
      protected var §9A§:Sprite;
      
      protected var §]!z§:Sprite;
      
      protected var §7!L§:Sprite;
      
      protected var §'l§:DisplayObject;
      
      protected var §'!8§:Sprite;
      
      protected var §;?§:DisplayObject;
      
      protected var §@k§:Sprite;
      
      protected var §#"-§:DisplayObject;
      
      protected var §<t§:Sprite;
      
      protected var §,!6§:Sprite;
      
      protected var §?E§:DisplayObject;
      
      private var §-!&§:Number = 0;
      
      private var §,y§:int = 0;
      
      public function §,@§(param1:§1!R§, param2:§3v§, param3:Sprite, param4:Number = 1.0, param5:Boolean = true, param6:Boolean = true)
      {
         var _loc7_:int = 0;
         var _loc8_:§2"%§ = null;
         this.mBirds = new Vector.<§;!h§>();
         super();
         this.§;H§ = param1;
         this.§9A§ = param3;
         this.§#J§ = param4;
         this.§%"4§ = param5;
         this.§#"C§ = param6;
         if(param2)
         {
            this.setPosition(param2.slingshotX,param2.slingshotY,param2.§>!h§);
            this.§"n§();
            _loc7_ = 0;
            while(_loc7_ < param2.§?!a§)
            {
               _loc8_ = param2.§2"!§(_loc7_);
               this.§3!k§(_loc8_.type,_loc8_.x,_loc8_.y,_loc8_.angle);
               _loc7_++;
            }
            this.§,y§ = this.§=!q§();
            this.mNextBirdIndex = 0;
            if(this.mBirds.length <= 0)
            {
               §6E§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§1!`§ + " " + this.§<2§);
               this.§"!$§(§,!R§);
            }
            else
            {
               this.§"!$§(§ S§);
            }
         }
         else
         {
            §6E§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§"!$§(§,!R§);
         }
         this.§<h§ = 0;
         this.§8!&§();
         this.update(0,true);
         this.§4"C§();
         this.§'i§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§9A§;
      }
      
      public function get aimingLineSprite() : Sprite
      {
         return this.§,^§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§-!&§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.mNextBirdIndex < this.mBirds.length;
      }
      
      public function get shootingAngle() : Number
      {
         return this.§9!@§;
      }
      
      public function get x() : Number
      {
         return this.§1!`§;
      }
      
      public function get y() : Number
      {
         return this.§<2§;
      }
      
      public function get angle() : Number
      {
         return this.§7_§;
      }
      
      public function get §3E§() : Boolean
      {
         return this.§#"C§;
      }
      
      public function dispose() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§ !v§(0);
         }
         this.mBirds = null;
         if(this.§9A§)
         {
            this.§9A§.dispose();
            this.§9A§ = null;
         }
         this.§3";§ = null;
      }
      
      public function §+!T§(param1:String, param2:Number, param3:Number, param4:int = -1) : §;!h§
      {
         var _loc6_:§;!h§ = null;
         if(this.mBirds.length > 0)
         {
            (_loc6_ = this.mBirds[0]).§!!I§(false);
            _loc6_.§'!d§ = false;
         }
         var _loc5_:§;!h§;
         (_loc5_ = this.§3!k§(param1,param2,param3,0,param4)).§!!I§(true);
         return _loc5_;
      }
      
      protected function §3!k§(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §;!h§
      {
         var _loc6_:§<!r§ = this.§;H§.levelItemManager.getItem(param1);
         var _loc7_:Sprite;
         (_loc7_ = new Sprite()).scaleX = _loc6_.scale;
         _loc7_.scaleY = _loc6_.scale;
         var _loc8_:§;!h§ = this.initializeSlingshotObject(_loc6_,param2,param3,param4,_loc7_);
         if(param5 < 0)
         {
            this.mBirds.push(_loc8_);
         }
         else
         {
            this.mBirds.splice(param5,0,_loc8_);
         }
         this.§3";§.addChild(_loc8_.sprite);
         return _loc8_;
      }
      
      protected function initializeSlingshotObject(param1:§<!r§, param2:Number, param3:Number, param4:Number, param5:Sprite) : §;!h§
      {
         return new §;!h§(this,param5,param1.itemName,param1,param2,param3,param4);
      }
      
      public function §"!$§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == § S§)
         {
            this.§?3§();
            this.§@!q§ = 1000;
         }
         else if(this.mSlingShotState == §'2§)
         {
            this.§?3§();
            this.§@!q§ = 0;
         }
         else if(this.mSlingShotState == §87§)
         {
            this.§@!q§ = 10000;
            this.§8g§ = false;
            this.§?3§();
         }
         else if(this.mSlingShotState == §,!R§)
         {
            this.§?3§();
            this.§@!q§ = 2000;
         }
         else if(this.mSlingShotState == §!4§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§8g§ = false;
               this.§?3§();
               this.mBirds[this.mNextBirdIndex].setPosition(this.§null§ - this.mBirds[this.mNextBirdIndex].radius * Math.cos(this.§9!@§ / (180 / Math.PI)),this.§7y§ + this.mBirds[this.mNextBirdIndex].radius * Math.sin(this.§9!@§ / (180 / Math.PI)),180 - this.§9!@§);
            }
            else
            {
               this.§?3§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §@0§() : §1!R§
      {
         return this.§;H§;
      }
      
      public function §61§() : Boolean
      {
         return this.mSlingShotState == §,!R§ && this.§@!q§ <= 0;
      }
      
      private function §"n§() : void
      {
         this.§2W§ = this.§;H§.animationManager.getAnimation("SLINGSHOT");
         this.§'l§ = this.§2W§.getFrame(0);
         this.§'l§.pivotX = -3;
         this.§'l§.pivotY = -24;
         this.§?E§ = this.§2W§.getFrame(1);
         this.§?E§.pivotX = -30;
         this.§?E§.pivotY = -30;
         this.§1"!§();
         this.§&!?§();
         this.§]!z§ = new Sprite();
         this.§]!z§.addChild(this.§'l§);
         this.§]!z§.addChild(this.§'!8§);
         this.§,^§ = new Sprite();
         this.§3";§ = new Sprite();
         this.§7!L§ = new Sprite();
         this.§7!L§.addChild(this.§<t§);
         this.§7!L§.addChild(this.§@k§);
         this.§7!L§.addChild(this.§?E§);
         this.§2!G§();
      }
      
      protected function §2!G§() : void
      {
         this.§9A§.addChild(this.§]!z§);
         this.§9A§.addChild(this.§,^§);
         this.§9A§.addChild(this.§3";§);
         this.§9A§.addChild(this.§7!L§);
      }
      
      public function §1"!§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§8q§ = this.§1!`§;
         this.§4o§ = this.§<2§;
         this.§3!8§ = §<!]§.§!G§;
         _loc1_ = null;
      }
      
      protected function §!!'§(param1:uint) : DisplayObject
      {
         return new §6p§(2,2,param1);
      }
      
      protected function §6!K§(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc3_:BitmapData = null;
         if(!§=X§ || param2)
         {
            _loc3_ = new BitmapData(18,26,true,4278190080 | param1);
            if(§=X§)
            {
               this.§;H§.textureManager.unregisterBitmapDataTexture(§=X§);
            }
            §=X§ = this.§;H§.textureManager.getTextureFromBitmapData(_loc3_);
         }
         return new §?!0§(§=X§);
      }
      
      protected function §&!?§(param1:uint = 3151368, param2:uint = 3151368, param3:Boolean = false) : void
      {
         this.§<t§ = new Sprite();
         this.§,!6§ = new Sprite();
         var _loc4_:DisplayObject;
         (_loc4_ = this.§6!K§(param2,param3)).rotation = Math.PI;
         _loc4_.x = _loc4_.width / 2;
         _loc4_.y = _loc4_.height / 2;
         this.§,!6§.addChild(_loc4_);
         this.§<t§.addChild(this.§,!6§);
         this.§'!8§ = new Sprite();
         this.§'!8§.x = 22;
         this.§'!8§.y = 0;
         this.§;?§ = this.§!!'§(param1);
         this.§'!8§.addChild(this.§;?§);
         this.§@k§ = new Sprite();
         this.§@k§.x = -17;
         this.§@k§.y = 5;
         this.§#"-§ = this.§!!'§(param1);
         this.§@k§.addChild(this.§#"-§);
      }
      
      public function §'i§(param1:Number) : void
      {
         var _loc2_:Number = (this.§7y§ - this.§<2§) / §1!R§.§00§;
         var _loc3_:Number = (this.§null§ - this.§1!`§) / §1!R§.§00§;
         var _loc4_:Number = Math.cos(this.§7_§);
         var _loc5_:Number = Math.sin(this.§7_§);
         var _loc6_:Number = -Math.sin(this.§7_§);
         var _loc7_:Number = Math.cos(this.§7_§);
         var _loc8_:Number = _loc3_;
         var _loc9_:Number = _loc2_;
         _loc3_ = _loc8_ * _loc4_ + _loc9_ * _loc5_;
         _loc2_ = _loc8_ * _loc6_ + _loc9_ * _loc7_;
         var _loc10_:Number = 3.5 + 8 * ((this.§3!8§ - this.§#!J§) / this.§3!8§);
         this.§<t§.x = _loc3_;
         this.§<t§.y = _loc2_;
         this.§<t§.rotation = -this.§7_§ - this.§9!@§ / (180 / Math.PI);
         this.§]!z§.x = this.§1!`§ / §1!R§.§00§;
         this.§]!z§.y = this.§<2§ / §1!R§.§00§;
         this.§]!z§.rotation = this.§7_§;
         this.§7!L§.x = this.§1!`§ / §1!R§.§00§;
         this.§7!L§.y = this.§<2§ / §1!R§.§00§;
         this.§7!L§.rotation = this.§7_§;
         this.§@k§.rotation = Math.atan2(_loc2_ - this.§@k§.y,_loc3_ - this.§@k§.x);
         this.§#"-§.width = Math.sqrt(Math.pow(_loc3_ - this.§@k§.x,2) + Math.pow(_loc2_ - this.§@k§.y,2));
         this.§#"-§.height = _loc10_ * 2;
         this.§#"-§.y = -this.§#"-§.height / 2;
         this.§'!8§.rotation = Math.atan2(_loc2_ - this.§'!8§.y,_loc3_ - this.§'!8§.x);
         this.§;?§.width = Math.sqrt(Math.pow(_loc3_ - this.§'!8§.x,2) + Math.pow(_loc2_ - this.§'!8§.y,2));
         this.§;?§.height = _loc10_ * 2;
         this.§;?§.y = -this.§;?§.height / 2;
         this.§#-§ = false;
      }
      
      public function §8!+§() : §;!h§
      {
         var _loc2_:§;!h§ = null;
         while(this.mBirds.length > 0)
         {
            this.§ !v§(0,true);
         }
         this.§'w§();
         if(this.mBirds.length > 0)
         {
            _loc2_ = this.mBirds[0];
            _loc2_.§!!I§(false);
         }
         var _loc1_:§;!h§ = this.§3!k§("BIRD_SARDINE",this.§1!`§,this.§<2§,0);
         _loc1_.§!!I§(true);
         _loc1_.§'!d§ = false;
         this.§"!$§(§87§);
         return _loc1_;
      }
      
      protected function §'w§() : void
      {
         §@!9§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§"!$§(§!4§);
      }
      
      public function §?3§() : void
      {
         this.setNewCoordinatesForRubber(this.§8q§,this.§4o§ + this.§3!8§ / 8);
      }
      
      protected function get §=!R§() : Number
      {
         return this.§8G§ * this.§#J§;
      }
      
      protected function get §#!J§() : Number
      {
         return Math.min(this.§8G§,this.§3!8§);
      }
      
      protected function get §null§() : Number
      {
         if(this.§8G§ >= this.§3!8§)
         {
            return this.§8q§ + this.§3!8§ * Math.cos(this.§9!@§ / 180 * Math.PI);
         }
         return this.§+O§;
      }
      
      protected function get §7y§() : Number
      {
         if(this.§8G§ >= this.§3!8§)
         {
            return this.§4o§ - this.§3!8§ * Math.sin(this.§9!@§ / 180 * Math.PI);
         }
         return this.§'[§;
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
         if(this.§+O§ == param1 && this.§'[§ == param2)
         {
            return true;
         }
         this.§8G§ = Math.sqrt((param2 - this.§4o§) * (param2 - this.§4o§) + (param1 - this.§8q§) * (param1 - this.§8q§));
         var _loc4_:Number = this.§8G§;
         if(this.§=!R§ > this.§3!8§)
         {
            if(param3)
            {
               _loc5_ = this.§+O§ - this.§8q§;
               _loc6_ = this.§'[§ - this.§4o§;
               this.§8G§ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
               return false;
            }
            this.§8G§ = this.§3!8§ / this.§#J§;
         }
         this.§+O§ = param1;
         this.§'[§ = param2;
         this.§9!@§ = Math.atan2(-(this.§'[§ - this.§4o§),this.§+O§ - this.§8q§);
         this.§9!@§ *= 180 / Math.PI;
         if(!this.mDragging)
         {
            this.§+O§ = param1 - 0.7;
            this.§'[§ = param2;
            this.§9!@§ = -160;
         }
         if(this.§%"4§)
         {
            _loc7_ = 12;
            _loc8_ = 5;
            _loc9_ = 4;
            _loc10_ = this.§3!8§ / 2;
            if(this.§8G§ > _loc10_ && this.§9!@§ > -90 - _loc7_ + _loc8_ && this.§9!@§ < -90 + _loc7_ + _loc8_)
            {
               param1 = this.§8q§ + _loc10_ * (param1 - this.§8q§) / _loc4_;
               param2 = this.§4o§ + _loc10_ * (param2 - this.§4o§) / _loc4_;
               this.§8G§ = _loc10_;
               this.§+O§ = param1;
               this.§'[§ = param2;
            }
            else if(this.§8G§ > _loc10_ && this.§9!@§ > -90 - _loc7_ - _loc9_ + _loc8_ && this.§9!@§ < -90 + _loc7_ + _loc9_ + _loc8_)
            {
               _loc11_ = _loc10_ + (this.§3!8§ - _loc10_) * (Math.abs(this.§9!@§ - -90 - _loc8_) - _loc7_) / _loc9_;
               param1 = this.§8q§ + _loc11_ * (param1 - this.§8q§) / _loc4_;
               param2 = this.§4o§ + _loc11_ * (param2 - this.§4o§) / _loc4_;
               this.§8G§ = _loc11_;
               this.§+O§ = param1;
               this.§'[§ = param2;
            }
         }
         if(this.§8G§ <= this.§3!8§ * 0.45)
         {
            this.§2!4§ = true;
         }
         else if(this.§2!4§ && this.§8G§ >= this.§3!8§ * 0.8)
         {
            this.playStretchSound();
            this.§2!4§ = false;
         }
         this.§#-§ = true;
         return true;
      }
      
      protected function playStretchSound() : void
      {
         §@!9§.playSound("SlingshotStreched");
      }
      
      protected function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§1!`§ + param1 * Math.cos(this.§7_§ + Math.PI / 2),this.§<2§ + param1 * Math.sin(this.§7_§ + Math.PI / 2),this.§7_§);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc5_:Number = param1 - this.§1!`§;
         this.§1!`§ = param1;
         var _loc6_:Number = param2 - this.§<2§;
         this.§<2§ = param2;
         this.§7_§ = param3;
         this.§4o§ += _loc6_;
         this.§'[§ += _loc6_;
         this.§8q§ += _loc5_;
         this.§+O§ += _loc5_;
         if(param4)
         {
            this.§'i§(0);
         }
         this.§#-§ = true;
      }
      
      protected function §[6§() : Number
      {
         return this.§=!R§ / this.§3!8§;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§;!h§ = this.mBirds[this.mNextBirdIndex];
         var _loc3_:Number = this.§[6§();
         if(_loc2_)
         {
            _loc1_ = _loc2_.§]"#§;
         }
         return _loc1_ * _loc3_;
      }
      
      public function getPosition() : Point
      {
         var _loc1_:§;!h§ = null;
         if(this.mBirds.length > this.mNextBirdIndex)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §]!!§() : Point
      {
         return new Point(this.§8q§,this.§4o§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§;!h§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§#-§)
         {
            this.§'i§(param1);
         }
         this.§@!q§ -= param1;
         if(this.§@!q§ < 0)
         {
            this.§@!q§ = 0;
         }
         if(this.mSlingShotState != §,!R§)
         {
            this.§@!>§(param1,param2);
            _loc3_ = null;
            if(this.mBirds.length > 0)
            {
               _loc3_ = this.mBirds[this.mNextBirdIndex];
            }
            if(_loc3_)
            {
               _loc3_.§7">§(param1);
            }
            if(!_loc3_)
            {
               this.§"!$§(§,!R§);
            }
            else if(this.mSlingShotState == § S§)
            {
               if(this.§@!q§ <= 0)
               {
                  this.§"!$§(§'2§);
                  _loc3_.§!!N§();
               }
            }
            else if(this.mSlingShotState == §'2§)
            {
               if(_loc3_.§5"4§)
               {
                  this.§"!$§(§87§);
               }
            }
            else if(this.mSlingShotState == §87§)
            {
               _loc4_ = this.§null§ - _loc3_.radius * Math.cos(this.§9!@§ / (180 / Math.PI));
               _loc5_ = this.§7y§ + _loc3_.radius * Math.sin(this.§9!@§ / (180 / Math.PI));
               if(this.mDragging)
               {
                  _loc3_.setPosition(_loc4_,_loc5_,180 - this.§9!@§);
               }
               else
               {
                  _loc3_.setPosition(_loc4_,_loc5_,this.angle);
               }
               if(this.§8g§)
               {
                  this.shootCurrentBird(this.§[6§(),this.§9!@§);
               }
            }
         }
      }
      
      public function §<"0§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§;!h§ = null;
         if(this.mBirds.length > 0)
         {
            _loc5_ = this.mBirds[this.mNextBirdIndex];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2,180 - this.§9!@§);
         this.shootCurrentBird(param3,param4);
      }
      
      public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         var _loc3_:§;!h§ = null;
         if(this.mBirds.length > this.mNextBirdIndex)
         {
            _loc3_ = this.mBirds[this.mNextBirdIndex];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§8g§ = false;
         this.§-!&§ = new Date().time;
         this.§;H§.§`3§(_loc3_,param1,param2);
         this.§ !v§(this.mNextBirdIndex,_loc3_.§="E§ > 0);
         this.playBirdShotSound();
         if(this.mNextBirdIndex >= this.mBirds.length)
         {
            this.§"!$§(§,!R§);
         }
         else
         {
            this.§"!$§(§ S§);
         }
         dispatchEvent(new Event(§%0§));
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §@!9§.playSound("BirdShot" + _loc1_);
      }
      
      public function §@!>§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.mNextBirdIndex;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.mBirds.length)
         {
            this.mBirds[_loc4_].update(param1,this.mSlingShotState == §!4§,param2);
            _loc4_++;
         }
      }
      
      public function getCurrentBirdType() : String
      {
         var _loc1_:§;!h§ = null;
         if(this.mNextBirdIndex < this.mBirds.length)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
            return _loc1_.name;
         }
         return null;
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§;!h§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§?3§();
         if(this.§>w§ >= this.mBirds.length)
         {
            return false;
         }
         _loc1_ = this.mBirds[this.§>w§];
         _loc1_.§&'§(-1,true);
         _loc2_ = this.§;H§.levelItemManager.getItem(_loc1_.name).score;
         this.showScoreForRemainingBird(_loc1_,_loc2_);
         ++this.§>w§;
         return true;
      }
      
      protected function showScoreForRemainingBird(param1:§;!h§, param2:int) : void
      {
         this.§;H§.addScore(param2,§+7§.§`!r§,true,param1.x,param1.y - 3,§8"#§.§[!%§(param1.name));
      }
      
      public function §=!q§() : int
      {
         var _loc2_:§;!h§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mBirds)
         {
            _loc1_ += this.§;H§.levelItemManager.getItem(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §>!4§() : int
      {
         return this.§,y§;
      }
      
      protected function §4"C§() : void
      {
         var _loc4_:int = 0;
         var _loc1_:int = 1000;
         var _loc2_:Number = Math.cos(this.§7_§ + Math.PI / 2) * this.§]v§;
         var _loc3_:Number = Math.sin(this.§7_§ + Math.PI / 2) * this.§]v§;
         while((_loc4_ = this.§;H§.objects.§3!X§(this.§8q§ + _loc2_,this.§4o§ + _loc3_)) == -1)
         {
            this.applyGravity(0.1);
            if(_loc1_-- <= 0)
            {
               break;
            }
         }
         this.§<h§ = -1;
      }
      
      public function §,">§(param1:Number, param2:Number) : void
      {
         this.§9A§.x = -param1;
         this.§9A§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §87§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function get canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §87§ && this.§[6§() >= §-!<§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§"!$§(§87§);
         var _loc1_:§;!h§ = this.mBirds[this.mNextBirdIndex];
         _loc1_.§&'§(§=!P§.§'!S§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§;!h§ = this.mBirds[this.mNextBirdIndex];
         _loc1_.§&'§(§=!P§.§<z§);
      }
      
      public function shoot() : void
      {
         this.§8g§ = true;
      }
      
      protected function § !v§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§;!h§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.mBirds[param1])
         {
            _loc3_ = this.mBirds[param1];
            this.§3";§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.showDestructionParticles(this.mBirds[param1]);
            }
            _loc3_.dispose();
            this.mBirds[param1] = null;
         }
         this.mBirds.splice(param1,1);
      }
      
      protected function showDestructionParticles(param1:§;!h§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §1!R§.§00§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §1!R§.§00§) + Math.random() * -_loc8_ * 2;
            this.§;H§.particles.§'!f§(§8"#§.§1q§,§'!X§.§=!O§,§8"#§.§^;§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§8"#§.§3!j§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§;H§.particles.§'!f§(§8"#§.§-'§,§'!X§.§=!O§,§8"#§.§^;§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:§;!h§) : void
      {
         this.§ !v§(this.mBirds.indexOf(param1));
      }
      
      public function §8!&§() : void
      {
         var _loc2_:§;!h§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§;!h§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.mBirds.length - 1)
         {
            _loc3_ = Math.sqrt((this.§1!`§ - this.mBirds[_loc1_].x) * (this.§1!`§ - this.mBirds[_loc1_].x) + (this.§<2§ - this.mBirds[_loc1_].y) * (this.§<2§ - this.mBirds[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§1!`§ - this.mBirds[_loc1_ + 1].x) * (this.§1!`§ - this.mBirds[_loc1_ + 1].x) + (this.§<2§ - this.mBirds[_loc1_ + 1].y) * (this.§<2§ - this.mBirds[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.mBirds[_loc1_];
               this.mBirds.splice(_loc1_,1);
               this.mBirds.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§3";§.numChildren > 0)
         {
            this.§3";§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.mBirds.length)
         {
            _loc2_ = this.mBirds[_loc1_];
            this.§3";§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §;!h§
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
      
      public function §4$§(param1:Number, param2:Number) : §,@§
      {
         if(param1 >= this.§1!`§ - this.§3!8§ / 4 && param1 <= this.§1!`§ + this.§3!8§ / 4 && param2 >= this.§<2§ - this.§3!8§ / 4 && this.§<2§ <= this.§<2§ + this.§]v§)
         {
            return this;
         }
         return null;
      }
      
      public function writeSlingshotInformation(param1:§3v§) : void
      {
         var _loc3_:§;!h§ = null;
         var _loc4_:§2"%§ = null;
         param1.slingshotX = this.§1!`§;
         param1.slingshotY = this.§<2§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc3_ = this.mBirds[_loc2_];
            (_loc4_ = new §2"%§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.type = _loc3_.name;
            param1.§>!0§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §;"=§() : void
      {
         while(this.mBirds.length > 0)
         {
            this.removeObject(this.mBirds[0]);
         }
      }
      
      public function §7"A§(param1:Point, param2:Point) : Array
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
         if(this.§1!`§ > param1.x && this.§1!`§ < param2.x && this.§<2§ > param1.y && this.§<2§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §>"&§(param1:String, param2:Number, param3:Number, param4:Number) : §;!h§
      {
         var _loc5_:§;!h§ = this.§3!k§(param1,param2,param3,param4);
         this.§8!&§();
         return _loc5_;
      }
      
      public function §8"5§() : Number
      {
         return this.mBirds.length;
      }
   }
}
