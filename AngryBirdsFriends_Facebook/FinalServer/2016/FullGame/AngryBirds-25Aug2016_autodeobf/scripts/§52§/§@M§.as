package §52§
{
   import §!x§.§4"d§;
   import §#v§.§-"R§;
   import §,#L§.§[g§;
   import §1&§.Texture;
   import §8§.§#$+§;
   import §9$§.DisplayObject;
   import §9$§.Image;
   import §9$§.Sprite;
   import §=!7§.§5"6§;
   import §=!7§.§=$4§;
   import §@"§.§`"W§;
   import §`#C§.§0!y§;
   import §`#C§.§8K§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §@M§ extends EventDispatcher
   {
      
      public static const §4#s§:String = "slingshot_shot_bird";
      
      private static const §;$2§:int = 1800;
      
      public static const §#!m§:Number = 0.4;
      
      public static const §+!_§:int = 0;
      
      public static const §>!H§:int = 1;
      
      public static const §0!C§:int = 2;
      
      public static const §]I§:int = 3;
      
      public static const §!!R§:int = 5;
      
      public static const §&#G§:int = 6;
      
      public static const §!!V§:int = 3151368;
      
      protected static var §-o§:Texture;
      
      protected static var §-§:Texture;
       
      
      protected var §1"h§:§`"W§;
      
      protected var §,#2§:§#!,§;
      
      protected var §+!5§:Number;
      
      protected var §'! §:Number;
      
      protected var §2#!§:Number;
      
      protected var §`_§:Number = 8.5;
      
      protected var §?!h§:Number;
      
      protected var §="O§:Number;
      
      protected var §7"i§:Number;
      
      protected var §6"=§:Number;
      
      protected var §&8§:Number = 1.0;
      
      protected var §""l§:Boolean;
      
      protected var §2!s§:Boolean;
      
      protected var §@!a§:Boolean;
      
      protected var §!k§:Boolean = false;
      
      public var mBirds:Vector.<§5!&§>;
      
      public var mNextBirdIndex:int;
      
      protected var §##5§:int = 0;
      
      protected var §9!S§:int;
      
      protected var §?"i§:Number;
      
      public var §2"9§:Sprite;
      
      protected var §#V§:Sprite;
      
      public var §continue§:int = 0;
      
      protected var §,#j§:Number = 0;
      
      public var mSlingShotState:int;
      
      public var §-#@§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §]"V§:Boolean = false;
      
      public var §6z§:Number;
      
      protected var §]Y§:Sprite;
      
      protected var §^b§:Sprite;
      
      protected var § #s§:Sprite;
      
      protected var §>%§:DisplayObject;
      
      protected var §'"U§:Sprite;
      
      protected var §[#1§:DisplayObject;
      
      protected var §#!B§:Sprite;
      
      protected var §!#7§:DisplayObject;
      
      protected var §;3§:Sprite;
      
      protected var §`"s§:Sprite;
      
      protected var §3#q§:DisplayObject;
      
      private var §4!<§:Number = 0;
      
      private var §3B§:Number = 0;
      
      private var §5S§:Number = -1;
      
      private var §^"`§:Number = 0;
      
      private var §4"-§:Boolean = false;
      
      private var §`"l§:int = 0;
      
      public function §@M§(param1:§#!,§, param2:§-"R§, param3:Sprite, param4:Number = 1.0, param5:Boolean = true, param6:Boolean = true, param7:Boolean = false)
      {
         var _loc8_:int = 0;
         var _loc9_:§[g§ = null;
         this.mBirds = new Vector.<§5!&§>();
         super();
         this.§,#2§ = param1;
         this.§]Y§ = param3;
         this.§&8§ = param4;
         this.§""l§ = param5;
         this.§2!s§ = param6;
         this.§@!a§ = param7;
         if(param2)
         {
            this.setPosition(param2.slingshotX,param2.slingshotY,param2.§#$6§);
            this.§%!Y§();
            _loc8_ = 0;
            while(_loc8_ < param2.§;#w§)
            {
               _loc9_ = param2.§%#i§(_loc8_);
               this.addSlingshotObject(_loc9_.type,_loc9_.x,_loc9_.y,_loc9_.angle,_loc8_);
               _loc8_++;
            }
            this.§`"l§ = this.§%"+§();
            this.mNextBirdIndex = 0;
            if(this.mBirds.length <= 0)
            {
               §4"d§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§+!5§ + " " + this.§'! §);
               this.setSlingShotState(§]I§);
            }
            else
            {
               this.setSlingShotState(§+!_§);
            }
         }
         else
         {
            §4"d§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.setSlingShotState(§]I§);
         }
         this.§6z§ = 0;
         this.§4-§();
         this.update(0,true);
         this.§ t§();
         this.updateAnimations(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§]Y§;
      }
      
      public function get aimingLineSprite() : Sprite
      {
         return this.§#V§;
      }
      
      public function get §;H§() : Number
      {
         return this.§4!<§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.mNextBirdIndex < this.mBirds.length;
      }
      
      public function get shootingAngle() : Number
      {
         return this.§,#j§;
      }
      
      public function get §""p§() : Number
      {
         return this.§3B§;
      }
      
      public function get x() : Number
      {
         return this.§+!5§;
      }
      
      public function get y() : Number
      {
         return this.§'! §;
      }
      
      public function get angle() : Number
      {
         return this.§2#!§;
      }
      
      public function get §2"x§() : Boolean
      {
         return this.§2!s§;
      }
      
      public function get §&#z§() : Boolean
      {
         return this.§@!a§;
      }
      
      public function dispose() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§ 9§(0);
         }
         this.mBirds = null;
         if(this.§]Y§)
         {
            this.§]Y§.dispose();
            this.§]Y§ = null;
         }
         this.§2"9§ = null;
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§>%§)
         {
            this.§>%§.color = param1;
         }
         if(this.§3#q§)
         {
            this.§3#q§.color = param1;
         }
      }
      
      public function addBirdStraightIntoSlingshot(param1:String, param2:Number, param3:Number, param4:int) : §5!&§
      {
         var _loc6_:§5!&§ = null;
         if(this.mBirds.length > 0)
         {
            (_loc6_ = this.mBirds[0]).§1#j§(false);
            _loc6_.animationsEnabled = false;
         }
         var _loc5_:§5!&§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,0,param4)).§1#j§(true);
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §5!&§
      {
         var _loc6_:§8K§ = this.§,#2§.levelItemManager.getItem(param1);
         var _loc7_:Sprite;
         (_loc7_ = new Sprite()).scaleX = _loc6_.scale;
         _loc7_.scaleY = _loc6_.scale;
         var _loc8_:§5!&§ = this.initializeSlingshotObject(_loc6_,param2,param3,param4,_loc7_,param5);
         if(param5 < 0)
         {
            this.mBirds.push(_loc8_);
         }
         else
         {
            this.mBirds.splice(param5,0,_loc8_);
         }
         ++this.§##5§;
         this.§2"9§.addChild(_loc8_.sprite);
         return _loc8_;
      }
      
      protected function initializeSlingshotObject(param1:§8K§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §5!&§
      {
         return new §5!&§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
      }
      
      public function setSlingShotState(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §+!_§)
         {
            this.§'!8§();
            this.§?"i§ = 1000;
         }
         else if(this.mSlingShotState == §>!H§)
         {
            this.§'!8§();
            this.§?"i§ = 0;
         }
         else if(this.mSlingShotState == §0!C§)
         {
            this.§?"i§ = 10000;
            this.§]"V§ = false;
            this.§'!8§();
         }
         else if(this.mSlingShotState == §]I§)
         {
            this.§'!8§();
            this.§?"i§ = 2000;
         }
         else if(this.mSlingShotState == §!!R§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§]"V§ = false;
               this.§'!8§();
               this.mBirds[this.mNextBirdIndex].setPosition(this.§5"x§ - this.mBirds[this.mNextBirdIndex].radius * Math.cos(this.§,#j§ / (180 / Math.PI)),this.§0#[§ + this.mBirds[this.mNextBirdIndex].radius * Math.sin(this.§,#j§ / (180 / Math.PI)),180 - this.§,#j§);
            }
            else
            {
               this.§'!8§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §#""§() : §#!,§
      {
         return this.§,#2§;
      }
      
      public function §-!<§() : Boolean
      {
         return this.mSlingShotState == §]I§ && this.§?"i§ <= 0;
      }
      
      protected function getSlingshotAnimation() : §`"W§
      {
         return this.§,#2§.animationManager.getAnimation("SLINGSHOT");
      }
      
      private function §%!Y§() : void
      {
         this.§1"h§ = this.getSlingshotAnimation();
         this.§>%§ = this.§1"h§.getFrame(0);
         this.§>%§.pivotX = -3;
         this.§>%§.pivotY = -24;
         this.§3#q§ = this.§1"h§.getFrame(1);
         this.§3#q§.pivotX = -30;
         this.§3#q§.pivotY = -30;
         this.§^U§();
         this.§3#N§();
         this.§^b§ = new Sprite();
         this.§^b§.addChild(this.§>%§);
         this.§^b§.addChild(this.§'"U§);
         this.§#V§ = new Sprite();
         this.§2"9§ = new Sprite();
         this.§ #s§ = new Sprite();
         this.§ #s§.addChild(this.§;3§);
         this.§ #s§.addChild(this.§#!B§);
         this.§ #s§.addChild(this.§3#q§);
         this.§0!o§();
      }
      
      protected function §0!o§() : void
      {
         this.§]Y§.addChild(this.§^b§);
         this.§]Y§.addChild(this.§#V§);
         this.§]Y§.addChild(this.§2"9§);
         this.§]Y§.addChild(this.§ #s§);
      }
      
      public function §^U§() : void
      {
         new Rectangle(0,0,100,100);
         this.§?!h§ = this.§+!5§;
         this.§="O§ = this.§'! §;
         this.§6"=§ = §;!p§.§ !K§;
      }
      
      private function §3!x§(param1:uint) : void
      {
         var _loc2_:BitmapData = new BitmapData(2,2,true,4278190080 | param1);
         if(§-§)
         {
            this.§,#2§.textureManager.unregisterBitmapDataTexture(§-§);
         }
         §-§ = this.§,#2§.textureManager.getTextureFromBitmapData(_loc2_);
      }
      
      protected function §+!k§() : DisplayObject
      {
         return new Image(§-§);
      }
      
      protected function §?#z§(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc3_:BitmapData = null;
         if(!§-o§ || param2)
         {
            _loc3_ = new BitmapData(18,26,true,4278190080 | param1);
            if(§-o§)
            {
               this.§,#2§.textureManager.unregisterBitmapDataTexture(§-o§);
            }
            §-o§ = this.§,#2§.textureManager.getTextureFromBitmapData(_loc3_);
         }
         return new Image(§-o§);
      }
      
      protected function §3#N§(param1:uint = 3151368, param2:uint = 3151368, param3:Boolean = false) : void
      {
         this.§;3§ = new Sprite();
         this.§`"s§ = new Sprite();
         var _loc4_:DisplayObject;
         (_loc4_ = this.§?#z§(param2,param3)).rotation = Math.PI;
         _loc4_.x = _loc4_.width / 2;
         _loc4_.y = _loc4_.height / 2;
         this.§`"s§.addChild(_loc4_);
         this.§;3§.addChild(this.§`"s§);
         this.§'"U§ = new Sprite();
         this.§'"U§.x = 22;
         this.§'"U§.y = 0;
         this.§3!x§(param1);
         this.§[#1§ = this.§+!k§();
         this.§'"U§.addChild(this.§[#1§);
         this.§#!B§ = new Sprite();
         this.§#!B§.x = -17;
         this.§#!B§.y = 5;
         this.§!#7§ = this.§+!k§();
         this.§#!B§.addChild(this.§!#7§);
      }
      
      protected function updateAnimations(param1:Number) : void
      {
         var _loc2_:Number = (this.§0#[§ - this.§'! §) / §#!,§.§?$#§;
         var _loc3_:Number = (this.§5"x§ - this.§+!5§) / §#!,§.§?$#§;
         var _loc4_:Number = Math.cos(this.§2#!§);
         var _loc5_:Number = Math.sin(this.§2#!§);
         var _loc6_:Number = -Math.sin(this.§2#!§);
         var _loc7_:Number = Math.cos(this.§2#!§);
         var _loc8_:Number = _loc3_;
         var _loc9_:Number = _loc2_;
         _loc3_ = _loc8_ * _loc4_ + _loc9_ * _loc5_;
         _loc2_ = _loc8_ * _loc6_ + _loc9_ * _loc7_;
         var _loc10_:Number = 3.5 + 8 * ((this.§6"=§ - this.§3#W§) / this.§6"=§);
         this.§;3§.x = _loc3_;
         this.§;3§.y = _loc2_;
         this.§;3§.rotation = -this.§2#!§ - this.§,#j§ / (180 / Math.PI);
         this.§^b§.x = this.§+!5§ / §#!,§.§?$#§;
         this.§^b§.y = this.§'! § / §#!,§.§?$#§;
         this.§^b§.rotation = this.§2#!§;
         this.§ #s§.x = this.§+!5§ / §#!,§.§?$#§;
         this.§ #s§.y = this.§'! § / §#!,§.§?$#§;
         this.§ #s§.rotation = this.§2#!§;
         this.§#!B§.rotation = Math.atan2(_loc2_ - this.§#!B§.y,_loc3_ - this.§#!B§.x);
         this.§!#7§.width = Math.sqrt(Math.pow(_loc3_ - this.§#!B§.x,2) + Math.pow(_loc2_ - this.§#!B§.y,2));
         this.§!#7§.height = _loc10_ * 2;
         this.§!#7§.y = -this.§!#7§.height / 2;
         this.§'"U§.rotation = Math.atan2(_loc2_ - this.§'"U§.y,_loc3_ - this.§'"U§.x);
         this.§[#1§.width = Math.sqrt(Math.pow(_loc3_ - this.§'"U§.x,2) + Math.pow(_loc2_ - this.§'"U§.y,2));
         this.§[#1§.height = _loc10_ * 2;
         this.§[#1§.y = -this.§[#1§.height / 2;
         this.§-#@§ = false;
      }
      
      public function useMightyEagle() : §5!&§
      {
         var _loc2_:§5!&§ = null;
         while(this.mBirds.length > 0)
         {
            this.§ 9§(0,true);
         }
         this.§ <§();
         if(this.mBirds.length > 0)
         {
            _loc2_ = this.mBirds[0];
            _loc2_.§1#j§(false);
         }
         var _loc1_:§5!&§ = this.addSlingshotObject("BIRD_SARDINE",this.§+!5§,this.§'! §,0);
         _loc1_.§1#j§(true);
         _loc1_.animationsEnabled = false;
         this.setSlingShotState(§0!C§);
         return _loc1_;
      }
      
      protected function § <§() : void
      {
         §#$+§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.setSlingShotState(§!!R§);
      }
      
      public function §'!8§() : void
      {
         this.setNewCoordinatesForRubber(this.§?!h§,this.§="O§ + this.§6"=§ / 8);
      }
      
      protected function get §&"$§() : Number
      {
         return this.§7"i§ * this.§&8§;
      }
      
      protected function get §3#W§() : Number
      {
         return Math.min(this.§7"i§,this.§6"=§);
      }
      
      protected function get §5"x§() : Number
      {
         if(this.§7"i§ >= this.§6"=§)
         {
            return this.§?!h§ + this.§6"=§ * Math.cos(this.§,#j§ / 180 * Math.PI);
         }
         return this.§?!h§ + this.§7"i§ * Math.cos(this.§,#j§ / 180 * Math.PI);
      }
      
      protected function get §0#[§() : Number
      {
         if(this.§7"i§ >= this.§6"=§)
         {
            return this.§="O§ - this.§6"=§ * Math.sin(this.§,#j§ / 180 * Math.PI);
         }
         return this.§="O§ - this.§7"i§ * Math.sin(this.§,#j§ / 180 * Math.PI);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         if(this.§5S§ > 0)
         {
            return false;
         }
         var _loc4_:Number = param1 - this.§?!h§;
         var _loc5_:Number = param2 - this.§="O§;
         var _loc6_:Number;
         if((_loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) * this.§&8§ > this.§6"=§)
         {
            if(param3)
            {
               return false;
            }
            _loc6_ = this.§6"=§ / this.§&8§;
         }
         var _loc7_:Number = (_loc7_ = Math.atan2(-(param2 - this.§="O§),param1 - this.§?!h§)) * (180 / Math.PI);
         if(!this.mDragging && this.§5S§ < 0)
         {
            _loc6_ = 0.8;
            _loc7_ = -160;
         }
         if(this.§""l§)
         {
            _loc6_ = this.§![§(_loc6_);
         }
         return this.§-!8§(_loc7_,_loc6_);
      }
      
      protected function §![§(param1:Number) : Number
      {
         var _loc5_:Number = this.§6"=§ / 2;
         if(param1 > _loc5_)
         {
            if(this.§,#j§ > -90 - 12 + 5 && this.§,#j§ < -90 + 12 + 5)
            {
               return _loc5_;
            }
            if(this.§,#j§ > -90 - 12 - 4 + 5 && this.§,#j§ < -90 + 12 + 4 + 5)
            {
               return Number(_loc5_ + (this.§6"=§ - _loc5_) * (Math.abs(this.§,#j§ - -90 - 5) - 12) / 4);
            }
         }
         return param1;
      }
      
      protected function §-!8§(param1:Number, param2:Number) : Boolean
      {
         this.§,#j§ = param1;
         this.§7"i§ = param2;
         if(this.§7"i§ <= this.§6"=§ * 0.45)
         {
            this.§!k§ = true;
         }
         else if(this.§!k§ && this.§7"i§ >= this.§6"=§ * 0.8)
         {
            this.playStretchSound();
            this.§!k§ = false;
         }
         this.§-#@§ = true;
         return true;
      }
      
      protected function playStretchSound() : void
      {
         §#$+§.playSound("SlingshotStreched");
      }
      
      protected function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§+!5§ + param1 * Math.cos(this.§2#!§ + Math.PI / 2),this.§'! § + param1 * Math.sin(this.§2#!§ + Math.PI / 2),this.§2#!§);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc5_:Number = param1 - this.§+!5§;
         this.§+!5§ = param1;
         var _loc6_:Number = param2 - this.§'! §;
         this.§'! § = param2;
         this.§2#!§ = param3;
         this.§="O§ += _loc6_;
         this.§?!h§ += _loc5_;
         if(param4)
         {
            this.updateAnimations(0);
         }
         this.§-#@§ = true;
      }
      
      protected function §?"A§() : Number
      {
         return this.§&"$§ / this.§6"=§;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§5!&§ = this.mBirds[this.mNextBirdIndex];
         var _loc3_:Number = this.§?"A§();
         if(_loc2_)
         {
            _loc1_ = _loc2_.§-f§;
         }
         return _loc1_ * _loc3_;
      }
      
      public function getPosition() : Point
      {
         var _loc1_:§5!&§ = null;
         if(this.mBirds.length > this.mNextBirdIndex)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §%"J§() : Point
      {
         return new Point(this.§?!h§,this.§="O§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§5!&§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.§""W§(param1);
         if(this.§-#@§)
         {
            this.updateAnimations(param1);
         }
         this.§?"i§ -= param1;
         if(this.§?"i§ < 0)
         {
            this.§?"i§ = 0;
         }
         if(this.mSlingShotState != §]I§)
         {
            this.§%!m§(param1,param2);
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
               this.setSlingShotState(§]I§);
            }
            else if(this.mSlingShotState == §+!_§)
            {
               if(this.§?"i§ <= 0)
               {
                  this.setSlingShotState(§>!H§);
                  _loc3_.§;"a§();
               }
            }
            else if(this.mSlingShotState == §>!H§)
            {
               if(_loc3_.§;#v§)
               {
                  this.setSlingShotState(§0!C§);
               }
            }
            else if(this.mSlingShotState == §0!C§)
            {
               _loc4_ = this.§5"x§ - _loc3_.radius * Math.cos(this.§,#j§ / (180 / Math.PI));
               _loc5_ = this.§0#[§ + _loc3_.radius * Math.sin(this.§,#j§ / (180 / Math.PI));
               if(this.mDragging || this.§5S§ >= 0)
               {
                  _loc3_.setPosition(_loc4_,_loc5_,180 - this.§,#j§);
               }
               else
               {
                  _loc3_.setPosition(_loc4_,_loc5_,this.angle);
               }
               if(this.§]"V§)
               {
                  this.shootCurrentBird(this.§?"A§(),this.§,#j§);
               }
            }
         }
      }
      
      public function §`9§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§5!&§ = null;
         if(this.mBirds.length > 0)
         {
            _loc5_ = this.mBirds[this.mNextBirdIndex];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2,180 - this.§,#j§);
         this.shootCurrentBird(param3,param4);
      }
      
      protected function shootBird() : void
      {
         this.§4"-§ = false;
         var _loc1_:§5!&§ = null;
         if(this.mBirds.length > this.mNextBirdIndex)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
         }
         if(!_loc1_)
         {
            return;
         }
         this.§4!<§ = new Date().time;
         this.§,#2§.shootBird(_loc1_,this.§3B§,this.§,#j§);
         this.§ 9§(this.mNextBirdIndex,_loc1_.§4"?§ > 0);
         this.playBirdShotSound();
         if(this.mNextBirdIndex >= this.mBirds.length)
         {
            this.setSlingShotState(§]I§);
         }
         else
         {
            this.setSlingShotState(§+!_§);
         }
         dispatchEvent(new Event(§4#s§));
      }
      
      protected function §""W§(param1:Number) : void
      {
         if(this.§5S§ <= 0)
         {
            return;
         }
         this.§-#@§ = true;
         this.§5S§ -= param1;
         if(this.§5S§ <= 0)
         {
            this.§5S§ = 0;
         }
         var _loc2_:Number = this.§5S§ / §;$2§;
         var _loc3_:Number = this.§^"`§ * Math.cos(_loc2_ * Math.PI * 8) * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_;
         this.§-!8§(this.§,#j§,_loc3_);
         if(this.§5S§ == 0)
         {
            this.§5S§ = -1;
            this.§'!8§();
         }
         if(this.§4"-§)
         {
            this.shootBird();
         }
      }
      
      public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         this.§3B§ = param1;
         this.§,#j§ = param2;
         this.§5S§ = §;$2§;
         this.§^"`§ = this.§7"i§;
         this.mDragging = false;
         this.§]"V§ = false;
         this.§4"-§ = true;
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §#$+§.playSound("BirdShot" + _loc1_);
      }
      
      public function §%!m§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.mNextBirdIndex;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.mBirds.length)
         {
            this.mBirds[_loc4_].update(param1,this.mSlingShotState == §!!R§,param2);
            _loc4_++;
         }
      }
      
      public function getCurrentBirdType() : String
      {
         var _loc1_:§5!&§ = null;
         if(this.mNextBirdIndex < this.mBirds.length)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
            return _loc1_.name;
         }
         return null;
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§5!&§ = null;
         this.mDragging = false;
         this.§'!8§();
         if(this.§9!S§ >= this.mBirds.length)
         {
            return false;
         }
         _loc1_ = this.mBirds[this.§9!S§];
         _loc1_.§"!0§(-1,true);
         this.showScoreForRemainingBird(_loc1_,this.§,#2§.levelItemManager.getItem(_loc1_.name).destroyedScoreInc);
         this.mBirds[this.§9!S§].scoreCounted = true;
         ++this.§9!S§;
         return true;
      }
      
      protected function showScoreForRemainingBird(param1:§5!&§, param2:int) : void
      {
         this.§,#2§.addScore(param2,§6" §.§!$%§,true,param1.x,param1.y - 3,§=$4§.§2"]§(param1.name));
      }
      
      public function §%"+§() : int
      {
         var _loc2_:§5!&§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mBirds)
         {
            _loc1_ += this.§,#2§.levelItemManager.getItem(_loc2_.name).destroyedScoreInc;
         }
         return _loc1_;
      }
      
      public function §#!Z§() : int
      {
         var _loc2_:§5!&§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mBirds)
         {
            if(!_loc2_.scoreCounted)
            {
               _loc1_ += this.§,#2§.levelItemManager.getItem(_loc2_.name).destroyedScoreInc;
            }
         }
         return _loc1_;
      }
      
      public function §^!d§() : int
      {
         return this.§`"l§;
      }
      
      protected function § t§() : void
      {
         var _loc1_:int = 1000;
         var _loc2_:Number = Math.cos(this.§2#!§ + Math.PI / 2) * this.§`_§;
         var _loc3_:Number = Math.sin(this.§2#!§ + Math.PI / 2) * this.§`_§;
         while(int(this.§,#2§.objects.§>#!§(this.§?!h§ + _loc2_,this.§="O§ + _loc3_)) == -1)
         {
            this.applyGravity(0.1);
            if(_loc1_-- <= 0)
            {
               break;
            }
         }
         this.§6z§ = -1;
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§]Y§.x = -param1;
         this.§]Y§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §0!C§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function get canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §0!C§ && this.§?"A§() >= §#!m§ && this.§5S§ < 0;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.setSlingShotState(§0!C§);
         var _loc1_:§5!&§ = this.mBirds[this.mNextBirdIndex];
         _loc1_.§"!0§(§0!y§.§;!N§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§5!&§ = this.mBirds[this.mNextBirdIndex];
         _loc1_.§"!0§(§0!y§.§>",§);
      }
      
      public function shoot() : void
      {
         this.§]"V§ = true;
      }
      
      protected function § 9§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§5!&§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.mBirds[param1])
         {
            _loc3_ = this.mBirds[param1];
            this.§2"9§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.showDestructionParticles(this.mBirds[param1]);
            }
            _loc3_.dispose();
            this.mBirds[param1] = null;
         }
         this.mBirds.splice(param1,1);
      }
      
      protected function showDestructionParticles(param1:§5!&§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §#!,§.§?$#§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §#!,§.§?$#§) + Math.random() * -_loc8_ * 2;
            this.§,#2§.particles.addParticle(§=$4§.§9J§,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,param1.x + _loc7_,param1.y + _loc8_,1500,"",§=$4§.getParticleMaterialFromEngineMaterial(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§,#2§.particles.addParticle(§=$4§.§=!_§,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:§5!&§) : void
      {
         this.§ 9§(this.mBirds.indexOf(param1));
      }
      
      public function §4-§() : void
      {
         var _loc1_:§5!&§ = null;
         this.mBirds.sort(this.§ "m§);
         while(this.§2"9§.numChildren > 0)
         {
            this.§2"9§.removeChildAt(0);
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_ = this.mBirds[_loc2_];
            this.§2"9§.addChildAt(_loc1_.sprite,0);
            _loc2_++;
         }
      }
      
      private function § "m§(param1:§5!&§, param2:§5!&§) : Number
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
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §5!&§
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
      
      public function §]o§(param1:Number, param2:Number) : §@M§
      {
         if(param1 >= this.§+!5§ - this.§6"=§ / 4 && param1 <= this.§+!5§ + this.§6"=§ / 4 && param2 >= this.§'! § - this.§6"=§ / 4 && this.§'! § <= this.§'! § + this.§`_§)
         {
            return this;
         }
         return null;
      }
      
      public function §3# §(param1:§-"R§) : void
      {
         var _loc3_:§5!&§ = null;
         var _loc4_:§[g§ = null;
         param1.slingshotX = this.§+!5§;
         param1.slingshotY = this.§'! §;
         var _loc2_:Number = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc3_ = this.mBirds[_loc2_];
            (_loc4_ = new §[g§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.type = _loc3_.name;
            param1.§,!y§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §9&§() : void
      {
         while(this.mBirds.length > 0)
         {
            this.removeObject(this.mBirds[0]);
         }
      }
      
      public function §0#v§(param1:Point, param2:Point) : Array
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
         if(this.§+!5§ > param1.x && this.§+!5§ < param2.x && this.§'! § > param1.y && this.§'! § < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §""J§(param1:String, param2:Number, param3:Number, param4:Number) : §5!&§
      {
         var _loc5_:§5!&§ = this.addSlingshotObject(param1,param2,param3,param4);
         this.§,#T§();
         return _loc5_;
      }
      
      public function §3!4§() : int
      {
         return this.mBirds.length;
      }
      
      public function §`b§() : int
      {
         return this.§##5§;
      }
      
      public function §,#T§() : void
      {
         this.mBirds.sort(this.§%"[§);
         var _loc1_:int = 0;
         while(_loc1_ < this.mBirds.length)
         {
            this.mBirds[_loc1_].launchIndex = _loc1_;
            _loc1_++;
         }
         this.mNextBirdIndex = 0;
      }
      
      private function §%"[§(param1:§5!&§, param2:§5!&§) : Number
      {
         var _loc3_:Number = Math.pow(param1.x - this.§+!5§,2) + Math.pow(param1.y - this.§'! §,2);
         var _loc4_:Number = Math.pow(param2.x - this.§+!5§,2) + Math.pow(param2.y - this.§'! §,2);
         return _loc3_ - _loc4_;
      }
   }
}
