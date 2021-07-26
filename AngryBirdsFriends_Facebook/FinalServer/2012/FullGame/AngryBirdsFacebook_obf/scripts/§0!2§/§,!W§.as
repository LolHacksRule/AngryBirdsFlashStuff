package §0!2§
{
   import §#S§.§-$§;
   import §#S§.§6!r§;
   import §9"=§.§3!p§;
   import §9"=§.§4! §;
   import §=%§.§7!g§;
   import §=%§.§>"-§;
   import §>s§.§+m§;
   import §?7§.Texture;
   import §@-§.§+!z§;
   import §[x§.§%3§;
   import §]!v§.§'!=§;
   import §]!v§.§+!`§;
   import §]!v§.Sprite;
   import §`!n§.§#!s§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §,!W§
   {
      
      public static const §`"<§:int = 0;
      
      public static const §@"1§:int = 1;
      
      public static const §0"8§:int = 2;
      
      public static const §9!§:int = 3;
      
      public static const §4!T§:int = 5;
      
      public static const §2"G§:int = 3151368;
      
      protected static const §%d§:int = 8;
      
      protected static const §6"D§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const BIRD_LAUNCH_FORCE_GREEN:Number = 52.5;
      
      protected static const §,?§:Number = -0.7;
      
      protected static const §+!@§:Number = 0;
      
      protected static var §""'§:Texture;
      
      public static const §!I§:Number = 0.4;
       
      
      public var §^!"§:§5"L§;
      
      public var §"""§:Number;
      
      public var §5!J§:Number;
      
      public var §-!E§:Number;
      
      protected var §8"§:Number;
      
      protected var §=9§:Number;
      
      protected var §^"G§:Number;
      
      protected var §&!%§:Number;
      
      public var § "<§:Number;
      
      public var §0;§:Boolean = false;
      
      protected var §[p§:Number;
      
      public var §1"&§:Vector.<§;M§>;
      
      public var §24§:int;
      
      public var §`!Q§:int;
      
      public var §=!t§:Number;
      
      public var §for§:Sprite;
      
      public var §2A§:int = 0;
      
      public var §!"@§:Number = 0;
      
      public var §2"2§:Array;
      
      public var §-J§:Array;
      
      public var mSlingShotState:int;
      
      public var §%"F§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §?K§:Boolean = false;
      
      public var §[!`§:Number;
      
      protected var §"@§:Boolean = false;
      
      protected var §`b§:Sprite;
      
      protected var §#"=§:§+!`§;
      
      protected var §<!U§:§+!`§;
      
      protected var §8"J§:Sprite;
      
      protected var §!!8§:Sprite;
      
      protected var §1"A§:Sprite;
      
      protected var §3d§:§'!=§;
      
      protected var §[C§:§'!=§;
      
      private var §1!8§:Number = 0;
      
      private var §`"1§:int = 0;
      
      protected var §!!+§:Number = -0.7;
      
      protected var §?!i§:Number = 0;
      
      public function §,!W§(param1:§5"L§, param2:§#!s§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§+!z§ = null;
         this.§1"&§ = new Vector.<§;M§>();
         super();
         this.§^!"§ = param1;
         this.§`b§ = param3;
         if(param2)
         {
            this.setPosition(param2.§"!`§,param2.§"I§);
            this.§#"+§();
            _loc4_ = 0;
            while(_loc4_ < param2.§9x§)
            {
               _loc5_ = param2.§'!j§(_loc4_);
               this.addSlingshotObject(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§`"1§ = this.§3!e§();
            this.§24§ = 0;
            if(this.§1"&§.length <= 0)
            {
               §%3§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§"""§ + " " + this.§5!J§);
               this.§"!$§(§9!§);
            }
            else
            {
               this.§"!$§(§`"<§);
            }
         }
         else
         {
            §%3§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§"!$§(§9!§);
         }
         this.§[!`§ = 0;
         this.§>"D§();
         this.update(0,true);
         this.§^!Z§();
         this.updateAnimations(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§`b§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§1!8§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§24§ < this.§1"&§.length;
      }
      
      public function dispose() : void
      {
         while(this.§1"&§.length > 0)
         {
            this.§6!>§(0);
         }
         this.§1"&§ = null;
         if(this.§`b§)
         {
            this.§`b§.dispose();
            this.§`b§ = null;
         }
         this.§for§ = null;
         this.§2"2§ = null;
         this.§-J§ = null;
      }
      
      public function §3!W§(param1:String, param2:Number, param3:Number, param4:int = -1) : §;M§
      {
         var _loc5_:§;M§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,param4)).§5"!§();
         this.§"!$§(§0"8§);
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §;M§
      {
         var _loc5_:§;M§ = new §;M§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§1"&§.push(_loc5_);
         }
         else
         {
            this.§1"&§.splice(param4,0,_loc5_);
         }
         this.§for§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §"!$§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §`"<§)
         {
            this.§&!Z§();
            this.§=!t§ = 1000;
         }
         else if(this.mSlingShotState == §@"1§)
         {
            this.§&!Z§();
            this.§=!t§ = 0;
         }
         else if(this.mSlingShotState == §0"8§)
         {
            this.§=!t§ = 10000;
            this.§?K§ = false;
            this.§&!Z§();
         }
         else if(this.mSlingShotState == §9!§)
         {
            this.§&!Z§();
            this.§=!t§ = 2000;
         }
         else if(this.mSlingShotState == §4!T§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§?K§ = false;
               this.§&!Z§();
               this.§1"&§[this.§24§].setPosition(this.§^"G§ - this.§1"&§[this.§24§].radius * Math.cos(this.§!"@§ / (180 / Math.PI)),this.§&!%§ + this.§1"&§[this.§24§].radius * Math.sin(this.§!"@§ / (180 / Math.PI)));
            }
            else
            {
               this.§&!Z§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §]!M§() : §5"L§
      {
         return this.§^!"§;
      }
      
      public function §`!g§() : Boolean
      {
         return this.mSlingShotState == §9!§ && this.§=!t§ <= 0;
      }
      
      private function §#"+§() : void
      {
         var _loc1_:§-$§ = this.getSlingshotAnimation();
         var _loc2_:§6!r§ = _loc1_.getFrame(0);
         var _loc3_:§6!r§ = _loc1_.getFrame(1);
         this.§3d§ = new §'!=§(_loc2_.texture);
         this.§3d§.scaleX = _loc2_.scale;
         this.§3d§.scaleY = _loc2_.scale;
         this.§[C§ = new §'!=§(_loc3_.texture);
         this.§[C§.scaleX = _loc3_.scale;
         this.§[C§.scaleY = _loc3_.scale;
         this.§+!4§();
         this.§6g§();
         this.§for§ = new Sprite();
         this.§`b§.addChild(this.§3d§);
         this.§`b§.addChild(this.§8"J§);
         this.§`b§.addChild(this.§for§);
         this.§`b§.addChild(this.§1"A§);
         this.§`b§.addChild(this.§!!8§);
         this.§`b§.addChild(this.§[C§);
         this.§-!E§ = this.§5!J§ + 8.5;
      }
      
      protected function getSlingshotAnimation() : §-$§
      {
         return this.§^!"§.animationManager.getAnimation("SLINGSHOT");
      }
      
      public function §+!4§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§8"§ = this.§"""§;
         this.§=9§ = this.§5!J§;
         this.§[p§ = §3`§.§0M§;
         _loc1_ = null;
      }
      
      protected function §6g§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§""'§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §""'§ = this.§^!"§.textureManager.getTextureFromBitmapData(_loc2_);
         }
         this.§1"A§ = new Sprite();
         var _loc1_:§'!=§ = new §'!=§(§""'§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§1"A§.addChild(_loc1_);
         this.§8"J§ = new Sprite();
         this.§#"=§ = new §+!`§(2,2,§2"G§);
         this.§8"J§.addChild(this.§#"=§);
         this.§!!8§ = new Sprite();
         this.§<!U§ = new §+!`§(2,2,§2"G§);
         this.§!!8§.addChild(this.§<!U§);
      }
      
      public function updateAnimations(param1:Number) : void
      {
         var _loc2_:Number = this.§&!%§ / §5"L§.§@>§;
         var _loc3_:Number = this.§^"G§ / §5"L§.§@>§;
         var _loc4_:Number = 3.5 + 8 * ((this.§[p§ - this.§ "<§) / this.§[p§);
         this.§1"A§.x = _loc3_;
         this.§1"A§.y = _loc2_;
         this.§1"A§.rotation = -this.§!"@§ / (180 / Math.PI);
         this.§3d§.x = this.§"""§ / §5"L§.§@>§ - 3;
         this.§3d§.y = this.§5!J§ / §5"L§.§@>§ - 30;
         this.§[C§.x = this.§"""§ / §5"L§.§@>§ - 30;
         this.§[C§.y = this.§5!J§ / §5"L§.§@>§ - 30;
         this.§!!8§.x = this.§"""§ / §5"L§.§@>§ - 17;
         this.§!!8§.y = this.§5!J§ / §5"L§.§@>§ + 5;
         this.§!!8§.rotation = Math.atan2(_loc2_ - this.§!!8§.y,_loc3_ - this.§!!8§.x);
         this.§8"J§.x = this.§"""§ / §5"L§.§@>§ + 22;
         this.§8"J§.y = this.§5!J§ / §5"L§.§@>§;
         this.§8"J§.rotation = Math.atan2(_loc2_ - this.§8"J§.y,_loc3_ - this.§8"J§.x);
         this.§<!U§.width = Math.sqrt(Math.pow(_loc3_ - this.§!!8§.x,2) + Math.pow(_loc2_ - this.§!!8§.y,2));
         this.§#"=§.width = Math.sqrt(Math.pow(_loc3_ - this.§8"J§.x,2) + Math.pow(_loc2_ - this.§8"J§.y,2));
         this.§<!U§.height = this.§#"=§.height = _loc4_ * 2;
         this.§<!U§.y = -this.§<!U§.height / 2;
         this.§#"=§.y = -this.§#"=§.height / 2;
         this.§%"F§ = false;
      }
      
      public function useMightyEagle() : void
      {
         while(this.§1"&§.length > 0)
         {
            this.§6!>§(0,true);
         }
         this.§9!o§();
         this.addSlingshotObject("BIRD_SARDINE",this.§"""§,this.§5!J§);
         this.§"!$§(§0"8§);
      }
      
      protected function §9!o§() : void
      {
         §+m§.§]!N§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§"!$§(§4!T§);
      }
      
      public function §&!Z§() : void
      {
         this.setNewCoordinatesForRubber(this.§8"§,this.§=9§ + this.§[p§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§^"G§ == param1 && this.§&!%§ == param2)
         {
            return true;
         }
         this.§ "<§ = Math.sqrt((param2 - this.§=9§) * (param2 - this.§=9§) + (param1 - this.§8"§) * (param1 - this.§8"§));
         if(this.§ "<§ > this.§[p§)
         {
            if(param3)
            {
               this.§ "<§ = Math.sqrt((this.§&!%§ - this.§=9§) * (this.§&!%§ - this.§=9§) + (this.§^"G§ - this.§8"§) * (this.§^"G§ - this.§8"§));
               return false;
            }
            param1 = this.§8"§ + this.§[p§ * (param1 - this.§8"§) / this.§ "<§;
            param2 = this.§=9§ + this.§[p§ * (param2 - this.§=9§) / this.§ "<§;
            this.§ "<§ = this.§[p§;
         }
         this.§^"G§ = param1;
         this.§&!%§ = param2;
         this.§!"@§ = Math.atan2(-(this.§&!%§ - this.§=9§),this.§^"G§ - this.§8"§);
         this.§!"@§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§^"G§ = param1 + this.§!!+§;
            this.§&!%§ = param2 + this.§?!i§;
            this.§!"@§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§[p§ / 2;
         if(this.§ "<§ > _loc7_ && this.§!"@§ > -90 - _loc4_ + _loc5_ && this.§!"@§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§8"§ + _loc7_ * (param1 - this.§8"§) / this.§ "<§;
            param2 = this.§=9§ + _loc7_ * (param2 - this.§=9§) / this.§ "<§;
            this.§ "<§ = _loc7_;
            this.§^"G§ = param1;
            this.§&!%§ = param2;
         }
         else if(this.§ "<§ > _loc7_ && this.§!"@§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§!"@§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§[p§ - _loc7_) * (Math.abs(this.§!"@§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§8"§ + _loc8_ * (param1 - this.§8"§) / this.§ "<§;
            param2 = this.§=9§ + _loc8_ * (param2 - this.§=9§) / this.§ "<§;
            this.§ "<§ = _loc8_;
            this.§^"G§ = param1;
            this.§&!%§ = param2;
         }
         if(this.§ "<§ <= this.§[p§ * 0.45)
         {
            this.§0;§ = true;
         }
         else if(this.§0;§ && this.§ "<§ >= this.§[p§ * 0.8)
         {
            this.§0!9§();
            this.§0;§ = false;
         }
         this.§%"F§ = true;
         return true;
      }
      
      protected function §0!9§() : void
      {
         §+m§.§]!N§("SlingshotStreched");
      }
      
      public function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§"""§,this.§5!J§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§"""§;
         this.§"""§ = param1;
         var _loc5_:Number = param2 - this.§5!J§;
         this.§5!J§ = param2;
         this.§-!E§ += _loc5_;
         this.§=9§ += _loc5_;
         this.§&!%§ += _loc5_;
         this.§8"§ += _loc4_;
         this.§^"G§ += _loc4_;
         if(param3)
         {
            this.updateAnimations(0);
         }
         this.§%"F§ = true;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§;M§ = null;
         _loc2_ = this.§1"&§[this.§24§];
         var _loc3_:Number = this.§ "<§ / this.§[p§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§,!W§.BIRD_LAUNCH_FORCE_GREEN) : Number(§,!W§.BIRD_LAUNCH_FORCE);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §!%§() : Point
      {
         var _loc1_:§;M§ = null;
         if(this.§1"&§.length > this.§24§)
         {
            _loc1_ = this.§1"&§[this.§24§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §^"<§() : Point
      {
         return new Point(this.§8"§,this.§=9§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§;M§ = null;
         this.updateGroundControl(param1);
         if(this.§%"F§)
         {
            this.updateAnimations(param1);
         }
         this.§=!t§ -= param1;
         if(this.§=!t§ < 0)
         {
            this.§=!t§ = 0;
         }
         if(this.mSlingShotState != §9!§)
         {
            this.§,X§(param1,param2);
            _loc3_ = null;
            if(this.§1"&§.length > 0)
            {
               _loc3_ = this.§1"&§[this.§24§];
            }
            if(_loc3_)
            {
               _loc3_.§7K§(param1);
            }
            if(!_loc3_)
            {
               this.§"!$§(§9!§);
            }
            else if(this.mSlingShotState == §`"<§)
            {
               if(this.§=!t§ <= 0)
               {
                  this.§"!$§(§@"1§);
                  _loc3_.§3C§();
               }
            }
            else if(this.mSlingShotState == §@"1§)
            {
               if(_loc3_.§;!,§)
               {
                  this.§"!$§(§0"8§);
               }
            }
            else if(this.mSlingShotState == §0"8§)
            {
               if(!_loc3_.§7Q§())
               {
                  _loc3_.setPosition(this.§^"G§ - _loc3_.radius * Math.cos(this.§!"@§ / (180 / Math.PI)),this.§&!%§ + _loc3_.radius * Math.sin(this.§!"@§ / (180 / Math.PI)));
               }
               if(this.§?K§)
               {
                  this.§ N§(this.§ "<§ / this.§[p§,this.§!"@§);
               }
            }
         }
      }
      
      public function §`"K§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§;M§ = null;
         if(this.§1"&§.length > 0)
         {
            _loc5_ = this.§1"&§[this.§24§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§ N§(param3,param4);
      }
      
      protected function § N§(param1:Number, param2:Number) : void
      {
         var _loc3_:§;M§ = null;
         this.§!!+§ = §,?§;
         this.§?!i§ = §+!@§;
         if(this.§1"&§.length > 0)
         {
            _loc3_ = this.§1"&§[this.§24§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§?K§ = false;
         this.§1!8§ = new Date().time;
         this.§^!"§.§6"7§(_loc3_,param1,param2);
         this.§6!>§(this.§24§,_loc3_.§`!w§ > 0);
         this.playBirdShotSound();
         if(this.§24§ >= this.§1"&§.length)
         {
            this.§"!$§(§9!§);
         }
         else
         {
            this.§"!$§(§`"<§);
         }
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §+m§.§]!N§("BirdShot" + _loc1_);
      }
      
      public function §,X§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§24§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§1"&§.length)
         {
            if(this.mSlingShotState == §4!T§)
            {
               this.§1"&§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§1"&§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§;M§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§&!Z§();
         if(this.§`!Q§ >= this.§1"&§.length)
         {
            return false;
         }
         _loc1_ = this.§1"&§[this.§`!Q§];
         _loc2_ = §>"-§.§0@§(_loc1_.name).score;
         this.§^!"§.addScore(_loc2_,§-6§.§3!S§,true,_loc1_.x,_loc1_.y - 3,§4! §.§^!T§(_loc1_.name));
         _loc1_.§#!C§(-1,true);
         ++this.§`!Q§;
         return true;
      }
      
      public function §3!e§() : int
      {
         var _loc2_:§;M§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§1"&§)
         {
            _loc1_ += §>"-§.§0@§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §%"4§() : int
      {
         return this.§`"1§;
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§[!`§ >= 0)
         {
            this.§[!`§ -= param1;
            if(this.§[!`§ <= 0)
            {
               _loc2_ = this.§^!"§.objects.§6!1§(this.§8"§,this.§-!E§);
               if(_loc2_ < 0)
               {
                  this.applyGravity(0.1);
                  this.§[!`§ = 0;
               }
               else if(!this.§^!"§.objects.§ §(_loc2_).§=!D§)
               {
                  this.§[!`§ = -1;
               }
               else if(this.§^!"§.objects.§ §(_loc2_).§!!b§())
               {
                  this.§[!`§ = 2000;
               }
               else
               {
                  this.§[!`§ = 500;
               }
            }
         }
      }
      
      public function §^!Z§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§^!"§.objects.§6!1§(this.§8"§,this.§-!E§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.applyGravity(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§[!`§ = -1;
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§`b§.x = -param1;
         this.§`b§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §0"8§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §0"8§ && this.§ "<§ > this.§[p§ * §!I§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§"!$§(§0"8§);
         var _loc1_:§;M§ = this.§1"&§[this.§24§];
         _loc1_.§#!C§(§7!g§.§?M§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§;M§ = this.§1"&§[this.§24§];
         _loc1_.§#!C§(§7!g§.§4V§);
      }
      
      public function shoot() : void
      {
         this.§?K§ = true;
      }
      
      protected function §6!>§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§;M§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§1"&§[param1])
         {
            _loc3_ = this.§1"&§[param1];
            this.§for§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§5"C§(this.§1"&§[param1]);
            }
            _loc3_.dispose();
            this.§1"&§[param1] = null;
         }
         this.§1"&§.splice(param1,1);
      }
      
      public function §5"C§(param1:§;M§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §5"L§.§@>§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §5"L§.§@>§) + Math.random() * -_loc8_ * 2;
            this.§^!"§.particles.§`"6§(§4! §.§<2§,§3!p§.PARTICLE_GROUP_GAME_EFFECTS,§4! §.PARTICLE_TYPE_KINETIC_PARTICLE,param1.x + _loc7_,param1.y + _loc8_,1500,"",§4! §.getParticleMaterialFromEngineMaterial(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§^!"§.particles.§`"6§(§4! §.§#"#§,§3!p§.PARTICLE_GROUP_GAME_EFFECTS,§4! §.PARTICLE_TYPE_KINETIC_PARTICLE,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function § !"§(param1:§;M§) : void
      {
         this.§6!>§(this.§1"&§.indexOf(param1));
      }
      
      public function §>"D§() : void
      {
         var _loc1_:§;M§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§;M§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§1"&§.length - 1)
         {
            _loc1_ = this.§1"&§[_loc2_];
            if(!(_loc1_.§;!,§ && _loc2_ == 0))
            {
               _loc3_ = Math.sqrt((this.§"""§ - this.§1"&§[_loc2_].x) * (this.§"""§ - this.§1"&§[_loc2_].x) + (this.§5!J§ - this.§1"&§[_loc2_].y) * (this.§5!J§ - this.§1"&§[_loc2_].y));
               if((_loc4_ = Math.sqrt((this.§"""§ - this.§1"&§[_loc2_ + 1].x) * (this.§"""§ - this.§1"&§[_loc2_ + 1].x) + (this.§5!J§ - this.§1"&§[_loc2_ + 1].y) * (this.§5!J§ - this.§1"&§[_loc2_ + 1].y))) < _loc3_)
               {
                  _loc5_ = this.§1"&§[_loc2_];
                  this.§1"&§.splice(_loc2_,1);
                  this.§1"&§.splice(_loc2_ + 1,0,_loc5_);
                  _loc2_ = Math.max(-1,_loc2_ - 2);
               }
            }
            _loc2_++;
         }
         while(this.§for§.numChildren > 0)
         {
            this.§for§.removeChildAt(0);
         }
         _loc2_ = 0;
         while(_loc2_ < this.§1"&§.length)
         {
            _loc1_ = this.§1"&§[_loc2_];
            this.§for§.addChildAt(_loc1_.sprite,0);
            _loc2_++;
         }
      }
      
      public function §6""§(param1:Number, param2:Number) : §;M§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§1"&§.length)
         {
            if(this.§1"&§[_loc3_])
            {
               if(this.§1"&§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§1"&§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §"!_§(param1:Number, param2:Number) : §,!W§
      {
         if(param1 >= this.§"""§ - this.§[p§ / 4 && param1 <= this.§"""§ + this.§[p§ / 4 && param2 >= this.§5!J§ - this.§[p§ / 4 && this.§5!J§ <= this.§-!E§)
         {
            return this;
         }
         return null;
      }
      
      public function §,[§(param1:§#!s§) : void
      {
         var _loc3_:§;M§ = null;
         var _loc4_:§+!z§ = null;
         param1.§"!`§ = this.§"""§;
         param1.§"I§ = this.§5!J§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§1"&§.length)
         {
            _loc3_ = this.§1"&§[_loc2_];
            (_loc4_ = new §+!z§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§7";§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §0"C§() : void
      {
         while(this.§1"&§.length > 0)
         {
            this.§ !"§(this.§1"&§[0]);
         }
      }
      
      public function §"!9§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§1"&§.length)
         {
            if(this.§1"&§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§1"&§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§"""§ > param1.x && this.§"""§ < param2.x && this.§5!J§ > param1.y && this.§5!J§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function § !n§() : Array
      {
         return [this.§[C§,this.§3d§];
      }
      
      public function §2#§(param1:String, param2:Number, param3:Number) : §;M§
      {
         var _loc4_:§;M§ = this.addSlingshotObject(param1,param2,param3);
         this.§>"D§();
         return _loc4_;
      }
      
      public function §`^§() : Number
      {
         return this.§1"&§.length;
      }
      
      public function §,,§() : Boolean
      {
         return this.§"@§;
      }
   }
}
