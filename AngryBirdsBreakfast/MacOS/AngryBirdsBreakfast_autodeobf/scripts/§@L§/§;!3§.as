package §@L§
{
   import § ! §.§5!v§;
   import §%q§.Texture;
   import §&v§.§,4§;
   import §&v§.§9B§;
   import §1T§.§'!c§;
   import §6![§.§ !f§;
   import §6![§.§1!J§;
   import §6![§.DisplayObject;
   import §6![§.Sprite;
   import §8!K§.§5!0§;
   import §>!Z§.§!u§;
   import §>!Z§.§2_§;
   import §?s§.§^!n§;
   import each.§!!'§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §;!3§ extends EventDispatcher
   {
      
      public static const §+e§:String = "slingshot_shot_bird";
      
      private static const §?M§:int = 1800;
      
      public static const §5!@§:Number = 0.4;
      
      public static const §-a§:int = 0;
      
      public static const §14§:int = 1;
      
      public static const §throw§:int = 2;
      
      public static const §0!7§:int = 3;
      
      public static const §9"$§:int = 5;
      
      public static const §@!9§:int = 6;
      
      public static const §6!§:int = 3151368;
      
      protected static var §^q§:Texture;
       
      
      protected var §;C§:§5!v§;
      
      protected var §<Y§:§?!'§;
      
      protected var §%!3§:Number;
      
      protected var §?!e§:Number;
      
      protected var §-Y§:Number;
      
      protected var §7Z§:Number = 8.5;
      
      protected var §2!B§:Number;
      
      protected var §?!d§:Number;
      
      protected var §&k§:Number;
      
      protected var §2![§:Number;
      
      protected var §[t§:Number = 1.0;
      
      protected var §]@§:Boolean;
      
      protected var §?%§:Boolean;
      
      protected var §`"-§:Boolean = false;
      
      public var §06§:Vector.<§3!&§>;
      
      public var §;!#§:int;
      
      protected var §=8§:int = 0;
      
      protected var §@"&§:int;
      
      protected var §="#§:Number;
      
      public var § "$§:Sprite;
      
      protected var §7!X§:Sprite;
      
      public var §!!s§:int = 0;
      
      protected var §1!C§:Number = 0;
      
      public var mSlingShotState:int;
      
      public var §^f§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §45§:Boolean = false;
      
      public var §'C§:Number;
      
      protected var §#e§:Sprite;
      
      protected var §6!V§:Sprite;
      
      protected var §4!P§:Sprite;
      
      protected var §;s§:DisplayObject;
      
      protected var §3!-§:Sprite;
      
      protected var §4!F§:DisplayObject;
      
      protected var §`!?§:Sprite;
      
      protected var §`U§:DisplayObject;
      
      protected var §2!d§:Sprite;
      
      protected var §default§:Sprite;
      
      protected var §;"§:DisplayObject;
      
      private var §7!s§:Number = 0;
      
      private var §6#§:Number = 0;
      
      private var §&!y§:Number = -1;
      
      private var § !>§:Number = 0;
      
      private var §5U§:Boolean = false;
      
      private var §@n§:int = 0;
      
      public function §;!3§(param1:§?!'§, param2:§5!0§, param3:Sprite, param4:Number = 1.0, param5:Boolean = true, param6:Boolean = true)
      {
         var _loc7_:int = 0;
         var _loc8_:§^!n§ = null;
         this.§06§ = new Vector.<§3!&§>();
         super();
         this.§<Y§ = param1;
         this.§#e§ = param3;
         this.§[t§ = param4;
         this.§]@§ = param5;
         this.§?%§ = param6;
         if(param2)
         {
            this.setPosition(param2.slingshotX,param2.slingshotY,param2.§6C§);
            this.§2!K§();
            _loc7_ = 0;
            while(_loc7_ < param2.§1t§)
            {
               _loc8_ = param2.§-!Y§(_loc7_);
               this.§<L§(_loc8_.type,_loc8_.x,_loc8_.y,_loc8_.angle,_loc8_.index);
               _loc7_++;
            }
            this.§@n§ = this.§&!2§();
            this.§;!#§ = 0;
            if(this.§06§.length <= 0)
            {
               §!!'§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§%!3§ + " " + this.§?!e§);
               this.§#P§(§0!7§);
            }
            else
            {
               this.§#P§(§-a§);
            }
         }
         else
         {
            §!!'§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§#P§(§0!7§);
         }
         this.§'C§ = 0;
         this.§<]§();
         this.update(0,true);
         this.§`i§();
         this.§2?§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§#e§;
      }
      
      public function get §'!G§() : Sprite
      {
         return this.§7!X§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§7!s§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§;!#§ < this.§06§.length;
      }
      
      public function get §'B§() : Number
      {
         return this.§1!C§;
      }
      
      public function get x() : Number
      {
         return this.§%!3§;
      }
      
      public function get y() : Number
      {
         return this.§?!e§;
      }
      
      public function get angle() : Number
      {
         return this.§-Y§;
      }
      
      public function get §,j§() : Boolean
      {
         return this.§?%§;
      }
      
      public function dispose() : void
      {
         while(this.§06§.length > 0)
         {
            this.§`!L§(0);
         }
         this.§06§ = null;
         if(this.§#e§)
         {
            this.§#e§.dispose();
            this.§#e§ = null;
         }
         this.§ "$§ = null;
      }
      
      public function §>`§(param1:String, param2:Number, param3:Number, param4:int) : §3!&§
      {
         var _loc6_:§3!&§ = null;
         if(this.§06§.length > 0)
         {
            (_loc6_ = this.§06§[0]).§?!m§(false);
            _loc6_.§6s§ = false;
         }
         var _loc5_:§3!&§;
         (_loc5_ = this.§<L§(param1,param2,param3,0,param4)).§?!m§(true);
         return _loc5_;
      }
      
      protected function §<L§(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §3!&§
      {
         var _loc6_:§9B§ = this.§<Y§.levelItemManager.§"!?§(param1);
         var _loc7_:Sprite;
         (_loc7_ = new Sprite()).scaleX = _loc6_.scale;
         _loc7_.scaleY = _loc6_.scale;
         var _loc8_:§3!&§ = this.initializeSlingshotObject(_loc6_,param2,param3,param4,_loc7_,param5);
         if(param5 < 0)
         {
            this.§06§.push(_loc8_);
         }
         else
         {
            this.§06§.splice(param5,0,_loc8_);
         }
         ++this.§=8§;
         this.§ "$§.addChild(_loc8_.sprite);
         return _loc8_;
      }
      
      protected function initializeSlingshotObject(param1:§9B§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §3!&§
      {
         return new §3!&§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
      }
      
      public function §#P§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §-a§)
         {
            this.§6G§();
            this.§="#§ = 1000;
         }
         else if(this.mSlingShotState == §14§)
         {
            this.§6G§();
            this.§="#§ = 0;
         }
         else if(this.mSlingShotState == §throw§)
         {
            this.§="#§ = 10000;
            this.§45§ = false;
            this.§6G§();
         }
         else if(this.mSlingShotState == §0!7§)
         {
            this.§6G§();
            this.§="#§ = 2000;
         }
         else if(this.mSlingShotState == §9"$§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§45§ = false;
               this.§6G§();
               this.§06§[this.§;!#§].setPosition(this.§7#§ - this.§06§[this.§;!#§].radius * Math.cos(this.§1!C§ / (180 / Math.PI)),this.§8A§ + this.§06§[this.§;!#§].radius * Math.sin(this.§1!C§ / (180 / Math.PI)),180 - this.§1!C§);
            }
            else
            {
               this.§6G§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §`!&§() : §?!'§
      {
         return this.§<Y§;
      }
      
      public function §&P§() : Boolean
      {
         return this.mSlingShotState == §0!7§ && this.§="#§ <= 0;
      }
      
      protected function §`!t§() : §5!v§
      {
         return this.§<Y§.§5-§.§#w§("SLINGSHOT");
      }
      
      private function §2!K§() : void
      {
         this.§;C§ = this.§`!t§();
         this.§;s§ = this.§;C§.getFrame(0);
         this.§;s§.pivotX = -3;
         this.§;s§.pivotY = -24;
         this.§;"§ = this.§;C§.getFrame(1);
         this.§;"§.pivotX = -30;
         this.§;"§.pivotY = -30;
         this.§@1§();
         this.§27§();
         this.§6!V§ = new Sprite();
         this.§6!V§.addChild(this.§;s§);
         this.§6!V§.addChild(this.§3!-§);
         this.§7!X§ = new Sprite();
         this.§ "$§ = new Sprite();
         this.§4!P§ = new Sprite();
         this.§4!P§.addChild(this.§2!d§);
         this.§4!P§.addChild(this.§`!?§);
         this.§4!P§.addChild(this.§;"§);
         this.§@!@§();
      }
      
      protected function §@!@§() : void
      {
         this.§#e§.addChild(this.§6!V§);
         this.§#e§.addChild(this.§7!X§);
         this.§#e§.addChild(this.§ "$§);
         this.§#e§.addChild(this.§4!P§);
      }
      
      public function §@1§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§2!B§ = this.§%!3§;
         this.§?!d§ = this.§?!e§;
         this.§2![§ = §=b§.§-!%§;
         _loc1_ = null;
      }
      
      protected function §#!2§(param1:uint) : DisplayObject
      {
         return new § !f§(2,2,param1);
      }
      
      protected function §1g§(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc3_:BitmapData = null;
         if(!§^q§ || param2)
         {
            _loc3_ = new BitmapData(18,26,true,4278190080 | param1);
            if(§^q§)
            {
               this.§<Y§.§58§.§ !A§(§^q§);
            }
            §^q§ = this.§<Y§.§58§.§%^§(_loc3_);
         }
         return new §1!J§(§^q§);
      }
      
      protected function §27§(param1:uint = 3151368, param2:uint = 3151368, param3:Boolean = false) : void
      {
         this.§2!d§ = new Sprite();
         this.§default§ = new Sprite();
         var _loc4_:DisplayObject;
         (_loc4_ = this.§1g§(param2,param3)).rotation = Math.PI;
         _loc4_.x = _loc4_.width / 2;
         _loc4_.y = _loc4_.height / 2;
         this.§default§.addChild(_loc4_);
         this.§2!d§.addChild(this.§default§);
         this.§3!-§ = new Sprite();
         this.§3!-§.x = 22;
         this.§3!-§.y = 0;
         this.§4!F§ = this.§#!2§(param1);
         this.§3!-§.addChild(this.§4!F§);
         this.§`!?§ = new Sprite();
         this.§`!?§.x = -17;
         this.§`!?§.y = 5;
         this.§`U§ = this.§#!2§(param1);
         this.§`!?§.addChild(this.§`U§);
      }
      
      protected function §2?§(param1:Number) : void
      {
         var _loc2_:Number = (this.§8A§ - this.§?!e§) / §?!'§.§'!i§;
         var _loc3_:Number = (this.§7#§ - this.§%!3§) / §?!'§.§'!i§;
         var _loc4_:Number = Math.cos(this.§-Y§);
         var _loc5_:Number = Math.sin(this.§-Y§);
         var _loc6_:Number = -Math.sin(this.§-Y§);
         var _loc7_:Number = Math.cos(this.§-Y§);
         var _loc8_:Number = _loc3_;
         var _loc9_:Number = _loc2_;
         _loc3_ = _loc8_ * _loc4_ + _loc9_ * _loc5_;
         _loc2_ = _loc8_ * _loc6_ + _loc9_ * _loc7_;
         var _loc10_:Number = 3.5 + 8 * ((this.§2![§ - this.§ !"§) / this.§2![§);
         this.§2!d§.x = _loc3_;
         this.§2!d§.y = _loc2_;
         this.§2!d§.rotation = -this.§-Y§ - this.§1!C§ / (180 / Math.PI);
         this.§6!V§.x = this.§%!3§ / §?!'§.§'!i§;
         this.§6!V§.y = this.§?!e§ / §?!'§.§'!i§;
         this.§6!V§.rotation = this.§-Y§;
         this.§4!P§.x = this.§%!3§ / §?!'§.§'!i§;
         this.§4!P§.y = this.§?!e§ / §?!'§.§'!i§;
         this.§4!P§.rotation = this.§-Y§;
         this.§`!?§.rotation = Math.atan2(_loc2_ - this.§`!?§.y,_loc3_ - this.§`!?§.x);
         this.§`U§.width = Math.sqrt(Math.pow(_loc3_ - this.§`!?§.x,2) + Math.pow(_loc2_ - this.§`!?§.y,2));
         this.§`U§.height = _loc10_ * 2;
         this.§`U§.y = -this.§`U§.height / 2;
         this.§3!-§.rotation = Math.atan2(_loc2_ - this.§3!-§.y,_loc3_ - this.§3!-§.x);
         this.§4!F§.width = Math.sqrt(Math.pow(_loc3_ - this.§3!-§.x,2) + Math.pow(_loc2_ - this.§3!-§.y,2));
         this.§4!F§.height = _loc10_ * 2;
         this.§4!F§.y = -this.§4!F§.height / 2;
         this.§^f§ = false;
      }
      
      public function §1!G§() : §3!&§
      {
         var _loc2_:§3!&§ = null;
         while(this.§06§.length > 0)
         {
            this.§`!L§(0,true);
         }
         this.§1!w§();
         if(this.§06§.length > 0)
         {
            _loc2_ = this.§06§[0];
            _loc2_.§?!m§(false);
         }
         var _loc1_:§3!&§ = this.§<L§("BIRD_SARDINE",this.§%!3§,this.§?!e§,0);
         _loc1_.§?!m§(true);
         _loc1_.§6s§ = false;
         this.§#P§(§throw§);
         return _loc1_;
      }
      
      protected function §1!w§() : void
      {
         §'!c§.§3!f§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§#P§(§9"$§);
      }
      
      public function §6G§() : void
      {
         this.setNewCoordinatesForRubber(this.§2!B§,this.§?!d§ + this.§2![§ / 8);
      }
      
      protected function get §!Z§() : Number
      {
         return this.§&k§ * this.§[t§;
      }
      
      protected function get § !"§() : Number
      {
         return Math.min(this.§&k§,this.§2![§);
      }
      
      protected function get §7#§() : Number
      {
         if(this.§&k§ >= this.§2![§)
         {
            return this.§2!B§ + this.§2![§ * Math.cos(this.§1!C§ / 180 * Math.PI);
         }
         return this.§2!B§ + this.§&k§ * Math.cos(this.§1!C§ / 180 * Math.PI);
      }
      
      protected function get §8A§() : Number
      {
         if(this.§&k§ >= this.§2![§)
         {
            return this.§?!d§ - this.§2![§ * Math.sin(this.§1!C§ / 180 * Math.PI);
         }
         return this.§?!d§ - this.§&k§ * Math.sin(this.§1!C§ / 180 * Math.PI);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         if(this.§&!y§ > 0)
         {
            return false;
         }
         var _loc4_:Number = param1 - this.§2!B§;
         var _loc5_:Number = param2 - this.§?!d§;
         var _loc6_:Number;
         if((_loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) * this.§[t§ > this.§2![§)
         {
            if(param3)
            {
               return false;
            }
            _loc6_ = this.§2![§ / this.§[t§;
         }
         var _loc7_:Number = (_loc7_ = Math.atan2(-(param2 - this.§?!d§),param1 - this.§2!B§)) * (180 / Math.PI);
         if(!this.mDragging && this.§&!y§ < 0)
         {
            _loc6_ = 0.8;
            _loc7_ = -160;
         }
         if(this.§]@§)
         {
            _loc6_ = this.§%=§(_loc6_);
         }
         return this.§2!6§(_loc7_,_loc6_);
      }
      
      protected function §%=§(param1:Number) : Number
      {
         var _loc6_:Number = NaN;
         var _loc5_:Number = this.§2![§ / 2;
         if(param1 > _loc5_)
         {
            if(this.§1!C§ > -90 - 12 + 5 && this.§1!C§ < -90 + 12 + 5)
            {
               return _loc5_;
            }
            if(this.§1!C§ > -90 - 12 - 4 + 5 && this.§1!C§ < -90 + 12 + 4 + 5)
            {
               return Number(_loc5_ + (this.§2![§ - _loc5_) * (Math.abs(this.§1!C§ - -90 - 5) - 12) / 4);
            }
         }
         return param1;
      }
      
      protected function §2!6§(param1:Number, param2:Number) : Boolean
      {
         this.§1!C§ = param1;
         this.§&k§ = param2;
         if(this.§&k§ <= this.§2![§ * 0.45)
         {
            this.§`"-§ = true;
         }
         else if(this.§`"-§ && this.§&k§ >= this.§2![§ * 0.8)
         {
            this.§^V§();
            this.§`"-§ = false;
         }
         this.§^f§ = true;
         return true;
      }
      
      protected function §^V§() : void
      {
         §'!c§.§3!f§("SlingshotStreched");
      }
      
      protected function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§%!3§ + param1 * Math.cos(this.§-Y§ + Math.PI / 2),this.§?!e§ + param1 * Math.sin(this.§-Y§ + Math.PI / 2),this.§-Y§);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc5_:Number = param1 - this.§%!3§;
         this.§%!3§ = param1;
         var _loc6_:Number = param2 - this.§?!e§;
         this.§?!e§ = param2;
         this.§-Y§ = param3;
         this.§?!d§ += _loc6_;
         this.§2!B§ += _loc5_;
         if(param4)
         {
            this.§2?§(0);
         }
         this.§^f§ = true;
      }
      
      protected function §^!S§() : Number
      {
         return this.§!Z§ / this.§2![§;
      }
      
      public function §;^§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§3!&§ = this.§06§[this.§;!#§];
         var _loc3_:Number = this.§^!S§();
         if(_loc2_)
         {
            _loc1_ = _loc2_.§;!x§;
         }
         return _loc1_ * _loc3_;
      }
      
      public function §?!P§() : Point
      {
         var _loc1_:§3!&§ = null;
         if(this.§06§.length > this.§;!#§)
         {
            _loc1_ = this.§06§[this.§;!#§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §!=§() : Point
      {
         return new Point(this.§2!B§,this.§?!d§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§3!&§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.§3P§(param1);
         if(this.§^f§)
         {
            this.§2?§(param1);
         }
         this.§="#§ -= param1;
         if(this.§="#§ < 0)
         {
            this.§="#§ = 0;
         }
         if(this.mSlingShotState != §0!7§)
         {
            this.§!!F§(param1,param2);
            _loc3_ = null;
            if(this.§06§.length > 0)
            {
               _loc3_ = this.§06§[this.§;!#§];
            }
            if(_loc3_)
            {
               _loc3_.§#!`§(param1);
            }
            if(!_loc3_)
            {
               this.§#P§(§0!7§);
            }
            else if(this.mSlingShotState == §-a§)
            {
               if(this.§="#§ <= 0)
               {
                  this.§#P§(§14§);
                  _loc3_.§`!d§();
               }
            }
            else if(this.mSlingShotState == §14§)
            {
               if(_loc3_.§?!4§)
               {
                  this.§#P§(§throw§);
               }
            }
            else if(this.mSlingShotState == §throw§)
            {
               _loc4_ = this.§7#§ - _loc3_.radius * Math.cos(this.§1!C§ / (180 / Math.PI));
               _loc5_ = this.§8A§ + _loc3_.radius * Math.sin(this.§1!C§ / (180 / Math.PI));
               if(this.mDragging || this.§&!y§ >= 0)
               {
                  _loc3_.setPosition(_loc4_,_loc5_,180 - this.§1!C§);
               }
               else
               {
                  _loc3_.setPosition(_loc4_,_loc5_,this.angle);
               }
               if(this.§45§)
               {
                  this.§3u§(this.§^!S§(),this.§1!C§);
               }
            }
         }
      }
      
      public function §4C§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§3!&§ = null;
         if(this.§06§.length > 0)
         {
            _loc5_ = this.§06§[this.§;!#§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2,180 - this.§1!C§);
         this.§3u§(param3,param4);
      }
      
      protected function §&H§() : void
      {
         this.§5U§ = false;
         var _loc1_:§3!&§ = null;
         if(this.§06§.length > this.§;!#§)
         {
            _loc1_ = this.§06§[this.§;!#§];
         }
         if(!_loc1_)
         {
            return;
         }
         this.§7!s§ = new Date().time;
         this.§<Y§.§&H§(_loc1_,this.§6#§,this.§1!C§);
         this.§`!L§(this.§;!#§,_loc1_.§3! § > 0);
         this.§0k§();
         if(this.§;!#§ >= this.§06§.length)
         {
            this.§#P§(§0!7§);
         }
         else
         {
            this.§#P§(§-a§);
         }
         dispatchEvent(new Event(§+e§));
      }
      
      protected function §3P§(param1:Number) : void
      {
         if(this.§&!y§ <= 0)
         {
            return;
         }
         this.§^f§ = true;
         this.§&!y§ -= param1;
         if(this.§&!y§ <= 0)
         {
            this.§&!y§ = 0;
         }
         var _loc2_:Number = this.§&!y§ / §?M§;
         var _loc3_:Number = this.§ !>§ * Math.cos(_loc2_ * Math.PI * 8) * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_;
         this.§2!6§(this.§1!C§,_loc3_);
         if(this.§&!y§ == 0)
         {
            this.§&!y§ = -1;
            this.§6G§();
         }
         if(this.§5U§)
         {
            this.§&H§();
         }
      }
      
      public function §3u§(param1:Number, param2:Number) : void
      {
         this.§6#§ = param1;
         this.§1!C§ = param2;
         this.§&!y§ = §?M§;
         this.§ !>§ = this.§&k§;
         this.mDragging = false;
         this.§45§ = false;
         this.§5U§ = true;
      }
      
      protected function §0k§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §'!c§.§3!f§("BirdShot" + _loc1_);
      }
      
      public function §!!F§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§;!#§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§06§.length)
         {
            this.§06§[_loc4_].update(param1,this.mSlingShotState == §9"$§,param2);
            _loc4_++;
         }
      }
      
      public function §4K§() : String
      {
         var _loc1_:§3!&§ = null;
         if(this.§;!#§ < this.§06§.length)
         {
            _loc1_ = this.§06§[this.§;!#§];
            return _loc1_.name;
         }
         return null;
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§3!&§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§6G§();
         if(this.§@"&§ >= this.§06§.length)
         {
            return false;
         }
         _loc1_ = this.§06§[this.§@"&§];
         _loc1_.§?!h§(-1,true);
         _loc2_ = this.§<Y§.levelItemManager.§"!?§(_loc1_.name).score;
         this.§,<§(_loc1_,_loc2_);
         ++this.§@"&§;
         return true;
      }
      
      protected function §,<§(param1:§3!&§, param2:int) : void
      {
         this.§<Y§.addScore(param2,§!]§.§5!Q§,true,param1.x,param1.y - 3,§2_§.§1!B§(param1.name));
      }
      
      public function §&!2§() : int
      {
         var _loc2_:§3!&§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§06§)
         {
            _loc1_ += this.§<Y§.levelItemManager.§"!?§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §,Z§() : int
      {
         return this.§@n§;
      }
      
      protected function §`i§() : void
      {
         var _loc4_:int = 0;
         var _loc1_:int = 1000;
         var _loc2_:Number = Math.cos(this.§-Y§ + Math.PI / 2) * this.§7Z§;
         var _loc3_:Number = Math.sin(this.§-Y§ + Math.PI / 2) * this.§7Z§;
         while((_loc4_ = this.§<Y§.objects.§>!v§(this.§2!B§ + _loc2_,this.§?!d§ + _loc3_)) == -1)
         {
            this.applyGravity(0.1);
            if(_loc1_-- <= 0)
            {
               break;
            }
         }
         this.§'C§ = -1;
      }
      
      public function §=!F§(param1:Number, param2:Number) : void
      {
         this.§#e§.x = -param1;
         this.§#e§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §throw§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function get canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §throw§ && this.§^!S§() >= §5!@§ && this.§&!y§ < 0;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§#P§(§throw§);
         var _loc1_:§3!&§ = this.§06§[this.§;!#§];
         _loc1_.§?!h§(§,4§.§+v§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§3!&§ = this.§06§[this.§;!#§];
         _loc1_.§?!h§(§,4§.§!U§);
      }
      
      public function shoot() : void
      {
         this.§45§ = true;
      }
      
      protected function §`!L§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§3!&§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§06§[param1])
         {
            _loc3_ = this.§06§[param1];
            this.§ "$§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§ else§(this.§06§[param1]);
            }
            _loc3_.dispose();
            this.§06§[param1] = null;
         }
         this.§06§.splice(param1,1);
      }
      
      protected function § else§(param1:§3!&§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §?!'§.§'!i§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §?!'§.§'!i§) + Math.random() * -_loc8_ * 2;
            this.§<Y§.particles.§-!,§(§2_§.§0!2§,§!u§.§54§,§2_§.§4d§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§2_§.§%j§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§<Y§.particles.§-!,§(§2_§.§5§,§!u§.§54§,§2_§.§4d§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:§3!&§) : void
      {
         this.§`!L§(this.§06§.indexOf(param1));
      }
      
      public function §<]§() : void
      {
         var _loc1_:§3!&§ = null;
         this.§06§.sort(this.§<!;§);
         while(this.§ "$§.numChildren > 0)
         {
            this.§ "$§.removeChildAt(0);
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§06§.length)
         {
            _loc1_ = this.§06§[_loc2_];
            this.§ "$§.addChildAt(_loc1_.sprite,0);
            _loc2_++;
         }
      }
      
      private function §<!;§(param1:§3!&§, param2:§3!&§) : Number
      {
         if(param1.§5x§ < param2.§5x§)
         {
            return -1;
         }
         if(param1.§5x§ > param2.§5x§)
         {
            return 1;
         }
         return 0;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §3!&§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§06§.length)
         {
            if(this.§06§[_loc3_])
            {
               if(this.§06§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§06§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §5?§(param1:Number, param2:Number) : §;!3§
      {
         if(param1 >= this.§%!3§ - this.§2![§ / 4 && param1 <= this.§%!3§ + this.§2![§ / 4 && param2 >= this.§?!e§ - this.§2![§ / 4 && this.§?!e§ <= this.§?!e§ + this.§7Z§)
         {
            return this;
         }
         return null;
      }
      
      public function §7<§(param1:§5!0§) : void
      {
         var _loc3_:§3!&§ = null;
         var _loc4_:§^!n§ = null;
         param1.slingshotX = this.§%!3§;
         param1.slingshotY = this.§?!e§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§06§.length)
         {
            _loc3_ = this.§06§[_loc2_];
            (_loc4_ = new §^!n§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.type = _loc3_.name;
            param1.§44§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §%P§() : void
      {
         while(this.§06§.length > 0)
         {
            this.removeObject(this.§06§[0]);
         }
      }
      
      public function §?"%§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§06§.length)
         {
            if(this.§06§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§06§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§%!3§ > param1.x && this.§%!3§ < param2.x && this.§?!e§ > param1.y && this.§?!e§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §3f§(param1:String, param2:Number, param3:Number, param4:Number) : §3!&§
      {
         var _loc5_:§3!&§ = this.§<L§(param1,param2,param3,param4);
         this.§<]§();
         return _loc5_;
      }
      
      public function §0d§() : int
      {
         return this.§06§.length;
      }
      
      public function §]!G§() : int
      {
         return this.§=8§;
      }
   }
}
