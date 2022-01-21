package §@!b§
{
   import §!!e§.§<!S§;
   import §!!e§.§]!S§;
   import §&!K§.§3b§;
   import §&!K§.§^!3§;
   import §&[§.§'!$§;
   import §&[§.§,!"§;
   import §-!#§.§5!6§;
   import §2!g§.§2c§;
   import §2!g§.§<7§;
   import §2!g§.Sprite;
   import §@j§.Texture;
   import §`!W§.§2v§;
   import §`!d§.§0%§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §for §.§"E§;
   
   public class §%!'§
   {
      
      public static const §<q§:int = 0;
      
      public static const §]!+§:int = 1;
      
      public static const §?$§:int = 2;
      
      public static const §`;§:int = 3;
      
      public static const §"-§:int = 5;
      
      public static const §=!6§:int = 3151368;
      
      protected static const §-!%§:int = 8;
      
      protected static const §%w§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const BIRD_LAUNCH_FORCE_GREEN:Number = 52.5;
      
      protected static const §"@§:Number = -0.7;
      
      protected static const §@O§:Number = 0;
      
      protected static var §2!M§:Texture;
      
      public static const §'!4§:Number = 0.4;
       
      
      public var mLevelMain:§@!k§;
      
      public var §;b§:Number;
      
      public var §[!5§:Number;
      
      public var §&!j§:Number;
      
      protected var §,X§:Number;
      
      protected var §2V§:Number;
      
      protected var §1!&§:Number;
      
      protected var §;!f§:Number;
      
      public var §use§:Number;
      
      public var §+<§:Boolean = false;
      
      protected var §2!R§:Number;
      
      public var § N§:Vector.<§^j§>;
      
      public var §7!2§:int;
      
      public var § ;§:int;
      
      public var §+!"§:Number;
      
      public var §"h§:Sprite;
      
      public var §+,§:int = 0;
      
      public var §'!"§:Number = 0;
      
      public var §8B§:Array;
      
      public var §9P§:Array;
      
      public var mSlingShotState:int;
      
      public var §=!k§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §7j§:Boolean = false;
      
      public var §;!R§:Number;
      
      protected var §[8§:Sprite;
      
      protected var §&x§:§2c§;
      
      protected var §]!'§:§2c§;
      
      protected var §2!T§:Sprite;
      
      protected var §-,§:Sprite;
      
      protected var §>[§:Sprite;
      
      protected var §@G§:§<7§;
      
      protected var §,?§:§<7§;
      
      private var §@a§:Number = 0;
      
      private var §3!@§:int = 0;
      
      protected var §]!#§:Number = -0.7;
      
      protected var §&!@§:Number = 0;
      
      public function §%!'§(param1:§@!k§, param2:§0%§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§"E§ = null;
         this.§ N§ = new Vector.<§^j§>();
         super();
         this.mLevelMain = param1;
         this.§[8§ = param3;
         if(param2)
         {
            this.setPosition(param2.§^!5§,param2.§@Y§);
            this.§57§();
            _loc4_ = 0;
            while(_loc4_ < param2.§7!5§)
            {
               _loc5_ = param2.§4L§(_loc4_);
               this.§^9§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§3!@§ = this.§4!C§();
            this.§7!2§ = 0;
            if(this.§ N§.length <= 0)
            {
               §2v§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§;b§ + " " + this.§[!5§);
               this.§#i§(§`;§);
            }
            else
            {
               this.§#i§(§<q§);
            }
         }
         else
         {
            §2v§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§#i§(§`;§);
         }
         this.§;!R§ = 0;
         this.§0!#§();
         this.update(0,true);
         this.§get §();
         this.updateAnimations(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§[8§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§@a§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§7!2§ < this.§ N§.length;
      }
      
      public function dispose() : void
      {
         while(this.§ N§.length > 0)
         {
            this.§5k§(0);
         }
         this.§ N§ = null;
         if(this.§[8§)
         {
            this.§[8§.dispose();
            this.§[8§ = null;
         }
         this.§"h§ = null;
         this.§8B§ = null;
         this.§9P§ = null;
      }
      
      public function §#!h§(param1:String, param2:Number, param3:Number, param4:int = -1) : §^j§
      {
         var _loc5_:§^j§;
         (_loc5_ = this.§^9§(param1,param2,param3,param4)).§#!Y§();
         return _loc5_;
      }
      
      protected function §^9§(param1:String, param2:Number, param3:Number, param4:int = -1) : §^j§
      {
         var _loc5_:§^j§ = new §^j§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§ N§.push(_loc5_);
         }
         else
         {
            this.§ N§.splice(param4,0,_loc5_);
         }
         this.§"h§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §#i§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §<q§)
         {
            this.§#J§();
            this.§+!"§ = 1000;
         }
         else if(this.mSlingShotState == §]!+§)
         {
            this.§#J§();
            this.§+!"§ = 0;
         }
         else if(this.mSlingShotState == §?$§)
         {
            this.§+!"§ = 10000;
            this.§7j§ = false;
            this.§#J§();
         }
         else if(this.mSlingShotState == §`;§)
         {
            this.§#J§();
            this.§+!"§ = 2000;
         }
         else if(this.mSlingShotState == §"-§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§7j§ = false;
               this.§#J§();
               this.§ N§[this.§7!2§].setPosition(this.§1!&§ - this.§ N§[this.§7!2§].radius * Math.cos(this.§'!"§ / (180 / Math.PI)),this.§;!f§ + this.§ N§[this.§7!2§].radius * Math.sin(this.§'!"§ / (180 / Math.PI)));
            }
            else
            {
               this.§#J§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §'!^§() : §@!k§
      {
         return this.mLevelMain;
      }
      
      public function §0'§() : Boolean
      {
         return this.mSlingShotState == §`;§ && this.§+!"§ <= 0;
      }
      
      private function §57§() : void
      {
         var _loc1_:§'!$§ = this.§]d§();
         var _loc2_:§,!"§ = _loc1_.getFrame(0);
         var _loc3_:§,!"§ = _loc1_.getFrame(1);
         this.§@G§ = new §<7§(_loc2_.texture);
         this.§@G§.scaleX = _loc2_.scale;
         this.§@G§.scaleY = _loc2_.scale;
         this.§,?§ = new §<7§(_loc3_.texture);
         this.§,?§.scaleX = _loc3_.scale;
         this.§,?§.scaleY = _loc3_.scale;
         this.§5!<§();
         this.§0![§();
         this.§"h§ = new Sprite();
         this.§[8§.addChild(this.§@G§);
         this.§[8§.addChild(this.§2!T§);
         this.§[8§.addChild(this.§"h§);
         this.§[8§.addChild(this.§>[§);
         this.§[8§.addChild(this.§-,§);
         this.§[8§.addChild(this.§,?§);
         this.§&!j§ = this.§[!5§ + 8.5;
      }
      
      protected function §]d§() : §'!$§
      {
         return this.mLevelMain.animationManager.getAnimation("SLINGSHOT");
      }
      
      public function §5!<§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§,X§ = this.§;b§;
         this.§2V§ = this.§[!5§;
         this.§2!R§ = §0]§.§;+§;
         _loc1_ = null;
      }
      
      protected function §0![§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§2!M§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §2!M§ = this.mLevelMain.textureManager.getTextureFromBitmapData(_loc2_);
         }
         this.§>[§ = new Sprite();
         var _loc1_:§<7§ = new §<7§(§2!M§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§>[§.addChild(_loc1_);
         this.§2!T§ = new Sprite();
         this.§&x§ = new §2c§(2,2,§=!6§);
         this.§2!T§.addChild(this.§&x§);
         this.§-,§ = new Sprite();
         this.§]!'§ = new §2c§(2,2,§=!6§);
         this.§-,§.addChild(this.§]!'§);
      }
      
      public function updateAnimations(param1:Number) : void
      {
         var _loc2_:Number = this.§;!f§ / §@!k§.§2!J§;
         var _loc3_:Number = this.§1!&§ / §@!k§.§2!J§;
         var _loc4_:Number = 3.5 + 8 * ((this.§2!R§ - this.§use§) / this.§2!R§);
         this.§>[§.x = _loc3_;
         this.§>[§.y = _loc2_;
         this.§>[§.rotation = -this.§'!"§ / (180 / Math.PI);
         this.§@G§.x = this.§;b§ / §@!k§.§2!J§ - 3;
         this.§@G§.y = this.§[!5§ / §@!k§.§2!J§ - 30;
         this.§,?§.x = this.§;b§ / §@!k§.§2!J§ - 30;
         this.§,?§.y = this.§[!5§ / §@!k§.§2!J§ - 30;
         this.§-,§.x = this.§;b§ / §@!k§.§2!J§ - 17;
         this.§-,§.y = this.§[!5§ / §@!k§.§2!J§ + 5;
         this.§-,§.rotation = Math.atan2(_loc2_ - this.§-,§.y,_loc3_ - this.§-,§.x);
         this.§2!T§.x = this.§;b§ / §@!k§.§2!J§ + 22;
         this.§2!T§.y = this.§[!5§ / §@!k§.§2!J§;
         this.§2!T§.rotation = Math.atan2(_loc2_ - this.§2!T§.y,_loc3_ - this.§2!T§.x);
         this.§]!'§.width = Math.sqrt(Math.pow(_loc3_ - this.§-,§.x,2) + Math.pow(_loc2_ - this.§-,§.y,2));
         this.§&x§.width = Math.sqrt(Math.pow(_loc3_ - this.§2!T§.x,2) + Math.pow(_loc2_ - this.§2!T§.y,2));
         this.§]!'§.height = this.§&x§.height = _loc4_ * 2;
         this.§]!'§.y = -this.§]!'§.height / 2;
         this.§&x§.y = -this.§&x§.height / 2;
         this.§=!k§ = false;
      }
      
      public function §^!O§() : void
      {
         while(this.§ N§.length > 0)
         {
            this.§5k§(0,true);
         }
         this.§8!m§();
         this.§^9§("BIRD_SARDINE",this.§;b§,this.§[!5§);
         this.§#i§(§?$§);
      }
      
      protected function §8!m§() : void
      {
         §5!6§.§8!G§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§#i§(§"-§);
      }
      
      public function §#J§() : void
      {
         this.setNewCoordinatesForRubber(this.§,X§,this.§2V§ + this.§2!R§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§1!&§ == param1 && this.§;!f§ == param2)
         {
            return true;
         }
         this.§use§ = Math.sqrt((param2 - this.§2V§) * (param2 - this.§2V§) + (param1 - this.§,X§) * (param1 - this.§,X§));
         if(this.§use§ > this.§2!R§)
         {
            if(param3)
            {
               this.§use§ = Math.sqrt((this.§;!f§ - this.§2V§) * (this.§;!f§ - this.§2V§) + (this.§1!&§ - this.§,X§) * (this.§1!&§ - this.§,X§));
               return false;
            }
            param1 = this.§,X§ + this.§2!R§ * (param1 - this.§,X§) / this.§use§;
            param2 = this.§2V§ + this.§2!R§ * (param2 - this.§2V§) / this.§use§;
            this.§use§ = this.§2!R§;
         }
         this.§1!&§ = param1;
         this.§;!f§ = param2;
         this.§'!"§ = Math.atan2(-(this.§;!f§ - this.§2V§),this.§1!&§ - this.§,X§);
         this.§'!"§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§1!&§ = param1 + this.§]!#§;
            this.§;!f§ = param2 + this.§&!@§;
            this.§'!"§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§2!R§ / 2;
         if(this.§use§ > _loc7_ && this.§'!"§ > -90 - _loc4_ + _loc5_ && this.§'!"§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§,X§ + _loc7_ * (param1 - this.§,X§) / this.§use§;
            param2 = this.§2V§ + _loc7_ * (param2 - this.§2V§) / this.§use§;
            this.§use§ = _loc7_;
            this.§1!&§ = param1;
            this.§;!f§ = param2;
         }
         else if(this.§use§ > _loc7_ && this.§'!"§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§'!"§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§2!R§ - _loc7_) * (Math.abs(this.§'!"§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§,X§ + _loc8_ * (param1 - this.§,X§) / this.§use§;
            param2 = this.§2V§ + _loc8_ * (param2 - this.§2V§) / this.§use§;
            this.§use§ = _loc8_;
            this.§1!&§ = param1;
            this.§;!f§ = param2;
         }
         if(this.§use§ <= this.§2!R§ * 0.45)
         {
            this.§+<§ = true;
         }
         else if(this.§+<§ && this.§use§ >= this.§2!R§ * 0.8)
         {
            this.§@!D§();
            this.§+<§ = false;
         }
         this.§=!k§ = true;
         return true;
      }
      
      protected function §@!D§() : void
      {
         §5!6§.§8!G§("SlingshotStreched");
      }
      
      public function §+'§(param1:Number) : void
      {
         this.setPosition(this.§;b§,this.§[!5§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§;b§;
         this.§;b§ = param1;
         var _loc5_:Number = param2 - this.§[!5§;
         this.§[!5§ = param2;
         this.§&!j§ += _loc5_;
         this.§2V§ += _loc5_;
         this.§;!f§ += _loc5_;
         this.§,X§ += _loc4_;
         this.§1!&§ += _loc4_;
         if(param3)
         {
            this.updateAnimations(0);
         }
         this.§=!k§ = true;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§^j§ = null;
         _loc2_ = this.§ N§[this.§7!2§];
         var _loc3_:Number = this.§use§ / this.§2!R§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§%!'§.BIRD_LAUNCH_FORCE_GREEN) : Number(§%!'§.BIRD_LAUNCH_FORCE);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §6D§() : Point
      {
         var _loc1_:§^j§ = null;
         if(this.§ N§.length > this.§7!2§)
         {
            _loc1_ = this.§ N§[this.§7!2§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §<b§() : Point
      {
         return new Point(this.§,X§,this.§2V§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§^j§ = null;
         this.§0q§(param1);
         if(this.§=!k§)
         {
            this.updateAnimations(param1);
         }
         this.§+!"§ -= param1;
         if(this.§+!"§ < 0)
         {
            this.§+!"§ = 0;
         }
         if(this.mSlingShotState != §`;§)
         {
            this.§?P§(param1,param2);
            _loc3_ = null;
            if(this.§ N§.length > 0)
            {
               _loc3_ = this.§ N§[this.§7!2§];
            }
            if(_loc3_)
            {
               _loc3_.§&`§(param1);
            }
            if(!_loc3_)
            {
               this.§#i§(§`;§);
            }
            else if(this.mSlingShotState == §<q§)
            {
               if(this.§+!"§ <= 0)
               {
                  this.§#i§(§]!+§);
                  _loc3_.§?D§();
               }
            }
            else if(this.mSlingShotState == §]!+§)
            {
               if(_loc3_.§4,§)
               {
                  this.§#i§(§?$§);
               }
            }
            else if(this.mSlingShotState == §?$§)
            {
               _loc3_.setPosition(this.§1!&§ - _loc3_.radius * Math.cos(this.§'!"§ / (180 / Math.PI)),this.§;!f§ + _loc3_.radius * Math.sin(this.§'!"§ / (180 / Math.PI)));
               if(this.§7j§)
               {
                  this.§`!f§(this.§use§ / this.§2!R§,this.§'!"§);
               }
            }
         }
      }
      
      public function §@!M§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§^j§ = null;
         if(this.§ N§.length > 0)
         {
            _loc5_ = this.§ N§[this.§7!2§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§`!f§(param3,param4);
      }
      
      protected function §`!f§(param1:Number, param2:Number) : void
      {
         var _loc3_:§^j§ = null;
         this.§]!#§ = §"@§;
         this.§&!@§ = §@O§;
         if(this.§ N§.length > 0)
         {
            _loc3_ = this.§ N§[this.§7!2§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§7j§ = false;
         this.§@a§ = new Date().time;
         this.mLevelMain.§+Y§(_loc3_,param1,param2);
         this.§5k§(this.§7!2§,_loc3_.§+O§ > 0);
         this.playBirdShotSound();
         if(this.§7!2§ >= this.§ N§.length)
         {
            this.§#i§(§`;§);
         }
         else
         {
            this.§#i§(§<q§);
         }
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §5!6§.§8!G§("BirdShot" + _loc1_);
      }
      
      public function §?P§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§7!2§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§ N§.length)
         {
            if(this.mSlingShotState == §"-§)
            {
               this.§ N§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§ N§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§^j§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§#J§();
         if(this.§ ;§ >= this.§ N§.length)
         {
            return false;
         }
         _loc1_ = this.§ N§[this.§ ;§];
         _loc2_ = §<!S§.§<!l§(_loc1_.name).score;
         this.mLevelMain.addScore(_loc2_,§66§.§'!+§,true,_loc1_.x,_loc1_.y - 3,§^!3§.§6O§(_loc1_.name));
         _loc1_.§;?§(-1,true);
         ++this.§ ;§;
         return true;
      }
      
      public function §4!C§() : int
      {
         var _loc2_:§^j§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§ N§)
         {
            _loc1_ += §<!S§.§<!l§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §@U§() : int
      {
         return this.§3!@§;
      }
      
      public function §0q§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§;!R§ >= 0)
         {
            this.§;!R§ -= param1;
            if(this.§;!R§ <= 0)
            {
               _loc2_ = this.mLevelMain.objects.§;d§(this.§,X§,this.§&!j§);
               if(_loc2_ < 0)
               {
                  this.§+'§(0.1);
                  this.§;!R§ = 0;
               }
               else if(!this.mLevelMain.objects.§'r§(_loc2_).§?Y§)
               {
                  this.§;!R§ = -1;
               }
               else if(this.mLevelMain.objects.§'r§(_loc2_).§`=§())
               {
                  this.§;!R§ = 2000;
               }
               else
               {
                  this.§;!R§ = 500;
               }
            }
         }
      }
      
      public function §get §() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.mLevelMain.objects.§;d§(this.§,X§,this.§&!j§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§+'§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§;!R§ = -1;
      }
      
      public function §&f§(param1:Number, param2:Number) : void
      {
         this.§[8§.x = -param1;
         this.§[8§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §?$§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §?$§ && this.§use§ > this.§2!R§ * §'!4§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§#i§(§?$§);
         var _loc1_:§^j§ = this.§ N§[this.§7!2§];
         _loc1_.§;?§(§]!S§.§9!i§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§^j§ = this.§ N§[this.§7!2§];
         _loc1_.§;?§(§]!S§.§3!l§);
      }
      
      public function shoot() : void
      {
         this.§7j§ = true;
      }
      
      protected function §5k§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§^j§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§ N§[param1])
         {
            _loc3_ = this.§ N§[param1];
            this.§"h§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§1!T§(this.§ N§[param1]);
            }
            _loc3_.dispose();
            this.§ N§[param1] = null;
         }
         this.§ N§.splice(param1,1);
      }
      
      public function §1!T§(param1:§^j§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §@!k§.§2!J§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §@!k§.§2!J§) + Math.random() * -_loc8_ * 2;
            this.mLevelMain.particles.§"!S§(§^!3§.§!!d§,§3b§.§;-§,§^!3§.§@<§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§^!3§.§ !N§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.mLevelMain.particles.§"!S§(§^!3§.§=X§,§3b§.§;-§,§^!3§.§@<§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §&9§(param1:§^j§) : void
      {
         this.§5k§(this.§ N§.indexOf(param1));
      }
      
      public function §0!#§() : void
      {
         var _loc2_:§^j§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§^j§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§ N§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§;b§ - this.§ N§[_loc1_].x) * (this.§;b§ - this.§ N§[_loc1_].x) + (this.§[!5§ - this.§ N§[_loc1_].y) * (this.§[!5§ - this.§ N§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§;b§ - this.§ N§[_loc1_ + 1].x) * (this.§;b§ - this.§ N§[_loc1_ + 1].x) + (this.§[!5§ - this.§ N§[_loc1_ + 1].y) * (this.§[!5§ - this.§ N§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§ N§[_loc1_];
               this.§ N§.splice(_loc1_,1);
               this.§ N§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§"h§.numChildren > 0)
         {
            this.§"h§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§ N§.length)
         {
            _loc2_ = this.§ N§[_loc1_];
            this.§"h§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §<!<§(param1:Number, param2:Number) : §^j§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§ N§.length)
         {
            if(this.§ N§[_loc3_])
            {
               if(this.§ N§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§ N§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §6K§(param1:Number, param2:Number) : §%!'§
      {
         if(param1 >= this.§;b§ - this.§2!R§ / 4 && param1 <= this.§;b§ + this.§2!R§ / 4 && param2 >= this.§[!5§ - this.§2!R§ / 4 && this.§[!5§ <= this.§&!j§)
         {
            return this;
         }
         return null;
      }
      
      public function §8e§(param1:§0%§) : void
      {
         var _loc3_:§^j§ = null;
         var _loc4_:§"E§ = null;
         param1.§^!5§ = this.§;b§;
         param1.§@Y§ = this.§[!5§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§ N§.length)
         {
            _loc3_ = this.§ N§[_loc2_];
            (_loc4_ = new §"E§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§'q§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §4!2§() : void
      {
         while(this.§ N§.length > 0)
         {
            this.§&9§(this.§ N§[0]);
         }
      }
      
      public function § !%§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§ N§.length)
         {
            if(this.§ N§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§ N§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§;b§ > param1.x && this.§;b§ < param2.x && this.§[!5§ > param1.y && this.§[!5§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function § l§() : Array
      {
         return [this.§,?§,this.§@G§];
      }
      
      public function §]N§(param1:String, param2:Number, param3:Number) : §^j§
      {
         var _loc4_:§^j§ = this.§^9§(param1,param2,param3);
         this.§0!#§();
         return _loc4_;
      }
      
      public function §#P§() : Number
      {
         return this.§ N§.length;
      }
   }
}
