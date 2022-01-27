package §2z§
{
   import § !3§.§!X§;
   import §#!6§.Texture;
   import §#;§.§42§;
   import §0!&§.§!'§;
   import §4!e§.§ !0§;
   import §4!e§.§+!Y§;
   import §=!E§.§,!@§;
   import §=!E§.Sprite;
   import §=!E§.§try§;
   import §?!R§.§ F§;
   import §]!C§.§'!!§;
   import §]!C§.§<!c§;
   import §^t§.§<;§;
   import §^t§.§[I§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §@!N§
   {
      
      public static const §3![§:int = 0;
      
      public static const §@!P§:int = 1;
      
      public static const STATE_BIRD_IS_READY:int = 2;
      
      public static const §8!?§:int = 3;
      
      public static const §5!b§:int = 5;
      
      public static const §+^§:int = 3151368;
      
      protected static const §]!N§:int = 8;
      
      protected static const §0=§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const §=!R§:Number = 52.5;
      
      protected static const §2w§:Number = -0.7;
      
      protected static const §5!U§:Number = 0;
      
      protected static var §9!d§:Texture;
      
      public static const §8B§:Number = 0.4;
       
      
      public var §7o§:§2!U§;
      
      public var §[!#§:Number;
      
      public var §?=§:Number;
      
      public var §@!1§:Number;
      
      protected var §,T§:Number;
      
      protected var §5!H§:Number;
      
      protected var §?X§:Number;
      
      protected var §#'§:Number;
      
      public var §+!?§:Number;
      
      public var §]>§:Boolean = false;
      
      protected var §&V§:Number;
      
      public var §6E§:Vector.<§]'§>;
      
      public var §+Q§:int;
      
      public var §=C§:int;
      
      public var §'U§:Number;
      
      public var §,!^§:Sprite;
      
      public var §8+§:int = 0;
      
      public var §'T§:Number = 0;
      
      public var §-M§:Array;
      
      public var §<J§:Array;
      
      public var mSlingShotState:int;
      
      public var §'N§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §+!U§:Boolean = false;
      
      public var §,!f§:Number;
      
      protected var §"!B§:Sprite;
      
      protected var §>!N§:§,!@§;
      
      protected var §each §:§,!@§;
      
      protected var §-!6§:Sprite;
      
      protected var §93§:Sprite;
      
      protected var §>e§:Sprite;
      
      protected var §3!"§:§try§;
      
      protected var §,!M§:§try§;
      
      private var §@l§:Number = 0;
      
      private var §1!8§:int = 0;
      
      protected var §-i§:Number = -0.7;
      
      protected var §&p§:Number = 0;
      
      public function §@!N§(param1:§2!U§, param2:§!'§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§ F§ = null;
         this.§6E§ = new Vector.<§]'§>();
         super();
         this.§7o§ = param1;
         this.§"!B§ = param3;
         if(param2)
         {
            this.setPosition(param2.§+!a§,param2.§41§);
            this.§5y§();
            _loc4_ = 0;
            while(_loc4_ < param2.§5!1§)
            {
               _loc5_ = param2.§ !R§(_loc4_);
               this.addSlingshotObject(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§1!8§ = this.§=F§();
            this.§+Q§ = 0;
            if(this.§6E§.length <= 0)
            {
               §!X§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§[!#§ + " " + this.§?=§);
               this.§#V§(§8!?§);
            }
            else
            {
               this.§#V§(§3![§);
            }
         }
         else
         {
            §!X§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§#V§(§8!?§);
         }
         this.§,!f§ = 0;
         this.§62§();
         this.update(0,true);
         this.§&n§();
         this.§9! §(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§"!B§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§@l§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§+Q§ < this.§6E§.length;
      }
      
      public function dispose() : void
      {
         while(this.§6E§.length > 0)
         {
            this.§`!C§(0);
         }
         this.§6E§ = null;
         if(this.§"!B§)
         {
            this.§"!B§.dispose();
            this.§"!B§ = null;
         }
         this.§,!^§ = null;
         this.§-M§ = null;
         this.§<J§ = null;
      }
      
      public function §2K§(param1:String, param2:Number, param3:Number, param4:int = -1) : §]'§
      {
         var _loc5_:§]'§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,param4)).§"!A§();
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §]'§
      {
         var _loc5_:§]'§ = new §]'§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§6E§.push(_loc5_);
         }
         else
         {
            this.§6E§.splice(param4,0,_loc5_);
         }
         this.§,!^§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §#V§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §3![§)
         {
            this.§#H§();
            this.§'U§ = 1000;
         }
         else if(this.mSlingShotState == §@!P§)
         {
            this.§#H§();
            this.§'U§ = 0;
         }
         else if(this.mSlingShotState == STATE_BIRD_IS_READY)
         {
            this.§'U§ = 10000;
            this.§+!U§ = false;
            this.§#H§();
         }
         else if(this.mSlingShotState == §8!?§)
         {
            this.§#H§();
            this.§'U§ = 2000;
         }
         else if(this.mSlingShotState == §5!b§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§+!U§ = false;
               this.§#H§();
               this.§6E§[this.§+Q§].setPosition(this.§?X§ - this.§6E§[this.§+Q§].radius * Math.cos(this.§'T§ / (180 / Math.PI)),this.§#'§ + this.§6E§[this.§+Q§].radius * Math.sin(this.§'T§ / (180 / Math.PI)));
            }
            else
            {
               this.§#H§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §,B§() : §2!U§
      {
         return this.§7o§;
      }
      
      public function §^i§() : Boolean
      {
         return this.mSlingShotState == §8!?§ && this.§'U§ <= 0;
      }
      
      private function §5y§() : void
      {
         var _loc1_:§<!c§ = this.§^1§();
         var _loc2_:§'!!§ = _loc1_.getFrame(0);
         var _loc3_:§'!!§ = _loc1_.getFrame(1);
         this.§3!"§ = new §try§(_loc2_.texture);
         this.§3!"§.scaleX = _loc2_.scale;
         this.§3!"§.scaleY = _loc2_.scale;
         this.§,!M§ = new §try§(_loc3_.texture);
         this.§,!M§.scaleX = _loc3_.scale;
         this.§,!M§.scaleY = _loc3_.scale;
         this.§&!1§();
         this.§3!_§();
         this.§,!^§ = new Sprite();
         this.§"!B§.addChild(this.§3!"§);
         this.§"!B§.addChild(this.§-!6§);
         this.§"!B§.addChild(this.§,!^§);
         this.§"!B§.addChild(this.§>e§);
         this.§"!B§.addChild(this.§93§);
         this.§"!B§.addChild(this.§,!M§);
         this.§@!1§ = this.§?=§ + 8.5;
      }
      
      protected function §^1§() : §<!c§
      {
         return this.§7o§.§=_§.§7!0§("SLINGSHOT");
      }
      
      public function §&!1§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§,T§ = this.§[!#§;
         this.§5!H§ = this.§?=§;
         this.§&V§ = §9!a§.§1!F§;
         _loc1_ = null;
      }
      
      protected function §3!_§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§9!d§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §9!d§ = this.§7o§.textureManager.§ 2§(_loc2_);
         }
         this.§>e§ = new Sprite();
         var _loc1_:§try§ = new §try§(§9!d§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§>e§.addChild(_loc1_);
         this.§-!6§ = new Sprite();
         this.§>!N§ = new §,!@§(2,2,§+^§);
         this.§-!6§.addChild(this.§>!N§);
         this.§93§ = new Sprite();
         this.§each § = new §,!@§(2,2,§+^§);
         this.§93§.addChild(this.§each §);
      }
      
      public function §9! §(param1:Number) : void
      {
         var _loc2_:Number = this.§#'§ / §2!U§.§&%§;
         var _loc3_:Number = this.§?X§ / §2!U§.§&%§;
         var _loc4_:Number = 3.5 + 8 * ((this.§&V§ - this.§+!?§) / this.§&V§);
         this.§>e§.x = _loc3_;
         this.§>e§.y = _loc2_;
         this.§>e§.rotation = -this.§'T§ / (180 / Math.PI);
         this.§3!"§.x = this.§[!#§ / §2!U§.§&%§ - 3;
         this.§3!"§.y = this.§?=§ / §2!U§.§&%§ - 30;
         this.§,!M§.x = this.§[!#§ / §2!U§.§&%§ - 30;
         this.§,!M§.y = this.§?=§ / §2!U§.§&%§ - 30;
         this.§93§.x = this.§[!#§ / §2!U§.§&%§ - 17;
         this.§93§.y = this.§?=§ / §2!U§.§&%§ + 5;
         this.§93§.rotation = Math.atan2(_loc2_ - this.§93§.y,_loc3_ - this.§93§.x);
         this.§-!6§.x = this.§[!#§ / §2!U§.§&%§ + 22;
         this.§-!6§.y = this.§?=§ / §2!U§.§&%§;
         this.§-!6§.rotation = Math.atan2(_loc2_ - this.§-!6§.y,_loc3_ - this.§-!6§.x);
         this.§each §.width = Math.sqrt(Math.pow(_loc3_ - this.§93§.x,2) + Math.pow(_loc2_ - this.§93§.y,2));
         this.§>!N§.width = Math.sqrt(Math.pow(_loc3_ - this.§-!6§.x,2) + Math.pow(_loc2_ - this.§-!6§.y,2));
         this.§each §.height = this.§>!N§.height = _loc4_ * 2;
         this.§each §.y = -this.§each §.height / 2;
         this.§>!N§.y = -this.§>!N§.height / 2;
         this.§'N§ = false;
      }
      
      public function §;7§() : void
      {
         while(this.§6E§.length > 0)
         {
            this.§`!C§(0,true);
         }
         this.§;i§();
         this.addSlingshotObject("BIRD_SARDINE",this.§[!#§,this.§?=§);
         this.§#V§(STATE_BIRD_IS_READY);
      }
      
      protected function §;i§() : void
      {
         §42§.§;!`§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§#V§(§5!b§);
      }
      
      public function §#H§() : void
      {
         this.setNewCoordinatesForRubber(this.§,T§,this.§5!H§ + this.§&V§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§?X§ == param1 && this.§#'§ == param2)
         {
            return true;
         }
         this.§+!?§ = Math.sqrt((param2 - this.§5!H§) * (param2 - this.§5!H§) + (param1 - this.§,T§) * (param1 - this.§,T§));
         if(this.§+!?§ > this.§&V§)
         {
            if(param3)
            {
               this.§+!?§ = Math.sqrt((this.§#'§ - this.§5!H§) * (this.§#'§ - this.§5!H§) + (this.§?X§ - this.§,T§) * (this.§?X§ - this.§,T§));
               return false;
            }
            param1 = this.§,T§ + this.§&V§ * (param1 - this.§,T§) / this.§+!?§;
            param2 = this.§5!H§ + this.§&V§ * (param2 - this.§5!H§) / this.§+!?§;
            this.§+!?§ = this.§&V§;
         }
         this.§?X§ = param1;
         this.§#'§ = param2;
         this.§'T§ = Math.atan2(-(this.§#'§ - this.§5!H§),this.§?X§ - this.§,T§);
         this.§'T§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§?X§ = param1 + this.§-i§;
            this.§#'§ = param2 + this.§&p§;
            this.§'T§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§&V§ / 2;
         if(this.§+!?§ > _loc7_ && this.§'T§ > -90 - _loc4_ + _loc5_ && this.§'T§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§,T§ + _loc7_ * (param1 - this.§,T§) / this.§+!?§;
            param2 = this.§5!H§ + _loc7_ * (param2 - this.§5!H§) / this.§+!?§;
            this.§+!?§ = _loc7_;
            this.§?X§ = param1;
            this.§#'§ = param2;
         }
         else if(this.§+!?§ > _loc7_ && this.§'T§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§'T§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§&V§ - _loc7_) * (Math.abs(this.§'T§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§,T§ + _loc8_ * (param1 - this.§,T§) / this.§+!?§;
            param2 = this.§5!H§ + _loc8_ * (param2 - this.§5!H§) / this.§+!?§;
            this.§+!?§ = _loc8_;
            this.§?X§ = param1;
            this.§#'§ = param2;
         }
         if(this.§+!?§ <= this.§&V§ * 0.45)
         {
            this.§]>§ = true;
         }
         else if(this.§]>§ && this.§+!?§ >= this.§&V§ * 0.8)
         {
            this.§80§();
            this.§]>§ = false;
         }
         this.§'N§ = true;
         return true;
      }
      
      protected function §80§() : void
      {
         §42§.§;!`§("SlingshotStreched");
      }
      
      public function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§[!#§,this.§?=§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§[!#§;
         this.§[!#§ = param1;
         var _loc5_:Number = param2 - this.§?=§;
         this.§?=§ = param2;
         this.§@!1§ += _loc5_;
         this.§5!H§ += _loc5_;
         this.§#'§ += _loc5_;
         this.§,T§ += _loc4_;
         this.§?X§ += _loc4_;
         if(param3)
         {
            this.§9! §(0);
         }
         this.§'N§ = true;
      }
      
      public function §!"§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§]'§ = null;
         _loc2_ = this.§6E§[this.§+Q§];
         var _loc3_:Number = this.§+!?§ / this.§&V§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§@!N§.§=!R§) : Number(§@!N§.BIRD_LAUNCH_FORCE);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §-z§() : Point
      {
         var _loc1_:§]'§ = null;
         if(this.§6E§.length > this.§+Q§)
         {
            _loc1_ = this.§6E§[this.§+Q§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §-L§() : Point
      {
         return new Point(this.§,T§,this.§5!H§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§]'§ = null;
         this.updateGroundControl(param1);
         if(this.§'N§)
         {
            this.§9! §(param1);
         }
         this.§'U§ -= param1;
         if(this.§'U§ < 0)
         {
            this.§'U§ = 0;
         }
         if(this.mSlingShotState != §8!?§)
         {
            this.§^!K§(param1,param2);
            _loc3_ = null;
            if(this.§6E§.length > 0)
            {
               _loc3_ = this.§6E§[this.§+Q§];
            }
            if(_loc3_)
            {
               _loc3_.§case§(param1);
            }
            if(!_loc3_)
            {
               this.§#V§(§8!?§);
            }
            else if(this.mSlingShotState == §3![§)
            {
               if(this.§'U§ <= 0)
               {
                  this.§#V§(§@!P§);
                  _loc3_.§ !$§();
               }
            }
            else if(this.mSlingShotState == §@!P§)
            {
               if(_loc3_.§`^§)
               {
                  this.§#V§(STATE_BIRD_IS_READY);
               }
            }
            else if(this.mSlingShotState == STATE_BIRD_IS_READY)
            {
               _loc3_.setPosition(this.§?X§ - _loc3_.radius * Math.cos(this.§'T§ / (180 / Math.PI)),this.§#'§ + _loc3_.radius * Math.sin(this.§'T§ / (180 / Math.PI)));
               if(this.§+!U§)
               {
                  this.§0!>§(this.§+!?§ / this.§&V§,this.§'T§);
               }
            }
         }
      }
      
      public function §'K§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§]'§ = null;
         if(this.§6E§.length > 0)
         {
            _loc5_ = this.§6E§[this.§+Q§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§0!>§(param3,param4);
      }
      
      protected function §0!>§(param1:Number, param2:Number) : void
      {
         var _loc3_:§]'§ = null;
         this.§-i§ = §2w§;
         this.§&p§ = §5!U§;
         if(this.§6E§.length > 0)
         {
            _loc3_ = this.§6E§[this.§+Q§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§+!U§ = false;
         this.§@l§ = new Date().time;
         this.§7o§.§5V§(_loc3_,param1,param2);
         this.§`!C§(this.§+Q§,_loc3_.§2!8§ > 0);
         this.§8#§();
         if(this.§+Q§ >= this.§6E§.length)
         {
            this.§#V§(§8!?§);
         }
         else
         {
            this.§#V§(§3![§);
         }
      }
      
      protected function §8#§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §42§.§;!`§("BirdShot" + _loc1_);
      }
      
      public function §^!K§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§+Q§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§6E§.length)
         {
            if(this.mSlingShotState == §5!b§)
            {
               this.§6E§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§6E§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§]'§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§#H§();
         if(this.§=C§ >= this.§6E§.length)
         {
            return false;
         }
         _loc1_ = this.§6E§[this.§=C§];
         _loc2_ = §+!Y§.§#o§(_loc1_.name).score;
         this.§7o§.addScore(_loc2_,§^!8§.§;>§,true,_loc1_.x,_loc1_.y - 3,§[I§.§&Y§(_loc1_.name));
         _loc1_.§2+§(-1,true);
         ++this.§=C§;
         return true;
      }
      
      public function §=F§() : int
      {
         var _loc2_:§]'§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§6E§)
         {
            _loc1_ += §+!Y§.§#o§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §>!I§() : int
      {
         return this.§1!8§;
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§,!f§ >= 0)
         {
            this.§,!f§ -= param1;
            if(this.§,!f§ <= 0)
            {
               _loc2_ = this.§7o§.objects.§^M§(this.§,T§,this.§@!1§);
               if(_loc2_ < 0)
               {
                  this.applyGravity(0.1);
                  this.§,!f§ = 0;
               }
               else if(!this.§7o§.objects.§?j§(_loc2_).§[!P§)
               {
                  this.§,!f§ = -1;
               }
               else if(this.§7o§.objects.§?j§(_loc2_).§1!'§())
               {
                  this.§,!f§ = 2000;
               }
               else
               {
                  this.§,!f§ = 500;
               }
            }
         }
      }
      
      public function §&n§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§7o§.objects.§^M§(this.§,T§,this.§@!1§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.applyGravity(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§,!f§ = -1;
      }
      
      public function §5r§(param1:Number, param2:Number) : void
      {
         this.§"!B§.x = -param1;
         this.§"!B§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == STATE_BIRD_IS_READY && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == STATE_BIRD_IS_READY && this.§+!?§ > this.§&V§ * §8B§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§#V§(STATE_BIRD_IS_READY);
         var _loc1_:§]'§ = this.§6E§[this.§+Q§];
         _loc1_.§2+§(§ !0§.§8!3§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§]'§ = this.§6E§[this.§+Q§];
         _loc1_.§2+§(§ !0§.§3P§);
      }
      
      public function shoot() : void
      {
         this.§+!U§ = true;
      }
      
      protected function §`!C§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§]'§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§6E§[param1])
         {
            _loc3_ = this.§6E§[param1];
            this.§,!^§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§^O§(this.§6E§[param1]);
            }
            _loc3_.dispose();
            this.§6E§[param1] = null;
         }
         this.§6E§.splice(param1,1);
      }
      
      public function §^O§(param1:§]'§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §2!U§.§&%§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §2!U§.§&%§) + Math.random() * -_loc8_ * 2;
            this.§7o§.particles.addParticle(§[I§.§^=§,§<;§.§&!=§,§[I§.§6G§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§[I§.§6]§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§7o§.particles.addParticle(§[I§.§@!,§,§<;§.§&!=§,§[I§.§6G§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §@,§(param1:§]'§) : void
      {
         this.§`!C§(this.§6E§.indexOf(param1));
      }
      
      public function §62§() : void
      {
         var _loc2_:§]'§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§]'§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§6E§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§[!#§ - this.§6E§[_loc1_].x) * (this.§[!#§ - this.§6E§[_loc1_].x) + (this.§?=§ - this.§6E§[_loc1_].y) * (this.§?=§ - this.§6E§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§[!#§ - this.§6E§[_loc1_ + 1].x) * (this.§[!#§ - this.§6E§[_loc1_ + 1].x) + (this.§?=§ - this.§6E§[_loc1_ + 1].y) * (this.§?=§ - this.§6E§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§6E§[_loc1_];
               this.§6E§.splice(_loc1_,1);
               this.§6E§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§,!^§.numChildren > 0)
         {
            this.§,!^§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§6E§.length)
         {
            _loc2_ = this.§6E§[_loc1_];
            this.§,!^§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §>+§(param1:Number, param2:Number) : §]'§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§6E§.length)
         {
            if(this.§6E§[_loc3_])
            {
               if(this.§6E§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§6E§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §3!%§(param1:Number, param2:Number) : §@!N§
      {
         if(param1 >= this.§[!#§ - this.§&V§ / 4 && param1 <= this.§[!#§ + this.§&V§ / 4 && param2 >= this.§?=§ - this.§&V§ / 4 && this.§?=§ <= this.§@!1§)
         {
            return this;
         }
         return null;
      }
      
      public function §5w§(param1:§!'§) : void
      {
         var _loc3_:§]'§ = null;
         var _loc4_:§ F§ = null;
         param1.§+!a§ = this.§[!#§;
         param1.§41§ = this.§?=§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§6E§.length)
         {
            _loc3_ = this.§6E§[_loc2_];
            (_loc4_ = new § F§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§&!&§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §6c§() : void
      {
         while(this.§6E§.length > 0)
         {
            this.§@,§(this.§6E§[0]);
         }
      }
      
      public function §>L§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§6E§.length)
         {
            if(this.§6E§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§6E§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§[!#§ > param1.x && this.§[!#§ < param2.x && this.§?=§ > param1.y && this.§?=§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §=-§() : Array
      {
         return [this.§,!M§,this.§3!"§];
      }
      
      public function §0!§(param1:String, param2:Number, param3:Number) : §]'§
      {
         var _loc4_:§]'§ = this.addSlingshotObject(param1,param2,param3);
         this.§62§();
         return _loc4_;
      }
      
      public function §`!9§() : Number
      {
         return this.§6E§.length;
      }
   }
}
