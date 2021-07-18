package §9T§
{
   import § N§.§1!A§;
   import § N§.§6!O§;
   import § N§.Sprite;
   import §#e§.§4^§;
   import §#e§.§`!9§;
   import §&^§.§[!7§;
   import §&o§.§3I§;
   import §-!<§.§5!5§;
   import §-!<§.§8R§;
   import §2G§.§0Z§;
   import §2G§.§>U§;
   import §8z§.Texture;
   import §^]§.§[z§;
   import §`K§.§ L§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §97§
   {
      
      public static const §^#§:int = 0;
      
      public static const §%i§:int = 1;
      
      public static const §[V§:int = 2;
      
      public static const §5!I§:int = 3;
      
      public static const §=!O§:int = 5;
      
      public static const §#!9§:int = 3151368;
      
      protected static const §5B§:int = 8;
      
      protected static const § #§:int = 0;
      
      public static const §]!4§:Number = 46.25;
      
      public static const §]c§:Number = 52.5;
      
      protected static const §2+§:Number = -0.7;
      
      protected static const §if§:Number = 0;
      
      protected static var §6F§:Texture;
      
      public static const §,!J§:Number = 0.4;
       
      
      public var §;§:§1r§;
      
      public var §]!B§:Number;
      
      public var §5G§:Number;
      
      public var §<;§:Number;
      
      protected var §'u§:Number;
      
      protected var §"!C§:Number;
      
      protected var §3!1§:Number;
      
      protected var §;4§:Number;
      
      public var §?"§:Number;
      
      public var §?A§:Boolean = false;
      
      protected var §&$§:Number;
      
      public var §,N§:Vector.<§>>§>;
      
      public var §4'§:int;
      
      public var §;b§:int;
      
      public var §5!N§:Number;
      
      public var §`5§:Sprite;
      
      public var §=!"§:int = 0;
      
      public var §7!"§:Number = 0;
      
      public var §;9§:Array;
      
      public var §!!<§:Array;
      
      public var mSlingShotState:int;
      
      public var §0!-§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §;&§:Boolean = false;
      
      public var §7g§:Number;
      
      protected var §8A§:Sprite;
      
      protected var §>`§:§6!O§;
      
      protected var §&V§:§6!O§;
      
      protected var §9!P§:Sprite;
      
      protected var §&X§:Sprite;
      
      protected var §<w§:Sprite;
      
      protected var §,!§:§1!A§;
      
      protected var §?!J§:§1!A§;
      
      private var §=J§:Number = 0;
      
      private var §8=§:int = 0;
      
      protected var §4!Q§:Number = -0.7;
      
      protected var §2!P§:Number = 0;
      
      public function §97§(param1:§1r§, param2:§[z§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§3I§ = null;
         this.§,N§ = new Vector.<§>>§>();
         super();
         this.§;§ = param1;
         this.§8A§ = param3;
         if(param2)
         {
            this.setPosition(param2.§6!C§,param2.§#2§);
            this.§2-§();
            _loc4_ = 0;
            while(_loc4_ < param2.§ l§)
            {
               _loc5_ = param2.§]O§(_loc4_);
               this.§[!E§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§8=§ = this.§,u§();
            this.§4'§ = 0;
            if(this.§,N§.length <= 0)
            {
               § L§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§]!B§ + " " + this.§5G§);
               this.§#m§(§5!I§);
            }
            else
            {
               this.§#m§(§^#§);
            }
         }
         else
         {
            § L§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§#m§(§5!I§);
         }
         this.§7g§ = 0;
         this.§;!O§();
         this.update(0,true);
         this.§,w§();
         this.§<!P§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§8A§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§=J§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§4'§ < this.§,N§.length;
      }
      
      public function dispose() : void
      {
         while(this.§,N§.length > 0)
         {
            this.§+L§(0);
         }
         this.§,N§ = null;
         if(this.§8A§)
         {
            this.§8A§.dispose();
            this.§8A§ = null;
         }
         this.§`5§ = null;
         this.§;9§ = null;
         this.§!!<§ = null;
      }
      
      public function §^?§(param1:String, param2:Number, param3:Number, param4:int = -1) : §>>§
      {
         var _loc5_:§>>§;
         (_loc5_ = this.§[!E§(param1,param2,param3,param4)).§4b§();
         return _loc5_;
      }
      
      protected function §[!E§(param1:String, param2:Number, param3:Number, param4:int = -1) : §>>§
      {
         var _loc5_:§>>§ = new §>>§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§,N§.push(_loc5_);
         }
         else
         {
            this.§,N§.splice(param4,0,_loc5_);
         }
         this.§`5§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §#m§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §^#§)
         {
            this.§=g§();
            this.§5!N§ = 1000;
         }
         else if(this.mSlingShotState == §%i§)
         {
            this.§=g§();
            this.§5!N§ = 0;
         }
         else if(this.mSlingShotState == §[V§)
         {
            this.§5!N§ = 10000;
            this.§;&§ = false;
            this.§=g§();
         }
         else if(this.mSlingShotState == §5!I§)
         {
            this.§=g§();
            this.§5!N§ = 2000;
         }
         else if(this.mSlingShotState == §=!O§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§;&§ = false;
               this.§=g§();
               this.§,N§[this.§4'§].setPosition(this.§3!1§ - this.§,N§[this.§4'§].radius * Math.cos(this.§7!"§ / (180 / Math.PI)),this.§;4§ + this.§,N§[this.§4'§].radius * Math.sin(this.§7!"§ / (180 / Math.PI)));
            }
            else
            {
               this.§=g§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §'k§() : §1r§
      {
         return this.§;§;
      }
      
      public function §7!3§() : Boolean
      {
         return this.mSlingShotState == §5!I§ && this.§5!N§ <= 0;
      }
      
      private function §2-§() : void
      {
         var _loc1_:§4^§ = this.§[,§();
         var _loc2_:§`!9§ = _loc1_.getFrame(0);
         var _loc3_:§`!9§ = _loc1_.getFrame(1);
         this.§,!§ = new §1!A§(_loc2_.texture);
         this.§,!§.scaleX = _loc2_.scale;
         this.§,!§.scaleY = _loc2_.scale;
         this.§?!J§ = new §1!A§(_loc3_.texture);
         this.§?!J§.scaleX = _loc3_.scale;
         this.§?!J§.scaleY = _loc3_.scale;
         this.§[!<§();
         this.§@o§();
         this.§`5§ = new Sprite();
         this.§8A§.addChild(this.§,!§);
         this.§8A§.addChild(this.§9!P§);
         this.§8A§.addChild(this.§`5§);
         this.§8A§.addChild(this.§<w§);
         this.§8A§.addChild(this.§&X§);
         this.§8A§.addChild(this.§?!J§);
         this.§<;§ = this.§5G§ + 8.5;
      }
      
      protected function §[,§() : §4^§
      {
         return this.§;§.§<'§.getAnimation("SLINGSHOT");
      }
      
      public function §[!<§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§'u§ = this.§]!B§;
         this.§"!C§ = this.§5G§;
         this.§&$§ = Tuner.§<!M§;
         _loc1_ = null;
      }
      
      protected function §@o§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§6F§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §6F§ = this.§;§.textureManager.§'b§(_loc2_);
         }
         this.§<w§ = new Sprite();
         var _loc1_:§1!A§ = new §1!A§(§6F§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§<w§.addChild(_loc1_);
         this.§9!P§ = new Sprite();
         this.§>`§ = new §6!O§(2,2,§#!9§);
         this.§9!P§.addChild(this.§>`§);
         this.§&X§ = new Sprite();
         this.§&V§ = new §6!O§(2,2,§#!9§);
         this.§&X§.addChild(this.§&V§);
      }
      
      public function §<!P§(param1:Number) : void
      {
         var _loc2_:Number = this.§;4§ / §1r§.§[M§;
         var _loc3_:Number = this.§3!1§ / §1r§.§[M§;
         var _loc4_:Number = 3.5 + 8 * ((this.§&$§ - this.§?"§) / this.§&$§);
         this.§<w§.x = _loc3_;
         this.§<w§.y = _loc2_;
         this.§<w§.rotation = -this.§7!"§ / (180 / Math.PI);
         this.§,!§.x = this.§]!B§ / §1r§.§[M§ - 3;
         this.§,!§.y = this.§5G§ / §1r§.§[M§ - 30;
         this.§?!J§.x = this.§]!B§ / §1r§.§[M§ - 30;
         this.§?!J§.y = this.§5G§ / §1r§.§[M§ - 30;
         this.§&X§.x = this.§]!B§ / §1r§.§[M§ - 17;
         this.§&X§.y = this.§5G§ / §1r§.§[M§ + 5;
         this.§&X§.rotation = Math.atan2(_loc2_ - this.§&X§.y,_loc3_ - this.§&X§.x);
         this.§9!P§.x = this.§]!B§ / §1r§.§[M§ + 22;
         this.§9!P§.y = this.§5G§ / §1r§.§[M§;
         this.§9!P§.rotation = Math.atan2(_loc2_ - this.§9!P§.y,_loc3_ - this.§9!P§.x);
         this.§&V§.width = Math.sqrt(Math.pow(_loc3_ - this.§&X§.x,2) + Math.pow(_loc2_ - this.§&X§.y,2));
         this.§>`§.width = Math.sqrt(Math.pow(_loc3_ - this.§9!P§.x,2) + Math.pow(_loc2_ - this.§9!P§.y,2));
         this.§&V§.height = this.§>`§.height = _loc4_ * 2;
         this.§&V§.y = -this.§&V§.height / 2;
         this.§>`§.y = -this.§>`§.height / 2;
         this.§0!-§ = false;
      }
      
      public function §`r§() : void
      {
         while(this.§,N§.length > 0)
         {
            this.§+L§(0,true);
         }
         this.§%a§();
         this.§[!E§("BIRD_SARDINE",this.§]!B§,this.§5G§);
         this.§#m§(§[V§);
      }
      
      protected function §%a§() : void
      {
         §[!7§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§#m§(§=!O§);
      }
      
      public function §=g§() : void
      {
         this.setNewCoordinatesForRubber(this.§'u§,this.§"!C§ + this.§&$§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§3!1§ == param1 && this.§;4§ == param2)
         {
            return true;
         }
         this.§?"§ = Math.sqrt((param2 - this.§"!C§) * (param2 - this.§"!C§) + (param1 - this.§'u§) * (param1 - this.§'u§));
         if(this.§?"§ > this.§&$§)
         {
            if(param3)
            {
               this.§?"§ = Math.sqrt((this.§;4§ - this.§"!C§) * (this.§;4§ - this.§"!C§) + (this.§3!1§ - this.§'u§) * (this.§3!1§ - this.§'u§));
               return false;
            }
            param1 = this.§'u§ + this.§&$§ * (param1 - this.§'u§) / this.§?"§;
            param2 = this.§"!C§ + this.§&$§ * (param2 - this.§"!C§) / this.§?"§;
            this.§?"§ = this.§&$§;
         }
         this.§3!1§ = param1;
         this.§;4§ = param2;
         this.§7!"§ = Math.atan2(-(this.§;4§ - this.§"!C§),this.§3!1§ - this.§'u§);
         this.§7!"§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§3!1§ = param1 + this.§4!Q§;
            this.§;4§ = param2 + this.§2!P§;
            this.§7!"§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§&$§ / 2;
         if(this.§?"§ > _loc7_ && this.§7!"§ > -90 - _loc4_ + _loc5_ && this.§7!"§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§'u§ + _loc7_ * (param1 - this.§'u§) / this.§?"§;
            param2 = this.§"!C§ + _loc7_ * (param2 - this.§"!C§) / this.§?"§;
            this.§?"§ = _loc7_;
            this.§3!1§ = param1;
            this.§;4§ = param2;
         }
         else if(this.§?"§ > _loc7_ && this.§7!"§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§7!"§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§&$§ - _loc7_) * (Math.abs(this.§7!"§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§'u§ + _loc8_ * (param1 - this.§'u§) / this.§?"§;
            param2 = this.§"!C§ + _loc8_ * (param2 - this.§"!C§) / this.§?"§;
            this.§?"§ = _loc8_;
            this.§3!1§ = param1;
            this.§;4§ = param2;
         }
         if(this.§?"§ <= this.§&$§ * 0.45)
         {
            this.§?A§ = true;
         }
         else if(this.§?A§ && this.§?"§ >= this.§&$§ * 0.8)
         {
            this.§7l§();
            this.§?A§ = false;
         }
         this.§0!-§ = true;
         return true;
      }
      
      protected function §7l§() : void
      {
         §[!7§.playSound("SlingshotStreched");
      }
      
      public function §!#§(param1:Number) : void
      {
         this.setPosition(this.§]!B§,this.§5G§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§]!B§;
         this.§]!B§ = param1;
         var _loc5_:Number = param2 - this.§5G§;
         this.§5G§ = param2;
         this.§<;§ += _loc5_;
         this.§"!C§ += _loc5_;
         this.§;4§ += _loc5_;
         this.§'u§ += _loc4_;
         this.§3!1§ += _loc4_;
         if(param3)
         {
            this.§<!P§(0);
         }
         this.§0!-§ = true;
      }
      
      public function §9M§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§>>§ = null;
         _loc2_ = this.§,N§[this.§4'§];
         var _loc3_:Number = this.§?"§ / this.§&$§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§97§.§]c§) : Number(§97§.§]!4§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §#I§() : Point
      {
         var _loc1_:§>>§ = null;
         if(this.§,N§.length > this.§4'§)
         {
            _loc1_ = this.§,N§[this.§4'§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §function§() : Point
      {
         return new Point(this.§'u§,this.§"!C§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§>>§ = null;
         this.§'i§(param1);
         if(this.§0!-§)
         {
            this.§<!P§(param1);
         }
         this.§5!N§ -= param1;
         if(this.§5!N§ < 0)
         {
            this.§5!N§ = 0;
         }
         if(this.mSlingShotState != §5!I§)
         {
            this.§'C§(param1,param2);
            _loc3_ = null;
            if(this.§,N§.length > 0)
            {
               _loc3_ = this.§,N§[this.§4'§];
            }
            if(_loc3_)
            {
               _loc3_.§%!@§(param1);
            }
            if(!_loc3_)
            {
               this.§#m§(§5!I§);
            }
            else if(this.mSlingShotState == §^#§)
            {
               if(this.§5!N§ <= 0)
               {
                  this.§#m§(§%i§);
                  _loc3_.§!!I§();
               }
            }
            else if(this.mSlingShotState == §%i§)
            {
               if(_loc3_.§8!'§)
               {
                  this.§#m§(§[V§);
               }
            }
            else if(this.mSlingShotState == §[V§)
            {
               _loc3_.setPosition(this.§3!1§ - _loc3_.radius * Math.cos(this.§7!"§ / (180 / Math.PI)),this.§;4§ + _loc3_.radius * Math.sin(this.§7!"§ / (180 / Math.PI)));
               if(this.§;&§)
               {
                  this.§11§(this.§?"§ / this.§&$§,this.§7!"§);
               }
            }
         }
      }
      
      public function §!z§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§>>§ = null;
         if(this.§,N§.length > 0)
         {
            _loc5_ = this.§,N§[this.§4'§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§11§(param3,param4);
      }
      
      protected function §11§(param1:Number, param2:Number) : void
      {
         var _loc3_:§>>§ = null;
         this.§4!Q§ = §2+§;
         this.§2!P§ = §if§;
         if(this.§,N§.length > 0)
         {
            _loc3_ = this.§,N§[this.§4'§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§;&§ = false;
         this.§=J§ = new Date().time;
         this.§;§.shootBird(_loc3_,param1,param2);
         this.§+L§(this.§4'§,_loc3_.§4!9§ > 0);
         this.§6`§();
         if(this.§4'§ >= this.§,N§.length)
         {
            this.§#m§(§5!I§);
         }
         else
         {
            this.§#m§(§^#§);
         }
      }
      
      protected function §6`§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §[!7§.playSound("BirdShot" + _loc1_);
      }
      
      public function §'C§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§4'§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§,N§.length)
         {
            if(this.mSlingShotState == §=!O§)
            {
               this.§,N§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§,N§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§>>§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§=g§();
         if(this.§;b§ >= this.§,N§.length)
         {
            return false;
         }
         _loc1_ = this.§,N§[this.§;b§];
         _loc2_ = §>U§.§=v§(_loc1_.name).score;
         this.§;§.addScore(_loc2_,§<!!§.§?l§,true,_loc1_.x,_loc1_.y - 3,§8R§.§4!§(_loc1_.name));
         _loc1_.§^j§(-1,true);
         ++this.§;b§;
         return true;
      }
      
      public function §,u§() : int
      {
         var _loc2_:§>>§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§,N§)
         {
            _loc1_ += §>U§.§=v§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §5!,§() : int
      {
         return this.§8=§;
      }
      
      public function §'i§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§7g§ >= 0)
         {
            this.§7g§ -= param1;
            if(this.§7g§ <= 0)
            {
               _loc2_ = this.§;§.objects.§'h§(this.§'u§,this.§<;§);
               if(_loc2_ < 0)
               {
                  this.§!#§(0.1);
                  this.§7g§ = 0;
               }
               else if(!this.§;§.objects.§ for§(_loc2_).§ [§)
               {
                  this.§7g§ = -1;
               }
               else if(this.§;§.objects.§ for§(_loc2_).§6D§())
               {
                  this.§7g§ = 2000;
               }
               else
               {
                  this.§7g§ = 500;
               }
            }
         }
      }
      
      public function §,w§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§;§.objects.§'h§(this.§'u§,this.§<;§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§!#§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§7g§ = -1;
      }
      
      public function §<E§(param1:Number, param2:Number) : void
      {
         this.§8A§.x = -param1;
         this.§8A§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §[V§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §[V§ && this.§?"§ > this.§&$§ * §,!J§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§#m§(§[V§);
         var _loc1_:§>>§ = this.§,N§[this.§4'§];
         _loc1_.§^j§(§0Z§.§5!$§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§>>§ = this.§,N§[this.§4'§];
         _loc1_.§^j§(§0Z§.§const§);
      }
      
      public function shoot() : void
      {
         this.§;&§ = true;
      }
      
      protected function §+L§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§>>§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§,N§[param1])
         {
            _loc3_ = this.§,N§[param1];
            this.§`5§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§8!$§(this.§,N§[param1]);
            }
            _loc3_.dispose();
            this.§,N§[param1] = null;
         }
         this.§,N§.splice(param1,1);
      }
      
      public function §8!$§(param1:§>>§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §1r§.§[M§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §1r§.§[M§) + Math.random() * -_loc8_ * 2;
            this.§;§.particles.addParticle(§8R§.§#'§,§5!5§.§-U§,§8R§.§`R§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§8R§.§[q§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§;§.particles.addParticle(§8R§.§-!'§,§5!5§.§-U§,§8R§.§`R§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §^I§(param1:§>>§) : void
      {
         this.§+L§(this.§,N§.indexOf(param1));
      }
      
      public function §;!O§() : void
      {
         var _loc2_:§>>§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§>>§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,N§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§]!B§ - this.§,N§[_loc1_].x) * (this.§]!B§ - this.§,N§[_loc1_].x) + (this.§5G§ - this.§,N§[_loc1_].y) * (this.§5G§ - this.§,N§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§]!B§ - this.§,N§[_loc1_ + 1].x) * (this.§]!B§ - this.§,N§[_loc1_ + 1].x) + (this.§5G§ - this.§,N§[_loc1_ + 1].y) * (this.§5G§ - this.§,N§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§,N§[_loc1_];
               this.§,N§.splice(_loc1_,1);
               this.§,N§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§`5§.numChildren > 0)
         {
            this.§`5§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§,N§.length)
         {
            _loc2_ = this.§,N§[_loc1_];
            this.§`5§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §9B§(param1:Number, param2:Number) : §>>§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§,N§.length)
         {
            if(this.§,N§[_loc3_])
            {
               if(this.§,N§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§,N§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §]!@§(param1:Number, param2:Number) : §97§
      {
         if(param1 >= this.§]!B§ - this.§&$§ / 4 && param1 <= this.§]!B§ + this.§&$§ / 4 && param2 >= this.§5G§ - this.§&$§ / 4 && this.§5G§ <= this.§<;§)
         {
            return this;
         }
         return null;
      }
      
      public function §+?§(param1:§[z§) : void
      {
         var _loc3_:§>>§ = null;
         var _loc4_:§3I§ = null;
         param1.§6!C§ = this.§]!B§;
         param1.§#2§ = this.§5G§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§,N§.length)
         {
            _loc3_ = this.§,N§[_loc2_];
            (_loc4_ = new §3I§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§[`§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §7!@§() : void
      {
         while(this.§,N§.length > 0)
         {
            this.§^I§(this.§,N§[0]);
         }
      }
      
      public function §6E§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§,N§.length)
         {
            if(this.§,N§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§,N§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§]!B§ > param1.x && this.§]!B§ < param2.x && this.§5G§ > param1.y && this.§5G§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §^!I§() : Array
      {
         return [this.§?!J§,this.§,!§];
      }
      
      public function §@!!§(param1:String, param2:Number, param3:Number) : §>>§
      {
         var _loc4_:§>>§ = this.§[!E§(param1,param2,param3);
         this.§;!O§();
         return _loc4_;
      }
      
      public function §=V§() : Number
      {
         return this.§,N§.length;
      }
   }
}
