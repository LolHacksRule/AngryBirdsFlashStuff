package §-A§
{
   import § m§.§3!B§;
   import §"P§.§%w§;
   import §"P§.§9!L§;
   import §#b§.§85§;
   import §'!Y§.§+e§;
   import §'!Y§.§^Z§;
   import §,H§.§;!9§;
   import §,H§.§>!C§;
   import §,H§.Sprite;
   import §,Y§.Texture;
   import §1o§.§'M§;
   import §2!4§.§>5§;
   import §2!4§.§`!7§;
   import §=g§.§@!L§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § '§
   {
      
      public static const §8>§:int = 0;
      
      public static const §@i§:int = 1;
      
      public static const §#h§:int = 2;
      
      public static const §4#§:int = 3;
      
      public static const §+<§:int = 5;
      
      public static const §8H§:int = 3151368;
      
      protected static const §5!"§:int = 8;
      
      protected static const §[A§:int = 0;
      
      public static const §+!4§:Number = 46.25;
      
      public static const §3B§:Number = 52.5;
      
      protected static const §[P§:Number = -0.7;
      
      protected static const §-!O§:Number = 0;
      
      protected static var §0%§:Texture;
      
      public static const §=!8§:Number = 0.4;
       
      
      public var §return§:§%9§;
      
      public var §,!_§:Number;
      
      public var §4b§:Number;
      
      public var §&j§:Number;
      
      protected var §]!3§:Number;
      
      protected var §0P§:Number;
      
      protected var §3!4§:Number;
      
      protected var §#!-§:Number;
      
      public var §1=§:Number;
      
      public var §>!,§:Boolean = false;
      
      protected var §1?§:Number;
      
      public var §3!Q§:Vector.<§^!F§>;
      
      public var §4!]§:int;
      
      public var §!!$§:int;
      
      public var §4!B§:Number;
      
      public var §7!a§:Sprite;
      
      public var §^@§:int = 0;
      
      public var §<w§:Number = 0;
      
      public var §#^§:Array;
      
      public var §-!^§:Array;
      
      public var mSlingShotState:int;
      
      public var §^Q§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §5g§:Boolean = false;
      
      public var §`t§:Number;
      
      protected var §=#§:Sprite;
      
      protected var §7!]§:§>!C§;
      
      protected var §<h§:§>!C§;
      
      protected var §3$§:Sprite;
      
      protected var §40§:Sprite;
      
      protected var §`!>§:Sprite;
      
      protected var §<_§:§;!9§;
      
      protected var §;"§:§;!9§;
      
      private var §6!L§:Number = 0;
      
      private var §"%§:int = 0;
      
      protected var §`E§:Number = -0.7;
      
      protected var §8!&§:Number = 0;
      
      public function § '§(param1:§%9§, param2:§85§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§3!B§ = null;
         this.§3!Q§ = new Vector.<§^!F§>();
         super();
         this.§return§ = param1;
         this.§=#§ = param3;
         if(param2)
         {
            this.setPosition(param2.§<i§,param2.§@f§);
            this.§,U§();
            _loc4_ = 0;
            while(_loc4_ < param2.§;!8§)
            {
               _loc5_ = param2.§]!H§(_loc4_);
               this.addSlingshotObject(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§"%§ = this.§5C§();
            this.§4!]§ = 0;
            if(this.§3!Q§.length <= 0)
            {
               §@!L§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§,!_§ + " " + this.§4b§);
               this.setSlingShotState(§4#§);
            }
            else
            {
               this.setSlingShotState(§8>§);
            }
         }
         else
         {
            §@!L§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.setSlingShotState(§4#§);
         }
         this.§`t§ = 0;
         this.§;Y§();
         this.update(0,true);
         this.§1+§();
         this.§>!V§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§=#§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§6!L§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§4!]§ < this.§3!Q§.length;
      }
      
      public function dispose() : void
      {
         while(this.§3!Q§.length > 0)
         {
            this.§null§(0);
         }
         this.§3!Q§ = null;
         if(this.§=#§)
         {
            this.§=#§.dispose();
            this.§=#§ = null;
         }
         this.§7!a§ = null;
         this.§#^§ = null;
         this.§-!^§ = null;
      }
      
      public function §=l§(param1:String, param2:Number, param3:Number, param4:int = -1) : §^!F§
      {
         var _loc5_:§^!F§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,param4)).§5H§();
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §^!F§
      {
         var _loc5_:§^!F§ = new §^!F§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§3!Q§.push(_loc5_);
         }
         else
         {
            this.§3!Q§.splice(param4,0,_loc5_);
         }
         this.§7!a§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function setSlingShotState(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §8>§)
         {
            this.§&C§();
            this.§4!B§ = 1000;
         }
         else if(this.mSlingShotState == §@i§)
         {
            this.§&C§();
            this.§4!B§ = 0;
         }
         else if(this.mSlingShotState == §#h§)
         {
            this.§4!B§ = 10000;
            this.§5g§ = false;
            this.§&C§();
         }
         else if(this.mSlingShotState == §4#§)
         {
            this.§&C§();
            this.§4!B§ = 2000;
         }
         else if(this.mSlingShotState == §+<§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§5g§ = false;
               this.§&C§();
               this.§3!Q§[this.§4!]§].setPosition(this.§3!4§ - this.§3!Q§[this.§4!]§].radius * Math.cos(this.§<w§ / (180 / Math.PI)),this.§#!-§ + this.§3!Q§[this.§4!]§].radius * Math.sin(this.§<w§ / (180 / Math.PI)));
            }
            else
            {
               this.§&C§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §<!C§() : §%9§
      {
         return this.§return§;
      }
      
      public function §try§() : Boolean
      {
         return this.mSlingShotState == §4#§ && this.§4!B§ <= 0;
      }
      
      private function §,U§() : void
      {
         var _loc1_:§`!7§ = this.§1&§();
         var _loc2_:§>5§ = _loc1_.getFrame(0);
         var _loc3_:§>5§ = _loc1_.getFrame(1);
         this.§<_§ = new §;!9§(_loc2_.texture);
         this.§<_§.scaleX = _loc2_.scale;
         this.§<_§.scaleY = _loc2_.scale;
         this.§;"§ = new §;!9§(_loc3_.texture);
         this.§;"§.scaleX = _loc3_.scale;
         this.§;"§.scaleY = _loc3_.scale;
         this.§@!Z§();
         this.§%!§();
         this.§7!a§ = new Sprite();
         this.§=#§.addChild(this.§<_§);
         this.§=#§.addChild(this.§3$§);
         this.§=#§.addChild(this.§7!a§);
         this.§=#§.addChild(this.§`!>§);
         this.§=#§.addChild(this.§40§);
         this.§=#§.addChild(this.§;"§);
         this.§&j§ = this.§4b§ + 8.5;
      }
      
      protected function §1&§() : §`!7§
      {
         return this.§return§.§"y§.§ !2§("SLINGSHOT");
      }
      
      public function §@!Z§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§]!3§ = this.§,!_§;
         this.§0P§ = this.§4b§;
         this.§1?§ = §36§.§8g§;
         _loc1_ = null;
      }
      
      protected function §%!§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§0%§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §0%§ = this.§return§.§&w§.§8@§(_loc2_);
         }
         this.§`!>§ = new Sprite();
         var _loc1_:§;!9§ = new §;!9§(§0%§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§`!>§.addChild(_loc1_);
         this.§3$§ = new Sprite();
         this.§7!]§ = new §>!C§(2,2,§8H§);
         this.§3$§.addChild(this.§7!]§);
         this.§40§ = new Sprite();
         this.§<h§ = new §>!C§(2,2,§8H§);
         this.§40§.addChild(this.§<h§);
      }
      
      public function §>!V§(param1:Number) : void
      {
         var _loc2_:Number = this.§#!-§ / §%9§.§1[§;
         var _loc3_:Number = this.§3!4§ / §%9§.§1[§;
         var _loc4_:Number = 3.5 + 8 * ((this.§1?§ - this.§1=§) / this.§1?§);
         this.§`!>§.x = _loc3_;
         this.§`!>§.y = _loc2_;
         this.§`!>§.rotation = -this.§<w§ / (180 / Math.PI);
         this.§<_§.x = this.§,!_§ / §%9§.§1[§ - 3;
         this.§<_§.y = this.§4b§ / §%9§.§1[§ - 30;
         this.§;"§.x = this.§,!_§ / §%9§.§1[§ - 30;
         this.§;"§.y = this.§4b§ / §%9§.§1[§ - 30;
         this.§40§.x = this.§,!_§ / §%9§.§1[§ - 17;
         this.§40§.y = this.§4b§ / §%9§.§1[§ + 5;
         this.§40§.rotation = Math.atan2(_loc2_ - this.§40§.y,_loc3_ - this.§40§.x);
         this.§3$§.x = this.§,!_§ / §%9§.§1[§ + 22;
         this.§3$§.y = this.§4b§ / §%9§.§1[§;
         this.§3$§.rotation = Math.atan2(_loc2_ - this.§3$§.y,_loc3_ - this.§3$§.x);
         this.§<h§.width = Math.sqrt(Math.pow(_loc3_ - this.§40§.x,2) + Math.pow(_loc2_ - this.§40§.y,2));
         this.§7!]§.width = Math.sqrt(Math.pow(_loc3_ - this.§3$§.x,2) + Math.pow(_loc2_ - this.§3$§.y,2));
         this.§<h§.height = this.§7!]§.height = _loc4_ * 2;
         this.§<h§.y = -this.§<h§.height / 2;
         this.§7!]§.y = -this.§7!]§.height / 2;
         this.§^Q§ = false;
      }
      
      public function §9!K§() : void
      {
         while(this.§3!Q§.length > 0)
         {
            this.§null§(0,true);
         }
         this.§-=§();
         this.addSlingshotObject("BIRD_SARDINE",this.§,!_§,this.§4b§);
         this.setSlingShotState(§#h§);
      }
      
      protected function §-=§() : void
      {
         §'M§.§1T§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.setSlingShotState(§+<§);
      }
      
      public function §&C§() : void
      {
         this.setNewCoordinatesForRubber(this.§]!3§,this.§0P§ + this.§1?§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§3!4§ == param1 && this.§#!-§ == param2)
         {
            return true;
         }
         this.§1=§ = Math.sqrt((param2 - this.§0P§) * (param2 - this.§0P§) + (param1 - this.§]!3§) * (param1 - this.§]!3§));
         if(this.§1=§ > this.§1?§)
         {
            if(param3)
            {
               this.§1=§ = Math.sqrt((this.§#!-§ - this.§0P§) * (this.§#!-§ - this.§0P§) + (this.§3!4§ - this.§]!3§) * (this.§3!4§ - this.§]!3§));
               return false;
            }
            param1 = this.§]!3§ + this.§1?§ * (param1 - this.§]!3§) / this.§1=§;
            param2 = this.§0P§ + this.§1?§ * (param2 - this.§0P§) / this.§1=§;
            this.§1=§ = this.§1?§;
         }
         this.§3!4§ = param1;
         this.§#!-§ = param2;
         this.§<w§ = Math.atan2(-(this.§#!-§ - this.§0P§),this.§3!4§ - this.§]!3§);
         this.§<w§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§3!4§ = param1 + this.§`E§;
            this.§#!-§ = param2 + this.§8!&§;
            this.§<w§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§1?§ / 2;
         if(this.§1=§ > _loc7_ && this.§<w§ > -90 - _loc4_ + _loc5_ && this.§<w§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§]!3§ + _loc7_ * (param1 - this.§]!3§) / this.§1=§;
            param2 = this.§0P§ + _loc7_ * (param2 - this.§0P§) / this.§1=§;
            this.§1=§ = _loc7_;
            this.§3!4§ = param1;
            this.§#!-§ = param2;
         }
         else if(this.§1=§ > _loc7_ && this.§<w§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§<w§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§1?§ - _loc7_) * (Math.abs(this.§<w§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§]!3§ + _loc8_ * (param1 - this.§]!3§) / this.§1=§;
            param2 = this.§0P§ + _loc8_ * (param2 - this.§0P§) / this.§1=§;
            this.§1=§ = _loc8_;
            this.§3!4§ = param1;
            this.§#!-§ = param2;
         }
         if(this.§1=§ <= this.§1?§ * 0.45)
         {
            this.§>!,§ = true;
         }
         else if(this.§>!,§ && this.§1=§ >= this.§1?§ * 0.8)
         {
            this.§^<§();
            this.§>!,§ = false;
         }
         this.§^Q§ = true;
         return true;
      }
      
      protected function §^<§() : void
      {
         §'M§.§1T§("SlingshotStreched");
      }
      
      public function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§,!_§,this.§4b§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§,!_§;
         this.§,!_§ = param1;
         var _loc5_:Number = param2 - this.§4b§;
         this.§4b§ = param2;
         this.§&j§ += _loc5_;
         this.§0P§ += _loc5_;
         this.§#!-§ += _loc5_;
         this.§]!3§ += _loc4_;
         this.§3!4§ += _loc4_;
         if(param3)
         {
            this.§>!V§(0);
         }
         this.§^Q§ = true;
      }
      
      public function §@!X§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§^!F§ = null;
         _loc2_ = this.§3!Q§[this.§4!]§];
         var _loc3_:Number = this.§1=§ / this.§1?§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§ '§.§3B§) : Number(§ '§.§+!4§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §=a§() : Point
      {
         var _loc1_:§^!F§ = null;
         if(this.§3!Q§.length > this.§4!]§)
         {
            _loc1_ = this.§3!Q§[this.§4!]§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §%§() : Point
      {
         return new Point(this.§]!3§,this.§0P§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§^!F§ = null;
         this.updateGroundControl(param1);
         if(this.§^Q§)
         {
            this.§>!V§(param1);
         }
         this.§4!B§ -= param1;
         if(this.§4!B§ < 0)
         {
            this.§4!B§ = 0;
         }
         if(this.mSlingShotState != §4#§)
         {
            this.§1$§(param1,param2);
            _loc3_ = null;
            if(this.§3!Q§.length > 0)
            {
               _loc3_ = this.§3!Q§[this.§4!]§];
            }
            if(_loc3_)
            {
               _loc3_.§&N§(param1);
            }
            if(!_loc3_)
            {
               this.setSlingShotState(§4#§);
            }
            else if(this.mSlingShotState == §8>§)
            {
               if(this.§4!B§ <= 0)
               {
                  this.setSlingShotState(§@i§);
                  _loc3_.§"k§();
               }
            }
            else if(this.mSlingShotState == §@i§)
            {
               if(_loc3_.§^!<§)
               {
                  this.setSlingShotState(§#h§);
               }
            }
            else if(this.mSlingShotState == §#h§)
            {
               _loc3_.setPosition(this.§3!4§ - _loc3_.radius * Math.cos(this.§<w§ / (180 / Math.PI)),this.§#!-§ + _loc3_.radius * Math.sin(this.§<w§ / (180 / Math.PI)));
               if(this.§5g§)
               {
                  this.§,s§(this.§1=§ / this.§1?§,this.§<w§);
               }
            }
         }
      }
      
      public function §@h§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§^!F§ = null;
         if(this.§3!Q§.length > 0)
         {
            _loc5_ = this.§3!Q§[this.§4!]§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§,s§(param3,param4);
      }
      
      protected function §,s§(param1:Number, param2:Number) : void
      {
         var _loc3_:§^!F§ = null;
         this.§`E§ = §[P§;
         this.§8!&§ = §-!O§;
         if(this.§3!Q§.length > 0)
         {
            _loc3_ = this.§3!Q§[this.§4!]§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§5g§ = false;
         this.§6!L§ = new Date().time;
         this.§return§.§9!N§(_loc3_,param1,param2);
         this.§null§(this.§4!]§,_loc3_.§+H§ > 0);
         this.§[!§();
         if(this.§4!]§ >= this.§3!Q§.length)
         {
            this.setSlingShotState(§4#§);
         }
         else
         {
            this.setSlingShotState(§8>§);
         }
      }
      
      protected function §[!§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §'M§.§1T§("BirdShot" + _loc1_);
      }
      
      public function §1$§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§4!]§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§3!Q§.length)
         {
            if(this.mSlingShotState == §+<§)
            {
               this.§3!Q§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§3!Q§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§^!F§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§&C§();
         if(this.§!!$§ >= this.§3!Q§.length)
         {
            return false;
         }
         _loc1_ = this.§3!Q§[this.§!!$§];
         _loc2_ = §9!L§.§=C§(_loc1_.name).score;
         this.§return§.addScore(_loc2_,§?s§.§9!2§,true,_loc1_.x,_loc1_.y - 3,§+e§.§"s§(_loc1_.name));
         _loc1_.§;!`§(-1,true);
         ++this.§!!$§;
         return true;
      }
      
      public function §5C§() : int
      {
         var _loc2_:§^!F§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§3!Q§)
         {
            _loc1_ += §9!L§.§=C§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §+!,§() : int
      {
         return this.§"%§;
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§`t§ >= 0)
         {
            this.§`t§ -= param1;
            if(this.§`t§ <= 0)
            {
               _loc2_ = this.§return§.objects.§8!"§(this.§]!3§,this.§&j§);
               if(_loc2_ < 0)
               {
                  this.applyGravity(0.1);
                  this.§`t§ = 0;
               }
               else if(!this.§return§.objects.§"!B§(_loc2_).§2e§)
               {
                  this.§`t§ = -1;
               }
               else if(this.§return§.objects.§"!B§(_loc2_).§ !3§())
               {
                  this.§`t§ = 2000;
               }
               else
               {
                  this.§`t§ = 500;
               }
            }
         }
      }
      
      public function §1+§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§return§.objects.§8!"§(this.§]!3§,this.§&j§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.applyGravity(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§`t§ = -1;
      }
      
      public function §"0§(param1:Number, param2:Number) : void
      {
         this.§=#§.x = -param1;
         this.§=#§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §#h§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §#h§ && this.§1=§ > this.§1?§ * §=!8§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.setSlingShotState(§#h§);
         var _loc1_:§^!F§ = this.§3!Q§[this.§4!]§];
         _loc1_.§;!`§(§%w§.§6!1§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§^!F§ = this.§3!Q§[this.§4!]§];
         _loc1_.§;!`§(§%w§.§`!Z§);
      }
      
      public function shoot() : void
      {
         this.§5g§ = true;
      }
      
      protected function §null§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§^!F§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§3!Q§[param1])
         {
            _loc3_ = this.§3!Q§[param1];
            this.§7!a§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§9!8§(this.§3!Q§[param1]);
            }
            _loc3_.dispose();
            this.§3!Q§[param1] = null;
         }
         this.§3!Q§.splice(param1,1);
      }
      
      public function §9!8§(param1:§^!F§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §%9§.§1[§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §%9§.§1[§) + Math.random() * -_loc8_ * 2;
            this.§return§.particles.addParticle(§+e§.§#0§,§^Z§.§<!%§,§+e§.§]@§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§+e§.§super§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§return§.particles.addParticle(§+e§.§ O§,§^Z§.§<!%§,§+e§.§]@§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §@!C§(param1:§^!F§) : void
      {
         this.§null§(this.§3!Q§.indexOf(param1));
      }
      
      public function §;Y§() : void
      {
         var _loc2_:§^!F§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§^!F§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§3!Q§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§,!_§ - this.§3!Q§[_loc1_].x) * (this.§,!_§ - this.§3!Q§[_loc1_].x) + (this.§4b§ - this.§3!Q§[_loc1_].y) * (this.§4b§ - this.§3!Q§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§,!_§ - this.§3!Q§[_loc1_ + 1].x) * (this.§,!_§ - this.§3!Q§[_loc1_ + 1].x) + (this.§4b§ - this.§3!Q§[_loc1_ + 1].y) * (this.§4b§ - this.§3!Q§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§3!Q§[_loc1_];
               this.§3!Q§.splice(_loc1_,1);
               this.§3!Q§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§7!a§.numChildren > 0)
         {
            this.§7!a§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§3!Q§.length)
         {
            _loc2_ = this.§3!Q§[_loc1_];
            this.§7!a§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §1!2§(param1:Number, param2:Number) : §^!F§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§3!Q§.length)
         {
            if(this.§3!Q§[_loc3_])
            {
               if(this.§3!Q§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§3!Q§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §]1§(param1:Number, param2:Number) : § '§
      {
         if(param1 >= this.§,!_§ - this.§1?§ / 4 && param1 <= this.§,!_§ + this.§1?§ / 4 && param2 >= this.§4b§ - this.§1?§ / 4 && this.§4b§ <= this.§&j§)
         {
            return this;
         }
         return null;
      }
      
      public function §0t§(param1:§85§) : void
      {
         var _loc3_:§^!F§ = null;
         var _loc4_:§3!B§ = null;
         param1.§<i§ = this.§,!_§;
         param1.§@f§ = this.§4b§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§3!Q§.length)
         {
            _loc3_ = this.§3!Q§[_loc2_];
            (_loc4_ = new §3!B§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§4!7§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §>!1§() : void
      {
         while(this.§3!Q§.length > 0)
         {
            this.§@!C§(this.§3!Q§[0]);
         }
      }
      
      public function §<0§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§3!Q§.length)
         {
            if(this.§3!Q§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§3!Q§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§,!_§ > param1.x && this.§,!_§ < param2.x && this.§4b§ > param1.y && this.§4b§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §"!U§() : Array
      {
         return [this.§;"§,this.§<_§];
      }
      
      public function §+!V§(param1:String, param2:Number, param3:Number) : §^!F§
      {
         var _loc4_:§^!F§ = this.addSlingshotObject(param1,param2,param3);
         this.§;Y§();
         return _loc4_;
      }
      
      public function §?N§() : Number
      {
         return this.§3!Q§.length;
      }
   }
}
