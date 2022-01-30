package §9G§
{
   import §!"+§.§!o§;
   import §!"+§.§'!7§;
   import §!f§.§>!s§;
   import §!f§.§@"§;
   import §&!;§.Texture;
   import §-![§.§3!i§;
   import §-![§.§5!<§;
   import §-![§.DisplayObject;
   import §-![§.Sprite;
   import §0"1§.§ !T§;
   import §6`§.§-!i§;
   import §8!e§.§!!E§;
   import §8q§.§]d§;
   import §;4§.§]!%§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §9!G§ extends EventDispatcher
   {
      
      public static const §]"7§:String = "slingshot_shot_bird";
      
      private static const §;$§:int = 1800;
      
      public static const §0!t§:Number = 0.4;
      
      public static const §%!r§:int = 0;
      
      public static const §0!Z§:int = 1;
      
      public static const §15§:int = 2;
      
      public static const §#`§:int = 3;
      
      public static const §^a§:int = 5;
      
      public static const §?!G§:int = 6;
      
      public static const §^6§:int = 3151368;
      
      protected static var §"9§:Texture;
       
      
      protected var §`I§:§-!i§;
      
      protected var §5M§:§2F§;
      
      protected var §@!-§:Number;
      
      protected var §'!0§:Number;
      
      protected var §?!X§:Number;
      
      protected var §9!f§:Number = 8.5;
      
      protected var §^!5§:Number;
      
      protected var §&!c§:Number;
      
      protected var §"h§:Number;
      
      protected var §&"6§:Number;
      
      protected var §<!J§:Number = 1.0;
      
      protected var §1`§:Boolean;
      
      protected var §8X§:Boolean;
      
      protected var §06§:Boolean = false;
      
      public var §set §:Vector.<§1!a§>;
      
      public var §2V§:int;
      
      protected var §=6§:int = 0;
      
      protected var §]!k§:int;
      
      protected var §-!`§:Number;
      
      public var §%K§:Sprite;
      
      protected var §0!"§:Sprite;
      
      public var §6!Y§:int = 0;
      
      protected var §5u§:Number = 0;
      
      public var mSlingShotState:int;
      
      public var §="7§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §5U§:Boolean = false;
      
      public var §<5§:Number;
      
      protected var §[<§:Sprite;
      
      protected var §0"6§:Sprite;
      
      protected var §1y§:Sprite;
      
      protected var §<!k§:DisplayObject;
      
      protected var §2!S§:Sprite;
      
      protected var §3"1§:DisplayObject;
      
      protected var §[Q§:Sprite;
      
      protected var §="!§:DisplayObject;
      
      protected var §,K§:Sprite;
      
      protected var §?2§:Sprite;
      
      protected var §!!d§:DisplayObject;
      
      private var §`!>§:Number = 0;
      
      private var §?",§:Number = 0;
      
      private var §2R§:Number = -1;
      
      private var § M§:Number = 0;
      
      private var §#!F§:Boolean = false;
      
      private var §=C§:int = 0;
      
      public function §9!G§(param1:§2F§, param2:§!!E§, param3:Sprite, param4:Number = 1.0, param5:Boolean = true, param6:Boolean = true)
      {
         var _loc7_:int = 0;
         var _loc8_:§ !T§ = null;
         this.§set § = new Vector.<§1!a§>();
         super();
         this.§5M§ = param1;
         this.§[<§ = param3;
         this.§<!J§ = param4;
         this.§1`§ = param5;
         this.§8X§ = param6;
         if(param2)
         {
            this.setPosition(param2.slingshotX,param2.slingshotY,param2.§;!Y§);
            this.§6#§();
            _loc7_ = 0;
            while(_loc7_ < param2.§<w§)
            {
               _loc8_ = param2.§]!_§(_loc7_);
               this.§'!j§(_loc8_.type,_loc8_.x,_loc8_.y,_loc8_.angle,_loc8_.index);
               _loc7_++;
            }
            this.§=C§ = this.§5B§();
            this.§2V§ = 0;
            if(this.§set §.length <= 0)
            {
               §]!%§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§@!-§ + " " + this.§'!0§);
               this.§get §(§#`§);
            }
            else
            {
               this.§get §(§%!r§);
            }
         }
         else
         {
            §]!%§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§get §(§#`§);
         }
         this.§<5§ = 0;
         this.§<t§();
         this.update(0,true);
         this.§0!d§();
         this.§1!>§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§[<§;
      }
      
      public function get §-!r§() : Sprite
      {
         return this.§0!"§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§`!>§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§2V§ < this.§set §.length;
      }
      
      public function get §,!9§() : Number
      {
         return this.§5u§;
      }
      
      public function get x() : Number
      {
         return this.§@!-§;
      }
      
      public function get y() : Number
      {
         return this.§'!0§;
      }
      
      public function get angle() : Number
      {
         return this.§?!X§;
      }
      
      public function get §7!b§() : Boolean
      {
         return this.§8X§;
      }
      
      public function dispose() : void
      {
         while(this.§set §.length > 0)
         {
            this.§=2§(0);
         }
         this.§set § = null;
         if(this.§[<§)
         {
            this.§[<§.dispose();
            this.§[<§ = null;
         }
         this.§%K§ = null;
      }
      
      public function §4!G§(param1:String, param2:Number, param3:Number, param4:int) : §1!a§
      {
         var _loc6_:§1!a§ = null;
         if(this.§set §.length > 0)
         {
            (_loc6_ = this.§set §[0]).§>O§(false);
            _loc6_.§2![§ = false;
         }
         var _loc5_:§1!a§;
         (_loc5_ = this.§'!j§(param1,param2,param3,0,param4)).§>O§(true);
         return _loc5_;
      }
      
      protected function §'!j§(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §1!a§
      {
         var _loc6_:§!o§ = this.§5M§.levelItemManager.§8!f§(param1);
         var _loc7_:Sprite;
         (_loc7_ = new Sprite()).scaleX = _loc6_.scale;
         _loc7_.scaleY = _loc6_.scale;
         var _loc8_:§1!a§ = this.initializeSlingshotObject(_loc6_,param2,param3,param4,_loc7_,param5);
         if(param5 < 0)
         {
            this.§set §.push(_loc8_);
         }
         else
         {
            this.§set §.splice(param5,0,_loc8_);
         }
         ++this.§=6§;
         this.§%K§.addChild(_loc8_.sprite);
         return _loc8_;
      }
      
      protected function initializeSlingshotObject(param1:§!o§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §1!a§
      {
         return new §1!a§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
      }
      
      public function §get §(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §%!r§)
         {
            this.§%!u§();
            this.§-!`§ = 1000;
         }
         else if(this.mSlingShotState == §0!Z§)
         {
            this.§%!u§();
            this.§-!`§ = 0;
         }
         else if(this.mSlingShotState == §15§)
         {
            this.§-!`§ = 10000;
            this.§5U§ = false;
            this.§%!u§();
         }
         else if(this.mSlingShotState == §#`§)
         {
            this.§%!u§();
            this.§-!`§ = 2000;
         }
         else if(this.mSlingShotState == §^a§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§5U§ = false;
               this.§%!u§();
               this.§set §[this.§2V§].setPosition(this.§51§ - this.§set §[this.§2V§].radius * Math.cos(this.§5u§ / (180 / Math.PI)),this.§]!e§ + this.§set §[this.§2V§].radius * Math.sin(this.§5u§ / (180 / Math.PI)),180 - this.§5u§);
            }
            else
            {
               this.§%!u§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §[!i§() : §2F§
      {
         return this.§5M§;
      }
      
      public function §]!H§() : Boolean
      {
         return this.mSlingShotState == §#`§ && this.§-!`§ <= 0;
      }
      
      protected function §!F§() : §-!i§
      {
         return this.§5M§.§<a§.§#!r§("SLINGSHOT");
      }
      
      private function §6#§() : void
      {
         this.§`I§ = this.§!F§();
         this.§<!k§ = this.§`I§.getFrame(0);
         this.§<!k§.pivotX = -3;
         this.§<!k§.pivotY = -24;
         this.§!!d§ = this.§`I§.getFrame(1);
         this.§!!d§.pivotX = -30;
         this.§!!d§.pivotY = -30;
         this.§!!4§();
         this.§9-§();
         this.§0"6§ = new Sprite();
         this.§0"6§.addChild(this.§<!k§);
         this.§0"6§.addChild(this.§2!S§);
         this.§0!"§ = new Sprite();
         this.§%K§ = new Sprite();
         this.§1y§ = new Sprite();
         this.§1y§.addChild(this.§,K§);
         this.§1y§.addChild(this.§[Q§);
         this.§1y§.addChild(this.§!!d§);
         this.§`7§();
      }
      
      protected function §`7§() : void
      {
         this.§[<§.addChild(this.§0"6§);
         this.§[<§.addChild(this.§0!"§);
         this.§[<§.addChild(this.§%K§);
         this.§[<§.addChild(this.§1y§);
      }
      
      public function §!!4§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§^!5§ = this.§@!-§;
         this.§&!c§ = this.§'!0§;
         this.§&"6§ = §0i§.§2!7§;
         _loc1_ = null;
      }
      
      protected function §=!<§(param1:uint) : DisplayObject
      {
         return new §5!<§(2,2,param1);
      }
      
      protected function §?!$§(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc3_:BitmapData = null;
         if(!§"9§ || param2)
         {
            _loc3_ = new BitmapData(18,26,true,4278190080 | param1);
            if(§"9§)
            {
               this.§5M§.§ X§.§1!H§(§"9§);
            }
            §"9§ = this.§5M§.§ X§.§6"8§(_loc3_);
         }
         return new §3!i§(§"9§);
      }
      
      protected function §9-§(param1:uint = 3151368, param2:uint = 3151368, param3:Boolean = false) : void
      {
         this.§,K§ = new Sprite();
         this.§?2§ = new Sprite();
         var _loc4_:DisplayObject;
         (_loc4_ = this.§?!$§(param2,param3)).rotation = Math.PI;
         _loc4_.x = _loc4_.width / 2;
         _loc4_.y = _loc4_.height / 2;
         this.§?2§.addChild(_loc4_);
         this.§,K§.addChild(this.§?2§);
         this.§2!S§ = new Sprite();
         this.§2!S§.x = 22;
         this.§2!S§.y = 0;
         this.§3"1§ = this.§=!<§(param1);
         this.§2!S§.addChild(this.§3"1§);
         this.§[Q§ = new Sprite();
         this.§[Q§.x = -17;
         this.§[Q§.y = 5;
         this.§="!§ = this.§=!<§(param1);
         this.§[Q§.addChild(this.§="!§);
      }
      
      protected function §1!>§(param1:Number) : void
      {
         var _loc2_:Number = (this.§]!e§ - this.§'!0§) / §2F§.§6+§;
         var _loc3_:Number = (this.§51§ - this.§@!-§) / §2F§.§6+§;
         var _loc4_:Number = Math.cos(this.§?!X§);
         var _loc5_:Number = Math.sin(this.§?!X§);
         var _loc6_:Number = -Math.sin(this.§?!X§);
         var _loc7_:Number = Math.cos(this.§?!X§);
         var _loc8_:Number = _loc3_;
         var _loc9_:Number = _loc2_;
         _loc3_ = _loc8_ * _loc4_ + _loc9_ * _loc5_;
         _loc2_ = _loc8_ * _loc6_ + _loc9_ * _loc7_;
         var _loc10_:Number = 3.5 + 8 * ((this.§&"6§ - this.§]G§) / this.§&"6§);
         this.§,K§.x = _loc3_;
         this.§,K§.y = _loc2_;
         this.§,K§.rotation = -this.§?!X§ - this.§5u§ / (180 / Math.PI);
         this.§0"6§.x = this.§@!-§ / §2F§.§6+§;
         this.§0"6§.y = this.§'!0§ / §2F§.§6+§;
         this.§0"6§.rotation = this.§?!X§;
         this.§1y§.x = this.§@!-§ / §2F§.§6+§;
         this.§1y§.y = this.§'!0§ / §2F§.§6+§;
         this.§1y§.rotation = this.§?!X§;
         this.§[Q§.rotation = Math.atan2(_loc2_ - this.§[Q§.y,_loc3_ - this.§[Q§.x);
         this.§="!§.width = Math.sqrt(Math.pow(_loc3_ - this.§[Q§.x,2) + Math.pow(_loc2_ - this.§[Q§.y,2));
         this.§="!§.height = _loc10_ * 2;
         this.§="!§.y = -this.§="!§.height / 2;
         this.§2!S§.rotation = Math.atan2(_loc2_ - this.§2!S§.y,_loc3_ - this.§2!S§.x);
         this.§3"1§.width = Math.sqrt(Math.pow(_loc3_ - this.§2!S§.x,2) + Math.pow(_loc2_ - this.§2!S§.y,2));
         this.§3"1§.height = _loc10_ * 2;
         this.§3"1§.y = -this.§3"1§.height / 2;
         this.§="7§ = false;
      }
      
      public function §6!n§() : §1!a§
      {
         var _loc2_:§1!a§ = null;
         while(this.§set §.length > 0)
         {
            this.§=2§(0,true);
         }
         this.§^!R§();
         if(this.§set §.length > 0)
         {
            _loc2_ = this.§set §[0];
            _loc2_.§>O§(false);
         }
         var _loc1_:§1!a§ = this.§'!j§("BIRD_SARDINE",this.§@!-§,this.§'!0§,0);
         _loc1_.§>O§(true);
         _loc1_.§2![§ = false;
         this.§get §(§15§);
         return _loc1_;
      }
      
      protected function §^!R§() : void
      {
         §]d§.§^!J§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§get §(§^a§);
      }
      
      public function §%!u§() : void
      {
         this.setNewCoordinatesForRubber(this.§^!5§,this.§&!c§ + this.§&"6§ / 8);
      }
      
      protected function get §+R§() : Number
      {
         return this.§"h§ * this.§<!J§;
      }
      
      protected function get §]G§() : Number
      {
         return Math.min(this.§"h§,this.§&"6§);
      }
      
      protected function get §51§() : Number
      {
         if(this.§"h§ >= this.§&"6§)
         {
            return this.§^!5§ + this.§&"6§ * Math.cos(this.§5u§ / 180 * Math.PI);
         }
         return this.§^!5§ + this.§"h§ * Math.cos(this.§5u§ / 180 * Math.PI);
      }
      
      protected function get §]!e§() : Number
      {
         if(this.§"h§ >= this.§&"6§)
         {
            return this.§&!c§ - this.§&"6§ * Math.sin(this.§5u§ / 180 * Math.PI);
         }
         return this.§&!c§ - this.§"h§ * Math.sin(this.§5u§ / 180 * Math.PI);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         if(this.§2R§ > 0)
         {
            return false;
         }
         var _loc4_:Number = param1 - this.§^!5§;
         var _loc5_:Number = param2 - this.§&!c§;
         var _loc6_:Number;
         if((_loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) * this.§<!J§ > this.§&"6§)
         {
            if(param3)
            {
               return false;
            }
            _loc6_ = this.§&"6§ / this.§<!J§;
         }
         var _loc7_:Number = (_loc7_ = Math.atan2(-(param2 - this.§&!c§),param1 - this.§^!5§)) * (180 / Math.PI);
         if(!this.mDragging && this.§2R§ < 0)
         {
            _loc6_ = 0.8;
            _loc7_ = -160;
         }
         if(this.§1`§)
         {
            _loc6_ = this.§<!N§(_loc6_);
         }
         return this.§1d§(_loc7_,_loc6_);
      }
      
      protected function §<!N§(param1:Number) : Number
      {
         var _loc6_:Number = NaN;
         var _loc5_:Number = this.§&"6§ / 2;
         if(param1 > _loc5_)
         {
            if(this.§5u§ > -90 - 12 + 5 && this.§5u§ < -90 + 12 + 5)
            {
               return _loc5_;
            }
            if(this.§5u§ > -90 - 12 - 4 + 5 && this.§5u§ < -90 + 12 + 4 + 5)
            {
               return Number(_loc5_ + (this.§&"6§ - _loc5_) * (Math.abs(this.§5u§ - -90 - 5) - 12) / 4);
            }
         }
         return param1;
      }
      
      protected function §1d§(param1:Number, param2:Number) : Boolean
      {
         this.§5u§ = param1;
         this.§"h§ = param2;
         if(this.§"h§ <= this.§&"6§ * 0.45)
         {
            this.§06§ = true;
         }
         else if(this.§06§ && this.§"h§ >= this.§&"6§ * 0.8)
         {
            this.§'g§();
            this.§06§ = false;
         }
         this.§="7§ = true;
         return true;
      }
      
      protected function §'g§() : void
      {
         §]d§.§^!J§("SlingshotStreched");
      }
      
      protected function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§@!-§ + param1 * Math.cos(this.§?!X§ + Math.PI / 2),this.§'!0§ + param1 * Math.sin(this.§?!X§ + Math.PI / 2),this.§?!X§);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc5_:Number = param1 - this.§@!-§;
         this.§@!-§ = param1;
         var _loc6_:Number = param2 - this.§'!0§;
         this.§'!0§ = param2;
         this.§?!X§ = param3;
         this.§&!c§ += _loc6_;
         this.§^!5§ += _loc5_;
         if(param4)
         {
            this.§1!>§(0);
         }
         this.§="7§ = true;
      }
      
      protected function §4"1§() : Number
      {
         return this.§+R§ / this.§&"6§;
      }
      
      public function §25§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§1!a§ = this.§set §[this.§2V§];
         var _loc3_:Number = this.§4"1§();
         if(_loc2_)
         {
            _loc1_ = _loc2_.§-1§;
         }
         return _loc1_ * _loc3_;
      }
      
      public function §-W§() : Point
      {
         var _loc1_:§1!a§ = null;
         if(this.§set §.length > this.§2V§)
         {
            _loc1_ = this.§set §[this.§2V§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function § C§() : Point
      {
         return new Point(this.§^!5§,this.§&!c§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§1!a§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.§?7§(param1);
         if(this.§="7§)
         {
            this.§1!>§(param1);
         }
         this.§-!`§ -= param1;
         if(this.§-!`§ < 0)
         {
            this.§-!`§ = 0;
         }
         if(this.mSlingShotState != §#`§)
         {
            this.§'a§(param1,param2);
            _loc3_ = null;
            if(this.§set §.length > 0)
            {
               _loc3_ = this.§set §[this.§2V§];
            }
            if(_loc3_)
            {
               _loc3_.§+"8§(param1);
            }
            if(!_loc3_)
            {
               this.§get §(§#`§);
            }
            else if(this.mSlingShotState == §%!r§)
            {
               if(this.§-!`§ <= 0)
               {
                  this.§get §(§0!Z§);
                  _loc3_.§[a§();
               }
            }
            else if(this.mSlingShotState == §0!Z§)
            {
               if(_loc3_.§'B§)
               {
                  this.§get §(§15§);
               }
            }
            else if(this.mSlingShotState == §15§)
            {
               _loc4_ = this.§51§ - _loc3_.radius * Math.cos(this.§5u§ / (180 / Math.PI));
               _loc5_ = this.§]!e§ + _loc3_.radius * Math.sin(this.§5u§ / (180 / Math.PI));
               if(this.mDragging || this.§2R§ >= 0)
               {
                  _loc3_.setPosition(_loc4_,_loc5_,180 - this.§5u§);
               }
               else
               {
                  _loc3_.setPosition(_loc4_,_loc5_,this.angle);
               }
               if(this.§5U§)
               {
                  this.§-"&§(this.§4"1§(),this.§5u§);
               }
            }
         }
      }
      
      public function §&_§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§1!a§ = null;
         if(this.§set §.length > 0)
         {
            _loc5_ = this.§set §[this.§2V§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2,180 - this.§5u§);
         this.§-"&§(param3,param4);
      }
      
      protected function §2c§() : void
      {
         this.§#!F§ = false;
         var _loc1_:§1!a§ = null;
         if(this.§set §.length > this.§2V§)
         {
            _loc1_ = this.§set §[this.§2V§];
         }
         if(!_loc1_)
         {
            return;
         }
         this.§`!>§ = new Date().time;
         this.§5M§.§2c§(_loc1_,this.§?",§,this.§5u§);
         this.§=2§(this.§2V§,_loc1_.§0"%§ > 0);
         this.§[F§();
         if(this.§2V§ >= this.§set §.length)
         {
            this.§get §(§#`§);
         }
         else
         {
            this.§get §(§%!r§);
         }
         dispatchEvent(new Event(§]"7§));
      }
      
      protected function §?7§(param1:Number) : void
      {
         if(this.§2R§ <= 0)
         {
            return;
         }
         this.§="7§ = true;
         this.§2R§ -= param1;
         if(this.§2R§ <= 0)
         {
            this.§2R§ = 0;
         }
         var _loc2_:Number = this.§2R§ / §;$§;
         var _loc3_:Number = this.§ M§ * Math.cos(_loc2_ * Math.PI * 8) * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_;
         this.§1d§(this.§5u§,_loc3_);
         if(this.§2R§ == 0)
         {
            this.§2R§ = -1;
            this.§%!u§();
         }
         if(this.§#!F§)
         {
            this.§2c§();
         }
      }
      
      public function §-"&§(param1:Number, param2:Number) : void
      {
         this.§?",§ = param1;
         this.§5u§ = param2;
         this.§2R§ = §;$§;
         this.§ M§ = this.§"h§;
         this.mDragging = false;
         this.§5U§ = false;
         this.§#!F§ = true;
      }
      
      protected function §[F§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §]d§.§^!J§("BirdShot" + _loc1_);
      }
      
      public function §'a§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§2V§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§set §.length)
         {
            this.§set §[_loc4_].update(param1,this.mSlingShotState == §^a§,param2);
            _loc4_++;
         }
      }
      
      public function §!k§() : String
      {
         var _loc1_:§1!a§ = null;
         if(this.§2V§ < this.§set §.length)
         {
            _loc1_ = this.§set §[this.§2V§];
            return _loc1_.name;
         }
         return null;
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§1!a§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§%!u§();
         if(this.§]!k§ >= this.§set §.length)
         {
            return false;
         }
         _loc1_ = this.§set §[this.§]!k§];
         _loc1_.§4!E§(-1,true);
         _loc2_ = this.§5M§.levelItemManager.§8!f§(_loc1_.name).score;
         this.§>S§(_loc1_,_loc2_);
         ++this.§]!k§;
         return true;
      }
      
      protected function §>S§(param1:§1!a§, param2:int) : void
      {
         this.§5M§.addScore(param2,§7!y§.§default§,true,param1.x,param1.y - 3,§@"§.§'9§(param1.name));
      }
      
      public function §5B§() : int
      {
         var _loc2_:§1!a§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§set §)
         {
            _loc1_ += this.§5M§.levelItemManager.§8!f§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §6!5§() : int
      {
         return this.§=C§;
      }
      
      protected function §0!d§() : void
      {
         var _loc4_:int = 0;
         var _loc1_:int = 1000;
         var _loc2_:Number = Math.cos(this.§?!X§ + Math.PI / 2) * this.§9!f§;
         var _loc3_:Number = Math.sin(this.§?!X§ + Math.PI / 2) * this.§9!f§;
         while((_loc4_ = this.§5M§.objects.§@d§(this.§^!5§ + _loc2_,this.§&!c§ + _loc3_)) == -1)
         {
            this.applyGravity(0.1);
            if(_loc1_-- <= 0)
            {
               break;
            }
         }
         this.§<5§ = -1;
      }
      
      public function §`!Z§(param1:Number, param2:Number) : void
      {
         this.§[<§.x = -param1;
         this.§[<§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §15§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function get canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §15§ && this.§4"1§() >= §0!t§ && this.§2R§ < 0;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§get §(§15§);
         var _loc1_:§1!a§ = this.§set §[this.§2V§];
         _loc1_.§4!E§(§'!7§.§%b§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§1!a§ = this.§set §[this.§2V§];
         _loc1_.§4!E§(§'!7§.§&!Y§);
      }
      
      public function shoot() : void
      {
         this.§5U§ = true;
      }
      
      protected function §=2§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§1!a§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§set §[param1])
         {
            _loc3_ = this.§set §[param1];
            this.§%K§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§use §(this.§set §[param1]);
            }
            _loc3_.dispose();
            this.§set §[param1] = null;
         }
         this.§set §.splice(param1,1);
      }
      
      protected function §use §(param1:§1!a§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §2F§.§6+§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §2F§.§6+§) + Math.random() * -_loc8_ * 2;
            this.§5M§.particles.§8" §(§@"§.§]!w§,§>!s§.§>M§,§@"§.§7![§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§@"§.§?"1§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§5M§.particles.§8" §(§@"§.§^V§,§>!s§.§>M§,§@"§.§7![§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:§1!a§) : void
      {
         this.§=2§(this.§set §.indexOf(param1));
      }
      
      public function §<t§() : void
      {
         var _loc1_:§1!a§ = null;
         this.§set §.sort(this.§;!e§);
         while(this.§%K§.numChildren > 0)
         {
            this.§%K§.removeChildAt(0);
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§set §.length)
         {
            _loc1_ = this.§set §[_loc2_];
            this.§%K§.addChildAt(_loc1_.sprite,0);
            _loc2_++;
         }
      }
      
      private function §;!e§(param1:§1!a§, param2:§1!a§) : Number
      {
         if(param1.§0!]§ < param2.§0!]§)
         {
            return -1;
         }
         if(param1.§0!]§ > param2.§0!]§)
         {
            return 1;
         }
         return 0;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §1!a§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§set §.length)
         {
            if(this.§set §[_loc3_])
            {
               if(this.§set §[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§set §[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §3w§(param1:Number, param2:Number) : §9!G§
      {
         if(param1 >= this.§@!-§ - this.§&"6§ / 4 && param1 <= this.§@!-§ + this.§&"6§ / 4 && param2 >= this.§'!0§ - this.§&"6§ / 4 && this.§'!0§ <= this.§'!0§ + this.§9!f§)
         {
            return this;
         }
         return null;
      }
      
      public function §4=§(param1:§!!E§) : void
      {
         var _loc3_:§1!a§ = null;
         var _loc4_:§ !T§ = null;
         param1.slingshotX = this.§@!-§;
         param1.slingshotY = this.§'!0§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§set §.length)
         {
            _loc3_ = this.§set §[_loc2_];
            (_loc4_ = new § !T§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.type = _loc3_.name;
            param1.§7!z§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §@!y§() : void
      {
         while(this.§set §.length > 0)
         {
            this.removeObject(this.§set §[0]);
         }
      }
      
      public function §7!^§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§set §.length)
         {
            if(this.§set §[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§set §[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§@!-§ > param1.x && this.§@!-§ < param2.x && this.§'!0§ > param1.y && this.§'!0§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §6"3§(param1:String, param2:Number, param3:Number, param4:Number) : §1!a§
      {
         var _loc5_:§1!a§ = this.§'!j§(param1,param2,param3,param4);
         this.§<t§();
         return _loc5_;
      }
      
      public function §%S§() : int
      {
         return this.§set §.length;
      }
      
      public function §2G§() : int
      {
         return this.§=6§;
      }
   }
}
