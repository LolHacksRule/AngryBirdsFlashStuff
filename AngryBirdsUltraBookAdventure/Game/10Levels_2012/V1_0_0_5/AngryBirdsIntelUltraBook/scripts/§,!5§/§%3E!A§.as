package §,!5§
{
   import § use§.§'!]§;
   import §"R§.§ !Q§;
   import §'!9§.§%!g§;
   import §'!9§.§?!U§;
   import §'!9§.Sprite;
   import §-w§.§+W§;
   import §-w§.§1!;§;
   import §0!N§.§=+§;
   import §<!1§.§<!R§;
   import §<!1§.§<F§;
   import §]V§.§+F§;
   import §]V§.§1!e§;
   import §^!+§.Texture;
   import §^_§.§!>§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §>!A§
   {
      
      public static const §2!Q§:int = 0;
      
      public static const §&f§:int = 1;
      
      public static const §1!2§:int = 2;
      
      public static const §-8§:int = 3;
      
      public static const §,U§:int = 5;
      
      public static const §,!H§:int = 3151368;
      
      protected static const §?!,§:int = 8;
      
      protected static const §4!N§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const BIRD_LAUNCH_FORCE_GREEN:Number = 52.5;
      
      protected static const §,5§:Number = -0.7;
      
      protected static const §&! §:Number = 0;
      
      protected static var §,!^§:Texture;
      
      public static const §%P§:Number = 0.4;
       
      
      public var §?l§:§^g§;
      
      public var §,G§:Number;
      
      public var §78§:Number;
      
      public var §=!X§:Number;
      
      protected var §"!d§:Number;
      
      protected var §5!L§:Number;
      
      protected var §5f§:Number;
      
      protected var §[W§:Number;
      
      public var §>!]§:Number;
      
      public var §4i§:Boolean = false;
      
      protected var §5!G§:Number;
      
      public var §?$§:Vector.<§7!,§>;
      
      public var §;&§:int;
      
      public var §,1§:int;
      
      public var §^x§:Number;
      
      public var §42§:Sprite;
      
      public var §2m§:int = 0;
      
      public var §-H§:Number = 0;
      
      public var §9m§:Array;
      
      public var §,!`§:Array;
      
      public var mSlingShotState:int;
      
      public var § !4§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §>!H§:Boolean = false;
      
      public var §'!l§:Number;
      
      protected var §8X§:Sprite;
      
      protected var §8!u§:§%!g§;
      
      protected var §,i§:§%!g§;
      
      protected var §0!d§:Sprite;
      
      protected var §&!5§:Sprite;
      
      protected var §'c§:Sprite;
      
      protected var § !,§:§?!U§;
      
      protected var §6!@§:§?!U§;
      
      private var §>J§:Number = 0;
      
      private var §[!n§:int = 0;
      
      protected var §'![§:Number = -0.7;
      
      protected var §`X§:Number = 0;
      
      public function §>!A§(param1:§^g§, param2:§=+§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§'!]§ = null;
         this.§?$§ = new Vector.<§7!,§>();
         super();
         this.§?l§ = param1;
         this.§8X§ = param3;
         if(param2)
         {
            this.setPosition(param2.§6y§,param2.§8!r§);
            this.§+8§();
            _loc4_ = 0;
            while(_loc4_ < param2.§]U§)
            {
               _loc5_ = param2.§0J§(_loc4_);
               this.§ !§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§[!n§ = this.§^!v§();
            this.§;&§ = 0;
            if(this.§?$§.length <= 0)
            {
               §!>§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§,G§ + " " + this.§78§);
               this.§4&§(§-8§);
            }
            else
            {
               this.§4&§(§2!Q§);
            }
         }
         else
         {
            §!>§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§4&§(§-8§);
         }
         this.§'!l§ = 0;
         this.§`!P§();
         this.update(0,true);
         this.§2! §();
         this.updateAnimations(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§8X§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§>J§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§;&§ < this.§?$§.length;
      }
      
      public function dispose() : void
      {
         while(this.§?$§.length > 0)
         {
            this.§]2§(0);
         }
         this.§?$§ = null;
         if(this.§8X§)
         {
            this.§8X§.dispose();
            this.§8X§ = null;
         }
         this.§42§ = null;
         this.§9m§ = null;
         this.§,!`§ = null;
      }
      
      public function §9;§(param1:String, param2:Number, param3:Number, param4:int = -1) : §7!,§
      {
         var _loc5_:§7!,§;
         (_loc5_ = this.§ !§(param1,param2,param3,param4)).§`!a§();
         return _loc5_;
      }
      
      protected function § !§(param1:String, param2:Number, param3:Number, param4:int = -1) : §7!,§
      {
         var _loc5_:§7!,§ = new §7!,§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§?$§.push(_loc5_);
         }
         else
         {
            this.§?$§.splice(param4,0,_loc5_);
         }
         this.§42§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §4&§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §2!Q§)
         {
            this.§8!+§();
            this.§^x§ = 1000;
         }
         else if(this.mSlingShotState == §&f§)
         {
            this.§8!+§();
            this.§^x§ = 0;
         }
         else if(this.mSlingShotState == §1!2§)
         {
            this.§^x§ = 10000;
            this.§>!H§ = false;
            this.§8!+§();
         }
         else if(this.mSlingShotState == §-8§)
         {
            this.§8!+§();
            this.§^x§ = 2000;
         }
         else if(this.mSlingShotState == §,U§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§>!H§ = false;
               this.§8!+§();
               this.§?$§[this.§;&§].setPosition(this.§5f§ - this.§?$§[this.§;&§].radius * Math.cos(this.§-H§ / (180 / Math.PI)),this.§[W§ + this.§?$§[this.§;&§].radius * Math.sin(this.§-H§ / (180 / Math.PI)));
            }
            else
            {
               this.§8!+§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §3!w§() : §^g§
      {
         return this.§?l§;
      }
      
      public function §5k§() : Boolean
      {
         return this.mSlingShotState == §-8§ && this.§^x§ <= 0;
      }
      
      private function §+8§() : void
      {
         var _loc1_:§1!;§ = this.getSlingshotAnimation();
         var _loc2_:§+W§ = _loc1_.getFrame(0);
         var _loc3_:§+W§ = _loc1_.getFrame(1);
         this.§ !,§ = new §?!U§(_loc2_.texture);
         this.§ !,§.scaleX = _loc2_.scale;
         this.§ !,§.scaleY = _loc2_.scale;
         this.§6!@§ = new §?!U§(_loc3_.texture);
         this.§6!@§.scaleX = _loc3_.scale;
         this.§6!@§.scaleY = _loc3_.scale;
         this.§;>§();
         this.§+! §();
         this.§42§ = new Sprite();
         this.§8X§.addChild(this.§ !,§);
         this.§8X§.addChild(this.§0!d§);
         this.§8X§.addChild(this.§42§);
         this.§8X§.addChild(this.§'c§);
         this.§8X§.addChild(this.§&!5§);
         this.§8X§.addChild(this.§6!@§);
         this.§=!X§ = this.§78§ + 8.5;
      }
      
      protected function getSlingshotAnimation() : §1!;§
      {
         return this.§?l§.animationManager.getAnimation("SLINGSHOT");
      }
      
      public function §;>§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§"!d§ = this.§,G§;
         this.§5!L§ = this.§78§;
         this.§5!G§ = §0;§.§#!A§;
         _loc1_ = null;
      }
      
      protected function §+! §() : void
      {
         var _loc2_:BitmapData = null;
         if(!§,!^§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §,!^§ = this.§?l§.textureManager.getTextureFromBitmapData(_loc2_);
         }
         this.§'c§ = new Sprite();
         var _loc1_:§?!U§ = new §?!U§(§,!^§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§'c§.addChild(_loc1_);
         this.§0!d§ = new Sprite();
         this.§8!u§ = new §%!g§(2,2,§,!H§);
         this.§0!d§.addChild(this.§8!u§);
         this.§&!5§ = new Sprite();
         this.§,i§ = new §%!g§(2,2,§,!H§);
         this.§&!5§.addChild(this.§,i§);
      }
      
      public function updateAnimations(param1:Number) : void
      {
         var _loc2_:Number = this.§[W§ / §^g§.§^!S§;
         var _loc3_:Number = this.§5f§ / §^g§.§^!S§;
         var _loc4_:Number = 3.5 + 8 * ((this.§5!G§ - this.§>!]§) / this.§5!G§);
         this.§'c§.x = _loc3_;
         this.§'c§.y = _loc2_;
         this.§'c§.rotation = -this.§-H§ / (180 / Math.PI);
         this.§ !,§.x = this.§,G§ / §^g§.§^!S§ - 3;
         this.§ !,§.y = this.§78§ / §^g§.§^!S§ - 30;
         this.§6!@§.x = this.§,G§ / §^g§.§^!S§ - 30;
         this.§6!@§.y = this.§78§ / §^g§.§^!S§ - 30;
         this.§&!5§.x = this.§,G§ / §^g§.§^!S§ - 17;
         this.§&!5§.y = this.§78§ / §^g§.§^!S§ + 5;
         this.§&!5§.rotation = Math.atan2(_loc2_ - this.§&!5§.y,_loc3_ - this.§&!5§.x);
         this.§0!d§.x = this.§,G§ / §^g§.§^!S§ + 22;
         this.§0!d§.y = this.§78§ / §^g§.§^!S§;
         this.§0!d§.rotation = Math.atan2(_loc2_ - this.§0!d§.y,_loc3_ - this.§0!d§.x);
         this.§,i§.width = Math.sqrt(Math.pow(_loc3_ - this.§&!5§.x,2) + Math.pow(_loc2_ - this.§&!5§.y,2));
         this.§8!u§.width = Math.sqrt(Math.pow(_loc3_ - this.§0!d§.x,2) + Math.pow(_loc2_ - this.§0!d§.y,2));
         this.§,i§.height = this.§8!u§.height = _loc4_ * 2;
         this.§,i§.y = -this.§,i§.height / 2;
         this.§8!u§.y = -this.§8!u§.height / 2;
         this.§ !4§ = false;
      }
      
      public function useMightyEagle() : void
      {
         while(this.§?$§.length > 0)
         {
            this.§]2§(0,true);
         }
         this.§0!f§();
         this.§ !§("BIRD_SARDINE",this.§,G§,this.§78§);
         this.§4&§(§1!2§);
      }
      
      protected function §0!f§() : void
      {
         § !Q§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§4&§(§,U§);
      }
      
      public function §8!+§() : void
      {
         this.setNewCoordinatesForRubber(this.§"!d§,this.§5!L§ + this.§5!G§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§5f§ == param1 && this.§[W§ == param2)
         {
            return true;
         }
         this.§>!]§ = Math.sqrt((param2 - this.§5!L§) * (param2 - this.§5!L§) + (param1 - this.§"!d§) * (param1 - this.§"!d§));
         if(this.§>!]§ > this.§5!G§)
         {
            if(param3)
            {
               this.§>!]§ = Math.sqrt((this.§[W§ - this.§5!L§) * (this.§[W§ - this.§5!L§) + (this.§5f§ - this.§"!d§) * (this.§5f§ - this.§"!d§));
               return false;
            }
            param1 = this.§"!d§ + this.§5!G§ * (param1 - this.§"!d§) / this.§>!]§;
            param2 = this.§5!L§ + this.§5!G§ * (param2 - this.§5!L§) / this.§>!]§;
            this.§>!]§ = this.§5!G§;
         }
         this.§5f§ = param1;
         this.§[W§ = param2;
         this.§-H§ = Math.atan2(-(this.§[W§ - this.§5!L§),this.§5f§ - this.§"!d§);
         this.§-H§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§5f§ = param1 + this.§'![§;
            this.§[W§ = param2 + this.§`X§;
            this.§-H§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§5!G§ / 2;
         if(this.§>!]§ > _loc7_ && this.§-H§ > -90 - _loc4_ + _loc5_ && this.§-H§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§"!d§ + _loc7_ * (param1 - this.§"!d§) / this.§>!]§;
            param2 = this.§5!L§ + _loc7_ * (param2 - this.§5!L§) / this.§>!]§;
            this.§>!]§ = _loc7_;
            this.§5f§ = param1;
            this.§[W§ = param2;
         }
         else if(this.§>!]§ > _loc7_ && this.§-H§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§-H§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§5!G§ - _loc7_) * (Math.abs(this.§-H§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§"!d§ + _loc8_ * (param1 - this.§"!d§) / this.§>!]§;
            param2 = this.§5!L§ + _loc8_ * (param2 - this.§5!L§) / this.§>!]§;
            this.§>!]§ = _loc8_;
            this.§5f§ = param1;
            this.§[W§ = param2;
         }
         if(this.§>!]§ <= this.§5!G§ * 0.45)
         {
            this.§4i§ = true;
         }
         else if(this.§4i§ && this.§>!]§ >= this.§5!G§ * 0.8)
         {
            this.§&§();
            this.§4i§ = false;
         }
         this.§ !4§ = true;
         return true;
      }
      
      protected function §&§() : void
      {
         § !Q§.playSound("SlingshotStreched");
      }
      
      public function §9S§(param1:Number) : void
      {
         this.setPosition(this.§,G§,this.§78§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§,G§;
         this.§,G§ = param1;
         var _loc5_:Number = param2 - this.§78§;
         this.§78§ = param2;
         this.§=!X§ += _loc5_;
         this.§5!L§ += _loc5_;
         this.§[W§ += _loc5_;
         this.§"!d§ += _loc4_;
         this.§5f§ += _loc4_;
         if(param3)
         {
            this.updateAnimations(0);
         }
         this.§ !4§ = true;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§7!,§ = null;
         _loc2_ = this.§?$§[this.§;&§];
         var _loc3_:Number = this.§>!]§ / this.§5!G§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§>!A§.BIRD_LAUNCH_FORCE_GREEN) : Number(§>!A§.BIRD_LAUNCH_FORCE);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §"!S§() : Point
      {
         var _loc1_:§7!,§ = null;
         if(this.§?$§.length > this.§;&§)
         {
            _loc1_ = this.§?$§[this.§;&§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §<!r§() : Point
      {
         return new Point(this.§"!d§,this.§5!L§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§7!,§ = null;
         this.§!o§(param1);
         if(this.§ !4§)
         {
            this.updateAnimations(param1);
         }
         this.§^x§ -= param1;
         if(this.§^x§ < 0)
         {
            this.§^x§ = 0;
         }
         if(this.mSlingShotState != §-8§)
         {
            this.§=W§(param1,param2);
            _loc3_ = null;
            if(this.§?$§.length > 0)
            {
               _loc3_ = this.§?$§[this.§;&§];
            }
            if(_loc3_)
            {
               _loc3_.§@s§(param1);
            }
            if(!_loc3_)
            {
               this.§4&§(§-8§);
            }
            else if(this.mSlingShotState == §2!Q§)
            {
               if(this.§^x§ <= 0)
               {
                  this.§4&§(§&f§);
                  _loc3_.§;j§();
               }
            }
            else if(this.mSlingShotState == §&f§)
            {
               if(_loc3_.§5!p§)
               {
                  this.§4&§(§1!2§);
               }
            }
            else if(this.mSlingShotState == §1!2§)
            {
               _loc3_.setPosition(this.§5f§ - _loc3_.radius * Math.cos(this.§-H§ / (180 / Math.PI)),this.§[W§ + _loc3_.radius * Math.sin(this.§-H§ / (180 / Math.PI)));
               if(this.§>!H§)
               {
                  this.§ !n§(this.§>!]§ / this.§5!G§,this.§-H§);
               }
            }
         }
      }
      
      public function §!!p§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§7!,§ = null;
         if(this.§?$§.length > 0)
         {
            _loc5_ = this.§?$§[this.§;&§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§ !n§(param3,param4);
      }
      
      protected function § !n§(param1:Number, param2:Number) : void
      {
         var _loc3_:§7!,§ = null;
         this.§'![§ = §,5§;
         this.§`X§ = §&! §;
         if(this.§?$§.length > 0)
         {
            _loc3_ = this.§?$§[this.§;&§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§>!H§ = false;
         this.§>J§ = new Date().time;
         this.§?l§.§%!1§(_loc3_,param1,param2);
         this.§]2§(this.§;&§,_loc3_.§5!6§ > 0);
         this.playBirdShotSound();
         if(this.§;&§ >= this.§?$§.length)
         {
            this.§4&§(§-8§);
         }
         else
         {
            this.§4&§(§2!Q§);
         }
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         § !Q§.playSound("BirdShot" + _loc1_);
      }
      
      public function §=W§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§;&§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§?$§.length)
         {
            if(this.mSlingShotState == §,U§)
            {
               this.§?$§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§?$§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§7!,§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§8!+§();
         if(this.§,1§ >= this.§?$§.length)
         {
            return false;
         }
         _loc1_ = this.§?$§[this.§,1§];
         _loc2_ = §<F§.§1]§(_loc1_.name).score;
         this.§?l§.addScore(_loc2_,§;v§.§^!2§,true,_loc1_.x,_loc1_.y - 3,§1!e§.§?L§(_loc1_.name));
         _loc1_.§8!n§(-1,true);
         ++this.§,1§;
         return true;
      }
      
      public function §^!v§() : int
      {
         var _loc2_:§7!,§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§?$§)
         {
            _loc1_ += §<F§.§1]§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §%!6§() : int
      {
         return this.§[!n§;
      }
      
      public function §!o§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§'!l§ >= 0)
         {
            this.§'!l§ -= param1;
            if(this.§'!l§ <= 0)
            {
               _loc2_ = this.§?l§.objects.§=V§(this.§"!d§,this.§=!X§);
               if(_loc2_ < 0)
               {
                  this.§9S§(0.1);
                  this.§'!l§ = 0;
               }
               else if(!this.§?l§.objects.§8!3§(_loc2_).§"'§)
               {
                  this.§'!l§ = -1;
               }
               else if(this.§?l§.objects.§8!3§(_loc2_).§9!i§())
               {
                  this.§'!l§ = 2000;
               }
               else
               {
                  this.§'!l§ = 500;
               }
            }
         }
      }
      
      public function §2! §() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§?l§.objects.§=V§(this.§"!d§,this.§=!X§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§9S§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§'!l§ = -1;
      }
      
      public function §9!=§(param1:Number, param2:Number) : void
      {
         this.§8X§.x = -param1;
         this.§8X§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §1!2§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §1!2§ && this.§>!]§ > this.§5!G§ * §%P§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§4&§(§1!2§);
         var _loc1_:§7!,§ = this.§?$§[this.§;&§];
         _loc1_.§8!n§(§<!R§.§>!h§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§7!,§ = this.§?$§[this.§;&§];
         _loc1_.§8!n§(§<!R§.§``§);
      }
      
      public function shoot() : void
      {
         this.§>!H§ = true;
      }
      
      protected function §]2§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§7!,§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§?$§[param1])
         {
            _loc3_ = this.§?$§[param1];
            this.§42§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§^4§(this.§?$§[param1]);
            }
            _loc3_.dispose();
            this.§?$§[param1] = null;
         }
         this.§?$§.splice(param1,1);
      }
      
      public function §^4§(param1:§7!,§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §^g§.§^!S§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §^g§.§^!S§) + Math.random() * -_loc8_ * 2;
            this.§?l§.particles.§ K§(§1!e§.§?A§,§+F§.§+!X§,§1!e§.§<V§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§1!e§.§"!J§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§?l§.particles.§ K§(§1!e§.§`!@§,§+F§.§+!X§,§1!e§.§<V§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §!!D§(param1:§7!,§) : void
      {
         this.§]2§(this.§?$§.indexOf(param1));
      }
      
      public function §`!P§() : void
      {
         var _loc2_:§7!,§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§7!,§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§?$§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§,G§ - this.§?$§[_loc1_].x) * (this.§,G§ - this.§?$§[_loc1_].x) + (this.§78§ - this.§?$§[_loc1_].y) * (this.§78§ - this.§?$§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§,G§ - this.§?$§[_loc1_ + 1].x) * (this.§,G§ - this.§?$§[_loc1_ + 1].x) + (this.§78§ - this.§?$§[_loc1_ + 1].y) * (this.§78§ - this.§?$§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§?$§[_loc1_];
               this.§?$§.splice(_loc1_,1);
               this.§?$§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§42§.numChildren > 0)
         {
            this.§42§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§?$§.length)
         {
            _loc2_ = this.§?$§[_loc1_];
            this.§42§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §"+§(param1:Number, param2:Number) : §7!,§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§?$§.length)
         {
            if(this.§?$§[_loc3_])
            {
               if(this.§?$§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§?$§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §!k§(param1:Number, param2:Number) : §>!A§
      {
         if(param1 >= this.§,G§ - this.§5!G§ / 4 && param1 <= this.§,G§ + this.§5!G§ / 4 && param2 >= this.§78§ - this.§5!G§ / 4 && this.§78§ <= this.§=!X§)
         {
            return this;
         }
         return null;
      }
      
      public function §`!9§(param1:§=+§) : void
      {
         var _loc3_:§7!,§ = null;
         var _loc4_:§'!]§ = null;
         param1.§6y§ = this.§,G§;
         param1.§8!r§ = this.§78§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§?$§.length)
         {
            _loc3_ = this.§?$§[_loc2_];
            (_loc4_ = new §'!]§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§-T§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §&!T§() : void
      {
         while(this.§?$§.length > 0)
         {
            this.§!!D§(this.§?$§[0]);
         }
      }
      
      public function §!Z§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§?$§.length)
         {
            if(this.§?$§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§?$§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§,G§ > param1.x && this.§,G§ < param2.x && this.§78§ > param1.y && this.§78§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §4=§() : Array
      {
         return [this.§6!@§,this.§ !,§];
      }
      
      public function §9!?§(param1:String, param2:Number, param3:Number) : §7!,§
      {
         var _loc4_:§7!,§ = this.§ !§(param1,param2,param3);
         this.§`!P§();
         return _loc4_;
      }
      
      public function §@!c§() : Number
      {
         return this.§?$§.length;
      }
   }
}
