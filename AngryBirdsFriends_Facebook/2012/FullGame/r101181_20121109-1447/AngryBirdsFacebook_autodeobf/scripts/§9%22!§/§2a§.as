package §9"!§
{
   import §#!e§.§1"B§;
   import §%Q§.§6G§;
   import §%Q§.§;!y§;
   import §0!R§.Texture;
   import §1!$§.§!"?§;
   import §1!$§.§0!N§;
   import §1!$§.Sprite;
   import §6!B§.§>!E§;
   import §6!D§.§"A§;
   import §6!D§.§3!K§;
   import §6o§.§+!k§;
   import §8g§.§"!e§;
   import §]!4§.§'G§;
   import §]!4§.§^!f§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §2a§
   {
      
      public static const §4D§:int = 0;
      
      public static const §`!S§:int = 1;
      
      public static const §["7§:int = 2;
      
      public static const §=U§:int = 3;
      
      public static const §0T§:int = 5;
      
      public static const §^!q§:int = 3151368;
      
      protected static const §,!4§:int = 8;
      
      protected static const §!x§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const BIRD_LAUNCH_FORCE_GREEN:Number = 52.5;
      
      protected static const §?N§:Number = -0.7;
      
      protected static const §=4§:Number = 0;
      
      protected static var §-3§:Texture;
      
      public static const §5!j§:Number = 0.4;
       
      
      public var §@O§:§9"3§;
      
      public var §,!k§:Number;
      
      public var §!Q§:Number;
      
      public var §`!j§:Number;
      
      protected var §7!0§:Number;
      
      protected var §^!U§:Number;
      
      protected var §>!q§:Number;
      
      protected var §-D§:Number;
      
      public var §"!+§:Number;
      
      public var §-!A§:Boolean = false;
      
      protected var §^!d§:Number;
      
      public var § L§:Vector.<§;!M§>;
      
      public var §6!m§:int;
      
      public var §?F§:int;
      
      public var §]"1§:Number;
      
      public var §,!&§:Sprite;
      
      public var §!!g§:int = 0;
      
      public var §2!C§:Number = 0;
      
      public var §7!!§:Array;
      
      public var §%&§:Array;
      
      public var mSlingShotState:int;
      
      public var §6$§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §4"=§:Boolean = false;
      
      public var §'V§:Number;
      
      protected var §+!$§:Boolean = false;
      
      protected var §3^§:Sprite;
      
      protected var §]j§:§!"?§;
      
      protected var §5>§:§!"?§;
      
      protected var §&P§:Sprite;
      
      protected var §"!p§:Sprite;
      
      protected var §<!M§:Sprite;
      
      protected var §4!l§:§0!N§;
      
      protected var §&!1§:§0!N§;
      
      private var §?!S§:Number = 0;
      
      private var §?!N§:int = 0;
      
      protected var §-=§:Number = -0.7;
      
      protected var §@!?§:Number = 0;
      
      public function §2a§(param1:§9"3§, param2:§1"B§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§"!e§ = null;
         this.§ L§ = new Vector.<§;!M§>();
         super();
         this.§@O§ = param1;
         this.§3^§ = param3;
         if(param2)
         {
            this.setPosition(param2.§'!e§,param2.§!f§);
            this.§>$§();
            _loc4_ = 0;
            while(_loc4_ < param2.§#"=§)
            {
               _loc5_ = param2.§ !V§(_loc4_);
               this.addSlingshotObject(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§?!N§ = this.§@!F§();
            this.§6!m§ = 0;
            if(this.§ L§.length <= 0)
            {
               §+!k§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§,!k§ + " " + this.§!Q§);
               this.§0"$§(§=U§);
            }
            else
            {
               this.§0"$§(§4D§);
            }
         }
         else
         {
            §+!k§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§0"$§(§=U§);
         }
         this.§'V§ = 0;
         this.§?!O§();
         this.update(0,true);
         this.§1!7§();
         this.updateAnimations(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§3^§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§?!S§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§6!m§ < this.§ L§.length;
      }
      
      public function dispose() : void
      {
         while(this.§ L§.length > 0)
         {
            this.§;!V§(0);
         }
         this.§ L§ = null;
         if(this.§3^§)
         {
            this.§3^§.dispose();
            this.§3^§ = null;
         }
         this.§,!&§ = null;
         this.§7!!§ = null;
         this.§%&§ = null;
      }
      
      public function §=M§(param1:String, param2:Number, param3:Number, param4:int = -1) : §;!M§
      {
         var _loc5_:§;!M§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,param4)).§#!S§();
         this.§0"$§(§["7§);
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §;!M§
      {
         var _loc5_:§;!M§ = new §;!M§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§ L§.push(_loc5_);
         }
         else
         {
            this.§ L§.splice(param4,0,_loc5_);
         }
         this.§,!&§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §0"$§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §4D§)
         {
            this.§7"9§();
            this.§]"1§ = 1000;
         }
         else if(this.mSlingShotState == §`!S§)
         {
            this.§7"9§();
            this.§]"1§ = 0;
         }
         else if(this.mSlingShotState == §["7§)
         {
            this.§]"1§ = 10000;
            this.§4"=§ = false;
            this.§7"9§();
         }
         else if(this.mSlingShotState == §=U§)
         {
            this.§7"9§();
            this.§]"1§ = 2000;
         }
         else if(this.mSlingShotState == §0T§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§4"=§ = false;
               this.§7"9§();
               this.§ L§[this.§6!m§].setPosition(this.§>!q§ - this.§ L§[this.§6!m§].radius * Math.cos(this.§2!C§ / (180 / Math.PI)),this.§-D§ + this.§ L§[this.§6!m§].radius * Math.sin(this.§2!C§ / (180 / Math.PI)));
            }
            else
            {
               this.§7"9§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §8i§() : §9"3§
      {
         return this.§@O§;
      }
      
      public function §+!=§() : Boolean
      {
         return this.mSlingShotState == §=U§ && this.§]"1§ <= 0;
      }
      
      private function §>$§() : void
      {
         var _loc1_:§"A§ = this.getSlingshotAnimation();
         var _loc2_:§3!K§ = _loc1_.getFrame(0);
         var _loc3_:§3!K§ = _loc1_.getFrame(1);
         this.§4!l§ = new §0!N§(_loc2_.texture);
         this.§4!l§.scaleX = _loc2_.scale;
         this.§4!l§.scaleY = _loc2_.scale;
         this.§&!1§ = new §0!N§(_loc3_.texture);
         this.§&!1§.scaleX = _loc3_.scale;
         this.§&!1§.scaleY = _loc3_.scale;
         this.§]U§();
         this.§0!P§();
         this.§,!&§ = new Sprite();
         this.§3^§.addChild(this.§4!l§);
         this.§3^§.addChild(this.§&P§);
         this.§3^§.addChild(this.§,!&§);
         this.§3^§.addChild(this.§<!M§);
         this.§3^§.addChild(this.§"!p§);
         this.§3^§.addChild(this.§&!1§);
         this.§`!j§ = this.§!Q§ + 8.5;
      }
      
      protected function getSlingshotAnimation() : §"A§
      {
         return this.§@O§.animationManager.getAnimation("SLINGSHOT");
      }
      
      public function §]U§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§7!0§ = this.§,!k§;
         this.§^!U§ = this.§!Q§;
         this.§^!d§ = §4"F§.§`!9§;
         _loc1_ = null;
      }
      
      protected function §0!P§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§-3§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §-3§ = this.§@O§.textureManager.getTextureFromBitmapData(_loc2_);
         }
         this.§<!M§ = new Sprite();
         var _loc1_:§0!N§ = new §0!N§(§-3§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§<!M§.addChild(_loc1_);
         this.§&P§ = new Sprite();
         this.§]j§ = new §!"?§(2,2,§^!q§);
         this.§&P§.addChild(this.§]j§);
         this.§"!p§ = new Sprite();
         this.§5>§ = new §!"?§(2,2,§^!q§);
         this.§"!p§.addChild(this.§5>§);
      }
      
      public function updateAnimations(param1:Number) : void
      {
         var _loc2_:Number = this.§-D§ / §9"3§.§'"F§;
         var _loc3_:Number = this.§>!q§ / §9"3§.§'"F§;
         var _loc4_:Number = 3.5 + 8 * ((this.§^!d§ - this.§"!+§) / this.§^!d§);
         this.§<!M§.x = _loc3_;
         this.§<!M§.y = _loc2_;
         this.§<!M§.rotation = -this.§2!C§ / (180 / Math.PI);
         this.§4!l§.x = this.§,!k§ / §9"3§.§'"F§ - 3;
         this.§4!l§.y = this.§!Q§ / §9"3§.§'"F§ - 30;
         this.§&!1§.x = this.§,!k§ / §9"3§.§'"F§ - 30;
         this.§&!1§.y = this.§!Q§ / §9"3§.§'"F§ - 30;
         this.§"!p§.x = this.§,!k§ / §9"3§.§'"F§ - 17;
         this.§"!p§.y = this.§!Q§ / §9"3§.§'"F§ + 5;
         this.§"!p§.rotation = Math.atan2(_loc2_ - this.§"!p§.y,_loc3_ - this.§"!p§.x);
         this.§&P§.x = this.§,!k§ / §9"3§.§'"F§ + 22;
         this.§&P§.y = this.§!Q§ / §9"3§.§'"F§;
         this.§&P§.rotation = Math.atan2(_loc2_ - this.§&P§.y,_loc3_ - this.§&P§.x);
         this.§5>§.width = Math.sqrt(Math.pow(_loc3_ - this.§"!p§.x,2) + Math.pow(_loc2_ - this.§"!p§.y,2));
         this.§]j§.width = Math.sqrt(Math.pow(_loc3_ - this.§&P§.x,2) + Math.pow(_loc2_ - this.§&P§.y,2));
         this.§5>§.height = this.§]j§.height = _loc4_ * 2;
         this.§5>§.y = -this.§5>§.height / 2;
         this.§]j§.y = -this.§]j§.height / 2;
         this.§6$§ = false;
      }
      
      public function useMightyEagle() : void
      {
         while(this.§ L§.length > 0)
         {
            this.§;!V§(0,true);
         }
         this.§93§();
         this.addSlingshotObject("BIRD_SARDINE",this.§,!k§,this.§!Q§);
         this.§0"$§(§["7§);
      }
      
      protected function §93§() : void
      {
         §>!E§.§7N§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§0"$§(§0T§);
      }
      
      public function §7"9§() : void
      {
         this.setNewCoordinatesForRubber(this.§7!0§,this.§^!U§ + this.§^!d§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§>!q§ == param1 && this.§-D§ == param2)
         {
            return true;
         }
         this.§"!+§ = Math.sqrt((param2 - this.§^!U§) * (param2 - this.§^!U§) + (param1 - this.§7!0§) * (param1 - this.§7!0§));
         if(this.§"!+§ > this.§^!d§)
         {
            if(param3)
            {
               this.§"!+§ = Math.sqrt((this.§-D§ - this.§^!U§) * (this.§-D§ - this.§^!U§) + (this.§>!q§ - this.§7!0§) * (this.§>!q§ - this.§7!0§));
               return false;
            }
            param1 = this.§7!0§ + this.§^!d§ * (param1 - this.§7!0§) / this.§"!+§;
            param2 = this.§^!U§ + this.§^!d§ * (param2 - this.§^!U§) / this.§"!+§;
            this.§"!+§ = this.§^!d§;
         }
         this.§>!q§ = param1;
         this.§-D§ = param2;
         this.§2!C§ = Math.atan2(-(this.§-D§ - this.§^!U§),this.§>!q§ - this.§7!0§);
         this.§2!C§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§>!q§ = param1 + this.§-=§;
            this.§-D§ = param2 + this.§@!?§;
            this.§2!C§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§^!d§ / 2;
         if(this.§"!+§ > _loc7_ && this.§2!C§ > -90 - _loc4_ + _loc5_ && this.§2!C§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§7!0§ + _loc7_ * (param1 - this.§7!0§) / this.§"!+§;
            param2 = this.§^!U§ + _loc7_ * (param2 - this.§^!U§) / this.§"!+§;
            this.§"!+§ = _loc7_;
            this.§>!q§ = param1;
            this.§-D§ = param2;
         }
         else if(this.§"!+§ > _loc7_ && this.§2!C§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§2!C§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§^!d§ - _loc7_) * (Math.abs(this.§2!C§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§7!0§ + _loc8_ * (param1 - this.§7!0§) / this.§"!+§;
            param2 = this.§^!U§ + _loc8_ * (param2 - this.§^!U§) / this.§"!+§;
            this.§"!+§ = _loc8_;
            this.§>!q§ = param1;
            this.§-D§ = param2;
         }
         if(this.§"!+§ <= this.§^!d§ * 0.45)
         {
            this.§-!A§ = true;
         }
         else if(this.§-!A§ && this.§"!+§ >= this.§^!d§ * 0.8)
         {
            this.§4!y§();
            this.§-!A§ = false;
         }
         this.§6$§ = true;
         return true;
      }
      
      protected function §4!y§() : void
      {
         §>!E§.§7N§("SlingshotStreched");
      }
      
      public function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§,!k§,this.§!Q§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§,!k§;
         this.§,!k§ = param1;
         var _loc5_:Number = param2 - this.§!Q§;
         this.§!Q§ = param2;
         this.§`!j§ += _loc5_;
         this.§^!U§ += _loc5_;
         this.§-D§ += _loc5_;
         this.§7!0§ += _loc4_;
         this.§>!q§ += _loc4_;
         if(param3)
         {
            this.updateAnimations(0);
         }
         this.§6$§ = true;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§;!M§ = null;
         _loc2_ = this.§ L§[this.§6!m§];
         var _loc3_:Number = this.§"!+§ / this.§^!d§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§2a§.BIRD_LAUNCH_FORCE_GREEN) : Number(§2a§.BIRD_LAUNCH_FORCE);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §<!x§() : Point
      {
         var _loc1_:§;!M§ = null;
         if(this.§ L§.length > this.§6!m§)
         {
            _loc1_ = this.§ L§[this.§6!m§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §1!K§() : Point
      {
         return new Point(this.§7!0§,this.§^!U§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§;!M§ = null;
         this.updateGroundControl(param1);
         if(this.§6$§)
         {
            this.updateAnimations(param1);
         }
         this.§]"1§ -= param1;
         if(this.§]"1§ < 0)
         {
            this.§]"1§ = 0;
         }
         if(this.mSlingShotState != §=U§)
         {
            this.§1N§(param1,param2);
            _loc3_ = null;
            if(this.§ L§.length > 0)
            {
               _loc3_ = this.§ L§[this.§6!m§];
            }
            if(_loc3_)
            {
               _loc3_.§9O§(param1);
            }
            if(!_loc3_)
            {
               this.§0"$§(§=U§);
            }
            else if(this.mSlingShotState == §4D§)
            {
               if(this.§]"1§ <= 0)
               {
                  this.§0"$§(§`!S§);
                  _loc3_.§5"F§();
               }
            }
            else if(this.mSlingShotState == §`!S§)
            {
               if(_loc3_.§15§)
               {
                  this.§0"$§(§["7§);
               }
            }
            else if(this.mSlingShotState == §["7§)
            {
               _loc3_.setPosition(this.§>!q§ - _loc3_.radius * Math.cos(this.§2!C§ / (180 / Math.PI)),this.§-D§ + _loc3_.radius * Math.sin(this.§2!C§ / (180 / Math.PI)));
               if(this.§4"=§)
               {
                  this.§@$§(this.§"!+§ / this.§^!d§,this.§2!C§);
               }
            }
         }
      }
      
      public function §9E§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§;!M§ = null;
         if(this.§ L§.length > 0)
         {
            _loc5_ = this.§ L§[this.§6!m§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§@$§(param3,param4);
      }
      
      protected function §@$§(param1:Number, param2:Number) : void
      {
         var _loc3_:§;!M§ = null;
         this.§-=§ = §?N§;
         this.§@!?§ = §=4§;
         if(this.§ L§.length > 0)
         {
            _loc3_ = this.§ L§[this.§6!m§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§4"=§ = false;
         this.§?!S§ = new Date().time;
         this.§@O§.§^K§(_loc3_,param1,param2);
         this.§;!V§(this.§6!m§,_loc3_.§&!v§ > 0);
         this.playBirdShotSound();
         if(this.§6!m§ >= this.§ L§.length)
         {
            this.§0"$§(§=U§);
         }
         else
         {
            this.§0"$§(§4D§);
         }
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §>!E§.§7N§("BirdShot" + _loc1_);
      }
      
      public function §1N§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§6!m§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§ L§.length)
         {
            if(this.mSlingShotState == §0T§)
            {
               this.§ L§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§ L§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§;!M§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§7"9§();
         if(this.§?F§ >= this.§ L§.length)
         {
            return false;
         }
         _loc1_ = this.§ L§[this.§?F§];
         _loc2_ = §6G§.§1!P§(_loc1_.name).score;
         this.§@O§.addScore(_loc2_,§?E§.§<C§,true,_loc1_.x,_loc1_.y - 3,§'G§.§>!&§(_loc1_.name));
         _loc1_.§4!§(-1,true);
         ++this.§?F§;
         return true;
      }
      
      public function §@!F§() : int
      {
         var _loc2_:§;!M§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§ L§)
         {
            _loc1_ += §6G§.§1!P§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §=x§() : int
      {
         return this.§?!N§;
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§'V§ >= 0)
         {
            this.§'V§ -= param1;
            if(this.§'V§ <= 0)
            {
               _loc2_ = this.§@O§.objects.§!"F§(this.§7!0§,this.§`!j§);
               if(_loc2_ < 0)
               {
                  this.applyGravity(0.1);
                  this.§'V§ = 0;
               }
               else if(!this.§@O§.objects.§!!A§(_loc2_).§##§)
               {
                  this.§'V§ = -1;
               }
               else if(this.§@O§.objects.§!!A§(_loc2_).§>"?§())
               {
                  this.§'V§ = 2000;
               }
               else
               {
                  this.§'V§ = 500;
               }
            }
         }
      }
      
      public function §1!7§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§@O§.objects.§!"F§(this.§7!0§,this.§`!j§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.applyGravity(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§'V§ = -1;
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§3^§.x = -param1;
         this.§3^§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §["7§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §["7§ && this.§"!+§ > this.§^!d§ * §5!j§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§0"$§(§["7§);
         var _loc1_:§;!M§ = this.§ L§[this.§6!m§];
         _loc1_.§4!§(§;!y§.§5!V§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§;!M§ = this.§ L§[this.§6!m§];
         _loc1_.§4!§(§;!y§.§-!x§);
      }
      
      public function shoot() : void
      {
         this.§4"=§ = true;
      }
      
      protected function §;!V§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§;!M§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§ L§[param1])
         {
            _loc3_ = this.§ L§[param1];
            this.§,!&§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§3e§(this.§ L§[param1]);
            }
            _loc3_.dispose();
            this.§ L§[param1] = null;
         }
         this.§ L§.splice(param1,1);
      }
      
      public function §3e§(param1:§;!M§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §9"3§.§'"F§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §9"3§.§'"F§) + Math.random() * -_loc8_ * 2;
            this.§@O§.particles.§;!u§(§'G§.§`!O§,§^!f§.§>"F§,§'G§.§+";§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§'G§.§,">§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§@O§.particles.§;!u§(§'G§.§0!;§,§^!f§.§>"F§,§'G§.§+";§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §-!,§(param1:§;!M§) : void
      {
         this.§;!V§(this.§ L§.indexOf(param1));
      }
      
      public function §?!O§() : void
      {
         var _loc2_:§;!M§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§;!M§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§ L§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§,!k§ - this.§ L§[_loc1_].x) * (this.§,!k§ - this.§ L§[_loc1_].x) + (this.§!Q§ - this.§ L§[_loc1_].y) * (this.§!Q§ - this.§ L§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§,!k§ - this.§ L§[_loc1_ + 1].x) * (this.§,!k§ - this.§ L§[_loc1_ + 1].x) + (this.§!Q§ - this.§ L§[_loc1_ + 1].y) * (this.§!Q§ - this.§ L§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§ L§[_loc1_];
               this.§ L§.splice(_loc1_,1);
               this.§ L§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§,!&§.numChildren > 0)
         {
            this.§,!&§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§ L§.length)
         {
            _loc2_ = this.§ L§[_loc1_];
            this.§,!&§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §%7§(param1:Number, param2:Number) : §;!M§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§ L§.length)
         {
            if(this.§ L§[_loc3_])
            {
               if(this.§ L§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§ L§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §+"<§(param1:Number, param2:Number) : §2a§
      {
         if(param1 >= this.§,!k§ - this.§^!d§ / 4 && param1 <= this.§,!k§ + this.§^!d§ / 4 && param2 >= this.§!Q§ - this.§^!d§ / 4 && this.§!Q§ <= this.§`!j§)
         {
            return this;
         }
         return null;
      }
      
      public function §1!0§(param1:§1"B§) : void
      {
         var _loc3_:§;!M§ = null;
         var _loc4_:§"!e§ = null;
         param1.§'!e§ = this.§,!k§;
         param1.§!f§ = this.§!Q§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§ L§.length)
         {
            _loc3_ = this.§ L§[_loc2_];
            (_loc4_ = new §"!e§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§#I§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §,!<§() : void
      {
         while(this.§ L§.length > 0)
         {
            this.§-!,§(this.§ L§[0]);
         }
      }
      
      public function static(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§ L§.length)
         {
            if(this.§ L§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§ L§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§,!k§ > param1.x && this.§,!k§ < param2.x && this.§!Q§ > param1.y && this.§!Q§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function § "7§() : Array
      {
         return [this.§&!1§,this.§4!l§];
      }
      
      public function §1!+§(param1:String, param2:Number, param3:Number) : §;!M§
      {
         var _loc4_:§;!M§ = this.addSlingshotObject(param1,param2,param3);
         this.§?!O§();
         return _loc4_;
      }
      
      public function §@!^§() : Number
      {
         return this.§ L§.length;
      }
      
      public function §]#§() : Boolean
      {
         return this.§+!$§;
      }
   }
}
