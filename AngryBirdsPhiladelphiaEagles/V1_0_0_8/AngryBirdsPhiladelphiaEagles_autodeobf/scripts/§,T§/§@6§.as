package §,T§
{
   import §"1§.§3'§;
   import §&8§.§5P§;
   import §&8§.§5Z§;
   import §,!1§.§]e§;
   import §,]§.Texture;
   import §-!'§.§ s§;
   import §-!'§.§3!1§;
   import §-!'§.Sprite;
   import §0E§.§"b§;
   import §0E§.§7u§;
   import §6!L§.§#!M§;
   import §<A§.§8<§;
   import §<A§.§;V§;
   import §@!P§.§@x§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §@6§
   {
      
      public static const §9!§:int = 0;
      
      public static const §7!O§:int = 1;
      
      public static const §4s§:int = 2;
      
      public static const §'D§:int = 3;
      
      public static const §!!M§:int = 5;
      
      public static const §^!$§:int = 3151368;
      
      protected static const §0%§:int = 8;
      
      protected static const §6!'§:int = 0;
      
      public static const §6!J§:Number = 46.25;
      
      public static const §4H§:Number = 52.5;
      
      protected static const §-@§:Number = -0.7;
      
      protected static const §0H§:Number = 0;
      
      protected static var §^!'§:Texture;
      
      public static const §?!3§:Number = 0.4;
       
      
      public var §34§:§[-§;
      
      public var §+Z§:Number;
      
      public var §04§:Number;
      
      public var §#&§:Number;
      
      protected var §"@§:Number;
      
      protected var §=U§:Number;
      
      protected var § x§:Number;
      
      protected var §0!3§:Number;
      
      public var §!=§:Number;
      
      public var §]Q§:Boolean = false;
      
      protected var §3q§:Number;
      
      public var §3h§:Vector.<§4!<§>;
      
      public var §]!+§:int;
      
      public var §?2§:int;
      
      public var §-w§:Number;
      
      public var §%W§:Sprite;
      
      public var §?5§:int = 0;
      
      public var §2! §:Number = 0;
      
      public var §<!8§:Array;
      
      public var §@;§:Array;
      
      public var mSlingShotState:int;
      
      public var §]7§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §,>§:Boolean = false;
      
      public var §@!J§:Number;
      
      protected var §46§:Sprite;
      
      protected var §!;§:§ s§;
      
      protected var § ]§:§ s§;
      
      protected var §&!<§:Sprite;
      
      protected var §`;§:Sprite;
      
      protected var §=`§:Sprite;
      
      protected var §7^§:§3!1§;
      
      protected var §9^§:§3!1§;
      
      private var §>!$§:Number = 0;
      
      private var §9f§:int = 0;
      
      protected var §catch§:Number = -0.7;
      
      protected var §8!=§:Number = 0;
      
      public function §@6§(param1:§[-§, param2:§#!M§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§@x§ = null;
         this.§3h§ = new Vector.<§4!<§>();
         super();
         this.§34§ = param1;
         this.§46§ = param3;
         if(param2)
         {
            this.setPosition(param2.§>'§,param2.§@!-§);
            this.§7!7§();
            _loc4_ = 0;
            while(_loc4_ < param2.§"`§)
            {
               _loc5_ = param2.§&1§(_loc4_);
               this.§2$§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§9f§ = this.§,8§();
            this.§]!+§ = 0;
            if(this.§3h§.length <= 0)
            {
               §3'§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§+Z§ + " " + this.§04§);
               this.§ B§(§'D§);
            }
            else
            {
               this.§ B§(§9!§);
            }
         }
         else
         {
            §3'§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§ B§(§'D§);
         }
         this.§@!J§ = 0;
         this.§]+§();
         this.update(0,true);
         this.§6^§();
         this.§@!C§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§46§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§>!$§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§]!+§ < this.§3h§.length;
      }
      
      public function dispose() : void
      {
         while(this.§3h§.length > 0)
         {
            this.§#!A§(0);
         }
         this.§3h§ = null;
         if(this.§46§)
         {
            this.§46§.dispose();
            this.§46§ = null;
         }
         this.§%W§ = null;
         this.§<!8§ = null;
         this.§@;§ = null;
      }
      
      public function §7_§(param1:String, param2:Number, param3:Number, param4:int = -1) : §4!<§
      {
         var _loc5_:§4!<§;
         (_loc5_ = this.§2$§(param1,param2,param3,param4)).§,O§();
         return _loc5_;
      }
      
      protected function §2$§(param1:String, param2:Number, param3:Number, param4:int = -1) : §4!<§
      {
         var _loc5_:§4!<§ = new §4!<§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§3h§.push(_loc5_);
         }
         else
         {
            this.§3h§.splice(param4,0,_loc5_);
         }
         this.§%W§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function § B§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §9!§)
         {
            this.§'E§();
            this.§-w§ = 1000;
         }
         else if(this.mSlingShotState == §7!O§)
         {
            this.§'E§();
            this.§-w§ = 0;
         }
         else if(this.mSlingShotState == §4s§)
         {
            this.§-w§ = 10000;
            this.§,>§ = false;
            this.§'E§();
         }
         else if(this.mSlingShotState == §'D§)
         {
            this.§'E§();
            this.§-w§ = 2000;
         }
         else if(this.mSlingShotState == §!!M§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§,>§ = false;
               this.§'E§();
               this.§3h§[this.§]!+§].setPosition(this.§ x§ - this.§3h§[this.§]!+§].radius * Math.cos(this.§2! § / (180 / Math.PI)),this.§0!3§ + this.§3h§[this.§]!+§].radius * Math.sin(this.§2! § / (180 / Math.PI)));
            }
            else
            {
               this.§'E§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §6O§() : §[-§
      {
         return this.§34§;
      }
      
      public function §=!O§() : Boolean
      {
         return this.mSlingShotState == §'D§ && this.§-w§ <= 0;
      }
      
      private function §7!7§() : void
      {
         var _loc1_:§;V§ = this.§3=§();
         var _loc2_:§8<§ = _loc1_.getFrame(0);
         var _loc3_:§8<§ = _loc1_.getFrame(1);
         this.§7^§ = new §3!1§(_loc2_.texture);
         this.§7^§.scaleX = _loc2_.scale;
         this.§7^§.scaleY = _loc2_.scale;
         this.§9^§ = new §3!1§(_loc3_.texture);
         this.§9^§.scaleX = _loc3_.scale;
         this.§9^§.scaleY = _loc3_.scale;
         this.§]!M§();
         this.§?! §();
         this.§%W§ = new Sprite();
         this.§46§.addChild(this.§7^§);
         this.§46§.addChild(this.§&!<§);
         this.§46§.addChild(this.§%W§);
         this.§46§.addChild(this.§=`§);
         this.§46§.addChild(this.§`;§);
         this.§46§.addChild(this.§9^§);
         this.§#&§ = this.§04§ + 8.5;
      }
      
      protected function §3=§() : §;V§
      {
         return this.§34§.§,F§.getAnimation("SLINGSHOT");
      }
      
      public function §]!M§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§"@§ = this.§+Z§;
         this.§=U§ = this.§04§;
         this.§3q§ = Tuner.§&i§;
         _loc1_ = null;
      }
      
      protected function §?! §() : void
      {
         var _loc2_:BitmapData = null;
         if(!§^!'§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §^!'§ = this.§34§.textureManager.§&W§(_loc2_);
         }
         this.§=`§ = new Sprite();
         var _loc1_:§3!1§ = new §3!1§(§^!'§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§=`§.addChild(_loc1_);
         this.§&!<§ = new Sprite();
         this.§!;§ = new § s§(2,2,§^!$§);
         this.§&!<§.addChild(this.§!;§);
         this.§`;§ = new Sprite();
         this.§ ]§ = new § s§(2,2,§^!$§);
         this.§`;§.addChild(this.§ ]§);
      }
      
      public function §@!C§(param1:Number) : void
      {
         var _loc2_:Number = this.§0!3§ / §[-§.§;5§;
         var _loc3_:Number = this.§ x§ / §[-§.§;5§;
         var _loc4_:Number = 3.5 + 8 * ((this.§3q§ - this.§!=§) / this.§3q§);
         this.§=`§.x = _loc3_;
         this.§=`§.y = _loc2_;
         this.§=`§.rotation = -this.§2! § / (180 / Math.PI);
         this.§7^§.x = this.§+Z§ / §[-§.§;5§ - 3;
         this.§7^§.y = this.§04§ / §[-§.§;5§ - 30;
         this.§9^§.x = this.§+Z§ / §[-§.§;5§ - 30;
         this.§9^§.y = this.§04§ / §[-§.§;5§ - 30;
         this.§`;§.x = this.§+Z§ / §[-§.§;5§ - 17;
         this.§`;§.y = this.§04§ / §[-§.§;5§ + 5;
         this.§`;§.rotation = Math.atan2(_loc2_ - this.§`;§.y,_loc3_ - this.§`;§.x);
         this.§&!<§.x = this.§+Z§ / §[-§.§;5§ + 22;
         this.§&!<§.y = this.§04§ / §[-§.§;5§;
         this.§&!<§.rotation = Math.atan2(_loc2_ - this.§&!<§.y,_loc3_ - this.§&!<§.x);
         this.§ ]§.width = Math.sqrt(Math.pow(_loc3_ - this.§`;§.x,2) + Math.pow(_loc2_ - this.§`;§.y,2));
         this.§!;§.width = Math.sqrt(Math.pow(_loc3_ - this.§&!<§.x,2) + Math.pow(_loc2_ - this.§&!<§.y,2));
         this.§ ]§.height = this.§!;§.height = _loc4_ * 2;
         this.§ ]§.y = -this.§ ]§.height / 2;
         this.§!;§.y = -this.§!;§.height / 2;
         this.§]7§ = false;
      }
      
      public function §<!=§() : void
      {
         while(this.§3h§.length > 0)
         {
            this.§#!A§(0,true);
         }
         this.§<Z§();
         this.§2$§("BIRD_SARDINE",this.§+Z§,this.§04§);
         this.§ B§(§4s§);
      }
      
      protected function §<Z§() : void
      {
         §]e§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§ B§(§!!M§);
      }
      
      public function §'E§() : void
      {
         this.setNewCoordinatesForRubber(this.§"@§,this.§=U§ + this.§3q§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§ x§ == param1 && this.§0!3§ == param2)
         {
            return true;
         }
         this.§!=§ = Math.sqrt((param2 - this.§=U§) * (param2 - this.§=U§) + (param1 - this.§"@§) * (param1 - this.§"@§));
         if(this.§!=§ > this.§3q§)
         {
            if(param3)
            {
               this.§!=§ = Math.sqrt((this.§0!3§ - this.§=U§) * (this.§0!3§ - this.§=U§) + (this.§ x§ - this.§"@§) * (this.§ x§ - this.§"@§));
               return false;
            }
            param1 = this.§"@§ + this.§3q§ * (param1 - this.§"@§) / this.§!=§;
            param2 = this.§=U§ + this.§3q§ * (param2 - this.§=U§) / this.§!=§;
            this.§!=§ = this.§3q§;
         }
         this.§ x§ = param1;
         this.§0!3§ = param2;
         this.§2! § = Math.atan2(-(this.§0!3§ - this.§=U§),this.§ x§ - this.§"@§);
         this.§2! § *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§ x§ = param1 + this.§catch§;
            this.§0!3§ = param2 + this.§8!=§;
            this.§2! § = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§3q§ / 2;
         if(this.§!=§ > _loc7_ && this.§2! § > -90 - _loc4_ + _loc5_ && this.§2! § < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§"@§ + _loc7_ * (param1 - this.§"@§) / this.§!=§;
            param2 = this.§=U§ + _loc7_ * (param2 - this.§=U§) / this.§!=§;
            this.§!=§ = _loc7_;
            this.§ x§ = param1;
            this.§0!3§ = param2;
         }
         else if(this.§!=§ > _loc7_ && this.§2! § > -90 - _loc4_ - _loc6_ + _loc5_ && this.§2! § < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§3q§ - _loc7_) * (Math.abs(this.§2! § - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§"@§ + _loc8_ * (param1 - this.§"@§) / this.§!=§;
            param2 = this.§=U§ + _loc8_ * (param2 - this.§=U§) / this.§!=§;
            this.§!=§ = _loc8_;
            this.§ x§ = param1;
            this.§0!3§ = param2;
         }
         if(this.§!=§ <= this.§3q§ * 0.45)
         {
            this.§]Q§ = true;
         }
         else if(this.§]Q§ && this.§!=§ >= this.§3q§ * 0.8)
         {
            this.§'j§();
            this.§]Q§ = false;
         }
         this.§]7§ = true;
         return true;
      }
      
      protected function §'j§() : void
      {
         §]e§.playSound("SlingshotStreched");
      }
      
      public function § !5§(param1:Number) : void
      {
         this.setPosition(this.§+Z§,this.§04§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§+Z§;
         this.§+Z§ = param1;
         var _loc5_:Number = param2 - this.§04§;
         this.§04§ = param2;
         this.§#&§ += _loc5_;
         this.§=U§ += _loc5_;
         this.§0!3§ += _loc5_;
         this.§"@§ += _loc4_;
         this.§ x§ += _loc4_;
         if(param3)
         {
            this.§@!C§(0);
         }
         this.§]7§ = true;
      }
      
      public function §null §() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§4!<§ = null;
         _loc2_ = this.§3h§[this.§]!+§];
         var _loc3_:Number = this.§!=§ / this.§3q§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§@6§.§4H§) : Number(§@6§.§6!J§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §1K§() : Point
      {
         var _loc1_:§4!<§ = null;
         if(this.§3h§.length > this.§]!+§)
         {
            _loc1_ = this.§3h§[this.§]!+§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §"!H§() : Point
      {
         return new Point(this.§"@§,this.§=U§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§4!<§ = null;
         this.§[f§(param1);
         if(this.§]7§)
         {
            this.§@!C§(param1);
         }
         this.§-w§ -= param1;
         if(this.§-w§ < 0)
         {
            this.§-w§ = 0;
         }
         if(this.mSlingShotState != §'D§)
         {
            this.§+!"§(param1,param2);
            _loc3_ = null;
            if(this.§3h§.length > 0)
            {
               _loc3_ = this.§3h§[this.§]!+§];
            }
            if(_loc3_)
            {
               _loc3_.§21§(param1);
            }
            if(!_loc3_)
            {
               this.§ B§(§'D§);
            }
            else if(this.mSlingShotState == §9!§)
            {
               if(this.§-w§ <= 0)
               {
                  this.§ B§(§7!O§);
                  _loc3_.§+&§();
               }
            }
            else if(this.mSlingShotState == §7!O§)
            {
               if(_loc3_.§4$§)
               {
                  this.§ B§(§4s§);
               }
            }
            else if(this.mSlingShotState == §4s§)
            {
               _loc3_.setPosition(this.§ x§ - _loc3_.radius * Math.cos(this.§2! § / (180 / Math.PI)),this.§0!3§ + _loc3_.radius * Math.sin(this.§2! § / (180 / Math.PI)));
               if(this.§,>§)
               {
                  this.§=9§(this.§!=§ / this.§3q§,this.§2! §);
               }
            }
         }
      }
      
      public function §4!;§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§4!<§ = null;
         if(this.§3h§.length > 0)
         {
            _loc5_ = this.§3h§[this.§]!+§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§=9§(param3,param4);
      }
      
      protected function §=9§(param1:Number, param2:Number) : void
      {
         var _loc3_:§4!<§ = null;
         this.§catch§ = §-@§;
         this.§8!=§ = §0H§;
         if(this.§3h§.length > 0)
         {
            _loc3_ = this.§3h§[this.§]!+§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§,>§ = false;
         this.§>!$§ = new Date().time;
         this.§34§.shootBird(_loc3_,param1,param2);
         this.§#!A§(this.§]!+§,_loc3_.§"A§ > 0);
         this.§4!0§();
         if(this.§]!+§ >= this.§3h§.length)
         {
            this.§ B§(§'D§);
         }
         else
         {
            this.§ B§(§9!§);
         }
      }
      
      protected function §4!0§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §]e§.playSound("BirdShot" + _loc1_);
      }
      
      public function §+!"§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§]!+§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§3h§.length)
         {
            if(this.mSlingShotState == §!!M§)
            {
               this.§3h§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§3h§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§4!<§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§'E§();
         if(this.§?2§ >= this.§3h§.length)
         {
            return false;
         }
         _loc1_ = this.§3h§[this.§?2§];
         _loc2_ = §"b§.§[M§(_loc1_.name).score;
         this.§34§.addScore(_loc2_,§9I§.§"!O§,true,_loc1_.x,_loc1_.y - 3,§5Z§.§?!&§(_loc1_.name));
         _loc1_.§41§(-1,true);
         ++this.§?2§;
         return true;
      }
      
      public function §,8§() : int
      {
         var _loc2_:§4!<§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§3h§)
         {
            _loc1_ += §"b§.§[M§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §%p§() : int
      {
         return this.§9f§;
      }
      
      public function §[f§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§@!J§ >= 0)
         {
            this.§@!J§ -= param1;
            if(this.§@!J§ <= 0)
            {
               _loc2_ = this.§34§.objects.§"9§(this.§"@§,this.§#&§);
               if(_loc2_ < 0)
               {
                  this.§ !5§(0.1);
                  this.§@!J§ = 0;
               }
               else if(!this.§34§.objects.§?!!§(_loc2_).§!I§)
               {
                  this.§@!J§ = -1;
               }
               else if(this.§34§.objects.§?!!§(_loc2_).§,S§())
               {
                  this.§@!J§ = 2000;
               }
               else
               {
                  this.§@!J§ = 500;
               }
            }
         }
      }
      
      public function §6^§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§34§.objects.§"9§(this.§"@§,this.§#&§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§ !5§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§@!J§ = -1;
      }
      
      public function §>>§(param1:Number, param2:Number) : void
      {
         this.§46§.x = -param1;
         this.§46§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §4s§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §4s§ && this.§!=§ > this.§3q§ * §?!3§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§ B§(§4s§);
         var _loc1_:§4!<§ = this.§3h§[this.§]!+§];
         _loc1_.§41§(§7u§.§,7§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§4!<§ = this.§3h§[this.§]!+§];
         _loc1_.§41§(§7u§.§<W§);
      }
      
      public function shoot() : void
      {
         this.§,>§ = true;
      }
      
      protected function §#!A§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§4!<§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§3h§[param1])
         {
            _loc3_ = this.§3h§[param1];
            this.§%W§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§<S§(this.§3h§[param1]);
            }
            _loc3_.dispose();
            this.§3h§[param1] = null;
         }
         this.§3h§.splice(param1,1);
      }
      
      public function §<S§(param1:§4!<§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §[-§.§;5§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §[-§.§;5§) + Math.random() * -_loc8_ * 2;
            this.§34§.particles.addParticle(§5Z§.§=!>§,§5P§.§=!L§,§5Z§.§@!<§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§5Z§.§89§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§34§.particles.addParticle(§5Z§.§'A§,§5P§.§=!L§,§5Z§.§@!<§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §[E§(param1:§4!<§) : void
      {
         this.§#!A§(this.§3h§.indexOf(param1));
      }
      
      public function §]+§() : void
      {
         var _loc2_:§4!<§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§4!<§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§3h§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§+Z§ - this.§3h§[_loc1_].x) * (this.§+Z§ - this.§3h§[_loc1_].x) + (this.§04§ - this.§3h§[_loc1_].y) * (this.§04§ - this.§3h§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§+Z§ - this.§3h§[_loc1_ + 1].x) * (this.§+Z§ - this.§3h§[_loc1_ + 1].x) + (this.§04§ - this.§3h§[_loc1_ + 1].y) * (this.§04§ - this.§3h§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§3h§[_loc1_];
               this.§3h§.splice(_loc1_,1);
               this.§3h§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§%W§.numChildren > 0)
         {
            this.§%W§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§3h§.length)
         {
            _loc2_ = this.§3h§[_loc1_];
            this.§%W§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §67§(param1:Number, param2:Number) : §4!<§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§3h§.length)
         {
            if(this.§3h§[_loc3_])
            {
               if(this.§3h§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§3h§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §&!D§(param1:Number, param2:Number) : §@6§
      {
         if(param1 >= this.§+Z§ - this.§3q§ / 4 && param1 <= this.§+Z§ + this.§3q§ / 4 && param2 >= this.§04§ - this.§3q§ / 4 && this.§04§ <= this.§#&§)
         {
            return this;
         }
         return null;
      }
      
      public function §>@§(param1:§#!M§) : void
      {
         var _loc3_:§4!<§ = null;
         var _loc4_:§@x§ = null;
         param1.§>'§ = this.§+Z§;
         param1.§@!-§ = this.§04§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§3h§.length)
         {
            _loc3_ = this.§3h§[_loc2_];
            (_loc4_ = new §@x§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§-0§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §^!K§() : void
      {
         while(this.§3h§.length > 0)
         {
            this.§[E§(this.§3h§[0]);
         }
      }
      
      public function §+g§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§3h§.length)
         {
            if(this.§3h§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§3h§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§+Z§ > param1.x && this.§+Z§ < param2.x && this.§04§ > param1.y && this.§04§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function dynamic() : Array
      {
         return [this.§9^§,this.§7^§];
      }
      
      public function §continue§(param1:String, param2:Number, param3:Number) : §4!<§
      {
         var _loc4_:§4!<§ = this.§2$§(param1,param2,param3);
         this.§]+§();
         return _loc4_;
      }
      
      public function §"4§() : Number
      {
         return this.§3h§.length;
      }
   }
}
