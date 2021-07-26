package §>2§
{
   import §"#z§.Texture;
   import §'G§.§;D§;
   import §,"v§.§7!J§;
   import §-#X§.§-!s§;
   import §1#v§.§;!Y§;
   import §6#H§.DisplayObject;
   import §6#H§.Image;
   import §6#H§.Sprite;
   import §7"p§.§6!9§;
   import §7"p§.§<#]§;
   import §8#K§.§3Z§;
   import §?$<§.§?$>§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §6#t§ extends EventDispatcher
   {
      
      public static const §!#f§:String = "slingshot_shot_bird";
      
      private static const §>!K§:int = 1800;
      
      public static const §&!7§:Number = 0.4;
      
      public static const §]$9§:int = 0;
      
      public static const §0"X§:int = 1;
      
      public static const §5"#§:int = 2;
      
      public static const §2Y§:int = 3;
      
      public static const §`!t§:int = 5;
      
      public static const §^"E§:int = 6;
      
      public static const §9a§:int = 3151368;
      
      protected static var §5$!§:Texture;
      
      protected static var §&w§:Texture;
       
      
      protected var § ! §:§;D§;
      
      protected var §5#0§:§!6§;
      
      protected var §["d§:Number;
      
      protected var §%#z§:Number;
      
      protected var §9"c§:Number;
      
      protected var §%#i§:Number = 8.5;
      
      protected var §&!B§:Number;
      
      protected var §+!%§:Number;
      
      protected var §!##§:Number;
      
      protected var §9$!§:Number;
      
      protected var §8!x§:Number = 1.0;
      
      protected var §-!!§:Boolean;
      
      protected var §8!Q§:Boolean;
      
      protected var §-w§:Boolean;
      
      protected var §7#&§:Boolean = false;
      
      public var mBirds:Vector.<§>#!§>;
      
      public var mNextBirdIndex:int;
      
      protected var §%c§:int = 0;
      
      protected var §6#y§:int;
      
      protected var §%"<§:Number;
      
      public var §1$1§:Sprite;
      
      protected var §5#m§:Sprite;
      
      public var §""N§:int = 0;
      
      protected var §-!d§:Number = 0;
      
      public var mSlingShotState:int;
      
      public var §5!k§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §3""§:Boolean = false;
      
      public var §%#=§:Number;
      
      protected var §'#f§:Sprite;
      
      protected var §="l§:Sprite;
      
      protected var §?[§:Sprite;
      
      protected var §4#d§:DisplayObject;
      
      protected var §^#7§:Sprite;
      
      protected var §]#L§:DisplayObject;
      
      protected var §^!0§:Sprite;
      
      protected var §!"1§:DisplayObject;
      
      protected var §3#^§:Sprite;
      
      protected var §2!A§:Sprite;
      
      protected var §^# §:DisplayObject;
      
      private var §'#%§:Number = 0;
      
      private var §!!Q§:Number = 0;
      
      private var §<!q§:Number = -1;
      
      private var §6"w§:Number = 0;
      
      private var §<d§:Boolean = false;
      
      private var §]"g§:int = 0;
      
      public function §6#t§(param1:§!6§, param2:§7!J§, param3:Sprite, param4:Number = 1.0, param5:Boolean = true, param6:Boolean = true, param7:Boolean = false)
      {
         var _loc8_:int = 0;
         var _loc9_:§-!s§ = null;
         this.mBirds = new Vector.<§>#!§>();
         super();
         this.§5#0§ = param1;
         this.§'#f§ = param3;
         this.§8!x§ = param4;
         this.§-!!§ = param5;
         this.§8!Q§ = param6;
         this.§-w§ = param7;
         if(param2)
         {
            this.setPosition(param2.slingshotX,param2.slingshotY,param2.§+"y§);
            this.§?"l§();
            _loc8_ = 0;
            while(_loc8_ < param2.§7!h§)
            {
               _loc9_ = param2.§-!+§(_loc8_);
               this.addSlingshotObject(_loc9_.type,_loc9_.x,_loc9_.y,_loc9_.angle,_loc8_);
               _loc8_++;
            }
            this.§]"g§ = this.§%!c§();
            this.mNextBirdIndex = 0;
            if(this.mBirds.length <= 0)
            {
               §;!Y§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§["d§ + " " + this.§%#z§);
               this.setSlingShotState(§2Y§);
            }
            else
            {
               this.setSlingShotState(§]$9§);
            }
         }
         else
         {
            §;!Y§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.setSlingShotState(§2Y§);
         }
         this.§%#=§ = 0;
         this.sortBirds();
         this.update(0,true);
         this.§+^§();
         this.updateAnimations(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§'#f§;
      }
      
      public function get aimingLineSprite() : Sprite
      {
         return this.§5#m§;
      }
      
      public function get §&!z§() : Number
      {
         return this.§'#%§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.mNextBirdIndex < this.mBirds.length;
      }
      
      public function get shootingAngle() : Number
      {
         return this.§-!d§;
      }
      
      public function get §3#S§() : Number
      {
         return this.§!!Q§;
      }
      
      public function get x() : Number
      {
         return this.§["d§;
      }
      
      public function get y() : Number
      {
         return this.§%#z§;
      }
      
      public function get angle() : Number
      {
         return this.§9"c§;
      }
      
      public function get §<"n§() : Boolean
      {
         return this.§8!Q§;
      }
      
      public function get §2"+§() : Boolean
      {
         return this.§-w§;
      }
      
      public function dispose() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§?"&§(0);
         }
         this.mBirds = null;
         if(this.§'#f§)
         {
            this.§'#f§.dispose();
            this.§'#f§ = null;
         }
         this.§1$1§ = null;
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§4#d§)
         {
            this.§4#d§.color = param1;
         }
         if(this.§^# §)
         {
            this.§^# §.color = param1;
         }
      }
      
      public function addBirdStraightIntoSlingshot(param1:String, param2:Number, param3:Number, param4:int) : §>#!§
      {
         var _loc6_:§>#!§ = null;
         if(this.mBirds.length > 0)
         {
            (_loc6_ = this.mBirds[0]).§8"]§(false);
            _loc6_.animationsEnabled = false;
         }
         var _loc5_:§>#!§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,0,param4)).§8"]§(true);
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §>#!§
      {
         var _loc6_:§?$>§ = this.§5#0§.levelItemManager.getItem(param1);
         var _loc7_:Sprite;
         (_loc7_ = new Sprite()).scaleX = _loc6_.scale;
         _loc7_.scaleY = _loc6_.scale;
         var _loc8_:§>#!§ = this.initializeSlingshotObject(_loc6_,param2,param3,param4,_loc7_,param5);
         if(param5 < 0)
         {
            this.mBirds.push(_loc8_);
         }
         else
         {
            this.mBirds.splice(param5,0,_loc8_);
         }
         ++this.§%c§;
         this.§1$1§.addChild(_loc8_.sprite);
         return _loc8_;
      }
      
      protected function initializeSlingshotObject(param1:§?$>§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §>#!§
      {
         return new §>#!§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
      }
      
      public function setSlingShotState(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §]$9§)
         {
            this.§;a§();
            this.§%"<§ = 1000;
         }
         else if(this.mSlingShotState == §0"X§)
         {
            this.§;a§();
            this.§%"<§ = 0;
         }
         else if(this.mSlingShotState == §5"#§)
         {
            this.§%"<§ = 10000;
            this.§3""§ = false;
            this.§;a§();
         }
         else if(this.mSlingShotState == §2Y§)
         {
            this.§;a§();
            this.§%"<§ = 2000;
         }
         else if(this.mSlingShotState == §`!t§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§3""§ = false;
               this.§;a§();
               this.mBirds[this.mNextBirdIndex].setPosition(this.§0#e§ - this.mBirds[this.mNextBirdIndex].radius * Math.cos(this.§-!d§ / (180 / Math.PI)),this.§8"^§ + this.mBirds[this.mNextBirdIndex].radius * Math.sin(this.§-!d§ / (180 / Math.PI)),180 - this.§-!d§);
            }
            else
            {
               this.§;a§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §1$'§() : §!6§
      {
         return this.§5#0§;
      }
      
      public function §0L§() : Boolean
      {
         return this.mSlingShotState == §2Y§ && this.§%"<§ <= 0;
      }
      
      protected function getSlingshotAnimation() : §;D§
      {
         return this.§5#0§.animationManager.getAnimation("SLINGSHOT");
      }
      
      private function §?"l§() : void
      {
         this.§ ! § = this.getSlingshotAnimation();
         this.§4#d§ = this.§ ! §.getFrame(0);
         this.§4#d§.pivotX = -3;
         this.§4#d§.pivotY = -24;
         this.§^# § = this.§ ! §.getFrame(1);
         this.§^# §.pivotX = -30;
         this.§^# §.pivotY = -30;
         this.§42§();
         this.§`"`§();
         this.§="l§ = new Sprite();
         this.§="l§.addChild(this.§4#d§);
         this.§="l§.addChild(this.§^#7§);
         this.§5#m§ = new Sprite();
         this.§1$1§ = new Sprite();
         this.§?[§ = new Sprite();
         this.§?[§.addChild(this.§3#^§);
         this.§?[§.addChild(this.§^!0§);
         this.§?[§.addChild(this.§^# §);
         this.§]>§();
      }
      
      protected function §]>§() : void
      {
         this.§'#f§.addChild(this.§="l§);
         this.§'#f§.addChild(this.§5#m§);
         this.§'#f§.addChild(this.§1$1§);
         this.§'#f§.addChild(this.§?[§);
      }
      
      public function §42§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§&!B§ = this.§["d§;
         this.§+!%§ = this.§%#z§;
         this.§9$!§ = §!!W§.§2U§;
         _loc1_ = null;
      }
      
      private function §%!7§(param1:uint) : void
      {
         var _loc2_:BitmapData = new BitmapData(2,2,true,4278190080 | param1);
         if(§&w§)
         {
            this.§5#0§.textureManager.unregisterBitmapDataTexture(§&w§);
         }
         §&w§ = this.§5#0§.textureManager.getTextureFromBitmapData(_loc2_);
      }
      
      protected function §=! §() : DisplayObject
      {
         return new Image(§&w§);
      }
      
      protected function §^#h§(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc3_:BitmapData = null;
         if(!§5$!§ || param2)
         {
            _loc3_ = new BitmapData(18,26,true,4278190080 | param1);
            if(§5$!§)
            {
               this.§5#0§.textureManager.unregisterBitmapDataTexture(§5$!§);
            }
            §5$!§ = this.§5#0§.textureManager.getTextureFromBitmapData(_loc3_);
         }
         return new Image(§5$!§);
      }
      
      protected function §`"`§(param1:uint = 3151368, param2:uint = 3151368, param3:Boolean = false) : void
      {
         this.§3#^§ = new Sprite();
         this.§2!A§ = new Sprite();
         var _loc4_:DisplayObject;
         (_loc4_ = this.§^#h§(param2,param3)).rotation = Math.PI;
         _loc4_.x = _loc4_.width / 2;
         _loc4_.y = _loc4_.height / 2;
         this.§2!A§.addChild(_loc4_);
         this.§3#^§.addChild(this.§2!A§);
         this.§^#7§ = new Sprite();
         this.§^#7§.x = 22;
         this.§^#7§.y = 0;
         this.§%!7§(param1);
         this.§]#L§ = this.§=! §();
         this.§^#7§.addChild(this.§]#L§);
         this.§^!0§ = new Sprite();
         this.§^!0§.x = -17;
         this.§^!0§.y = 5;
         this.§!"1§ = this.§=! §();
         this.§^!0§.addChild(this.§!"1§);
      }
      
      protected function updateAnimations(param1:Number) : void
      {
         var _loc2_:Number = (this.§8"^§ - this.§%#z§) / §!6§.§[#v§;
         var _loc3_:Number = (this.§0#e§ - this.§["d§) / §!6§.§[#v§;
         var _loc4_:Number = Math.cos(this.§9"c§);
         var _loc5_:Number = Math.sin(this.§9"c§);
         var _loc6_:Number = -Math.sin(this.§9"c§);
         var _loc7_:Number = Math.cos(this.§9"c§);
         var _loc8_:Number = _loc3_;
         var _loc9_:Number = _loc2_;
         _loc3_ = _loc8_ * _loc4_ + _loc9_ * _loc5_;
         _loc2_ = _loc8_ * _loc6_ + _loc9_ * _loc7_;
         var _loc10_:Number = 3.5 + 8 * ((this.§9$!§ - this.§40§) / this.§9$!§);
         this.§3#^§.x = _loc3_;
         this.§3#^§.y = _loc2_;
         this.§3#^§.rotation = -this.§9"c§ - this.§-!d§ / (180 / Math.PI);
         this.§="l§.x = this.§["d§ / §!6§.§[#v§;
         this.§="l§.y = this.§%#z§ / §!6§.§[#v§;
         this.§="l§.rotation = this.§9"c§;
         this.§?[§.x = this.§["d§ / §!6§.§[#v§;
         this.§?[§.y = this.§%#z§ / §!6§.§[#v§;
         this.§?[§.rotation = this.§9"c§;
         this.§^!0§.rotation = Math.atan2(_loc2_ - this.§^!0§.y,_loc3_ - this.§^!0§.x);
         this.§!"1§.width = Math.sqrt(Math.pow(_loc3_ - this.§^!0§.x,2) + Math.pow(_loc2_ - this.§^!0§.y,2));
         this.§!"1§.height = _loc10_ * 2;
         this.§!"1§.y = -this.§!"1§.height / 2;
         this.§^#7§.rotation = Math.atan2(_loc2_ - this.§^#7§.y,_loc3_ - this.§^#7§.x);
         this.§]#L§.width = Math.sqrt(Math.pow(_loc3_ - this.§^#7§.x,2) + Math.pow(_loc2_ - this.§^#7§.y,2));
         this.§]#L§.height = _loc10_ * 2;
         this.§]#L§.y = -this.§]#L§.height / 2;
         this.§5!k§ = false;
      }
      
      public function useMightyEagle() : §>#!§
      {
         var _loc2_:§>#!§ = null;
         while(this.mBirds.length > 0)
         {
            this.§?"&§(0,true);
         }
         this.§?"c§();
         if(this.mBirds.length > 0)
         {
            _loc2_ = this.mBirds[0];
            _loc2_.§8"]§(false);
         }
         var _loc1_:§>#!§ = this.addSlingshotObject("BIRD_SARDINE",this.§["d§,this.§%#z§,0);
         _loc1_.§8"]§(true);
         _loc1_.animationsEnabled = false;
         this.setSlingShotState(§5"#§);
         return _loc1_;
      }
      
      protected function §?"c§() : void
      {
         §3Z§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.setSlingShotState(§`!t§);
      }
      
      public function §;a§() : void
      {
         this.setNewCoordinatesForRubber(this.§&!B§,this.§+!%§ + this.§9$!§ / 8);
      }
      
      protected function get §^"@§() : Number
      {
         return this.§!##§ * this.§8!x§;
      }
      
      protected function get §40§() : Number
      {
         return Math.min(this.§!##§,this.§9$!§);
      }
      
      protected function get §0#e§() : Number
      {
         if(this.§!##§ >= this.§9$!§)
         {
            return this.§&!B§ + this.§9$!§ * Math.cos(this.§-!d§ / 180 * Math.PI);
         }
         return this.§&!B§ + this.§!##§ * Math.cos(this.§-!d§ / 180 * Math.PI);
      }
      
      protected function get §8"^§() : Number
      {
         if(this.§!##§ >= this.§9$!§)
         {
            return this.§+!%§ - this.§9$!§ * Math.sin(this.§-!d§ / 180 * Math.PI);
         }
         return this.§+!%§ - this.§!##§ * Math.sin(this.§-!d§ / 180 * Math.PI);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         if(this.§<!q§ > 0)
         {
            return false;
         }
         var _loc4_:Number = param1 - this.§&!B§;
         var _loc5_:Number = param2 - this.§+!%§;
         var _loc6_:Number;
         if((_loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) * this.§8!x§ > this.§9$!§)
         {
            if(param3)
            {
               return false;
            }
            _loc6_ = this.§9$!§ / this.§8!x§;
         }
         var _loc7_:Number = (_loc7_ = Math.atan2(-(param2 - this.§+!%§),param1 - this.§&!B§)) * (180 / Math.PI);
         if(!this.mDragging && this.§<!q§ < 0)
         {
            _loc6_ = 0.8;
            _loc7_ = -160;
         }
         if(this.§-!!§)
         {
            _loc6_ = this.§`!z§(_loc6_);
         }
         return this.§!!n§(_loc7_,_loc6_);
      }
      
      protected function §`!z§(param1:Number) : Number
      {
         var _loc6_:Number = NaN;
         var _loc5_:Number = this.§9$!§ / 2;
         if(param1 > _loc5_)
         {
            if(this.§-!d§ > -90 - 12 + 5 && this.§-!d§ < -90 + 12 + 5)
            {
               return _loc5_;
            }
            if(this.§-!d§ > -90 - 12 - 4 + 5 && this.§-!d§ < -90 + 12 + 4 + 5)
            {
               return Number(_loc5_ + (this.§9$!§ - _loc5_) * (Math.abs(this.§-!d§ - -90 - 5) - 12) / 4);
            }
         }
         return param1;
      }
      
      protected function §!!n§(param1:Number, param2:Number) : Boolean
      {
         this.§-!d§ = param1;
         this.§!##§ = param2;
         if(this.§!##§ <= this.§9$!§ * 0.45)
         {
            this.§7#&§ = true;
         }
         else if(this.§7#&§ && this.§!##§ >= this.§9$!§ * 0.8)
         {
            this.playStretchSound();
            this.§7#&§ = false;
         }
         this.§5!k§ = true;
         return true;
      }
      
      protected function playStretchSound() : void
      {
         §3Z§.playSound("SlingshotStreched");
      }
      
      protected function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§["d§ + param1 * Math.cos(this.§9"c§ + Math.PI / 2),this.§%#z§ + param1 * Math.sin(this.§9"c§ + Math.PI / 2),this.§9"c§);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc5_:Number = param1 - this.§["d§;
         this.§["d§ = param1;
         var _loc6_:Number = param2 - this.§%#z§;
         this.§%#z§ = param2;
         this.§9"c§ = param3;
         this.§+!%§ += _loc6_;
         this.§&!B§ += _loc5_;
         if(param4)
         {
            this.updateAnimations(0);
         }
         this.§5!k§ = true;
      }
      
      protected function §2!p§() : Number
      {
         return this.§^"@§ / this.§9$!§;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§>#!§ = this.mBirds[this.mNextBirdIndex];
         var _loc3_:Number = this.§2!p§();
         if(_loc2_)
         {
            _loc1_ = _loc2_.§0" §;
         }
         return _loc1_ * _loc3_;
      }
      
      public function getPosition() : Point
      {
         var _loc1_:§>#!§ = null;
         if(this.mBirds.length > this.mNextBirdIndex)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §<#S§() : Point
      {
         return new Point(this.§&!B§,this.§+!%§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§>#!§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.§"";§(param1);
         if(this.§5!k§)
         {
            this.updateAnimations(param1);
         }
         this.§%"<§ -= param1;
         if(this.§%"<§ < 0)
         {
            this.§%"<§ = 0;
         }
         if(this.mSlingShotState != §2Y§)
         {
            this.§ "J§(param1,param2);
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
               this.setSlingShotState(§2Y§);
            }
            else if(this.mSlingShotState == §]$9§)
            {
               if(this.§%"<§ <= 0)
               {
                  this.setSlingShotState(§0"X§);
                  _loc3_.§<#4§();
               }
            }
            else if(this.mSlingShotState == §0"X§)
            {
               if(_loc3_.§0"x§)
               {
                  this.setSlingShotState(§5"#§);
               }
            }
            else if(this.mSlingShotState == §5"#§)
            {
               _loc4_ = this.§0#e§ - _loc3_.radius * Math.cos(this.§-!d§ / (180 / Math.PI));
               _loc5_ = this.§8"^§ + _loc3_.radius * Math.sin(this.§-!d§ / (180 / Math.PI));
               if(this.mDragging || this.§<!q§ >= 0)
               {
                  _loc3_.setPosition(_loc4_,_loc5_,180 - this.§-!d§);
               }
               else
               {
                  _loc3_.setPosition(_loc4_,_loc5_,this.angle);
               }
               if(this.§3""§)
               {
                  this.shootCurrentBird(this.§2!p§(),this.§-!d§);
               }
            }
         }
      }
      
      public function §&#p§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§>#!§ = null;
         if(this.mBirds.length > 0)
         {
            _loc5_ = this.mBirds[this.mNextBirdIndex];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2,180 - this.§-!d§);
         this.shootCurrentBird(param3,param4);
      }
      
      protected function shootBird() : void
      {
         this.§<d§ = false;
         var _loc1_:§>#!§ = null;
         if(this.mBirds.length > this.mNextBirdIndex)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
         }
         if(!_loc1_)
         {
            return;
         }
         this.§'#%§ = new Date().time;
         this.§5#0§.shootBird(_loc1_,this.§!!Q§,this.§-!d§);
         this.§?"&§(this.mNextBirdIndex,_loc1_.§<!+§ > 0);
         this.playBirdShotSound();
         if(this.mNextBirdIndex >= this.mBirds.length)
         {
            this.setSlingShotState(§2Y§);
         }
         else
         {
            this.setSlingShotState(§]$9§);
         }
         dispatchEvent(new Event(§!#f§));
      }
      
      protected function §"";§(param1:Number) : void
      {
         if(this.§<!q§ <= 0)
         {
            return;
         }
         this.§5!k§ = true;
         this.§<!q§ -= param1;
         if(this.§<!q§ <= 0)
         {
            this.§<!q§ = 0;
         }
         var _loc2_:Number = this.§<!q§ / §>!K§;
         var _loc3_:Number = this.§6"w§ * Math.cos(_loc2_ * Math.PI * 8) * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_;
         this.§!!n§(this.§-!d§,_loc3_);
         if(this.§<!q§ == 0)
         {
            this.§<!q§ = -1;
            this.§;a§();
         }
         if(this.§<d§)
         {
            this.shootBird();
         }
      }
      
      public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         this.§!!Q§ = param1;
         this.§-!d§ = param2;
         this.§<!q§ = §>!K§;
         this.§6"w§ = this.§!##§;
         this.mDragging = false;
         this.§3""§ = false;
         this.§<d§ = true;
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §3Z§.playSound("bird_shot-a" + _loc1_);
      }
      
      public function § "J§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.mNextBirdIndex;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.mBirds.length)
         {
            this.mBirds[_loc4_].update(param1,this.mSlingShotState == §`!t§,param2);
            _loc4_++;
         }
      }
      
      public function getCurrentBirdType() : String
      {
         var _loc1_:§>#!§ = null;
         if(this.mNextBirdIndex < this.mBirds.length)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
            return _loc1_.name;
         }
         return null;
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§>#!§ = null;
         this.mDragging = false;
         this.§;a§();
         if(this.§6#y§ >= this.mBirds.length)
         {
            return false;
         }
         _loc1_ = this.mBirds[this.§6#y§];
         if(_loc1_.§&!-§)
         {
            _loc1_.§5#B§(true);
            this.showScoreForRemainingBird(_loc1_,this.§5#0§.levelItemManager.getItem(_loc1_.name).destroyedScoreInc);
            this.mBirds[this.§6#y§].scoreCounted = true;
            ++this.§6#y§;
         }
         else
         {
            this.mBirds[this.§6#y§].scoreCounted = false;
            ++this.§6#y§;
         }
         return true;
      }
      
      protected function showScoreForRemainingBird(param1:§>#!§, param2:int) : void
      {
         this.§5#0§.addScore(param2,§ $,§.§-B§,true,param1.x,param1.y - 3,§6!9§.§[T§(param1.name),param1.levelItem.floatingScoreFont);
      }
      
      public function §%!c§() : int
      {
         var _loc2_:§>#!§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mBirds)
         {
            _loc1_ += this.§5#0§.levelItemManager.getItem(_loc2_.name).destroyedScoreInc;
         }
         return _loc1_;
      }
      
      public function §;!>§() : int
      {
         var _loc2_:§>#!§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mBirds)
         {
            if(!_loc2_.scoreCounted)
            {
               _loc1_ += this.§5#0§.levelItemManager.getItem(_loc2_.name).destroyedScoreInc;
            }
         }
         return _loc1_;
      }
      
      public function §^#>§() : int
      {
         return this.§]"g§;
      }
      
      protected function §+^§() : void
      {
         var _loc4_:int = 0;
         var _loc1_:int = 1000;
         var _loc2_:Number = Math.cos(this.§9"c§ + Math.PI / 2) * this.§%#i§;
         var _loc3_:Number = Math.sin(this.§9"c§ + Math.PI / 2) * this.§%#i§;
         while((_loc4_ = this.§5#0§.objects.§-?§(this.§&!B§ + _loc2_,this.§+!%§ + _loc3_)) == -1)
         {
            this.applyGravity(0.1);
            if(_loc1_-- <= 0)
            {
               break;
            }
         }
         this.§%#=§ = -1;
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§'#f§.x = -param1;
         this.§'#f§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §5"#§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function get canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §5"#§ && this.§2!p§() >= §&!7§ && this.§<!q§ < 0;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.setSlingShotState(§5"#§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
      }
      
      public function shoot() : void
      {
         this.§3""§ = true;
      }
      
      protected function §?"&§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§>#!§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.mBirds[param1])
         {
            _loc3_ = this.mBirds[param1];
            this.§1$1§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.showDestructionParticles(this.mBirds[param1]);
            }
            _loc3_.dispose();
            this.mBirds[param1] = null;
         }
         this.mBirds.splice(param1,1);
      }
      
      protected function showDestructionParticles(param1:§>#!§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §!6§.§[#v§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §!6§.§[#v§) + Math.random() * -_loc8_ * 2;
            this.§5#0§.particles.addParticle(§6!9§.§?!R§,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,param1.x + _loc7_,param1.y + _loc8_,1500,"",§6!9§.getParticleMaterialFromEngineMaterial(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§5#0§.particles.addParticle(§6!9§.§"B§,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:§>#!§) : void
      {
         this.§?"&§(this.mBirds.indexOf(param1));
      }
      
      public function sortBirds() : void
      {
         var _loc1_:§>#!§ = null;
         this.mBirds.sort(this.§^"W§);
         while(this.§1$1§.numChildren > 0)
         {
            this.§1$1§.removeChildAt(0);
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_ = this.mBirds[_loc2_];
            this.§1$1§.addChildAt(_loc1_.sprite,0);
            _loc2_++;
         }
      }
      
      private function §^"W§(param1:§>#!§, param2:§>#!§) : Number
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
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §>#!§
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
      
      public function §6!m§(param1:Number, param2:Number) : §6#t§
      {
         if(param1 >= this.§["d§ - this.§9$!§ / 4 && param1 <= this.§["d§ + this.§9$!§ / 4 && param2 >= this.§%#z§ - this.§9$!§ / 4 && param2 <= this.§%#z§ + this.§%#i§)
         {
            return this;
         }
         return null;
      }
      
      public function §<!4§(param1:§7!J§) : void
      {
         var _loc3_:§>#!§ = null;
         var _loc4_:§-!s§ = null;
         param1.slingshotX = this.§["d§;
         param1.slingshotY = this.§%#z§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc3_ = this.mBirds[_loc2_];
            (_loc4_ = new §-!s§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.type = _loc3_.name;
            param1.§&!t§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §2!!§() : void
      {
         while(this.mBirds.length > 0)
         {
            this.removeObject(this.mBirds[0]);
         }
      }
      
      public function §?"9§(param1:Point, param2:Point) : Array
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
         if(this.§["d§ > param1.x && this.§["d§ < param2.x && this.§%#z§ > param1.y && this.§%#z§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §"s§(param1:String, param2:Number, param3:Number, param4:Number) : §>#!§
      {
         var _loc5_:§>#!§ = this.addSlingshotObject(param1,param2,param3,param4);
         this.§1!8§();
         return _loc5_;
      }
      
      public function §;O§() : int
      {
         return this.mBirds.length;
      }
      
      public function §=!q§() : int
      {
         return this.§%c§;
      }
      
      public function §1!8§() : void
      {
         this.mBirds.sort(this.§;""§);
         var _loc1_:int = 0;
         while(_loc1_ < this.mBirds.length)
         {
            this.mBirds[_loc1_].launchIndex = _loc1_;
            _loc1_++;
         }
         this.mNextBirdIndex = 0;
      }
      
      private function §;""§(param1:§>#!§, param2:§>#!§) : Number
      {
         var _loc3_:Number = Math.pow(param1.x - this.§["d§,2) + Math.pow(param1.y - this.§%#z§,2);
         var _loc4_:Number = Math.pow(param2.x - this.§["d§,2) + Math.pow(param2.y - this.§%#z§,2);
         return _loc3_ - _loc4_;
      }
   }
}
