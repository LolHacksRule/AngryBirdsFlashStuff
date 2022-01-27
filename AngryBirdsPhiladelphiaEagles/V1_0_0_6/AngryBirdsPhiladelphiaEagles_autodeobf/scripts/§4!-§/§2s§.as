package §4!-§
{
   import §#!0§.§#-§;
   import §&K§.§]5§;
   import §1E§.§5T§;
   import §3!O§.§5q§;
   import §4!0§.§#^§;
   import §4!0§.§#v§;
   import §86§.§=u§;
   import §86§.§?5§;
   import §86§.Sprite;
   import §<4§.§ try§;
   import §<4§.§5!C§;
   import §<Z§.§ l§;
   import §<Z§.§5!G§;
   import §[!A§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §2s§
   {
      
      public static const §+n§:int = 0;
      
      public static const §5!?§:int = 1;
      
      public static const §+§:int = 2;
      
      public static const §7u§:int = 3;
      
      public static const §3!K§:int = 5;
      
      public static const §;]§:int = 3151368;
      
      protected static const §?!<§:int = 8;
      
      protected static const §%S§:int = 0;
      
      public static const §>L§:Number = 46.25;
      
      public static const §3G§:Number = 52.5;
      
      protected static const §=9§:Number = -0.7;
      
      protected static const §-!%§:Number = 0;
      
      protected static var §4i§:Texture;
      
      public static const §5!§:Number = 0.4;
       
      
      public var §'!8§:§%o§;
      
      public var §#$§:Number;
      
      public var §do§:Number;
      
      public var §>l§:Number;
      
      protected var §^b§:Number;
      
      protected var §@9§:Number;
      
      protected var §2=§:Number;
      
      protected var §"f§:Number;
      
      public var §%!I§:Number;
      
      public var §6E§:Boolean = false;
      
      protected var §"G§:Number;
      
      public var §?q§:Vector.<§;d§>;
      
      public var §^!N§:int;
      
      public var §&S§:int;
      
      public var §4n§:Number;
      
      public var §-U§:Sprite;
      
      public var §3!M§:int = 0;
      
      public var §%!3§:Number = 0;
      
      public var §^Y§:Array;
      
      public var §,p§:Array;
      
      public var mSlingShotState:int;
      
      public var §[!%§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §>!5§:Boolean = false;
      
      public var §=H§:Number;
      
      protected var §+!N§:Sprite;
      
      protected var §8x§:§=u§;
      
      protected var §24§:§=u§;
      
      protected var §<+§:Sprite;
      
      protected var §2y§:Sprite;
      
      protected var §]@§:Sprite;
      
      protected var §?g§:§?5§;
      
      protected var §>!4§:§?5§;
      
      private var §2!L§:Number = 0;
      
      private var §,u§:int = 0;
      
      protected var §'_§:Number = -0.7;
      
      protected var §[r§:Number = 0;
      
      public function §2s§(param1:§%o§, param2:§5T§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§]5§ = null;
         this.§?q§ = new Vector.<§;d§>();
         super();
         this.§'!8§ = param1;
         this.§+!N§ = param3;
         if(param2)
         {
            this.setPosition(param2.§%k§,param2.§^!H§);
            this.§9;§();
            _loc4_ = 0;
            while(_loc4_ < param2.§%!J§)
            {
               _loc5_ = param2.§7x§(_loc4_);
               this.§``§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§,u§ = this.§"z§();
            this.§^!N§ = 0;
            if(this.§?q§.length <= 0)
            {
               §5q§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§#$§ + " " + this.§do§);
               this.§>! §(§7u§);
            }
            else
            {
               this.§>! §(§+n§);
            }
         }
         else
         {
            §5q§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§>! §(§7u§);
         }
         this.§=H§ = 0;
         this.§>_§();
         this.update(0,true);
         this.§#§();
         this.§0R§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§+!N§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§2!L§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§^!N§ < this.§?q§.length;
      }
      
      public function dispose() : void
      {
         while(this.§?q§.length > 0)
         {
            this.§!!4§(0);
         }
         this.§?q§ = null;
         if(this.§+!N§)
         {
            this.§+!N§.dispose();
            this.§+!N§ = null;
         }
         this.§-U§ = null;
         this.§^Y§ = null;
         this.§,p§ = null;
      }
      
      public function §[!F§(param1:String, param2:Number, param3:Number, param4:int = -1) : §;d§
      {
         var _loc5_:§;d§;
         (_loc5_ = this.§``§(param1,param2,param3,param4)).§'S§();
         return _loc5_;
      }
      
      protected function §``§(param1:String, param2:Number, param3:Number, param4:int = -1) : §;d§
      {
         var _loc5_:§;d§ = new §;d§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§?q§.push(_loc5_);
         }
         else
         {
            this.§?q§.splice(param4,0,_loc5_);
         }
         this.§-U§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §>! §(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §+n§)
         {
            this.§>8§();
            this.§4n§ = 1000;
         }
         else if(this.mSlingShotState == §5!?§)
         {
            this.§>8§();
            this.§4n§ = 0;
         }
         else if(this.mSlingShotState == §+§)
         {
            this.§4n§ = 10000;
            this.§>!5§ = false;
            this.§>8§();
         }
         else if(this.mSlingShotState == §7u§)
         {
            this.§>8§();
            this.§4n§ = 2000;
         }
         else if(this.mSlingShotState == §3!K§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§>!5§ = false;
               this.§>8§();
               this.§?q§[this.§^!N§].setPosition(this.§2=§ - this.§?q§[this.§^!N§].radius * Math.cos(this.§%!3§ / (180 / Math.PI)),this.§"f§ + this.§?q§[this.§^!N§].radius * Math.sin(this.§%!3§ / (180 / Math.PI)));
            }
            else
            {
               this.§>8§();
            }
         }
         this.mDragging = false;
      }
      
      public function get § S§() : §%o§
      {
         return this.§'!8§;
      }
      
      public function §9!I§() : Boolean
      {
         return this.mSlingShotState == §7u§ && this.§4n§ <= 0;
      }
      
      private function §9;§() : void
      {
         var _loc1_:§#v§ = this.§,D§();
         var _loc2_:§#^§ = _loc1_.getFrame(0);
         var _loc3_:§#^§ = _loc1_.getFrame(1);
         this.§?g§ = new §?5§(_loc2_.texture);
         this.§?g§.scaleX = _loc2_.scale;
         this.§?g§.scaleY = _loc2_.scale;
         this.§>!4§ = new §?5§(_loc3_.texture);
         this.§>!4§.scaleX = _loc3_.scale;
         this.§>!4§.scaleY = _loc3_.scale;
         this.§!x§();
         this.§`!"§();
         this.§-U§ = new Sprite();
         this.§+!N§.addChild(this.§?g§);
         this.§+!N§.addChild(this.§<+§);
         this.§+!N§.addChild(this.§-U§);
         this.§+!N§.addChild(this.§]@§);
         this.§+!N§.addChild(this.§2y§);
         this.§+!N§.addChild(this.§>!4§);
         this.§>l§ = this.§do§ + 8.5;
      }
      
      protected function §,D§() : §#v§
      {
         return this.§'!8§.§>"§.getAnimation("SLINGSHOT");
      }
      
      public function §!x§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§^b§ = this.§#$§;
         this.§@9§ = this.§do§;
         this.§"G§ = Tuner.§<!O§;
         _loc1_ = null;
      }
      
      protected function §`!"§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§4i§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §4i§ = this.§'!8§.textureManager.§5Y§(_loc2_);
         }
         this.§]@§ = new Sprite();
         var _loc1_:§?5§ = new §?5§(§4i§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§]@§.addChild(_loc1_);
         this.§<+§ = new Sprite();
         this.§8x§ = new §=u§(2,2,§;]§);
         this.§<+§.addChild(this.§8x§);
         this.§2y§ = new Sprite();
         this.§24§ = new §=u§(2,2,§;]§);
         this.§2y§.addChild(this.§24§);
      }
      
      public function §0R§(param1:Number) : void
      {
         var _loc2_:Number = this.§"f§ / §%o§.§]!?§;
         var _loc3_:Number = this.§2=§ / §%o§.§]!?§;
         var _loc4_:Number = 3.5 + 8 * ((this.§"G§ - this.§%!I§) / this.§"G§);
         this.§]@§.x = _loc3_;
         this.§]@§.y = _loc2_;
         this.§]@§.rotation = -this.§%!3§ / (180 / Math.PI);
         this.§?g§.x = this.§#$§ / §%o§.§]!?§ - 3;
         this.§?g§.y = this.§do§ / §%o§.§]!?§ - 30;
         this.§>!4§.x = this.§#$§ / §%o§.§]!?§ - 30;
         this.§>!4§.y = this.§do§ / §%o§.§]!?§ - 30;
         this.§2y§.x = this.§#$§ / §%o§.§]!?§ - 17;
         this.§2y§.y = this.§do§ / §%o§.§]!?§ + 5;
         this.§2y§.rotation = Math.atan2(_loc2_ - this.§2y§.y,_loc3_ - this.§2y§.x);
         this.§<+§.x = this.§#$§ / §%o§.§]!?§ + 22;
         this.§<+§.y = this.§do§ / §%o§.§]!?§;
         this.§<+§.rotation = Math.atan2(_loc2_ - this.§<+§.y,_loc3_ - this.§<+§.x);
         this.§24§.width = Math.sqrt(Math.pow(_loc3_ - this.§2y§.x,2) + Math.pow(_loc2_ - this.§2y§.y,2));
         this.§8x§.width = Math.sqrt(Math.pow(_loc3_ - this.§<+§.x,2) + Math.pow(_loc2_ - this.§<+§.y,2));
         this.§24§.height = this.§8x§.height = _loc4_ * 2;
         this.§24§.y = -this.§24§.height / 2;
         this.§8x§.y = -this.§8x§.height / 2;
         this.§[!%§ = false;
      }
      
      public function §4!§() : void
      {
         while(this.§?q§.length > 0)
         {
            this.§!!4§(0,true);
         }
         this.§var§();
         this.§``§("BIRD_SARDINE",this.§#$§,this.§do§);
         this.§>! §(§+§);
      }
      
      protected function §var§() : void
      {
         §#-§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§>! §(§3!K§);
      }
      
      public function §>8§() : void
      {
         this.setNewCoordinatesForRubber(this.§^b§,this.§@9§ + this.§"G§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§2=§ == param1 && this.§"f§ == param2)
         {
            return true;
         }
         this.§%!I§ = Math.sqrt((param2 - this.§@9§) * (param2 - this.§@9§) + (param1 - this.§^b§) * (param1 - this.§^b§));
         if(this.§%!I§ > this.§"G§)
         {
            if(param3)
            {
               this.§%!I§ = Math.sqrt((this.§"f§ - this.§@9§) * (this.§"f§ - this.§@9§) + (this.§2=§ - this.§^b§) * (this.§2=§ - this.§^b§));
               return false;
            }
            param1 = this.§^b§ + this.§"G§ * (param1 - this.§^b§) / this.§%!I§;
            param2 = this.§@9§ + this.§"G§ * (param2 - this.§@9§) / this.§%!I§;
            this.§%!I§ = this.§"G§;
         }
         this.§2=§ = param1;
         this.§"f§ = param2;
         this.§%!3§ = Math.atan2(-(this.§"f§ - this.§@9§),this.§2=§ - this.§^b§);
         this.§%!3§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§2=§ = param1 + this.§'_§;
            this.§"f§ = param2 + this.§[r§;
            this.§%!3§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§"G§ / 2;
         if(this.§%!I§ > _loc7_ && this.§%!3§ > -90 - _loc4_ + _loc5_ && this.§%!3§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§^b§ + _loc7_ * (param1 - this.§^b§) / this.§%!I§;
            param2 = this.§@9§ + _loc7_ * (param2 - this.§@9§) / this.§%!I§;
            this.§%!I§ = _loc7_;
            this.§2=§ = param1;
            this.§"f§ = param2;
         }
         else if(this.§%!I§ > _loc7_ && this.§%!3§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§%!3§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§"G§ - _loc7_) * (Math.abs(this.§%!3§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§^b§ + _loc8_ * (param1 - this.§^b§) / this.§%!I§;
            param2 = this.§@9§ + _loc8_ * (param2 - this.§@9§) / this.§%!I§;
            this.§%!I§ = _loc8_;
            this.§2=§ = param1;
            this.§"f§ = param2;
         }
         if(this.§%!I§ <= this.§"G§ * 0.45)
         {
            this.§6E§ = true;
         }
         else if(this.§6E§ && this.§%!I§ >= this.§"G§ * 0.8)
         {
            this.§9C§();
            this.§6E§ = false;
         }
         this.§[!%§ = true;
         return true;
      }
      
      protected function §9C§() : void
      {
         §#-§.playSound("SlingshotStreched");
      }
      
      public function §3<§(param1:Number) : void
      {
         this.setPosition(this.§#$§,this.§do§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§#$§;
         this.§#$§ = param1;
         var _loc5_:Number = param2 - this.§do§;
         this.§do§ = param2;
         this.§>l§ += _loc5_;
         this.§@9§ += _loc5_;
         this.§"f§ += _loc5_;
         this.§^b§ += _loc4_;
         this.§2=§ += _loc4_;
         if(param3)
         {
            this.§0R§(0);
         }
         this.§[!%§ = true;
      }
      
      public function §'Z§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§;d§ = null;
         _loc2_ = this.§?q§[this.§^!N§];
         var _loc3_:Number = this.§%!I§ / this.§"G§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§2s§.§3G§) : Number(§2s§.§>L§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §#t§() : Point
      {
         var _loc1_:§;d§ = null;
         if(this.§?q§.length > this.§^!N§)
         {
            _loc1_ = this.§?q§[this.§^!N§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §0!&§() : Point
      {
         return new Point(this.§^b§,this.§@9§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§;d§ = null;
         this.§+v§(param1);
         if(this.§[!%§)
         {
            this.§0R§(param1);
         }
         this.§4n§ -= param1;
         if(this.§4n§ < 0)
         {
            this.§4n§ = 0;
         }
         if(this.mSlingShotState != §7u§)
         {
            this.§5!7§(param1,param2);
            _loc3_ = null;
            if(this.§?q§.length > 0)
            {
               _loc3_ = this.§?q§[this.§^!N§];
            }
            if(_loc3_)
            {
               _loc3_.§ V§(param1);
            }
            if(!_loc3_)
            {
               this.§>! §(§7u§);
            }
            else if(this.mSlingShotState == §+n§)
            {
               if(this.§4n§ <= 0)
               {
                  this.§>! §(§5!?§);
                  _loc3_.§#!G§();
               }
            }
            else if(this.mSlingShotState == §5!?§)
            {
               if(_loc3_.§4P§)
               {
                  this.§>! §(§+§);
               }
            }
            else if(this.mSlingShotState == §+§)
            {
               _loc3_.setPosition(this.§2=§ - _loc3_.radius * Math.cos(this.§%!3§ / (180 / Math.PI)),this.§"f§ + _loc3_.radius * Math.sin(this.§%!3§ / (180 / Math.PI)));
               if(this.§>!5§)
               {
                  this.§^J§(this.§%!I§ / this.§"G§,this.§%!3§);
               }
            }
         }
      }
      
      public function §2!6§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§;d§ = null;
         if(this.§?q§.length > 0)
         {
            _loc5_ = this.§?q§[this.§^!N§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§^J§(param3,param4);
      }
      
      protected function §^J§(param1:Number, param2:Number) : void
      {
         var _loc3_:§;d§ = null;
         this.§'_§ = §=9§;
         this.§[r§ = §-!%§;
         if(this.§?q§.length > 0)
         {
            _loc3_ = this.§?q§[this.§^!N§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§>!5§ = false;
         this.§2!L§ = new Date().time;
         this.§'!8§.shootBird(_loc3_,param1,param2);
         this.§!!4§(this.§^!N§,_loc3_.§'!F§ > 0);
         this.§4!"§();
         if(this.§^!N§ >= this.§?q§.length)
         {
            this.§>! §(§7u§);
         }
         else
         {
            this.§>! §(§+n§);
         }
      }
      
      protected function §4!"§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §#-§.playSound("BirdShot" + _loc1_);
      }
      
      public function §5!7§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§^!N§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§?q§.length)
         {
            if(this.mSlingShotState == §3!K§)
            {
               this.§?q§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§?q§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§;d§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§>8§();
         if(this.§&S§ >= this.§?q§.length)
         {
            return false;
         }
         _loc1_ = this.§?q§[this.§&S§];
         _loc2_ = § l§.§"<§(_loc1_.name).score;
         this.§'!8§.addScore(_loc2_,§1F§.§#L§,true,_loc1_.x,_loc1_.y - 3,§5!C§.§0L§(_loc1_.name));
         _loc1_.§<>§(-1,true);
         ++this.§&S§;
         return true;
      }
      
      public function §"z§() : int
      {
         var _loc2_:§;d§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§?q§)
         {
            _loc1_ += § l§.§"<§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §1M§() : int
      {
         return this.§,u§;
      }
      
      public function §+v§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§=H§ >= 0)
         {
            this.§=H§ -= param1;
            if(this.§=H§ <= 0)
            {
               _loc2_ = this.§'!8§.objects.§>O§(this.§^b§,this.§>l§);
               if(_loc2_ < 0)
               {
                  this.§3<§(0.1);
                  this.§=H§ = 0;
               }
               else if(!this.§'!8§.objects.§1!1§(_loc2_).§?>§)
               {
                  this.§=H§ = -1;
               }
               else if(this.§'!8§.objects.§1!1§(_loc2_).§9!2§())
               {
                  this.§=H§ = 2000;
               }
               else
               {
                  this.§=H§ = 500;
               }
            }
         }
      }
      
      public function §#§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§'!8§.objects.§>O§(this.§^b§,this.§>l§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§3<§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§=H§ = -1;
      }
      
      public function §`2§(param1:Number, param2:Number) : void
      {
         this.§+!N§.x = -param1;
         this.§+!N§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §+§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §+§ && this.§%!I§ > this.§"G§ * §5!§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§>! §(§+§);
         var _loc1_:§;d§ = this.§?q§[this.§^!N§];
         _loc1_.§<>§(§5!G§.§=!8§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§;d§ = this.§?q§[this.§^!N§];
         _loc1_.§<>§(§5!G§.each);
      }
      
      public function shoot() : void
      {
         this.§>!5§ = true;
      }
      
      protected function §!!4§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§;d§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§?q§[param1])
         {
            _loc3_ = this.§?q§[param1];
            this.§-U§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§6O§(this.§?q§[param1]);
            }
            _loc3_.dispose();
            this.§?q§[param1] = null;
         }
         this.§?q§.splice(param1,1);
      }
      
      public function §6O§(param1:§;d§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §%o§.§]!?§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §%o§.§]!?§) + Math.random() * -_loc8_ * 2;
            this.§'!8§.particles.addParticle(§5!C§.§-!E§,§ try§.§4!+§,§5!C§.§'! §,param1.x + _loc7_,param1.y + _loc8_,1500,"",§5!C§.§ 4§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§'!8§.particles.addParticle(§5!C§.§`W§,§ try§.§4!+§,§5!C§.§'! §,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §[B§(param1:§;d§) : void
      {
         this.§!!4§(this.§?q§.indexOf(param1));
      }
      
      public function §>_§() : void
      {
         var _loc2_:§;d§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§;d§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§?q§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§#$§ - this.§?q§[_loc1_].x) * (this.§#$§ - this.§?q§[_loc1_].x) + (this.§do§ - this.§?q§[_loc1_].y) * (this.§do§ - this.§?q§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§#$§ - this.§?q§[_loc1_ + 1].x) * (this.§#$§ - this.§?q§[_loc1_ + 1].x) + (this.§do§ - this.§?q§[_loc1_ + 1].y) * (this.§do§ - this.§?q§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§?q§[_loc1_];
               this.§?q§.splice(_loc1_,1);
               this.§?q§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§-U§.numChildren > 0)
         {
            this.§-U§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§?q§.length)
         {
            _loc2_ = this.§?q§[_loc1_];
            this.§-U§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §7!J§(param1:Number, param2:Number) : §;d§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§?q§.length)
         {
            if(this.§?q§[_loc3_])
            {
               if(this.§?q§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§?q§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §@]§(param1:Number, param2:Number) : §2s§
      {
         if(param1 >= this.§#$§ - this.§"G§ / 4 && param1 <= this.§#$§ + this.§"G§ / 4 && param2 >= this.§do§ - this.§"G§ / 4 && this.§do§ <= this.§>l§)
         {
            return this;
         }
         return null;
      }
      
      public function §!g§(param1:§5T§) : void
      {
         var _loc3_:§;d§ = null;
         var _loc4_:§]5§ = null;
         param1.§%k§ = this.§#$§;
         param1.§^!H§ = this.§do§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§?q§.length)
         {
            _loc3_ = this.§?q§[_loc2_];
            (_loc4_ = new §]5§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§^y§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §use§() : void
      {
         while(this.§?q§.length > 0)
         {
            this.§[B§(this.§?q§[0]);
         }
      }
      
      public function §61§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§?q§.length)
         {
            if(this.§?q§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§?q§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§#$§ > param1.x && this.§#$§ < param2.x && this.§do§ > param1.y && this.§do§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §0T§() : Array
      {
         return [this.§>!4§,this.§?g§];
      }
      
      public function §5!<§(param1:String, param2:Number, param3:Number) : §;d§
      {
         var _loc4_:§;d§ = this.§``§(param1,param2,param3);
         this.§>_§();
         return _loc4_;
      }
      
      public function §7!7§() : Number
      {
         return this.§?q§.length;
      }
   }
}
