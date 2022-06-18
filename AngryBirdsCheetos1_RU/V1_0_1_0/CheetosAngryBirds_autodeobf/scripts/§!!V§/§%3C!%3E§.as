package §!!V§
{
   import §%t§.§@!%§;
   import §&!5§.§'!$§;
   import §&!5§.§2G§;
   import §&!5§.Sprite;
   import §1E§.§2^§;
   import §5!$§.§"!I§;
   import §5!$§.§1!8§;
   import §6%§.§8?§;
   import §8e§.§"!U§;
   import §8e§.§7!H§;
   import §9!2§.§<j§;
   import §9!2§.§@!!§;
   import §>8§.§#%§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §switch§.Texture;
   
   public class §<!>§
   {
      
      public static const §;C§:int = 0;
      
      public static const §8!P§:int = 1;
      
      public static const dynamic:int = 2;
      
      public static const §+<§:int = 3;
      
      public static const §?J§:int = 5;
      
      public static const §3[§:int = 3151368;
      
      protected static const §#A§:int = 8;
      
      protected static const §+9§:int = 0;
      
      public static const §<!#§:Number = 46.25;
      
      public static const §0@§:Number = 52.5;
      
      protected static const §+!C§:Number = -0.7;
      
      protected static const §<§:Number = 0;
      
      protected static var §"!6§:Texture;
      
      public static const §++§:Number = 0.4;
       
      
      public var §%v§:§&I§;
      
      public var § !2§:Number;
      
      public var §'!F§:Number;
      
      public var §>!C§:Number;
      
      protected var §7g§:Number;
      
      protected var §1!=§:Number;
      
      protected var §`5§:Number;
      
      protected var §=!Y§:Number;
      
      public var §#!?§:Number;
      
      public var §+!0§:Boolean = false;
      
      protected var § y§:Number;
      
      public var §3r§:Vector.<§%§>;
      
      public var §!!^§:int;
      
      public var §^!`§:int;
      
      public var §?!X§:Number;
      
      public var §4u§:Sprite;
      
      public var §;§:int = 0;
      
      public var §2Y§:Number = 0;
      
      public var §76§:Array;
      
      public var §55§:Array;
      
      public var mSlingShotState:int;
      
      public var §^R§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §6!8§:Boolean = false;
      
      public var §;!V§:Number;
      
      protected var §6`§:Sprite;
      
      protected var §&z§:§2G§;
      
      protected var §7x§:§2G§;
      
      protected var §^y§:Sprite;
      
      protected var §"!F§:Sprite;
      
      protected var §@!Q§:Sprite;
      
      protected var §%L§:§'!$§;
      
      protected var §<!J§:§'!$§;
      
      private var §`!H§:Number = 0;
      
      private var §0!H§:int = 0;
      
      protected var §7#§:Number = -0.7;
      
      protected var §#l§:Number = 0;
      
      public function §<!>§(param1:§&I§, param2:§#%§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§8?§ = null;
         this.§3r§ = new Vector.<§%§>();
         super();
         this.§%v§ = param1;
         this.§6`§ = param3;
         if(param2)
         {
            this.setPosition(param2.§5!V§,param2.§7j§);
            this.§"`§();
            _loc4_ = 0;
            while(_loc4_ < param2.§?Z§)
            {
               _loc5_ = param2.§9!D§(_loc4_);
               this.addSlingshotObject(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§0!H§ = this.§ !;§();
            this.§!!^§ = 0;
            if(this.§3r§.length <= 0)
            {
               §@!%§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§ !2§ + " " + this.§'!F§);
               this.setSlingShotState(§+<§);
            }
            else
            {
               this.setSlingShotState(§;C§);
            }
         }
         else
         {
            §@!%§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.setSlingShotState(§+<§);
         }
         this.§;!V§ = 0;
         this.§use§();
         this.update(0,true);
         this.§%!9§();
         this.§%M§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§6`§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§`!H§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§!!^§ < this.§3r§.length;
      }
      
      public function dispose() : void
      {
         while(this.§3r§.length > 0)
         {
            this.§57§(0);
         }
         this.§3r§ = null;
         if(this.§6`§)
         {
            this.§6`§.dispose();
            this.§6`§ = null;
         }
         this.§4u§ = null;
         this.§76§ = null;
         this.§55§ = null;
      }
      
      public function § !^§(param1:String, param2:Number, param3:Number, param4:int = -1) : §%§
      {
         var _loc5_:§%§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,param4)).§3!J§();
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §%§
      {
         var _loc5_:§%§ = new §%§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§3r§.push(_loc5_);
         }
         else
         {
            this.§3r§.splice(param4,0,_loc5_);
         }
         this.§4u§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function setSlingShotState(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §;C§)
         {
            this.§`!'§();
            this.§?!X§ = 1000;
         }
         else if(this.mSlingShotState == §8!P§)
         {
            this.§`!'§();
            this.§?!X§ = 0;
         }
         else if(this.mSlingShotState == dynamic)
         {
            this.§?!X§ = 10000;
            this.§6!8§ = false;
            this.§`!'§();
         }
         else if(this.mSlingShotState == §+<§)
         {
            this.§`!'§();
            this.§?!X§ = 2000;
         }
         else if(this.mSlingShotState == §?J§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§6!8§ = false;
               this.§`!'§();
               this.§3r§[this.§!!^§].setPosition(this.§`5§ - this.§3r§[this.§!!^§].radius * Math.cos(this.§2Y§ / (180 / Math.PI)),this.§=!Y§ + this.§3r§[this.§!!^§].radius * Math.sin(this.§2Y§ / (180 / Math.PI)));
            }
            else
            {
               this.§`!'§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §@q§() : §&I§
      {
         return this.§%v§;
      }
      
      public function §8!$§() : Boolean
      {
         return this.mSlingShotState == §+<§ && this.§?!X§ <= 0;
      }
      
      private function §"`§() : void
      {
         var _loc1_:§@!!§ = this.§#v§();
         var _loc2_:§<j§ = _loc1_.getFrame(0);
         var _loc3_:§<j§ = _loc1_.getFrame(1);
         this.§%L§ = new §'!$§(_loc2_.texture);
         this.§%L§.scaleX = _loc2_.scale;
         this.§%L§.scaleY = _loc2_.scale;
         this.§<!J§ = new §'!$§(_loc3_.texture);
         this.§<!J§.scaleX = _loc3_.scale;
         this.§<!J§.scaleY = _loc3_.scale;
         this.§+P§();
         this.§]!6§();
         this.§4u§ = new Sprite();
         this.§6`§.addChild(this.§%L§);
         this.§6`§.addChild(this.§^y§);
         this.§6`§.addChild(this.§4u§);
         this.§6`§.addChild(this.§@!Q§);
         this.§6`§.addChild(this.§"!F§);
         this.§6`§.addChild(this.§<!J§);
         this.§>!C§ = this.§'!F§ + 8.5;
      }
      
      protected function §#v§() : §@!!§
      {
         return this.§%v§.§&"§.§@T§("SLINGSHOT");
      }
      
      public function §+P§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§7g§ = this.§ !2§;
         this.§1!=§ = this.§'!F§;
         this.§ y§ = §[K§.§'S§;
         _loc1_ = null;
      }
      
      protected function §]!6§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§"!6§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §"!6§ = this.§%v§.§2!#§.§@!=§(_loc2_);
         }
         this.§@!Q§ = new Sprite();
         var _loc1_:§'!$§ = new §'!$§(§"!6§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§@!Q§.addChild(_loc1_);
         this.§^y§ = new Sprite();
         this.§&z§ = new §2G§(2,2,§3[§);
         this.§^y§.addChild(this.§&z§);
         this.§"!F§ = new Sprite();
         this.§7x§ = new §2G§(2,2,§3[§);
         this.§"!F§.addChild(this.§7x§);
      }
      
      public function §%M§(param1:Number) : void
      {
         var _loc2_:Number = this.§=!Y§ / §&I§.§]!H§;
         var _loc3_:Number = this.§`5§ / §&I§.§]!H§;
         var _loc4_:Number = 3.5 + 8 * ((this.§ y§ - this.§#!?§) / this.§ y§);
         this.§@!Q§.x = _loc3_;
         this.§@!Q§.y = _loc2_;
         this.§@!Q§.rotation = -this.§2Y§ / (180 / Math.PI);
         this.§%L§.x = this.§ !2§ / §&I§.§]!H§ - 3;
         this.§%L§.y = this.§'!F§ / §&I§.§]!H§ - 30;
         this.§<!J§.x = this.§ !2§ / §&I§.§]!H§ - 30;
         this.§<!J§.y = this.§'!F§ / §&I§.§]!H§ - 30;
         this.§"!F§.x = this.§ !2§ / §&I§.§]!H§ - 17;
         this.§"!F§.y = this.§'!F§ / §&I§.§]!H§ + 5;
         this.§"!F§.rotation = Math.atan2(_loc2_ - this.§"!F§.y,_loc3_ - this.§"!F§.x);
         this.§^y§.x = this.§ !2§ / §&I§.§]!H§ + 22;
         this.§^y§.y = this.§'!F§ / §&I§.§]!H§;
         this.§^y§.rotation = Math.atan2(_loc2_ - this.§^y§.y,_loc3_ - this.§^y§.x);
         this.§7x§.width = Math.sqrt(Math.pow(_loc3_ - this.§"!F§.x,2) + Math.pow(_loc2_ - this.§"!F§.y,2));
         this.§&z§.width = Math.sqrt(Math.pow(_loc3_ - this.§^y§.x,2) + Math.pow(_loc2_ - this.§^y§.y,2));
         this.§7x§.height = this.§&z§.height = _loc4_ * 2;
         this.§7x§.y = -this.§7x§.height / 2;
         this.§&z§.y = -this.§&z§.height / 2;
         this.§^R§ = false;
      }
      
      public function §3!3§() : void
      {
         while(this.§3r§.length > 0)
         {
            this.§57§(0,true);
         }
         this.§6T§();
         this.addSlingshotObject("BIRD_SARDINE",this.§ !2§,this.§'!F§);
         this.setSlingShotState(dynamic);
      }
      
      protected function §6T§() : void
      {
         §2^§.§ !C§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.setSlingShotState(§?J§);
      }
      
      public function §`!'§() : void
      {
         this.setNewCoordinatesForRubber(this.§7g§,this.§1!=§ + this.§ y§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§`5§ == param1 && this.§=!Y§ == param2)
         {
            return true;
         }
         this.§#!?§ = Math.sqrt((param2 - this.§1!=§) * (param2 - this.§1!=§) + (param1 - this.§7g§) * (param1 - this.§7g§));
         if(this.§#!?§ > this.§ y§)
         {
            if(param3)
            {
               this.§#!?§ = Math.sqrt((this.§=!Y§ - this.§1!=§) * (this.§=!Y§ - this.§1!=§) + (this.§`5§ - this.§7g§) * (this.§`5§ - this.§7g§));
               return false;
            }
            param1 = this.§7g§ + this.§ y§ * (param1 - this.§7g§) / this.§#!?§;
            param2 = this.§1!=§ + this.§ y§ * (param2 - this.§1!=§) / this.§#!?§;
            this.§#!?§ = this.§ y§;
         }
         this.§`5§ = param1;
         this.§=!Y§ = param2;
         this.§2Y§ = Math.atan2(-(this.§=!Y§ - this.§1!=§),this.§`5§ - this.§7g§);
         this.§2Y§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§`5§ = param1 + this.§7#§;
            this.§=!Y§ = param2 + this.§#l§;
            this.§2Y§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§ y§ / 2;
         if(this.§#!?§ > _loc7_ && this.§2Y§ > -90 - _loc4_ + _loc5_ && this.§2Y§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§7g§ + _loc7_ * (param1 - this.§7g§) / this.§#!?§;
            param2 = this.§1!=§ + _loc7_ * (param2 - this.§1!=§) / this.§#!?§;
            this.§#!?§ = _loc7_;
            this.§`5§ = param1;
            this.§=!Y§ = param2;
         }
         else if(this.§#!?§ > _loc7_ && this.§2Y§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§2Y§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§ y§ - _loc7_) * (Math.abs(this.§2Y§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§7g§ + _loc8_ * (param1 - this.§7g§) / this.§#!?§;
            param2 = this.§1!=§ + _loc8_ * (param2 - this.§1!=§) / this.§#!?§;
            this.§#!?§ = _loc8_;
            this.§`5§ = param1;
            this.§=!Y§ = param2;
         }
         if(this.§#!?§ <= this.§ y§ * 0.45)
         {
            this.§+!0§ = true;
         }
         else if(this.§+!0§ && this.§#!?§ >= this.§ y§ * 0.8)
         {
            this.§4!U§();
            this.§+!0§ = false;
         }
         this.§^R§ = true;
         return true;
      }
      
      protected function §4!U§() : void
      {
         §2^§.§ !C§("SlingshotStreched");
      }
      
      public function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§ !2§,this.§'!F§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§ !2§;
         this.§ !2§ = param1;
         var _loc5_:Number = param2 - this.§'!F§;
         this.§'!F§ = param2;
         this.§>!C§ += _loc5_;
         this.§1!=§ += _loc5_;
         this.§=!Y§ += _loc5_;
         this.§7g§ += _loc4_;
         this.§`5§ += _loc4_;
         if(param3)
         {
            this.§%M§(0);
         }
         this.§^R§ = true;
      }
      
      public function §9s§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§%§ = null;
         _loc2_ = this.§3r§[this.§!!^§];
         var _loc3_:Number = this.§#!?§ / this.§ y§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§<!>§.§0@§) : Number(§<!>§.§<!#§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §>G§() : Point
      {
         var _loc1_:§%§ = null;
         if(this.§3r§.length > this.§!!^§)
         {
            _loc1_ = this.§3r§[this.§!!^§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §,Z§() : Point
      {
         return new Point(this.§7g§,this.§1!=§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§%§ = null;
         this.updateGroundControl(param1);
         if(this.§^R§)
         {
            this.§%M§(param1);
         }
         this.§?!X§ -= param1;
         if(this.§?!X§ < 0)
         {
            this.§?!X§ = 0;
         }
         if(this.mSlingShotState != §+<§)
         {
            this.§3!Q§(param1,param2);
            _loc3_ = null;
            if(this.§3r§.length > 0)
            {
               _loc3_ = this.§3r§[this.§!!^§];
            }
            if(_loc3_)
            {
               _loc3_.§ r§(param1);
            }
            if(!_loc3_)
            {
               this.setSlingShotState(§+<§);
            }
            else if(this.mSlingShotState == §;C§)
            {
               if(this.§?!X§ <= 0)
               {
                  this.setSlingShotState(§8!P§);
                  _loc3_.§@u§();
               }
            }
            else if(this.mSlingShotState == §8!P§)
            {
               if(_loc3_.§0!_§)
               {
                  this.setSlingShotState(dynamic);
               }
            }
            else if(this.mSlingShotState == dynamic)
            {
               _loc3_.setPosition(this.§`5§ - _loc3_.radius * Math.cos(this.§2Y§ / (180 / Math.PI)),this.§=!Y§ + _loc3_.radius * Math.sin(this.§2Y§ / (180 / Math.PI)));
               if(this.§6!8§)
               {
                  this.§[J§(this.§#!?§ / this.§ y§,this.§2Y§);
               }
            }
         }
      }
      
      public function §<!O§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§%§ = null;
         if(this.§3r§.length > 0)
         {
            _loc5_ = this.§3r§[this.§!!^§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§[J§(param3,param4);
      }
      
      protected function §[J§(param1:Number, param2:Number) : void
      {
         var _loc3_:§%§ = null;
         this.§7#§ = §+!C§;
         this.§#l§ = §<§;
         if(this.§3r§.length > 0)
         {
            _loc3_ = this.§3r§[this.§!!^§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§6!8§ = false;
         this.§`!H§ = new Date().time;
         this.§%v§.§8o§(_loc3_,param1,param2);
         this.§57§(this.§!!^§,_loc3_.§6H§ > 0);
         this.§9&§();
         if(this.§!!^§ >= this.§3r§.length)
         {
            this.setSlingShotState(§+<§);
         }
         else
         {
            this.setSlingShotState(§;C§);
         }
      }
      
      protected function §9&§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §2^§.§ !C§("BirdShot" + _loc1_);
      }
      
      public function §3!Q§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§!!^§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§3r§.length)
         {
            if(this.mSlingShotState == §?J§)
            {
               this.§3r§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§3r§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§%§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§`!'§();
         if(this.§^!`§ >= this.§3r§.length)
         {
            return false;
         }
         _loc1_ = this.§3r§[this.§^!`§];
         _loc2_ = §"!I§.§&E§(_loc1_.name).score;
         this.§%v§.addScore(_loc2_,§[Q§.§1!E§,true,_loc1_.x,_loc1_.y - 3,§"!U§.§`§(_loc1_.name));
         _loc1_.§5!2§(-1,true);
         ++this.§^!`§;
         return true;
      }
      
      public function § !;§() : int
      {
         var _loc2_:§%§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§3r§)
         {
            _loc1_ += §"!I§.§&E§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §9!W§() : int
      {
         return this.§0!H§;
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§;!V§ >= 0)
         {
            this.§;!V§ -= param1;
            if(this.§;!V§ <= 0)
            {
               _loc2_ = this.§%v§.objects.§[P§(this.§7g§,this.§>!C§);
               if(_loc2_ < 0)
               {
                  this.applyGravity(0.1);
                  this.§;!V§ = 0;
               }
               else if(!this.§%v§.objects.§8v§(_loc2_).§?!8§)
               {
                  this.§;!V§ = -1;
               }
               else if(this.§%v§.objects.§8v§(_loc2_).§%e§())
               {
                  this.§;!V§ = 2000;
               }
               else
               {
                  this.§;!V§ = 500;
               }
            }
         }
      }
      
      public function §%!9§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§%v§.objects.§[P§(this.§7g§,this.§>!C§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.applyGravity(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§;!V§ = -1;
      }
      
      public function §?'§(param1:Number, param2:Number) : void
      {
         this.§6`§.x = -param1;
         this.§6`§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == dynamic && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == dynamic && this.§#!?§ > this.§ y§ * §++§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.setSlingShotState(dynamic);
         var _loc1_:§%§ = this.§3r§[this.§!!^§];
         _loc1_.§5!2§(§1!8§.§]!'§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§%§ = this.§3r§[this.§!!^§];
         _loc1_.§5!2§(§1!8§.§#p§);
      }
      
      public function shoot() : void
      {
         this.§6!8§ = true;
      }
      
      protected function §57§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§%§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§3r§[param1])
         {
            _loc3_ = this.§3r§[param1];
            this.§4u§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§]b§(this.§3r§[param1]);
            }
            _loc3_.dispose();
            this.§3r§[param1] = null;
         }
         this.§3r§.splice(param1,1);
      }
      
      public function §]b§(param1:§%§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §&I§.§]!H§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §&I§.§]!H§) + Math.random() * -_loc8_ * 2;
            this.§%v§.particles.addParticle(§"!U§.§@!Z§,§7!H§.§]0§,§"!U§.§+6§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§"!U§.§5U§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§%v§.particles.addParticle(§"!U§.§^4§,§7!H§.§]0§,§"!U§.§+6§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §-R§(param1:§%§) : void
      {
         this.§57§(this.§3r§.indexOf(param1));
      }
      
      public function §use§() : void
      {
         var _loc2_:§%§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§%§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§3r§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§ !2§ - this.§3r§[_loc1_].x) * (this.§ !2§ - this.§3r§[_loc1_].x) + (this.§'!F§ - this.§3r§[_loc1_].y) * (this.§'!F§ - this.§3r§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§ !2§ - this.§3r§[_loc1_ + 1].x) * (this.§ !2§ - this.§3r§[_loc1_ + 1].x) + (this.§'!F§ - this.§3r§[_loc1_ + 1].y) * (this.§'!F§ - this.§3r§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§3r§[_loc1_];
               this.§3r§.splice(_loc1_,1);
               this.§3r§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§4u§.numChildren > 0)
         {
            this.§4u§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§3r§.length)
         {
            _loc2_ = this.§3r§[_loc1_];
            this.§4u§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §?m§(param1:Number, param2:Number) : §%§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§3r§.length)
         {
            if(this.§3r§[_loc3_])
            {
               if(this.§3r§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§3r§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §[<§(param1:Number, param2:Number) : §<!>§
      {
         if(param1 >= this.§ !2§ - this.§ y§ / 4 && param1 <= this.§ !2§ + this.§ y§ / 4 && param2 >= this.§'!F§ - this.§ y§ / 4 && this.§'!F§ <= this.§>!C§)
         {
            return this;
         }
         return null;
      }
      
      public function §;l§(param1:§#%§) : void
      {
         var _loc3_:§%§ = null;
         var _loc4_:§8?§ = null;
         param1.§5!V§ = this.§ !2§;
         param1.§7j§ = this.§'!F§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§3r§.length)
         {
            _loc3_ = this.§3r§[_loc2_];
            (_loc4_ = new §8?§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§;!M§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §+!_§() : void
      {
         while(this.§3r§.length > 0)
         {
            this.§-R§(this.§3r§[0]);
         }
      }
      
      public function §,!_§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§3r§.length)
         {
            if(this.§3r§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§3r§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§ !2§ > param1.x && this.§ !2§ < param2.x && this.§'!F§ > param1.y && this.§'!F§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §%!I§() : Array
      {
         return [this.§<!J§,this.§%L§];
      }
      
      public function §2B§(param1:String, param2:Number, param3:Number) : §%§
      {
         var _loc4_:§%§ = this.addSlingshotObject(param1,param2,param3);
         this.§use§();
         return _loc4_;
      }
      
      public function §8P§() : Number
      {
         return this.§3r§.length;
      }
   }
}
