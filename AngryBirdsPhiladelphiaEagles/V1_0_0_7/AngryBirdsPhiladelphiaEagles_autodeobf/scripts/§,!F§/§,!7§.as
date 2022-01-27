package §,!F§
{
   import §!6§.§3!5§;
   import §"`§.Texture;
   import §%y§.§0?§;
   import §'d§.§,_§;
   import §'d§.§>N§;
   import §+f§.§0Q§;
   import §+f§.§=3§;
   import §3!%§.§#!K§;
   import §4G§.§5T§;
   import §4G§.Sprite;
   import §4G§.§`l§;
   import §<!4§.§25§;
   import §[!1§.§ J§;
   import §[!1§.§,!'§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §,!7§
   {
      
      public static const §]!%§:int = 0;
      
      public static const § k§:int = 1;
      
      public static const §6g§:int = 2;
      
      public static const §^!G§:int = 3;
      
      public static const §>H§:int = 5;
      
      public static const §7<§:int = 3151368;
      
      protected static const §[!§:int = 8;
      
      protected static const §^E§:int = 0;
      
      public static const §"$§:Number = 46.25;
      
      public static const § !!§:Number = 52.5;
      
      protected static const §>[§:Number = -0.7;
      
      protected static const §@I§:Number = 0;
      
      protected static var §-l§:Texture;
      
      public static const §@O§:Number = 0.4;
       
      
      public var §&§:§#§;
      
      public var §#+§:Number;
      
      public var §+9§:Number;
      
      public var §2J§:Number;
      
      protected var §6!>§:Number;
      
      protected var §6Y§:Number;
      
      protected var §6!&§:Number;
      
      protected var §24§:Number;
      
      public var §`e§:Number;
      
      public var §%=§:Boolean = false;
      
      protected var §=!3§:Number;
      
      public var §6!$§:Vector.<§]!6§>;
      
      public var §,S§:int;
      
      public var §1U§:int;
      
      public var §55§:Number;
      
      public var §^C§:Sprite;
      
      public var § R§:int = 0;
      
      public var §';§:Number = 0;
      
      public var §%g§:Array;
      
      public var §+!6§:Array;
      
      public var mSlingShotState:int;
      
      public var §19§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §+!%§:Boolean = false;
      
      public var §?g§:Number;
      
      protected var §!!+§:Sprite;
      
      protected var §+!K§:§5T§;
      
      protected var §@!!§:§5T§;
      
      protected var §;!=§:Sprite;
      
      protected var §"!Q§:Sprite;
      
      protected var §`!0§:Sprite;
      
      protected var §#]§:§`l§;
      
      protected var §&!&§:§`l§;
      
      private var §5!I§:Number = 0;
      
      private var §[[§:int = 0;
      
      protected var §4O§:Number = -0.7;
      
      protected var §`L§:Number = 0;
      
      public function §,!7§(param1:§#§, param2:§#!K§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§0?§ = null;
         this.§6!$§ = new Vector.<§]!6§>();
         super();
         this.§&§ = param1;
         this.§!!+§ = param3;
         if(param2)
         {
            this.setPosition(param2.§3'§,param2.§&s§);
            this.§[§();
            _loc4_ = 0;
            while(_loc4_ < param2.§'!L§)
            {
               _loc5_ = param2.§7!L§(_loc4_);
               this.§]!O§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§[[§ = this.§%!P§();
            this.§,S§ = 0;
            if(this.§6!$§.length <= 0)
            {
               §3!5§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§#+§ + " " + this.§+9§);
               this.§4_§(§^!G§);
            }
            else
            {
               this.§4_§(§]!%§);
            }
         }
         else
         {
            §3!5§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§4_§(§^!G§);
         }
         this.§?g§ = 0;
         this.§?G§();
         this.update(0,true);
         this.§@!E§();
         this.§2?§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§!!+§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§5!I§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§,S§ < this.§6!$§.length;
      }
      
      public function dispose() : void
      {
         while(this.§6!$§.length > 0)
         {
            this.§&z§(0);
         }
         this.§6!$§ = null;
         if(this.§!!+§)
         {
            this.§!!+§.dispose();
            this.§!!+§ = null;
         }
         this.§^C§ = null;
         this.§%g§ = null;
         this.§+!6§ = null;
      }
      
      public function §<B§(param1:String, param2:Number, param3:Number, param4:int = -1) : §]!6§
      {
         var _loc5_:§]!6§;
         (_loc5_ = this.§]!O§(param1,param2,param3,param4)).§@n§();
         return _loc5_;
      }
      
      protected function §]!O§(param1:String, param2:Number, param3:Number, param4:int = -1) : §]!6§
      {
         var _loc5_:§]!6§ = new §]!6§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§6!$§.push(_loc5_);
         }
         else
         {
            this.§6!$§.splice(param4,0,_loc5_);
         }
         this.§^C§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §4_§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §]!%§)
         {
            this.§9!<§();
            this.§55§ = 1000;
         }
         else if(this.mSlingShotState == § k§)
         {
            this.§9!<§();
            this.§55§ = 0;
         }
         else if(this.mSlingShotState == §6g§)
         {
            this.§55§ = 10000;
            this.§+!%§ = false;
            this.§9!<§();
         }
         else if(this.mSlingShotState == §^!G§)
         {
            this.§9!<§();
            this.§55§ = 2000;
         }
         else if(this.mSlingShotState == §>H§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§+!%§ = false;
               this.§9!<§();
               this.§6!$§[this.§,S§].setPosition(this.§6!&§ - this.§6!$§[this.§,S§].radius * Math.cos(this.§';§ / (180 / Math.PI)),this.§24§ + this.§6!$§[this.§,S§].radius * Math.sin(this.§';§ / (180 / Math.PI)));
            }
            else
            {
               this.§9!<§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §]!N§() : §#§
      {
         return this.§&§;
      }
      
      public function §7B§() : Boolean
      {
         return this.mSlingShotState == §^!G§ && this.§55§ <= 0;
      }
      
      private function §[§() : void
      {
         var _loc1_:§0Q§ = this.§-p§();
         var _loc2_:§=3§ = _loc1_.getFrame(0);
         var _loc3_:§=3§ = _loc1_.getFrame(1);
         this.§#]§ = new §`l§(_loc2_.texture);
         this.§#]§.scaleX = _loc2_.scale;
         this.§#]§.scaleY = _loc2_.scale;
         this.§&!&§ = new §`l§(_loc3_.texture);
         this.§&!&§.scaleX = _loc3_.scale;
         this.§&!&§.scaleY = _loc3_.scale;
         this.§ [§();
         this.§1T§();
         this.§^C§ = new Sprite();
         this.§!!+§.addChild(this.§#]§);
         this.§!!+§.addChild(this.§;!=§);
         this.§!!+§.addChild(this.§^C§);
         this.§!!+§.addChild(this.§`!0§);
         this.§!!+§.addChild(this.§"!Q§);
         this.§!!+§.addChild(this.§&!&§);
         this.§2J§ = this.§+9§ + 8.5;
      }
      
      protected function §-p§() : §0Q§
      {
         return this.§&§.§94§.getAnimation("SLINGSHOT");
      }
      
      public function § [§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§6!>§ = this.§#+§;
         this.§6Y§ = this.§+9§;
         this.§=!3§ = Tuner.§?!7§;
         _loc1_ = null;
      }
      
      protected function §1T§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§-l§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §-l§ = this.§&§.textureManager.§5l§(_loc2_);
         }
         this.§`!0§ = new Sprite();
         var _loc1_:§`l§ = new §`l§(§-l§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§`!0§.addChild(_loc1_);
         this.§;!=§ = new Sprite();
         this.§+!K§ = new §5T§(2,2,§7<§);
         this.§;!=§.addChild(this.§+!K§);
         this.§"!Q§ = new Sprite();
         this.§@!!§ = new §5T§(2,2,§7<§);
         this.§"!Q§.addChild(this.§@!!§);
      }
      
      public function §2?§(param1:Number) : void
      {
         var _loc2_:Number = this.§24§ / §#§.§67§;
         var _loc3_:Number = this.§6!&§ / §#§.§67§;
         var _loc4_:Number = 3.5 + 8 * ((this.§=!3§ - this.§`e§) / this.§=!3§);
         this.§`!0§.x = _loc3_;
         this.§`!0§.y = _loc2_;
         this.§`!0§.rotation = -this.§';§ / (180 / Math.PI);
         this.§#]§.x = this.§#+§ / §#§.§67§ - 3;
         this.§#]§.y = this.§+9§ / §#§.§67§ - 30;
         this.§&!&§.x = this.§#+§ / §#§.§67§ - 30;
         this.§&!&§.y = this.§+9§ / §#§.§67§ - 30;
         this.§"!Q§.x = this.§#+§ / §#§.§67§ - 17;
         this.§"!Q§.y = this.§+9§ / §#§.§67§ + 5;
         this.§"!Q§.rotation = Math.atan2(_loc2_ - this.§"!Q§.y,_loc3_ - this.§"!Q§.x);
         this.§;!=§.x = this.§#+§ / §#§.§67§ + 22;
         this.§;!=§.y = this.§+9§ / §#§.§67§;
         this.§;!=§.rotation = Math.atan2(_loc2_ - this.§;!=§.y,_loc3_ - this.§;!=§.x);
         this.§@!!§.width = Math.sqrt(Math.pow(_loc3_ - this.§"!Q§.x,2) + Math.pow(_loc2_ - this.§"!Q§.y,2));
         this.§+!K§.width = Math.sqrt(Math.pow(_loc3_ - this.§;!=§.x,2) + Math.pow(_loc2_ - this.§;!=§.y,2));
         this.§@!!§.height = this.§+!K§.height = _loc4_ * 2;
         this.§@!!§.y = -this.§@!!§.height / 2;
         this.§+!K§.y = -this.§+!K§.height / 2;
         this.§19§ = false;
      }
      
      public function §0!9§() : void
      {
         while(this.§6!$§.length > 0)
         {
            this.§&z§(0,true);
         }
         this.§5!4§();
         this.§]!O§("BIRD_SARDINE",this.§#+§,this.§+9§);
         this.§4_§(§6g§);
      }
      
      protected function §5!4§() : void
      {
         §25§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§4_§(§>H§);
      }
      
      public function §9!<§() : void
      {
         this.setNewCoordinatesForRubber(this.§6!>§,this.§6Y§ + this.§=!3§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§6!&§ == param1 && this.§24§ == param2)
         {
            return true;
         }
         this.§`e§ = Math.sqrt((param2 - this.§6Y§) * (param2 - this.§6Y§) + (param1 - this.§6!>§) * (param1 - this.§6!>§));
         if(this.§`e§ > this.§=!3§)
         {
            if(param3)
            {
               this.§`e§ = Math.sqrt((this.§24§ - this.§6Y§) * (this.§24§ - this.§6Y§) + (this.§6!&§ - this.§6!>§) * (this.§6!&§ - this.§6!>§));
               return false;
            }
            param1 = this.§6!>§ + this.§=!3§ * (param1 - this.§6!>§) / this.§`e§;
            param2 = this.§6Y§ + this.§=!3§ * (param2 - this.§6Y§) / this.§`e§;
            this.§`e§ = this.§=!3§;
         }
         this.§6!&§ = param1;
         this.§24§ = param2;
         this.§';§ = Math.atan2(-(this.§24§ - this.§6Y§),this.§6!&§ - this.§6!>§);
         this.§';§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§6!&§ = param1 + this.§4O§;
            this.§24§ = param2 + this.§`L§;
            this.§';§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§=!3§ / 2;
         if(this.§`e§ > _loc7_ && this.§';§ > -90 - _loc4_ + _loc5_ && this.§';§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§6!>§ + _loc7_ * (param1 - this.§6!>§) / this.§`e§;
            param2 = this.§6Y§ + _loc7_ * (param2 - this.§6Y§) / this.§`e§;
            this.§`e§ = _loc7_;
            this.§6!&§ = param1;
            this.§24§ = param2;
         }
         else if(this.§`e§ > _loc7_ && this.§';§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§';§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§=!3§ - _loc7_) * (Math.abs(this.§';§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§6!>§ + _loc8_ * (param1 - this.§6!>§) / this.§`e§;
            param2 = this.§6Y§ + _loc8_ * (param2 - this.§6Y§) / this.§`e§;
            this.§`e§ = _loc8_;
            this.§6!&§ = param1;
            this.§24§ = param2;
         }
         if(this.§`e§ <= this.§=!3§ * 0.45)
         {
            this.§%=§ = true;
         }
         else if(this.§%=§ && this.§`e§ >= this.§=!3§ * 0.8)
         {
            this.§2r§();
            this.§%=§ = false;
         }
         this.§19§ = true;
         return true;
      }
      
      protected function §2r§() : void
      {
         §25§.playSound("SlingshotStreched");
      }
      
      public function §;#§(param1:Number) : void
      {
         this.setPosition(this.§#+§,this.§+9§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§#+§;
         this.§#+§ = param1;
         var _loc5_:Number = param2 - this.§+9§;
         this.§+9§ = param2;
         this.§2J§ += _loc5_;
         this.§6Y§ += _loc5_;
         this.§24§ += _loc5_;
         this.§6!>§ += _loc4_;
         this.§6!&§ += _loc4_;
         if(param3)
         {
            this.§2?§(0);
         }
         this.§19§ = true;
      }
      
      public function § Z§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§]!6§ = null;
         _loc2_ = this.§6!$§[this.§,S§];
         var _loc3_:Number = this.§`e§ / this.§=!3§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§,!7§.§ !!§) : Number(§,!7§.§"$§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §82§() : Point
      {
         var _loc1_:§]!6§ = null;
         if(this.§6!$§.length > this.§,S§)
         {
            _loc1_ = this.§6!$§[this.§,S§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §]!>§() : Point
      {
         return new Point(this.§6!>§,this.§6Y§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§]!6§ = null;
         this.§=r§(param1);
         if(this.§19§)
         {
            this.§2?§(param1);
         }
         this.§55§ -= param1;
         if(this.§55§ < 0)
         {
            this.§55§ = 0;
         }
         if(this.mSlingShotState != §^!G§)
         {
            this.§,J§(param1,param2);
            _loc3_ = null;
            if(this.§6!$§.length > 0)
            {
               _loc3_ = this.§6!$§[this.§,S§];
            }
            if(_loc3_)
            {
               _loc3_.§&e§(param1);
            }
            if(!_loc3_)
            {
               this.§4_§(§^!G§);
            }
            else if(this.mSlingShotState == §]!%§)
            {
               if(this.§55§ <= 0)
               {
                  this.§4_§(§ k§);
                  _loc3_.§7k§();
               }
            }
            else if(this.mSlingShotState == § k§)
            {
               if(_loc3_.§=1§)
               {
                  this.§4_§(§6g§);
               }
            }
            else if(this.mSlingShotState == §6g§)
            {
               _loc3_.setPosition(this.§6!&§ - _loc3_.radius * Math.cos(this.§';§ / (180 / Math.PI)),this.§24§ + _loc3_.radius * Math.sin(this.§';§ / (180 / Math.PI)));
               if(this.§+!%§)
               {
                  this.§,=§(this.§`e§ / this.§=!3§,this.§';§);
               }
            }
         }
      }
      
      public function §^!P§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§]!6§ = null;
         if(this.§6!$§.length > 0)
         {
            _loc5_ = this.§6!$§[this.§,S§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§,=§(param3,param4);
      }
      
      protected function §,=§(param1:Number, param2:Number) : void
      {
         var _loc3_:§]!6§ = null;
         this.§4O§ = §>[§;
         this.§`L§ = §@I§;
         if(this.§6!$§.length > 0)
         {
            _loc3_ = this.§6!$§[this.§,S§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§+!%§ = false;
         this.§5!I§ = new Date().time;
         this.§&§.shootBird(_loc3_,param1,param2);
         this.§&z§(this.§,S§,_loc3_.§+!>§ > 0);
         this.§+!A§();
         if(this.§,S§ >= this.§6!$§.length)
         {
            this.§4_§(§^!G§);
         }
         else
         {
            this.§4_§(§]!%§);
         }
      }
      
      protected function §+!A§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §25§.playSound("BirdShot" + _loc1_);
      }
      
      public function §,J§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§,S§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§6!$§.length)
         {
            if(this.mSlingShotState == §>H§)
            {
               this.§6!$§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§6!$§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§]!6§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§9!<§();
         if(this.§1U§ >= this.§6!$§.length)
         {
            return false;
         }
         _loc1_ = this.§6!$§[this.§1U§];
         _loc2_ = §,_§.§89§(_loc1_.name).score;
         this.§&§.addScore(_loc2_,§7!I§.§"N§,true,_loc1_.x,_loc1_.y - 3,§ J§.§^5§(_loc1_.name));
         _loc1_.§>p§(-1,true);
         ++this.§1U§;
         return true;
      }
      
      public function §%!P§() : int
      {
         var _loc2_:§]!6§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§6!$§)
         {
            _loc1_ += §,_§.§89§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §>h§() : int
      {
         return this.§[[§;
      }
      
      public function §=r§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§?g§ >= 0)
         {
            this.§?g§ -= param1;
            if(this.§?g§ <= 0)
            {
               _loc2_ = this.§&§.objects.§-<§(this.§6!>§,this.§2J§);
               if(_loc2_ < 0)
               {
                  this.§;#§(0.1);
                  this.§?g§ = 0;
               }
               else if(!this.§&§.objects.§7r§(_loc2_).§=d§)
               {
                  this.§?g§ = -1;
               }
               else if(this.§&§.objects.§7r§(_loc2_).§4!&§())
               {
                  this.§?g§ = 2000;
               }
               else
               {
                  this.§?g§ = 500;
               }
            }
         }
      }
      
      public function §@!E§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§&§.objects.§-<§(this.§6!>§,this.§2J§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§;#§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§?g§ = -1;
      }
      
      public function §3]§(param1:Number, param2:Number) : void
      {
         this.§!!+§.x = -param1;
         this.§!!+§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §6g§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §6g§ && this.§`e§ > this.§=!3§ * §@O§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§4_§(§6g§);
         var _loc1_:§]!6§ = this.§6!$§[this.§,S§];
         _loc1_.§>p§(§>N§.§[Z§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§]!6§ = this.§6!$§[this.§,S§];
         _loc1_.§>p§(§>N§.§4>§);
      }
      
      public function shoot() : void
      {
         this.§+!%§ = true;
      }
      
      protected function §&z§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§]!6§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§6!$§[param1])
         {
            _loc3_ = this.§6!$§[param1];
            this.§^C§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§2a§(this.§6!$§[param1]);
            }
            _loc3_.dispose();
            this.§6!$§[param1] = null;
         }
         this.§6!$§.splice(param1,1);
      }
      
      public function §2a§(param1:§]!6§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §#§.§67§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §#§.§67§) + Math.random() * -_loc8_ * 2;
            this.§&§.particles.addParticle(§ J§.§7!0§,§,!'§.§=8§,§ J§.§"H§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§ J§.§]S§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§&§.particles.addParticle(§ J§.§%!;§,§,!'§.§=8§,§ J§.§"H§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §,W§(param1:§]!6§) : void
      {
         this.§&z§(this.§6!$§.indexOf(param1));
      }
      
      public function §?G§() : void
      {
         var _loc2_:§]!6§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§]!6§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§6!$§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§#+§ - this.§6!$§[_loc1_].x) * (this.§#+§ - this.§6!$§[_loc1_].x) + (this.§+9§ - this.§6!$§[_loc1_].y) * (this.§+9§ - this.§6!$§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§#+§ - this.§6!$§[_loc1_ + 1].x) * (this.§#+§ - this.§6!$§[_loc1_ + 1].x) + (this.§+9§ - this.§6!$§[_loc1_ + 1].y) * (this.§+9§ - this.§6!$§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§6!$§[_loc1_];
               this.§6!$§.splice(_loc1_,1);
               this.§6!$§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§^C§.numChildren > 0)
         {
            this.§^C§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§6!$§.length)
         {
            _loc2_ = this.§6!$§[_loc1_];
            this.§^C§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §>Q§(param1:Number, param2:Number) : §]!6§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§6!$§.length)
         {
            if(this.§6!$§[_loc3_])
            {
               if(this.§6!$§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§6!$§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §+3§(param1:Number, param2:Number) : §,!7§
      {
         if(param1 >= this.§#+§ - this.§=!3§ / 4 && param1 <= this.§#+§ + this.§=!3§ / 4 && param2 >= this.§+9§ - this.§=!3§ / 4 && this.§+9§ <= this.§2J§)
         {
            return this;
         }
         return null;
      }
      
      public function § f§(param1:§#!K§) : void
      {
         var _loc3_:§]!6§ = null;
         var _loc4_:§0?§ = null;
         param1.§3'§ = this.§#+§;
         param1.§&s§ = this.§+9§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§6!$§.length)
         {
            _loc3_ = this.§6!$§[_loc2_];
            (_loc4_ = new §0?§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§7Z§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §%z§() : void
      {
         while(this.§6!$§.length > 0)
         {
            this.§,W§(this.§6!$§[0]);
         }
      }
      
      public function §3I§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§6!$§.length)
         {
            if(this.§6!$§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§6!$§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§#+§ > param1.x && this.§#+§ < param2.x && this.§+9§ > param1.y && this.§+9§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §4S§() : Array
      {
         return [this.§&!&§,this.§#]§];
      }
      
      public function §>5§(param1:String, param2:Number, param3:Number) : §]!6§
      {
         var _loc4_:§]!6§ = this.§]!O§(param1,param2,param3);
         this.§?G§();
         return _loc4_;
      }
      
      public function §>G§() : Number
      {
         return this.§6!$§.length;
      }
   }
}
