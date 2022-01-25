package §5!?§
{
   import § !9§.§'!U§;
   import §!!a§.§8=§;
   import §#!a§.Texture;
   import §,N§.§`W§;
   import §6!Q§.§7!7§;
   import §8r§.§-!$§;
   import §8r§.§^!a§;
   import §;t§.§6!K§;
   import §;t§.§=_§;
   import §;t§.Sprite;
   import §@!>§.§<!J§;
   import §@!>§.§=!R§;
   import §[o§.§3!M§;
   import §[o§.§4L§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §'C§
   {
      
      public static const §@L§:int = 0;
      
      public static const § !Y§:int = 1;
      
      public static const §9Z§:int = 2;
      
      public static const §`Q§:int = 3;
      
      public static const §<!P§:int = 5;
      
      public static const §=!C§:int = 3151368;
      
      protected static const §'!+§:int = 8;
      
      protected static const §>+§:int = 0;
      
      public static const §0!0§:Number = 46.25;
      
      public static const § !C§:Number = 52.5;
      
      protected static var §'v§:Texture;
      
      public static const §<5§:Number = 0.4;
       
      
      public var mLevelMain:§>"§;
      
      public var §?H§:Number;
      
      public var §>!a§:Number;
      
      public var §<J§:Number;
      
      protected var §]S§:Number;
      
      protected var § s§:Number;
      
      protected var §2w§:Number;
      
      protected var §[2§:Number;
      
      public var §"!E§:Number;
      
      public var §;X§:Boolean = false;
      
      protected var §?!2§:Number;
      
      public var §%X§:Vector.<§;!Y§>;
      
      public var §6`§:int;
      
      public var §96§:int;
      
      public var §0+§:Number;
      
      public var §?_§:Sprite;
      
      public var §%!J§:int = 0;
      
      public var §['§:Number = 0;
      
      public var §7=§:Array;
      
      public var §3S§:Array;
      
      public var mSlingShotState:int;
      
      public var §!!,§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §]!P§:Boolean = false;
      
      public var §for§:Number;
      
      protected var §8q§:Sprite;
      
      protected var §3?§:§6!K§;
      
      protected var §,n§:§6!K§;
      
      protected var §,!2§:Sprite;
      
      protected var §^V§:Sprite;
      
      protected var §"s§:Sprite;
      
      protected var §<e§:§=_§;
      
      protected var §6!7§:§=_§;
      
      private var §1M§:Number = 0;
      
      private var §[!c§:int = 0;
      
      public function §'C§(param1:§>"§, param2:§8=§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§`W§ = null;
         this.§%X§ = new Vector.<§;!Y§>();
         super();
         this.mLevelMain = param1;
         this.§8q§ = param3;
         if(param2)
         {
            this.setPosition(param2.§&j§,param2.§+!1§);
            this.§-9§();
            _loc4_ = 0;
            while(_loc4_ < param2.§=Z§)
            {
               _loc5_ = param2.§4!4§(_loc4_);
               this.§-d§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§[!c§ = this.§[!I§();
            this.§6`§ = 0;
            if(this.§%X§.length <= 0)
            {
               §7!7§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§?H§ + " " + this.§>!a§);
               this.§!p§(§`Q§);
            }
            else
            {
               this.§!p§(§@L§);
            }
         }
         else
         {
            §7!7§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§!p§(§`Q§);
         }
         this.§for§ = 0;
         this.§?!H§();
         this.update(0,true);
         this.§+b§();
         this.§5N§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§8q§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§1M§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§6`§ < this.§%X§.length;
      }
      
      public function dispose() : void
      {
         while(this.§%X§.length > 0)
         {
            this.§4!]§(0);
         }
         this.§%X§ = null;
         if(this.§8q§)
         {
            this.§8q§.dispose();
            this.§8q§ = null;
         }
         this.§?_§ = null;
         this.§7=§ = null;
         this.§3S§ = null;
      }
      
      public function §'!I§(param1:String, param2:Number, param3:Number, param4:int = -1) : §;!Y§
      {
         var _loc5_:§;!Y§;
         (_loc5_ = this.§-d§(param1,param2,param3,param4)).§]!+§();
         return _loc5_;
      }
      
      protected function §-d§(param1:String, param2:Number, param3:Number, param4:int = -1) : §;!Y§
      {
         var _loc5_:§;!Y§ = new §;!Y§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§%X§.push(_loc5_);
         }
         else
         {
            this.§%X§.splice(param4,0,_loc5_);
         }
         this.§?_§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §!p§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §@L§)
         {
            this.§ !'§();
            this.§0+§ = 1000;
         }
         else if(this.mSlingShotState == § !Y§)
         {
            this.§ !'§();
            this.§0+§ = 0;
         }
         else if(this.mSlingShotState == §9Z§)
         {
            this.§0+§ = 10000;
            this.§]!P§ = false;
            this.§ !'§();
         }
         else if(this.mSlingShotState == §`Q§)
         {
            this.§ !'§();
            this.§0+§ = 2000;
         }
         else if(this.mSlingShotState == §<!P§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§]!P§ = false;
               this.§ !'§();
               this.§%X§[this.§6`§].setPosition(this.§2w§ - this.§%X§[this.§6`§].radius * Math.cos(this.§['§ / (180 / Math.PI)),this.§[2§ + this.§%X§[this.§6`§].radius * Math.sin(this.§['§ / (180 / Math.PI)));
            }
            else
            {
               this.§ !'§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §]!F§() : §>"§
      {
         return this.mLevelMain;
      }
      
      public function §,!7§() : Boolean
      {
         return this.mSlingShotState == §`Q§ && this.§0+§ <= 0;
      }
      
      private function §-9§() : void
      {
         var _loc1_:§^!a§ = this.mLevelMain.§6!M§.§8T§("SLINGSHOT");
         var _loc2_:§-!$§ = _loc1_.getFrame(0);
         var _loc3_:§-!$§ = _loc1_.getFrame(1);
         this.§<e§ = new §=_§(_loc2_.texture);
         this.§<e§.scaleX = _loc2_.scale;
         this.§<e§.scaleY = _loc2_.scale;
         this.§6!7§ = new §=_§(_loc3_.texture);
         this.§6!7§.scaleX = _loc3_.scale;
         this.§6!7§.scaleY = _loc3_.scale;
         this.§82§();
         this.§+!H§();
         this.§?_§ = new Sprite();
         this.§8q§.addChild(this.§<e§);
         this.§8q§.addChild(this.§,!2§);
         this.§8q§.addChild(this.§?_§);
         this.§8q§.addChild(this.§"s§);
         this.§8q§.addChild(this.§^V§);
         this.§8q§.addChild(this.§6!7§);
         this.§<J§ = this.§>!a§ + 8.5;
      }
      
      public function §82§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§]S§ = this.§?H§;
         this.§ s§ = this.§>!a§;
         this.§?!2§ = §;!T§.§&W§;
         _loc1_ = null;
      }
      
      protected function §+!H§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§'v§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §'v§ = this.mLevelMain.textureManager.§^c§(_loc2_);
         }
         this.§"s§ = new Sprite();
         var _loc1_:§=_§ = new §=_§(§'v§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§"s§.addChild(_loc1_);
         this.§,!2§ = new Sprite();
         this.§3?§ = new §6!K§(2,2,§=!C§);
         this.§,!2§.addChild(this.§3?§);
         this.§^V§ = new Sprite();
         this.§,n§ = new §6!K§(2,2,§=!C§);
         this.§^V§.addChild(this.§,n§);
      }
      
      public function §5N§(param1:Number) : void
      {
         var _loc2_:Number = this.§[2§ / §>"§.§'!S§;
         var _loc3_:Number = this.§2w§ / §>"§.§'!S§;
         var _loc4_:Number = 3.5 + 8 * ((this.§?!2§ - this.§"!E§) / this.§?!2§);
         this.§"s§.x = _loc3_;
         this.§"s§.y = _loc2_;
         this.§"s§.rotation = -this.§['§ / (180 / Math.PI);
         this.§<e§.x = this.§?H§ / §>"§.§'!S§ - 3;
         this.§<e§.y = this.§>!a§ / §>"§.§'!S§ - 30;
         this.§6!7§.x = this.§?H§ / §>"§.§'!S§ - 30;
         this.§6!7§.y = this.§>!a§ / §>"§.§'!S§ - 30;
         this.§^V§.x = this.§?H§ / §>"§.§'!S§ - 17;
         this.§^V§.y = this.§>!a§ / §>"§.§'!S§ + 5;
         this.§^V§.rotation = Math.atan2(_loc2_ - this.§^V§.y,_loc3_ - this.§^V§.x);
         this.§,!2§.x = this.§?H§ / §>"§.§'!S§ + 22;
         this.§,!2§.y = this.§>!a§ / §>"§.§'!S§;
         this.§,!2§.rotation = Math.atan2(_loc2_ - this.§,!2§.y,_loc3_ - this.§,!2§.x);
         this.§,n§.width = Math.sqrt(Math.pow(_loc3_ - this.§^V§.x,2) + Math.pow(_loc2_ - this.§^V§.y,2));
         this.§3?§.width = Math.sqrt(Math.pow(_loc3_ - this.§,!2§.x,2) + Math.pow(_loc2_ - this.§,!2§.y,2));
         this.§,n§.height = this.§3?§.height = _loc4_ * 2;
         this.§,n§.y = -this.§,n§.height / 2;
         this.§3?§.y = -this.§3?§.height / 2;
         this.§!!,§ = false;
      }
      
      public function §;!6§() : void
      {
         while(this.§%X§.length > 0)
         {
            this.§4!]§(0,true);
         }
         this.§5!4§();
         this.§-d§("BIRD_SARDINE",this.§?H§,this.§>!a§);
         this.§!p§(§9Z§);
      }
      
      protected function §5!4§() : void
      {
         §'!U§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§!p§(§<!P§);
      }
      
      public function § !'§() : void
      {
         this.setNewCoordinatesForRubber(this.§]S§,this.§ s§ + this.§?!2§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§2w§ == param1 && this.§[2§ == param2)
         {
            return true;
         }
         this.§"!E§ = Math.sqrt((param2 - this.§ s§) * (param2 - this.§ s§) + (param1 - this.§]S§) * (param1 - this.§]S§));
         if(this.§"!E§ > this.§?!2§)
         {
            if(param3)
            {
               this.§"!E§ = Math.sqrt((this.§[2§ - this.§ s§) * (this.§[2§ - this.§ s§) + (this.§2w§ - this.§]S§) * (this.§2w§ - this.§]S§));
               return false;
            }
            param1 = this.§]S§ + this.§?!2§ * (param1 - this.§]S§) / this.§"!E§;
            param2 = this.§ s§ + this.§?!2§ * (param2 - this.§ s§) / this.§"!E§;
            this.§"!E§ = this.§?!2§;
         }
         this.§2w§ = param1;
         this.§[2§ = param2;
         this.§['§ = Math.atan2(-(this.§[2§ - this.§ s§),this.§2w§ - this.§]S§);
         this.§['§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§2w§ = param1 - 0.7;
            this.§[2§ = param2;
            this.§['§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§?!2§ / 2;
         if(this.§"!E§ > _loc7_ && this.§['§ > -90 - _loc4_ + _loc5_ && this.§['§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§]S§ + _loc7_ * (param1 - this.§]S§) / this.§"!E§;
            param2 = this.§ s§ + _loc7_ * (param2 - this.§ s§) / this.§"!E§;
            this.§"!E§ = _loc7_;
            this.§2w§ = param1;
            this.§[2§ = param2;
         }
         else if(this.§"!E§ > _loc7_ && this.§['§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§['§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§?!2§ - _loc7_) * (Math.abs(this.§['§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§]S§ + _loc8_ * (param1 - this.§]S§) / this.§"!E§;
            param2 = this.§ s§ + _loc8_ * (param2 - this.§ s§) / this.§"!E§;
            this.§"!E§ = _loc8_;
            this.§2w§ = param1;
            this.§[2§ = param2;
         }
         if(this.§"!E§ <= this.§?!2§ * 0.45)
         {
            this.§;X§ = true;
         }
         else if(this.§;X§ && this.§"!E§ >= this.§?!2§ * 0.8)
         {
            this.§"K§();
            this.§;X§ = false;
         }
         this.§!!,§ = true;
         return true;
      }
      
      protected function §"K§() : void
      {
         §'!U§.playSound("SlingshotStreched");
      }
      
      public function § !X§(param1:Number) : void
      {
         this.setPosition(this.§?H§,this.§>!a§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§?H§;
         this.§?H§ = param1;
         var _loc5_:Number = param2 - this.§>!a§;
         this.§>!a§ = param2;
         this.§<J§ += _loc5_;
         this.§ s§ += _loc5_;
         this.§[2§ += _loc5_;
         this.§]S§ += _loc4_;
         this.§2w§ += _loc4_;
         if(param3)
         {
            this.§5N§(0);
         }
         this.§!!,§ = true;
      }
      
      public function §,!c§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§;!Y§ = null;
         _loc2_ = this.§%X§[this.§6`§];
         var _loc3_:Number = this.§"!E§ / this.§?!2§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§'C§.§ !C§) : Number(§'C§.§0!0§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §]!`§() : Point
      {
         var _loc1_:§;!Y§ = null;
         if(this.§%X§.length > this.§6`§)
         {
            _loc1_ = this.§%X§[this.§6`§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §[#§() : Point
      {
         return new Point(this.§]S§,this.§ s§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§;!Y§ = null;
         this.§#7§(param1);
         if(this.§!!,§)
         {
            this.§5N§(param1);
         }
         this.§0+§ -= param1;
         if(this.§0+§ < 0)
         {
            this.§0+§ = 0;
         }
         if(this.mSlingShotState != §`Q§)
         {
            this.§&!K§(param1,param2);
            _loc3_ = null;
            if(this.§%X§.length > 0)
            {
               _loc3_ = this.§%X§[this.§6`§];
            }
            if(_loc3_)
            {
               _loc3_.§9!"§(param1);
            }
            if(!_loc3_)
            {
               this.§!p§(§`Q§);
            }
            else if(this.mSlingShotState == §@L§)
            {
               if(this.§0+§ <= 0)
               {
                  this.§!p§(§ !Y§);
                  _loc3_.§]I§();
               }
            }
            else if(this.mSlingShotState == § !Y§)
            {
               if(_loc3_.§7p§)
               {
                  this.§!p§(§9Z§);
               }
            }
            else if(this.mSlingShotState == §9Z§)
            {
               _loc3_.setPosition(this.§2w§ - _loc3_.radius * Math.cos(this.§['§ / (180 / Math.PI)),this.§[2§ + _loc3_.radius * Math.sin(this.§['§ / (180 / Math.PI)));
               if(this.§]!P§)
               {
                  this.§ ,§(this.§"!E§ / this.§?!2§,this.§['§);
               }
            }
         }
      }
      
      public function §[N§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§;!Y§ = null;
         if(this.§%X§.length > 0)
         {
            _loc5_ = this.§%X§[this.§6`§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§ ,§(param3,param4);
      }
      
      protected function § ,§(param1:Number, param2:Number) : void
      {
         var _loc3_:§;!Y§ = null;
         if(this.§%X§.length > 0)
         {
            _loc3_ = this.§%X§[this.§6`§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§]!P§ = false;
         this.§1M§ = new Date().time;
         this.mLevelMain.§^^§(_loc3_,param1,param2);
         this.§4!]§(this.§6`§,_loc3_.§ L§ > 0);
         this.§!!$§();
         if(this.§6`§ >= this.§%X§.length)
         {
            this.§!p§(§`Q§);
         }
         else
         {
            this.§!p§(§@L§);
         }
      }
      
      protected function §!!$§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §'!U§.playSound("BirdShot" + _loc1_);
      }
      
      public function §&!K§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§6`§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§%X§.length)
         {
            if(this.mSlingShotState == §<!P§)
            {
               this.§%X§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§%X§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§;!Y§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§ !'§();
         if(this.§96§ >= this.§%X§.length)
         {
            return false;
         }
         _loc1_ = this.§%X§[this.§96§];
         _loc2_ = §4L§.§+6§(_loc1_.name).score;
         this.mLevelMain.addScore(_loc2_,§&%§.§[!8§,true,_loc1_.x,_loc1_.y - 3,§<!J§.§'!B§(_loc1_.name));
         _loc1_.§9§(-1,true);
         ++this.§96§;
         return true;
      }
      
      public function §[!I§() : int
      {
         var _loc2_:§;!Y§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§%X§)
         {
            _loc1_ += §4L§.§+6§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §[I§() : int
      {
         return this.§[!c§;
      }
      
      public function §#7§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§for§ >= 0)
         {
            this.§for§ -= param1;
            if(this.§for§ <= 0)
            {
               _loc2_ = this.mLevelMain.objects.§3'§(this.§]S§,this.§<J§);
               if(_loc2_ < 0)
               {
                  this.§ !X§(0.1);
                  this.§for§ = 0;
               }
               else if(!this.mLevelMain.objects.§2T§(_loc2_).§#W§)
               {
                  this.§for§ = -1;
               }
               else if(this.mLevelMain.objects.§2T§(_loc2_).§@T§())
               {
                  this.§for§ = 2000;
               }
               else
               {
                  this.§for§ = 500;
               }
            }
         }
      }
      
      public function §+b§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.mLevelMain.objects.§3'§(this.§]S§,this.§<J§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§ !X§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§for§ = -1;
      }
      
      public function §%!T§(param1:Number, param2:Number) : void
      {
         this.§8q§.x = -param1;
         this.§8q§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §9Z§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §9Z§ && this.§"!E§ > this.§?!2§ * §<5§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§!p§(§9Z§);
         var _loc1_:§;!Y§ = this.§%X§[this.§6`§];
         _loc1_.§9§(§3!M§.§%T§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§;!Y§ = this.§%X§[this.§6`§];
         _loc1_.§9§(§3!M§.§#!+§);
      }
      
      public function shoot() : void
      {
         this.§]!P§ = true;
      }
      
      protected function §4!]§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§;!Y§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§%X§[param1])
         {
            _loc3_ = this.§%X§[param1];
            this.§?_§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§[!<§(this.§%X§[param1]);
            }
            _loc3_.dispose();
            this.§%X§[param1] = null;
         }
         this.§%X§.splice(param1,1);
      }
      
      public function §[!<§(param1:§;!Y§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §>"§.§'!S§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §>"§.§'!S§) + Math.random() * -_loc8_ * 2;
            this.mLevelMain.particles.§'!"§(§<!J§.§9s§,§=!R§.§4r§,§<!J§.§"@§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§<!J§.§7D§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.mLevelMain.particles.§'!"§(§<!J§.§9x§,§=!R§.§4r§,§<!J§.§"@§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §+4§(param1:§;!Y§) : void
      {
         this.§4!]§(this.§%X§.indexOf(param1));
      }
      
      public function §?!H§() : void
      {
         var _loc2_:§;!Y§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§;!Y§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§%X§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§?H§ - this.§%X§[_loc1_].x) * (this.§?H§ - this.§%X§[_loc1_].x) + (this.§>!a§ - this.§%X§[_loc1_].y) * (this.§>!a§ - this.§%X§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§?H§ - this.§%X§[_loc1_ + 1].x) * (this.§?H§ - this.§%X§[_loc1_ + 1].x) + (this.§>!a§ - this.§%X§[_loc1_ + 1].y) * (this.§>!a§ - this.§%X§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§%X§[_loc1_];
               this.§%X§.splice(_loc1_,1);
               this.§%X§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§?_§.numChildren > 0)
         {
            this.§?_§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§%X§.length)
         {
            _loc2_ = this.§%X§[_loc1_];
            this.§?_§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §6B§(param1:Number, param2:Number) : §;!Y§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§%X§.length)
         {
            if(this.§%X§[_loc3_])
            {
               if(this.§%X§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§%X§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §`!2§(param1:Number, param2:Number) : §'C§
      {
         if(param1 >= this.§?H§ - this.§?!2§ / 4 && param1 <= this.§?H§ + this.§?!2§ / 4 && param2 >= this.§>!a§ - this.§?!2§ / 4 && this.§>!a§ <= this.§<J§)
         {
            return this;
         }
         return null;
      }
      
      public function §`?§(param1:§8=§) : void
      {
         var _loc3_:§;!Y§ = null;
         var _loc4_:§`W§ = null;
         param1.§&j§ = this.§?H§;
         param1.§+!1§ = this.§>!a§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§%X§.length)
         {
            _loc3_ = this.§%X§[_loc2_];
            (_loc4_ = new §`W§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§9!W§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §4F§() : void
      {
         while(this.§%X§.length > 0)
         {
            this.§+4§(this.§%X§[0]);
         }
      }
      
      public function §&!W§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§%X§.length)
         {
            if(this.§%X§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§%X§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§?H§ > param1.x && this.§?H§ < param2.x && this.§>!a§ > param1.y && this.§>!a§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §%!+§() : Array
      {
         return [this.§6!7§,this.§<e§];
      }
      
      public function §4!=§(param1:String, param2:Number, param3:Number) : §;!Y§
      {
         var _loc4_:§;!Y§ = this.§-d§(param1,param2,param3);
         this.§?!H§();
         return _loc4_;
      }
      
      public function §6!?§() : Number
      {
         return this.§%X§.length;
      }
   }
}
