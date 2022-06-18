package §`!4§
{
   import §#+§.§6!C§;
   import §#+§.§@!<§;
   import §#?§.§7!A§;
   import §#?§.§^@§;
   import §'6§.§?!L§;
   import §+[§.§%G§;
   import §21§.Texture;
   import §2E§.§96§;
   import §2E§.§]B§;
   import §46§.§2n§;
   import §90§.§0!'§;
   import §90§.§8S§;
   import §90§.Sprite;
   import §?j§.§9?§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §^H§
   {
      
      public static const §=! §:int = 0;
      
      public static const §+y§:int = 1;
      
      public static const §@!F§:int = 2;
      
      public static const §4M§:int = 3;
      
      public static const §;@§:int = 5;
      
      public static const §5'§:int = 3151368;
      
      protected static const §0!&§:int = 8;
      
      protected static const §]!<§:int = 0;
      
      public static const §6<§:Number = 46.25;
      
      public static const §=^§:Number = 52.5;
      
      protected static const §!F§:Number = -0.7;
      
      protected static const §<P§:Number = 0;
      
      protected static var § x§:Texture;
      
      public static const §8^§:Number = 0.4;
       
      
      public var §#J§:§6l§;
      
      public var §;!>§:Number;
      
      public var §8<§:Number;
      
      public var §4!3§:Number;
      
      protected var §=!L§:Number;
      
      protected var §0b§:Number;
      
      protected var §%!O§:Number;
      
      protected var §-r§:Number;
      
      public var §"b§:Number;
      
      public var §6!A§:Boolean = false;
      
      protected var §with§:Number;
      
      public var §,D§:Vector.<§?!M§>;
      
      public var §,0§:int;
      
      public var §^!J§:int = 0;
      
      public var §^8§:int;
      
      public var §>!C§:Number;
      
      public var §-!M§:Sprite;
      
      public var §&!!§:int = 0;
      
      public var §"x§:Number = 0;
      
      public var §9x§:Array;
      
      public var §;!G§:Array;
      
      public var mSlingShotState:int;
      
      public var §=S§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §;?§:Boolean = false;
      
      public var §'!L§:Number;
      
      protected var §7!0§:Boolean = false;
      
      protected var §`8§:Sprite;
      
      protected var §&N§:§0!'§;
      
      protected var §#!E§:§0!'§;
      
      protected var §^T§:Sprite;
      
      protected var §[Z§:Sprite;
      
      protected var §&!$§:Sprite;
      
      protected var §,_§:§8S§;
      
      protected var §5!§:§8S§;
      
      private var §]!E§:Number = 0;
      
      private var §<M§:int = 0;
      
      protected var §1$§:Number = -0.7;
      
      protected var §'+§:Number = 0;
      
      public function §^H§(param1:§6l§, param2:§9?§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§2n§ = null;
         this.§,D§ = new Vector.<§?!M§>();
         super();
         this.§#J§ = param1;
         this.§`8§ = param3;
         if(param2)
         {
            this.setPosition(param2.§5&§,param2.§?!§);
            this.§#1§();
            _loc4_ = 0;
            while(_loc4_ < param2.§ p§)
            {
               _loc5_ = param2.§#!!§(_loc4_);
               this.§'I§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§<M§ = this.§+V§();
            this.§,0§ = 0;
            if(this.§,D§.length <= 0)
            {
               §?!L§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§;!>§ + " " + this.§8<§);
               this.§&S§(§4M§);
            }
            else
            {
               this.§&S§(§=! §);
            }
         }
         else
         {
            §?!L§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§&S§(§4M§);
         }
         this.§'!L§ = 0;
         this.§!!;§();
         this.update(0,true);
         this.§=P§();
         this.§2!E§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§`8§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§]!E§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§,0§ < this.§,D§.length;
      }
      
      public function dispose() : void
      {
         while(this.§,D§.length > 0)
         {
            this.§5!+§(0);
         }
         this.§,D§ = null;
         if(this.§`8§)
         {
            this.§`8§.dispose();
            this.§`8§ = null;
         }
         this.§-!M§ = null;
         this.§9x§ = null;
         this.§;!G§ = null;
      }
      
      public function §"V§(param1:String, param2:Number, param3:Number, param4:int = -1) : §?!M§
      {
         var _loc5_:§?!M§;
         (_loc5_ = this.§'I§(param1,param2,param3,param4)).§8y§();
         this.§&S§(§@!F§);
         return _loc5_;
      }
      
      protected function §'I§(param1:String, param2:Number, param3:Number, param4:int = -1) : §?!M§
      {
         var _loc5_:§?!M§ = new §?!M§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§,D§.push(_loc5_);
         }
         else
         {
            this.§,D§.splice(param4,0,_loc5_);
         }
         this.§-!M§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §&S§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §=! §)
         {
            this.§8!$§();
            this.§>!C§ = 1000;
         }
         else if(this.mSlingShotState == §+y§)
         {
            this.§8!$§();
            this.§>!C§ = 0;
         }
         else if(this.mSlingShotState == §@!F§)
         {
            this.§>!C§ = 10000;
            this.§;?§ = false;
            this.§8!$§();
         }
         else if(this.mSlingShotState == §4M§)
         {
            this.§8!$§();
            this.§>!C§ = 2000;
         }
         else if(this.mSlingShotState == §;@§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§;?§ = false;
               this.§8!$§();
               this.§,D§[this.§,0§].setPosition(this.§%!O§ - this.§,D§[this.§,0§].radius * Math.cos(this.§"x§ / (180 / Math.PI)),this.§-r§ + this.§,D§[this.§,0§].radius * Math.sin(this.§"x§ / (180 / Math.PI)));
            }
            else
            {
               this.§8!$§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §@`§() : §6l§
      {
         return this.§#J§;
      }
      
      public function §4N§() : Boolean
      {
         return this.mSlingShotState == §4M§ && this.§>!C§ <= 0;
      }
      
      private function §#1§() : void
      {
         var _loc1_:§7!A§ = this.§,!B§();
         var _loc2_:§^@§ = _loc1_.getFrame(0);
         var _loc3_:§^@§ = _loc1_.getFrame(1);
         this.§,_§ = new §8S§(_loc2_.texture);
         this.§,_§.scaleX = _loc2_.scale;
         this.§,_§.scaleY = _loc2_.scale;
         this.§5!§ = new §8S§(_loc3_.texture);
         this.§5!§.scaleX = _loc3_.scale;
         this.§5!§.scaleY = _loc3_.scale;
         this.§#O§();
         this.§'!,§();
         this.§-!M§ = new Sprite();
         this.§`8§.addChild(this.§,_§);
         this.§`8§.addChild(this.§^T§);
         this.§`8§.addChild(this.§-!M§);
         this.§`8§.addChild(this.§&!$§);
         this.§`8§.addChild(this.§[Z§);
         this.§`8§.addChild(this.§5!§);
         this.§4!3§ = this.§8<§ + 8.5;
      }
      
      protected function §,!B§() : §7!A§
      {
         return this.§#J§.§7g§.§"!$§("SLINGSHOT");
      }
      
      public function §#O§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§=!L§ = this.§;!>§;
         this.§0b§ = this.§8<§;
         this.§with§ = §=Z§.§9C§;
         _loc1_ = null;
      }
      
      protected function §'!,§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§ x§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            § x§ = this.§#J§.textureManager.§1!+§(_loc2_);
         }
         this.§&!$§ = new Sprite();
         var _loc1_:§8S§ = new §8S§(§ x§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§&!$§.addChild(_loc1_);
         this.§^T§ = new Sprite();
         this.§&N§ = new §0!'§(2,2,§5'§);
         this.§^T§.addChild(this.§&N§);
         this.§[Z§ = new Sprite();
         this.§#!E§ = new §0!'§(2,2,§5'§);
         this.§[Z§.addChild(this.§#!E§);
      }
      
      public function §2!E§(param1:Number) : void
      {
         var _loc2_:Number = this.§-r§ / §6l§.§%!<§;
         var _loc3_:Number = this.§%!O§ / §6l§.§%!<§;
         var _loc4_:Number = 3.5 + 8 * ((this.§with§ - this.§"b§) / this.§with§);
         this.§&!$§.x = _loc3_;
         this.§&!$§.y = _loc2_;
         this.§&!$§.rotation = -this.§"x§ / (180 / Math.PI);
         this.§,_§.x = this.§;!>§ / §6l§.§%!<§ - 3;
         this.§,_§.y = this.§8<§ / §6l§.§%!<§ - 30;
         this.§5!§.x = this.§;!>§ / §6l§.§%!<§ - 30;
         this.§5!§.y = this.§8<§ / §6l§.§%!<§ - 30;
         this.§[Z§.x = this.§;!>§ / §6l§.§%!<§ - 17;
         this.§[Z§.y = this.§8<§ / §6l§.§%!<§ + 5;
         this.§[Z§.rotation = Math.atan2(_loc2_ - this.§[Z§.y,_loc3_ - this.§[Z§.x);
         this.§^T§.x = this.§;!>§ / §6l§.§%!<§ + 22;
         this.§^T§.y = this.§8<§ / §6l§.§%!<§;
         this.§^T§.rotation = Math.atan2(_loc2_ - this.§^T§.y,_loc3_ - this.§^T§.x);
         this.§#!E§.width = Math.sqrt(Math.pow(_loc3_ - this.§[Z§.x,2) + Math.pow(_loc2_ - this.§[Z§.y,2));
         this.§&N§.width = Math.sqrt(Math.pow(_loc3_ - this.§^T§.x,2) + Math.pow(_loc2_ - this.§^T§.y,2));
         this.§#!E§.height = this.§&N§.height = _loc4_ * 2;
         this.§#!E§.y = -this.§#!E§.height / 2;
         this.§&N§.y = -this.§&N§.height / 2;
         this.§=S§ = false;
      }
      
      public function §-!?§() : void
      {
         while(this.§,D§.length > 0)
         {
            this.§5!+§(0,true);
         }
         this.§28§();
         this.§'I§("BIRD_SARDINE",this.§;!>§,this.§8<§);
         this.§&S§(§@!F§);
      }
      
      protected function §28§() : void
      {
         §%G§.§48§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§&S§(§;@§);
      }
      
      public function §8!$§() : void
      {
         this.setNewCoordinatesForRubber(this.§=!L§,this.§0b§ + this.§with§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§%!O§ == param1 && this.§-r§ == param2)
         {
            return true;
         }
         this.§"b§ = Math.sqrt((param2 - this.§0b§) * (param2 - this.§0b§) + (param1 - this.§=!L§) * (param1 - this.§=!L§));
         if(this.§"b§ > this.§with§)
         {
            if(param3)
            {
               this.§"b§ = Math.sqrt((this.§-r§ - this.§0b§) * (this.§-r§ - this.§0b§) + (this.§%!O§ - this.§=!L§) * (this.§%!O§ - this.§=!L§));
               return false;
            }
            param1 = this.§=!L§ + this.§with§ * (param1 - this.§=!L§) / this.§"b§;
            param2 = this.§0b§ + this.§with§ * (param2 - this.§0b§) / this.§"b§;
            this.§"b§ = this.§with§;
         }
         this.§%!O§ = param1;
         this.§-r§ = param2;
         this.§"x§ = Math.atan2(-(this.§-r§ - this.§0b§),this.§%!O§ - this.§=!L§);
         this.§"x§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§%!O§ = param1 + this.§1$§;
            this.§-r§ = param2 + this.§'+§;
            this.§"x§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§with§ / 2;
         if(this.§"b§ > _loc7_ && this.§"x§ > -90 - _loc4_ + _loc5_ && this.§"x§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§=!L§ + _loc7_ * (param1 - this.§=!L§) / this.§"b§;
            param2 = this.§0b§ + _loc7_ * (param2 - this.§0b§) / this.§"b§;
            this.§"b§ = _loc7_;
            this.§%!O§ = param1;
            this.§-r§ = param2;
         }
         else if(this.§"b§ > _loc7_ && this.§"x§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§"x§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§with§ - _loc7_) * (Math.abs(this.§"x§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§=!L§ + _loc8_ * (param1 - this.§=!L§) / this.§"b§;
            param2 = this.§0b§ + _loc8_ * (param2 - this.§0b§) / this.§"b§;
            this.§"b§ = _loc8_;
            this.§%!O§ = param1;
            this.§-r§ = param2;
         }
         if(this.§"b§ <= this.§with§ * 0.45)
         {
            this.§6!A§ = true;
         }
         else if(this.§6!A§ && this.§"b§ >= this.§with§ * 0.8)
         {
            this.§]o§();
            this.§6!A§ = false;
         }
         this.§=S§ = true;
         return true;
      }
      
      protected function §]o§() : void
      {
         §%G§.§48§("SlingshotStreched");
      }
      
      public function §^J§(param1:Number) : void
      {
         this.setPosition(this.§;!>§,this.§8<§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§;!>§;
         this.§;!>§ = param1;
         var _loc5_:Number = param2 - this.§8<§;
         this.§8<§ = param2;
         this.§4!3§ += _loc5_;
         this.§0b§ += _loc5_;
         this.§-r§ += _loc5_;
         this.§=!L§ += _loc4_;
         this.§%!O§ += _loc4_;
         if(param3)
         {
            this.§2!E§(0);
         }
         this.§=S§ = true;
      }
      
      public function §#o§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§?!M§ = null;
         _loc2_ = this.§,D§[this.§,0§];
         var _loc3_:Number = this.§"b§ / this.§with§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§^H§.§=^§) : Number(§^H§.§6<§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §+A§() : Point
      {
         var _loc1_:§?!M§ = null;
         if(this.§,D§.length > this.§,0§)
         {
            _loc1_ = this.§,D§[this.§,0§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §3!G§() : Point
      {
         return new Point(this.§=!L§,this.§0b§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§?!M§ = null;
         this.§,z§(param1);
         if(this.§=S§)
         {
            this.§2!E§(param1);
         }
         this.§>!C§ -= param1;
         if(this.§>!C§ < 0)
         {
            this.§>!C§ = 0;
         }
         if(this.mSlingShotState != §4M§)
         {
            this.§,b§(param1,param2);
            _loc3_ = null;
            if(this.§,D§.length > 0)
            {
               _loc3_ = this.§,D§[this.§,0§];
            }
            if(_loc3_)
            {
               _loc3_.§^!5§(param1);
            }
            if(!_loc3_)
            {
               this.§&S§(§4M§);
            }
            else if(this.mSlingShotState == §=! §)
            {
               if(this.§>!C§ <= 0)
               {
                  this.§&S§(§+y§);
                  _loc3_.§?L§();
               }
            }
            else if(this.mSlingShotState == §+y§)
            {
               if(_loc3_.§6H§)
               {
                  this.§&S§(§@!F§);
               }
            }
            else if(this.mSlingShotState == §@!F§)
            {
               if(!_loc3_.§>J§())
               {
                  _loc3_.setPosition(this.§%!O§ - _loc3_.radius * Math.cos(this.§"x§ / (180 / Math.PI)),this.§-r§ + _loc3_.radius * Math.sin(this.§"x§ / (180 / Math.PI)));
               }
               if(this.§;?§)
               {
                  this.§`!M§(this.§"b§ / this.§with§,this.§"x§);
               }
            }
         }
      }
      
      public function §>k§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§?!M§ = null;
         if(this.§,D§.length > 0)
         {
            _loc5_ = this.§,D§[this.§,0§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§`!M§(param3,param4);
      }
      
      protected function §`!M§(param1:Number, param2:Number) : void
      {
         var _loc3_:§?!M§ = null;
         this.§1$§ = §!F§;
         this.§'+§ = §<P§;
         if(this.§,D§.length > 0)
         {
            _loc3_ = this.§,D§[this.§,0§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§;?§ = false;
         this.§]!E§ = new Date().time;
         this.§#J§.§%5§(_loc3_,param1,param2);
         this.§5!+§(this.§,0§,_loc3_.§1!3§ > 0);
         this.§&!1§();
         if(this.§,0§ >= this.§,D§.length)
         {
            this.§&S§(§4M§);
         }
         else
         {
            this.§&S§(§=! §);
         }
      }
      
      protected function §&!1§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §%G§.§48§("BirdShot" + _loc1_);
      }
      
      public function §,b§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§,0§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§,D§.length)
         {
            if(this.mSlingShotState == §;@§)
            {
               this.§,D§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§,D§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§?!M§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§8!$§();
         if(this.§^8§ >= this.§,D§.length)
         {
            return false;
         }
         _loc1_ = this.§,D§[this.§^8§];
         _loc2_ = §]B§.§1l§(_loc1_.name).score;
         this.§#J§.addScore(_loc2_,§[o§.§`!0§,true,_loc1_.x,_loc1_.y - 3,§@!<§.§?§(_loc1_.name));
         _loc1_.§8!M§(-1,true);
         ++this.§^8§;
         return true;
      }
      
      public function §+V§() : int
      {
         var _loc2_:§?!M§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§,D§)
         {
            _loc1_ += §]B§.§1l§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §7@§() : int
      {
         return this.§<M§;
      }
      
      public function §,z§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§'!L§ >= 0)
         {
            this.§'!L§ -= param1;
            if(this.§'!L§ <= 0)
            {
               _loc2_ = this.§#J§.objects.§%y§(this.§=!L§,this.§4!3§);
               if(_loc2_ < 0)
               {
                  this.§^J§(0.1);
                  this.§'!L§ = 0;
               }
               else if(!this.§#J§.objects.§?!N§(_loc2_).§+4§)
               {
                  this.§'!L§ = -1;
               }
               else if(this.§#J§.objects.§?!N§(_loc2_).§<!@§())
               {
                  this.§'!L§ = 2000;
               }
               else
               {
                  this.§'!L§ = 500;
               }
            }
         }
      }
      
      public function §=P§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§#J§.objects.§%y§(this.§=!L§,this.§4!3§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§^J§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§'!L§ = -1;
      }
      
      public function §!!9§(param1:Number, param2:Number) : void
      {
         this.§`8§.x = -param1;
         this.§`8§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §@!F§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §@!F§ && this.§"b§ > this.§with§ * §8^§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§&S§(§@!F§);
         var _loc1_:§?!M§ = this.§,D§[this.§,0§];
         _loc1_.§8!M§(§96§.§>X§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§?!M§ = this.§,D§[this.§,0§];
         _loc1_.§8!M§(§96§.§&!8§);
      }
      
      public function shoot() : void
      {
         this.§;?§ = true;
      }
      
      protected function §5!+§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§?!M§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§,D§[param1])
         {
            _loc3_ = this.§,D§[param1];
            this.§-!M§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§@>§(this.§,D§[param1]);
            }
            _loc3_.dispose();
            this.§,D§[param1] = null;
         }
         this.§,D§.splice(param1,1);
      }
      
      public function §@>§(param1:§?!M§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §6l§.§%!<§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §6l§.§%!<§) + Math.random() * -_loc8_ * 2;
            this.§#J§.particles.§-!$§(§@!<§.§!;§,§6!C§.PARTICLE_GROUP_GAME_EFFECTS,§@!<§.PARTICLE_TYPE_KINETIC_PARTICLE,param1.x + _loc7_,param1.y + _loc8_,1500,"",§@!<§.getParticleMaterialFromEngineMaterial(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§#J§.particles.§-!$§(§@!<§.§,6§,§6!C§.PARTICLE_GROUP_GAME_EFFECTS,§@!<§.PARTICLE_TYPE_KINETIC_PARTICLE,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §`d§(param1:§?!M§) : void
      {
         this.§5!+§(this.§,D§.indexOf(param1));
      }
      
      public function §!!;§() : void
      {
         var _loc1_:§?!M§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§?!M§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§,D§.length - 1)
         {
            _loc1_ = this.§,D§[_loc2_];
            if(!(_loc1_.§6H§ && _loc2_ == 0))
            {
               _loc3_ = Math.sqrt((this.§;!>§ - this.§,D§[_loc2_].x) * (this.§;!>§ - this.§,D§[_loc2_].x) + (this.§8<§ - this.§,D§[_loc2_].y) * (this.§8<§ - this.§,D§[_loc2_].y));
               if((_loc4_ = Math.sqrt((this.§;!>§ - this.§,D§[_loc2_ + 1].x) * (this.§;!>§ - this.§,D§[_loc2_ + 1].x) + (this.§8<§ - this.§,D§[_loc2_ + 1].y) * (this.§8<§ - this.§,D§[_loc2_ + 1].y))) < _loc3_)
               {
                  _loc5_ = this.§,D§[_loc2_];
                  this.§,D§.splice(_loc2_,1);
                  this.§,D§.splice(_loc2_ + 1,0,_loc5_);
                  _loc2_ = Math.max(-1,_loc2_ - 2);
               }
            }
            _loc2_++;
         }
         while(this.§-!M§.numChildren > 0)
         {
            this.§-!M§.removeChildAt(0);
         }
         _loc2_ = 0;
         while(_loc2_ < this.§,D§.length)
         {
            _loc1_ = this.§,D§[_loc2_];
            this.§-!M§.addChildAt(_loc1_.sprite,0);
            _loc2_++;
         }
      }
      
      public function §!s§(param1:Number, param2:Number) : §?!M§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§,D§.length)
         {
            if(this.§,D§[_loc3_])
            {
               if(this.§,D§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§,D§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §1!J§(param1:Number, param2:Number) : §^H§
      {
         if(param1 >= this.§;!>§ - this.§with§ / 4 && param1 <= this.§;!>§ + this.§with§ / 4 && param2 >= this.§8<§ - this.§with§ / 4 && this.§8<§ <= this.§4!3§)
         {
            return this;
         }
         return null;
      }
      
      public function §,!H§(param1:§9?§) : void
      {
         var _loc3_:§?!M§ = null;
         var _loc4_:§2n§ = null;
         param1.§5&§ = this.§;!>§;
         param1.§?!§ = this.§8<§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§,D§.length)
         {
            _loc3_ = this.§,D§[_loc2_];
            (_loc4_ = new §2n§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§6&§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §#!3§() : void
      {
         while(this.§,D§.length > 0)
         {
            this.§`d§(this.§,D§[0]);
         }
      }
      
      public function §0-§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§,D§.length)
         {
            if(this.§,D§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§,D§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§;!>§ > param1.x && this.§;!>§ < param2.x && this.§8<§ > param1.y && this.§8<§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §`!<§() : Array
      {
         return [this.§5!§,this.§,_§];
      }
      
      public function §6!?§(param1:String, param2:Number, param3:Number) : §?!M§
      {
         var _loc4_:§?!M§ = this.§'I§(param1,param2,param3);
         this.§!!;§();
         return _loc4_;
      }
      
      public function §0i§() : Number
      {
         return this.§,D§.length;
      }
      
      public function §<!+§() : Boolean
      {
         return this.§7!0§;
      }
   }
}
