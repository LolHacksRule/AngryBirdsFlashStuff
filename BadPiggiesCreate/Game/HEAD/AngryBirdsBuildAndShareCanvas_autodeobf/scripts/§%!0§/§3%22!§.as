package §%!0§
{
   import §#";§.§0"#§;
   import §+!-§.§4!O§;
   import §+!-§.§7"#§;
   import §+!-§.Sprite;
   import §0!%§.Texture;
   import §6]§.§,"0§;
   import §;"7§.§"!B§;
   import §;"7§.§+!I§;
   import §<i§.§'!e§;
   import §[!P§.§-2§;
   import §]";§.§!<§;
   import §]";§.§34§;
   import §case§.§6!Q§;
   import §case§.§`!E§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §3"!§
   {
      
      public static const §`!C§:int = 0;
      
      public static const §7!x§:int = 1;
      
      public static const §'!f§:int = 2;
      
      public static const §3"4§:int = 3;
      
      public static const §`!s§:int = 5;
      
      public static const §"$§:int = 3151368;
      
      protected static const §]!5§:int = 8;
      
      protected static const §"!o§:int = 0;
      
      public static const §^X§:Number = 46.25;
      
      public static const §&S§:Number = 52.5;
      
      protected static const §3""§:Number = -0.7;
      
      protected static const §@!d§:Number = 0;
      
      protected static var §?,§:Texture;
      
      public static const §!+§:Number = 0.4;
       
      
      public var §`!G§:§,4§;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §5"2§:Number;
      
      protected var §!O§:Number;
      
      protected var §>L§:Number;
      
      protected var §^!i§:Number;
      
      protected var §@%§:Number;
      
      public var §?!g§:Number;
      
      public var §4Y§:Boolean = false;
      
      protected var §6O§:Number;
      
      public var mBirds:Vector.<§%Q§>;
      
      public var §,";§:int;
      
      public var §'!C§:int;
      
      public var §3R§:Number;
      
      public var §,!]§:Sprite;
      
      public var §?!F§:int = 0;
      
      public var §!P§:Number = 0;
      
      public var §0K§:Array;
      
      public var §,"4§:Array;
      
      public var mSlingShotState:int;
      
      public var §#l§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §9!M§:Boolean = false;
      
      public var §?U§:Number;
      
      protected var §[!!§:Boolean = false;
      
      protected var § D§:Sprite;
      
      protected var §<<§:§4!O§;
      
      protected var §!!Q§:§4!O§;
      
      protected var §0c§:Sprite;
      
      protected var §#!i§:Sprite;
      
      protected var § L§:Sprite;
      
      protected var § !_§:§7"#§;
      
      protected var §]G§:§7"#§;
      
      private var §-!Z§:Number = 0;
      
      private var §=!J§:int = 0;
      
      protected var §!!P§:Number = -0.7;
      
      protected var §!!L§:Number = 0;
      
      public function §3"!§(param1:§,4§, param2:§'!e§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§-2§ = null;
         this.mBirds = new Vector.<§%Q§>();
         super();
         this.§`!G§ = param1;
         this.§ D§ = param3;
         if(param2)
         {
            this.setPosition(param2.§!M§,param2.§finally§);
            this.§8![§();
            _loc4_ = 0;
            while(_loc4_ < param2.§@!;§)
            {
               _loc5_ = param2.§+,§(_loc4_);
               this.§<f§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§=!J§ = this.§'i§();
            this.§,";§ = 0;
            if(this.mBirds.length <= 0)
            {
               §,"0§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.mX + " " + this.mY);
               this.setSlingShotState(§3"4§);
            }
            else
            {
               this.setSlingShotState(§`!C§);
            }
         }
         else
         {
            §,"0§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.setSlingShotState(§3"4§);
         }
         this.§?U§ = 0;
         this.§2X§();
         this.update(0,true);
         this.§=t§();
         this.§6!t§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§ D§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§-!Z§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§,";§ < this.mBirds.length;
      }
      
      public function dispose() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§26§(0);
         }
         this.mBirds = null;
         if(this.§ D§)
         {
            this.§ D§.dispose();
            this.§ D§ = null;
         }
         this.§,!]§ = null;
         this.§0K§ = null;
         this.§,"4§ = null;
      }
      
      public function §!K§(param1:String, param2:Number, param3:Number, param4:int = -1) : §%Q§
      {
         var _loc5_:§%Q§;
         (_loc5_ = this.§<f§(param1,param2,param3,param4)).§=!h§();
         this.setSlingShotState(§'!f§);
         return _loc5_;
      }
      
      protected function §<f§(param1:String, param2:Number, param3:Number, param4:int = -1) : §%Q§
      {
         var _loc5_:§%Q§ = new §%Q§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.mBirds.push(_loc5_);
         }
         else
         {
            this.mBirds.splice(param4,0,_loc5_);
         }
         this.§,!]§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function setSlingShotState(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §`!C§)
         {
            this.§[!z§();
            this.§3R§ = 1000;
         }
         else if(this.mSlingShotState == §7!x§)
         {
            this.§[!z§();
            this.§3R§ = 0;
         }
         else if(this.mSlingShotState == §'!f§)
         {
            this.§3R§ = 10000;
            this.§9!M§ = false;
            this.§[!z§();
         }
         else if(this.mSlingShotState == §3"4§)
         {
            this.§[!z§();
            this.§3R§ = 2000;
         }
         else if(this.mSlingShotState == §`!s§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§9!M§ = false;
               this.§[!z§();
               this.mBirds[this.§,";§].setPosition(this.§^!i§ - this.mBirds[this.§,";§].radius * Math.cos(this.§!P§ / (180 / Math.PI)),this.§@%§ + this.mBirds[this.§,";§].radius * Math.sin(this.§!P§ / (180 / Math.PI)));
            }
            else
            {
               this.§[!z§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §0z§() : §,4§
      {
         return this.§`!G§;
      }
      
      public function §,@§() : Boolean
      {
         return this.mSlingShotState == §3"4§ && this.§3R§ <= 0;
      }
      
      private function §8![§() : void
      {
         var _loc1_:§"!B§ = this.§,!Z§();
         var _loc2_:§+!I§ = _loc1_.getFrame(0);
         var _loc3_:§+!I§ = _loc1_.getFrame(1);
         this.§ !_§ = new §7"#§(_loc2_.texture);
         this.§ !_§.scaleX = _loc2_.scale;
         this.§ !_§.scaleY = _loc2_.scale;
         this.§]G§ = new §7"#§(_loc3_.texture);
         this.§]G§.scaleX = _loc3_.scale;
         this.§]G§.scaleY = _loc3_.scale;
         this.§>!Z§();
         this.§;!5§();
         this.§,!]§ = new Sprite();
         this.§ D§.addChild(this.§ !_§);
         this.§ D§.addChild(this.§0c§);
         this.§ D§.addChild(this.§,!]§);
         this.§ D§.addChild(this.§ L§);
         this.§ D§.addChild(this.§#!i§);
         this.§ D§.addChild(this.§]G§);
         this.§5"2§ = this.mY + 8.5;
      }
      
      protected function §,!Z§() : §"!B§
      {
         return this.§`!G§.§00§.§`" §("SLINGSHOT");
      }
      
      public function §>!Z§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§!O§ = this.mX;
         this.§>L§ = this.mY;
         this.§6O§ = §,g§.§!!+§;
         _loc1_ = null;
      }
      
      protected function §;!5§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§?,§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §?,§ = this.§`!G§.§8=§.§%N§(_loc2_);
         }
         this.§ L§ = new Sprite();
         var _loc1_:§7"#§ = new §7"#§(§?,§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§ L§.addChild(_loc1_);
         this.§0c§ = new Sprite();
         this.§<<§ = new §4!O§(2,2,§"$§);
         this.§0c§.addChild(this.§<<§);
         this.§#!i§ = new Sprite();
         this.§!!Q§ = new §4!O§(2,2,§"$§);
         this.§#!i§.addChild(this.§!!Q§);
      }
      
      public function §6!t§(param1:Number) : void
      {
         var _loc2_:Number = this.§@%§ / §,4§.§,^§;
         var _loc3_:Number = this.§^!i§ / §,4§.§,^§;
         var _loc4_:Number = 3.5 + 8 * ((this.§6O§ - this.§?!g§) / this.§6O§);
         this.§ L§.x = _loc3_;
         this.§ L§.y = _loc2_;
         this.§ L§.rotation = -this.§!P§ / (180 / Math.PI);
         this.§ !_§.x = this.mX / §,4§.§,^§ - 3;
         this.§ !_§.y = this.mY / §,4§.§,^§ - 30;
         this.§]G§.x = this.mX / §,4§.§,^§ - 30;
         this.§]G§.y = this.mY / §,4§.§,^§ - 30;
         this.§#!i§.x = this.mX / §,4§.§,^§ - 17;
         this.§#!i§.y = this.mY / §,4§.§,^§ + 5;
         this.§#!i§.rotation = Math.atan2(_loc2_ - this.§#!i§.y,_loc3_ - this.§#!i§.x);
         this.§0c§.x = this.mX / §,4§.§,^§ + 22;
         this.§0c§.y = this.mY / §,4§.§,^§;
         this.§0c§.rotation = Math.atan2(_loc2_ - this.§0c§.y,_loc3_ - this.§0c§.x);
         this.§!!Q§.width = Math.sqrt(Math.pow(_loc3_ - this.§#!i§.x,2) + Math.pow(_loc2_ - this.§#!i§.y,2));
         this.§<<§.width = Math.sqrt(Math.pow(_loc3_ - this.§0c§.x,2) + Math.pow(_loc2_ - this.§0c§.y,2));
         this.§!!Q§.height = this.§<<§.height = _loc4_ * 2;
         this.§!!Q§.y = -this.§!!Q§.height / 2;
         this.§<<§.y = -this.§<<§.height / 2;
         this.§#l§ = false;
      }
      
      public function §7!_§() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§26§(0,true);
         }
         this.§+!p§();
         this.§<f§("BIRD_SARDINE",this.mX,this.mY);
         this.setSlingShotState(§'!f§);
      }
      
      protected function §+!p§() : void
      {
         §0"#§.§9"2§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.setSlingShotState(§`!s§);
      }
      
      public function §[!z§() : void
      {
         this.setNewCoordinatesForRubber(this.§!O§,this.§>L§ + this.§6O§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§^!i§ == param1 && this.§@%§ == param2)
         {
            return true;
         }
         this.§?!g§ = Math.sqrt((param2 - this.§>L§) * (param2 - this.§>L§) + (param1 - this.§!O§) * (param1 - this.§!O§));
         if(this.§?!g§ > this.§6O§)
         {
            if(param3)
            {
               this.§?!g§ = Math.sqrt((this.§@%§ - this.§>L§) * (this.§@%§ - this.§>L§) + (this.§^!i§ - this.§!O§) * (this.§^!i§ - this.§!O§));
               return false;
            }
            param1 = this.§!O§ + this.§6O§ * (param1 - this.§!O§) / this.§?!g§;
            param2 = this.§>L§ + this.§6O§ * (param2 - this.§>L§) / this.§?!g§;
            this.§?!g§ = this.§6O§;
         }
         this.§^!i§ = param1;
         this.§@%§ = param2;
         this.§!P§ = Math.atan2(-(this.§@%§ - this.§>L§),this.§^!i§ - this.§!O§);
         this.§!P§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§^!i§ = param1 + this.§!!P§;
            this.§@%§ = param2 + this.§!!L§;
            this.§!P§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§6O§ / 2;
         if(this.§?!g§ > _loc7_ && this.§!P§ > -90 - _loc4_ + _loc5_ && this.§!P§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§!O§ + _loc7_ * (param1 - this.§!O§) / this.§?!g§;
            param2 = this.§>L§ + _loc7_ * (param2 - this.§>L§) / this.§?!g§;
            this.§?!g§ = _loc7_;
            this.§^!i§ = param1;
            this.§@%§ = param2;
         }
         else if(this.§?!g§ > _loc7_ && this.§!P§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§!P§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§6O§ - _loc7_) * (Math.abs(this.§!P§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§!O§ + _loc8_ * (param1 - this.§!O§) / this.§?!g§;
            param2 = this.§>L§ + _loc8_ * (param2 - this.§>L§) / this.§?!g§;
            this.§?!g§ = _loc8_;
            this.§^!i§ = param1;
            this.§@%§ = param2;
         }
         if(this.§?!g§ <= this.§6O§ * 0.45)
         {
            this.§4Y§ = true;
         }
         else if(this.§4Y§ && this.§?!g§ >= this.§6O§ * 0.8)
         {
            this.§1!@§();
            this.§4Y§ = false;
         }
         this.§#l§ = true;
         return true;
      }
      
      protected function §1!@§() : void
      {
         §0"#§.§9"2§("SlingshotStreched");
      }
      
      public function §1!?§(param1:Number) : void
      {
         this.setPosition(this.mX,this.mY + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.mX;
         this.mX = param1;
         var _loc5_:Number = param2 - this.mY;
         this.mY = param2;
         this.§5"2§ += _loc5_;
         this.§>L§ += _loc5_;
         this.§@%§ += _loc5_;
         this.§!O§ += _loc4_;
         this.§^!i§ += _loc4_;
         if(param3)
         {
            this.§6!t§(0);
         }
         this.§#l§ = true;
      }
      
      public function §@!Y§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§%Q§ = null;
         _loc2_ = this.mBirds[this.§,";§];
         var _loc3_:Number = this.§?!g§ / this.§6O§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§3"!§.§&S§) : Number(§3"!§.§^X§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §]5§() : Point
      {
         var _loc1_:§%Q§ = null;
         if(this.mBirds.length > this.§,";§)
         {
            _loc1_ = this.mBirds[this.§,";§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §5!s§() : Point
      {
         return new Point(this.§!O§,this.§>L§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§%Q§ = null;
         this.§3u§(param1);
         if(this.§#l§)
         {
            this.§6!t§(param1);
         }
         this.§3R§ -= param1;
         if(this.§3R§ < 0)
         {
            this.§3R§ = 0;
         }
         if(this.mSlingShotState != §3"4§)
         {
            this.§#!&§(param1,param2);
            _loc3_ = null;
            if(this.mBirds.length > 0)
            {
               _loc3_ = this.mBirds[this.§,";§];
            }
            if(_loc3_)
            {
               _loc3_.§"#§(param1);
            }
            if(!_loc3_)
            {
               this.setSlingShotState(§3"4§);
            }
            else if(this.mSlingShotState == §`!C§)
            {
               if(this.§3R§ <= 0)
               {
                  this.setSlingShotState(§7!x§);
                  _loc3_.§`!Q§();
               }
            }
            else if(this.mSlingShotState == §7!x§)
            {
               if(_loc3_.§'&§)
               {
                  this.setSlingShotState(§'!f§);
               }
            }
            else if(this.mSlingShotState == §'!f§)
            {
               _loc3_.setPosition(this.§^!i§ - _loc3_.radius * Math.cos(this.§!P§ / (180 / Math.PI)),this.§@%§ + _loc3_.radius * Math.sin(this.§!P§ / (180 / Math.PI)));
               if(this.§9!M§)
               {
                  this.§7",§(this.§?!g§ / this.§6O§,this.§!P§);
               }
            }
         }
      }
      
      public function §'q§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§%Q§ = null;
         if(this.mBirds.length > 0)
         {
            _loc5_ = this.mBirds[this.§,";§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§7",§(param3,param4);
      }
      
      protected function §7",§(param1:Number, param2:Number) : void
      {
         var _loc3_:§%Q§ = null;
         this.§!!P§ = §3""§;
         this.§!!L§ = §@!d§;
         if(this.mBirds.length > 0)
         {
            _loc3_ = this.mBirds[this.§,";§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§9!M§ = false;
         this.§-!Z§ = new Date().time;
         this.§`!G§.§59§(_loc3_,param1,param2);
         this.§26§(this.§,";§,_loc3_.§`#§ > 0);
         this.§%!k§();
         if(this.§,";§ >= this.mBirds.length)
         {
            this.setSlingShotState(§3"4§);
         }
         else
         {
            this.setSlingShotState(§`!C§);
         }
      }
      
      protected function §%!k§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §0"#§.§9"2§("BirdShot" + _loc1_);
      }
      
      public function §#!&§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§,";§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.mBirds.length)
         {
            if(this.mSlingShotState == §`!s§)
            {
               this.mBirds[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.mBirds[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§%Q§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§[!z§();
         if(this.§'!C§ >= this.mBirds.length)
         {
            return false;
         }
         _loc1_ = this.mBirds[this.§'!C§];
         _loc2_ = §!<§.§[!@§(_loc1_.name).score;
         this.§`!G§.addScore(_loc2_,§3!s§.§8!#§,true,_loc1_.x,_loc1_.y - 3,§`!E§.§6!%§(_loc1_.name));
         _loc1_.§5"7§(-1,true);
         ++this.§'!C§;
         return true;
      }
      
      public function §'i§() : int
      {
         var _loc2_:§%Q§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mBirds)
         {
            _loc1_ += §!<§.§[!@§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §9C§() : int
      {
         return this.§=!J§;
      }
      
      public function §3u§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§?U§ >= 0)
         {
            this.§?U§ -= param1;
            if(this.§?U§ <= 0)
            {
               _loc2_ = this.§`!G§.objects.§&A§(this.§!O§,this.§5"2§);
               if(_loc2_ < 0)
               {
                  this.§1!?§(0.1);
                  this.§?U§ = 0;
               }
               else if(!this.§`!G§.objects.getObject(_loc2_).§5"$§)
               {
                  this.§?U§ = -1;
               }
               else if(this.§`!G§.objects.getObject(_loc2_).§+!>§())
               {
                  this.§?U§ = 2000;
               }
               else
               {
                  this.§?U§ = 500;
               }
            }
         }
      }
      
      public function §=t§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§`!G§.objects.§&A§(this.§!O§,this.§5"2§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§1!?§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§?U§ = -1;
      }
      
      public function §6"1§(param1:Number, param2:Number) : void
      {
         this.§ D§.x = -param1;
         this.§ D§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §'!f§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §'!f§ && this.§?!g§ > this.§6O§ * §!+§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.setSlingShotState(§'!f§);
         var _loc1_:§%Q§ = this.mBirds[this.§,";§];
         _loc1_.§5"7§(§34§.§ c§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§%Q§ = this.mBirds[this.§,";§];
         _loc1_.§5"7§(§34§.§'!`§);
      }
      
      public function shoot() : void
      {
         this.§9!M§ = true;
      }
      
      protected function §26§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§%Q§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.mBirds[param1])
         {
            _loc3_ = this.mBirds[param1];
            this.§,!]§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§>q§(this.mBirds[param1]);
            }
            _loc3_.dispose();
            this.mBirds[param1] = null;
         }
         this.mBirds.splice(param1,1);
      }
      
      public function §>q§(param1:§%Q§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §,4§.§,^§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §,4§.§,^§) + Math.random() * -_loc8_ * 2;
            this.§`!G§.particles.§'p§(§`!E§.§@!1§,§6!Q§.§+f§,§`!E§.§]W§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§`!E§.§]!I§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§`!G§.particles.§'p§(§`!E§.§5!p§,§6!Q§.§+f§,§`!E§.§]W§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:§%Q§) : void
      {
         this.§26§(this.mBirds.indexOf(param1));
      }
      
      public function §2X§() : void
      {
         var _loc2_:§%Q§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§%Q§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.mBirds.length - 1)
         {
            _loc3_ = Math.sqrt((this.mX - this.mBirds[_loc1_].x) * (this.mX - this.mBirds[_loc1_].x) + (this.mY - this.mBirds[_loc1_].y) * (this.mY - this.mBirds[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.mX - this.mBirds[_loc1_ + 1].x) * (this.mX - this.mBirds[_loc1_ + 1].x) + (this.mY - this.mBirds[_loc1_ + 1].y) * (this.mY - this.mBirds[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.mBirds[_loc1_];
               this.mBirds.splice(_loc1_,1);
               this.mBirds.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§,!]§.numChildren > 0)
         {
            this.§,!]§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.mBirds.length)
         {
            _loc2_ = this.mBirds[_loc1_];
            this.§,!]§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §%Q§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.mBirds.length)
         {
            if(this.mBirds[_loc3_])
            {
               if(this.mBirds[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.mBirds[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function intersectsWithPoint(param1:Number, param2:Number) : §3"!§
      {
         if(param1 >= this.mX - this.§6O§ / 4 && param1 <= this.mX + this.§6O§ / 4 && param2 >= this.mY - this.§6O§ / 4 && this.mY <= this.§5"2§)
         {
            return this;
         }
         return null;
      }
      
      public function writeSlingshotInformation(param1:§'!e§) : void
      {
         var _loc3_:§%Q§ = null;
         var _loc4_:§-2§ = null;
         param1.§!M§ = this.mX;
         param1.§finally§ = this.mY;
         var _loc2_:Number = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc3_ = this.mBirds[_loc2_];
            (_loc4_ = new §-2§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§=o§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §`!q§() : void
      {
         while(this.mBirds.length > 0)
         {
            this.removeObject(this.mBirds[0]);
         }
      }
      
      public function getObjectsWithinBoundingBox(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.mBirds.length)
         {
            if(this.mBirds[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.mBirds[_loc4_]);
            }
            _loc4_++;
         }
         if(this.mX > param1.x && this.mX < param2.x && this.mY > param1.y && this.mY < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §=B§() : Array
      {
         return [this.§]G§,this.§ !_§];
      }
      
      public function addNewBirdToEndOfList(param1:String, param2:Number, param3:Number) : §%Q§
      {
         var _loc4_:§%Q§ = this.§<f§(param1,param2,param3);
         this.§2X§();
         return _loc4_;
      }
      
      public function getBirdCount() : Number
      {
         return this.mBirds.length;
      }
      
      public function §5§() : Boolean
      {
         return this.§[!!§;
      }
   }
}
