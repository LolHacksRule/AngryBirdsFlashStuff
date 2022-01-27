package §^!7§
{
   import §"!<§.Texture;
   import §%!$§.§[Z§;
   import §%O§.§6?§;
   import §%O§.§=I§;
   import §,J§.§74§;
   import §7h§.§7!"§;
   import §<!-§.§8J§;
   import §<!-§.Sprite;
   import §<!-§.§^B§;
   import §>!Z§.§+!Z§;
   import §>!Z§.§`!S§;
   import §>u§.§2P§;
   import §`Y§.§3!M§;
   import §`Y§.§]!%§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §]H§
   {
      
      public static const §8=§:int = 0;
      
      public static const §6u§:int = 1;
      
      public static const STATE_BIRD_IS_READY:int = 2;
      
      public static const §+;§:int = 3;
      
      public static const §0[§:int = 5;
      
      public static const §8!`§:int = 3151368;
      
      protected static const §`!?§:int = 8;
      
      protected static const §5!S§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const §+_§:Number = 52.5;
      
      protected static const §&-§:Number = -0.7;
      
      protected static const §?!;§:Number = 0;
      
      protected static var §2!4§:Texture;
      
      public static const §0!E§:Number = 0.4;
       
      
      public var §<&§:§^A§;
      
      public var §-!c§:Number;
      
      public var §3![§:Number;
      
      public var §?<§:Number;
      
      protected var §>]§:Number;
      
      protected var §&!d§:Number;
      
      protected var §<4§:Number;
      
      protected var §0x§:Number;
      
      public var §!m§:Number;
      
      public var §'M§:Boolean = false;
      
      protected var §+§:Number;
      
      public var §&!9§:Vector.<§]!N§>;
      
      public var §`!E§:int;
      
      public var §'Y§:int;
      
      public var §;?§:Number;
      
      public var §^j§:Sprite;
      
      public var §]!Y§:int = 0;
      
      public var §1!O§:Number = 0;
      
      public var §;!§:Array;
      
      public var §6p§:Array;
      
      public var mSlingShotState:int;
      
      public var §2!G§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §;z§:Boolean = false;
      
      public var §=K§:Number;
      
      protected var §0b§:Sprite;
      
      protected var §,g§:§8J§;
      
      protected var §7r§:§8J§;
      
      protected var §0>§:Sprite;
      
      protected var §]!S§:Sprite;
      
      protected var § g§:Sprite;
      
      protected var §'!=§:§^B§;
      
      protected var §]0§:§^B§;
      
      private var §'?§:Number = 0;
      
      private var §;!"§:int = 0;
      
      protected var §-8§:Number = -0.7;
      
      protected var §-@§:Number = 0;
      
      public function §]H§(param1:§^A§, param2:§74§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§2P§ = null;
         this.§&!9§ = new Vector.<§]!N§>();
         super();
         this.§<&§ = param1;
         this.§0b§ = param3;
         if(param2)
         {
            this.setPosition(param2.§&Y§,param2.§-O§);
            this.§<,§();
            _loc4_ = 0;
            while(_loc4_ < param2.§^!=§)
            {
               _loc5_ = param2.§#m§(_loc4_);
               this.addSlingshotObject(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§;!"§ = this.§7w§();
            this.§`!E§ = 0;
            if(this.§&!9§.length <= 0)
            {
               §[Z§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§-!c§ + " " + this.§3![§);
               this.§,^§(§+;§);
            }
            else
            {
               this.§,^§(§8=§);
            }
         }
         else
         {
            §[Z§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§,^§(§+;§);
         }
         this.§=K§ = 0;
         this.§9!O§();
         this.update(0,true);
         this.§2!<§();
         this.§`J§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§0b§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§'?§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§`!E§ < this.§&!9§.length;
      }
      
      public function dispose() : void
      {
         while(this.§&!9§.length > 0)
         {
            this.§;A§(0);
         }
         this.§&!9§ = null;
         if(this.§0b§)
         {
            this.§0b§.dispose();
            this.§0b§ = null;
         }
         this.§^j§ = null;
         this.§;!§ = null;
         this.§6p§ = null;
      }
      
      public function §#r§(param1:String, param2:Number, param3:Number, param4:int = -1) : §]!N§
      {
         var _loc5_:§]!N§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,param4)).§5M§();
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §]!N§
      {
         var _loc5_:§]!N§ = new §]!N§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§&!9§.push(_loc5_);
         }
         else
         {
            this.§&!9§.splice(param4,0,_loc5_);
         }
         this.§^j§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §,^§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §8=§)
         {
            this.§@L§();
            this.§;?§ = 1000;
         }
         else if(this.mSlingShotState == §6u§)
         {
            this.§@L§();
            this.§;?§ = 0;
         }
         else if(this.mSlingShotState == STATE_BIRD_IS_READY)
         {
            this.§;?§ = 10000;
            this.§;z§ = false;
            this.§@L§();
         }
         else if(this.mSlingShotState == §+;§)
         {
            this.§@L§();
            this.§;?§ = 2000;
         }
         else if(this.mSlingShotState == §0[§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§;z§ = false;
               this.§@L§();
               this.§&!9§[this.§`!E§].setPosition(this.§<4§ - this.§&!9§[this.§`!E§].radius * Math.cos(this.§1!O§ / (180 / Math.PI)),this.§0x§ + this.§&!9§[this.§`!E§].radius * Math.sin(this.§1!O§ / (180 / Math.PI)));
            }
            else
            {
               this.§@L§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §-!,§() : §^A§
      {
         return this.§<&§;
      }
      
      public function §3@§() : Boolean
      {
         return this.mSlingShotState == §+;§ && this.§;?§ <= 0;
      }
      
      private function §<,§() : void
      {
         var _loc1_:§6?§ = this.§4N§();
         var _loc2_:§=I§ = _loc1_.getFrame(0);
         var _loc3_:§=I§ = _loc1_.getFrame(1);
         this.§'!=§ = new §^B§(_loc2_.texture);
         this.§'!=§.scaleX = _loc2_.scale;
         this.§'!=§.scaleY = _loc2_.scale;
         this.§]0§ = new §^B§(_loc3_.texture);
         this.§]0§.scaleX = _loc3_.scale;
         this.§]0§.scaleY = _loc3_.scale;
         this.§,w§();
         this.§]>§();
         this.§^j§ = new Sprite();
         this.§0b§.addChild(this.§'!=§);
         this.§0b§.addChild(this.§0>§);
         this.§0b§.addChild(this.§^j§);
         this.§0b§.addChild(this.§ g§);
         this.§0b§.addChild(this.§]!S§);
         this.§0b§.addChild(this.§]0§);
         this.§?<§ = this.§3![§ + 8.5;
      }
      
      protected function §4N§() : §6?§
      {
         return this.§<&§.§7p§.§=!B§("SLINGSHOT");
      }
      
      public function §,w§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§>]§ = this.§-!c§;
         this.§&!d§ = this.§3![§;
         this.§+§ = §+B§.§"!H§;
         _loc1_ = null;
      }
      
      protected function §]>§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§2!4§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §2!4§ = this.§<&§.textureManager.§=A§(_loc2_);
         }
         this.§ g§ = new Sprite();
         var _loc1_:§^B§ = new §^B§(§2!4§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§ g§.addChild(_loc1_);
         this.§0>§ = new Sprite();
         this.§,g§ = new §8J§(2,2,§8!`§);
         this.§0>§.addChild(this.§,g§);
         this.§]!S§ = new Sprite();
         this.§7r§ = new §8J§(2,2,§8!`§);
         this.§]!S§.addChild(this.§7r§);
      }
      
      public function §`J§(param1:Number) : void
      {
         var _loc2_:Number = this.§0x§ / §^A§.§<U§;
         var _loc3_:Number = this.§<4§ / §^A§.§<U§;
         var _loc4_:Number = 3.5 + 8 * ((this.§+§ - this.§!m§) / this.§+§);
         this.§ g§.x = _loc3_;
         this.§ g§.y = _loc2_;
         this.§ g§.rotation = -this.§1!O§ / (180 / Math.PI);
         this.§'!=§.x = this.§-!c§ / §^A§.§<U§ - 3;
         this.§'!=§.y = this.§3![§ / §^A§.§<U§ - 30;
         this.§]0§.x = this.§-!c§ / §^A§.§<U§ - 30;
         this.§]0§.y = this.§3![§ / §^A§.§<U§ - 30;
         this.§]!S§.x = this.§-!c§ / §^A§.§<U§ - 17;
         this.§]!S§.y = this.§3![§ / §^A§.§<U§ + 5;
         this.§]!S§.rotation = Math.atan2(_loc2_ - this.§]!S§.y,_loc3_ - this.§]!S§.x);
         this.§0>§.x = this.§-!c§ / §^A§.§<U§ + 22;
         this.§0>§.y = this.§3![§ / §^A§.§<U§;
         this.§0>§.rotation = Math.atan2(_loc2_ - this.§0>§.y,_loc3_ - this.§0>§.x);
         this.§7r§.width = Math.sqrt(Math.pow(_loc3_ - this.§]!S§.x,2) + Math.pow(_loc2_ - this.§]!S§.y,2));
         this.§,g§.width = Math.sqrt(Math.pow(_loc3_ - this.§0>§.x,2) + Math.pow(_loc2_ - this.§0>§.y,2));
         this.§7r§.height = this.§,g§.height = _loc4_ * 2;
         this.§7r§.y = -this.§7r§.height / 2;
         this.§,g§.y = -this.§,g§.height / 2;
         this.§2!G§ = false;
      }
      
      public function §]Y§() : void
      {
         while(this.§&!9§.length > 0)
         {
            this.§;A§(0,true);
         }
         this.§[+§();
         this.addSlingshotObject("BIRD_SARDINE",this.§-!c§,this.§3![§);
         this.§,^§(STATE_BIRD_IS_READY);
      }
      
      protected function §[+§() : void
      {
         §7!"§.§#W§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§,^§(§0[§);
      }
      
      public function §@L§() : void
      {
         this.setNewCoordinatesForRubber(this.§>]§,this.§&!d§ + this.§+§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§<4§ == param1 && this.§0x§ == param2)
         {
            return true;
         }
         this.§!m§ = Math.sqrt((param2 - this.§&!d§) * (param2 - this.§&!d§) + (param1 - this.§>]§) * (param1 - this.§>]§));
         if(this.§!m§ > this.§+§)
         {
            if(param3)
            {
               this.§!m§ = Math.sqrt((this.§0x§ - this.§&!d§) * (this.§0x§ - this.§&!d§) + (this.§<4§ - this.§>]§) * (this.§<4§ - this.§>]§));
               return false;
            }
            param1 = this.§>]§ + this.§+§ * (param1 - this.§>]§) / this.§!m§;
            param2 = this.§&!d§ + this.§+§ * (param2 - this.§&!d§) / this.§!m§;
            this.§!m§ = this.§+§;
         }
         this.§<4§ = param1;
         this.§0x§ = param2;
         this.§1!O§ = Math.atan2(-(this.§0x§ - this.§&!d§),this.§<4§ - this.§>]§);
         this.§1!O§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§<4§ = param1 + this.§-8§;
            this.§0x§ = param2 + this.§-@§;
            this.§1!O§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§+§ / 2;
         if(this.§!m§ > _loc7_ && this.§1!O§ > -90 - _loc4_ + _loc5_ && this.§1!O§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§>]§ + _loc7_ * (param1 - this.§>]§) / this.§!m§;
            param2 = this.§&!d§ + _loc7_ * (param2 - this.§&!d§) / this.§!m§;
            this.§!m§ = _loc7_;
            this.§<4§ = param1;
            this.§0x§ = param2;
         }
         else if(this.§!m§ > _loc7_ && this.§1!O§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§1!O§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§+§ - _loc7_) * (Math.abs(this.§1!O§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§>]§ + _loc8_ * (param1 - this.§>]§) / this.§!m§;
            param2 = this.§&!d§ + _loc8_ * (param2 - this.§&!d§) / this.§!m§;
            this.§!m§ = _loc8_;
            this.§<4§ = param1;
            this.§0x§ = param2;
         }
         if(this.§!m§ <= this.§+§ * 0.45)
         {
            this.§'M§ = true;
         }
         else if(this.§'M§ && this.§!m§ >= this.§+§ * 0.8)
         {
            this.§+&§();
            this.§'M§ = false;
         }
         this.§2!G§ = true;
         return true;
      }
      
      protected function §+&§() : void
      {
         §7!"§.§#W§("SlingshotStreched");
      }
      
      public function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§-!c§,this.§3![§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§-!c§;
         this.§-!c§ = param1;
         var _loc5_:Number = param2 - this.§3![§;
         this.§3![§ = param2;
         this.§?<§ += _loc5_;
         this.§&!d§ += _loc5_;
         this.§0x§ += _loc5_;
         this.§>]§ += _loc4_;
         this.§<4§ += _loc4_;
         if(param3)
         {
            this.§`J§(0);
         }
         this.§2!G§ = true;
      }
      
      public function §=m§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§]!N§ = null;
         _loc2_ = this.§&!9§[this.§`!E§];
         var _loc3_:Number = this.§!m§ / this.§+§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§]H§.§+_§) : Number(§]H§.BIRD_LAUNCH_FORCE);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §+!D§() : Point
      {
         var _loc1_:§]!N§ = null;
         if(this.§&!9§.length > this.§`!E§)
         {
            _loc1_ = this.§&!9§[this.§`!E§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §`!K§() : Point
      {
         return new Point(this.§>]§,this.§&!d§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§]!N§ = null;
         this.updateGroundControl(param1);
         if(this.§2!G§)
         {
            this.§`J§(param1);
         }
         this.§;?§ -= param1;
         if(this.§;?§ < 0)
         {
            this.§;?§ = 0;
         }
         if(this.mSlingShotState != §+;§)
         {
            this.§=G§(param1,param2);
            _loc3_ = null;
            if(this.§&!9§.length > 0)
            {
               _loc3_ = this.§&!9§[this.§`!E§];
            }
            if(_loc3_)
            {
               _loc3_.§<-§(param1);
            }
            if(!_loc3_)
            {
               this.§,^§(§+;§);
            }
            else if(this.mSlingShotState == §8=§)
            {
               if(this.§;?§ <= 0)
               {
                  this.§,^§(§6u§);
                  _loc3_.§>A§();
               }
            }
            else if(this.mSlingShotState == §6u§)
            {
               if(_loc3_.§^H§)
               {
                  this.§,^§(STATE_BIRD_IS_READY);
               }
            }
            else if(this.mSlingShotState == STATE_BIRD_IS_READY)
            {
               _loc3_.setPosition(this.§<4§ - _loc3_.radius * Math.cos(this.§1!O§ / (180 / Math.PI)),this.§0x§ + _loc3_.radius * Math.sin(this.§1!O§ / (180 / Math.PI)));
               if(this.§;z§)
               {
                  this.§>!X§(this.§!m§ / this.§+§,this.§1!O§);
               }
            }
         }
      }
      
      public function §]!9§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§]!N§ = null;
         if(this.§&!9§.length > 0)
         {
            _loc5_ = this.§&!9§[this.§`!E§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§>!X§(param3,param4);
      }
      
      protected function §>!X§(param1:Number, param2:Number) : void
      {
         var _loc3_:§]!N§ = null;
         this.§-8§ = §&-§;
         this.§-@§ = §?!;§;
         if(this.§&!9§.length > 0)
         {
            _loc3_ = this.§&!9§[this.§`!E§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§;z§ = false;
         this.§'?§ = new Date().time;
         this.§<&§.§&`§(_loc3_,param1,param2);
         this.§;A§(this.§`!E§,_loc3_.§^!A§ > 0);
         this.§;!>§();
         if(this.§`!E§ >= this.§&!9§.length)
         {
            this.§,^§(§+;§);
         }
         else
         {
            this.§,^§(§8=§);
         }
      }
      
      protected function §;!>§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §7!"§.§#W§("BirdShot" + _loc1_);
      }
      
      public function §=G§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§`!E§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§&!9§.length)
         {
            if(this.mSlingShotState == §0[§)
            {
               this.§&!9§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§&!9§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§]!N§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§@L§();
         if(this.§'Y§ >= this.§&!9§.length)
         {
            return false;
         }
         _loc1_ = this.§&!9§[this.§'Y§];
         _loc2_ = §]!%§.§=!>§(_loc1_.name).score;
         this.§<&§.addScore(_loc2_,§+!S§.§><§,true,_loc1_.x,_loc1_.y - 3,§+!Z§.§"6§(_loc1_.name));
         _loc1_.§>!F§(-1,true);
         ++this.§'Y§;
         return true;
      }
      
      public function §7w§() : int
      {
         var _loc2_:§]!N§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§&!9§)
         {
            _loc1_ += §]!%§.§=!>§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function § O§() : int
      {
         return this.§;!"§;
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§=K§ >= 0)
         {
            this.§=K§ -= param1;
            if(this.§=K§ <= 0)
            {
               _loc2_ = this.§<&§.objects.§"y§(this.§>]§,this.§?<§);
               if(_loc2_ < 0)
               {
                  this.applyGravity(0.1);
                  this.§=K§ = 0;
               }
               else if(!this.§<&§.objects.§[o§(_loc2_).§"%§)
               {
                  this.§=K§ = -1;
               }
               else if(this.§<&§.objects.§[o§(_loc2_).§9!E§())
               {
                  this.§=K§ = 2000;
               }
               else
               {
                  this.§=K§ = 500;
               }
            }
         }
      }
      
      public function §2!<§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§<&§.objects.§"y§(this.§>]§,this.§?<§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.applyGravity(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§=K§ = -1;
      }
      
      public function §6!<§(param1:Number, param2:Number) : void
      {
         this.§0b§.x = -param1;
         this.§0b§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == STATE_BIRD_IS_READY && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == STATE_BIRD_IS_READY && this.§!m§ > this.§+§ * §0!E§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§,^§(STATE_BIRD_IS_READY);
         var _loc1_:§]!N§ = this.§&!9§[this.§`!E§];
         _loc1_.§>!F§(§3!M§.§4!@§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§]!N§ = this.§&!9§[this.§`!E§];
         _loc1_.§>!F§(§3!M§.§0!U§);
      }
      
      public function shoot() : void
      {
         this.§;z§ = true;
      }
      
      protected function §;A§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§]!N§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§&!9§[param1])
         {
            _loc3_ = this.§&!9§[param1];
            this.§^j§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§9!X§(this.§&!9§[param1]);
            }
            _loc3_.dispose();
            this.§&!9§[param1] = null;
         }
         this.§&!9§.splice(param1,1);
      }
      
      public function §9!X§(param1:§]!N§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §^A§.§<U§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §^A§.§<U§) + Math.random() * -_loc8_ * 2;
            this.§<&§.particles.addParticle(§+!Z§.§-!+§,§`!S§.§3!_§,§+!Z§.§76§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§+!Z§.§function§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§<&§.particles.addParticle(§+!Z§.§>w§,§`!S§.§3!_§,§+!Z§.§76§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §1!§(param1:§]!N§) : void
      {
         this.§;A§(this.§&!9§.indexOf(param1));
      }
      
      public function §9!O§() : void
      {
         var _loc2_:§]!N§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§]!N§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§&!9§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§-!c§ - this.§&!9§[_loc1_].x) * (this.§-!c§ - this.§&!9§[_loc1_].x) + (this.§3![§ - this.§&!9§[_loc1_].y) * (this.§3![§ - this.§&!9§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§-!c§ - this.§&!9§[_loc1_ + 1].x) * (this.§-!c§ - this.§&!9§[_loc1_ + 1].x) + (this.§3![§ - this.§&!9§[_loc1_ + 1].y) * (this.§3![§ - this.§&!9§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§&!9§[_loc1_];
               this.§&!9§.splice(_loc1_,1);
               this.§&!9§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§^j§.numChildren > 0)
         {
            this.§^j§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§&!9§.length)
         {
            _loc2_ = this.§&!9§[_loc1_];
            this.§^j§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §&_§(param1:Number, param2:Number) : §]!N§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§&!9§.length)
         {
            if(this.§&!9§[_loc3_])
            {
               if(this.§&!9§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§&!9§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §4<§(param1:Number, param2:Number) : §]H§
      {
         if(param1 >= this.§-!c§ - this.§+§ / 4 && param1 <= this.§-!c§ + this.§+§ / 4 && param2 >= this.§3![§ - this.§+§ / 4 && this.§3![§ <= this.§?<§)
         {
            return this;
         }
         return null;
      }
      
      public function §6!?§(param1:§74§) : void
      {
         var _loc3_:§]!N§ = null;
         var _loc4_:§2P§ = null;
         param1.§&Y§ = this.§-!c§;
         param1.§-O§ = this.§3![§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§&!9§.length)
         {
            _loc3_ = this.§&!9§[_loc2_];
            (_loc4_ = new §2P§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§%^§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §?!4§() : void
      {
         while(this.§&!9§.length > 0)
         {
            this.§1!§(this.§&!9§[0]);
         }
      }
      
      public function §15§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§&!9§.length)
         {
            if(this.§&!9§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§&!9§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§-!c§ > param1.x && this.§-!c§ < param2.x && this.§3![§ > param1.y && this.§3![§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §5!7§() : Array
      {
         return [this.§]0§,this.§'!=§];
      }
      
      public function §2F§(param1:String, param2:Number, param3:Number) : §]!N§
      {
         var _loc4_:§]!N§ = this.addSlingshotObject(param1,param2,param3);
         this.§9!O§();
         return _loc4_;
      }
      
      public function §?[§() : Number
      {
         return this.§&!9§.length;
      }
   }
}
