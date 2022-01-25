package §&F§
{
   import §%!^§.§"!7§;
   import §%!a§.§ !R§;
   import §%!a§.§^!=§;
   import §%i§.§3H§;
   import §&!9§.§,,§;
   import §&!9§.§7!D§;
   import §&!9§.Sprite;
   import §+x§.§-6§;
   import §48§.§6!Z§;
   import §48§.§8!'§;
   import §6!4§.Texture;
   import §?=§.§&j§;
   import §?=§.§8S§;
   import §^=§.§8!6§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §2!4§
   {
      
      public static const §with§:int = 0;
      
      public static const §=!'§:int = 1;
      
      public static const §#Y§:int = 2;
      
      public static const §3J§:int = 3;
      
      public static const §6!1§:int = 5;
      
      public static const §'!@§:int = 3151368;
      
      protected static const §&!S§:int = 8;
      
      protected static const §"8§:int = 0;
      
      public static const §`g§:Number = 46.25;
      
      public static const §[!O§:Number = 52.5;
      
      protected static const §;!F§:Number = -0.7;
      
      protected static const §8!?§:Number = 0;
      
      protected static var §"<§:Texture;
      
      public static const § §:Number = 0.4;
       
      
      public var mLevelMain:§>!2§;
      
      public var §!f§:Number;
      
      public var §@;§:Number;
      
      public var § case§:Number;
      
      protected var §>5§:Number;
      
      protected var §?Z§:Number;
      
      protected var §]!5§:Number;
      
      protected var §,S§:Number;
      
      public var §8Z§:Number;
      
      public var §?$§:Boolean = false;
      
      protected var §3!<§:Number;
      
      public var §=!`§:Vector.<§8W§>;
      
      public var §5!U§:int;
      
      public var §7J§:int;
      
      public var §]!4§:Number;
      
      public var §"c§:Sprite;
      
      public var §,Q§:int = 0;
      
      public var §=`§:Number = 0;
      
      public var §!!"§:Array;
      
      public var §2! §:Array;
      
      public var mSlingShotState:int;
      
      public var §00§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §3I§:Boolean = false;
      
      public var §%!>§:Number;
      
      protected var §@!Y§:Sprite;
      
      protected var §78§:§7!D§;
      
      protected var §18§:§7!D§;
      
      protected var §;f§:Sprite;
      
      protected var §#!_§:Sprite;
      
      protected var §^d§:Sprite;
      
      protected var §'P§:§,,§;
      
      protected var §@!6§:§,,§;
      
      private var §2Z§:Number = 0;
      
      private var §[!;§:int = 0;
      
      protected var §&d§:Number = -0.7;
      
      protected var §6!_§:Number = 0;
      
      public function §2!4§(param1:§>!2§, param2:§"!7§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§3H§ = null;
         this.§=!`§ = new Vector.<§8W§>();
         super();
         this.mLevelMain = param1;
         this.§@!Y§ = param3;
         if(param2)
         {
            this.setPosition(param2.§,!3§,param2.§'Y§);
            this.§49§();
            _loc4_ = 0;
            while(_loc4_ < param2.§@!?§)
            {
               _loc5_ = param2.§;!7§(_loc4_);
               this.§?!W§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§[!;§ = this.§'N§();
            this.§5!U§ = 0;
            if(this.§=!`§.length <= 0)
            {
               §8!6§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§!f§ + " " + this.§@;§);
               this.§1!e§(§3J§);
            }
            else
            {
               this.§1!e§(§with§);
            }
         }
         else
         {
            §8!6§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§1!e§(§3J§);
         }
         this.§%!>§ = 0;
         this.§7!@§();
         this.update(0,true);
         this.§1-§();
         this.§8e§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§@!Y§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§2Z§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§5!U§ < this.§=!`§.length;
      }
      
      public function dispose() : void
      {
         while(this.§=!`§.length > 0)
         {
            this.§[t§(0);
         }
         this.§=!`§ = null;
         if(this.§@!Y§)
         {
            this.§@!Y§.dispose();
            this.§@!Y§ = null;
         }
         this.§"c§ = null;
         this.§!!"§ = null;
         this.§2! § = null;
      }
      
      public function §[!c§(param1:String, param2:Number, param3:Number, param4:int = -1) : §8W§
      {
         var _loc5_:§8W§;
         (_loc5_ = this.§?!W§(param1,param2,param3,param4)).§=!K§();
         return _loc5_;
      }
      
      protected function §?!W§(param1:String, param2:Number, param3:Number, param4:int = -1) : §8W§
      {
         var _loc5_:§8W§ = new §8W§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§=!`§.push(_loc5_);
         }
         else
         {
            this.§=!`§.splice(param4,0,_loc5_);
         }
         this.§"c§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §1!e§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §with§)
         {
            this.§%!e§();
            this.§]!4§ = 1000;
         }
         else if(this.mSlingShotState == §=!'§)
         {
            this.§%!e§();
            this.§]!4§ = 0;
         }
         else if(this.mSlingShotState == §#Y§)
         {
            this.§]!4§ = 10000;
            this.§3I§ = false;
            this.§%!e§();
         }
         else if(this.mSlingShotState == §3J§)
         {
            this.§%!e§();
            this.§]!4§ = 2000;
         }
         else if(this.mSlingShotState == §6!1§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§3I§ = false;
               this.§%!e§();
               this.§=!`§[this.§5!U§].setPosition(this.§]!5§ - this.§=!`§[this.§5!U§].radius * Math.cos(this.§=`§ / (180 / Math.PI)),this.§,S§ + this.§=!`§[this.§5!U§].radius * Math.sin(this.§=`§ / (180 / Math.PI)));
            }
            else
            {
               this.§%!e§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §=[§() : §>!2§
      {
         return this.mLevelMain;
      }
      
      public function §17§() : Boolean
      {
         return this.mSlingShotState == §3J§ && this.§]!4§ <= 0;
      }
      
      private function §49§() : void
      {
         var _loc1_:§8!'§ = this.§7!d§();
         var _loc2_:§6!Z§ = _loc1_.getFrame(0);
         var _loc3_:§6!Z§ = _loc1_.getFrame(1);
         this.§'P§ = new §,,§(_loc2_.texture);
         this.§'P§.scaleX = _loc2_.scale;
         this.§'P§.scaleY = _loc2_.scale;
         this.§@!6§ = new §,,§(_loc3_.texture);
         this.§@!6§.scaleX = _loc3_.scale;
         this.§@!6§.scaleY = _loc3_.scale;
         this.§!>§();
         this.§4L§();
         this.§"c§ = new Sprite();
         this.§@!Y§.addChild(this.§'P§);
         this.§@!Y§.addChild(this.§;f§);
         this.§@!Y§.addChild(this.§"c§);
         this.§@!Y§.addChild(this.§^d§);
         this.§@!Y§.addChild(this.§#!_§);
         this.§@!Y§.addChild(this.§@!6§);
         this.§ case§ = this.§@;§ + 8.5;
      }
      
      protected function §7!d§() : §8!'§
      {
         return this.mLevelMain.§59§.§@d§("SLINGSHOT");
      }
      
      public function §!>§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§>5§ = this.§!f§;
         this.§?Z§ = this.§@;§;
         this.§3!<§ = §-w§.§7'§;
         _loc1_ = null;
      }
      
      protected function §4L§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§"<§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §"<§ = this.mLevelMain.textureManager.§@p§(_loc2_);
         }
         this.§^d§ = new Sprite();
         var _loc1_:§,,§ = new §,,§(§"<§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§^d§.addChild(_loc1_);
         this.§;f§ = new Sprite();
         this.§78§ = new §7!D§(2,2,§'!@§);
         this.§;f§.addChild(this.§78§);
         this.§#!_§ = new Sprite();
         this.§18§ = new §7!D§(2,2,§'!@§);
         this.§#!_§.addChild(this.§18§);
      }
      
      public function §8e§(param1:Number) : void
      {
         var _loc2_:Number = this.§,S§ / §>!2§.§9d§;
         var _loc3_:Number = this.§]!5§ / §>!2§.§9d§;
         var _loc4_:Number = 3.5 + 8 * ((this.§3!<§ - this.§8Z§) / this.§3!<§);
         this.§^d§.x = _loc3_;
         this.§^d§.y = _loc2_;
         this.§^d§.rotation = -this.§=`§ / (180 / Math.PI);
         this.§'P§.x = this.§!f§ / §>!2§.§9d§ - 3;
         this.§'P§.y = this.§@;§ / §>!2§.§9d§ - 30;
         this.§@!6§.x = this.§!f§ / §>!2§.§9d§ - 30;
         this.§@!6§.y = this.§@;§ / §>!2§.§9d§ - 30;
         this.§#!_§.x = this.§!f§ / §>!2§.§9d§ - 17;
         this.§#!_§.y = this.§@;§ / §>!2§.§9d§ + 5;
         this.§#!_§.rotation = Math.atan2(_loc2_ - this.§#!_§.y,_loc3_ - this.§#!_§.x);
         this.§;f§.x = this.§!f§ / §>!2§.§9d§ + 22;
         this.§;f§.y = this.§@;§ / §>!2§.§9d§;
         this.§;f§.rotation = Math.atan2(_loc2_ - this.§;f§.y,_loc3_ - this.§;f§.x);
         this.§18§.width = Math.sqrt(Math.pow(_loc3_ - this.§#!_§.x,2) + Math.pow(_loc2_ - this.§#!_§.y,2));
         this.§78§.width = Math.sqrt(Math.pow(_loc3_ - this.§;f§.x,2) + Math.pow(_loc2_ - this.§;f§.y,2));
         this.§18§.height = this.§78§.height = _loc4_ * 2;
         this.§18§.y = -this.§18§.height / 2;
         this.§78§.y = -this.§78§.height / 2;
         this.§00§ = false;
      }
      
      public function §#!b§() : void
      {
         while(this.§=!`§.length > 0)
         {
            this.§[t§(0,true);
         }
         this.§3K§();
         this.§?!W§("BIRD_SARDINE",this.§!f§,this.§@;§);
         this.§1!e§(§#Y§);
      }
      
      protected function §3K§() : void
      {
         §-6§.§6!#§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§1!e§(§6!1§);
      }
      
      public function §%!e§() : void
      {
         this.setNewCoordinatesForRubber(this.§>5§,this.§?Z§ + this.§3!<§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§]!5§ == param1 && this.§,S§ == param2)
         {
            return true;
         }
         this.§8Z§ = Math.sqrt((param2 - this.§?Z§) * (param2 - this.§?Z§) + (param1 - this.§>5§) * (param1 - this.§>5§));
         if(this.§8Z§ > this.§3!<§)
         {
            if(param3)
            {
               this.§8Z§ = Math.sqrt((this.§,S§ - this.§?Z§) * (this.§,S§ - this.§?Z§) + (this.§]!5§ - this.§>5§) * (this.§]!5§ - this.§>5§));
               return false;
            }
            param1 = this.§>5§ + this.§3!<§ * (param1 - this.§>5§) / this.§8Z§;
            param2 = this.§?Z§ + this.§3!<§ * (param2 - this.§?Z§) / this.§8Z§;
            this.§8Z§ = this.§3!<§;
         }
         this.§]!5§ = param1;
         this.§,S§ = param2;
         this.§=`§ = Math.atan2(-(this.§,S§ - this.§?Z§),this.§]!5§ - this.§>5§);
         this.§=`§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§]!5§ = param1 + this.§&d§;
            this.§,S§ = param2 + this.§6!_§;
            this.§=`§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§3!<§ / 2;
         if(this.§8Z§ > _loc7_ && this.§=`§ > -90 - _loc4_ + _loc5_ && this.§=`§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§>5§ + _loc7_ * (param1 - this.§>5§) / this.§8Z§;
            param2 = this.§?Z§ + _loc7_ * (param2 - this.§?Z§) / this.§8Z§;
            this.§8Z§ = _loc7_;
            this.§]!5§ = param1;
            this.§,S§ = param2;
         }
         else if(this.§8Z§ > _loc7_ && this.§=`§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§=`§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§3!<§ - _loc7_) * (Math.abs(this.§=`§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§>5§ + _loc8_ * (param1 - this.§>5§) / this.§8Z§;
            param2 = this.§?Z§ + _loc8_ * (param2 - this.§?Z§) / this.§8Z§;
            this.§8Z§ = _loc8_;
            this.§]!5§ = param1;
            this.§,S§ = param2;
         }
         if(this.§8Z§ <= this.§3!<§ * 0.45)
         {
            this.§?$§ = true;
         }
         else if(this.§?$§ && this.§8Z§ >= this.§3!<§ * 0.8)
         {
            this.§-!T§();
            this.§?$§ = false;
         }
         this.§00§ = true;
         return true;
      }
      
      protected function §-!T§() : void
      {
         §-6§.§6!#§("SlingshotStreched");
      }
      
      public function §8I§(param1:Number) : void
      {
         this.setPosition(this.§!f§,this.§@;§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§!f§;
         this.§!f§ = param1;
         var _loc5_:Number = param2 - this.§@;§;
         this.§@;§ = param2;
         this.§ case§ += _loc5_;
         this.§?Z§ += _loc5_;
         this.§,S§ += _loc5_;
         this.§>5§ += _loc4_;
         this.§]!5§ += _loc4_;
         if(param3)
         {
            this.§8e§(0);
         }
         this.§00§ = true;
      }
      
      public function §+!K§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§8W§ = null;
         _loc2_ = this.§=!`§[this.§5!U§];
         var _loc3_:Number = this.§8Z§ / this.§3!<§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§2!4§.§[!O§) : Number(§2!4§.§`g§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §]!G§() : Point
      {
         var _loc1_:§8W§ = null;
         if(this.§=!`§.length > this.§5!U§)
         {
            _loc1_ = this.§=!`§[this.§5!U§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §^[§() : Point
      {
         return new Point(this.§>5§,this.§?Z§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§8W§ = null;
         this.§+0§(param1);
         if(this.§00§)
         {
            this.§8e§(param1);
         }
         this.§]!4§ -= param1;
         if(this.§]!4§ < 0)
         {
            this.§]!4§ = 0;
         }
         if(this.mSlingShotState != §3J§)
         {
            this.§<Q§(param1,param2);
            _loc3_ = null;
            if(this.§=!`§.length > 0)
            {
               _loc3_ = this.§=!`§[this.§5!U§];
            }
            if(_loc3_)
            {
               _loc3_.§!!2§(param1);
            }
            if(!_loc3_)
            {
               this.§1!e§(§3J§);
            }
            else if(this.mSlingShotState == §with§)
            {
               if(this.§]!4§ <= 0)
               {
                  this.§1!e§(§=!'§);
                  _loc3_.§-!R§();
               }
            }
            else if(this.mSlingShotState == §=!'§)
            {
               if(_loc3_.§!o§)
               {
                  this.§1!e§(§#Y§);
               }
            }
            else if(this.mSlingShotState == §#Y§)
            {
               _loc3_.setPosition(this.§]!5§ - _loc3_.radius * Math.cos(this.§=`§ / (180 / Math.PI)),this.§,S§ + _loc3_.radius * Math.sin(this.§=`§ / (180 / Math.PI)));
               if(this.§3I§)
               {
                  this.§"J§(this.§8Z§ / this.§3!<§,this.§=`§);
               }
            }
         }
      }
      
      public function §`H§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§8W§ = null;
         if(this.§=!`§.length > 0)
         {
            _loc5_ = this.§=!`§[this.§5!U§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§"J§(param3,param4);
      }
      
      protected function §"J§(param1:Number, param2:Number) : void
      {
         var _loc3_:§8W§ = null;
         this.§&d§ = §;!F§;
         this.§6!_§ = §8!?§;
         if(this.§=!`§.length > 0)
         {
            _loc3_ = this.§=!`§[this.§5!U§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§3I§ = false;
         this.§2Z§ = new Date().time;
         this.mLevelMain.§;H§(_loc3_,param1,param2);
         this.§[t§(this.§5!U§,_loc3_.§"3§ > 0);
         this.§@!9§();
         if(this.§5!U§ >= this.§=!`§.length)
         {
            this.§1!e§(§3J§);
         }
         else
         {
            this.§1!e§(§with§);
         }
      }
      
      protected function §@!9§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §-6§.§6!#§("BirdShot" + _loc1_);
      }
      
      public function §<Q§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§5!U§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§=!`§.length)
         {
            if(this.mSlingShotState == §6!1§)
            {
               this.§=!`§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§=!`§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§8W§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§%!e§();
         if(this.§7J§ >= this.§=!`§.length)
         {
            return false;
         }
         _loc1_ = this.§=!`§[this.§7J§];
         _loc2_ = § !R§.§^L§(_loc1_.name).score;
         this.mLevelMain.addScore(_loc2_,§6K§.§6&§,true,_loc1_.x,_loc1_.y - 3,§8S§.§'y§(_loc1_.name));
         _loc1_.§"D§(-1,true);
         ++this.§7J§;
         return true;
      }
      
      public function §'N§() : int
      {
         var _loc2_:§8W§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§=!`§)
         {
            _loc1_ += § !R§.§^L§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §%!B§() : int
      {
         return this.§[!;§;
      }
      
      public function §+0§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§%!>§ >= 0)
         {
            this.§%!>§ -= param1;
            if(this.§%!>§ <= 0)
            {
               _loc2_ = this.mLevelMain.objects.§+o§(this.§>5§,this.§ case§);
               if(_loc2_ < 0)
               {
                  this.§8I§(0.1);
                  this.§%!>§ = 0;
               }
               else if(!this.mLevelMain.objects.§#z§(_loc2_).§%!L§)
               {
                  this.§%!>§ = -1;
               }
               else if(this.mLevelMain.objects.§#z§(_loc2_).§^!S§())
               {
                  this.§%!>§ = 2000;
               }
               else
               {
                  this.§%!>§ = 500;
               }
            }
         }
      }
      
      public function §1-§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.mLevelMain.objects.§+o§(this.§>5§,this.§ case§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§8I§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§%!>§ = -1;
      }
      
      public function §,!Q§(param1:Number, param2:Number) : void
      {
         this.§@!Y§.x = -param1;
         this.§@!Y§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §#Y§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §#Y§ && this.§8Z§ > this.§3!<§ * § §;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§1!e§(§#Y§);
         var _loc1_:§8W§ = this.§=!`§[this.§5!U§];
         _loc1_.§"D§(§^!=§.§3!Z§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§8W§ = this.§=!`§[this.§5!U§];
         _loc1_.§"D§(§^!=§.§&O§);
      }
      
      public function shoot() : void
      {
         this.§3I§ = true;
      }
      
      protected function §[t§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§8W§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§=!`§[param1])
         {
            _loc3_ = this.§=!`§[param1];
            this.§"c§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§0E§(this.§=!`§[param1]);
            }
            _loc3_.dispose();
            this.§=!`§[param1] = null;
         }
         this.§=!`§.splice(param1,1);
      }
      
      public function §0E§(param1:§8W§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §>!2§.§9d§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §>!2§.§9d§) + Math.random() * -_loc8_ * 2;
            this.mLevelMain.particles.§<§(§8S§.§]t§,§&j§.§`W§,§8S§.§[!C§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§8S§.§"0§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.mLevelMain.particles.§<§(§8S§.§=!0§,§&j§.§`W§,§8S§.§[!C§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §+!d§(param1:§8W§) : void
      {
         this.§[t§(this.§=!`§.indexOf(param1));
      }
      
      public function §7!@§() : void
      {
         var _loc2_:§8W§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§8W§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§=!`§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§!f§ - this.§=!`§[_loc1_].x) * (this.§!f§ - this.§=!`§[_loc1_].x) + (this.§@;§ - this.§=!`§[_loc1_].y) * (this.§@;§ - this.§=!`§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§!f§ - this.§=!`§[_loc1_ + 1].x) * (this.§!f§ - this.§=!`§[_loc1_ + 1].x) + (this.§@;§ - this.§=!`§[_loc1_ + 1].y) * (this.§@;§ - this.§=!`§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§=!`§[_loc1_];
               this.§=!`§.splice(_loc1_,1);
               this.§=!`§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§"c§.numChildren > 0)
         {
            this.§"c§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§=!`§.length)
         {
            _loc2_ = this.§=!`§[_loc1_];
            this.§"c§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §!!'§(param1:Number, param2:Number) : §8W§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§=!`§.length)
         {
            if(this.§=!`§[_loc3_])
            {
               if(this.§=!`§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§=!`§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §]!E§(param1:Number, param2:Number) : §2!4§
      {
         if(param1 >= this.§!f§ - this.§3!<§ / 4 && param1 <= this.§!f§ + this.§3!<§ / 4 && param2 >= this.§@;§ - this.§3!<§ / 4 && this.§@;§ <= this.§ case§)
         {
            return this;
         }
         return null;
      }
      
      public function §=z§(param1:§"!7§) : void
      {
         var _loc3_:§8W§ = null;
         var _loc4_:§3H§ = null;
         param1.§,!3§ = this.§!f§;
         param1.§'Y§ = this.§@;§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§=!`§.length)
         {
            _loc3_ = this.§=!`§[_loc2_];
            (_loc4_ = new §3H§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§]Y§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §6N§() : void
      {
         while(this.§=!`§.length > 0)
         {
            this.§+!d§(this.§=!`§[0]);
         }
      }
      
      public function §0y§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§=!`§.length)
         {
            if(this.§=!`§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§=!`§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§!f§ > param1.x && this.§!f§ < param2.x && this.§@;§ > param1.y && this.§@;§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §[!M§() : Array
      {
         return [this.§@!6§,this.§'P§];
      }
      
      public function §1C§(param1:String, param2:Number, param3:Number) : §8W§
      {
         var _loc4_:§8W§ = this.§?!W§(param1,param2,param3);
         this.§7!@§();
         return _loc4_;
      }
      
      public function §]!Z§() : Number
      {
         return this.§=!`§.length;
      }
   }
}
