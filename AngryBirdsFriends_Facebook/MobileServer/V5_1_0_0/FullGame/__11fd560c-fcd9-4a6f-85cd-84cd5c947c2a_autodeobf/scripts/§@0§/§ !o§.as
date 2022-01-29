package §@0§
{
   import §!'§.§@>§;
   import §!'§.§[p§;
   import §8"L§.§4U§;
   import §9$;§.Texture;
   import §;$3§.§>f§;
   import §>M§.§3Y§;
   import §@!M§.§!"p§;
   import §]!6§.§6Y§;
   import §^"S§.DisplayObject;
   import §^"S§.Image;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § !o§ extends EventDispatcher
   {
      
      public static const §+#l§:String = "slingshot_shot_bird";
      
      private static const §'!A§:int = 1800;
      
      public static const §^T§:Number = 0.4;
      
      public static const §=z§:int = 0;
      
      public static const §6#G§:int = 1;
      
      public static const §3#2§:int = 2;
      
      public static const §2"j§:int = 3;
      
      public static const §3"'§:int = 5;
      
      public static const §]"R§:int = 6;
      
      public static const §4#-§:int = 3151368;
      
      protected static var §&=§:Texture;
      
      protected static var §=#`§:Texture;
       
      
      protected var §;5§:§0$2§;
      
      protected var §=#N§:§%!q§;
      
      protected var §8u§:Number;
      
      protected var §!#§:Number;
      
      protected var §9v§:Number;
      
      protected var §^!-§:Number = 8.5;
      
      protected var §=!H§:Number;
      
      protected var §8"[§:Number;
      
      protected var §"#V§:Number;
      
      protected var §4#]§:Number;
      
      protected var §8!B§:Number = 1.0;
      
      protected var §[#J§:Boolean;
      
      protected var §`"P§:Boolean;
      
      protected var §#!?§:Boolean;
      
      protected var §"#8§:Boolean = false;
      
      public var mBirds:Vector.<§4!_§>;
      
      public var mNextBirdIndex:int;
      
      protected var §4f§:int = 0;
      
      protected var §"[§:int;
      
      protected var §each §:Number;
      
      public var §0"C§:Sprite;
      
      protected var §[n§:Sprite;
      
      public var §;#F§:int = 0;
      
      protected var §%"e§:Number = 0;
      
      public var mSlingShotState:int;
      
      public var §+!0§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §7#p§:Boolean = false;
      
      public var §[$7§:Number;
      
      protected var §4"D§:Sprite;
      
      protected var §]$#§:Sprite;
      
      protected var §?"k§:Sprite;
      
      protected var §-#O§:DisplayObject;
      
      protected var §7!U§:Sprite;
      
      protected var §""=§:DisplayObject;
      
      protected var §%"k§:Sprite;
      
      protected var §0n§:DisplayObject;
      
      protected var §@!R§:Sprite;
      
      protected var §-#K§:Sprite;
      
      protected var §8!;§:DisplayObject;
      
      private var §0$ §:Number = 0;
      
      private var §7!g§:Number = 0;
      
      private var §1##§:Number = -1;
      
      private var §0!T§:Number = 0;
      
      private var §#y§:Boolean = false;
      
      private var §7"F§:int = 0;
      
      public function § !o§(param1:§%!q§, param2:§>f§, param3:Sprite, param4:Number = 1.0, param5:Boolean = true, param6:Boolean = true, param7:Boolean = false)
      {
         var _loc8_:int = 0;
         var _loc9_:§3Y§ = null;
         this.mBirds = new Vector.<§4!_§>();
         super();
         this.§=#N§ = param1;
         this.§4"D§ = param3;
         this.§8!B§ = param4;
         this.§[#J§ = param5;
         this.§`"P§ = param6;
         this.§#!?§ = param7;
         if(param2)
         {
            this.setPosition(param2.slingshotX,param2.slingshotY,param2.§^!w§);
            this.§&"8§();
            _loc8_ = 0;
            while(_loc8_ < param2.§,!_§)
            {
               _loc9_ = param2.§;!h§(_loc8_);
               this.addSlingshotObject(_loc9_.type,_loc9_.x,_loc9_.y,_loc9_.angle,_loc8_);
               _loc8_++;
            }
            this.§7"F§ = this.§+&§();
            this.mNextBirdIndex = 0;
            if(this.mBirds.length <= 0)
            {
               §6Y§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§8u§ + " " + this.§!#§);
               this.setSlingShotState(§2"j§);
            }
            else
            {
               this.setSlingShotState(§=z§);
            }
         }
         else
         {
            §6Y§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.setSlingShotState(§2"j§);
         }
         this.§[$7§ = 0;
         this.sortBirds();
         this.update(0,true);
         this.§!$!§();
         this.updateAnimations(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§4"D§;
      }
      
      public function get aimingLineSprite() : Sprite
      {
         return this.§[n§;
      }
      
      public function get §@#4§() : Number
      {
         return this.§0$ §;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.mNextBirdIndex < this.mBirds.length;
      }
      
      public function get shootingAngle() : Number
      {
         return this.§%"e§;
      }
      
      public function get §%!'§() : Number
      {
         return this.§7!g§;
      }
      
      public function get x() : Number
      {
         return this.§8u§;
      }
      
      public function get y() : Number
      {
         return this.§!#§;
      }
      
      public function get angle() : Number
      {
         return this.§9v§;
      }
      
      public function get §7L§() : Boolean
      {
         return this.§`"P§;
      }
      
      public function get §3O§() : Boolean
      {
         return this.§#!?§;
      }
      
      public function dispose() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§-B§(0);
         }
         this.mBirds = null;
         if(this.§4"D§)
         {
            this.§4"D§.dispose();
            this.§4"D§ = null;
         }
         this.§0"C§ = null;
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§-#O§)
         {
            this.§-#O§.color = param1;
         }
         if(this.§8!;§)
         {
            this.§8!;§.color = param1;
         }
      }
      
      public function addBirdStraightIntoSlingshot(param1:String, param2:Number, param3:Number, param4:int) : §4!_§
      {
         var _loc6_:§4!_§ = null;
         if(this.mBirds.length > 0)
         {
            (_loc6_ = this.mBirds[0]).§>!d§(false);
            _loc6_.animationsEnabled = false;
         }
         var _loc5_:§4!_§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,0,param4)).§>!d§(true);
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §4!_§
      {
         var _loc6_:§4U§ = this.§=#N§.levelItemManager.getItem(param1);
         var _loc7_:Sprite;
         (_loc7_ = new Sprite()).scaleX = _loc6_.scale;
         _loc7_.scaleY = _loc6_.scale;
         var _loc8_:§4!_§ = this.initializeSlingshotObject(_loc6_,param2,param3,param4,_loc7_,param5);
         if(param5 < 0)
         {
            this.mBirds.push(_loc8_);
         }
         else
         {
            this.mBirds.splice(param5,0,_loc8_);
         }
         ++this.§4f§;
         this.§0"C§.addChild(_loc8_.sprite);
         return _loc8_;
      }
      
      protected function initializeSlingshotObject(param1:§4U§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §4!_§
      {
         return new §4!_§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
      }
      
      public function setSlingShotState(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §=z§)
         {
            this.§[##§();
            this.§each § = 1000;
         }
         else if(this.mSlingShotState == §6#G§)
         {
            this.§[##§();
            this.§each § = 0;
         }
         else if(this.mSlingShotState == §3#2§)
         {
            this.§each § = 10000;
            this.§7#p§ = false;
            this.§[##§();
         }
         else if(this.mSlingShotState == §2"j§)
         {
            this.§[##§();
            this.§each § = 2000;
         }
         else if(this.mSlingShotState == §3"'§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§7#p§ = false;
               this.§[##§();
               this.mBirds[this.mNextBirdIndex].setPosition(this.§`#x§ - this.mBirds[this.mNextBirdIndex].radius * Math.cos(this.§%"e§ / (180 / Math.PI)),this.§"#'§ + this.mBirds[this.mNextBirdIndex].radius * Math.sin(this.§%"e§ / (180 / Math.PI)),180 - this.§%"e§);
            }
            else
            {
               this.§[##§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §'"`§() : §%!q§
      {
         return this.§=#N§;
      }
      
      public function §6#2§() : Boolean
      {
         return this.mSlingShotState == §2"j§ && this.§each § <= 0;
      }
      
      protected function getSlingshotAnimation() : §0$2§
      {
         return this.§=#N§.animationManager.getAnimation("SLINGSHOT");
      }
      
      private function §&"8§() : void
      {
         this.§;5§ = this.getSlingshotAnimation();
         this.§-#O§ = this.§;5§.getFrame(0);
         this.§-#O§.pivotX = -3;
         this.§-#O§.pivotY = -24;
         this.§8!;§ = this.§;5§.getFrame(1);
         this.§8!;§.pivotX = -30;
         this.§8!;§.pivotY = -30;
         this.§,$'§();
         this.§1$=§();
         this.§]$#§ = new Sprite();
         this.§]$#§.addChild(this.§-#O§);
         this.§]$#§.addChild(this.§7!U§);
         this.§[n§ = new Sprite();
         this.§0"C§ = new Sprite();
         this.§?"k§ = new Sprite();
         this.§?"k§.addChild(this.§@!R§);
         this.§?"k§.addChild(this.§%"k§);
         this.§?"k§.addChild(this.§8!;§);
         this.§9#y§();
      }
      
      protected function §9#y§() : void
      {
         this.§4"D§.addChild(this.§]$#§);
         this.§4"D§.addChild(this.§[n§);
         this.§4"D§.addChild(this.§0"C§);
         this.§4"D§.addChild(this.§?"k§);
      }
      
      public function §,$'§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§=!H§ = this.§8u§;
         this.§8"[§ = this.§!#§;
         this.§4#]§ = §1#7§.§%!T§;
         _loc1_ = null;
      }
      
      private function §9'§(param1:uint) : void
      {
         var _loc2_:BitmapData = new BitmapData(2,2,true,4278190080 | param1);
         if(§=#`§)
         {
            this.§=#N§.textureManager.unregisterBitmapDataTexture(§=#`§);
         }
         §=#`§ = this.§=#N§.textureManager.getTextureFromBitmapData(_loc2_);
      }
      
      protected function §,b§() : DisplayObject
      {
         return new Image(§=#`§);
      }
      
      protected function §]!2§(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc3_:BitmapData = null;
         if(!§&=§ || param2)
         {
            _loc3_ = new BitmapData(18,26,true,4278190080 | param1);
            if(§&=§)
            {
               this.§=#N§.textureManager.unregisterBitmapDataTexture(§&=§);
            }
            §&=§ = this.§=#N§.textureManager.getTextureFromBitmapData(_loc3_);
         }
         return new Image(§&=§);
      }
      
      protected function §1$=§(param1:uint = 3151368, param2:uint = 3151368, param3:Boolean = false) : void
      {
         this.§@!R§ = new Sprite();
         this.§-#K§ = new Sprite();
         var _loc4_:DisplayObject;
         (_loc4_ = this.§]!2§(param2,param3)).rotation = Math.PI;
         _loc4_.x = _loc4_.width / 2;
         _loc4_.y = _loc4_.height / 2;
         this.§-#K§.addChild(_loc4_);
         this.§@!R§.addChild(this.§-#K§);
         this.§7!U§ = new Sprite();
         this.§7!U§.x = 22;
         this.§7!U§.y = 0;
         this.§9'§(param1);
         this.§""=§ = this.§,b§();
         this.§7!U§.addChild(this.§""=§);
         this.§%"k§ = new Sprite();
         this.§%"k§.x = -17;
         this.§%"k§.y = 5;
         this.§0n§ = this.§,b§();
         this.§%"k§.addChild(this.§0n§);
      }
      
      protected function updateAnimations(param1:Number) : void
      {
         var _loc2_:Number = (this.§"#'§ - this.§!#§) / §%!q§.§6q§;
         var _loc3_:Number = (this.§`#x§ - this.§8u§) / §%!q§.§6q§;
         var _loc4_:Number = Math.cos(this.§9v§);
         var _loc5_:Number = Math.sin(this.§9v§);
         var _loc6_:Number = -Math.sin(this.§9v§);
         var _loc7_:Number = Math.cos(this.§9v§);
         var _loc8_:Number = _loc3_;
         var _loc9_:Number = _loc2_;
         _loc3_ = _loc8_ * _loc4_ + _loc9_ * _loc5_;
         _loc2_ = _loc8_ * _loc6_ + _loc9_ * _loc7_;
         var _loc10_:Number = 3.5 + 8 * ((this.§4#]§ - this.§]"4§) / this.§4#]§);
         this.§@!R§.x = _loc3_;
         this.§@!R§.y = _loc2_;
         this.§@!R§.rotation = -this.§9v§ - this.§%"e§ / (180 / Math.PI);
         this.§]$#§.x = this.§8u§ / §%!q§.§6q§;
         this.§]$#§.y = this.§!#§ / §%!q§.§6q§;
         this.§]$#§.rotation = this.§9v§;
         this.§?"k§.x = this.§8u§ / §%!q§.§6q§;
         this.§?"k§.y = this.§!#§ / §%!q§.§6q§;
         this.§?"k§.rotation = this.§9v§;
         this.§%"k§.rotation = Math.atan2(_loc2_ - this.§%"k§.y,_loc3_ - this.§%"k§.x);
         this.§0n§.width = Math.sqrt(Math.pow(_loc3_ - this.§%"k§.x,2) + Math.pow(_loc2_ - this.§%"k§.y,2));
         this.§0n§.height = _loc10_ * 2;
         this.§0n§.y = -this.§0n§.height / 2;
         this.§7!U§.rotation = Math.atan2(_loc2_ - this.§7!U§.y,_loc3_ - this.§7!U§.x);
         this.§""=§.width = Math.sqrt(Math.pow(_loc3_ - this.§7!U§.x,2) + Math.pow(_loc2_ - this.§7!U§.y,2));
         this.§""=§.height = _loc10_ * 2;
         this.§""=§.y = -this.§""=§.height / 2;
         this.§+!0§ = false;
      }
      
      public function useMightyEagle() : §4!_§
      {
         var _loc2_:§4!_§ = null;
         while(this.mBirds.length > 0)
         {
            this.§-B§(0,true);
         }
         this.§%§();
         if(this.mBirds.length > 0)
         {
            _loc2_ = this.mBirds[0];
            _loc2_.§>!d§(false);
         }
         var _loc1_:§4!_§ = this.addSlingshotObject("BIRD_SARDINE",this.§8u§,this.§!#§,0);
         _loc1_.§>!d§(true);
         _loc1_.animationsEnabled = false;
         this.setSlingShotState(§3#2§);
         return _loc1_;
      }
      
      protected function §%§() : void
      {
         §!"p§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.setSlingShotState(§3"'§);
      }
      
      public function §[##§() : void
      {
         this.setNewCoordinatesForRubber(this.§=!H§,this.§8"[§ + this.§4#]§ / 8);
      }
      
      protected function get §8"z§() : Number
      {
         return this.§"#V§ * this.§8!B§;
      }
      
      protected function get §]"4§() : Number
      {
         return Math.min(this.§"#V§,this.§4#]§);
      }
      
      protected function get §`#x§() : Number
      {
         if(this.§"#V§ >= this.§4#]§)
         {
            return this.§=!H§ + this.§4#]§ * Math.cos(this.§%"e§ / 180 * Math.PI);
         }
         return this.§=!H§ + this.§"#V§ * Math.cos(this.§%"e§ / 180 * Math.PI);
      }
      
      protected function get §"#'§() : Number
      {
         if(this.§"#V§ >= this.§4#]§)
         {
            return this.§8"[§ - this.§4#]§ * Math.sin(this.§%"e§ / 180 * Math.PI);
         }
         return this.§8"[§ - this.§"#V§ * Math.sin(this.§%"e§ / 180 * Math.PI);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         if(this.§1##§ > 0)
         {
            return false;
         }
         var _loc4_:Number = param1 - this.§=!H§;
         var _loc5_:Number = param2 - this.§8"[§;
         var _loc6_:Number;
         if((_loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) * this.§8!B§ > this.§4#]§)
         {
            if(param3)
            {
               return false;
            }
            _loc6_ = this.§4#]§ / this.§8!B§;
         }
         var _loc7_:Number = (_loc7_ = Math.atan2(-(param2 - this.§8"[§),param1 - this.§=!H§)) * (180 / Math.PI);
         if(!this.mDragging && this.§1##§ < 0)
         {
            _loc6_ = 0.8;
            _loc7_ = -160;
         }
         if(this.§[#J§)
         {
            _loc6_ = this.§3!I§(_loc6_);
         }
         return this.§>"i§(_loc7_,_loc6_);
      }
      
      protected function §3!I§(param1:Number) : Number
      {
         var _loc6_:Number = NaN;
         var _loc5_:Number = this.§4#]§ / 2;
         if(param1 > _loc5_)
         {
            if(this.§%"e§ > -90 - 12 + 5 && this.§%"e§ < -90 + 12 + 5)
            {
               return _loc5_;
            }
            if(this.§%"e§ > -90 - 12 - 4 + 5 && this.§%"e§ < -90 + 12 + 4 + 5)
            {
               return Number(_loc5_ + (this.§4#]§ - _loc5_) * (Math.abs(this.§%"e§ - -90 - 5) - 12) / 4);
            }
         }
         return param1;
      }
      
      protected function §>"i§(param1:Number, param2:Number) : Boolean
      {
         this.§%"e§ = param1;
         this.§"#V§ = param2;
         if(this.§"#V§ <= this.§4#]§ * 0.45)
         {
            this.§"#8§ = true;
         }
         else if(this.§"#8§ && this.§"#V§ >= this.§4#]§ * 0.8)
         {
            this.playStretchSound();
            this.§"#8§ = false;
         }
         this.§+!0§ = true;
         return true;
      }
      
      protected function playStretchSound() : void
      {
         §!"p§.playSound("SlingshotStreched");
      }
      
      protected function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§8u§ + param1 * Math.cos(this.§9v§ + Math.PI / 2),this.§!#§ + param1 * Math.sin(this.§9v§ + Math.PI / 2),this.§9v§);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc5_:Number = param1 - this.§8u§;
         this.§8u§ = param1;
         var _loc6_:Number = param2 - this.§!#§;
         this.§!#§ = param2;
         this.§9v§ = param3;
         this.§8"[§ += _loc6_;
         this.§=!H§ += _loc5_;
         if(param4)
         {
            this.updateAnimations(0);
         }
         this.§+!0§ = true;
      }
      
      protected function §<6§() : Number
      {
         return this.§8"z§ / this.§4#]§;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§4!_§ = this.mBirds[this.mNextBirdIndex];
         var _loc3_:Number = this.§<6§();
         if(_loc2_)
         {
            _loc1_ = _loc2_.§-$0§;
         }
         return _loc1_ * _loc3_;
      }
      
      public function getPosition() : Point
      {
         var _loc1_:§4!_§ = null;
         if(this.mBirds.length > this.mNextBirdIndex)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §@"k§() : Point
      {
         return new Point(this.§=!H§,this.§8"[§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§4!_§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.§[#4§(param1);
         if(this.§+!0§)
         {
            this.updateAnimations(param1);
         }
         this.§each § -= param1;
         if(this.§each § < 0)
         {
            this.§each § = 0;
         }
         if(this.mSlingShotState != §2"j§)
         {
            this.§'#,§(param1,param2);
            _loc3_ = null;
            if(this.mBirds.length > 0)
            {
               _loc3_ = this.mBirds[this.mNextBirdIndex];
            }
            if(_loc3_)
            {
               _loc3_.approachSlingshot(param1);
            }
            if(!_loc3_)
            {
               this.setSlingShotState(§2"j§);
            }
            else if(this.mSlingShotState == §=z§)
            {
               if(this.§each § <= 0)
               {
                  this.setSlingShotState(§6#G§);
                  _loc3_.§+"j§();
               }
            }
            else if(this.mSlingShotState == §6#G§)
            {
               if(_loc3_.§1"U§)
               {
                  this.setSlingShotState(§3#2§);
               }
            }
            else if(this.mSlingShotState == §3#2§)
            {
               _loc4_ = this.§`#x§ - _loc3_.radius * Math.cos(this.§%"e§ / (180 / Math.PI));
               _loc5_ = this.§"#'§ + _loc3_.radius * Math.sin(this.§%"e§ / (180 / Math.PI));
               if(this.mDragging || this.§1##§ >= 0)
               {
                  _loc3_.setPosition(_loc4_,_loc5_,180 - this.§%"e§);
               }
               else
               {
                  _loc3_.setPosition(_loc4_,_loc5_,this.angle);
               }
               if(this.§7#p§)
               {
                  this.shootCurrentBird(this.§<6§(),this.§%"e§);
               }
            }
         }
      }
      
      public function §+$<§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§4!_§ = null;
         if(this.mBirds.length > 0)
         {
            _loc5_ = this.mBirds[this.mNextBirdIndex];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2,180 - this.§%"e§);
         this.shootCurrentBird(param3,param4);
      }
      
      protected function shootBird() : void
      {
         this.§#y§ = false;
         var _loc1_:§4!_§ = null;
         if(this.mBirds.length > this.mNextBirdIndex)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
         }
         if(!_loc1_)
         {
            return;
         }
         this.§0$ § = new Date().time;
         this.§=#N§.shootBird(_loc1_,this.§7!g§,this.§%"e§);
         this.§-B§(this.mNextBirdIndex,_loc1_.§'"]§ > 0);
         this.playBirdShotSound();
         if(this.mNextBirdIndex >= this.mBirds.length)
         {
            this.setSlingShotState(§2"j§);
         }
         else
         {
            this.setSlingShotState(§=z§);
         }
         dispatchEvent(new Event(§+#l§));
      }
      
      protected function §[#4§(param1:Number) : void
      {
         if(this.§1##§ <= 0)
         {
            return;
         }
         this.§+!0§ = true;
         this.§1##§ -= param1;
         if(this.§1##§ <= 0)
         {
            this.§1##§ = 0;
         }
         var _loc2_:Number = this.§1##§ / §'!A§;
         var _loc3_:Number = this.§0!T§ * Math.cos(_loc2_ * Math.PI * 8) * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_;
         this.§>"i§(this.§%"e§,_loc3_);
         if(this.§1##§ == 0)
         {
            this.§1##§ = -1;
            this.§[##§();
         }
         if(this.§#y§)
         {
            this.shootBird();
         }
      }
      
      public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         this.§7!g§ = param1;
         this.§%"e§ = param2;
         this.§1##§ = §'!A§;
         this.§0!T§ = this.§"#V§;
         this.mDragging = false;
         this.§7#p§ = false;
         this.§#y§ = true;
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §!"p§.playSound("bird_shot-a" + _loc1_);
      }
      
      public function §'#,§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.mNextBirdIndex;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.mBirds.length)
         {
            this.mBirds[_loc4_].update(param1,this.mSlingShotState == §3"'§,param2);
            _loc4_++;
         }
      }
      
      public function getCurrentBirdType() : String
      {
         var _loc1_:§4!_§ = null;
         if(this.mNextBirdIndex < this.mBirds.length)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
            return _loc1_.name;
         }
         return null;
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§4!_§ = null;
         this.mDragging = false;
         this.§[##§();
         if(this.§"[§ >= this.mBirds.length)
         {
            return false;
         }
         _loc1_ = this.mBirds[this.§"[§];
         if(_loc1_.§;#t§)
         {
            _loc1_.§]"^§(true);
            this.showScoreForRemainingBird(_loc1_,this.§=#N§.levelItemManager.getItem(_loc1_.name).destroyedScoreInc);
            this.mBirds[this.§"[§].scoreCounted = true;
            ++this.§"[§;
         }
         else
         {
            this.mBirds[this.§"[§].scoreCounted = false;
            ++this.§"[§;
         }
         return true;
      }
      
      protected function showScoreForRemainingBird(param1:§4!_§, param2:int) : void
      {
         this.§=#N§.addScore(param2,§&"A§.§9"G§,true,param1.x,param1.y - 3,§@>§.§9#N§(param1.name),param1.levelItem.floatingScoreFont);
      }
      
      public function §+&§() : int
      {
         var _loc2_:§4!_§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mBirds)
         {
            _loc1_ += this.§=#N§.levelItemManager.getItem(_loc2_.name).destroyedScoreInc;
         }
         return _loc1_;
      }
      
      public function §4$-§() : int
      {
         var _loc2_:§4!_§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mBirds)
         {
            if(!_loc2_.scoreCounted)
            {
               _loc1_ += this.§=#N§.levelItemManager.getItem(_loc2_.name).destroyedScoreInc;
            }
         }
         return _loc1_;
      }
      
      public function §8,§() : int
      {
         return this.§7"F§;
      }
      
      protected function §!$!§() : void
      {
         var _loc4_:int = 0;
         var _loc1_:int = 1000;
         var _loc2_:Number = Math.cos(this.§9v§ + Math.PI / 2) * this.§^!-§;
         var _loc3_:Number = Math.sin(this.§9v§ + Math.PI / 2) * this.§^!-§;
         while((_loc4_ = this.§=#N§.objects.§;""§(this.§=!H§ + _loc2_,this.§8"[§ + _loc3_)) == -1)
         {
            this.applyGravity(0.1);
            if(_loc1_-- <= 0)
            {
               break;
            }
         }
         this.§[$7§ = -1;
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§4"D§.x = -param1;
         this.§4"D§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §3#2§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function get canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §3#2§ && this.§<6§() >= §^T§ && this.§1##§ < 0;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.setSlingShotState(§3#2§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
      }
      
      public function shoot() : void
      {
         this.§7#p§ = true;
      }
      
      protected function §-B§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§4!_§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.mBirds[param1])
         {
            _loc3_ = this.mBirds[param1];
            this.§0"C§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.showDestructionParticles(this.mBirds[param1]);
            }
            _loc3_.dispose();
            this.mBirds[param1] = null;
         }
         this.mBirds.splice(param1,1);
      }
      
      protected function showDestructionParticles(param1:§4!_§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §%!q§.§6q§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §%!q§.§6q§) + Math.random() * -_loc8_ * 2;
            this.§=#N§.particles.addParticle(§@>§.§5Y§,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,param1.x + _loc7_,param1.y + _loc8_,1500,"",§@>§.getParticleMaterialFromEngineMaterial(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§=#N§.particles.addParticle(§@>§.§5#;§,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:§4!_§) : void
      {
         this.§-B§(this.mBirds.indexOf(param1));
      }
      
      public function sortBirds() : void
      {
         var _loc1_:§4!_§ = null;
         this.mBirds.sort(this.§!!§);
         while(this.§0"C§.numChildren > 0)
         {
            this.§0"C§.removeChildAt(0);
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_ = this.mBirds[_loc2_];
            this.§0"C§.addChildAt(_loc1_.sprite,0);
            _loc2_++;
         }
      }
      
      private function §!!§(param1:§4!_§, param2:§4!_§) : Number
      {
         if(param1.launchIndex < param2.launchIndex)
         {
            return -1;
         }
         if(param1.launchIndex > param2.launchIndex)
         {
            return 1;
         }
         return 0;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §4!_§
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
      
      public function §+!T§(param1:Number, param2:Number) : § !o§
      {
         if(param1 >= this.§8u§ - this.§4#]§ / 4 && param1 <= this.§8u§ + this.§4#]§ / 4 && param2 >= this.§!#§ - this.§4#]§ / 4 && param2 <= this.§!#§ + this.§^!-§)
         {
            return this;
         }
         return null;
      }
      
      public function §=!T§(param1:§>f§) : void
      {
         var _loc3_:§4!_§ = null;
         var _loc4_:§3Y§ = null;
         param1.slingshotX = this.§8u§;
         param1.slingshotY = this.§!#§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc3_ = this.mBirds[_loc2_];
            (_loc4_ = new §3Y§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.type = _loc3_.name;
            param1.§;,§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §0#Z§() : void
      {
         while(this.mBirds.length > 0)
         {
            this.removeObject(this.mBirds[0]);
         }
      }
      
      public function §2"`§(param1:Point, param2:Point) : Array
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
         if(this.§8u§ > param1.x && this.§8u§ < param2.x && this.§!#§ > param1.y && this.§!#§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §=!b§(param1:String, param2:Number, param3:Number, param4:Number) : §4!_§
      {
         var _loc5_:§4!_§ = this.addSlingshotObject(param1,param2,param3,param4);
         this.§<#j§();
         return _loc5_;
      }
      
      public function §]$>§() : int
      {
         return this.mBirds.length;
      }
      
      public function §`!R§() : int
      {
         return this.§4f§;
      }
      
      public function §<#j§() : void
      {
         this.mBirds.sort(this.§`"p§);
         var _loc1_:int = 0;
         while(_loc1_ < this.mBirds.length)
         {
            this.mBirds[_loc1_].launchIndex = _loc1_;
            _loc1_++;
         }
         this.mNextBirdIndex = 0;
      }
      
      private function §`"p§(param1:§4!_§, param2:§4!_§) : Number
      {
         var _loc3_:Number = Math.pow(param1.x - this.§8u§,2) + Math.pow(param1.y - this.§!#§,2);
         var _loc4_:Number = Math.pow(param2.x - this.§8u§,2) + Math.pow(param2.y - this.§!#§,2);
         return _loc3_ - _loc4_;
      }
   }
}
