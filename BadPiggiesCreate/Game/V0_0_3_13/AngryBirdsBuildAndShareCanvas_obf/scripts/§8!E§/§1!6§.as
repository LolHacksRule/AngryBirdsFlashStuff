package §8!E§
{
   import § ""§.§4!n§;
   import § ""§.§<9§;
   import §&W§.§7L§;
   import §0I§.§%5§;
   import §0s§.§];§;
   import §>Z§.§5;§;
   import §@!#§.Texture;
   import §["8§.§ !>§;
   import §["8§.§=!i§;
   import §`"2§.§%3§;
   import §`"2§.§>",§;
   import §`L§.§-;§;
   import §`L§.§=!x§;
   import §`L§.Sprite;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §1!6§
   {
      
      public static const §'!9§:int = 0;
      
      public static const §!n§:int = 1;
      
      public static const §'&§:int = 2;
      
      public static const §return§:int = 3;
      
      public static const §"4§:int = 5;
      
      public static const §+w§:int = 3151368;
      
      protected static const §8;§:int = 8;
      
      protected static const §->§:int = 0;
      
      public static const §%!c§:Number = 46.25;
      
      public static const § !i§:Number = 52.5;
      
      protected static const §?!h§:Number = -0.7;
      
      protected static const §2!#§:Number = 0;
      
      protected static var §2Q§:Texture;
      
      public static const §"m§:Number = 0.4;
       
      
      public var §7!;§:§?!X§;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §1a§:Number;
      
      protected var §]s§:Number;
      
      protected var §`!A§:Number;
      
      protected var §5!D§:Number;
      
      protected var §7z§:Number;
      
      public var §>!l§:Number;
      
      public var §1`§:Boolean = false;
      
      protected var §+!2§:Number;
      
      public var mBirds:Vector.<§'4§>;
      
      public var §!"7§:int;
      
      public var §8a§:int;
      
      public var §`g§:Number;
      
      public var §<!H§:Sprite;
      
      public var §+7§:int = 0;
      
      public var §+!`§:Number = 0;
      
      public var §#6§:Array;
      
      public var §["-§:Array;
      
      public var mSlingShotState:int;
      
      public var §2"2§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §&!f§:Boolean = false;
      
      public var §-W§:Number;
      
      protected var §`B§:Sprite;
      
      protected var §<J§:§=!x§;
      
      protected var §`>§:§=!x§;
      
      protected var §[V§:Sprite;
      
      protected var §5!I§:Sprite;
      
      protected var §%!6§:Sprite;
      
      protected var §5?§:§-;§;
      
      protected var § !_§:§-;§;
      
      private var §8!c§:Number = 0;
      
      private var §7q§:int = 0;
      
      protected var §>!0§:Number = -0.7;
      
      protected var §break§:Number = 0;
      
      public function §1!6§(param1:§?!X§, param2:§];§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§%5§ = null;
         this.mBirds = new Vector.<§'4§>();
         super();
         this.§7!;§ = param1;
         this.§`B§ = param3;
         if(param2)
         {
            this.setPosition(param2.§73§,param2.§=!w§);
            this.§=i§();
            _loc4_ = 0;
            while(_loc4_ < param2.§<[§)
            {
               _loc5_ = param2.§;d§(_loc4_);
               this.§+>§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§7q§ = this.§?!^§();
            this.§!"7§ = 0;
            if(this.mBirds.length <= 0)
            {
               §7L§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.mX + " " + this.mY);
               this.setSlingShotState(§return§);
            }
            else
            {
               this.setSlingShotState(§'!9§);
            }
         }
         else
         {
            §7L§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.setSlingShotState(§return§);
         }
         this.§-W§ = 0;
         this.§0d§();
         this.update(0,true);
         this.§%"+§();
         this.§,!V§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§`B§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§8!c§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§!"7§ < this.mBirds.length;
      }
      
      public function dispose() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§-"$§(0);
         }
         this.mBirds = null;
         if(this.§`B§)
         {
            this.§`B§.dispose();
            this.§`B§ = null;
         }
         this.§<!H§ = null;
         this.§#6§ = null;
         this.§["-§ = null;
      }
      
      public function §,=§(param1:String, param2:Number, param3:Number, param4:int = -1) : §'4§
      {
         var _loc5_:§'4§;
         (_loc5_ = this.§+>§(param1,param2,param3,param4)).§ p§();
         this.setSlingShotState(§'&§);
         return _loc5_;
      }
      
      protected function §+>§(param1:String, param2:Number, param3:Number, param4:int = -1) : §'4§
      {
         var _loc5_:§'4§ = new §'4§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.mBirds.push(_loc5_);
         }
         else
         {
            this.mBirds.splice(param4,0,_loc5_);
         }
         this.§<!H§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function setSlingShotState(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §'!9§)
         {
            this.§'@§();
            this.§`g§ = 1000;
         }
         else if(this.mSlingShotState == §!n§)
         {
            this.§'@§();
            this.§`g§ = 0;
         }
         else if(this.mSlingShotState == §'&§)
         {
            this.§`g§ = 10000;
            this.§&!f§ = false;
            this.§'@§();
         }
         else if(this.mSlingShotState == §return§)
         {
            this.§'@§();
            this.§`g§ = 2000;
         }
         else if(this.mSlingShotState == §"4§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§&!f§ = false;
               this.§'@§();
               this.mBirds[this.§!"7§].setPosition(this.§5!D§ - this.mBirds[this.§!"7§].radius * Math.cos(this.§+!`§ / (180 / Math.PI)),this.§7z§ + this.mBirds[this.§!"7§].radius * Math.sin(this.§+!`§ / (180 / Math.PI)));
            }
            else
            {
               this.§'@§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §9"&§() : §?!X§
      {
         return this.§7!;§;
      }
      
      public function §;^§() : Boolean
      {
         return this.mSlingShotState == §return§ && this.§`g§ <= 0;
      }
      
      private function §=i§() : void
      {
         var _loc1_:§>",§ = this.§4!$§();
         var _loc2_:§%3§ = _loc1_.getFrame(0);
         var _loc3_:§%3§ = _loc1_.getFrame(1);
         this.§5?§ = new §-;§(_loc2_.texture);
         this.§5?§.scaleX = _loc2_.scale;
         this.§5?§.scaleY = _loc2_.scale;
         this.§ !_§ = new §-;§(_loc3_.texture);
         this.§ !_§.scaleX = _loc3_.scale;
         this.§ !_§.scaleY = _loc3_.scale;
         this.§6!e§();
         this.§`!i§();
         this.§<!H§ = new Sprite();
         this.§`B§.addChild(this.§5?§);
         this.§`B§.addChild(this.§[V§);
         this.§`B§.addChild(this.§<!H§);
         this.§`B§.addChild(this.§%!6§);
         this.§`B§.addChild(this.§5!I§);
         this.§`B§.addChild(this.§ !_§);
         this.§1a§ = this.mY + 8.5;
      }
      
      protected function §4!$§() : §>",§
      {
         return this.§7!;§.§1!,§.§ "1§("SLINGSHOT");
      }
      
      public function §6!e§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§]s§ = this.mX;
         this.§`!A§ = this.mY;
         this.§+!2§ = §@!i§.§,!s§;
         _loc1_ = null;
      }
      
      protected function §`!i§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§2Q§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §2Q§ = this.§7!;§.§4F§.§`!+§(_loc2_);
         }
         this.§%!6§ = new Sprite();
         var _loc1_:§-;§ = new §-;§(§2Q§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§%!6§.addChild(_loc1_);
         this.§[V§ = new Sprite();
         this.§<J§ = new §=!x§(2,2,§+w§);
         this.§[V§.addChild(this.§<J§);
         this.§5!I§ = new Sprite();
         this.§`>§ = new §=!x§(2,2,§+w§);
         this.§5!I§.addChild(this.§`>§);
      }
      
      public function §,!V§(param1:Number) : void
      {
         var _loc2_:Number = this.§7z§ / §?!X§.§57§;
         var _loc3_:Number = this.§5!D§ / §?!X§.§57§;
         var _loc4_:Number = 3.5 + 8 * ((this.§+!2§ - this.§>!l§) / this.§+!2§);
         this.§%!6§.x = _loc3_;
         this.§%!6§.y = _loc2_;
         this.§%!6§.rotation = -this.§+!`§ / (180 / Math.PI);
         this.§5?§.x = this.mX / §?!X§.§57§ - 3;
         this.§5?§.y = this.mY / §?!X§.§57§ - 30;
         this.§ !_§.x = this.mX / §?!X§.§57§ - 30;
         this.§ !_§.y = this.mY / §?!X§.§57§ - 30;
         this.§5!I§.x = this.mX / §?!X§.§57§ - 17;
         this.§5!I§.y = this.mY / §?!X§.§57§ + 5;
         this.§5!I§.rotation = Math.atan2(_loc2_ - this.§5!I§.y,_loc3_ - this.§5!I§.x);
         this.§[V§.x = this.mX / §?!X§.§57§ + 22;
         this.§[V§.y = this.mY / §?!X§.§57§;
         this.§[V§.rotation = Math.atan2(_loc2_ - this.§[V§.y,_loc3_ - this.§[V§.x);
         this.§`>§.width = Math.sqrt(Math.pow(_loc3_ - this.§5!I§.x,2) + Math.pow(_loc2_ - this.§5!I§.y,2));
         this.§<J§.width = Math.sqrt(Math.pow(_loc3_ - this.§[V§.x,2) + Math.pow(_loc2_ - this.§[V§.y,2));
         this.§`>§.height = this.§<J§.height = _loc4_ * 2;
         this.§`>§.y = -this.§`>§.height / 2;
         this.§<J§.y = -this.§<J§.height / 2;
         this.§2"2§ = false;
      }
      
      public function §`r§() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§-"$§(0,true);
         }
         this.§<5§();
         this.§+>§("BIRD_SARDINE",this.mX,this.mY);
         this.setSlingShotState(§'&§);
      }
      
      protected function §<5§() : void
      {
         §5;§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.setSlingShotState(§"4§);
      }
      
      public function §'@§() : void
      {
         this.setNewCoordinatesForRubber(this.§]s§,this.§`!A§ + this.§+!2§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§5!D§ == param1 && this.§7z§ == param2)
         {
            return true;
         }
         this.§>!l§ = Math.sqrt((param2 - this.§`!A§) * (param2 - this.§`!A§) + (param1 - this.§]s§) * (param1 - this.§]s§));
         if(this.§>!l§ > this.§+!2§)
         {
            if(param3)
            {
               this.§>!l§ = Math.sqrt((this.§7z§ - this.§`!A§) * (this.§7z§ - this.§`!A§) + (this.§5!D§ - this.§]s§) * (this.§5!D§ - this.§]s§));
               return false;
            }
            param1 = this.§]s§ + this.§+!2§ * (param1 - this.§]s§) / this.§>!l§;
            param2 = this.§`!A§ + this.§+!2§ * (param2 - this.§`!A§) / this.§>!l§;
            this.§>!l§ = this.§+!2§;
         }
         this.§5!D§ = param1;
         this.§7z§ = param2;
         this.§+!`§ = Math.atan2(-(this.§7z§ - this.§`!A§),this.§5!D§ - this.§]s§);
         this.§+!`§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§5!D§ = param1 + this.§>!0§;
            this.§7z§ = param2 + this.§break§;
            this.§+!`§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§+!2§ / 2;
         if(this.§>!l§ > _loc7_ && this.§+!`§ > -90 - _loc4_ + _loc5_ && this.§+!`§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§]s§ + _loc7_ * (param1 - this.§]s§) / this.§>!l§;
            param2 = this.§`!A§ + _loc7_ * (param2 - this.§`!A§) / this.§>!l§;
            this.§>!l§ = _loc7_;
            this.§5!D§ = param1;
            this.§7z§ = param2;
         }
         else if(this.§>!l§ > _loc7_ && this.§+!`§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§+!`§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§+!2§ - _loc7_) * (Math.abs(this.§+!`§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§]s§ + _loc8_ * (param1 - this.§]s§) / this.§>!l§;
            param2 = this.§`!A§ + _loc8_ * (param2 - this.§`!A§) / this.§>!l§;
            this.§>!l§ = _loc8_;
            this.§5!D§ = param1;
            this.§7z§ = param2;
         }
         if(this.§>!l§ <= this.§+!2§ * 0.45)
         {
            this.§1`§ = true;
         }
         else if(this.§1`§ && this.§>!l§ >= this.§+!2§ * 0.8)
         {
            this.§3!'§();
            this.§1`§ = false;
         }
         this.§2"2§ = true;
         return true;
      }
      
      protected function §3!'§() : void
      {
         §5;§.playSound("SlingshotStreched");
      }
      
      public function § get§(param1:Number) : void
      {
         this.setPosition(this.mX,this.mY + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.mX;
         this.mX = param1;
         var _loc5_:Number = param2 - this.mY;
         this.mY = param2;
         this.§1a§ += _loc5_;
         this.§`!A§ += _loc5_;
         this.§7z§ += _loc5_;
         this.§]s§ += _loc4_;
         this.§5!D§ += _loc4_;
         if(param3)
         {
            this.§,!V§(0);
         }
         this.§2"2§ = true;
      }
      
      public function §3r§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§'4§ = null;
         _loc2_ = this.mBirds[this.§!"7§];
         var _loc3_:Number = this.§>!l§ / this.§+!2§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§1!6§.§ !i§) : Number(§1!6§.§%!c§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §@!0§() : Point
      {
         var _loc1_:§'4§ = null;
         if(this.mBirds.length > this.§!"7§)
         {
            _loc1_ = this.mBirds[this.§!"7§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §5!t§() : Point
      {
         return new Point(this.§]s§,this.§`!A§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§'4§ = null;
         this.§ !%§(param1);
         if(this.§2"2§)
         {
            this.§,!V§(param1);
         }
         this.§`g§ -= param1;
         if(this.§`g§ < 0)
         {
            this.§`g§ = 0;
         }
         if(this.mSlingShotState != §return§)
         {
            this.§2"1§(param1,param2);
            _loc3_ = null;
            if(this.mBirds.length > 0)
            {
               _loc3_ = this.mBirds[this.§!"7§];
            }
            if(_loc3_)
            {
               _loc3_.§27§(param1);
            }
            if(!_loc3_)
            {
               this.setSlingShotState(§return§);
            }
            else if(this.mSlingShotState == §'!9§)
            {
               if(this.§`g§ <= 0)
               {
                  this.setSlingShotState(§!n§);
                  _loc3_.§"!s§();
               }
            }
            else if(this.mSlingShotState == §!n§)
            {
               if(_loc3_.§-!M§)
               {
                  this.setSlingShotState(§'&§);
               }
            }
            else if(this.mSlingShotState == §'&§)
            {
               _loc3_.setPosition(this.§5!D§ - _loc3_.radius * Math.cos(this.§+!`§ / (180 / Math.PI)),this.§7z§ + _loc3_.radius * Math.sin(this.§+!`§ / (180 / Math.PI)));
               if(this.§&!f§)
               {
                  this.§>!Y§(this.§>!l§ / this.§+!2§,this.§+!`§);
               }
            }
         }
      }
      
      public function §%T§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§'4§ = null;
         if(this.mBirds.length > 0)
         {
            _loc5_ = this.mBirds[this.§!"7§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§>!Y§(param3,param4);
      }
      
      protected function §>!Y§(param1:Number, param2:Number) : void
      {
         var _loc3_:§'4§ = null;
         this.§>!0§ = §?!h§;
         this.§break§ = §2!#§;
         if(this.mBirds.length > 0)
         {
            _loc3_ = this.mBirds[this.§!"7§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§&!f§ = false;
         this.§8!c§ = new Date().time;
         this.§7!;§.§^2§(_loc3_,param1,param2);
         this.§-"$§(this.§!"7§,_loc3_.§&&§ > 0);
         this.§9!J§();
         if(this.§!"7§ >= this.mBirds.length)
         {
            this.setSlingShotState(§return§);
         }
         else
         {
            this.setSlingShotState(§'!9§);
         }
      }
      
      protected function §9!J§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §5;§.playSound("BirdShot" + _loc1_);
      }
      
      public function §2"1§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§!"7§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.mBirds.length)
         {
            if(this.mSlingShotState == §"4§)
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
         var _loc1_:§'4§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§'@§();
         if(this.§8a§ >= this.mBirds.length)
         {
            return false;
         }
         _loc1_ = this.mBirds[this.§8a§];
         _loc2_ = §4!n§.§]4§(_loc1_.name).score;
         this.§7!;§.addScore(_loc2_,§9!S§.§[9§,true,_loc1_.x,_loc1_.y - 3,§=!i§.§ !2§(_loc1_.name));
         _loc1_.§2k§(-1,true);
         ++this.§8a§;
         return true;
      }
      
      public function §?!^§() : int
      {
         var _loc2_:§'4§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mBirds)
         {
            _loc1_ += §4!n§.§]4§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §[!l§() : int
      {
         return this.§7q§;
      }
      
      public function § !%§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§-W§ >= 0)
         {
            this.§-W§ -= param1;
            if(this.§-W§ <= 0)
            {
               _loc2_ = this.§7!;§.objects.§6!c§(this.§]s§,this.§1a§);
               if(_loc2_ < 0)
               {
                  this.§ get§(0.1);
                  this.§-W§ = 0;
               }
               else if(!this.§7!;§.objects.getObject(_loc2_).§=!E§)
               {
                  this.§-W§ = -1;
               }
               else if(this.§7!;§.objects.getObject(_loc2_).§<!s§())
               {
                  this.§-W§ = 2000;
               }
               else
               {
                  this.§-W§ = 500;
               }
            }
         }
      }
      
      public function §%"+§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§7!;§.objects.§6!c§(this.§]s§,this.§1a§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§ get§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§-W§ = -1;
      }
      
      public function §=!0§(param1:Number, param2:Number) : void
      {
         this.§`B§.x = -param1;
         this.§`B§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §'&§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §'&§ && this.§>!l§ > this.§+!2§ * §"m§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.setSlingShotState(§'&§);
         var _loc1_:§'4§ = this.mBirds[this.§!"7§];
         _loc1_.§2k§(§<9§.§6k§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§'4§ = this.mBirds[this.§!"7§];
         _loc1_.§2k§(§<9§.§8!6§);
      }
      
      public function shoot() : void
      {
         this.§&!f§ = true;
      }
      
      protected function §-"$§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§'4§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.mBirds[param1])
         {
            _loc3_ = this.mBirds[param1];
            this.§<!H§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§ "'§(this.mBirds[param1]);
            }
            _loc3_.dispose();
            this.mBirds[param1] = null;
         }
         this.mBirds.splice(param1,1);
      }
      
      public function § "'§(param1:§'4§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §?!X§.§57§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §?!X§.§57§) + Math.random() * -_loc8_ * 2;
            this.§7!;§.particles.§-?§(§=!i§.§#!+§,§ !>§.§!!]§,§=!i§.§^!3§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§=!i§.§6z§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§7!;§.particles.§-?§(§=!i§.§+1§,§ !>§.§!!]§,§=!i§.§^!3§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:§'4§) : void
      {
         this.§-"$§(this.mBirds.indexOf(param1));
      }
      
      public function §0d§() : void
      {
         var _loc2_:§'4§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§'4§ = null;
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
         while(this.§<!H§.numChildren > 0)
         {
            this.§<!H§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.mBirds.length)
         {
            _loc2_ = this.mBirds[_loc1_];
            this.§<!H§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §'4§
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
      
      public function intersectsWithPoint(param1:Number, param2:Number) : §1!6§
      {
         if(param1 >= this.mX - this.§+!2§ / 4 && param1 <= this.mX + this.§+!2§ / 4 && param2 >= this.mY - this.§+!2§ / 4 && this.mY <= this.§1a§)
         {
            return this;
         }
         return null;
      }
      
      public function writeSlingshotInformation(param1:§];§) : void
      {
         var _loc3_:§'4§ = null;
         var _loc4_:§%5§ = null;
         param1.§73§ = this.mX;
         param1.§=!w§ = this.mY;
         var _loc2_:Number = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc3_ = this.mBirds[_loc2_];
            (_loc4_ = new §%5§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§^?§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §&"?§() : void
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
      
      public function §<s§() : Array
      {
         return [this.§ !_§,this.§5?§];
      }
      
      public function addNewBirdToEndOfList(param1:String, param2:Number, param3:Number) : §'4§
      {
         var _loc4_:§'4§ = this.§+>§(param1,param2,param3);
         this.§0d§();
         return _loc4_;
      }
      
      public function getBirdCount() : Number
      {
         return this.mBirds.length;
      }
   }
}
