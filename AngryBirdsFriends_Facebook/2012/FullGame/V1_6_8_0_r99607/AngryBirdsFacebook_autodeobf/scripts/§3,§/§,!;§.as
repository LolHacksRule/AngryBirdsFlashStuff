package §3,§
{
   import §0!?§.§'!$§;
   import §1k§.§%4§;
   import §3!Z§.§,>§;
   import §3!Z§.§5!$§;
   import §9!H§.§,!%§;
   import §<%§.§%;§;
   import §<%§.§9q§;
   import §<L§.Texture;
   import §?"<§.§"d§;
   import §?"<§.§?n§;
   import §[!z§.§!"=§;
   import §]&§.§-§;
   import §]&§.Sprite;
   import §]&§.§[T§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §,!;§
   {
      
      public static const §="#§:int = 0;
      
      public static const §!!l§:int = 1;
      
      public static const §&i§:int = 2;
      
      public static const §;!L§:int = 3;
      
      public static const §'!!§:int = 5;
      
      public static const §4!W§:int = 3151368;
      
      protected static const §[!J§:int = 8;
      
      protected static const §<!+§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const BIRD_LAUNCH_FORCE_GREEN:Number = 52.5;
      
      protected static const §1-§:Number = -0.7;
      
      protected static const §"!C§:Number = 0;
      
      protected static var §!!`§:Texture;
      
      public static const §7"#§:Number = 0.4;
       
      
      public var §0!J§:§[!;§;
      
      public var §>U§:Number;
      
      public var §>!c§:Number;
      
      public var §4!v§:Number;
      
      protected var §+8§:Number;
      
      protected var §^i§:Number;
      
      protected var §!!5§:Number;
      
      protected var §9!@§:Number;
      
      public var §5!]§:Number;
      
      public var §5!I§:Boolean = false;
      
      protected var §]!L§:Number;
      
      public var §&!L§:Vector.<§-!K§>;
      
      public var §1g§:int;
      
      public var §"1§:int;
      
      public var §"e§:Number;
      
      public var §8"-§:Sprite;
      
      public var §-2§:int = 0;
      
      public var §3Q§:Number = 0;
      
      public var §3&§:Array;
      
      public var §%!T§:Array;
      
      public var mSlingShotState:int;
      
      public var §[!_§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §&!r§:Boolean = false;
      
      public var §&Q§:Number;
      
      protected var §3!b§:Sprite;
      
      protected var §1!J§:§[T§;
      
      protected var §>!G§:§[T§;
      
      protected var §7_§:Sprite;
      
      protected var §]z§:Sprite;
      
      protected var §"!g§:Sprite;
      
      protected var §&!f§:§-§;
      
      protected var §2!D§:§-§;
      
      private var §+U§:Number = 0;
      
      private var §<&§:int = 0;
      
      protected var §3!m§:Number = -0.7;
      
      protected var §@Z§:Number = 0;
      
      public function §,!;§(param1:§[!;§, param2:§!"=§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§,!%§ = null;
         this.§&!L§ = new Vector.<§-!K§>();
         super();
         this.§0!J§ = param1;
         this.§3!b§ = param3;
         if(param2)
         {
            this.setPosition(param2.§9"4§,param2.§<C§);
            this.§2F§();
            _loc4_ = 0;
            while(_loc4_ < param2.§1!p§)
            {
               _loc5_ = param2.§7!u§(_loc4_);
               this.§8",§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§<&§ = this.§ J§();
            this.§1g§ = 0;
            if(this.§&!L§.length <= 0)
            {
               §'!$§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§>U§ + " " + this.§>!c§);
               this.§=!0§(§;!L§);
            }
            else
            {
               this.§=!0§(§="#§);
            }
         }
         else
         {
            §'!$§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§=!0§(§;!L§);
         }
         this.§&Q§ = 0;
         this.§>!d§();
         this.update(0,true);
         this.§0%§();
         this.updateAnimations(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§3!b§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§+U§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§1g§ < this.§&!L§.length;
      }
      
      public function dispose() : void
      {
         while(this.§&!L§.length > 0)
         {
            this.§^!@§(0);
         }
         this.§&!L§ = null;
         if(this.§3!b§)
         {
            this.§3!b§.dispose();
            this.§3!b§ = null;
         }
         this.§8"-§ = null;
         this.§3&§ = null;
         this.§%!T§ = null;
      }
      
      public function §8!E§(param1:String, param2:Number, param3:Number, param4:int = -1) : §-!K§
      {
         var _loc5_:§-!K§;
         (_loc5_ = this.§8",§(param1,param2,param3,param4)).§4L§();
         return _loc5_;
      }
      
      protected function §8",§(param1:String, param2:Number, param3:Number, param4:int = -1) : §-!K§
      {
         var _loc5_:§-!K§ = new §-!K§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§&!L§.push(_loc5_);
         }
         else
         {
            this.§&!L§.splice(param4,0,_loc5_);
         }
         this.§8"-§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §=!0§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §="#§)
         {
            this.§=!Q§();
            this.§"e§ = 1000;
         }
         else if(this.mSlingShotState == §!!l§)
         {
            this.§=!Q§();
            this.§"e§ = 0;
         }
         else if(this.mSlingShotState == §&i§)
         {
            this.§"e§ = 10000;
            this.§&!r§ = false;
            this.§=!Q§();
         }
         else if(this.mSlingShotState == §;!L§)
         {
            this.§=!Q§();
            this.§"e§ = 2000;
         }
         else if(this.mSlingShotState == §'!!§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§&!r§ = false;
               this.§=!Q§();
               this.§&!L§[this.§1g§].setPosition(this.§!!5§ - this.§&!L§[this.§1g§].radius * Math.cos(this.§3Q§ / (180 / Math.PI)),this.§9!@§ + this.§&!L§[this.§1g§].radius * Math.sin(this.§3Q§ / (180 / Math.PI)));
            }
            else
            {
               this.§=!Q§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §9">§() : §[!;§
      {
         return this.§0!J§;
      }
      
      public function §6<§() : Boolean
      {
         return this.mSlingShotState == §;!L§ && this.§"e§ <= 0;
      }
      
      private function §2F§() : void
      {
         var _loc1_:§"d§ = this.§7b§();
         var _loc2_:§?n§ = _loc1_.getFrame(0);
         var _loc3_:§?n§ = _loc1_.getFrame(1);
         this.§&!f§ = new §-§(_loc2_.texture);
         this.§&!f§.scaleX = _loc2_.scale;
         this.§&!f§.scaleY = _loc2_.scale;
         this.§2!D§ = new §-§(_loc3_.texture);
         this.§2!D§.scaleX = _loc3_.scale;
         this.§2!D§.scaleY = _loc3_.scale;
         this.§]h§();
         this.§'!f§();
         this.§8"-§ = new Sprite();
         this.§3!b§.addChild(this.§&!f§);
         this.§3!b§.addChild(this.§7_§);
         this.§3!b§.addChild(this.§8"-§);
         this.§3!b§.addChild(this.§"!g§);
         this.§3!b§.addChild(this.§]z§);
         this.§3!b§.addChild(this.§2!D§);
         this.§4!v§ = this.§>!c§ + 8.5;
      }
      
      protected function §7b§() : §"d§
      {
         return this.§0!J§.animationManager.getAnimation("SLINGSHOT");
      }
      
      public function §]h§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§+8§ = this.§>U§;
         this.§^i§ = this.§>!c§;
         this.§]!L§ = §`a§.§="2§;
         _loc1_ = null;
      }
      
      protected function §'!f§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§!!`§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §!!`§ = this.§0!J§.textureManager.getTextureFromBitmapData(_loc2_);
         }
         this.§"!g§ = new Sprite();
         var _loc1_:§-§ = new §-§(§!!`§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§"!g§.addChild(_loc1_);
         this.§7_§ = new Sprite();
         this.§1!J§ = new §[T§(2,2,§4!W§);
         this.§7_§.addChild(this.§1!J§);
         this.§]z§ = new Sprite();
         this.§>!G§ = new §[T§(2,2,§4!W§);
         this.§]z§.addChild(this.§>!G§);
      }
      
      public function updateAnimations(param1:Number) : void
      {
         var _loc2_:Number = this.§9!@§ / §[!;§.§4!O§;
         var _loc3_:Number = this.§!!5§ / §[!;§.§4!O§;
         var _loc4_:Number = 3.5 + 8 * ((this.§]!L§ - this.§5!]§) / this.§]!L§);
         this.§"!g§.x = _loc3_;
         this.§"!g§.y = _loc2_;
         this.§"!g§.rotation = -this.§3Q§ / (180 / Math.PI);
         this.§&!f§.x = this.§>U§ / §[!;§.§4!O§ - 3;
         this.§&!f§.y = this.§>!c§ / §[!;§.§4!O§ - 30;
         this.§2!D§.x = this.§>U§ / §[!;§.§4!O§ - 30;
         this.§2!D§.y = this.§>!c§ / §[!;§.§4!O§ - 30;
         this.§]z§.x = this.§>U§ / §[!;§.§4!O§ - 17;
         this.§]z§.y = this.§>!c§ / §[!;§.§4!O§ + 5;
         this.§]z§.rotation = Math.atan2(_loc2_ - this.§]z§.y,_loc3_ - this.§]z§.x);
         this.§7_§.x = this.§>U§ / §[!;§.§4!O§ + 22;
         this.§7_§.y = this.§>!c§ / §[!;§.§4!O§;
         this.§7_§.rotation = Math.atan2(_loc2_ - this.§7_§.y,_loc3_ - this.§7_§.x);
         this.§>!G§.width = Math.sqrt(Math.pow(_loc3_ - this.§]z§.x,2) + Math.pow(_loc2_ - this.§]z§.y,2));
         this.§1!J§.width = Math.sqrt(Math.pow(_loc3_ - this.§7_§.x,2) + Math.pow(_loc2_ - this.§7_§.y,2));
         this.§>!G§.height = this.§1!J§.height = _loc4_ * 2;
         this.§>!G§.y = -this.§>!G§.height / 2;
         this.§1!J§.y = -this.§1!J§.height / 2;
         this.§[!_§ = false;
      }
      
      public function useMightyEagle() : void
      {
         while(this.§&!L§.length > 0)
         {
            this.§^!@§(0,true);
         }
         this.§2u§();
         this.§8",§("BIRD_SARDINE",this.§>U§,this.§>!c§);
         this.§=!0§(§&i§);
      }
      
      protected function §2u§() : void
      {
         §%4§.§>f§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§=!0§(§'!!§);
      }
      
      public function §=!Q§() : void
      {
         this.setNewCoordinatesForRubber(this.§+8§,this.§^i§ + this.§]!L§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§!!5§ == param1 && this.§9!@§ == param2)
         {
            return true;
         }
         this.§5!]§ = Math.sqrt((param2 - this.§^i§) * (param2 - this.§^i§) + (param1 - this.§+8§) * (param1 - this.§+8§));
         if(this.§5!]§ > this.§]!L§)
         {
            if(param3)
            {
               this.§5!]§ = Math.sqrt((this.§9!@§ - this.§^i§) * (this.§9!@§ - this.§^i§) + (this.§!!5§ - this.§+8§) * (this.§!!5§ - this.§+8§));
               return false;
            }
            param1 = this.§+8§ + this.§]!L§ * (param1 - this.§+8§) / this.§5!]§;
            param2 = this.§^i§ + this.§]!L§ * (param2 - this.§^i§) / this.§5!]§;
            this.§5!]§ = this.§]!L§;
         }
         this.§!!5§ = param1;
         this.§9!@§ = param2;
         this.§3Q§ = Math.atan2(-(this.§9!@§ - this.§^i§),this.§!!5§ - this.§+8§);
         this.§3Q§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§!!5§ = param1 + this.§3!m§;
            this.§9!@§ = param2 + this.§@Z§;
            this.§3Q§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§]!L§ / 2;
         if(this.§5!]§ > _loc7_ && this.§3Q§ > -90 - _loc4_ + _loc5_ && this.§3Q§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§+8§ + _loc7_ * (param1 - this.§+8§) / this.§5!]§;
            param2 = this.§^i§ + _loc7_ * (param2 - this.§^i§) / this.§5!]§;
            this.§5!]§ = _loc7_;
            this.§!!5§ = param1;
            this.§9!@§ = param2;
         }
         else if(this.§5!]§ > _loc7_ && this.§3Q§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§3Q§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§]!L§ - _loc7_) * (Math.abs(this.§3Q§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§+8§ + _loc8_ * (param1 - this.§+8§) / this.§5!]§;
            param2 = this.§^i§ + _loc8_ * (param2 - this.§^i§) / this.§5!]§;
            this.§5!]§ = _loc8_;
            this.§!!5§ = param1;
            this.§9!@§ = param2;
         }
         if(this.§5!]§ <= this.§]!L§ * 0.45)
         {
            this.§5!I§ = true;
         }
         else if(this.§5!I§ && this.§5!]§ >= this.§]!L§ * 0.8)
         {
            this.§,f§();
            this.§5!I§ = false;
         }
         this.§[!_§ = true;
         return true;
      }
      
      protected function §,f§() : void
      {
         §%4§.§>f§("SlingshotStreched");
      }
      
      public function §^!r§(param1:Number) : void
      {
         this.setPosition(this.§>U§,this.§>!c§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§>U§;
         this.§>U§ = param1;
         var _loc5_:Number = param2 - this.§>!c§;
         this.§>!c§ = param2;
         this.§4!v§ += _loc5_;
         this.§^i§ += _loc5_;
         this.§9!@§ += _loc5_;
         this.§+8§ += _loc4_;
         this.§!!5§ += _loc4_;
         if(param3)
         {
            this.updateAnimations(0);
         }
         this.§[!_§ = true;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§-!K§ = null;
         _loc2_ = this.§&!L§[this.§1g§];
         var _loc3_:Number = this.§5!]§ / this.§]!L§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§,!;§.BIRD_LAUNCH_FORCE_GREEN) : Number(§,!;§.BIRD_LAUNCH_FORCE);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §5!X§() : Point
      {
         var _loc1_:§-!K§ = null;
         if(this.§&!L§.length > this.§1g§)
         {
            _loc1_ = this.§&!L§[this.§1g§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §4"B§() : Point
      {
         return new Point(this.§+8§,this.§^i§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§-!K§ = null;
         this.§1E§(param1);
         if(this.§[!_§)
         {
            this.updateAnimations(param1);
         }
         this.§"e§ -= param1;
         if(this.§"e§ < 0)
         {
            this.§"e§ = 0;
         }
         if(this.mSlingShotState != §;!L§)
         {
            this.§#Q§(param1,param2);
            _loc3_ = null;
            if(this.§&!L§.length > 0)
            {
               _loc3_ = this.§&!L§[this.§1g§];
            }
            if(_loc3_)
            {
               _loc3_.§ !O§(param1);
            }
            if(!_loc3_)
            {
               this.§=!0§(§;!L§);
            }
            else if(this.mSlingShotState == §="#§)
            {
               if(this.§"e§ <= 0)
               {
                  this.§=!0§(§!!l§);
                  _loc3_.§<!,§();
               }
            }
            else if(this.mSlingShotState == §!!l§)
            {
               if(_loc3_.§'!s§)
               {
                  this.§=!0§(§&i§);
               }
            }
            else if(this.mSlingShotState == §&i§)
            {
               _loc3_.setPosition(this.§!!5§ - _loc3_.radius * Math.cos(this.§3Q§ / (180 / Math.PI)),this.§9!@§ + _loc3_.radius * Math.sin(this.§3Q§ / (180 / Math.PI)));
               if(this.§&!r§)
               {
                  this.§8!6§(this.§5!]§ / this.§]!L§,this.§3Q§);
               }
            }
         }
      }
      
      public function §!c§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§-!K§ = null;
         if(this.§&!L§.length > 0)
         {
            _loc5_ = this.§&!L§[this.§1g§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§8!6§(param3,param4);
      }
      
      protected function §8!6§(param1:Number, param2:Number) : void
      {
         var _loc3_:§-!K§ = null;
         this.§3!m§ = §1-§;
         this.§@Z§ = §"!C§;
         if(this.§&!L§.length > 0)
         {
            _loc3_ = this.§&!L§[this.§1g§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§&!r§ = false;
         this.§+U§ = new Date().time;
         this.§0!J§.§#!4§(_loc3_,param1,param2);
         this.§^!@§(this.§1g§,_loc3_.§6!8§ > 0);
         this.playBirdShotSound();
         if(this.§1g§ >= this.§&!L§.length)
         {
            this.§=!0§(§;!L§);
         }
         else
         {
            this.§=!0§(§="#§);
         }
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §%4§.§>f§("BirdShot" + _loc1_);
      }
      
      public function §#Q§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§1g§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§&!L§.length)
         {
            if(this.mSlingShotState == §'!!§)
            {
               this.§&!L§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§&!L§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§-!K§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§=!Q§();
         if(this.§"1§ >= this.§&!L§.length)
         {
            return false;
         }
         _loc1_ = this.§&!L§[this.§"1§];
         _loc2_ = §%;§.§8!]§(_loc1_.name).score;
         this.§0!J§.addScore(_loc2_,§!" §.§ !,§,true,_loc1_.x,_loc1_.y - 3,§5!$§.§=!H§(_loc1_.name));
         _loc1_.§9b§(-1,true);
         ++this.§"1§;
         return true;
      }
      
      public function § J§() : int
      {
         var _loc2_:§-!K§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§&!L§)
         {
            _loc1_ += §%;§.§8!]§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §<!f§() : int
      {
         return this.§<&§;
      }
      
      public function §1E§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§&Q§ >= 0)
         {
            this.§&Q§ -= param1;
            if(this.§&Q§ <= 0)
            {
               _loc2_ = this.§0!J§.objects.§6";§(this.§+8§,this.§4!v§);
               if(_loc2_ < 0)
               {
                  this.§^!r§(0.1);
                  this.§&Q§ = 0;
               }
               else if(!this.§0!J§.objects.§&J§(_loc2_).§1j§)
               {
                  this.§&Q§ = -1;
               }
               else if(this.§0!J§.objects.§&J§(_loc2_).§'1§())
               {
                  this.§&Q§ = 2000;
               }
               else
               {
                  this.§&Q§ = 500;
               }
            }
         }
      }
      
      public function §0%§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§0!J§.objects.§6";§(this.§+8§,this.§4!v§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§^!r§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§&Q§ = -1;
      }
      
      public function §6!>§(param1:Number, param2:Number) : void
      {
         this.§3!b§.x = -param1;
         this.§3!b§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §&i§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §&i§ && this.§5!]§ > this.§]!L§ * §7"#§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§=!0§(§&i§);
         var _loc1_:§-!K§ = this.§&!L§[this.§1g§];
         _loc1_.§9b§(§9q§.§"!_§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§-!K§ = this.§&!L§[this.§1g§];
         _loc1_.§9b§(§9q§.§<j§);
      }
      
      public function shoot() : void
      {
         this.§&!r§ = true;
      }
      
      protected function §^!@§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§-!K§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§&!L§[param1])
         {
            _loc3_ = this.§&!L§[param1];
            this.§8"-§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§?!&§(this.§&!L§[param1]);
            }
            _loc3_.dispose();
            this.§&!L§[param1] = null;
         }
         this.§&!L§.splice(param1,1);
      }
      
      public function §?!&§(param1:§-!K§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §[!;§.§4!O§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §[!;§.§4!O§) + Math.random() * -_loc8_ * 2;
            this.§0!J§.particles.§&!J§(§5!$§.§2M§,§,>§.§^!<§,§5!$§.§2!&§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§5!$§.§9!Z§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§0!J§.particles.§&!J§(§5!$§.§>!z§,§,>§.§^!<§,§5!$§.§2!&§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §%U§(param1:§-!K§) : void
      {
         this.§^!@§(this.§&!L§.indexOf(param1));
      }
      
      public function §>!d§() : void
      {
         var _loc2_:§-!K§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§-!K§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§&!L§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§>U§ - this.§&!L§[_loc1_].x) * (this.§>U§ - this.§&!L§[_loc1_].x) + (this.§>!c§ - this.§&!L§[_loc1_].y) * (this.§>!c§ - this.§&!L§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§>U§ - this.§&!L§[_loc1_ + 1].x) * (this.§>U§ - this.§&!L§[_loc1_ + 1].x) + (this.§>!c§ - this.§&!L§[_loc1_ + 1].y) * (this.§>!c§ - this.§&!L§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§&!L§[_loc1_];
               this.§&!L§.splice(_loc1_,1);
               this.§&!L§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§8"-§.numChildren > 0)
         {
            this.§8"-§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§&!L§.length)
         {
            _loc2_ = this.§&!L§[_loc1_];
            this.§8"-§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §9!;§(param1:Number, param2:Number) : §-!K§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§&!L§.length)
         {
            if(this.§&!L§[_loc3_])
            {
               if(this.§&!L§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§&!L§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §`f§(param1:Number, param2:Number) : §,!;§
      {
         if(param1 >= this.§>U§ - this.§]!L§ / 4 && param1 <= this.§>U§ + this.§]!L§ / 4 && param2 >= this.§>!c§ - this.§]!L§ / 4 && this.§>!c§ <= this.§4!v§)
         {
            return this;
         }
         return null;
      }
      
      public function §@"6§(param1:§!"=§) : void
      {
         var _loc3_:§-!K§ = null;
         var _loc4_:§,!%§ = null;
         param1.§9"4§ = this.§>U§;
         param1.§<C§ = this.§>!c§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§&!L§.length)
         {
            _loc3_ = this.§&!L§[_loc2_];
            (_loc4_ = new §,!%§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§9!Q§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §<J§() : void
      {
         while(this.§&!L§.length > 0)
         {
            this.§%U§(this.§&!L§[0]);
         }
      }
      
      public function §@k§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§&!L§.length)
         {
            if(this.§&!L§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§&!L§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§>U§ > param1.x && this.§>U§ < param2.x && this.§>!c§ > param1.y && this.§>!c§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §6""§() : Array
      {
         return [this.§2!D§,this.§&!f§];
      }
      
      public function §1O§(param1:String, param2:Number, param3:Number) : §-!K§
      {
         var _loc4_:§-!K§ = this.§8",§(param1,param2,param3);
         this.§>!d§();
         return _loc4_;
      }
      
      public function §#$§() : Number
      {
         return this.§&!L§.length;
      }
   }
}
