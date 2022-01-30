package §%h§
{
   import § !V§.§%!T§;
   import § !V§.§=!g§;
   import §%!<§.§7V§;
   import §%!<§.§=!j§;
   import §&"+§.§!!P§;
   import §'!O§.§@!l§;
   import §3!U§.Texture;
   import §4u§.§<!L§;
   import §6`§.§?!7§;
   import §?c§.§3!u§;
   import §?c§.final;
   import §]!2§.§,!n§;
   import §]!2§.§?"2§;
   import §]!2§.Sprite;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §=$§
   {
      
      public static const §[!L§:int = 0;
      
      public static const §->§:int = 1;
      
      public static const §;,§:int = 2;
      
      public static const §,!b§:int = 3;
      
      public static const §3!_§:int = 5;
      
      public static const §`!8§:int = 3151368;
      
      protected static const §]!d§:int = 8;
      
      protected static const §6!z§:int = 0;
      
      public static const §=!%§:Number = 46.25;
      
      public static const §+9§:Number = 52.5;
      
      protected static const §"!h§:Number = -0.7;
      
      protected static const §!!§:Number = 0;
      
      protected static var §-!d§:Texture;
      
      public static const §@",§:Number = 0.4;
       
      
      public var §>"2§:§5X§;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §"!§:Number;
      
      protected var §?!X§:Number;
      
      protected var §;h§:Number;
      
      protected var §=Q§:Number;
      
      protected var §-!c§:Number;
      
      public var §;!8§:Number;
      
      public var §2!O§:Boolean = false;
      
      protected var §+t§:Number;
      
      public var mBirds:Vector.<§5!K§>;
      
      public var §64§:int;
      
      public var §[X§:int;
      
      public var §"!G§:Number;
      
      public var §6O§:Sprite;
      
      public var §;"+§:int = 0;
      
      public var §7!H§:Number = 0;
      
      public var §6!w§:Array;
      
      public var §-F§:Array;
      
      public var mSlingShotState:int;
      
      public var §4"'§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §07§:Boolean = false;
      
      public var §36§:Number;
      
      protected var §`!-§:Sprite;
      
      protected var §,!r§:§?"2§;
      
      protected var §5!]§:§?"2§;
      
      protected var §&<§:Sprite;
      
      protected var §6!n§:Sprite;
      
      protected var §+!2§:Sprite;
      
      protected var §-!M§:§,!n§;
      
      protected var §2!?§:§,!n§;
      
      private var §catch§:Number = 0;
      
      private var §]<§:int = 0;
      
      protected var §2!h§:Number = -0.7;
      
      protected var §9"&§:Number = 0;
      
      public function §=$§(param1:§5X§, param2:§@!l§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§!!P§ = null;
         this.mBirds = new Vector.<§5!K§>();
         super();
         this.§>"2§ = param1;
         this.§`!-§ = param3;
         if(param2)
         {
            this.setPosition(param2.§^m§,param2.§%<§);
            this.§9X§();
            _loc4_ = 0;
            while(_loc4_ < param2.§`!x§)
            {
               _loc5_ = param2.§=4§(_loc4_);
               this.§+_§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§]<§ = this.§>9§();
            this.§64§ = 0;
            if(this.mBirds.length <= 0)
            {
               §<!L§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.mX + " " + this.mY);
               this.setSlingShotState(§,!b§);
            }
            else
            {
               this.setSlingShotState(§[!L§);
            }
         }
         else
         {
            §<!L§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.setSlingShotState(§,!b§);
         }
         this.§36§ = 0;
         this.§ 3§();
         this.update(0,true);
         this.§[!2§();
         this.§0"0§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§`!-§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§catch§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§64§ < this.mBirds.length;
      }
      
      public function dispose() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§=!9§(0);
         }
         this.mBirds = null;
         if(this.§`!-§)
         {
            this.§`!-§.dispose();
            this.§`!-§ = null;
         }
         this.§6O§ = null;
         this.§6!w§ = null;
         this.§-F§ = null;
      }
      
      public function §<g§(param1:String, param2:Number, param3:Number, param4:int = -1) : §5!K§
      {
         var _loc5_:§5!K§;
         (_loc5_ = this.§+_§(param1,param2,param3,param4)).§`!g§();
         return _loc5_;
      }
      
      protected function §+_§(param1:String, param2:Number, param3:Number, param4:int = -1) : §5!K§
      {
         var _loc5_:§5!K§ = new §5!K§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.mBirds.push(_loc5_);
         }
         else
         {
            this.mBirds.splice(param4,0,_loc5_);
         }
         this.§6O§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function setSlingShotState(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §[!L§)
         {
            this.§3N§();
            this.§"!G§ = 1000;
         }
         else if(this.mSlingShotState == §->§)
         {
            this.§3N§();
            this.§"!G§ = 0;
         }
         else if(this.mSlingShotState == §;,§)
         {
            this.§"!G§ = 10000;
            this.§07§ = false;
            this.§3N§();
         }
         else if(this.mSlingShotState == §,!b§)
         {
            this.§3N§();
            this.§"!G§ = 2000;
         }
         else if(this.mSlingShotState == §3!_§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§07§ = false;
               this.§3N§();
               this.mBirds[this.§64§].setPosition(this.§=Q§ - this.mBirds[this.§64§].radius * Math.cos(this.§7!H§ / (180 / Math.PI)),this.§-!c§ + this.mBirds[this.§64§].radius * Math.sin(this.§7!H§ / (180 / Math.PI)));
            }
            else
            {
               this.§3N§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §]!D§() : §5X§
      {
         return this.§>"2§;
      }
      
      public function §5k§() : Boolean
      {
         return this.mSlingShotState == §,!b§ && this.§"!G§ <= 0;
      }
      
      private function §9X§() : void
      {
         var _loc1_:§%!T§ = this.§4!§();
         var _loc2_:§=!g§ = _loc1_.getFrame(0);
         var _loc3_:§=!g§ = _loc1_.getFrame(1);
         this.§-!M§ = new §,!n§(_loc2_.texture);
         this.§-!M§.scaleX = _loc2_.scale;
         this.§-!M§.scaleY = _loc2_.scale;
         this.§2!?§ = new §,!n§(_loc3_.texture);
         this.§2!?§.scaleX = _loc3_.scale;
         this.§2!?§.scaleY = _loc3_.scale;
         this.§<b§();
         this.§#3§();
         this.§6O§ = new Sprite();
         this.§`!-§.addChild(this.§-!M§);
         this.§`!-§.addChild(this.§&<§);
         this.§`!-§.addChild(this.§6O§);
         this.§`!-§.addChild(this.§+!2§);
         this.§`!-§.addChild(this.§6!n§);
         this.§`!-§.addChild(this.§2!?§);
         this.§"!§ = this.mY + 8.5;
      }
      
      protected function §4!§() : §%!T§
      {
         return this.§>"2§.§1!U§.§%!^§("SLINGSHOT");
      }
      
      public function §<b§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§?!X§ = this.mX;
         this.§;h§ = this.mY;
         this.§+t§ = §6!d§.§=B§;
         _loc1_ = null;
      }
      
      protected function §#3§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§-!d§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §-!d§ = this.§>"2§.§7<§.§>!,§(_loc2_);
         }
         this.§+!2§ = new Sprite();
         var _loc1_:§,!n§ = new §,!n§(§-!d§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§+!2§.addChild(_loc1_);
         this.§&<§ = new Sprite();
         this.§,!r§ = new §?"2§(2,2,§`!8§);
         this.§&<§.addChild(this.§,!r§);
         this.§6!n§ = new Sprite();
         this.§5!]§ = new §?"2§(2,2,§`!8§);
         this.§6!n§.addChild(this.§5!]§);
      }
      
      public function §0"0§(param1:Number) : void
      {
         var _loc2_:Number = this.§-!c§ / §5X§.§,!m§;
         var _loc3_:Number = this.§=Q§ / §5X§.§,!m§;
         var _loc4_:Number = 3.5 + 8 * ((this.§+t§ - this.§;!8§) / this.§+t§);
         this.§+!2§.x = _loc3_;
         this.§+!2§.y = _loc2_;
         this.§+!2§.rotation = -this.§7!H§ / (180 / Math.PI);
         this.§-!M§.x = this.mX / §5X§.§,!m§ - 3;
         this.§-!M§.y = this.mY / §5X§.§,!m§ - 30;
         this.§2!?§.x = this.mX / §5X§.§,!m§ - 30;
         this.§2!?§.y = this.mY / §5X§.§,!m§ - 30;
         this.§6!n§.x = this.mX / §5X§.§,!m§ - 17;
         this.§6!n§.y = this.mY / §5X§.§,!m§ + 5;
         this.§6!n§.rotation = Math.atan2(_loc2_ - this.§6!n§.y,_loc3_ - this.§6!n§.x);
         this.§&<§.x = this.mX / §5X§.§,!m§ + 22;
         this.§&<§.y = this.mY / §5X§.§,!m§;
         this.§&<§.rotation = Math.atan2(_loc2_ - this.§&<§.y,_loc3_ - this.§&<§.x);
         this.§5!]§.width = Math.sqrt(Math.pow(_loc3_ - this.§6!n§.x,2) + Math.pow(_loc2_ - this.§6!n§.y,2));
         this.§,!r§.width = Math.sqrt(Math.pow(_loc3_ - this.§&<§.x,2) + Math.pow(_loc2_ - this.§&<§.y,2));
         this.§5!]§.height = this.§,!r§.height = _loc4_ * 2;
         this.§5!]§.y = -this.§5!]§.height / 2;
         this.§,!r§.y = -this.§,!r§.height / 2;
         this.§4"'§ = false;
      }
      
      public function §=^§() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§=!9§(0,true);
         }
         this.§>!6§();
         this.§+_§("BIRD_SARDINE",this.mX,this.mY);
         this.setSlingShotState(§;,§);
      }
      
      protected function §>!6§() : void
      {
         §?!7§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.setSlingShotState(§3!_§);
      }
      
      public function §3N§() : void
      {
         this.setNewCoordinatesForRubber(this.§?!X§,this.§;h§ + this.§+t§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§=Q§ == param1 && this.§-!c§ == param2)
         {
            return true;
         }
         this.§;!8§ = Math.sqrt((param2 - this.§;h§) * (param2 - this.§;h§) + (param1 - this.§?!X§) * (param1 - this.§?!X§));
         if(this.§;!8§ > this.§+t§)
         {
            if(param3)
            {
               this.§;!8§ = Math.sqrt((this.§-!c§ - this.§;h§) * (this.§-!c§ - this.§;h§) + (this.§=Q§ - this.§?!X§) * (this.§=Q§ - this.§?!X§));
               return false;
            }
            param1 = this.§?!X§ + this.§+t§ * (param1 - this.§?!X§) / this.§;!8§;
            param2 = this.§;h§ + this.§+t§ * (param2 - this.§;h§) / this.§;!8§;
            this.§;!8§ = this.§+t§;
         }
         this.§=Q§ = param1;
         this.§-!c§ = param2;
         this.§7!H§ = Math.atan2(-(this.§-!c§ - this.§;h§),this.§=Q§ - this.§?!X§);
         this.§7!H§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§=Q§ = param1 + this.§2!h§;
            this.§-!c§ = param2 + this.§9"&§;
            this.§7!H§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§+t§ / 2;
         if(this.§;!8§ > _loc7_ && this.§7!H§ > -90 - _loc4_ + _loc5_ && this.§7!H§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§?!X§ + _loc7_ * (param1 - this.§?!X§) / this.§;!8§;
            param2 = this.§;h§ + _loc7_ * (param2 - this.§;h§) / this.§;!8§;
            this.§;!8§ = _loc7_;
            this.§=Q§ = param1;
            this.§-!c§ = param2;
         }
         else if(this.§;!8§ > _loc7_ && this.§7!H§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§7!H§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§+t§ - _loc7_) * (Math.abs(this.§7!H§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§?!X§ + _loc8_ * (param1 - this.§?!X§) / this.§;!8§;
            param2 = this.§;h§ + _loc8_ * (param2 - this.§;h§) / this.§;!8§;
            this.§;!8§ = _loc8_;
            this.§=Q§ = param1;
            this.§-!c§ = param2;
         }
         if(this.§;!8§ <= this.§+t§ * 0.45)
         {
            this.§2!O§ = true;
         }
         else if(this.§2!O§ && this.§;!8§ >= this.§+t§ * 0.8)
         {
            this.§]!=§();
            this.§2!O§ = false;
         }
         this.§4"'§ = true;
         return true;
      }
      
      protected function §]!=§() : void
      {
         §?!7§.playSound("SlingshotStreched");
      }
      
      public function §9b§(param1:Number) : void
      {
         this.setPosition(this.mX,this.mY + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.mX;
         this.mX = param1;
         var _loc5_:Number = param2 - this.mY;
         this.mY = param2;
         this.§"!§ += _loc5_;
         this.§;h§ += _loc5_;
         this.§-!c§ += _loc5_;
         this.§?!X§ += _loc4_;
         this.§=Q§ += _loc4_;
         if(param3)
         {
            this.§0"0§(0);
         }
         this.§4"'§ = true;
      }
      
      public function §>&§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§5!K§ = null;
         _loc2_ = this.mBirds[this.§64§];
         var _loc3_:Number = this.§;!8§ / this.§+t§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§=$§.§+9§) : Number(§=$§.§=!%§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §8K§() : Point
      {
         var _loc1_:§5!K§ = null;
         if(this.mBirds.length > this.§64§)
         {
            _loc1_ = this.mBirds[this.§64§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §9!s§() : Point
      {
         return new Point(this.§?!X§,this.§;h§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§5!K§ = null;
         this.§5K§(param1);
         if(this.§4"'§)
         {
            this.§0"0§(param1);
         }
         this.§"!G§ -= param1;
         if(this.§"!G§ < 0)
         {
            this.§"!G§ = 0;
         }
         if(this.mSlingShotState != §,!b§)
         {
            this.§;m§(param1,param2);
            _loc3_ = null;
            if(this.mBirds.length > 0)
            {
               _loc3_ = this.mBirds[this.§64§];
            }
            if(_loc3_)
            {
               _loc3_.§,H§(param1);
            }
            if(!_loc3_)
            {
               this.setSlingShotState(§,!b§);
            }
            else if(this.mSlingShotState == §[!L§)
            {
               if(this.§"!G§ <= 0)
               {
                  this.setSlingShotState(§->§);
                  _loc3_.§^D§();
               }
            }
            else if(this.mSlingShotState == §->§)
            {
               if(_loc3_.§,!E§)
               {
                  this.setSlingShotState(§;,§);
               }
            }
            else if(this.mSlingShotState == §;,§)
            {
               _loc3_.setPosition(this.§=Q§ - _loc3_.radius * Math.cos(this.§7!H§ / (180 / Math.PI)),this.§-!c§ + _loc3_.radius * Math.sin(this.§7!H§ / (180 / Math.PI)));
               if(this.§07§)
               {
                  this.§8!B§(this.§;!8§ / this.§+t§,this.§7!H§);
               }
            }
         }
      }
      
      public function §]d§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§5!K§ = null;
         if(this.mBirds.length > 0)
         {
            _loc5_ = this.mBirds[this.§64§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§8!B§(param3,param4);
      }
      
      protected function §8!B§(param1:Number, param2:Number) : void
      {
         var _loc3_:§5!K§ = null;
         this.§2!h§ = §"!h§;
         this.§9"&§ = §!!§;
         if(this.mBirds.length > 0)
         {
            _loc3_ = this.mBirds[this.§64§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§07§ = false;
         this.§catch§ = new Date().time;
         this.§>"2§.§^!$§(_loc3_,param1,param2);
         this.§=!9§(this.§64§,_loc3_.§;"'§ > 0);
         this.§1O§();
         if(this.§64§ >= this.mBirds.length)
         {
            this.setSlingShotState(§,!b§);
         }
         else
         {
            this.setSlingShotState(§[!L§);
         }
      }
      
      protected function §1O§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §?!7§.playSound("BirdShot" + _loc1_);
      }
      
      public function §;m§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§64§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.mBirds.length)
         {
            if(this.mSlingShotState == §3!_§)
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
         var _loc1_:§5!K§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§3N§();
         if(this.§[X§ >= this.mBirds.length)
         {
            return false;
         }
         _loc1_ = this.mBirds[this.§[X§];
         _loc2_ = §7V§.§"!E§(_loc1_.name).score;
         this.§>"2§.addScore(_loc2_,§^!'§.§+!§,true,_loc1_.x,_loc1_.y - 3,§3!u§.§>!?§(_loc1_.name));
         _loc1_.§!y§(-1,true);
         ++this.§[X§;
         return true;
      }
      
      public function §>9§() : int
      {
         var _loc2_:§5!K§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mBirds)
         {
            _loc1_ += §7V§.§"!E§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §'!S§() : int
      {
         return this.§]<§;
      }
      
      public function §5K§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§36§ >= 0)
         {
            this.§36§ -= param1;
            if(this.§36§ <= 0)
            {
               _loc2_ = this.§>"2§.objects.§-!0§(this.§?!X§,this.§"!§);
               if(_loc2_ < 0)
               {
                  this.§9b§(0.1);
                  this.§36§ = 0;
               }
               else if(!this.§>"2§.objects.getObject(_loc2_).§>!8§)
               {
                  this.§36§ = -1;
               }
               else if(this.§>"2§.objects.getObject(_loc2_).§^!V§())
               {
                  this.§36§ = 2000;
               }
               else
               {
                  this.§36§ = 500;
               }
            }
         }
      }
      
      public function §[!2§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§>"2§.objects.§-!0§(this.§?!X§,this.§"!§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§9b§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§36§ = -1;
      }
      
      public function §08§(param1:Number, param2:Number) : void
      {
         this.§`!-§.x = -param1;
         this.§`!-§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §;,§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §;,§ && this.§;!8§ > this.§+t§ * §@",§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.setSlingShotState(§;,§);
         var _loc1_:§5!K§ = this.mBirds[this.§64§];
         _loc1_.§!y§(§=!j§.§9!A§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§5!K§ = this.mBirds[this.§64§];
         _loc1_.§!y§(§=!j§.§?!^§);
      }
      
      public function shoot() : void
      {
         this.§07§ = true;
      }
      
      protected function §=!9§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§5!K§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.mBirds[param1])
         {
            _loc3_ = this.mBirds[param1];
            this.§6O§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§-C§(this.mBirds[param1]);
            }
            _loc3_.dispose();
            this.mBirds[param1] = null;
         }
         this.mBirds.splice(param1,1);
      }
      
      public function §-C§(param1:§5!K§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §5X§.§,!m§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §5X§.§,!m§) + Math.random() * -_loc8_ * 2;
            this.§>"2§.particles.§=!J§(§3!u§.§%!#§,final.§0e§,§3!u§.§[!%§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§3!u§.§!"5§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§>"2§.particles.§=!J§(§3!u§.§9N§,final.§0e§,§3!u§.§[!%§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:§5!K§) : void
      {
         this.§=!9§(this.mBirds.indexOf(param1));
      }
      
      public function § 3§() : void
      {
         var _loc2_:§5!K§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§5!K§ = null;
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
         while(this.§6O§.numChildren > 0)
         {
            this.§6O§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.mBirds.length)
         {
            _loc2_ = this.mBirds[_loc1_];
            this.§6O§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §5!K§
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
      
      public function intersectsWithPoint(param1:Number, param2:Number) : §=$§
      {
         if(param1 >= this.mX - this.§+t§ / 4 && param1 <= this.mX + this.§+t§ / 4 && param2 >= this.mY - this.§+t§ / 4 && this.mY <= this.§"!§)
         {
            return this;
         }
         return null;
      }
      
      public function writeSlingshotInformation(param1:§@!l§) : void
      {
         var _loc3_:§5!K§ = null;
         var _loc4_:§!!P§ = null;
         param1.§^m§ = this.mX;
         param1.§%<§ = this.mY;
         var _loc2_:Number = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc3_ = this.mBirds[_loc2_];
            (_loc4_ = new §!!P§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§1W§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §#s§() : void
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
      
      public function §>§() : Array
      {
         return [this.§2!?§,this.§-!M§];
      }
      
      public function addNewBirdToEndOfList(param1:String, param2:Number, param3:Number) : §5!K§
      {
         var _loc4_:§5!K§ = this.§+_§(param1,param2,param3);
         this.§ 3§();
         return _loc4_;
      }
      
      public function getBirdCount() : Number
      {
         return this.mBirds.length;
      }
   }
}
