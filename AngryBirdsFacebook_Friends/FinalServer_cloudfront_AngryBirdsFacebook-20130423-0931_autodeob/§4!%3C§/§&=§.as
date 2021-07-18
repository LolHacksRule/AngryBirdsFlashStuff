package §4!<§
{
   import §&E§.§0i§;
   import §&E§.§6!O§;
   import §'!6§.§ "E§;
   import §'!6§.§5T§;
   import §'!6§.Sprite;
   import §+!c§.§;!=§;
   import §-f§.§8!<§;
   import §-f§.§[!J§;
   import §8m§.§@"M§;
   import §9!n§.§0"T§;
   import §<5§.Texture;
   import §<T§.§4!N§;
   import §<T§.§^"5§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §super§.§^m§;
   
   public class §&=§
   {
      
      public static const §4"%§:int = 0;
      
      public static const §&e§:int = 1;
      
      public static const §9!H§:int = 2;
      
      public static const §&!K§:int = 3;
      
      public static const §+!`§:int = 5;
      
      public static const §2"!§:int = 3151368;
      
      protected static const §?A§:int = 8;
      
      protected static const §%![§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const BIRD_LAUNCH_FORCE_GREEN:Number = 52.5;
      
      protected static const §!"C§:Number = -0.7;
      
      protected static const §'§:Number = 0;
      
      protected static var §<!q§:Texture;
      
      public static const §=!$§:Number = 0.4;
       
      
      public var mLevelMain:§'!S§;
      
      public var §4!K§:Number;
      
      public var §7!#§:Number;
      
      public var §""P§:Number;
      
      protected var §?"M§:Number;
      
      protected var §5E§:Number;
      
      protected var §'!Z§:Number;
      
      protected var §[I§:Number;
      
      public var §;!8§:Number;
      
      public var §4q§:Boolean = false;
      
      protected var §]"4§:Number;
      
      public var §9!L§:Vector.<§ !X§>;
      
      public var §<"§:int;
      
      public var §5"U§:int = 0;
      
      public var §?"B§:int;
      
      public var §;z§:Number;
      
      public var §7!g§:Sprite;
      
      public var §>H§:int = 0;
      
      public var §[h§:Number = 0;
      
      public var §<!§:Array;
      
      public var §`a§:Array;
      
      public var mSlingShotState:int;
      
      public var §+C§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §4c§:Boolean = false;
      
      public var §8!T§:Number;
      
      protected var §0I§:Boolean = false;
      
      protected var §?!T§:Sprite;
      
      protected var §?"#§:§5T§;
      
      protected var §"&§:§5T§;
      
      protected var §8h§:Sprite;
      
      protected var §@"N§:Sprite;
      
      protected var §&"2§:Sprite;
      
      protected var §7]§:§ "E§;
      
      protected var §"%§:§ "E§;
      
      private var §+J§:Number = 0;
      
      private var §`"&§:int = 0;
      
      protected var §5![§:Number = -0.7;
      
      protected var §1!%§:Number = 0;
      
      public function §&=§(param1:§'!S§, param2:§0"T§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§^m§ = null;
         this.§9!L§ = new Vector.<§ !X§>();
         super();
         this.mLevelMain = param1;
         this.§?!T§ = param3;
         if(param2)
         {
            this.setPosition(param2.§7x§,param2.§;"H§);
            this.§>U§();
            _loc4_ = 0;
            while(_loc4_ < param2.§9X§)
            {
               _loc5_ = param2.§1!e§(_loc4_);
               this.addSlingshotObject(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§`"&§ = this.§@Z§();
            this.§<"§ = 0;
            if(this.§9!L§.length <= 0)
            {
               §;!=§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§4!K§ + " " + this.§7!#§);
               this.§^!]§(§&!K§);
            }
            else
            {
               this.§^!]§(§4"%§);
            }
         }
         else
         {
            §;!=§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§^!]§(§&!K§);
         }
         this.§8!T§ = 0;
         this.§5!r§();
         this.update(0,true);
         this.§5!$§();
         this.updateAnimations(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§?!T§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§+J§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§<"§ < this.§9!L§.length;
      }
      
      public function dispose() : void
      {
         while(this.§9!L§.length > 0)
         {
            this.§"!>§(0);
         }
         this.§9!L§ = null;
         if(this.§?!T§)
         {
            this.§?!T§.dispose();
            this.§?!T§ = null;
         }
         this.§7!g§ = null;
         this.§<!§ = null;
         this.§`a§ = null;
      }
      
      public function §<-§(param1:String, param2:Number, param3:Number, param4:int = -1) : § !X§
      {
         var _loc5_:§ !X§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,param4)).§8""§();
         this.§^!]§(§9!H§);
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : § !X§
      {
         var _loc5_:§ !X§ = new § !X§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§9!L§.push(_loc5_);
         }
         else
         {
            this.§9!L§.splice(param4,0,_loc5_);
         }
         this.§7!g§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §^!]§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §4"%§)
         {
            this.§?!r§();
            this.§;z§ = 1000;
         }
         else if(this.mSlingShotState == §&e§)
         {
            this.§?!r§();
            this.§;z§ = 0;
         }
         else if(this.mSlingShotState == §9!H§)
         {
            this.§;z§ = 10000;
            this.§4c§ = false;
            this.§?!r§();
         }
         else if(this.mSlingShotState == §&!K§)
         {
            this.§?!r§();
            this.§;z§ = 2000;
         }
         else if(this.mSlingShotState == §+!`§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§4c§ = false;
               this.§?!r§();
               this.§9!L§[this.§<"§].setPosition(this.§'!Z§ - this.§9!L§[this.§<"§].radius * Math.cos(this.§[h§ / (180 / Math.PI)),this.§[I§ + this.§9!L§[this.§<"§].radius * Math.sin(this.§[h§ / (180 / Math.PI)));
            }
            else
            {
               this.§?!r§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §3![§() : §'!S§
      {
         return this.mLevelMain;
      }
      
      public function §6"+§() : Boolean
      {
         return this.mSlingShotState == §&!K§ && this.§;z§ <= 0;
      }
      
      private function §>U§() : void
      {
         var _loc1_:§4!N§ = this.getSlingshotAnimation();
         var _loc2_:§^"5§ = _loc1_.getFrame(0);
         var _loc3_:§^"5§ = _loc1_.getFrame(1);
         this.§7]§ = new § "E§(_loc2_.texture);
         this.§7]§.scaleX = _loc2_.scale;
         this.§7]§.scaleY = _loc2_.scale;
         this.§"%§ = new § "E§(_loc3_.texture);
         this.§"%§.scaleX = _loc3_.scale;
         this.§"%§.scaleY = _loc3_.scale;
         this.§0!,§();
         this.§14§();
         this.§7!g§ = new Sprite();
         this.§?!T§.addChild(this.§7]§);
         this.§?!T§.addChild(this.§8h§);
         this.§?!T§.addChild(this.§7!g§);
         this.§?!T§.addChild(this.§&"2§);
         this.§?!T§.addChild(this.§@"N§);
         this.§?!T§.addChild(this.§"%§);
         this.§""P§ = this.§7!#§ + 8.5;
      }
      
      protected function getSlingshotAnimation() : §4!N§
      {
         return this.mLevelMain.animationManager.getAnimation("SLINGSHOT");
      }
      
      public function §0!,§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§?"M§ = this.§4!K§;
         this.§5E§ = this.§7!#§;
         this.§]"4§ = §^!Z§.§1=§;
         _loc1_ = null;
      }
      
      protected function §14§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§<!q§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §<!q§ = this.mLevelMain.textureManager.getTextureFromBitmapData(_loc2_);
         }
         this.§&"2§ = new Sprite();
         var _loc1_:§ "E§ = new § "E§(§<!q§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§&"2§.addChild(_loc1_);
         this.§8h§ = new Sprite();
         this.§?"#§ = new §5T§(2,2,§2"!§);
         this.§8h§.addChild(this.§?"#§);
         this.§@"N§ = new Sprite();
         this.§"&§ = new §5T§(2,2,§2"!§);
         this.§@"N§.addChild(this.§"&§);
      }
      
      public function updateAnimations(param1:Number) : void
      {
         var _loc2_:Number = this.§[I§ / §'!S§.§2"<§;
         var _loc3_:Number = this.§'!Z§ / §'!S§.§2"<§;
         var _loc4_:Number = 3.5 + 8 * ((this.§]"4§ - this.§;!8§) / this.§]"4§);
         this.§&"2§.x = _loc3_;
         this.§&"2§.y = _loc2_;
         this.§&"2§.rotation = -this.§[h§ / (180 / Math.PI);
         this.§7]§.x = this.§4!K§ / §'!S§.§2"<§ - 3;
         this.§7]§.y = this.§7!#§ / §'!S§.§2"<§ - 30;
         this.§"%§.x = this.§4!K§ / §'!S§.§2"<§ - 30;
         this.§"%§.y = this.§7!#§ / §'!S§.§2"<§ - 30;
         this.§@"N§.x = this.§4!K§ / §'!S§.§2"<§ - 17;
         this.§@"N§.y = this.§7!#§ / §'!S§.§2"<§ + 5;
         this.§@"N§.rotation = Math.atan2(_loc2_ - this.§@"N§.y,_loc3_ - this.§@"N§.x);
         this.§8h§.x = this.§4!K§ / §'!S§.§2"<§ + 22;
         this.§8h§.y = this.§7!#§ / §'!S§.§2"<§;
         this.§8h§.rotation = Math.atan2(_loc2_ - this.§8h§.y,_loc3_ - this.§8h§.x);
         this.§"&§.width = Math.sqrt(Math.pow(_loc3_ - this.§@"N§.x,2) + Math.pow(_loc2_ - this.§@"N§.y,2));
         this.§?"#§.width = Math.sqrt(Math.pow(_loc3_ - this.§8h§.x,2) + Math.pow(_loc2_ - this.§8h§.y,2));
         this.§"&§.height = this.§?"#§.height = _loc4_ * 2;
         this.§"&§.y = -this.§"&§.height / 2;
         this.§?"#§.y = -this.§?"#§.height / 2;
         this.§+C§ = false;
      }
      
      public function useMightyEagle() : void
      {
         while(this.§9!L§.length > 0)
         {
            this.§"!>§(0,true);
         }
         this.§4N§();
         this.addSlingshotObject("BIRD_SARDINE",this.§4!K§,this.§7!#§);
         this.§^!]§(§9!H§);
      }
      
      protected function §4N§() : void
      {
         §@"M§.§3"C§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§^!]§(§+!`§);
      }
      
      public function §?!r§() : void
      {
         this.setNewCoordinatesForRubber(this.§?"M§,this.§5E§ + this.§]"4§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§'!Z§ == param1 && this.§[I§ == param2)
         {
            return true;
         }
         this.§;!8§ = Math.sqrt((param2 - this.§5E§) * (param2 - this.§5E§) + (param1 - this.§?"M§) * (param1 - this.§?"M§));
         if(this.§;!8§ > this.§]"4§)
         {
            if(param3)
            {
               this.§;!8§ = Math.sqrt((this.§[I§ - this.§5E§) * (this.§[I§ - this.§5E§) + (this.§'!Z§ - this.§?"M§) * (this.§'!Z§ - this.§?"M§));
               return false;
            }
            param1 = this.§?"M§ + this.§]"4§ * (param1 - this.§?"M§) / this.§;!8§;
            param2 = this.§5E§ + this.§]"4§ * (param2 - this.§5E§) / this.§;!8§;
            this.§;!8§ = this.§]"4§;
         }
         this.§'!Z§ = param1;
         this.§[I§ = param2;
         this.§[h§ = Math.atan2(-(this.§[I§ - this.§5E§),this.§'!Z§ - this.§?"M§);
         this.§[h§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§'!Z§ = param1 + this.§5![§;
            this.§[I§ = param2 + this.§1!%§;
            this.§[h§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§]"4§ / 2;
         if(this.§;!8§ > _loc7_ && this.§[h§ > -90 - _loc4_ + _loc5_ && this.§[h§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§?"M§ + _loc7_ * (param1 - this.§?"M§) / this.§;!8§;
            param2 = this.§5E§ + _loc7_ * (param2 - this.§5E§) / this.§;!8§;
            this.§;!8§ = _loc7_;
            this.§'!Z§ = param1;
            this.§[I§ = param2;
         }
         else if(this.§;!8§ > _loc7_ && this.§[h§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§[h§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§]"4§ - _loc7_) * (Math.abs(this.§[h§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§?"M§ + _loc8_ * (param1 - this.§?"M§) / this.§;!8§;
            param2 = this.§5E§ + _loc8_ * (param2 - this.§5E§) / this.§;!8§;
            this.§;!8§ = _loc8_;
            this.§'!Z§ = param1;
            this.§[I§ = param2;
         }
         if(this.§;!8§ <= this.§]"4§ * 0.45)
         {
            this.§4q§ = true;
         }
         else if(this.§4q§ && this.§;!8§ >= this.§]"4§ * 0.8)
         {
            this.§&!n§();
            this.§4q§ = false;
         }
         this.§+C§ = true;
         return true;
      }
      
      protected function §&!n§() : void
      {
         §@"M§.§3"C§("SlingshotStreched");
      }
      
      public function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§4!K§,this.§7!#§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§4!K§;
         this.§4!K§ = param1;
         var _loc5_:Number = param2 - this.§7!#§;
         this.§7!#§ = param2;
         this.§""P§ += _loc5_;
         this.§5E§ += _loc5_;
         this.§[I§ += _loc5_;
         this.§?"M§ += _loc4_;
         this.§'!Z§ += _loc4_;
         if(param3)
         {
            this.updateAnimations(0);
         }
         this.§+C§ = true;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§ !X§ = null;
         _loc2_ = this.§9!L§[this.§<"§];
         var _loc3_:Number = this.§;!8§ / this.§]"4§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§&=§.BIRD_LAUNCH_FORCE_GREEN) : Number(§&=§.BIRD_LAUNCH_FORCE);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §@!]§() : Point
      {
         var _loc1_:§ !X§ = null;
         if(this.§9!L§.length > this.§<"§)
         {
            _loc1_ = this.§9!L§[this.§<"§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §+"8§() : Point
      {
         return new Point(this.§?"M§,this.§5E§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§ !X§ = null;
         this.updateGroundControl(param1);
         if(this.§+C§)
         {
            this.updateAnimations(param1);
         }
         this.§;z§ -= param1;
         if(this.§;z§ < 0)
         {
            this.§;z§ = 0;
         }
         if(this.mSlingShotState != §&!K§)
         {
            this.§`8§(param1,param2);
            _loc3_ = null;
            if(this.§9!L§.length > 0)
            {
               _loc3_ = this.§9!L§[this.§<"§];
            }
            if(_loc3_)
            {
               _loc3_.§<!c§(param1);
            }
            if(!_loc3_)
            {
               this.§^!]§(§&!K§);
            }
            else if(this.mSlingShotState == §4"%§)
            {
               if(this.§;z§ <= 0)
               {
                  this.§^!]§(§&e§);
                  _loc3_.§2!K§();
               }
            }
            else if(this.mSlingShotState == §&e§)
            {
               if(_loc3_.§'K§)
               {
                  this.§^!]§(§9!H§);
               }
            }
            else if(this.mSlingShotState == §9!H§)
            {
               if(!_loc3_.§0s§())
               {
                  _loc3_.setPosition(this.§'!Z§ - _loc3_.radius * Math.cos(this.§[h§ / (180 / Math.PI)),this.§[I§ + _loc3_.radius * Math.sin(this.§[h§ / (180 / Math.PI)));
               }
               if(this.§4c§)
               {
                  this.§6W§(this.§;!8§ / this.§]"4§,this.§[h§);
               }
            }
         }
      }
      
      public function §;"4§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§ !X§ = null;
         if(this.§9!L§.length > 0)
         {
            _loc5_ = this.§9!L§[this.§<"§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§6W§(param3,param4);
      }
      
      protected function §6W§(param1:Number, param2:Number) : void
      {
         var _loc3_:§ !X§ = null;
         this.§5![§ = §!"C§;
         this.§1!%§ = §'§;
         if(this.§9!L§.length > 0)
         {
            _loc3_ = this.§9!L§[this.§<"§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§4c§ = false;
         this.§+J§ = new Date().time;
         this.mLevelMain.§9"+§(_loc3_,param1,param2);
         this.§"!>§(this.§<"§,_loc3_.§5J§ > 0);
         this.playBirdShotSound();
         if(this.§<"§ >= this.§9!L§.length)
         {
            this.§^!]§(§&!K§);
         }
         else
         {
            this.§^!]§(§4"%§);
         }
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §@"M§.§3"C§("BirdShot" + _loc1_);
      }
      
      public function §`8§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§<"§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§9!L§.length)
         {
            if(this.mSlingShotState == §+!`§)
            {
               this.§9!L§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§9!L§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§ !X§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§?!r§();
         if(this.§?"B§ >= this.§9!L§.length)
         {
            return false;
         }
         _loc1_ = this.§9!L§[this.§?"B§];
         _loc2_ = §8!<§.§3"[§(_loc1_.name).score;
         this.mLevelMain.addScore(_loc2_,§;P§.§0n§,true,_loc1_.x,_loc1_.y - 3,§0i§.§7R§(_loc1_.name));
         _loc1_.§!H§(-1,true);
         ++this.§?"B§;
         return true;
      }
      
      public function §@Z§() : int
      {
         var _loc2_:§ !X§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§9!L§)
         {
            _loc1_ += §8!<§.§3"[§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §^w§() : int
      {
         return this.§`"&§;
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§8!T§ >= 0)
         {
            this.§8!T§ -= param1;
            if(this.§8!T§ <= 0)
            {
               _loc2_ = this.mLevelMain.objects.§'n§(this.§?"M§,this.§""P§);
               if(_loc2_ < 0)
               {
                  this.applyGravity(0.1);
                  this.§8!T§ = 0;
               }
               else if(!this.mLevelMain.objects.§,!§(_loc2_).§[p§)
               {
                  this.§8!T§ = -1;
               }
               else if(this.mLevelMain.objects.§,!§(_loc2_).§]!!§())
               {
                  this.§8!T§ = 2000;
               }
               else
               {
                  this.§8!T§ = 500;
               }
            }
         }
      }
      
      public function §5!$§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.mLevelMain.objects.§'n§(this.§?"M§,this.§""P§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.applyGravity(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§8!T§ = -1;
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§?!T§.x = -param1;
         this.§?!T§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §9!H§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §9!H§ && this.§;!8§ > this.§]"4§ * §=!$§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§^!]§(§9!H§);
         var _loc1_:§ !X§ = this.§9!L§[this.§<"§];
         _loc1_.§!H§(§[!J§.§8"V§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§ !X§ = this.§9!L§[this.§<"§];
         _loc1_.§!H§(§[!J§.§4p§);
      }
      
      public function shoot() : void
      {
         this.§4c§ = true;
      }
      
      protected function §"!>§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§ !X§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§9!L§[param1])
         {
            _loc3_ = this.§9!L§[param1];
            this.§7!g§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§1"%§(this.§9!L§[param1]);
            }
            _loc3_.dispose();
            this.§9!L§[param1] = null;
         }
         this.§9!L§.splice(param1,1);
      }
      
      public function §1"%§(param1:§ !X§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §'!S§.§2"<§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §'!S§.§2"<§) + Math.random() * -_loc8_ * 2;
            this.mLevelMain.particles.§"!J§(§0i§.§#"D§,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,param1.x + _loc7_,param1.y + _loc8_,1500,"",§0i§.getParticleMaterialFromEngineMaterial(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.mLevelMain.particles.§"!J§(§0i§.§'!N§,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §8`§(param1:§ !X§) : void
      {
         this.§"!>§(this.§9!L§.indexOf(param1));
      }
      
      public function §5!r§() : void
      {
         var _loc1_:§ !X§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§ !X§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§9!L§.length - 1)
         {
            _loc1_ = this.§9!L§[_loc2_];
            if(!(_loc1_.§'K§ && _loc2_ == 0))
            {
               _loc3_ = Math.sqrt((this.§4!K§ - this.§9!L§[_loc2_].x) * (this.§4!K§ - this.§9!L§[_loc2_].x) + (this.§7!#§ - this.§9!L§[_loc2_].y) * (this.§7!#§ - this.§9!L§[_loc2_].y));
               if((_loc4_ = Math.sqrt((this.§4!K§ - this.§9!L§[_loc2_ + 1].x) * (this.§4!K§ - this.§9!L§[_loc2_ + 1].x) + (this.§7!#§ - this.§9!L§[_loc2_ + 1].y) * (this.§7!#§ - this.§9!L§[_loc2_ + 1].y))) < _loc3_)
               {
                  _loc5_ = this.§9!L§[_loc2_];
                  this.§9!L§.splice(_loc2_,1);
                  this.§9!L§.splice(_loc2_ + 1,0,_loc5_);
                  _loc2_ = Math.max(-1,_loc2_ - 2);
               }
            }
            _loc2_++;
         }
         while(this.§7!g§.numChildren > 0)
         {
            this.§7!g§.removeChildAt(0);
         }
         _loc2_ = 0;
         while(_loc2_ < this.§9!L§.length)
         {
            _loc1_ = this.§9!L§[_loc2_];
            this.§7!g§.addChildAt(_loc1_.sprite,0);
            _loc2_++;
         }
      }
      
      public function §?!#§(param1:Number, param2:Number) : § !X§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§9!L§.length)
         {
            if(this.§9!L§[_loc3_])
            {
               if(this.§9!L§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§9!L§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §+!D§(param1:Number, param2:Number) : §&=§
      {
         if(param1 >= this.§4!K§ - this.§]"4§ / 4 && param1 <= this.§4!K§ + this.§]"4§ / 4 && param2 >= this.§7!#§ - this.§]"4§ / 4 && this.§7!#§ <= this.§""P§)
         {
            return this;
         }
         return null;
      }
      
      public function §4!U§(param1:§0"T§) : void
      {
         var _loc3_:§ !X§ = null;
         var _loc4_:§^m§ = null;
         param1.§7x§ = this.§4!K§;
         param1.§;"H§ = this.§7!#§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§9!L§.length)
         {
            _loc3_ = this.§9!L§[_loc2_];
            (_loc4_ = new §^m§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§78§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §#!^§() : void
      {
         while(this.§9!L§.length > 0)
         {
            this.§8`§(this.§9!L§[0]);
         }
      }
      
      public function §7!r§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§9!L§.length)
         {
            if(this.§9!L§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§9!L§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§4!K§ > param1.x && this.§4!K§ < param2.x && this.§7!#§ > param1.y && this.§7!#§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §38§() : Array
      {
         return [this.§"%§,this.§7]§];
      }
      
      public function §6p§(param1:String, param2:Number, param3:Number) : § !X§
      {
         var _loc4_:§ !X§ = this.addSlingshotObject(param1,param2,param3);
         this.§5!r§();
         return _loc4_;
      }
      
      public function §0"I§() : Number
      {
         return this.§9!L§.length;
      }
      
      public function §]K§() : Boolean
      {
         return this.§0I§;
      }
   }
}
