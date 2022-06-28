package §+&§
{
   import §!!§.§>4§;
   import §!!9§.Texture;
   import §,6§.§5z§;
   import §,6§.§^!>§;
   import §1!T§.§6!H§;
   import §3v§.§,n§;
   import §3v§.§6Q§;
   import §6z§.§[g§;
   import §9E§.§1!w§;
   import §9E§.§;!U§;
   import §9E§.Sprite;
   import §=!7§.§`c§;
   import §>o§.§'y§;
   import §>o§.§+!4§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § R§
   {
      
      public static const §`!6§:int = 0;
      
      public static const §3!,§:int = 1;
      
      public static const §8^§:int = 2;
      
      public static const §6!D§:int = 3;
      
      public static const §3-§:int = 5;
      
      public static const §6!A§:int = 3151368;
      
      protected static const §`X§:int = 8;
      
      protected static const §2!B§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const BIRD_LAUNCH_FORCE_GREEN:Number = 52.5;
      
      protected static const §0t§:Number = -0.7;
      
      protected static const §3!0§:Number = 0;
      
      protected static var §"!k§:Texture;
      
      public static const §=M§:Number = 0.4;
       
      
      public var §+!X§:§-!7§;
      
      public var §;!@§:Number;
      
      public var §3L§:Number;
      
      public var §=!>§:Number;
      
      protected var §<4§:Number;
      
      protected var § =§:Number;
      
      protected var §3M§:Number;
      
      protected var §'J§:Number;
      
      public var §,S§:Number;
      
      public var §!C§:Boolean = false;
      
      protected var §&;§:Number;
      
      public var §9q§:Vector.<§`o§>;
      
      public var §>$§:int;
      
      public var §";§:int;
      
      public var §1!<§:Number;
      
      public var §>e§:Sprite;
      
      public var §>!_§:int = 0;
      
      public var §2q§:Number = 0;
      
      public var §57§:Array;
      
      public var §'Q§:Array;
      
      public var mSlingShotState:int;
      
      public var §88§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §4!o§:Boolean = false;
      
      public var §6!`§:Number;
      
      protected var §8!9§:Sprite;
      
      protected var §,T§:§1!w§;
      
      protected var §9+§:§1!w§;
      
      protected var §2G§:Sprite;
      
      protected var § !t§:Sprite;
      
      protected var §-!Z§:Sprite;
      
      protected var §6§:§;!U§;
      
      protected var §14§:§;!U§;
      
      private var §?!t§:Number = 0;
      
      private var §3V§:int = 0;
      
      protected var §?m§:Number = -0.7;
      
      protected var §,r§:Number = 0;
      
      public function § R§(param1:§-!7§, param2:§>4§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§`c§ = null;
         this.§9q§ = new Vector.<§`o§>();
         super();
         this.§+!X§ = param1;
         this.§8!9§ = param3;
         if(param2)
         {
            this.setPosition(param2.§`Z§,param2.§;!>§);
            this.§'A§();
            _loc4_ = 0;
            while(_loc4_ < param2.§%o§)
            {
               _loc5_ = param2.§<-§(_loc4_);
               this.§0!`§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§3V§ = this.§6!§();
            this.§>$§ = 0;
            if(this.§9q§.length <= 0)
            {
               §[g§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§;!@§ + " " + this.§3L§);
               this.§,!e§(§6!D§);
            }
            else
            {
               this.§,!e§(§`!6§);
            }
         }
         else
         {
            §[g§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§,!e§(§6!D§);
         }
         this.§6!`§ = 0;
         this.§#!3§();
         this.update(0,true);
         this.§6!E§();
         this.updateAnimations(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§8!9§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§?!t§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§>$§ < this.§9q§.length;
      }
      
      public function dispose() : void
      {
         while(this.§9q§.length > 0)
         {
            this.§;;§(0);
         }
         this.§9q§ = null;
         if(this.§8!9§)
         {
            this.§8!9§.dispose();
            this.§8!9§ = null;
         }
         this.§>e§ = null;
         this.§57§ = null;
         this.§'Q§ = null;
      }
      
      public function §4D§(param1:String, param2:Number, param3:Number, param4:int = -1) : §`o§
      {
         var _loc5_:§`o§;
         (_loc5_ = this.§0!`§(param1,param2,param3,param4)).§0!M§();
         return _loc5_;
      }
      
      protected function §0!`§(param1:String, param2:Number, param3:Number, param4:int = -1) : §`o§
      {
         var _loc5_:§`o§ = new §`o§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§9q§.push(_loc5_);
         }
         else
         {
            this.§9q§.splice(param4,0,_loc5_);
         }
         this.§>e§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §,!e§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §`!6§)
         {
            this.§=a§();
            this.§1!<§ = 1000;
         }
         else if(this.mSlingShotState == §3!,§)
         {
            this.§=a§();
            this.§1!<§ = 0;
         }
         else if(this.mSlingShotState == §8^§)
         {
            this.§1!<§ = 10000;
            this.§4!o§ = false;
            this.§=a§();
         }
         else if(this.mSlingShotState == §6!D§)
         {
            this.§=a§();
            this.§1!<§ = 2000;
         }
         else if(this.mSlingShotState == §3-§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§4!o§ = false;
               this.§=a§();
               this.§9q§[this.§>$§].setPosition(this.§3M§ - this.§9q§[this.§>$§].radius * Math.cos(this.§2q§ / (180 / Math.PI)),this.§'J§ + this.§9q§[this.§>$§].radius * Math.sin(this.§2q§ / (180 / Math.PI)));
            }
            else
            {
               this.§=a§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §,!i§() : §-!7§
      {
         return this.§+!X§;
      }
      
      public function §-o§() : Boolean
      {
         return this.mSlingShotState == §6!D§ && this.§1!<§ <= 0;
      }
      
      private function §'A§() : void
      {
         var _loc1_:§^!>§ = this.getSlingshotAnimation();
         var _loc2_:§5z§ = _loc1_.getFrame(0);
         var _loc3_:§5z§ = _loc1_.getFrame(1);
         this.§6§ = new §;!U§(_loc2_.texture);
         this.§6§.scaleX = _loc2_.scale;
         this.§6§.scaleY = _loc2_.scale;
         this.§14§ = new §;!U§(_loc3_.texture);
         this.§14§.scaleX = _loc3_.scale;
         this.§14§.scaleY = _loc3_.scale;
         this.§4+§();
         this.§=m§();
         this.§>e§ = new Sprite();
         this.§8!9§.addChild(this.§6§);
         this.§8!9§.addChild(this.§2G§);
         this.§8!9§.addChild(this.§>e§);
         this.§8!9§.addChild(this.§-!Z§);
         this.§8!9§.addChild(this.§ !t§);
         this.§8!9§.addChild(this.§14§);
         this.§=!>§ = this.§3L§ + 8.5;
      }
      
      protected function getSlingshotAnimation() : §^!>§
      {
         return this.§+!X§.animationManager.getAnimation("SLINGSHOT");
      }
      
      public function §4+§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§<4§ = this.§;!@§;
         this.§ =§ = this.§3L§;
         this.§&;§ = §3D§.§@!?§;
         _loc1_ = null;
      }
      
      protected function §=m§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§"!k§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §"!k§ = this.§+!X§.textureManager.getTextureFromBitmapData(_loc2_);
         }
         this.§-!Z§ = new Sprite();
         var _loc1_:§;!U§ = new §;!U§(§"!k§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§-!Z§.addChild(_loc1_);
         this.§2G§ = new Sprite();
         this.§,T§ = new §1!w§(2,2,§6!A§);
         this.§2G§.addChild(this.§,T§);
         this.§ !t§ = new Sprite();
         this.§9+§ = new §1!w§(2,2,§6!A§);
         this.§ !t§.addChild(this.§9+§);
      }
      
      public function updateAnimations(param1:Number) : void
      {
         var _loc2_:Number = this.§'J§ / §-!7§.§8!r§;
         var _loc3_:Number = this.§3M§ / §-!7§.§8!r§;
         var _loc4_:Number = 3.5 + 8 * ((this.§&;§ - this.§,S§) / this.§&;§);
         this.§-!Z§.x = _loc3_;
         this.§-!Z§.y = _loc2_;
         this.§-!Z§.rotation = -this.§2q§ / (180 / Math.PI);
         this.§6§.x = this.§;!@§ / §-!7§.§8!r§ - 3;
         this.§6§.y = this.§3L§ / §-!7§.§8!r§ - 30;
         this.§14§.x = this.§;!@§ / §-!7§.§8!r§ - 30;
         this.§14§.y = this.§3L§ / §-!7§.§8!r§ - 30;
         this.§ !t§.x = this.§;!@§ / §-!7§.§8!r§ - 17;
         this.§ !t§.y = this.§3L§ / §-!7§.§8!r§ + 5;
         this.§ !t§.rotation = Math.atan2(_loc2_ - this.§ !t§.y,_loc3_ - this.§ !t§.x);
         this.§2G§.x = this.§;!@§ / §-!7§.§8!r§ + 22;
         this.§2G§.y = this.§3L§ / §-!7§.§8!r§;
         this.§2G§.rotation = Math.atan2(_loc2_ - this.§2G§.y,_loc3_ - this.§2G§.x);
         this.§9+§.width = Math.sqrt(Math.pow(_loc3_ - this.§ !t§.x,2) + Math.pow(_loc2_ - this.§ !t§.y,2));
         this.§,T§.width = Math.sqrt(Math.pow(_loc3_ - this.§2G§.x,2) + Math.pow(_loc2_ - this.§2G§.y,2));
         this.§9+§.height = this.§,T§.height = _loc4_ * 2;
         this.§9+§.y = -this.§9+§.height / 2;
         this.§,T§.y = -this.§,T§.height / 2;
         this.§88§ = false;
      }
      
      public function useMightyEagle() : void
      {
         while(this.§9q§.length > 0)
         {
            this.§;;§(0,true);
         }
         this.§#!W§();
         this.§0!`§("BIRD_SARDINE",this.§;!@§,this.§3L§);
         this.§,!e§(§8^§);
      }
      
      protected function §#!W§() : void
      {
         §6!H§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§,!e§(§3-§);
      }
      
      public function §=a§() : void
      {
         this.setNewCoordinatesForRubber(this.§<4§,this.§ =§ + this.§&;§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§3M§ == param1 && this.§'J§ == param2)
         {
            return true;
         }
         this.§,S§ = Math.sqrt((param2 - this.§ =§) * (param2 - this.§ =§) + (param1 - this.§<4§) * (param1 - this.§<4§));
         if(this.§,S§ > this.§&;§)
         {
            if(param3)
            {
               this.§,S§ = Math.sqrt((this.§'J§ - this.§ =§) * (this.§'J§ - this.§ =§) + (this.§3M§ - this.§<4§) * (this.§3M§ - this.§<4§));
               return false;
            }
            param1 = this.§<4§ + this.§&;§ * (param1 - this.§<4§) / this.§,S§;
            param2 = this.§ =§ + this.§&;§ * (param2 - this.§ =§) / this.§,S§;
            this.§,S§ = this.§&;§;
         }
         this.§3M§ = param1;
         this.§'J§ = param2;
         this.§2q§ = Math.atan2(-(this.§'J§ - this.§ =§),this.§3M§ - this.§<4§);
         this.§2q§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§3M§ = param1 + this.§?m§;
            this.§'J§ = param2 + this.§,r§;
            this.§2q§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§&;§ / 2;
         if(this.§,S§ > _loc7_ && this.§2q§ > -90 - _loc4_ + _loc5_ && this.§2q§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§<4§ + _loc7_ * (param1 - this.§<4§) / this.§,S§;
            param2 = this.§ =§ + _loc7_ * (param2 - this.§ =§) / this.§,S§;
            this.§,S§ = _loc7_;
            this.§3M§ = param1;
            this.§'J§ = param2;
         }
         else if(this.§,S§ > _loc7_ && this.§2q§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§2q§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§&;§ - _loc7_) * (Math.abs(this.§2q§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§<4§ + _loc8_ * (param1 - this.§<4§) / this.§,S§;
            param2 = this.§ =§ + _loc8_ * (param2 - this.§ =§) / this.§,S§;
            this.§,S§ = _loc8_;
            this.§3M§ = param1;
            this.§'J§ = param2;
         }
         if(this.§,S§ <= this.§&;§ * 0.45)
         {
            this.§!C§ = true;
         }
         else if(this.§!C§ && this.§,S§ >= this.§&;§ * 0.8)
         {
            this.§0P§();
            this.§!C§ = false;
         }
         this.§88§ = true;
         return true;
      }
      
      protected function §0P§() : void
      {
         §6!H§.playSound("SlingshotStreched");
      }
      
      public function §#!l§(param1:Number) : void
      {
         this.setPosition(this.§;!@§,this.§3L§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§;!@§;
         this.§;!@§ = param1;
         var _loc5_:Number = param2 - this.§3L§;
         this.§3L§ = param2;
         this.§=!>§ += _loc5_;
         this.§ =§ += _loc5_;
         this.§'J§ += _loc5_;
         this.§<4§ += _loc4_;
         this.§3M§ += _loc4_;
         if(param3)
         {
            this.updateAnimations(0);
         }
         this.§88§ = true;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§`o§ = null;
         _loc2_ = this.§9q§[this.§>$§];
         var _loc3_:Number = this.§,S§ / this.§&;§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§ R§.BIRD_LAUNCH_FORCE_GREEN) : Number(§ R§.BIRD_LAUNCH_FORCE);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §%!a§() : Point
      {
         var _loc1_:§`o§ = null;
         if(this.§9q§.length > this.§>$§)
         {
            _loc1_ = this.§9q§[this.§>$§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §2!K§() : Point
      {
         return new Point(this.§<4§,this.§ =§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§`o§ = null;
         this.§<!w§(param1);
         if(this.§88§)
         {
            this.updateAnimations(param1);
         }
         this.§1!<§ -= param1;
         if(this.§1!<§ < 0)
         {
            this.§1!<§ = 0;
         }
         if(this.mSlingShotState != §6!D§)
         {
            this.§6!T§(param1,param2);
            _loc3_ = null;
            if(this.§9q§.length > 0)
            {
               _loc3_ = this.§9q§[this.§>$§];
            }
            if(_loc3_)
            {
               _loc3_.§`f§(param1);
            }
            if(!_loc3_)
            {
               this.§,!e§(§6!D§);
            }
            else if(this.mSlingShotState == §`!6§)
            {
               if(this.§1!<§ <= 0)
               {
                  this.§,!e§(§3!,§);
                  _loc3_.§'?§();
               }
            }
            else if(this.mSlingShotState == §3!,§)
            {
               if(_loc3_.§+!p§)
               {
                  this.§,!e§(§8^§);
               }
            }
            else if(this.mSlingShotState == §8^§)
            {
               _loc3_.setPosition(this.§3M§ - _loc3_.radius * Math.cos(this.§2q§ / (180 / Math.PI)),this.§'J§ + _loc3_.radius * Math.sin(this.§2q§ / (180 / Math.PI)));
               if(this.§4!o§)
               {
                  this.§5!J§(this.§,S§ / this.§&;§,this.§2q§);
               }
            }
         }
      }
      
      public function §;!P§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§`o§ = null;
         if(this.§9q§.length > 0)
         {
            _loc5_ = this.§9q§[this.§>$§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§5!J§(param3,param4);
      }
      
      protected function §5!J§(param1:Number, param2:Number) : void
      {
         var _loc3_:§`o§ = null;
         this.§?m§ = §0t§;
         this.§,r§ = §3!0§;
         if(this.§9q§.length > 0)
         {
            _loc3_ = this.§9q§[this.§>$§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§4!o§ = false;
         this.§?!t§ = new Date().time;
         this.§+!X§.§9!,§(_loc3_,param1,param2);
         this.§;;§(this.§>$§,_loc3_.§-[§ > 0);
         this.playBirdShotSound();
         if(this.§>$§ >= this.§9q§.length)
         {
            this.§,!e§(§6!D§);
         }
         else
         {
            this.§,!e§(§`!6§);
         }
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §6!H§.playSound("BirdShot" + _loc1_);
      }
      
      public function §6!T§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§>$§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§9q§.length)
         {
            if(this.mSlingShotState == §3-§)
            {
               this.§9q§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§9q§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§`o§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§=a§();
         if(this.§";§ >= this.§9q§.length)
         {
            return false;
         }
         _loc1_ = this.§9q§[this.§";§];
         _loc2_ = §+!4§.§ !`§(_loc1_.name).score;
         this.§+!X§.addScore(_loc2_,§;!8§.§,!E§,true,_loc1_.x,_loc1_.y - 3,§6Q§.§>k§(_loc1_.name));
         _loc1_.§=!2§(-1,true);
         ++this.§";§;
         return true;
      }
      
      public function §6!§() : int
      {
         var _loc2_:§`o§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§9q§)
         {
            _loc1_ += §+!4§.§ !`§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §"!a§() : int
      {
         return this.§3V§;
      }
      
      public function §<!w§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§6!`§ >= 0)
         {
            this.§6!`§ -= param1;
            if(this.§6!`§ <= 0)
            {
               _loc2_ = this.§+!X§.objects.§&8§(this.§<4§,this.§=!>§);
               if(_loc2_ < 0)
               {
                  this.§#!l§(0.1);
                  this.§6!`§ = 0;
               }
               else if(!this.§+!X§.objects.§^k§(_loc2_).§ !§)
               {
                  this.§6!`§ = -1;
               }
               else if(this.§+!X§.objects.§^k§(_loc2_).§;!3§())
               {
                  this.§6!`§ = 2000;
               }
               else
               {
                  this.§6!`§ = 500;
               }
            }
         }
      }
      
      public function §6!E§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§+!X§.objects.§&8§(this.§<4§,this.§=!>§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§#!l§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§6!`§ = -1;
      }
      
      public function §@o§(param1:Number, param2:Number) : void
      {
         this.§8!9§.x = -param1;
         this.§8!9§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §8^§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §8^§ && this.§,S§ > this.§&;§ * §=M§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§,!e§(§8^§);
         var _loc1_:§`o§ = this.§9q§[this.§>$§];
         _loc1_.§=!2§(§'y§.§%#§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§`o§ = this.§9q§[this.§>$§];
         _loc1_.§=!2§(§'y§.§#!^§);
      }
      
      public function shoot() : void
      {
         this.§4!o§ = true;
      }
      
      protected function §;;§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§`o§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§9q§[param1])
         {
            _loc3_ = this.§9q§[param1];
            this.§>e§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§;!+§(this.§9q§[param1]);
            }
            _loc3_.dispose();
            this.§9q§[param1] = null;
         }
         this.§9q§.splice(param1,1);
      }
      
      public function §;!+§(param1:§`o§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §-!7§.§8!r§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §-!7§.§8!r§) + Math.random() * -_loc8_ * 2;
            this.§+!X§.particles.§=!K§(§6Q§.§&4§,§,n§.§9!&§,§6Q§.§?G§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§6Q§.§5r§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§+!X§.particles.§=!K§(§6Q§.§['§,§,n§.§9!&§,§6Q§.§?G§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §[Z§(param1:§`o§) : void
      {
         this.§;;§(this.§9q§.indexOf(param1));
      }
      
      public function §#!3§() : void
      {
         var _loc2_:§`o§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§`o§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§9q§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§;!@§ - this.§9q§[_loc1_].x) * (this.§;!@§ - this.§9q§[_loc1_].x) + (this.§3L§ - this.§9q§[_loc1_].y) * (this.§3L§ - this.§9q§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§;!@§ - this.§9q§[_loc1_ + 1].x) * (this.§;!@§ - this.§9q§[_loc1_ + 1].x) + (this.§3L§ - this.§9q§[_loc1_ + 1].y) * (this.§3L§ - this.§9q§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§9q§[_loc1_];
               this.§9q§.splice(_loc1_,1);
               this.§9q§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§>e§.numChildren > 0)
         {
            this.§>e§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§9q§.length)
         {
            _loc2_ = this.§9q§[_loc1_];
            this.§>e§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §!!,§(param1:Number, param2:Number) : §`o§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§9q§.length)
         {
            if(this.§9q§[_loc3_])
            {
               if(this.§9q§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§9q§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §+![§(param1:Number, param2:Number) : § R§
      {
         if(param1 >= this.§;!@§ - this.§&;§ / 4 && param1 <= this.§;!@§ + this.§&;§ / 4 && param2 >= this.§3L§ - this.§&;§ / 4 && this.§3L§ <= this.§=!>§)
         {
            return this;
         }
         return null;
      }
      
      public function §9k§(param1:§>4§) : void
      {
         var _loc3_:§`o§ = null;
         var _loc4_:§`c§ = null;
         param1.§`Z§ = this.§;!@§;
         param1.§;!>§ = this.§3L§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§9q§.length)
         {
            _loc3_ = this.§9q§[_loc2_];
            (_loc4_ = new §`c§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§]!!§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §6W§() : void
      {
         while(this.§9q§.length > 0)
         {
            this.§[Z§(this.§9q§[0]);
         }
      }
      
      public function §-!X§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§9q§.length)
         {
            if(this.§9q§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§9q§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§;!@§ > param1.x && this.§;!@§ < param2.x && this.§3L§ > param1.y && this.§3L§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §"!]§() : Array
      {
         return [this.§14§,this.§6§];
      }
      
      public function §>!>§(param1:String, param2:Number, param3:Number) : §`o§
      {
         var _loc4_:§`o§ = this.§0!`§(param1,param2,param3);
         this.§#!3§();
         return _loc4_;
      }
      
      public function §4!=§() : Number
      {
         return this.§9q§.length;
      }
   }
}
