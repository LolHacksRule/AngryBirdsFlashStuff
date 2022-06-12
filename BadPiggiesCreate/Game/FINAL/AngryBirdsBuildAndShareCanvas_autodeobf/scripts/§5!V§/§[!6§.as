package §5!V§
{
   import § "?§.§&!>§;
   import § "?§.§-5§;
   import §"v§.§9"§;
   import §&"5§.§+2§;
   import §&"5§.§6!L§;
   import §,a§.§+"&§;
   import §,a§.§<!m§;
   import §-!n§.§5!U§;
   import §3"5§.§^X§;
   import §7R§.Texture;
   import §=!M§.§9!P§;
   import §default§.§=!Z§;
   import §default§.Sprite;
   import §default§.§^$§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §[!6§
   {
      
      public static const §5r§:int = 0;
      
      public static const §]!L§:int = 1;
      
      public static const §"!P§:int = 2;
      
      public static const §[B§:int = 3;
      
      public static const § L§:int = 5;
      
      public static const final:int = 3151368;
      
      protected static const §<L§:int = 8;
      
      protected static const §!f§:int = 0;
      
      public static const §]![§:Number = 46.25;
      
      public static const §`!W§:Number = 52.5;
      
      protected static const §=!2§:Number = -0.7;
      
      protected static const §%u§:Number = 0;
      
      protected static var § "#§:Texture;
      
      public static const §'Z§:Number = 0.4;
       
      
      public var §9q§:§!w§;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §@p§:Number;
      
      protected var §'V§:Number;
      
      protected var §0B§:Number;
      
      protected var §#0§:Number;
      
      protected var §'!P§:Number;
      
      public var §"!1§:Number;
      
      public var §+t§:Boolean = false;
      
      protected var §3_§:Number;
      
      public var mBirds:Vector.<§>n§>;
      
      public var §"!"§:int;
      
      public var §5!Z§:int;
      
      public var §6#§:Number;
      
      public var §>!w§:Sprite;
      
      public var §"d§:int = 0;
      
      public var §6I§:Number = 0;
      
      public var §>@§:Array;
      
      public var §2!E§:Array;
      
      public var mSlingShotState:int;
      
      public var §-"5§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §-!0§:Boolean = false;
      
      public var §+%§:Number;
      
      protected var §!&§:Sprite;
      
      protected var §#!N§:§^$§;
      
      protected var §<!]§:§^$§;
      
      protected var §4=§:Sprite;
      
      protected var §<"=§:Sprite;
      
      protected var §+'§:Sprite;
      
      protected var §&!&§:§=!Z§;
      
      protected var §<">§:§=!Z§;
      
      private var §40§:Number = 0;
      
      private var §7!H§:int = 0;
      
      protected var §]§:Number = -0.7;
      
      protected var §0!;§:Number = 0;
      
      public function §[!6§(param1:§!w§, param2:§9"§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§^X§ = null;
         this.mBirds = new Vector.<§>n§>();
         super();
         this.§9q§ = param1;
         this.§!&§ = param3;
         if(param2)
         {
            this.setPosition(param2.§=!?§,param2.§'!`§);
            this.§2r§();
            _loc4_ = 0;
            while(_loc4_ < param2.§ "2§)
            {
               _loc5_ = param2.§,;§(_loc4_);
               this.§3"<§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§7!H§ = this.§@!b§();
            this.§"!"§ = 0;
            if(this.mBirds.length <= 0)
            {
               §9!P§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.mX + " " + this.mY);
               this.setSlingShotState(§[B§);
            }
            else
            {
               this.setSlingShotState(§5r§);
            }
         }
         else
         {
            §9!P§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.setSlingShotState(§[B§);
         }
         this.§+%§ = 0;
         this.§&8§();
         this.update(0,true);
         this.§2!Y§();
         this.§&!a§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§!&§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§40§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§"!"§ < this.mBirds.length;
      }
      
      public function dispose() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§5,§(0);
         }
         this.mBirds = null;
         if(this.§!&§)
         {
            this.§!&§.dispose();
            this.§!&§ = null;
         }
         this.§>!w§ = null;
         this.§>@§ = null;
         this.§2!E§ = null;
      }
      
      public function §`!+§(param1:String, param2:Number, param3:Number, param4:int = -1) : §>n§
      {
         var _loc5_:§>n§;
         (_loc5_ = this.§3"<§(param1,param2,param3,param4)).§<"4§();
         this.setSlingShotState(§"!P§);
         return _loc5_;
      }
      
      protected function §3"<§(param1:String, param2:Number, param3:Number, param4:int = -1) : §>n§
      {
         var _loc5_:§>n§ = new §>n§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.mBirds.push(_loc5_);
         }
         else
         {
            this.mBirds.splice(param4,0,_loc5_);
         }
         this.§>!w§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function setSlingShotState(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §5r§)
         {
            this.§8"1§();
            this.§6#§ = 1000;
         }
         else if(this.mSlingShotState == §]!L§)
         {
            this.§8"1§();
            this.§6#§ = 0;
         }
         else if(this.mSlingShotState == §"!P§)
         {
            this.§6#§ = 10000;
            this.§-!0§ = false;
            this.§8"1§();
         }
         else if(this.mSlingShotState == §[B§)
         {
            this.§8"1§();
            this.§6#§ = 2000;
         }
         else if(this.mSlingShotState == § L§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§-!0§ = false;
               this.§8"1§();
               this.mBirds[this.§"!"§].setPosition(this.§#0§ - this.mBirds[this.§"!"§].radius * Math.cos(this.§6I§ / (180 / Math.PI)),this.§'!P§ + this.mBirds[this.§"!"§].radius * Math.sin(this.§6I§ / (180 / Math.PI)));
            }
            else
            {
               this.§8"1§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §4+§() : §!w§
      {
         return this.§9q§;
      }
      
      public function §5!c§() : Boolean
      {
         return this.mSlingShotState == §[B§ && this.§6#§ <= 0;
      }
      
      private function §2r§() : void
      {
         var _loc1_:§+2§ = this.§14§();
         var _loc2_:§6!L§ = _loc1_.getFrame(0);
         var _loc3_:§6!L§ = _loc1_.getFrame(1);
         this.§&!&§ = new §=!Z§(_loc2_.texture);
         this.§&!&§.scaleX = _loc2_.scale;
         this.§&!&§.scaleY = _loc2_.scale;
         this.§<">§ = new §=!Z§(_loc3_.texture);
         this.§<">§.scaleX = _loc3_.scale;
         this.§<">§.scaleY = _loc3_.scale;
         this.§&!O§();
         this.§4"?§();
         this.§>!w§ = new Sprite();
         this.§!&§.addChild(this.§&!&§);
         this.§!&§.addChild(this.§4=§);
         this.§!&§.addChild(this.§>!w§);
         this.§!&§.addChild(this.§+'§);
         this.§!&§.addChild(this.§<"=§);
         this.§!&§.addChild(this.§<">§);
         this.§@p§ = this.mY + 8.5;
      }
      
      protected function §14§() : §+2§
      {
         return this.§9q§.§<"%§.§@7§("SLINGSHOT");
      }
      
      public function §&!O§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§'V§ = this.mX;
         this.§0B§ = this.mY;
         this.§3_§ = §8^§.§#J§;
         _loc1_ = null;
      }
      
      protected function §4"?§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§ "#§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            § "#§ = this.§9q§.§7!J§.§&#§(_loc2_);
         }
         this.§+'§ = new Sprite();
         var _loc1_:§=!Z§ = new §=!Z§(§ "#§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§+'§.addChild(_loc1_);
         this.§4=§ = new Sprite();
         this.§#!N§ = new §^$§(2,2,final);
         this.§4=§.addChild(this.§#!N§);
         this.§<"=§ = new Sprite();
         this.§<!]§ = new §^$§(2,2,final);
         this.§<"=§.addChild(this.§<!]§);
      }
      
      public function §&!a§(param1:Number) : void
      {
         var _loc2_:Number = this.§'!P§ / §!w§.§4!-§;
         var _loc3_:Number = this.§#0§ / §!w§.§4!-§;
         var _loc4_:Number = 3.5 + 8 * ((this.§3_§ - this.§"!1§) / this.§3_§);
         this.§+'§.x = _loc3_;
         this.§+'§.y = _loc2_;
         this.§+'§.rotation = -this.§6I§ / (180 / Math.PI);
         this.§&!&§.x = this.mX / §!w§.§4!-§ - 3;
         this.§&!&§.y = this.mY / §!w§.§4!-§ - 30;
         this.§<">§.x = this.mX / §!w§.§4!-§ - 30;
         this.§<">§.y = this.mY / §!w§.§4!-§ - 30;
         this.§<"=§.x = this.mX / §!w§.§4!-§ - 17;
         this.§<"=§.y = this.mY / §!w§.§4!-§ + 5;
         this.§<"=§.rotation = Math.atan2(_loc2_ - this.§<"=§.y,_loc3_ - this.§<"=§.x);
         this.§4=§.x = this.mX / §!w§.§4!-§ + 22;
         this.§4=§.y = this.mY / §!w§.§4!-§;
         this.§4=§.rotation = Math.atan2(_loc2_ - this.§4=§.y,_loc3_ - this.§4=§.x);
         this.§<!]§.width = Math.sqrt(Math.pow(_loc3_ - this.§<"=§.x,2) + Math.pow(_loc2_ - this.§<"=§.y,2));
         this.§#!N§.width = Math.sqrt(Math.pow(_loc3_ - this.§4=§.x,2) + Math.pow(_loc2_ - this.§4=§.y,2));
         this.§<!]§.height = this.§#!N§.height = _loc4_ * 2;
         this.§<!]§.y = -this.§<!]§.height / 2;
         this.§#!N§.y = -this.§#!N§.height / 2;
         this.§-"5§ = false;
      }
      
      public function §1!@§() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§5,§(0,true);
         }
         this.§7!d§();
         this.§3"<§("BIRD_SARDINE",this.mX,this.mY);
         this.setSlingShotState(§"!P§);
      }
      
      protected function §7!d§() : void
      {
         §5!U§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.setSlingShotState(§ L§);
      }
      
      public function §8"1§() : void
      {
         this.setNewCoordinatesForRubber(this.§'V§,this.§0B§ + this.§3_§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§#0§ == param1 && this.§'!P§ == param2)
         {
            return true;
         }
         this.§"!1§ = Math.sqrt((param2 - this.§0B§) * (param2 - this.§0B§) + (param1 - this.§'V§) * (param1 - this.§'V§));
         if(this.§"!1§ > this.§3_§)
         {
            if(param3)
            {
               this.§"!1§ = Math.sqrt((this.§'!P§ - this.§0B§) * (this.§'!P§ - this.§0B§) + (this.§#0§ - this.§'V§) * (this.§#0§ - this.§'V§));
               return false;
            }
            param1 = this.§'V§ + this.§3_§ * (param1 - this.§'V§) / this.§"!1§;
            param2 = this.§0B§ + this.§3_§ * (param2 - this.§0B§) / this.§"!1§;
            this.§"!1§ = this.§3_§;
         }
         this.§#0§ = param1;
         this.§'!P§ = param2;
         this.§6I§ = Math.atan2(-(this.§'!P§ - this.§0B§),this.§#0§ - this.§'V§);
         this.§6I§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§#0§ = param1 + this.§]§;
            this.§'!P§ = param2 + this.§0!;§;
            this.§6I§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§3_§ / 2;
         if(this.§"!1§ > _loc7_ && this.§6I§ > -90 - _loc4_ + _loc5_ && this.§6I§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§'V§ + _loc7_ * (param1 - this.§'V§) / this.§"!1§;
            param2 = this.§0B§ + _loc7_ * (param2 - this.§0B§) / this.§"!1§;
            this.§"!1§ = _loc7_;
            this.§#0§ = param1;
            this.§'!P§ = param2;
         }
         else if(this.§"!1§ > _loc7_ && this.§6I§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§6I§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§3_§ - _loc7_) * (Math.abs(this.§6I§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§'V§ + _loc8_ * (param1 - this.§'V§) / this.§"!1§;
            param2 = this.§0B§ + _loc8_ * (param2 - this.§0B§) / this.§"!1§;
            this.§"!1§ = _loc8_;
            this.§#0§ = param1;
            this.§'!P§ = param2;
         }
         if(this.§"!1§ <= this.§3_§ * 0.45)
         {
            this.§+t§ = true;
         }
         else if(this.§+t§ && this.§"!1§ >= this.§3_§ * 0.8)
         {
            this.§switch§();
            this.§+t§ = false;
         }
         this.§-"5§ = true;
         return true;
      }
      
      protected function §switch§() : void
      {
         §5!U§.playSound("SlingshotStreched");
      }
      
      public function §`@§(param1:Number) : void
      {
         this.setPosition(this.mX,this.mY + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.mX;
         this.mX = param1;
         var _loc5_:Number = param2 - this.mY;
         this.mY = param2;
         this.§@p§ += _loc5_;
         this.§0B§ += _loc5_;
         this.§'!P§ += _loc5_;
         this.§'V§ += _loc4_;
         this.§#0§ += _loc4_;
         if(param3)
         {
            this.§&!a§(0);
         }
         this.§-"5§ = true;
      }
      
      public function §""0§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§>n§ = null;
         _loc2_ = this.mBirds[this.§"!"§];
         var _loc3_:Number = this.§"!1§ / this.§3_§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§[!6§.§`!W§) : Number(§[!6§.§]![§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §9!l§() : Point
      {
         var _loc1_:§>n§ = null;
         if(this.mBirds.length > this.§"!"§)
         {
            _loc1_ = this.mBirds[this.§"!"§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §7!6§() : Point
      {
         return new Point(this.§'V§,this.§0B§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§>n§ = null;
         this.§'N§(param1);
         if(this.§-"5§)
         {
            this.§&!a§(param1);
         }
         this.§6#§ -= param1;
         if(this.§6#§ < 0)
         {
            this.§6#§ = 0;
         }
         if(this.mSlingShotState != §[B§)
         {
            this.§ ]§(param1,param2);
            _loc3_ = null;
            if(this.mBirds.length > 0)
            {
               _loc3_ = this.mBirds[this.§"!"§];
            }
            if(_loc3_)
            {
               _loc3_.§'"7§(param1);
            }
            if(!_loc3_)
            {
               this.setSlingShotState(§[B§);
            }
            else if(this.mSlingShotState == §5r§)
            {
               if(this.§6#§ <= 0)
               {
                  this.setSlingShotState(§]!L§);
                  _loc3_.§7f§();
               }
            }
            else if(this.mSlingShotState == §]!L§)
            {
               if(_loc3_.§"_§)
               {
                  this.setSlingShotState(§"!P§);
               }
            }
            else if(this.mSlingShotState == §"!P§)
            {
               _loc3_.setPosition(this.§#0§ - _loc3_.radius * Math.cos(this.§6I§ / (180 / Math.PI)),this.§'!P§ + _loc3_.radius * Math.sin(this.§6I§ / (180 / Math.PI)));
               if(this.§-!0§)
               {
                  this.§6"0§(this.§"!1§ / this.§3_§,this.§6I§);
               }
            }
         }
      }
      
      public function §`"$§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§>n§ = null;
         if(this.mBirds.length > 0)
         {
            _loc5_ = this.mBirds[this.§"!"§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§6"0§(param3,param4);
      }
      
      protected function §6"0§(param1:Number, param2:Number) : void
      {
         var _loc3_:§>n§ = null;
         this.§]§ = §=!2§;
         this.§0!;§ = §%u§;
         if(this.mBirds.length > 0)
         {
            _loc3_ = this.mBirds[this.§"!"§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§-!0§ = false;
         this.§40§ = new Date().time;
         this.§9q§.§3"%§(_loc3_,param1,param2);
         this.§5,§(this.§"!"§,_loc3_.§[1§ > 0);
         this.§[4§();
         if(this.§"!"§ >= this.mBirds.length)
         {
            this.setSlingShotState(§[B§);
         }
         else
         {
            this.setSlingShotState(§5r§);
         }
      }
      
      protected function §[4§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §5!U§.playSound("BirdShot" + _loc1_);
      }
      
      public function § ]§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§"!"§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.mBirds.length)
         {
            if(this.mSlingShotState == § L§)
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
         var _loc1_:§>n§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§8"1§();
         if(this.§5!Z§ >= this.mBirds.length)
         {
            return false;
         }
         _loc1_ = this.mBirds[this.§5!Z§];
         _loc2_ = §<!m§.§"!F§(_loc1_.name).score;
         this.§9q§.addScore(_loc2_,§]"%§.§9"?§,true,_loc1_.x,_loc1_.y - 3,§&!>§.§6[§(_loc1_.name));
         _loc1_.§+i§(-1,true);
         ++this.§5!Z§;
         return true;
      }
      
      public function §@!b§() : int
      {
         var _loc2_:§>n§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mBirds)
         {
            _loc1_ += §<!m§.§"!F§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §=R§() : int
      {
         return this.§7!H§;
      }
      
      public function §'N§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§+%§ >= 0)
         {
            this.§+%§ -= param1;
            if(this.§+%§ <= 0)
            {
               _loc2_ = this.§9q§.objects.§%! §(this.§'V§,this.§@p§);
               if(_loc2_ < 0)
               {
                  this.§`@§(0.1);
                  this.§+%§ = 0;
               }
               else if(!this.§9q§.objects.getObject(_loc2_).§4" §)
               {
                  this.§+%§ = -1;
               }
               else if(this.§9q§.objects.getObject(_loc2_).§#";§())
               {
                  this.§+%§ = 2000;
               }
               else
               {
                  this.§+%§ = 500;
               }
            }
         }
      }
      
      public function §2!Y§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§9q§.objects.§%! §(this.§'V§,this.§@p§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§`@§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§+%§ = -1;
      }
      
      public function §%]§(param1:Number, param2:Number) : void
      {
         this.§!&§.x = -param1;
         this.§!&§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §"!P§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §"!P§ && this.§"!1§ > this.§3_§ * §'Z§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.setSlingShotState(§"!P§);
         var _loc1_:§>n§ = this.mBirds[this.§"!"§];
         _loc1_.§+i§(§+"&§.§@!2§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§>n§ = this.mBirds[this.§"!"§];
         _loc1_.§+i§(§+"&§.§85§);
      }
      
      public function shoot() : void
      {
         this.§-!0§ = true;
      }
      
      protected function §5,§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§>n§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.mBirds[param1])
         {
            _loc3_ = this.mBirds[param1];
            this.§>!w§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§=!>§(this.mBirds[param1]);
            }
            _loc3_.dispose();
            this.mBirds[param1] = null;
         }
         this.mBirds.splice(param1,1);
      }
      
      public function §=!>§(param1:§>n§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §!w§.§4!-§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §!w§.§4!-§) + Math.random() * -_loc8_ * 2;
            this.§9q§.particles.§[b§(§&!>§.§]!c§,§-5§.§5Q§,§&!>§.§&W§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§&!>§.§6H§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§9q§.particles.§[b§(§&!>§.§^!R§,§-5§.§5Q§,§&!>§.§&W§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:§>n§) : void
      {
         this.§5,§(this.mBirds.indexOf(param1));
      }
      
      public function §&8§() : void
      {
         var _loc2_:§>n§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§>n§ = null;
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
         while(this.§>!w§.numChildren > 0)
         {
            this.§>!w§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.mBirds.length)
         {
            _loc2_ = this.mBirds[_loc1_];
            this.§>!w§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §>n§
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
      
      public function intersectsWithPoint(param1:Number, param2:Number) : §[!6§
      {
         if(param1 >= this.mX - this.§3_§ / 4 && param1 <= this.mX + this.§3_§ / 4 && param2 >= this.mY - this.§3_§ / 4 && this.mY <= this.§@p§)
         {
            return this;
         }
         return null;
      }
      
      public function writeSlingshotInformation(param1:§9"§) : void
      {
         var _loc3_:§>n§ = null;
         var _loc4_:§^X§ = null;
         param1.§=!?§ = this.mX;
         param1.§'!`§ = this.mY;
         var _loc2_:Number = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc3_ = this.mBirds[_loc2_];
            (_loc4_ = new §^X§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§"A§(_loc4_);
            _loc2_++;
         }
      }
      
      public function § I§() : void
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
      
      public function § &§() : Array
      {
         return [this.§<">§,this.§&!&§];
      }
      
      public function addNewBirdToEndOfList(param1:String, param2:Number, param3:Number) : §>n§
      {
         var _loc4_:§>n§ = this.§3"<§(param1,param2,param3);
         this.§&8§();
         return _loc4_;
      }
      
      public function getBirdCount() : Number
      {
         return this.mBirds.length;
      }
   }
}
