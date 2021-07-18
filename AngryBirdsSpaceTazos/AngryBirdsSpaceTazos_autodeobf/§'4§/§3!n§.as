package §'4§
{
   import §"!&§.§8X§;
   import §"!&§.§=C§;
   import §0N§.§2!@§;
   import §1"H§.§0"@§;
   import §1"H§.§2!V§;
   import §3"#§.§<!O§;
   import §4&§.§#r§;
   import §7!8§.§&!D§;
   import §7!8§.DisplayObject;
   import §7!8§.Sprite;
   import §7!8§.§`y§;
   import §@w§.§%![§;
   import §`!#§.Texture;
   import §`!j§.§#b§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §3!n§ extends EventDispatcher
   {
      
      public static const §5"6§:String = "slingshot_shot_bird";
      
      public static const §1!3§:Number = 0.4;
      
      public static const §95§:int = 0;
      
      public static const § !?§:int = 1;
      
      public static const §'`§:int = 2;
      
      public static const § !l§:int = 3;
      
      public static const §7!y§:int = 5;
      
      public static const §function§:int = 6;
      
      public static const §8!a§:int = 3151368;
      
      protected static var §-4§:Texture;
       
      
      protected var §%!k§:§#r§;
      
      protected var §?>§:§^g§;
      
      protected var §""4§:Number;
      
      protected var §%W§:Number;
      
      protected var §"X§:Number;
      
      protected var §2u§:Number = 8.5;
      
      protected var §`-§:Number;
      
      protected var §5]§:Number;
      
      protected var §43§:Number;
      
      protected var §;!3§:Number;
      
      protected var §-!H§:Number;
      
      protected var §?!;§:Number;
      
      protected var §#s§:Number = 1.0;
      
      protected var §^$§:Boolean;
      
      protected var §'! §:Boolean;
      
      protected var §="E§:Boolean = false;
      
      public var mBirds:Vector.<§-T§>;
      
      public var mNextBirdIndex:int;
      
      protected var §;w§:int;
      
      protected var §&Q§:Number;
      
      public var §]G§:Sprite;
      
      protected var §["@§:Sprite;
      
      public var §4"8§:int = 0;
      
      protected var §-!s§:Number = 0;
      
      public var mSlingShotState:int;
      
      public var §@!K§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §`[§:Boolean = false;
      
      public var §5d§:Number;
      
      protected var §]!$§:Sprite;
      
      protected var §5!G§:Sprite;
      
      protected var §6"3§:Sprite;
      
      protected var §"T§:DisplayObject;
      
      protected var § "D§:Sprite;
      
      protected var §=!6§:DisplayObject;
      
      protected var §["A§:Sprite;
      
      protected var §2!&§:DisplayObject;
      
      protected var §]![§:Sprite;
      
      protected var §"!S§:Sprite;
      
      protected var §?n§:DisplayObject;
      
      private var §=;§:Number = 0;
      
      private var §>!a§:int = 0;
      
      public function §3!n§(param1:§^g§, param2:§#b§, param3:Sprite, param4:Number = 1.0, param5:Boolean = true, param6:Boolean = true)
      {
         var _loc7_:int = 0;
         var _loc8_:§%![§ = null;
         this.mBirds = new Vector.<§-T§>();
         super();
         this.§?>§ = param1;
         this.§]!$§ = param3;
         this.§#s§ = param4;
         this.§^$§ = param5;
         this.§'! § = param6;
         if(param2)
         {
            this.setPosition(param2.slingshotX,param2.slingshotY,param2.§^!=§);
            this.§5";§();
            _loc7_ = 0;
            while(_loc7_ < param2.§2&§)
            {
               _loc8_ = param2.§#!`§(_loc7_);
               this.§>"+§(_loc8_.type,_loc8_.x,_loc8_.y,_loc8_.angle);
               _loc7_++;
            }
            this.§>!a§ = this.§@![§();
            this.mNextBirdIndex = 0;
            if(this.mBirds.length <= 0)
            {
               §2!@§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§""4§ + " " + this.§%W§);
               this.§=i§(§ !l§);
            }
            else
            {
               this.§=i§(§95§);
            }
         }
         else
         {
            §2!@§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§=i§(§ !l§);
         }
         this.§5d§ = 0;
         this.§`k§();
         this.update(0,true);
         this.§]L§();
         this.§ !i§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§]!$§;
      }
      
      public function get aimingLineSprite() : Sprite
      {
         return this.§["@§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§=;§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.mNextBirdIndex < this.mBirds.length;
      }
      
      public function get shootingAngle() : Number
      {
         return this.§-!s§;
      }
      
      public function get x() : Number
      {
         return this.§""4§;
      }
      
      public function get y() : Number
      {
         return this.§%W§;
      }
      
      public function get angle() : Number
      {
         return this.§"X§;
      }
      
      public function get §7=§() : Boolean
      {
         return this.§'! §;
      }
      
      public function dispose() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§9!^§(0);
         }
         this.mBirds = null;
         if(this.§]!$§)
         {
            this.§]!$§.dispose();
            this.§]!$§ = null;
         }
         this.§]G§ = null;
      }
      
      public function §0v§(param1:String, param2:Number, param3:Number, param4:int = -1) : §-T§
      {
         var _loc6_:§-T§ = null;
         if(this.mBirds.length > 0)
         {
            (_loc6_ = this.mBirds[0]).§[k§(false);
            _loc6_.§6!q§ = false;
         }
         var _loc5_:§-T§;
         (_loc5_ = this.§>"+§(param1,param2,param3,0,param4)).§[k§(true);
         return _loc5_;
      }
      
      protected function §>"+§(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §-T§
      {
         var _loc6_:§8X§ = this.§?>§.levelItemManager.getItem(param1);
         var _loc7_:Sprite;
         (_loc7_ = new Sprite()).scaleX = _loc6_.scale;
         _loc7_.scaleY = _loc6_.scale;
         var _loc8_:§-T§ = this.initializeSlingshotObject(_loc6_,param2,param3,param4,_loc7_);
         if(param5 < 0)
         {
            this.mBirds.push(_loc8_);
         }
         else
         {
            this.mBirds.splice(param5,0,_loc8_);
         }
         this.§]G§.addChild(_loc8_.sprite);
         return _loc8_;
      }
      
      protected function initializeSlingshotObject(param1:§8X§, param2:Number, param3:Number, param4:Number, param5:Sprite) : §-T§
      {
         return new §-T§(this,param5,param1.itemName,param1,param2,param3,param4);
      }
      
      public function §=i§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §95§)
         {
            this.§[!P§();
            this.§&Q§ = 1000;
         }
         else if(this.mSlingShotState == § !?§)
         {
            this.§[!P§();
            this.§&Q§ = 0;
         }
         else if(this.mSlingShotState == §'`§)
         {
            this.§&Q§ = 10000;
            this.§`[§ = false;
            this.§[!P§();
         }
         else if(this.mSlingShotState == § !l§)
         {
            this.§[!P§();
            this.§&Q§ = 2000;
         }
         else if(this.mSlingShotState == §7!y§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§`[§ = false;
               this.§[!P§();
               this.mBirds[this.mNextBirdIndex].setPosition(this.§!"3§ - this.mBirds[this.mNextBirdIndex].radius * Math.cos(this.§-!s§ / (180 / Math.PI)),this.§>"%§ + this.mBirds[this.mNextBirdIndex].radius * Math.sin(this.§-!s§ / (180 / Math.PI)),180 - this.§-!s§);
            }
            else
            {
               this.§[!P§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §-d§() : §^g§
      {
         return this.§?>§;
      }
      
      public function §;!"§() : Boolean
      {
         return this.mSlingShotState == § !l§ && this.§&Q§ <= 0;
      }
      
      private function §5";§() : void
      {
         this.§%!k§ = this.§?>§.animationManager.getAnimation("SLINGSHOT");
         this.§"T§ = this.§%!k§.getFrame(0);
         this.§"T§.pivotX = -3;
         this.§"T§.pivotY = -24;
         this.§?n§ = this.§%!k§.getFrame(1);
         this.§?n§.pivotX = -30;
         this.§?n§.pivotY = -30;
         this.§,o§();
         this.§<J§();
         this.§5!G§ = new Sprite();
         this.§5!G§.addChild(this.§"T§);
         this.§5!G§.addChild(this.§ "D§);
         this.§["@§ = new Sprite();
         this.§]G§ = new Sprite();
         this.§6"3§ = new Sprite();
         this.§6"3§.addChild(this.§]![§);
         this.§6"3§.addChild(this.§["A§);
         this.§6"3§.addChild(this.§?n§);
         this.§;!+§();
      }
      
      protected function §;!+§() : void
      {
         this.§]!$§.addChild(this.§5!G§);
         this.§]!$§.addChild(this.§["@§);
         this.§]!$§.addChild(this.§]G§);
         this.§]!$§.addChild(this.§6"3§);
      }
      
      public function §,o§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§`-§ = this.§""4§;
         this.§5]§ = this.§%W§;
         this.§?!;§ = §4#§.§]!x§;
         _loc1_ = null;
      }
      
      protected function §-#§(param1:uint) : DisplayObject
      {
         return new §&!D§(2,2,param1);
      }
      
      protected function §0?§(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc3_:BitmapData = null;
         if(!§-4§ || param2)
         {
            _loc3_ = new BitmapData(18,26,true,4278190080 | param1);
            if(§-4§)
            {
               this.§?>§.textureManager.unregisterBitmapDataTexture(§-4§);
            }
            §-4§ = this.§?>§.textureManager.getTextureFromBitmapData(_loc3_);
         }
         return new §`y§(§-4§);
      }
      
      protected function §<J§(param1:uint = 3151368, param2:uint = 3151368, param3:Boolean = false) : void
      {
         this.§]![§ = new Sprite();
         this.§"!S§ = new Sprite();
         var _loc4_:DisplayObject;
         (_loc4_ = this.§0?§(param2,param3)).rotation = Math.PI;
         _loc4_.x = _loc4_.width / 2;
         _loc4_.y = _loc4_.height / 2;
         this.§"!S§.addChild(_loc4_);
         this.§]![§.addChild(this.§"!S§);
         this.§ "D§ = new Sprite();
         this.§ "D§.x = 22;
         this.§ "D§.y = 0;
         this.§=!6§ = this.§-#§(param1);
         this.§ "D§.addChild(this.§=!6§);
         this.§["A§ = new Sprite();
         this.§["A§.x = -17;
         this.§["A§.y = 5;
         this.§2!&§ = this.§-#§(param1);
         this.§["A§.addChild(this.§2!&§);
      }
      
      public function § !i§(param1:Number) : void
      {
         var _loc2_:Number = (this.§>"%§ - this.§%W§) / §^g§.§5!-§;
         var _loc3_:Number = (this.§!"3§ - this.§""4§) / §^g§.§5!-§;
         var _loc4_:Number = Math.cos(this.§"X§);
         var _loc5_:Number = Math.sin(this.§"X§);
         var _loc6_:Number = -Math.sin(this.§"X§);
         var _loc7_:Number = Math.cos(this.§"X§);
         var _loc8_:Number = _loc3_;
         var _loc9_:Number = _loc2_;
         _loc3_ = _loc8_ * _loc4_ + _loc9_ * _loc5_;
         _loc2_ = _loc8_ * _loc6_ + _loc9_ * _loc7_;
         var _loc10_:Number = 3.5 + 8 * ((this.§?!;§ - this.§,!9§) / this.§?!;§);
         this.§]![§.x = _loc3_;
         this.§]![§.y = _loc2_;
         this.§]![§.rotation = -this.§"X§ - this.§-!s§ / (180 / Math.PI);
         this.§5!G§.x = this.§""4§ / §^g§.§5!-§;
         this.§5!G§.y = this.§%W§ / §^g§.§5!-§;
         this.§5!G§.rotation = this.§"X§;
         this.§6"3§.x = this.§""4§ / §^g§.§5!-§;
         this.§6"3§.y = this.§%W§ / §^g§.§5!-§;
         this.§6"3§.rotation = this.§"X§;
         this.§["A§.rotation = Math.atan2(_loc2_ - this.§["A§.y,_loc3_ - this.§["A§.x);
         this.§2!&§.width = Math.sqrt(Math.pow(_loc3_ - this.§["A§.x,2) + Math.pow(_loc2_ - this.§["A§.y,2));
         this.§2!&§.height = _loc10_ * 2;
         this.§2!&§.y = -this.§2!&§.height / 2;
         this.§ "D§.rotation = Math.atan2(_loc2_ - this.§ "D§.y,_loc3_ - this.§ "D§.x);
         this.§=!6§.width = Math.sqrt(Math.pow(_loc3_ - this.§ "D§.x,2) + Math.pow(_loc2_ - this.§ "D§.y,2));
         this.§=!6§.height = _loc10_ * 2;
         this.§=!6§.y = -this.§=!6§.height / 2;
         this.§@!K§ = false;
      }
      
      public function §'b§() : void
      {
         var _loc2_:§-T§ = null;
         while(this.mBirds.length > 0)
         {
            this.§9!^§(0,true);
         }
         this.§7""§();
         if(this.mBirds.length > 0)
         {
            _loc2_ = this.mBirds[0];
            _loc2_.§[k§(false);
         }
         var _loc1_:§-T§ = this.§>"+§("BIRD_SARDINE",this.§""4§,this.§%W§,0);
         _loc1_.§[k§(true);
         _loc1_.§6!q§ = false;
         this.§=i§(§'`§);
      }
      
      protected function §7""§() : void
      {
         §<!O§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§=i§(§7!y§);
      }
      
      public function §[!P§() : void
      {
         this.setNewCoordinatesForRubber(this.§`-§,this.§5]§ + this.§?!;§ / 8);
      }
      
      protected function get §-!V§() : Number
      {
         return this.§-!H§ * this.§#s§;
      }
      
      protected function get §,!9§() : Number
      {
         return Math.min(this.§-!H§,this.§?!;§);
      }
      
      protected function get §!"3§() : Number
      {
         if(this.§-!H§ >= this.§?!;§)
         {
            return this.§`-§ + this.§?!;§ * Math.cos(this.§-!s§ / 180 * Math.PI);
         }
         return this.§43§;
      }
      
      protected function get §>"%§() : Number
      {
         if(this.§-!H§ >= this.§?!;§)
         {
            return this.§5]§ - this.§?!;§ * Math.sin(this.§-!s§ / 180 * Math.PI);
         }
         return this.§;!3§;
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
         if(this.§43§ == param1 && this.§;!3§ == param2)
         {
            return true;
         }
         this.§-!H§ = Math.sqrt((param2 - this.§5]§) * (param2 - this.§5]§) + (param1 - this.§`-§) * (param1 - this.§`-§));
         var _loc4_:Number = this.§-!H§;
         if(this.§-!V§ > this.§?!;§)
         {
            if(param3)
            {
               _loc5_ = this.§43§ - this.§`-§;
               _loc6_ = this.§;!3§ - this.§5]§;
               this.§-!H§ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
               return false;
            }
            this.§-!H§ = this.§?!;§ / this.§#s§;
         }
         this.§43§ = param1;
         this.§;!3§ = param2;
         this.§-!s§ = Math.atan2(-(this.§;!3§ - this.§5]§),this.§43§ - this.§`-§);
         this.§-!s§ *= 180 / Math.PI;
         if(!this.mDragging)
         {
            this.§43§ = param1 - 0.7;
            this.§;!3§ = param2;
            this.§-!s§ = -160;
         }
         if(this.§^$§)
         {
            _loc7_ = 12;
            _loc8_ = 5;
            _loc9_ = 4;
            _loc10_ = this.§?!;§ / 2;
            if(this.§-!H§ > _loc10_ && this.§-!s§ > -90 - _loc7_ + _loc8_ && this.§-!s§ < -90 + _loc7_ + _loc8_)
            {
               param1 = this.§`-§ + _loc10_ * (param1 - this.§`-§) / _loc4_;
               param2 = this.§5]§ + _loc10_ * (param2 - this.§5]§) / _loc4_;
               this.§-!H§ = _loc10_;
               this.§43§ = param1;
               this.§;!3§ = param2;
            }
            else if(this.§-!H§ > _loc10_ && this.§-!s§ > -90 - _loc7_ - _loc9_ + _loc8_ && this.§-!s§ < -90 + _loc7_ + _loc9_ + _loc8_)
            {
               _loc11_ = _loc10_ + (this.§?!;§ - _loc10_) * (Math.abs(this.§-!s§ - -90 - _loc8_) - _loc7_) / _loc9_;
               param1 = this.§`-§ + _loc11_ * (param1 - this.§`-§) / _loc4_;
               param2 = this.§5]§ + _loc11_ * (param2 - this.§5]§) / _loc4_;
               this.§-!H§ = _loc11_;
               this.§43§ = param1;
               this.§;!3§ = param2;
            }
         }
         if(this.§-!H§ <= this.§?!;§ * 0.45)
         {
            this.§="E§ = true;
         }
         else if(this.§="E§ && this.§-!H§ >= this.§?!;§ * 0.8)
         {
            this.playStretchSound();
            this.§="E§ = false;
         }
         this.§@!K§ = true;
         return true;
      }
      
      protected function playStretchSound() : void
      {
         §<!O§.playSound("SlingshotStreched");
      }
      
      protected function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§""4§ + param1 * Math.cos(this.§"X§ + Math.PI / 2),this.§%W§ + param1 * Math.sin(this.§"X§ + Math.PI / 2),this.§"X§);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc5_:Number = param1 - this.§""4§;
         this.§""4§ = param1;
         var _loc6_:Number = param2 - this.§%W§;
         this.§%W§ = param2;
         this.§"X§ = param3;
         this.§5]§ += _loc6_;
         this.§;!3§ += _loc6_;
         this.§`-§ += _loc5_;
         this.§43§ += _loc5_;
         if(param4)
         {
            this.§ !i§(0);
         }
         this.§@!K§ = true;
      }
      
      protected function §5!r§() : Number
      {
         return this.§-!V§ / this.§?!;§;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§-T§ = this.mBirds[this.mNextBirdIndex];
         var _loc3_:Number = this.§5!r§();
         if(_loc2_)
         {
            _loc1_ = _loc2_.§`!$§;
         }
         return _loc1_ * _loc3_;
      }
      
      public function getPosition() : Point
      {
         var _loc1_:§-T§ = null;
         if(this.mBirds.length > this.mNextBirdIndex)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §'n§() : Point
      {
         return new Point(this.§`-§,this.§5]§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§-T§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§@!K§)
         {
            this.§ !i§(param1);
         }
         this.§&Q§ -= param1;
         if(this.§&Q§ < 0)
         {
            this.§&Q§ = 0;
         }
         if(this.mSlingShotState != § !l§)
         {
            this.§^"=§(param1,param2);
            _loc3_ = null;
            if(this.mBirds.length > 0)
            {
               _loc3_ = this.mBirds[this.mNextBirdIndex];
            }
            if(_loc3_)
            {
               _loc3_.§ !S§(param1);
            }
            if(!_loc3_)
            {
               this.§=i§(§ !l§);
            }
            else if(this.mSlingShotState == §95§)
            {
               if(this.§&Q§ <= 0)
               {
                  this.§=i§(§ !?§);
                  _loc3_.§8I§();
               }
            }
            else if(this.mSlingShotState == § !?§)
            {
               if(_loc3_.§#!D§)
               {
                  this.§=i§(§'`§);
               }
            }
            else if(this.mSlingShotState == §'`§)
            {
               _loc4_ = this.§!"3§ - _loc3_.radius * Math.cos(this.§-!s§ / (180 / Math.PI));
               _loc5_ = this.§>"%§ + _loc3_.radius * Math.sin(this.§-!s§ / (180 / Math.PI));
               if(this.mDragging)
               {
                  _loc3_.setPosition(_loc4_,_loc5_,180 - this.§-!s§);
               }
               else
               {
                  _loc3_.setPosition(_loc4_,_loc5_,this.angle);
               }
               if(this.§`[§)
               {
                  this.shootCurrentBird(this.§5!r§(),this.§-!s§);
               }
            }
         }
      }
      
      public function §'!n§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§-T§ = null;
         if(this.mBirds.length > 0)
         {
            _loc5_ = this.mBirds[this.mNextBirdIndex];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2,180 - this.§-!s§);
         this.shootCurrentBird(param3,param4);
      }
      
      public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         var _loc3_:§-T§ = null;
         if(this.mBirds.length > this.mNextBirdIndex)
         {
            _loc3_ = this.mBirds[this.mNextBirdIndex];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§`[§ = false;
         this.§=;§ = new Date().time;
         this.§?>§.§3!<§(_loc3_,param1,param2);
         this.§9!^§(this.mNextBirdIndex,_loc3_.§@!Y§ > 0);
         this.playBirdShotSound();
         if(this.mNextBirdIndex >= this.mBirds.length)
         {
            this.§=i§(§ !l§);
         }
         else
         {
            this.§=i§(§95§);
         }
         dispatchEvent(new Event(§5"6§));
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §<!O§.playSound("BirdShot" + _loc1_);
      }
      
      public function §^"=§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.mNextBirdIndex;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.mBirds.length)
         {
            this.mBirds[_loc4_].update(param1,this.mSlingShotState == §7!y§,param2);
            _loc4_++;
         }
      }
      
      public function getCurrentBirdType() : String
      {
         var _loc1_:§-T§ = null;
         if(this.mNextBirdIndex < this.mBirds.length)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
            return _loc1_.name;
         }
         return null;
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§-T§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§[!P§();
         if(this.§;w§ >= this.mBirds.length)
         {
            return false;
         }
         _loc1_ = this.mBirds[this.§;w§];
         _loc1_.§ @§(-1,true);
         _loc2_ = this.§?>§.levelItemManager.getItem(_loc1_.name).score;
         this.showScoreForRemainingBird(_loc1_,_loc2_);
         ++this.§;w§;
         return true;
      }
      
      protected function showScoreForRemainingBird(param1:§-T§, param2:int) : void
      {
         this.§?>§.addScore(param2,§!!t§.§9j§,true,param1.x,param1.y - 3,§2!V§.§-"§(param1.name));
      }
      
      public function §@![§() : int
      {
         var _loc2_:§-T§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mBirds)
         {
            _loc1_ += this.§?>§.levelItemManager.getItem(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §`!§() : int
      {
         return this.§>!a§;
      }
      
      protected function §]L§() : void
      {
         var _loc4_:int = 0;
         var _loc1_:int = 1000;
         var _loc2_:Number = Math.cos(this.§"X§ + Math.PI / 2) * this.§2u§;
         var _loc3_:Number = Math.sin(this.§"X§ + Math.PI / 2) * this.§2u§;
         while((_loc4_ = this.§?>§.objects.§+!F§(this.§`-§ + _loc2_,this.§5]§ + _loc3_)) == -1)
         {
            this.applyGravity(0.1);
            if(_loc1_-- <= 0)
            {
               break;
            }
         }
         this.§5d§ = -1;
      }
      
      public function §2[§(param1:Number, param2:Number) : void
      {
         this.§]!$§.x = -param1;
         this.§]!$§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §'`§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function get canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §'`§ && this.§5!r§() >= §1!3§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§=i§(§'`§);
         var _loc1_:§-T§ = this.mBirds[this.mNextBirdIndex];
         _loc1_.§ @§(§=C§.§1<§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§-T§ = this.mBirds[this.mNextBirdIndex];
         _loc1_.§ @§(§=C§.§=!r§);
      }
      
      public function shoot() : void
      {
         this.§`[§ = true;
      }
      
      protected function §9!^§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§-T§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.mBirds[param1])
         {
            _loc3_ = this.mBirds[param1];
            this.§]G§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.showDestructionParticles(this.mBirds[param1]);
            }
            _loc3_.dispose();
            this.mBirds[param1] = null;
         }
         this.mBirds.splice(param1,1);
      }
      
      protected function showDestructionParticles(param1:§-T§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §^g§.§5!-§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §^g§.§5!-§) + Math.random() * -_loc8_ * 2;
            this.§?>§.particles.§%!y§(§2!V§.§^"9§,§0"@§.§3!W§,§2!V§.§#!N§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§2!V§.§+9§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§?>§.particles.§%!y§(§2!V§.§7G§,§0"@§.§3!W§,§2!V§.§#!N§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §!!m§(param1:§-T§) : void
      {
         this.§9!^§(this.mBirds.indexOf(param1));
      }
      
      public function §`k§() : void
      {
         var _loc2_:§-T§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§-T§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.mBirds.length - 1)
         {
            _loc3_ = Math.sqrt((this.§""4§ - this.mBirds[_loc1_].x) * (this.§""4§ - this.mBirds[_loc1_].x) + (this.§%W§ - this.mBirds[_loc1_].y) * (this.§%W§ - this.mBirds[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§""4§ - this.mBirds[_loc1_ + 1].x) * (this.§""4§ - this.mBirds[_loc1_ + 1].x) + (this.§%W§ - this.mBirds[_loc1_ + 1].y) * (this.§%W§ - this.mBirds[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.mBirds[_loc1_];
               this.mBirds.splice(_loc1_,1);
               this.mBirds.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§]G§.numChildren > 0)
         {
            this.§]G§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.mBirds.length)
         {
            _loc2_ = this.mBirds[_loc1_];
            this.§]G§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function § !0§(param1:Number, param2:Number) : §-T§
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
      
      public function §6D§(param1:Number, param2:Number) : §3!n§
      {
         if(param1 >= this.§""4§ - this.§?!;§ / 4 && param1 <= this.§""4§ + this.§?!;§ / 4 && param2 >= this.§%W§ - this.§?!;§ / 4 && this.§%W§ <= this.§%W§ + this.§2u§)
         {
            return this;
         }
         return null;
      }
      
      public function writeSlingshotInformation(param1:§#b§) : void
      {
         var _loc3_:§-T§ = null;
         var _loc4_:§%![§ = null;
         param1.slingshotX = this.§""4§;
         param1.slingshotY = this.§%W§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc3_ = this.mBirds[_loc2_];
            (_loc4_ = new §%![§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.type = _loc3_.name;
            param1.§?J§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §3i§() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§!!m§(this.mBirds[0]);
         }
      }
      
      public function §#&§(param1:Point, param2:Point) : Array
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
         if(this.§""4§ > param1.x && this.§""4§ < param2.x && this.§%W§ > param1.y && this.§%W§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §00§(param1:String, param2:Number, param3:Number, param4:Number) : §-T§
      {
         var _loc5_:§-T§ = this.§>"+§(param1,param2,param3,param4);
         this.§`k§();
         return _loc5_;
      }
      
      public function §=`§() : Number
      {
         return this.mBirds.length;
      }
   }
}
