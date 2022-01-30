package §[B§
{
   import §!R§.§8u§;
   import §!R§.§>"=§;
   import §"p§.§@8§;
   import §#?§.§%!O§;
   import §#?§.§?![§;
   import §%B§.§^k§;
   import §0E§.§#O§;
   import §?",§.§"!`§;
   import §@!-§.§"K§;
   import §@!-§.§5A§;
   import §@!i§.§%Q§;
   import §@!i§.§'!a§;
   import §@!i§.Sprite;
   import §^Q§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §^W§
   {
      
      public static const § E§:int = 0;
      
      public static const §`q§:int = 1;
      
      public static const §>B§:int = 2;
      
      public static const §07§:int = 3;
      
      public static const §;!Q§:int = 5;
      
      public static const §-$§:int = 3151368;
      
      protected static const §52§:int = 8;
      
      protected static const §'!S§:int = 0;
      
      public static const §-!U§:Number = 46.25;
      
      public static const §&!I§:Number = 52.5;
      
      protected static const §5!G§:Number = -0.7;
      
      protected static const §1!§:Number = 0;
      
      protected static var §7!y§:Texture;
      
      public static const §4!s§:Number = 0.4;
       
      
      public var §]!3§:§"d§;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §4H§:Number;
      
      protected var §1-§:Number;
      
      protected var §,!5§:Number;
      
      protected var §'!l§:Number;
      
      protected var §>!g§:Number;
      
      public var §?§:Number;
      
      public var §`!N§:Boolean = false;
      
      protected var §^!Z§:Number;
      
      public var mBirds:Vector.<§,!f§>;
      
      public var §"t§:int;
      
      public var §^!q§:int;
      
      public var §%Y§:Number;
      
      public var §'4§:Sprite;
      
      public var §=;§:int = 0;
      
      public var §1P§:Number = 0;
      
      public var §7!I§:Array;
      
      public var §@"!§:Array;
      
      public var mSlingShotState:int;
      
      public var §9<§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §=!h§:Boolean = false;
      
      public var §0" §:Number;
      
      protected var §+;§:Sprite;
      
      protected var §?!y§:§'!a§;
      
      protected var §;!@§:§'!a§;
      
      protected var §3!!§:Sprite;
      
      protected var §8!s§:Sprite;
      
      protected var §2!W§:Sprite;
      
      protected var §-!B§:§%Q§;
      
      protected var §32§:§%Q§;
      
      private var §"!O§:Number = 0;
      
      private var §&!;§:int = 0;
      
      protected var §'C§:Number = -0.7;
      
      protected var §]W§:Number = 0;
      
      public function §^W§(param1:§"d§, param2:§#O§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§"!`§ = null;
         this.mBirds = new Vector.<§,!f§>();
         super();
         this.§]!3§ = param1;
         this.§+;§ = param3;
         if(param2)
         {
            this.setPosition(param2.§#!!§,param2.§5!9§);
            this.§@g§();
            _loc4_ = 0;
            while(_loc4_ < param2.§@-§)
            {
               _loc5_ = param2.§=!,§(_loc4_);
               this.§6§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§&!;§ = this.§,q§();
            this.§"t§ = 0;
            if(this.mBirds.length <= 0)
            {
               §@8§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.mX + " " + this.mY);
               this.setSlingShotState(§07§);
            }
            else
            {
               this.setSlingShotState(§ E§);
            }
         }
         else
         {
            §@8§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.setSlingShotState(§07§);
         }
         this.§0" § = 0;
         this.§+"0§();
         this.update(0,true);
         this.§5g§();
         this.§6!2§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§+;§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§"!O§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§"t§ < this.mBirds.length;
      }
      
      public function dispose() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§2W§(0);
         }
         this.mBirds = null;
         if(this.§+;§)
         {
            this.§+;§.dispose();
            this.§+;§ = null;
         }
         this.§'4§ = null;
         this.§7!I§ = null;
         this.§@"!§ = null;
      }
      
      public function §&§(param1:String, param2:Number, param3:Number, param4:int = -1) : §,!f§
      {
         var _loc5_:§,!f§;
         (_loc5_ = this.§6§(param1,param2,param3,param4)).§]x§();
         this.setSlingShotState(§>B§);
         return _loc5_;
      }
      
      protected function §6§(param1:String, param2:Number, param3:Number, param4:int = -1) : §,!f§
      {
         var _loc5_:§,!f§ = new §,!f§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.mBirds.push(_loc5_);
         }
         else
         {
            this.mBirds.splice(param4,0,_loc5_);
         }
         this.§'4§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function setSlingShotState(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == § E§)
         {
            this.§`G§();
            this.§%Y§ = 1000;
         }
         else if(this.mSlingShotState == §`q§)
         {
            this.§`G§();
            this.§%Y§ = 0;
         }
         else if(this.mSlingShotState == §>B§)
         {
            this.§%Y§ = 10000;
            this.§=!h§ = false;
            this.§`G§();
         }
         else if(this.mSlingShotState == §07§)
         {
            this.§`G§();
            this.§%Y§ = 2000;
         }
         else if(this.mSlingShotState == §;!Q§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§=!h§ = false;
               this.§`G§();
               this.mBirds[this.§"t§].setPosition(this.§'!l§ - this.mBirds[this.§"t§].radius * Math.cos(this.§1P§ / (180 / Math.PI)),this.§>!g§ + this.mBirds[this.§"t§].radius * Math.sin(this.§1P§ / (180 / Math.PI)));
            }
            else
            {
               this.§`G§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §9!8§() : §"d§
      {
         return this.§]!3§;
      }
      
      public function §3!-§() : Boolean
      {
         return this.mSlingShotState == §07§ && this.§%Y§ <= 0;
      }
      
      private function §@g§() : void
      {
         var _loc1_:§5A§ = this.§,",§();
         var _loc2_:§"K§ = _loc1_.getFrame(0);
         var _loc3_:§"K§ = _loc1_.getFrame(1);
         this.§-!B§ = new §%Q§(_loc2_.texture);
         this.§-!B§.scaleX = _loc2_.scale;
         this.§-!B§.scaleY = _loc2_.scale;
         this.§32§ = new §%Q§(_loc3_.texture);
         this.§32§.scaleX = _loc3_.scale;
         this.§32§.scaleY = _loc3_.scale;
         this.§1"!§();
         this.§6!Z§();
         this.§'4§ = new Sprite();
         this.§+;§.addChild(this.§-!B§);
         this.§+;§.addChild(this.§3!!§);
         this.§+;§.addChild(this.§'4§);
         this.§+;§.addChild(this.§2!W§);
         this.§+;§.addChild(this.§8!s§);
         this.§+;§.addChild(this.§32§);
         this.§4H§ = this.mY + 8.5;
      }
      
      protected function §,",§() : §5A§
      {
         return this.§]!3§.§]9§.§^e§("SLINGSHOT");
      }
      
      public function §1"!§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§1-§ = this.mX;
         this.§,!5§ = this.mY;
         this.§^!Z§ = §5"1§.§!!+§;
         _loc1_ = null;
      }
      
      protected function §6!Z§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§7!y§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §7!y§ = this.§]!3§.§="!§.§,!d§(_loc2_);
         }
         this.§2!W§ = new Sprite();
         var _loc1_:§%Q§ = new §%Q§(§7!y§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§2!W§.addChild(_loc1_);
         this.§3!!§ = new Sprite();
         this.§?!y§ = new §'!a§(2,2,§-$§);
         this.§3!!§.addChild(this.§?!y§);
         this.§8!s§ = new Sprite();
         this.§;!@§ = new §'!a§(2,2,§-$§);
         this.§8!s§.addChild(this.§;!@§);
      }
      
      public function §6!2§(param1:Number) : void
      {
         var _loc2_:Number = this.§>!g§ / §"d§.§2!]§;
         var _loc3_:Number = this.§'!l§ / §"d§.§2!]§;
         var _loc4_:Number = 3.5 + 8 * ((this.§^!Z§ - this.§?§) / this.§^!Z§);
         this.§2!W§.x = _loc3_;
         this.§2!W§.y = _loc2_;
         this.§2!W§.rotation = -this.§1P§ / (180 / Math.PI);
         this.§-!B§.x = this.mX / §"d§.§2!]§ - 3;
         this.§-!B§.y = this.mY / §"d§.§2!]§ - 30;
         this.§32§.x = this.mX / §"d§.§2!]§ - 30;
         this.§32§.y = this.mY / §"d§.§2!]§ - 30;
         this.§8!s§.x = this.mX / §"d§.§2!]§ - 17;
         this.§8!s§.y = this.mY / §"d§.§2!]§ + 5;
         this.§8!s§.rotation = Math.atan2(_loc2_ - this.§8!s§.y,_loc3_ - this.§8!s§.x);
         this.§3!!§.x = this.mX / §"d§.§2!]§ + 22;
         this.§3!!§.y = this.mY / §"d§.§2!]§;
         this.§3!!§.rotation = Math.atan2(_loc2_ - this.§3!!§.y,_loc3_ - this.§3!!§.x);
         this.§;!@§.width = Math.sqrt(Math.pow(_loc3_ - this.§8!s§.x,2) + Math.pow(_loc2_ - this.§8!s§.y,2));
         this.§?!y§.width = Math.sqrt(Math.pow(_loc3_ - this.§3!!§.x,2) + Math.pow(_loc2_ - this.§3!!§.y,2));
         this.§;!@§.height = this.§?!y§.height = _loc4_ * 2;
         this.§;!@§.y = -this.§;!@§.height / 2;
         this.§?!y§.y = -this.§?!y§.height / 2;
         this.§9<§ = false;
      }
      
      public function §6c§() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§2W§(0,true);
         }
         this.§3E§();
         this.§6§("BIRD_SARDINE",this.mX,this.mY);
         this.setSlingShotState(§>B§);
      }
      
      protected function §3E§() : void
      {
         §^k§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.setSlingShotState(§;!Q§);
      }
      
      public function §`G§() : void
      {
         this.setNewCoordinatesForRubber(this.§1-§,this.§,!5§ + this.§^!Z§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§'!l§ == param1 && this.§>!g§ == param2)
         {
            return true;
         }
         this.§?§ = Math.sqrt((param2 - this.§,!5§) * (param2 - this.§,!5§) + (param1 - this.§1-§) * (param1 - this.§1-§));
         if(this.§?§ > this.§^!Z§)
         {
            if(param3)
            {
               this.§?§ = Math.sqrt((this.§>!g§ - this.§,!5§) * (this.§>!g§ - this.§,!5§) + (this.§'!l§ - this.§1-§) * (this.§'!l§ - this.§1-§));
               return false;
            }
            param1 = this.§1-§ + this.§^!Z§ * (param1 - this.§1-§) / this.§?§;
            param2 = this.§,!5§ + this.§^!Z§ * (param2 - this.§,!5§) / this.§?§;
            this.§?§ = this.§^!Z§;
         }
         this.§'!l§ = param1;
         this.§>!g§ = param2;
         this.§1P§ = Math.atan2(-(this.§>!g§ - this.§,!5§),this.§'!l§ - this.§1-§);
         this.§1P§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§'!l§ = param1 + this.§'C§;
            this.§>!g§ = param2 + this.§]W§;
            this.§1P§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§^!Z§ / 2;
         if(this.§?§ > _loc7_ && this.§1P§ > -90 - _loc4_ + _loc5_ && this.§1P§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§1-§ + _loc7_ * (param1 - this.§1-§) / this.§?§;
            param2 = this.§,!5§ + _loc7_ * (param2 - this.§,!5§) / this.§?§;
            this.§?§ = _loc7_;
            this.§'!l§ = param1;
            this.§>!g§ = param2;
         }
         else if(this.§?§ > _loc7_ && this.§1P§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§1P§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§^!Z§ - _loc7_) * (Math.abs(this.§1P§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§1-§ + _loc8_ * (param1 - this.§1-§) / this.§?§;
            param2 = this.§,!5§ + _loc8_ * (param2 - this.§,!5§) / this.§?§;
            this.§?§ = _loc8_;
            this.§'!l§ = param1;
            this.§>!g§ = param2;
         }
         if(this.§?§ <= this.§^!Z§ * 0.45)
         {
            this.§`!N§ = true;
         }
         else if(this.§`!N§ && this.§?§ >= this.§^!Z§ * 0.8)
         {
            this.§2p§();
            this.§`!N§ = false;
         }
         this.§9<§ = true;
         return true;
      }
      
      protected function §2p§() : void
      {
         §^k§.playSound("SlingshotStreched");
      }
      
      public function §@!Z§(param1:Number) : void
      {
         this.setPosition(this.mX,this.mY + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.mX;
         this.mX = param1;
         var _loc5_:Number = param2 - this.mY;
         this.mY = param2;
         this.§4H§ += _loc5_;
         this.§,!5§ += _loc5_;
         this.§>!g§ += _loc5_;
         this.§1-§ += _loc4_;
         this.§'!l§ += _loc4_;
         if(param3)
         {
            this.§6!2§(0);
         }
         this.§9<§ = true;
      }
      
      public function §,F§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§,!f§ = null;
         _loc2_ = this.mBirds[this.§"t§];
         var _loc3_:Number = this.§?§ / this.§^!Z§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§^W§.§&!I§) : Number(§^W§.§-!U§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §2d§() : Point
      {
         var _loc1_:§,!f§ = null;
         if(this.mBirds.length > this.§"t§)
         {
            _loc1_ = this.mBirds[this.§"t§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §^C§() : Point
      {
         return new Point(this.§1-§,this.§,!5§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§,!f§ = null;
         this.§;Q§(param1);
         if(this.§9<§)
         {
            this.§6!2§(param1);
         }
         this.§%Y§ -= param1;
         if(this.§%Y§ < 0)
         {
            this.§%Y§ = 0;
         }
         if(this.mSlingShotState != §07§)
         {
            this.§"O§(param1,param2);
            _loc3_ = null;
            if(this.mBirds.length > 0)
            {
               _loc3_ = this.mBirds[this.§"t§];
            }
            if(_loc3_)
            {
               _loc3_.§7!K§(param1);
            }
            if(!_loc3_)
            {
               this.setSlingShotState(§07§);
            }
            else if(this.mSlingShotState == § E§)
            {
               if(this.§%Y§ <= 0)
               {
                  this.setSlingShotState(§`q§);
                  _loc3_.§>"3§();
               }
            }
            else if(this.mSlingShotState == §`q§)
            {
               if(_loc3_.§'!y§)
               {
                  this.setSlingShotState(§>B§);
               }
            }
            else if(this.mSlingShotState == §>B§)
            {
               _loc3_.setPosition(this.§'!l§ - _loc3_.radius * Math.cos(this.§1P§ / (180 / Math.PI)),this.§>!g§ + _loc3_.radius * Math.sin(this.§1P§ / (180 / Math.PI)));
               if(this.§=!h§)
               {
                  this.§&&§(this.§?§ / this.§^!Z§,this.§1P§);
               }
            }
         }
      }
      
      public function §4n§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§,!f§ = null;
         if(this.mBirds.length > 0)
         {
            _loc5_ = this.mBirds[this.§"t§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§&&§(param3,param4);
      }
      
      protected function §&&§(param1:Number, param2:Number) : void
      {
         var _loc3_:§,!f§ = null;
         this.§'C§ = §5!G§;
         this.§]W§ = §1!§;
         if(this.mBirds.length > 0)
         {
            _loc3_ = this.mBirds[this.§"t§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§=!h§ = false;
         this.§"!O§ = new Date().time;
         this.§]!3§.§=""§(_loc3_,param1,param2);
         this.§2W§(this.§"t§,_loc3_.§]Y§ > 0);
         this.§3I§();
         if(this.§"t§ >= this.mBirds.length)
         {
            this.setSlingShotState(§07§);
         }
         else
         {
            this.setSlingShotState(§ E§);
         }
      }
      
      protected function §3I§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §^k§.playSound("BirdShot" + _loc1_);
      }
      
      public function §"O§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§"t§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.mBirds.length)
         {
            if(this.mSlingShotState == §;!Q§)
            {
               this.mBirds[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.mBirds[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§,!f§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§`G§();
         if(this.§^!q§ >= this.mBirds.length)
         {
            return false;
         }
         _loc1_ = this.mBirds[this.§^!q§];
         _loc2_ = §%!O§.§2<§(_loc1_.name).score;
         this.§]!3§.addScore(_loc2_,§ !j§.§6!-§,true,_loc1_.x,_loc1_.y - 3,§8u§.§+1§(_loc1_.name));
         _loc1_.§[2§(-1,true);
         ++this.§^!q§;
         return true;
      }
      
      public function §,q§() : int
      {
         var _loc2_:§,!f§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mBirds)
         {
            _loc1_ += §%!O§.§2<§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §6!%§() : int
      {
         return this.§&!;§;
      }
      
      public function §;Q§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§0" § >= 0)
         {
            this.§0" § -= param1;
            if(this.§0" § <= 0)
            {
               _loc2_ = this.§]!3§.objects.§>!9§(this.§1-§,this.§4H§);
               if(_loc2_ < 0)
               {
                  this.§@!Z§(0.1);
                  this.§0" § = 0;
               }
               else if(!this.§]!3§.objects.getObject(_loc2_).§+3§)
               {
                  this.§0" § = -1;
               }
               else if(this.§]!3§.objects.getObject(_loc2_).§5l§())
               {
                  this.§0" § = 2000;
               }
               else
               {
                  this.§0" § = 500;
               }
            }
         }
      }
      
      public function §5g§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§]!3§.objects.§>!9§(this.§1-§,this.§4H§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§@!Z§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§0" § = -1;
      }
      
      public function §4K§(param1:Number, param2:Number) : void
      {
         this.§+;§.x = -param1;
         this.§+;§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §>B§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §>B§ && this.§?§ > this.§^!Z§ * §4!s§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.setSlingShotState(§>B§);
         var _loc1_:§,!f§ = this.mBirds[this.§"t§];
         _loc1_.§[2§(§?![§.§4[§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§,!f§ = this.mBirds[this.§"t§];
         _loc1_.§[2§(§?![§.§ S§);
      }
      
      public function shoot() : void
      {
         this.§=!h§ = true;
      }
      
      protected function §2W§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§,!f§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.mBirds[param1])
         {
            _loc3_ = this.mBirds[param1];
            this.§'4§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§!z§(this.mBirds[param1]);
            }
            _loc3_.dispose();
            this.mBirds[param1] = null;
         }
         this.mBirds.splice(param1,1);
      }
      
      public function §!z§(param1:§,!f§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §"d§.§2!]§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §"d§.§2!]§) + Math.random() * -_loc8_ * 2;
            this.§]!3§.particles.§""#§(§8u§.§=!H§,§>"=§.§3%§,§8u§.§@9§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§8u§.§^p§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§]!3§.particles.§""#§(§8u§.§'!4§,§>"=§.§3%§,§8u§.§@9§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:§,!f§) : void
      {
         this.§2W§(this.mBirds.indexOf(param1));
      }
      
      public function §+"0§() : void
      {
         var _loc2_:§,!f§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§,!f§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.mBirds.length - 1)
         {
            _loc3_ = Math.sqrt((this.mX - this.mBirds[_loc1_].x) * (this.mX - this.mBirds[_loc1_].x) + (this.mY - this.mBirds[_loc1_].y) * (this.mY - this.mBirds[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.mX - this.mBirds[_loc1_ + 1].x) * (this.mX - this.mBirds[_loc1_ + 1].x) + (this.mY - this.mBirds[_loc1_ + 1].y) * (this.mY - this.mBirds[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.mBirds[_loc1_];
               this.mBirds.splice(_loc1_,1);
               this.mBirds.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§'4§.numChildren > 0)
         {
            this.§'4§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.mBirds.length)
         {
            _loc2_ = this.mBirds[_loc1_];
            this.§'4§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §,!f§
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
      
      public function intersectsWithPoint(param1:Number, param2:Number) : §^W§
      {
         if(param1 >= this.mX - this.§^!Z§ / 4 && param1 <= this.mX + this.§^!Z§ / 4 && param2 >= this.mY - this.§^!Z§ / 4 && this.mY <= this.§4H§)
         {
            return this;
         }
         return null;
      }
      
      public function writeSlingshotInformation(param1:§#O§) : void
      {
         var _loc3_:§,!f§ = null;
         var _loc4_:§"!`§ = null;
         param1.§#!!§ = this.mX;
         param1.§5!9§ = this.mY;
         var _loc2_:Number = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc3_ = this.mBirds[_loc2_];
            (_loc4_ = new §"!`§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§-;§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §=y§() : void
      {
         while(this.mBirds.length > 0)
         {
            this.removeObject(this.mBirds[0]);
         }
      }
      
      public function getObjectsWithinBoundingBox(param1:Point, param2:Point) : Array
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
         if(this.mX > param1.x && this.mX < param2.x && this.mY > param1.y && this.mY < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §6'§() : Array
      {
         return [this.§32§,this.§-!B§];
      }
      
      public function addNewBirdToEndOfList(param1:String, param2:Number, param3:Number) : §,!f§
      {
         var _loc4_:§,!f§ = this.§6§(param1,param2,param3);
         this.§+"0§();
         return _loc4_;
      }
      
      public function getBirdCount() : Number
      {
         return this.mBirds.length;
      }
   }
}
