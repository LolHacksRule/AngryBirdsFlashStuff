package §4!s§
{
   import §%!I§.§<G§;
   import §%t§.§#B§;
   import §%t§.§2!D§;
   import §&!s§.§!m§;
   import §&!s§.§+!O§;
   import §4!S§.Texture;
   import §5^§.§ !x§;
   import §7M§.§+R§;
   import §9!G§.§]!e§;
   import §<f§.§3!8§;
   import §<f§.§7!0§;
   import §^I§.§5! §;
   import §^I§.§=!+§;
   import §^I§.Sprite;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §4^§
   {
      
      public static const §'N§:int = 0;
      
      public static const §@a§:int = 1;
      
      public static const §7!x§:int = 2;
      
      public static const §2"3§:int = 3;
      
      public static const §8+§:int = 5;
      
      public static const §9!@§:int = 3151368;
      
      protected static const §;!V§:int = 8;
      
      protected static const §6K§:int = 0;
      
      public static const §5#§:Number = 46.25;
      
      public static const §#!7§:Number = 52.5;
      
      protected static const §1i§:Number = -0.7;
      
      protected static const §'!+§:Number = 0;
      
      protected static var §6!V§:Texture;
      
      public static const §,B§:Number = 0.4;
       
      
      public var §,!T§:§%I§;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §<r§:Number;
      
      protected var §5z§:Number;
      
      protected var §<!f§:Number;
      
      protected var §#h§:Number;
      
      protected var § !Y§:Number;
      
      public var §%N§:Number;
      
      public var § else§:Boolean = false;
      
      protected var §7H§:Number;
      
      public var mBirds:Vector.<§`!7§>;
      
      public var §^!T§:int;
      
      public var §,!j§:int;
      
      public var §;>§:Number;
      
      public var §8!4§:Sprite;
      
      public var §`"+§:int = 0;
      
      public var §?!E§:Number = 0;
      
      public var native:Array;
      
      public var §3!#§:Array;
      
      public var mSlingShotState:int;
      
      public var §8!]§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §3"5§:Boolean = false;
      
      public var §@N§:Number;
      
      protected var §;!E§:Sprite;
      
      protected var §3]§:§5! §;
      
      protected var §-!Q§:§5! §;
      
      protected var §%J§:Sprite;
      
      protected var §!""§:Sprite;
      
      protected var §3o§:Sprite;
      
      protected var §9!§:§=!+§;
      
      protected var §]?§:§=!+§;
      
      private var §0"$§:Number = 0;
      
      private var §=H§:int = 0;
      
      protected var §9x§:Number = -0.7;
      
      protected var §6!r§:Number = 0;
      
      public function §4^§(param1:§%I§, param2:§+R§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§<G§ = null;
         this.mBirds = new Vector.<§`!7§>();
         super();
         this.§,!T§ = param1;
         this.§;!E§ = param3;
         if(param2)
         {
            this.setPosition(param2.§;!u§,param2.§?!L§);
            this.§ !"§();
            _loc4_ = 0;
            while(_loc4_ < param2.§!;§)
            {
               _loc5_ = param2.§!!,§(_loc4_);
               this.§#!R§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§=H§ = this.§="6§();
            this.§^!T§ = 0;
            if(this.mBirds.length <= 0)
            {
               §]!e§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.mX + " " + this.mY);
               this.setSlingShotState(§2"3§);
            }
            else
            {
               this.setSlingShotState(§'N§);
            }
         }
         else
         {
            §]!e§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.setSlingShotState(§2"3§);
         }
         this.§@N§ = 0;
         this.§,!y§();
         this.update(0,true);
         this.§6!C§();
         this.§]!!§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§;!E§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§0"$§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§^!T§ < this.mBirds.length;
      }
      
      public function dispose() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§,!E§(0);
         }
         this.mBirds = null;
         if(this.§;!E§)
         {
            this.§;!E§.dispose();
            this.§;!E§ = null;
         }
         this.§8!4§ = null;
         this.native = null;
         this.§3!#§ = null;
      }
      
      public function §8!v§(param1:String, param2:Number, param3:Number, param4:int = -1) : §`!7§
      {
         var _loc5_:§`!7§;
         (_loc5_ = this.§#!R§(param1,param2,param3,param4)).§+V§();
         return _loc5_;
      }
      
      protected function §#!R§(param1:String, param2:Number, param3:Number, param4:int = -1) : §`!7§
      {
         var _loc5_:§`!7§ = new §`!7§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.mBirds.push(_loc5_);
         }
         else
         {
            this.mBirds.splice(param4,0,_loc5_);
         }
         this.§8!4§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function setSlingShotState(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §'N§)
         {
            this.§&!_§();
            this.§;>§ = 1000;
         }
         else if(this.mSlingShotState == §@a§)
         {
            this.§&!_§();
            this.§;>§ = 0;
         }
         else if(this.mSlingShotState == §7!x§)
         {
            this.§;>§ = 10000;
            this.§3"5§ = false;
            this.§&!_§();
         }
         else if(this.mSlingShotState == §2"3§)
         {
            this.§&!_§();
            this.§;>§ = 2000;
         }
         else if(this.mSlingShotState == §8+§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§3"5§ = false;
               this.§&!_§();
               this.mBirds[this.§^!T§].setPosition(this.§#h§ - this.mBirds[this.§^!T§].radius * Math.cos(this.§?!E§ / (180 / Math.PI)),this.§ !Y§ + this.mBirds[this.§^!T§].radius * Math.sin(this.§?!E§ / (180 / Math.PI)));
            }
            else
            {
               this.§&!_§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §^"'§() : §%I§
      {
         return this.§,!T§;
      }
      
      public function §4K§() : Boolean
      {
         return this.mSlingShotState == §2"3§ && this.§;>§ <= 0;
      }
      
      private function § !"§() : void
      {
         var _loc1_:§2!D§ = this.§<"&§();
         var _loc2_:§#B§ = _loc1_.getFrame(0);
         var _loc3_:§#B§ = _loc1_.getFrame(1);
         this.§9!§ = new §=!+§(_loc2_.texture);
         this.§9!§.scaleX = _loc2_.scale;
         this.§9!§.scaleY = _loc2_.scale;
         this.§]?§ = new §=!+§(_loc3_.texture);
         this.§]?§.scaleX = _loc3_.scale;
         this.§]?§.scaleY = _loc3_.scale;
         this.§!U§();
         this.§@!x§();
         this.§8!4§ = new Sprite();
         this.§;!E§.addChild(this.§9!§);
         this.§;!E§.addChild(this.§%J§);
         this.§;!E§.addChild(this.§8!4§);
         this.§;!E§.addChild(this.§3o§);
         this.§;!E§.addChild(this.§!""§);
         this.§;!E§.addChild(this.§]?§);
         this.§<r§ = this.mY + 8.5;
      }
      
      protected function §<"&§() : §2!D§
      {
         return this.§,!T§.§^d§.§5!7§("SLINGSHOT");
      }
      
      public function §!U§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§5z§ = this.mX;
         this.§<!f§ = this.mY;
         this.§7H§ = §7!$§.§5W§;
         _loc1_ = null;
      }
      
      protected function §@!x§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§6!V§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §6!V§ = this.§,!T§.§>=§.§extends§(_loc2_);
         }
         this.§3o§ = new Sprite();
         var _loc1_:§=!+§ = new §=!+§(§6!V§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§3o§.addChild(_loc1_);
         this.§%J§ = new Sprite();
         this.§3]§ = new §5! §(2,2,§9!@§);
         this.§%J§.addChild(this.§3]§);
         this.§!""§ = new Sprite();
         this.§-!Q§ = new §5! §(2,2,§9!@§);
         this.§!""§.addChild(this.§-!Q§);
      }
      
      public function §]!!§(param1:Number) : void
      {
         var _loc2_:Number = this.§ !Y§ / §%I§.§9"4§;
         var _loc3_:Number = this.§#h§ / §%I§.§9"4§;
         var _loc4_:Number = 3.5 + 8 * ((this.§7H§ - this.§%N§) / this.§7H§);
         this.§3o§.x = _loc3_;
         this.§3o§.y = _loc2_;
         this.§3o§.rotation = -this.§?!E§ / (180 / Math.PI);
         this.§9!§.x = this.mX / §%I§.§9"4§ - 3;
         this.§9!§.y = this.mY / §%I§.§9"4§ - 30;
         this.§]?§.x = this.mX / §%I§.§9"4§ - 30;
         this.§]?§.y = this.mY / §%I§.§9"4§ - 30;
         this.§!""§.x = this.mX / §%I§.§9"4§ - 17;
         this.§!""§.y = this.mY / §%I§.§9"4§ + 5;
         this.§!""§.rotation = Math.atan2(_loc2_ - this.§!""§.y,_loc3_ - this.§!""§.x);
         this.§%J§.x = this.mX / §%I§.§9"4§ + 22;
         this.§%J§.y = this.mY / §%I§.§9"4§;
         this.§%J§.rotation = Math.atan2(_loc2_ - this.§%J§.y,_loc3_ - this.§%J§.x);
         this.§-!Q§.width = Math.sqrt(Math.pow(_loc3_ - this.§!""§.x,2) + Math.pow(_loc2_ - this.§!""§.y,2));
         this.§3]§.width = Math.sqrt(Math.pow(_loc3_ - this.§%J§.x,2) + Math.pow(_loc2_ - this.§%J§.y,2));
         this.§-!Q§.height = this.§3]§.height = _loc4_ * 2;
         this.§-!Q§.y = -this.§-!Q§.height / 2;
         this.§3]§.y = -this.§3]§.height / 2;
         this.§8!]§ = false;
      }
      
      public function §'"2§() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§,!E§(0,true);
         }
         this.§]!F§();
         this.§#!R§("BIRD_SARDINE",this.mX,this.mY);
         this.setSlingShotState(§7!x§);
      }
      
      protected function §]!F§() : void
      {
         § !x§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.setSlingShotState(§8+§);
      }
      
      public function §&!_§() : void
      {
         this.setNewCoordinatesForRubber(this.§5z§,this.§<!f§ + this.§7H§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§#h§ == param1 && this.§ !Y§ == param2)
         {
            return true;
         }
         this.§%N§ = Math.sqrt((param2 - this.§<!f§) * (param2 - this.§<!f§) + (param1 - this.§5z§) * (param1 - this.§5z§));
         if(this.§%N§ > this.§7H§)
         {
            if(param3)
            {
               this.§%N§ = Math.sqrt((this.§ !Y§ - this.§<!f§) * (this.§ !Y§ - this.§<!f§) + (this.§#h§ - this.§5z§) * (this.§#h§ - this.§5z§));
               return false;
            }
            param1 = this.§5z§ + this.§7H§ * (param1 - this.§5z§) / this.§%N§;
            param2 = this.§<!f§ + this.§7H§ * (param2 - this.§<!f§) / this.§%N§;
            this.§%N§ = this.§7H§;
         }
         this.§#h§ = param1;
         this.§ !Y§ = param2;
         this.§?!E§ = Math.atan2(-(this.§ !Y§ - this.§<!f§),this.§#h§ - this.§5z§);
         this.§?!E§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§#h§ = param1 + this.§9x§;
            this.§ !Y§ = param2 + this.§6!r§;
            this.§?!E§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§7H§ / 2;
         if(this.§%N§ > _loc7_ && this.§?!E§ > -90 - _loc4_ + _loc5_ && this.§?!E§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§5z§ + _loc7_ * (param1 - this.§5z§) / this.§%N§;
            param2 = this.§<!f§ + _loc7_ * (param2 - this.§<!f§) / this.§%N§;
            this.§%N§ = _loc7_;
            this.§#h§ = param1;
            this.§ !Y§ = param2;
         }
         else if(this.§%N§ > _loc7_ && this.§?!E§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§?!E§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§7H§ - _loc7_) * (Math.abs(this.§?!E§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§5z§ + _loc8_ * (param1 - this.§5z§) / this.§%N§;
            param2 = this.§<!f§ + _loc8_ * (param2 - this.§<!f§) / this.§%N§;
            this.§%N§ = _loc8_;
            this.§#h§ = param1;
            this.§ !Y§ = param2;
         }
         if(this.§%N§ <= this.§7H§ * 0.45)
         {
            this.§ else§ = true;
         }
         else if(this.§ else§ && this.§%N§ >= this.§7H§ * 0.8)
         {
            this.§-t§();
            this.§ else§ = false;
         }
         this.§8!]§ = true;
         return true;
      }
      
      protected function §-t§() : void
      {
         § !x§.playSound("SlingshotStreched");
      }
      
      public function §5P§(param1:Number) : void
      {
         this.setPosition(this.mX,this.mY + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.mX;
         this.mX = param1;
         var _loc5_:Number = param2 - this.mY;
         this.mY = param2;
         this.§<r§ += _loc5_;
         this.§<!f§ += _loc5_;
         this.§ !Y§ += _loc5_;
         this.§5z§ += _loc4_;
         this.§#h§ += _loc4_;
         if(param3)
         {
            this.§]!!§(0);
         }
         this.§8!]§ = true;
      }
      
      public function §1m§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§`!7§ = null;
         _loc2_ = this.mBirds[this.§^!T§];
         var _loc3_:Number = this.§%N§ / this.§7H§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§4^§.§#!7§) : Number(§4^§.§5#§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §9b§() : Point
      {
         var _loc1_:§`!7§ = null;
         if(this.mBirds.length > this.§^!T§)
         {
            _loc1_ = this.mBirds[this.§^!T§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §<!<§() : Point
      {
         return new Point(this.§5z§,this.§<!f§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§`!7§ = null;
         this.§`=§(param1);
         if(this.§8!]§)
         {
            this.§]!!§(param1);
         }
         this.§;>§ -= param1;
         if(this.§;>§ < 0)
         {
            this.§;>§ = 0;
         }
         if(this.mSlingShotState != §2"3§)
         {
            this.§["$§(param1,param2);
            _loc3_ = null;
            if(this.mBirds.length > 0)
            {
               _loc3_ = this.mBirds[this.§^!T§];
            }
            if(_loc3_)
            {
               _loc3_.§>!8§(param1);
            }
            if(!_loc3_)
            {
               this.setSlingShotState(§2"3§);
            }
            else if(this.mSlingShotState == §'N§)
            {
               if(this.§;>§ <= 0)
               {
                  this.setSlingShotState(§@a§);
                  _loc3_.§7"§();
               }
            }
            else if(this.mSlingShotState == §@a§)
            {
               if(_loc3_.§<"6§)
               {
                  this.setSlingShotState(§7!x§);
               }
            }
            else if(this.mSlingShotState == §7!x§)
            {
               _loc3_.setPosition(this.§#h§ - _loc3_.radius * Math.cos(this.§?!E§ / (180 / Math.PI)),this.§ !Y§ + _loc3_.radius * Math.sin(this.§?!E§ / (180 / Math.PI)));
               if(this.§3"5§)
               {
                  this.§@x§(this.§%N§ / this.§7H§,this.§?!E§);
               }
            }
         }
      }
      
      public function §0!a§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§`!7§ = null;
         if(this.mBirds.length > 0)
         {
            _loc5_ = this.mBirds[this.§^!T§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§@x§(param3,param4);
      }
      
      protected function §@x§(param1:Number, param2:Number) : void
      {
         var _loc3_:§`!7§ = null;
         this.§9x§ = §1i§;
         this.§6!r§ = §'!+§;
         if(this.mBirds.length > 0)
         {
            _loc3_ = this.mBirds[this.§^!T§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§3"5§ = false;
         this.§0"$§ = new Date().time;
         this.§,!T§.§2!"§(_loc3_,param1,param2);
         this.§,!E§(this.§^!T§,_loc3_.§#a§ > 0);
         this.§=f§();
         if(this.§^!T§ >= this.mBirds.length)
         {
            this.setSlingShotState(§2"3§);
         }
         else
         {
            this.setSlingShotState(§'N§);
         }
      }
      
      protected function §=f§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         § !x§.playSound("BirdShot" + _loc1_);
      }
      
      public function §["$§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§^!T§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.mBirds.length)
         {
            if(this.mSlingShotState == §8+§)
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
         var _loc1_:§`!7§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§&!_§();
         if(this.§,!j§ >= this.mBirds.length)
         {
            return false;
         }
         _loc1_ = this.mBirds[this.§,!j§];
         _loc2_ = §+!O§.§?!b§(_loc1_.name).score;
         this.§,!T§.addScore(_loc2_,§&,§.§'?§,true,_loc1_.x,_loc1_.y - 3,§7!0§.§6=§(_loc1_.name));
         _loc1_.§37§(-1,true);
         ++this.§,!j§;
         return true;
      }
      
      public function §="6§() : int
      {
         var _loc2_:§`!7§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mBirds)
         {
            _loc1_ += §+!O§.§?!b§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §,1§() : int
      {
         return this.§=H§;
      }
      
      public function §`=§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§@N§ >= 0)
         {
            this.§@N§ -= param1;
            if(this.§@N§ <= 0)
            {
               _loc2_ = this.§,!T§.objects.§5!e§(this.§5z§,this.§<r§);
               if(_loc2_ < 0)
               {
                  this.§5P§(0.1);
                  this.§@N§ = 0;
               }
               else if(!this.§,!T§.objects.getObject(_loc2_).§%f§)
               {
                  this.§@N§ = -1;
               }
               else if(this.§,!T§.objects.getObject(_loc2_).§!!`§())
               {
                  this.§@N§ = 2000;
               }
               else
               {
                  this.§@N§ = 500;
               }
            }
         }
      }
      
      public function §6!C§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§,!T§.objects.§5!e§(this.§5z§,this.§<r§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§5P§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§@N§ = -1;
      }
      
      public function §54§(param1:Number, param2:Number) : void
      {
         this.§;!E§.x = -param1;
         this.§;!E§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §7!x§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §7!x§ && this.§%N§ > this.§7H§ * §,B§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.setSlingShotState(§7!x§);
         var _loc1_:§`!7§ = this.mBirds[this.§^!T§];
         _loc1_.§37§(§!m§.§;0§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§`!7§ = this.mBirds[this.§^!T§];
         _loc1_.§37§(§!m§.§-!>§);
      }
      
      public function shoot() : void
      {
         this.§3"5§ = true;
      }
      
      protected function §,!E§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§`!7§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.mBirds[param1])
         {
            _loc3_ = this.mBirds[param1];
            this.§8!4§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§'!E§(this.mBirds[param1]);
            }
            _loc3_.dispose();
            this.mBirds[param1] = null;
         }
         this.mBirds.splice(param1,1);
      }
      
      public function §'!E§(param1:§`!7§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §%I§.§9"4§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §%I§.§9"4§) + Math.random() * -_loc8_ * 2;
            this.§,!T§.particles.§`!N§(§7!0§.§+_§,§3!8§.§^D§,§7!0§.§3!!§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§7!0§.§@",§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§,!T§.particles.§`!N§(§7!0§.§7!3§,§3!8§.§^D§,§7!0§.§3!!§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:§`!7§) : void
      {
         this.§,!E§(this.mBirds.indexOf(param1));
      }
      
      public function §,!y§() : void
      {
         var _loc2_:§`!7§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§`!7§ = null;
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
         while(this.§8!4§.numChildren > 0)
         {
            this.§8!4§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.mBirds.length)
         {
            _loc2_ = this.mBirds[_loc1_];
            this.§8!4§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §`!7§
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
      
      public function intersectsWithPoint(param1:Number, param2:Number) : §4^§
      {
         if(param1 >= this.mX - this.§7H§ / 4 && param1 <= this.mX + this.§7H§ / 4 && param2 >= this.mY - this.§7H§ / 4 && this.mY <= this.§<r§)
         {
            return this;
         }
         return null;
      }
      
      public function writeSlingshotInformation(param1:§+R§) : void
      {
         var _loc3_:§`!7§ = null;
         var _loc4_:§<G§ = null;
         param1.§;!u§ = this.mX;
         param1.§?!L§ = this.mY;
         var _loc2_:Number = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc3_ = this.mBirds[_loc2_];
            (_loc4_ = new §<G§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§?+§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §#!a§() : void
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
      
      public function §<[§() : Array
      {
         return [this.§]?§,this.§9!§];
      }
      
      public function addNewBirdToEndOfList(param1:String, param2:Number, param3:Number) : §`!7§
      {
         var _loc4_:§`!7§ = this.§#!R§(param1,param2,param3);
         this.§,!y§();
         return _loc4_;
      }
      
      public function getBirdCount() : Number
      {
         return this.mBirds.length;
      }
   }
}
