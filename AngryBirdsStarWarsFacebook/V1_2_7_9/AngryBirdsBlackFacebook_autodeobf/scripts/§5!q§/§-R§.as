package §5!q§
{
   import §,"v§.§@§;
   import §,#+§.§<U§;
   import §0"I§.§5!s§;
   import §1"s§.§#"b§;
   import §1"s§.§-i§;
   import §1"s§.DisplayObject;
   import §1"s§.Sprite;
   import §2!`§.§#"m§;
   import §2!`§.§;6§;
   import §3"$§.§[a§;
   import §4"F§.§var §;
   import §<"L§.Texture;
   import §>P§.§&s§;
   import §>P§.§=!,§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §-R§ extends EventDispatcher
   {
      
      public static const §?!`§:String = "slingshot_shot_bird";
      
      private static const §7!g§:int = 1800;
      
      public static const §4y§:Number = 0.4;
      
      public static const §#w§:int = 0;
      
      public static const §@+§:int = 1;
      
      public static const §`9§:int = 2;
      
      public static const §?]§:int = 3;
      
      public static const §7!w§:int = 5;
      
      public static const §'A§:int = 6;
      
      public static const §4"=§:int = 3151368;
      
      protected static var §'c§:Texture;
       
      
      protected var §+!p§:§[a§;
      
      protected var §]""§:§3"X§;
      
      protected var §]!_§:Number;
      
      protected var §#j§:Number;
      
      protected var §`"j§:Number;
      
      protected var §6^§:Number = 8.5;
      
      protected var §4"`§:Number;
      
      protected var §0"W§:Number;
      
      protected var §>#3§:Number;
      
      protected var §'!J§:Number;
      
      protected var §#u§:Number = 1.0;
      
      protected var §?;§:Boolean;
      
      protected var §8<§:Boolean;
      
      protected var §""4§:Boolean = false;
      
      public var §1#!§:Vector.<§+e§>;
      
      public var §%r§:int;
      
      protected var §<%§:int = 0;
      
      protected var §8!1§:int;
      
      protected var §use§:Number;
      
      public var §4!J§:Sprite;
      
      protected var §=0§:Sprite;
      
      public var §[#§:int = 0;
      
      protected var §<P§:Number = 0;
      
      public var mSlingShotState:int;
      
      public var §1"S§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §;""§:Boolean = false;
      
      public var §%w§:Number;
      
      protected var § "6§:Sprite;
      
      protected var §9F§:Sprite;
      
      protected var §6"b§:Sprite;
      
      protected var §6!I§:DisplayObject;
      
      protected var §5!Q§:Sprite;
      
      protected var §^!R§:DisplayObject;
      
      protected var §""0§:Sprite;
      
      protected var §4!p§:DisplayObject;
      
      protected var §`"F§:Sprite;
      
      protected var §,"x§:Sprite;
      
      protected var §-!?§:DisplayObject;
      
      private var §+!J§:Number = 0;
      
      private var §^"R§:Number = 0;
      
      private var §#]§:Number = -1;
      
      private var §0]§:Number = 0;
      
      private var §?!>§:Boolean = false;
      
      private var §<h§:int = 0;
      
      public function §-R§(param1:§3"X§, param2:§<U§, param3:Sprite, param4:Number = 1.0, param5:Boolean = true, param6:Boolean = true)
      {
         var _loc7_:int = 0;
         var _loc8_:§var § = null;
         this.§1#!§ = new Vector.<§+e§>();
         super();
         this.§]""§ = param1;
         this.§ "6§ = param3;
         this.§#u§ = param4;
         this.§?;§ = param5;
         this.§8<§ = param6;
         if(param2)
         {
            this.setPosition(param2.slingshotX,param2.slingshotY,param2.§4d§);
            this.§!"x§();
            _loc7_ = 0;
            while(_loc7_ < param2.§[!a§)
            {
               _loc8_ = param2.§?"H§(_loc7_);
               this.addSlingshotObject(_loc8_.type,_loc8_.x,_loc8_.y,_loc8_.angle,_loc8_.index);
               _loc7_++;
            }
            this.§<h§ = this.§0V§();
            this.§%r§ = 0;
            if(this.§1#!§.length <= 0)
            {
               §5!s§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§]!_§ + " " + this.§#j§);
               this.§ !E§(§?]§);
            }
            else
            {
               this.§ !E§(§#w§);
            }
         }
         else
         {
            §5!s§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§ !E§(§?]§);
         }
         this.§%w§ = 0;
         this.sortBirds();
         this.update(0,true);
         this.groundSlingshot();
         this.§;!4§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§ "6§;
      }
      
      public function get aimingLineSprite() : Sprite
      {
         return this.§=0§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§+!J§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§%r§ < this.§1#!§.length;
      }
      
      public function get shootingAngle() : Number
      {
         return this.§<P§;
      }
      
      public function get x() : Number
      {
         return this.§]!_§;
      }
      
      public function get y() : Number
      {
         return this.§#j§;
      }
      
      public function get angle() : Number
      {
         return this.§`"j§;
      }
      
      public function get §"o§() : Boolean
      {
         return this.§8<§;
      }
      
      public function dispose() : void
      {
         while(this.§1#!§.length > 0)
         {
            this.§>"§(0);
         }
         this.§1#!§ = null;
         if(this.§ "6§)
         {
            this.§ "6§.dispose();
            this.§ "6§ = null;
         }
         this.§4!J§ = null;
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§6!I§)
         {
            this.§6!I§.color = param1;
         }
         if(this.§-!?§)
         {
            this.§-!?§.color = param1;
         }
      }
      
      public function §7y§(param1:String, param2:Number, param3:Number, param4:int) : §+e§
      {
         var _loc6_:§+e§ = null;
         if(this.§1#!§.length > 0)
         {
            (_loc6_ = this.§1#!§[0]).setOnSlingshot(false);
            _loc6_.§#d§ = false;
         }
         var _loc5_:§+e§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,0,param4)).setOnSlingshot(true);
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §+e§
      {
         var _loc6_:§=!,§ = this.§]""§.levelItemManager.getItem(param1);
         var _loc7_:Sprite;
         (_loc7_ = new Sprite()).scaleX = _loc6_.scale;
         _loc7_.scaleY = _loc6_.scale;
         var _loc8_:§+e§ = this.initializeSlingshotObject(_loc6_,param2,param3,param4,_loc7_,param5);
         if(param5 < 0)
         {
            this.§1#!§.push(_loc8_);
         }
         else
         {
            this.§1#!§.splice(param5,0,_loc8_);
         }
         ++this.§<%§;
         this.§4!J§.addChild(_loc8_.sprite);
         return _loc8_;
      }
      
      protected function initializeSlingshotObject(param1:§=!,§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §+e§
      {
         return new §+e§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
      }
      
      public function § !E§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §#w§)
         {
            this.§#"d§();
            this.§use§ = 1000;
         }
         else if(this.mSlingShotState == §@+§)
         {
            this.§#"d§();
            this.§use§ = 0;
         }
         else if(this.mSlingShotState == §`9§)
         {
            this.§use§ = 10000;
            this.§;""§ = false;
            this.§#"d§();
         }
         else if(this.mSlingShotState == §?]§)
         {
            this.§#"d§();
            this.§use§ = 2000;
         }
         else if(this.mSlingShotState == §7!w§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§;""§ = false;
               this.§#"d§();
               this.§1#!§[this.§%r§].setPosition(this.§""t§ - this.§1#!§[this.§%r§].radius * Math.cos(this.§<P§ / (180 / Math.PI)),this.§^$§ + this.§1#!§[this.§%r§].radius * Math.sin(this.§<P§ / (180 / Math.PI)),180 - this.§<P§);
            }
            else
            {
               this.§#"d§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §^g§() : §3"X§
      {
         return this.§]""§;
      }
      
      public function §6p§() : Boolean
      {
         return this.mSlingShotState == §?]§ && this.§use§ <= 0;
      }
      
      protected function §;a§() : §[a§
      {
         return this.§]""§.animationManager.getAnimation("SLINGSHOT");
      }
      
      private function §!"x§() : void
      {
         this.§+!p§ = this.§;a§();
         this.§6!I§ = this.§+!p§.getFrame(0);
         this.§6!I§.pivotX = -3;
         this.§6!I§.pivotY = -24;
         this.§-!?§ = this.§+!p§.getFrame(1);
         this.§-!?§.pivotX = -30;
         this.§-!?§.pivotY = -30;
         this.§@r§();
         this.§'q§();
         this.§9F§ = new Sprite();
         this.§9F§.addChild(this.§6!I§);
         this.§9F§.addChild(this.§5!Q§);
         this.§=0§ = new Sprite();
         this.§4!J§ = new Sprite();
         this.§6"b§ = new Sprite();
         this.§6"b§.addChild(this.§`"F§);
         this.§6"b§.addChild(this.§""0§);
         this.§6"b§.addChild(this.§-!?§);
         this.§0!U§();
      }
      
      protected function §0!U§() : void
      {
         this.§ "6§.addChild(this.§9F§);
         this.§ "6§.addChild(this.§=0§);
         this.§ "6§.addChild(this.§4!J§);
         this.§ "6§.addChild(this.§6"b§);
      }
      
      public function §@r§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§4"`§ = this.§]!_§;
         this.§0"W§ = this.§#j§;
         this.§'!J§ = §<"n§.§%!!§;
         _loc1_ = null;
      }
      
      protected function getRopeImage(param1:uint) : DisplayObject
      {
         return new §#"b§(2,2,param1);
      }
      
      protected function getHolsterImage(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc3_:BitmapData = null;
         if(!§'c§ || param2)
         {
            _loc3_ = new BitmapData(18,26,true,4278190080 | param1);
            if(§'c§)
            {
               this.§]""§.textureManager.unregisterBitmapDataTexture(§'c§);
            }
            §'c§ = this.§]""§.textureManager.getTextureFromBitmapData(_loc3_);
         }
         return new §-i§(§'c§);
      }
      
      protected function §'q§(param1:uint = 3151368, param2:uint = 3151368, param3:Boolean = false) : void
      {
         this.§`"F§ = new Sprite();
         this.§,"x§ = new Sprite();
         var _loc4_:DisplayObject;
         (_loc4_ = this.getHolsterImage(param2,param3)).rotation = Math.PI;
         _loc4_.x = _loc4_.width / 2;
         _loc4_.y = _loc4_.height / 2;
         this.§,"x§.addChild(_loc4_);
         this.§`"F§.addChild(this.§,"x§);
         this.§5!Q§ = new Sprite();
         this.§5!Q§.x = 22;
         this.§5!Q§.y = 0;
         this.§^!R§ = this.getRopeImage(param1);
         this.§5!Q§.addChild(this.§^!R§);
         this.§""0§ = new Sprite();
         this.§""0§.x = -17;
         this.§""0§.y = 5;
         this.§4!p§ = this.getRopeImage(param1);
         this.§""0§.addChild(this.§4!p§);
      }
      
      protected function §;!4§(param1:Number) : void
      {
         var _loc2_:Number = (this.§^$§ - this.§#j§) / §3"X§.§;"l§;
         var _loc3_:Number = (this.§""t§ - this.§]!_§) / §3"X§.§;"l§;
         var _loc4_:Number = Math.cos(this.§`"j§);
         var _loc5_:Number = Math.sin(this.§`"j§);
         var _loc6_:Number = -Math.sin(this.§`"j§);
         var _loc7_:Number = Math.cos(this.§`"j§);
         var _loc8_:Number = _loc3_;
         var _loc9_:Number = _loc2_;
         _loc3_ = _loc8_ * _loc4_ + _loc9_ * _loc5_;
         _loc2_ = _loc8_ * _loc6_ + _loc9_ * _loc7_;
         var _loc10_:Number = 3.5 + 8 * ((this.§'!J§ - this.§6[§) / this.§'!J§);
         this.§`"F§.x = _loc3_;
         this.§`"F§.y = _loc2_;
         this.§`"F§.rotation = -this.§`"j§ - this.§<P§ / (180 / Math.PI);
         this.§9F§.x = this.§]!_§ / §3"X§.§;"l§;
         this.§9F§.y = this.§#j§ / §3"X§.§;"l§;
         this.§9F§.rotation = this.§`"j§;
         this.§6"b§.x = this.§]!_§ / §3"X§.§;"l§;
         this.§6"b§.y = this.§#j§ / §3"X§.§;"l§;
         this.§6"b§.rotation = this.§`"j§;
         this.§""0§.rotation = Math.atan2(_loc2_ - this.§""0§.y,_loc3_ - this.§""0§.x);
         this.§4!p§.width = Math.sqrt(Math.pow(_loc3_ - this.§""0§.x,2) + Math.pow(_loc2_ - this.§""0§.y,2));
         this.§4!p§.height = _loc10_ * 2;
         this.§4!p§.y = -this.§4!p§.height / 2;
         this.§5!Q§.rotation = Math.atan2(_loc2_ - this.§5!Q§.y,_loc3_ - this.§5!Q§.x);
         this.§^!R§.width = Math.sqrt(Math.pow(_loc3_ - this.§5!Q§.x,2) + Math.pow(_loc2_ - this.§5!Q§.y,2));
         this.§^!R§.height = _loc10_ * 2;
         this.§^!R§.y = -this.§^!R§.height / 2;
         this.§1"S§ = false;
      }
      
      public function useMightyEagle() : §+e§
      {
         var _loc2_:§+e§ = null;
         while(this.§1#!§.length > 0)
         {
            this.§>"§(0,true);
         }
         this.§`"L§();
         if(this.§1#!§.length > 0)
         {
            _loc2_ = this.§1#!§[0];
            _loc2_.setOnSlingshot(false);
         }
         var _loc1_:§+e§ = this.addSlingshotObject("BIRD_SARDINE",this.§]!_§,this.§#j§,0);
         _loc1_.setOnSlingshot(true);
         _loc1_.§#d§ = false;
         this.§ !E§(§`9§);
         return _loc1_;
      }
      
      protected function §`"L§() : void
      {
         §@§.§=Y§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§ !E§(§7!w§);
      }
      
      public function §#"d§() : void
      {
         this.setNewCoordinatesForRubber(this.§4"`§,this.§0"W§ + this.§'!J§ / 8);
      }
      
      protected function get §!9§() : Number
      {
         return this.§>#3§ * this.§#u§;
      }
      
      protected function get §6[§() : Number
      {
         return Math.min(this.§>#3§,this.§'!J§);
      }
      
      protected function get §""t§() : Number
      {
         if(this.§>#3§ >= this.§'!J§)
         {
            return this.§4"`§ + this.§'!J§ * Math.cos(this.§<P§ / 180 * Math.PI);
         }
         return this.§4"`§ + this.§>#3§ * Math.cos(this.§<P§ / 180 * Math.PI);
      }
      
      protected function get §^$§() : Number
      {
         if(this.§>#3§ >= this.§'!J§)
         {
            return this.§0"W§ - this.§'!J§ * Math.sin(this.§<P§ / 180 * Math.PI);
         }
         return this.§0"W§ - this.§>#3§ * Math.sin(this.§<P§ / 180 * Math.PI);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         if(this.§#]§ > 0)
         {
            return false;
         }
         var _loc4_:Number = param1 - this.§4"`§;
         var _loc5_:Number = param2 - this.§0"W§;
         var _loc6_:Number;
         if((_loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) * this.§#u§ > this.§'!J§)
         {
            if(param3)
            {
               return false;
            }
            _loc6_ = this.§'!J§ / this.§#u§;
         }
         var _loc7_:Number = (_loc7_ = Math.atan2(-(param2 - this.§0"W§),param1 - this.§4"`§)) * (180 / Math.PI);
         if(!this.mDragging && this.§#]§ < 0)
         {
            _loc6_ = 0.8;
            _loc7_ = -160;
         }
         if(this.§?;§)
         {
            _loc6_ = this.§3!f§(_loc6_);
         }
         return this.§ P§(_loc7_,_loc6_);
      }
      
      protected function §3!f§(param1:Number) : Number
      {
         var _loc6_:Number = NaN;
         var _loc5_:Number = this.§'!J§ / 2;
         if(param1 > _loc5_)
         {
            if(this.§<P§ > -90 - 12 + 5 && this.§<P§ < -90 + 12 + 5)
            {
               return _loc5_;
            }
            if(this.§<P§ > -90 - 12 - 4 + 5 && this.§<P§ < -90 + 12 + 4 + 5)
            {
               return Number(_loc5_ + (this.§'!J§ - _loc5_) * (Math.abs(this.§<P§ - -90 - 5) - 12) / 4);
            }
         }
         return param1;
      }
      
      protected function § P§(param1:Number, param2:Number) : Boolean
      {
         this.§<P§ = param1;
         this.§>#3§ = param2;
         if(this.§>#3§ <= this.§'!J§ * 0.45)
         {
            this.§""4§ = true;
         }
         else if(this.§""4§ && this.§>#3§ >= this.§'!J§ * 0.8)
         {
            this.playStretchSound();
            this.§""4§ = false;
         }
         this.§1"S§ = true;
         return true;
      }
      
      protected function playStretchSound() : void
      {
         §@§.§=Y§("SlingshotStreched");
      }
      
      protected function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§]!_§ + param1 * Math.cos(this.§`"j§ + Math.PI / 2),this.§#j§ + param1 * Math.sin(this.§`"j§ + Math.PI / 2),this.§`"j§);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc5_:Number = param1 - this.§]!_§;
         this.§]!_§ = param1;
         var _loc6_:Number = param2 - this.§#j§;
         this.§#j§ = param2;
         this.§`"j§ = param3;
         this.§0"W§ += _loc6_;
         this.§4"`§ += _loc5_;
         if(param4)
         {
            this.§;!4§(0);
         }
         this.§1"S§ = true;
      }
      
      protected function §6!+§() : Number
      {
         return this.§!9§ / this.§'!J§;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§+e§ = this.§1#!§[this.§%r§];
         var _loc3_:Number = this.§6!+§();
         if(_loc2_)
         {
            _loc1_ = _loc2_.§,!§;
         }
         return _loc1_ * _loc3_;
      }
      
      public function getPosition() : Point
      {
         var _loc1_:§+e§ = null;
         if(this.§1#!§.length > this.§%r§)
         {
            _loc1_ = this.§1#!§[this.§%r§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §,!S§() : Point
      {
         return new Point(this.§4"`§,this.§0"W§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§+e§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.§'n§(param1);
         if(this.§1"S§)
         {
            this.§;!4§(param1);
         }
         this.§use§ -= param1;
         if(this.§use§ < 0)
         {
            this.§use§ = 0;
         }
         if(this.mSlingShotState != §?]§)
         {
            this.§#!=§(param1,param2);
            _loc3_ = null;
            if(this.§1#!§.length > 0)
            {
               _loc3_ = this.§1#!§[this.§%r§];
            }
            if(_loc3_)
            {
               _loc3_.§`"V§(param1);
            }
            if(!_loc3_)
            {
               this.§ !E§(§?]§);
            }
            else if(this.mSlingShotState == §#w§)
            {
               if(this.§use§ <= 0)
               {
                  this.§ !E§(§@+§);
                  _loc3_.§5#'§();
               }
            }
            else if(this.mSlingShotState == §@+§)
            {
               if(_loc3_.§5!z§)
               {
                  this.§ !E§(§`9§);
               }
            }
            else if(this.mSlingShotState == §`9§)
            {
               _loc4_ = this.§""t§ - _loc3_.radius * Math.cos(this.§<P§ / (180 / Math.PI));
               _loc5_ = this.§^$§ + _loc3_.radius * Math.sin(this.§<P§ / (180 / Math.PI));
               if(this.mDragging || this.§#]§ >= 0)
               {
                  _loc3_.setPosition(_loc4_,_loc5_,180 - this.§<P§);
               }
               else
               {
                  _loc3_.setPosition(_loc4_,_loc5_,this.angle);
               }
               if(this.§;""§)
               {
                  this.shootCurrentBird(this.§6!+§(),this.§<P§);
               }
            }
         }
      }
      
      public function §+!-§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§+e§ = null;
         if(this.§1#!§.length > 0)
         {
            _loc5_ = this.§1#!§[this.§%r§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2,180 - this.§<P§);
         this.shootCurrentBird(param3,param4);
      }
      
      protected function shootBird() : void
      {
         this.§?!>§ = false;
         var _loc1_:§+e§ = null;
         if(this.§1#!§.length > this.§%r§)
         {
            _loc1_ = this.§1#!§[this.§%r§];
         }
         if(!_loc1_)
         {
            return;
         }
         this.§+!J§ = new Date().time;
         this.§]""§.shootBird(_loc1_,this.§^"R§,this.§<P§);
         this.§>"§(this.§%r§,_loc1_.§=!8§ > 0);
         this.playBirdShotSound();
         if(this.§%r§ >= this.§1#!§.length)
         {
            this.§ !E§(§?]§);
         }
         else
         {
            this.§ !E§(§#w§);
         }
         dispatchEvent(new Event(§?!`§));
      }
      
      protected function §'n§(param1:Number) : void
      {
         if(this.§#]§ <= 0)
         {
            return;
         }
         this.§1"S§ = true;
         this.§#]§ -= param1;
         if(this.§#]§ <= 0)
         {
            this.§#]§ = 0;
         }
         var _loc2_:Number = this.§#]§ / §7!g§;
         var _loc3_:Number = this.§0]§ * Math.cos(_loc2_ * Math.PI * 8) * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_;
         this.§ P§(this.§<P§,_loc3_);
         if(this.§#]§ == 0)
         {
            this.§#]§ = -1;
            this.§#"d§();
         }
         if(this.§?!>§)
         {
            this.shootBird();
         }
      }
      
      public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         this.§^"R§ = param1;
         this.§<P§ = param2;
         this.§#]§ = §7!g§;
         this.§0]§ = this.§>#3§;
         this.mDragging = false;
         this.§;""§ = false;
         this.§?!>§ = true;
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §@§.§=Y§("BirdShot" + _loc1_);
      }
      
      public function §#!=§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§%r§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§1#!§.length)
         {
            this.§1#!§[_loc4_].update(param1,this.mSlingShotState == §7!w§,param2);
            _loc4_++;
         }
      }
      
      public function getCurrentBirdType() : String
      {
         var _loc1_:§+e§ = null;
         if(this.§%r§ < this.§1#!§.length)
         {
            _loc1_ = this.§1#!§[this.§%r§];
            return _loc1_.name;
         }
         return null;
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§+e§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§#"d§();
         if(this.§8!1§ >= this.§1#!§.length)
         {
            return false;
         }
         _loc1_ = this.§1#!§[this.§8!1§];
         _loc1_.§#>§(-1,true);
         _loc2_ = this.§]""§.levelItemManager.getItem(_loc1_.name).score;
         this.showScoreForRemainingBird(_loc1_,_loc2_);
         ++this.§8!1§;
         return true;
      }
      
      protected function showScoreForRemainingBird(param1:§+e§, param2:int) : void
      {
         this.§]""§.addScore(param2,§"!A§.§5"h§,true,param1.x,param1.y - 3,§;6§.§@# §(param1.name));
      }
      
      public function §0V§() : int
      {
         var _loc2_:§+e§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§1#!§)
         {
            _loc1_ += this.§]""§.levelItemManager.getItem(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §`!!§() : int
      {
         return this.§<h§;
      }
      
      protected function groundSlingshot() : void
      {
         var _loc4_:int = 0;
         var _loc1_:int = 1000;
         var _loc2_:Number = Math.cos(this.§`"j§ + Math.PI / 2) * this.§6^§;
         var _loc3_:Number = Math.sin(this.§`"j§ + Math.PI / 2) * this.§6^§;
         while((_loc4_ = this.§]""§.objects.§]1§(this.§4"`§ + _loc2_,this.§0"W§ + _loc3_)) == -1)
         {
            this.applyGravity(0.1);
            if(_loc1_-- <= 0)
            {
               break;
            }
         }
         this.§%w§ = -1;
      }
      
      public function §6#3§(param1:Number, param2:Number) : void
      {
         this.§ "6§.x = -param1;
         this.§ "6§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §`9§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function get canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §`9§ && this.§6!+§() >= §4y§ && this.§#]§ < 0;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§ !E§(§`9§);
         var _loc1_:§+e§ = this.§1#!§[this.§%r§];
         _loc1_.§#>§(§&s§.§4"3§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§+e§ = this.§1#!§[this.§%r§];
         _loc1_.§#>§(§&s§.§ "3§);
      }
      
      public function shoot() : void
      {
         this.§;""§ = true;
      }
      
      protected function §>"§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§+e§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§1#!§[param1])
         {
            _loc3_ = this.§1#!§[param1];
            this.§4!J§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.showDestructionParticles(this.§1#!§[param1]);
            }
            _loc3_.dispose();
            this.§1#!§[param1] = null;
         }
         this.§1#!§.splice(param1,1);
      }
      
      protected function showDestructionParticles(param1:§+e§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §3"X§.§;"l§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §3"X§.§;"l§) + Math.random() * -_loc8_ * 2;
            this.§]""§.particles.§[#$§(§;6§.§>!B§,§#"m§.§=!"§,§;6§.§7'§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§;6§.§ "'§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§]""§.particles.§[#$§(§;6§.§1"`§,§#"m§.§=!"§,§;6§.§7'§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:§+e§) : void
      {
         this.§>"§(this.§1#!§.indexOf(param1));
      }
      
      public function sortBirds() : void
      {
         var _loc1_:§+e§ = null;
         this.§1#!§.sort(this.§6"O§);
         while(this.§4!J§.numChildren > 0)
         {
            this.§4!J§.removeChildAt(0);
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§1#!§.length)
         {
            _loc1_ = this.§1#!§[_loc2_];
            this.§4!J§.addChildAt(_loc1_.sprite,0);
            _loc2_++;
         }
      }
      
      private function §6"O§(param1:§+e§, param2:§+e§) : Number
      {
         if(param1.§8"=§ < param2.§8"=§)
         {
            return -1;
         }
         if(param1.§8"=§ > param2.§8"=§)
         {
            return 1;
         }
         return 0;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §+e§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§1#!§.length)
         {
            if(this.§1#!§[_loc3_])
            {
               if(this.§1#!§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§1#!§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §4!s§(param1:Number, param2:Number) : §-R§
      {
         if(param1 >= this.§]!_§ - this.§'!J§ / 4 && param1 <= this.§]!_§ + this.§'!J§ / 4 && param2 >= this.§#j§ - this.§'!J§ / 4 && this.§#j§ <= this.§#j§ + this.§6^§)
         {
            return this;
         }
         return null;
      }
      
      public function §8#2§(param1:§<U§) : void
      {
         var _loc3_:§+e§ = null;
         var _loc4_:§var § = null;
         param1.slingshotX = this.§]!_§;
         param1.slingshotY = this.§#j§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§1#!§.length)
         {
            _loc3_ = this.§1#!§[_loc2_];
            (_loc4_ = new §var §()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.type = _loc3_.name;
            param1.§^"F§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §'!]§() : void
      {
         while(this.§1#!§.length > 0)
         {
            this.removeObject(this.§1#!§[0]);
         }
      }
      
      public function §["e§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§1#!§.length)
         {
            if(this.§1#!§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§1#!§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§]!_§ > param1.x && this.§]!_§ < param2.x && this.§#j§ > param1.y && this.§#j§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function addNewBirdToEndOfList(param1:String, param2:Number, param3:Number, param4:Number) : §+e§
      {
         var _loc5_:§+e§ = this.addSlingshotObject(param1,param2,param3,param4);
         this.sortBirds();
         return _loc5_;
      }
      
      public function getBirdCount() : int
      {
         return this.§1#!§.length;
      }
      
      public function §]X§() : int
      {
         return this.§<%§;
      }
   }
}
