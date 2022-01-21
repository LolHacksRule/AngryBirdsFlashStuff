package §'a§
{
   import § !m§.§6h§;
   import §",§.Texture;
   import §+-§.§,K§;
   import §2!`§.§3F§;
   import §2!`§.§8!;§;
   import §4s§.§>!"§;
   import §4s§.§[-§;
   import §5!l§.§8!_§;
   import §5!l§.§9Z§;
   import §5x§.§2!K§;
   import §5x§.§3"§;
   import §5x§.Sprite;
   import §=<§.§1+§;
   import §`!C§.§^!B§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §0U§
   {
      
      public static const §3!a§:int = 0;
      
      public static const §%a§:int = 1;
      
      public static const §%!%§:int = 2;
      
      public static const §!w§:int = 3;
      
      public static const §>!1§:int = 5;
      
      public static const §#;§:int = 3151368;
      
      protected static const §-!o§:int = 8;
      
      protected static const §-<§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const BIRD_LAUNCH_FORCE_GREEN:Number = 52.5;
      
      protected static const §<!%§:Number = -0.7;
      
      protected static const §4H§:Number = 0;
      
      protected static var § !,§:Texture;
      
      public static const §[!>§:Number = 0.4;
       
      
      public var mLevelMain:§0!f§;
      
      public var § +§:Number;
      
      public var §'Z§:Number;
      
      public var §&!%§:Number;
      
      protected var §6!L§:Number;
      
      protected var §?W§:Number;
      
      protected var §3!>§:Number;
      
      protected var §5!0§:Number;
      
      public var §3<§:Number;
      
      public var §4!g§:Boolean = false;
      
      protected var §7v§:Number;
      
      public var §^!@§:Vector.<§use §>;
      
      public var §`!5§:int;
      
      public var §=!!§:int;
      
      public var §&J§:Number;
      
      public var §+%§:Sprite;
      
      public var §%!]§:int = 0;
      
      public var §&!,§:Number = 0;
      
      public var §;q§:Array;
      
      public var §>o§:Array;
      
      public var mSlingShotState:int;
      
      public var §2!^§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §6!j§:Boolean = false;
      
      public var §1!H§:Number;
      
      protected var §`n§:Sprite;
      
      protected var §?!+§:§3"§;
      
      protected var §#r§:§3"§;
      
      protected var §3[§:Sprite;
      
      protected var §=!0§:Sprite;
      
      protected var §^!T§:Sprite;
      
      protected var §%R§:§2!K§;
      
      protected var §3e§:§2!K§;
      
      private var §+;§:Number = 0;
      
      private var §@k§:int = 0;
      
      protected var §`!j§:Number = -0.7;
      
      protected var §<,§:Number = 0;
      
      public function §0U§(param1:§0!f§, param2:§,K§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§^!B§ = null;
         this.§^!@§ = new Vector.<§use §>();
         super();
         this.mLevelMain = param1;
         this.§`n§ = param3;
         if(param2)
         {
            this.setPosition(param2.§3!k§,param2.§"!"§);
            this.§%P§();
            _loc4_ = 0;
            while(_loc4_ < param2.§,!§)
            {
               _loc5_ = param2.§]!V§(_loc4_);
               this.§6[§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§@k§ = this.§0!n§();
            this.§`!5§ = 0;
            if(this.§^!@§.length <= 0)
            {
               §1+§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§ +§ + " " + this.§'Z§);
               this.§%%§(§!w§);
            }
            else
            {
               this.§%%§(§3!a§);
            }
         }
         else
         {
            §1+§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§%%§(§!w§);
         }
         this.§1!H§ = 0;
         this.§@_§();
         this.update(0,true);
         this.§<8§();
         this.updateAnimations(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§`n§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§+;§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§`!5§ < this.§^!@§.length;
      }
      
      public function dispose() : void
      {
         while(this.§^!@§.length > 0)
         {
            this.§1K§(0);
         }
         this.§^!@§ = null;
         if(this.§`n§)
         {
            this.§`n§.dispose();
            this.§`n§ = null;
         }
         this.§+%§ = null;
         this.§;q§ = null;
         this.§>o§ = null;
      }
      
      public function §,0§(param1:String, param2:Number, param3:Number, param4:int = -1) : §use §
      {
         var _loc5_:§use §;
         (_loc5_ = this.§6[§(param1,param2,param3,param4)).§ 7§();
         return _loc5_;
      }
      
      protected function §6[§(param1:String, param2:Number, param3:Number, param4:int = -1) : §use §
      {
         var _loc5_:§use § = new §use §(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§^!@§.push(_loc5_);
         }
         else
         {
            this.§^!@§.splice(param4,0,_loc5_);
         }
         this.§+%§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §%%§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §3!a§)
         {
            this.§`!H§();
            this.§&J§ = 1000;
         }
         else if(this.mSlingShotState == §%a§)
         {
            this.§`!H§();
            this.§&J§ = 0;
         }
         else if(this.mSlingShotState == §%!%§)
         {
            this.§&J§ = 10000;
            this.§6!j§ = false;
            this.§`!H§();
         }
         else if(this.mSlingShotState == §!w§)
         {
            this.§`!H§();
            this.§&J§ = 2000;
         }
         else if(this.mSlingShotState == §>!1§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§6!j§ = false;
               this.§`!H§();
               this.§^!@§[this.§`!5§].setPosition(this.§3!>§ - this.§^!@§[this.§`!5§].radius * Math.cos(this.§&!,§ / (180 / Math.PI)),this.§5!0§ + this.§^!@§[this.§`!5§].radius * Math.sin(this.§&!,§ / (180 / Math.PI)));
            }
            else
            {
               this.§`!H§();
            }
         }
         this.mDragging = false;
      }
      
      public function get § !c§() : §0!f§
      {
         return this.mLevelMain;
      }
      
      public function §5W§() : Boolean
      {
         return this.mSlingShotState == §!w§ && this.§&J§ <= 0;
      }
      
      private function §%P§() : void
      {
         var _loc1_:§8!_§ = this.§+!6§();
         var _loc2_:§9Z§ = _loc1_.getFrame(0);
         var _loc3_:§9Z§ = _loc1_.getFrame(1);
         this.§%R§ = new §2!K§(_loc2_.texture);
         this.§%R§.scaleX = _loc2_.scale;
         this.§%R§.scaleY = _loc2_.scale;
         this.§3e§ = new §2!K§(_loc3_.texture);
         this.§3e§.scaleX = _loc3_.scale;
         this.§3e§.scaleY = _loc3_.scale;
         this.§#H§();
         this.§;S§();
         this.§+%§ = new Sprite();
         this.§`n§.addChild(this.§%R§);
         this.§`n§.addChild(this.§3[§);
         this.§`n§.addChild(this.§+%§);
         this.§`n§.addChild(this.§^!T§);
         this.§`n§.addChild(this.§=!0§);
         this.§`n§.addChild(this.§3e§);
         this.§&!%§ = this.§'Z§ + 8.5;
      }
      
      protected function §+!6§() : §8!_§
      {
         return this.mLevelMain.animationManager.getAnimation("SLINGSHOT");
      }
      
      public function §#H§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§6!L§ = this.§ +§;
         this.§?W§ = this.§'Z§;
         this.§7v§ = §^N§.§,#§;
         _loc1_ = null;
      }
      
      protected function §;S§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§ !,§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            § !,§ = this.mLevelMain.textureManager.getTextureFromBitmapData(_loc2_);
         }
         this.§^!T§ = new Sprite();
         var _loc1_:§2!K§ = new §2!K§(§ !,§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§^!T§.addChild(_loc1_);
         this.§3[§ = new Sprite();
         this.§?!+§ = new §3"§(2,2,§#;§);
         this.§3[§.addChild(this.§?!+§);
         this.§=!0§ = new Sprite();
         this.§#r§ = new §3"§(2,2,§#;§);
         this.§=!0§.addChild(this.§#r§);
      }
      
      public function updateAnimations(param1:Number) : void
      {
         var _loc2_:Number = this.§5!0§ / §0!f§.§<C§;
         var _loc3_:Number = this.§3!>§ / §0!f§.§<C§;
         var _loc4_:Number = 3.5 + 8 * ((this.§7v§ - this.§3<§) / this.§7v§);
         this.§^!T§.x = _loc3_;
         this.§^!T§.y = _loc2_;
         this.§^!T§.rotation = -this.§&!,§ / (180 / Math.PI);
         this.§%R§.x = this.§ +§ / §0!f§.§<C§ - 3;
         this.§%R§.y = this.§'Z§ / §0!f§.§<C§ - 30;
         this.§3e§.x = this.§ +§ / §0!f§.§<C§ - 30;
         this.§3e§.y = this.§'Z§ / §0!f§.§<C§ - 30;
         this.§=!0§.x = this.§ +§ / §0!f§.§<C§ - 17;
         this.§=!0§.y = this.§'Z§ / §0!f§.§<C§ + 5;
         this.§=!0§.rotation = Math.atan2(_loc2_ - this.§=!0§.y,_loc3_ - this.§=!0§.x);
         this.§3[§.x = this.§ +§ / §0!f§.§<C§ + 22;
         this.§3[§.y = this.§'Z§ / §0!f§.§<C§;
         this.§3[§.rotation = Math.atan2(_loc2_ - this.§3[§.y,_loc3_ - this.§3[§.x);
         this.§#r§.width = Math.sqrt(Math.pow(_loc3_ - this.§=!0§.x,2) + Math.pow(_loc2_ - this.§=!0§.y,2));
         this.§?!+§.width = Math.sqrt(Math.pow(_loc3_ - this.§3[§.x,2) + Math.pow(_loc2_ - this.§3[§.y,2));
         this.§#r§.height = this.§?!+§.height = _loc4_ * 2;
         this.§#r§.y = -this.§#r§.height / 2;
         this.§?!+§.y = -this.§?!+§.height / 2;
         this.§2!^§ = false;
      }
      
      public function §+9§() : void
      {
         while(this.§^!@§.length > 0)
         {
            this.§1K§(0,true);
         }
         this.§6!'§();
         this.§6[§("BIRD_SARDINE",this.§ +§,this.§'Z§);
         this.§%%§(§%!%§);
      }
      
      protected function §6!'§() : void
      {
         §6h§.§-a§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§%%§(§>!1§);
      }
      
      public function §`!H§() : void
      {
         this.setNewCoordinatesForRubber(this.§6!L§,this.§?W§ + this.§7v§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§3!>§ == param1 && this.§5!0§ == param2)
         {
            return true;
         }
         this.§3<§ = Math.sqrt((param2 - this.§?W§) * (param2 - this.§?W§) + (param1 - this.§6!L§) * (param1 - this.§6!L§));
         if(this.§3<§ > this.§7v§)
         {
            if(param3)
            {
               this.§3<§ = Math.sqrt((this.§5!0§ - this.§?W§) * (this.§5!0§ - this.§?W§) + (this.§3!>§ - this.§6!L§) * (this.§3!>§ - this.§6!L§));
               return false;
            }
            param1 = this.§6!L§ + this.§7v§ * (param1 - this.§6!L§) / this.§3<§;
            param2 = this.§?W§ + this.§7v§ * (param2 - this.§?W§) / this.§3<§;
            this.§3<§ = this.§7v§;
         }
         this.§3!>§ = param1;
         this.§5!0§ = param2;
         this.§&!,§ = Math.atan2(-(this.§5!0§ - this.§?W§),this.§3!>§ - this.§6!L§);
         this.§&!,§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§3!>§ = param1 + this.§`!j§;
            this.§5!0§ = param2 + this.§<,§;
            this.§&!,§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§7v§ / 2;
         if(this.§3<§ > _loc7_ && this.§&!,§ > -90 - _loc4_ + _loc5_ && this.§&!,§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§6!L§ + _loc7_ * (param1 - this.§6!L§) / this.§3<§;
            param2 = this.§?W§ + _loc7_ * (param2 - this.§?W§) / this.§3<§;
            this.§3<§ = _loc7_;
            this.§3!>§ = param1;
            this.§5!0§ = param2;
         }
         else if(this.§3<§ > _loc7_ && this.§&!,§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§&!,§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§7v§ - _loc7_) * (Math.abs(this.§&!,§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§6!L§ + _loc8_ * (param1 - this.§6!L§) / this.§3<§;
            param2 = this.§?W§ + _loc8_ * (param2 - this.§?W§) / this.§3<§;
            this.§3<§ = _loc8_;
            this.§3!>§ = param1;
            this.§5!0§ = param2;
         }
         if(this.§3<§ <= this.§7v§ * 0.45)
         {
            this.§4!g§ = true;
         }
         else if(this.§4!g§ && this.§3<§ >= this.§7v§ * 0.8)
         {
            this.§ X§();
            this.§4!g§ = false;
         }
         this.§2!^§ = true;
         return true;
      }
      
      protected function § X§() : void
      {
         §6h§.§-a§("SlingshotStreched");
      }
      
      public function §2;§(param1:Number) : void
      {
         this.setPosition(this.§ +§,this.§'Z§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§ +§;
         this.§ +§ = param1;
         var _loc5_:Number = param2 - this.§'Z§;
         this.§'Z§ = param2;
         this.§&!%§ += _loc5_;
         this.§?W§ += _loc5_;
         this.§5!0§ += _loc5_;
         this.§6!L§ += _loc4_;
         this.§3!>§ += _loc4_;
         if(param3)
         {
            this.updateAnimations(0);
         }
         this.§2!^§ = true;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§use § = null;
         _loc2_ = this.§^!@§[this.§`!5§];
         var _loc3_:Number = this.§3<§ / this.§7v§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§0U§.BIRD_LAUNCH_FORCE_GREEN) : Number(§0U§.BIRD_LAUNCH_FORCE);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §5L§() : Point
      {
         var _loc1_:§use § = null;
         if(this.§^!@§.length > this.§`!5§)
         {
            _loc1_ = this.§^!@§[this.§`!5§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §,_§() : Point
      {
         return new Point(this.§6!L§,this.§?W§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§use § = null;
         this.§=N§(param1);
         if(this.§2!^§)
         {
            this.updateAnimations(param1);
         }
         this.§&J§ -= param1;
         if(this.§&J§ < 0)
         {
            this.§&J§ = 0;
         }
         if(this.mSlingShotState != §!w§)
         {
            this.§3V§(param1,param2);
            _loc3_ = null;
            if(this.§^!@§.length > 0)
            {
               _loc3_ = this.§^!@§[this.§`!5§];
            }
            if(_loc3_)
            {
               _loc3_.§4Z§(param1);
            }
            if(!_loc3_)
            {
               this.§%%§(§!w§);
            }
            else if(this.mSlingShotState == §3!a§)
            {
               if(this.§&J§ <= 0)
               {
                  this.§%%§(§%a§);
                  _loc3_.§!!A§();
               }
            }
            else if(this.mSlingShotState == §%a§)
            {
               if(_loc3_.§&!T§)
               {
                  this.§%%§(§%!%§);
               }
            }
            else if(this.mSlingShotState == §%!%§)
            {
               _loc3_.setPosition(this.§3!>§ - _loc3_.radius * Math.cos(this.§&!,§ / (180 / Math.PI)),this.§5!0§ + _loc3_.radius * Math.sin(this.§&!,§ / (180 / Math.PI)));
               if(this.§6!j§)
               {
                  this.§?!&§(this.§3<§ / this.§7v§,this.§&!,§);
               }
            }
         }
      }
      
      public function §'!>§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§use § = null;
         if(this.§^!@§.length > 0)
         {
            _loc5_ = this.§^!@§[this.§`!5§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§?!&§(param3,param4);
      }
      
      protected function §?!&§(param1:Number, param2:Number) : void
      {
         var _loc3_:§use § = null;
         this.§`!j§ = §<!%§;
         this.§<,§ = §4H§;
         if(this.§^!@§.length > 0)
         {
            _loc3_ = this.§^!@§[this.§`!5§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§6!j§ = false;
         this.§+;§ = new Date().time;
         this.mLevelMain.§ !o§(_loc3_,param1,param2);
         this.§1K§(this.§`!5§,_loc3_.§7!#§ > 0);
         this.playBirdShotSound();
         if(this.§`!5§ >= this.§^!@§.length)
         {
            this.§%%§(§!w§);
         }
         else
         {
            this.§%%§(§3!a§);
         }
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §6h§.§-a§("BirdShot" + _loc1_);
      }
      
      public function §3V§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§`!5§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§^!@§.length)
         {
            if(this.mSlingShotState == §>!1§)
            {
               this.§^!@§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§^!@§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§use § = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§`!H§();
         if(this.§=!!§ >= this.§^!@§.length)
         {
            return false;
         }
         _loc1_ = this.§^!@§[this.§=!!§];
         _loc2_ = §>!"§.§??§(_loc1_.name).score;
         this.mLevelMain.addScore(_loc2_,§#!`§.§&!5§,true,_loc1_.x,_loc1_.y - 3,§8!;§.§2$§(_loc1_.name));
         _loc1_.§,;§(-1,true);
         ++this.§=!!§;
         return true;
      }
      
      public function §0!n§() : int
      {
         var _loc2_:§use § = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§^!@§)
         {
            _loc1_ += §>!"§.§??§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §+r§() : int
      {
         return this.§@k§;
      }
      
      public function §=N§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§1!H§ >= 0)
         {
            this.§1!H§ -= param1;
            if(this.§1!H§ <= 0)
            {
               _loc2_ = this.mLevelMain.objects.§3x§(this.§6!L§,this.§&!%§);
               if(_loc2_ < 0)
               {
                  this.§2;§(0.1);
                  this.§1!H§ = 0;
               }
               else if(!this.mLevelMain.objects.§6!e§(_loc2_).§!!@§)
               {
                  this.§1!H§ = -1;
               }
               else if(this.mLevelMain.objects.§6!e§(_loc2_).§ !i§())
               {
                  this.§1!H§ = 2000;
               }
               else
               {
                  this.§1!H§ = 500;
               }
            }
         }
      }
      
      public function §<8§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.mLevelMain.objects.§3x§(this.§6!L§,this.§&!%§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§2;§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§1!H§ = -1;
      }
      
      public function §8!E§(param1:Number, param2:Number) : void
      {
         this.§`n§.x = -param1;
         this.§`n§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §%!%§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §%!%§ && this.§3<§ > this.§7v§ * §[!>§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§%%§(§%!%§);
         var _loc1_:§use § = this.§^!@§[this.§`!5§];
         _loc1_.§,;§(§[-§.§+B§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§use § = this.§^!@§[this.§`!5§];
         _loc1_.§,;§(§[-§.§&!>§);
      }
      
      public function shoot() : void
      {
         this.§6!j§ = true;
      }
      
      protected function §1K§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§use § = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§^!@§[param1])
         {
            _loc3_ = this.§^!@§[param1];
            this.§+%§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§&u§(this.§^!@§[param1]);
            }
            _loc3_.dispose();
            this.§^!@§[param1] = null;
         }
         this.§^!@§.splice(param1,1);
      }
      
      public function §&u§(param1:§use §) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §0!f§.§<C§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §0!f§.§<C§) + Math.random() * -_loc8_ * 2;
            this.mLevelMain.particles.§;!G§(§8!;§.§9!1§,§3F§.§![§,§8!;§.§!!8§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§8!;§.§2!n§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.mLevelMain.particles.§;!G§(§8!;§.§!$§,§3F§.§![§,§8!;§.§!!8§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §'%§(param1:§use §) : void
      {
         this.§1K§(this.§^!@§.indexOf(param1));
      }
      
      public function §@_§() : void
      {
         var _loc2_:§use § = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§use § = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§^!@§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§ +§ - this.§^!@§[_loc1_].x) * (this.§ +§ - this.§^!@§[_loc1_].x) + (this.§'Z§ - this.§^!@§[_loc1_].y) * (this.§'Z§ - this.§^!@§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§ +§ - this.§^!@§[_loc1_ + 1].x) * (this.§ +§ - this.§^!@§[_loc1_ + 1].x) + (this.§'Z§ - this.§^!@§[_loc1_ + 1].y) * (this.§'Z§ - this.§^!@§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§^!@§[_loc1_];
               this.§^!@§.splice(_loc1_,1);
               this.§^!@§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§+%§.numChildren > 0)
         {
            this.§+%§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§^!@§.length)
         {
            _loc2_ = this.§^!@§[_loc1_];
            this.§+%§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §&B§(param1:Number, param2:Number) : §use §
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§^!@§.length)
         {
            if(this.§^!@§[_loc3_])
            {
               if(this.§^!@§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§^!@§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §04§(param1:Number, param2:Number) : §0U§
      {
         if(param1 >= this.§ +§ - this.§7v§ / 4 && param1 <= this.§ +§ + this.§7v§ / 4 && param2 >= this.§'Z§ - this.§7v§ / 4 && this.§'Z§ <= this.§&!%§)
         {
            return this;
         }
         return null;
      }
      
      public function §+§(param1:§,K§) : void
      {
         var _loc3_:§use § = null;
         var _loc4_:§^!B§ = null;
         param1.§3!k§ = this.§ +§;
         param1.§"!"§ = this.§'Z§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§^!@§.length)
         {
            _loc3_ = this.§^!@§[_loc2_];
            (_loc4_ = new §^!B§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§ for§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §-_§() : void
      {
         while(this.§^!@§.length > 0)
         {
            this.§'%§(this.§^!@§[0]);
         }
      }
      
      public function §=Y§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§^!@§.length)
         {
            if(this.§^!@§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§^!@§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§ +§ > param1.x && this.§ +§ < param2.x && this.§'Z§ > param1.y && this.§'Z§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §7g§() : Array
      {
         return [this.§3e§,this.§%R§];
      }
      
      public function §>X§(param1:String, param2:Number, param3:Number) : §use §
      {
         var _loc4_:§use § = this.§6[§(param1,param2,param3);
         this.§@_§();
         return _loc4_;
      }
      
      public function §`C§() : Number
      {
         return this.§^!@§.length;
      }
   }
}
