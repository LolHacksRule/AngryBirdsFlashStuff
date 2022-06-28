package §2_§
{
   import §"!,§.§9!B§;
   import §"!,§.§^z§;
   import §"x§.§-8§;
   import §-d§.§%d§;
   import §-d§.§-C§;
   import §3!G§.§ y§;
   import §4!O§.§"E§;
   import §4>§.Texture;
   import §5!c§.§9'§;
   import §7!B§.§-§;
   import §7!B§.§;R§;
   import §7!B§.Sprite;
   import §^!Y§.§1C§;
   import §^!Y§.§4!f§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §8![§
   {
      
      public static const §`I§:int = 0;
      
      public static const §4!I§:int = 1;
      
      public static const §'!a§:int = 2;
      
      public static const §5!w§:int = 3;
      
      public static const §5s§:int = 5;
      
      public static const §!P§:int = 3151368;
      
      protected static const §+%§:int = 8;
      
      protected static const §+!l§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const BIRD_LAUNCH_FORCE_GREEN:Number = 52.5;
      
      protected static const §>?§:Number = -0.7;
      
      protected static const §15§:Number = 0;
      
      protected static var §+!g§:Texture;
      
      public static const §9!_§:Number = 0.4;
       
      
      public var §#!3§:§'u§;
      
      public var §#!u§:Number;
      
      public var §<h§:Number;
      
      public var § D§:Number;
      
      protected var § !d§:Number;
      
      protected var §#!c§:Number;
      
      protected var §+Y§:Number;
      
      protected var §"N§:Number;
      
      public var §[&§:Number;
      
      public var §+!k§:Boolean = false;
      
      protected var §!!P§:Number;
      
      public var §]!^§:Vector.<§>-§>;
      
      public var §8!?§:int;
      
      public var §1!D§:int;
      
      public var §^[§:Number;
      
      public var §=!D§:Sprite;
      
      public var §`!'§:int = 0;
      
      public var § !m§:Number = 0;
      
      public var §%m§:Array;
      
      public var §,M§:Array;
      
      public var mSlingShotState:int;
      
      public var §9r§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §7e§:Boolean = false;
      
      public var §"O§:Number;
      
      protected var §2O§:Sprite;
      
      protected var §'j§:§;R§;
      
      protected var §`3§:§;R§;
      
      protected var §6R§:Sprite;
      
      protected var §5L§:Sprite;
      
      protected var §!!_§:Sprite;
      
      protected var §]R§:§-§;
      
      protected var § V§:§-§;
      
      private var §]O§:Number = 0;
      
      private var §3E§:int = 0;
      
      protected var § !!§:Number = -0.7;
      
      protected var §`=§:Number = 0;
      
      public function §8![§(param1:§'u§, param2:§ y§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§"E§ = null;
         this.§]!^§ = new Vector.<§>-§>();
         super();
         this.§#!3§ = param1;
         this.§2O§ = param3;
         if(param2)
         {
            this.setPosition(param2.§'[§,param2.§=1§);
            this.§!S§();
            _loc4_ = 0;
            while(_loc4_ < param2.§6Q§)
            {
               _loc5_ = param2.§5!l§(_loc4_);
               this.§&!6§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§3E§ = this.§;!X§();
            this.§8!?§ = 0;
            if(this.§]!^§.length <= 0)
            {
               §-8§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§#!u§ + " " + this.§<h§);
               this.§4!#§(§5!w§);
            }
            else
            {
               this.§4!#§(§`I§);
            }
         }
         else
         {
            §-8§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§4!#§(§5!w§);
         }
         this.§"O§ = 0;
         this.§!+§();
         this.update(0,true);
         this.§%9§();
         this.updateAnimations(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§2O§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§]O§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§8!?§ < this.§]!^§.length;
      }
      
      public function dispose() : void
      {
         while(this.§]!^§.length > 0)
         {
            this.§"[§(0);
         }
         this.§]!^§ = null;
         if(this.§2O§)
         {
            this.§2O§.dispose();
            this.§2O§ = null;
         }
         this.§=!D§ = null;
         this.§%m§ = null;
         this.§,M§ = null;
      }
      
      public function §for§(param1:String, param2:Number, param3:Number, param4:int = -1) : §>-§
      {
         var _loc5_:§>-§;
         (_loc5_ = this.§&!6§(param1,param2,param3,param4)).§@!t§();
         return _loc5_;
      }
      
      protected function §&!6§(param1:String, param2:Number, param3:Number, param4:int = -1) : §>-§
      {
         var _loc5_:§>-§ = new §>-§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§]!^§.push(_loc5_);
         }
         else
         {
            this.§]!^§.splice(param4,0,_loc5_);
         }
         this.§=!D§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §4!#§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §`I§)
         {
            this.§`! §();
            this.§^[§ = 1000;
         }
         else if(this.mSlingShotState == §4!I§)
         {
            this.§`! §();
            this.§^[§ = 0;
         }
         else if(this.mSlingShotState == §'!a§)
         {
            this.§^[§ = 10000;
            this.§7e§ = false;
            this.§`! §();
         }
         else if(this.mSlingShotState == §5!w§)
         {
            this.§`! §();
            this.§^[§ = 2000;
         }
         else if(this.mSlingShotState == §5s§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§7e§ = false;
               this.§`! §();
               this.§]!^§[this.§8!?§].setPosition(this.§+Y§ - this.§]!^§[this.§8!?§].radius * Math.cos(this.§ !m§ / (180 / Math.PI)),this.§"N§ + this.§]!^§[this.§8!?§].radius * Math.sin(this.§ !m§ / (180 / Math.PI)));
            }
            else
            {
               this.§`! §();
            }
         }
         this.mDragging = false;
      }
      
      public function get §17§() : §'u§
      {
         return this.§#!3§;
      }
      
      public function §0!O§() : Boolean
      {
         return this.mSlingShotState == §5!w§ && this.§^[§ <= 0;
      }
      
      private function §!S§() : void
      {
         var _loc1_:§4!f§ = this.getSlingshotAnimation();
         var _loc2_:§1C§ = _loc1_.getFrame(0);
         var _loc3_:§1C§ = _loc1_.getFrame(1);
         this.§]R§ = new §-§(_loc2_.texture);
         this.§]R§.scaleX = _loc2_.scale;
         this.§]R§.scaleY = _loc2_.scale;
         this.§ V§ = new §-§(_loc3_.texture);
         this.§ V§.scaleX = _loc3_.scale;
         this.§ V§.scaleY = _loc3_.scale;
         this.§6!n§();
         this.§0!]§();
         this.§=!D§ = new Sprite();
         this.§2O§.addChild(this.§]R§);
         this.§2O§.addChild(this.§6R§);
         this.§2O§.addChild(this.§=!D§);
         this.§2O§.addChild(this.§!!_§);
         this.§2O§.addChild(this.§5L§);
         this.§2O§.addChild(this.§ V§);
         this.§ D§ = this.§<h§ + 8.5;
      }
      
      protected function getSlingshotAnimation() : §4!f§
      {
         return this.§#!3§.animationManager.getAnimation("SLINGSHOT");
      }
      
      public function §6!n§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§ !d§ = this.§#!u§;
         this.§#!c§ = this.§<h§;
         this.§!!P§ = §,L§.§,!Z§;
         _loc1_ = null;
      }
      
      protected function §0!]§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§+!g§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §+!g§ = this.§#!3§.textureManager.getTextureFromBitmapData(_loc2_);
         }
         this.§!!_§ = new Sprite();
         var _loc1_:§-§ = new §-§(§+!g§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§!!_§.addChild(_loc1_);
         this.§6R§ = new Sprite();
         this.§'j§ = new §;R§(2,2,§!P§);
         this.§6R§.addChild(this.§'j§);
         this.§5L§ = new Sprite();
         this.§`3§ = new §;R§(2,2,§!P§);
         this.§5L§.addChild(this.§`3§);
      }
      
      public function updateAnimations(param1:Number) : void
      {
         var _loc2_:Number = this.§"N§ / §'u§.§18§;
         var _loc3_:Number = this.§+Y§ / §'u§.§18§;
         var _loc4_:Number = 3.5 + 8 * ((this.§!!P§ - this.§[&§) / this.§!!P§);
         this.§!!_§.x = _loc3_;
         this.§!!_§.y = _loc2_;
         this.§!!_§.rotation = -this.§ !m§ / (180 / Math.PI);
         this.§]R§.x = this.§#!u§ / §'u§.§18§ - 3;
         this.§]R§.y = this.§<h§ / §'u§.§18§ - 30;
         this.§ V§.x = this.§#!u§ / §'u§.§18§ - 30;
         this.§ V§.y = this.§<h§ / §'u§.§18§ - 30;
         this.§5L§.x = this.§#!u§ / §'u§.§18§ - 17;
         this.§5L§.y = this.§<h§ / §'u§.§18§ + 5;
         this.§5L§.rotation = Math.atan2(_loc2_ - this.§5L§.y,_loc3_ - this.§5L§.x);
         this.§6R§.x = this.§#!u§ / §'u§.§18§ + 22;
         this.§6R§.y = this.§<h§ / §'u§.§18§;
         this.§6R§.rotation = Math.atan2(_loc2_ - this.§6R§.y,_loc3_ - this.§6R§.x);
         this.§`3§.width = Math.sqrt(Math.pow(_loc3_ - this.§5L§.x,2) + Math.pow(_loc2_ - this.§5L§.y,2));
         this.§'j§.width = Math.sqrt(Math.pow(_loc3_ - this.§6R§.x,2) + Math.pow(_loc2_ - this.§6R§.y,2));
         this.§`3§.height = this.§'j§.height = _loc4_ * 2;
         this.§`3§.y = -this.§`3§.height / 2;
         this.§'j§.y = -this.§'j§.height / 2;
         this.§9r§ = false;
      }
      
      public function useMightyEagle() : void
      {
         while(this.§]!^§.length > 0)
         {
            this.§"[§(0,true);
         }
         this.§#!X§();
         this.§&!6§("BIRD_SARDINE",this.§#!u§,this.§<h§);
         this.§4!#§(§'!a§);
      }
      
      protected function §#!X§() : void
      {
         §9'§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§4!#§(§5s§);
      }
      
      public function §`! §() : void
      {
         this.setNewCoordinatesForRubber(this.§ !d§,this.§#!c§ + this.§!!P§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§+Y§ == param1 && this.§"N§ == param2)
         {
            return true;
         }
         this.§[&§ = Math.sqrt((param2 - this.§#!c§) * (param2 - this.§#!c§) + (param1 - this.§ !d§) * (param1 - this.§ !d§));
         if(this.§[&§ > this.§!!P§)
         {
            if(param3)
            {
               this.§[&§ = Math.sqrt((this.§"N§ - this.§#!c§) * (this.§"N§ - this.§#!c§) + (this.§+Y§ - this.§ !d§) * (this.§+Y§ - this.§ !d§));
               return false;
            }
            param1 = this.§ !d§ + this.§!!P§ * (param1 - this.§ !d§) / this.§[&§;
            param2 = this.§#!c§ + this.§!!P§ * (param2 - this.§#!c§) / this.§[&§;
            this.§[&§ = this.§!!P§;
         }
         this.§+Y§ = param1;
         this.§"N§ = param2;
         this.§ !m§ = Math.atan2(-(this.§"N§ - this.§#!c§),this.§+Y§ - this.§ !d§);
         this.§ !m§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§+Y§ = param1 + this.§ !!§;
            this.§"N§ = param2 + this.§`=§;
            this.§ !m§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§!!P§ / 2;
         if(this.§[&§ > _loc7_ && this.§ !m§ > -90 - _loc4_ + _loc5_ && this.§ !m§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§ !d§ + _loc7_ * (param1 - this.§ !d§) / this.§[&§;
            param2 = this.§#!c§ + _loc7_ * (param2 - this.§#!c§) / this.§[&§;
            this.§[&§ = _loc7_;
            this.§+Y§ = param1;
            this.§"N§ = param2;
         }
         else if(this.§[&§ > _loc7_ && this.§ !m§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§ !m§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§!!P§ - _loc7_) * (Math.abs(this.§ !m§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§ !d§ + _loc8_ * (param1 - this.§ !d§) / this.§[&§;
            param2 = this.§#!c§ + _loc8_ * (param2 - this.§#!c§) / this.§[&§;
            this.§[&§ = _loc8_;
            this.§+Y§ = param1;
            this.§"N§ = param2;
         }
         if(this.§[&§ <= this.§!!P§ * 0.45)
         {
            this.§+!k§ = true;
         }
         else if(this.§+!k§ && this.§[&§ >= this.§!!P§ * 0.8)
         {
            this.§9S§();
            this.§+!k§ = false;
         }
         this.§9r§ = true;
         return true;
      }
      
      protected function §9S§() : void
      {
         §9'§.playSound("SlingshotStreched");
      }
      
      public function §`!`§(param1:Number) : void
      {
         this.setPosition(this.§#!u§,this.§<h§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§#!u§;
         this.§#!u§ = param1;
         var _loc5_:Number = param2 - this.§<h§;
         this.§<h§ = param2;
         this.§ D§ += _loc5_;
         this.§#!c§ += _loc5_;
         this.§"N§ += _loc5_;
         this.§ !d§ += _loc4_;
         this.§+Y§ += _loc4_;
         if(param3)
         {
            this.updateAnimations(0);
         }
         this.§9r§ = true;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§>-§ = null;
         _loc2_ = this.§]!^§[this.§8!?§];
         var _loc3_:Number = this.§[&§ / this.§!!P§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§8![§.BIRD_LAUNCH_FORCE_GREEN) : Number(§8![§.BIRD_LAUNCH_FORCE);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §7!b§() : Point
      {
         var _loc1_:§>-§ = null;
         if(this.§]!^§.length > this.§8!?§)
         {
            _loc1_ = this.§]!^§[this.§8!?§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §3!H§() : Point
      {
         return new Point(this.§ !d§,this.§#!c§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§>-§ = null;
         this.§+O§(param1);
         if(this.§9r§)
         {
            this.updateAnimations(param1);
         }
         this.§^[§ -= param1;
         if(this.§^[§ < 0)
         {
            this.§^[§ = 0;
         }
         if(this.mSlingShotState != §5!w§)
         {
            this.§5p§(param1,param2);
            _loc3_ = null;
            if(this.§]!^§.length > 0)
            {
               _loc3_ = this.§]!^§[this.§8!?§];
            }
            if(_loc3_)
            {
               _loc3_.§-!c§(param1);
            }
            if(!_loc3_)
            {
               this.§4!#§(§5!w§);
            }
            else if(this.mSlingShotState == §`I§)
            {
               if(this.§^[§ <= 0)
               {
                  this.§4!#§(§4!I§);
                  _loc3_.§>!I§();
               }
            }
            else if(this.mSlingShotState == §4!I§)
            {
               if(_loc3_.§5!_§)
               {
                  this.§4!#§(§'!a§);
               }
            }
            else if(this.mSlingShotState == §'!a§)
            {
               _loc3_.setPosition(this.§+Y§ - _loc3_.radius * Math.cos(this.§ !m§ / (180 / Math.PI)),this.§"N§ + _loc3_.radius * Math.sin(this.§ !m§ / (180 / Math.PI)));
               if(this.§7e§)
               {
                  this.§!!c§(this.§[&§ / this.§!!P§,this.§ !m§);
               }
            }
         }
      }
      
      public function §2!A§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§>-§ = null;
         if(this.§]!^§.length > 0)
         {
            _loc5_ = this.§]!^§[this.§8!?§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§!!c§(param3,param4);
      }
      
      protected function §!!c§(param1:Number, param2:Number) : void
      {
         var _loc3_:§>-§ = null;
         this.§ !!§ = §>?§;
         this.§`=§ = §15§;
         if(this.§]!^§.length > 0)
         {
            _loc3_ = this.§]!^§[this.§8!?§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§7e§ = false;
         this.§]O§ = new Date().time;
         this.§#!3§.§^!x§(_loc3_,param1,param2);
         this.§"[§(this.§8!?§,_loc3_.§@N§ > 0);
         this.playBirdShotSound();
         if(this.§8!?§ >= this.§]!^§.length)
         {
            this.§4!#§(§5!w§);
         }
         else
         {
            this.§4!#§(§`I§);
         }
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §9'§.playSound("BirdShot" + _loc1_);
      }
      
      public function §5p§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§8!?§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§]!^§.length)
         {
            if(this.mSlingShotState == §5s§)
            {
               this.§]!^§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§]!^§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§>-§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§`! §();
         if(this.§1!D§ >= this.§]!^§.length)
         {
            return false;
         }
         _loc1_ = this.§]!^§[this.§1!D§];
         _loc2_ = §%d§.§4!^§(_loc1_.name).score;
         this.§#!3§.addScore(_loc2_,§@!6§.§+W§,true,_loc1_.x,_loc1_.y - 3,§9!B§.§%!d§(_loc1_.name));
         _loc1_.§2!M§(-1,true);
         ++this.§1!D§;
         return true;
      }
      
      public function §;!X§() : int
      {
         var _loc2_:§>-§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§]!^§)
         {
            _loc1_ += §%d§.§4!^§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §86§() : int
      {
         return this.§3E§;
      }
      
      public function §+O§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§"O§ >= 0)
         {
            this.§"O§ -= param1;
            if(this.§"O§ <= 0)
            {
               _loc2_ = this.§#!3§.objects.§;!5§(this.§ !d§,this.§ D§);
               if(_loc2_ < 0)
               {
                  this.§`!`§(0.1);
                  this.§"O§ = 0;
               }
               else if(!this.§#!3§.objects.§>J§(_loc2_).§'h§)
               {
                  this.§"O§ = -1;
               }
               else if(this.§#!3§.objects.§>J§(_loc2_).§^!R§())
               {
                  this.§"O§ = 2000;
               }
               else
               {
                  this.§"O§ = 500;
               }
            }
         }
      }
      
      public function §%9§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§#!3§.objects.§;!5§(this.§ !d§,this.§ D§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§`!`§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§"O§ = -1;
      }
      
      public function §7!P§(param1:Number, param2:Number) : void
      {
         this.§2O§.x = -param1;
         this.§2O§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §'!a§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §'!a§ && this.§[&§ > this.§!!P§ * §9!_§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§4!#§(§'!a§);
         var _loc1_:§>-§ = this.§]!^§[this.§8!?§];
         _loc1_.§2!M§(§-C§.§;![§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§>-§ = this.§]!^§[this.§8!?§];
         _loc1_.§2!M§(§-C§.§!!N§);
      }
      
      public function shoot() : void
      {
         this.§7e§ = true;
      }
      
      protected function §"[§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§>-§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§]!^§[param1])
         {
            _loc3_ = this.§]!^§[param1];
            this.§=!D§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§"!^§(this.§]!^§[param1]);
            }
            _loc3_.dispose();
            this.§]!^§[param1] = null;
         }
         this.§]!^§.splice(param1,1);
      }
      
      public function §"!^§(param1:§>-§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §'u§.§18§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §'u§.§18§) + Math.random() * -_loc8_ * 2;
            this.§#!3§.particles.§#Z§(§9!B§.§8v§,§^z§.§!!B§,§9!B§.§5!G§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§9!B§.§'!4§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§#!3§.particles.§#Z§(§9!B§.§?P§,§^z§.§!!B§,§9!B§.§5!G§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §^Q§(param1:§>-§) : void
      {
         this.§"[§(this.§]!^§.indexOf(param1));
      }
      
      public function §!+§() : void
      {
         var _loc2_:§>-§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§>-§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§]!^§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§#!u§ - this.§]!^§[_loc1_].x) * (this.§#!u§ - this.§]!^§[_loc1_].x) + (this.§<h§ - this.§]!^§[_loc1_].y) * (this.§<h§ - this.§]!^§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§#!u§ - this.§]!^§[_loc1_ + 1].x) * (this.§#!u§ - this.§]!^§[_loc1_ + 1].x) + (this.§<h§ - this.§]!^§[_loc1_ + 1].y) * (this.§<h§ - this.§]!^§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§]!^§[_loc1_];
               this.§]!^§.splice(_loc1_,1);
               this.§]!^§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§=!D§.numChildren > 0)
         {
            this.§=!D§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§]!^§.length)
         {
            _loc2_ = this.§]!^§[_loc1_];
            this.§=!D§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §1!K§(param1:Number, param2:Number) : §>-§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§]!^§.length)
         {
            if(this.§]!^§[_loc3_])
            {
               if(this.§]!^§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§]!^§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §9!2§(param1:Number, param2:Number) : §8![§
      {
         if(param1 >= this.§#!u§ - this.§!!P§ / 4 && param1 <= this.§#!u§ + this.§!!P§ / 4 && param2 >= this.§<h§ - this.§!!P§ / 4 && this.§<h§ <= this.§ D§)
         {
            return this;
         }
         return null;
      }
      
      public function §'@§(param1:§ y§) : void
      {
         var _loc3_:§>-§ = null;
         var _loc4_:§"E§ = null;
         param1.§'[§ = this.§#!u§;
         param1.§=1§ = this.§<h§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§]!^§.length)
         {
            _loc3_ = this.§]!^§[_loc2_];
            (_loc4_ = new §"E§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§+![§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §[S§() : void
      {
         while(this.§]!^§.length > 0)
         {
            this.§^Q§(this.§]!^§[0]);
         }
      }
      
      public function §,Q§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§]!^§.length)
         {
            if(this.§]!^§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§]!^§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§#!u§ > param1.x && this.§#!u§ < param2.x && this.§<h§ > param1.y && this.§<h§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §,4§() : Array
      {
         return [this.§ V§,this.§]R§];
      }
      
      public function §;"§(param1:String, param2:Number, param3:Number) : §>-§
      {
         var _loc4_:§>-§ = this.§&!6§(param1,param2,param3);
         this.§!+§();
         return _loc4_;
      }
      
      public function §'!`§() : Number
      {
         return this.§]!^§.length;
      }
   }
}
