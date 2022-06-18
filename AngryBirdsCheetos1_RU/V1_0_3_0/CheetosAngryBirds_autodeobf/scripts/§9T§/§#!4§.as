package §9T§
{
   import §'G§.§5e§;
   import §'G§.§6!]§;
   import §+a§.Texture;
   import §7!7§.§return§;
   import §7!P§.§-3§;
   import §8!C§.§%v§;
   import §8!C§.§2!4§;
   import §9!a§.§"z§;
   import §9!a§.Sprite;
   import §9!a§.§]o§;
   import §=0§.§@_§;
   import §=0§.§^L§;
   import §>!H§.§+c§;
   import §^9§.§3A§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §#!4§
   {
      
      public static const §9!?§:int = 0;
      
      public static const §<!6§:int = 1;
      
      public static const §]7§:int = 2;
      
      public static const §=G§:int = 3;
      
      public static const §;P§:int = 5;
      
      public static const §@!H§:int = 3151368;
      
      protected static const §!!G§:int = 8;
      
      protected static const §>+§:int = 0;
      
      public static const §0=§:Number = 46.25;
      
      public static const §>K§:Number = 52.5;
      
      protected static const §%W§:Number = -0.7;
      
      protected static const §&k§:Number = 0;
      
      protected static var §-r§:Texture;
      
      public static const §>!a§:Number = 0.4;
       
      
      public var §&?§:§=!^§;
      
      public var §!-§:Number;
      
      public var §[4§:Number;
      
      public var §[!Y§:Number;
      
      protected var §%^§:Number;
      
      protected var §;p§:Number;
      
      protected var §?!F§:Number;
      
      protected var §0!L§:Number;
      
      public var §else§:Number;
      
      public var §-!&§:Boolean = false;
      
      protected var §'l§:Number;
      
      public var §2!R§:Vector.<§%!_§>;
      
      public var §6V§:int;
      
      public var §%"§:int;
      
      public var §@N§:Number;
      
      public var §^_§:Sprite;
      
      public var §%!§:int = 0;
      
      public var §^U§:Number = 0;
      
      public var §^<§:Array;
      
      public var §5!?§:Array;
      
      public var mSlingShotState:int;
      
      public var §>#§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §`M§:Boolean = false;
      
      public var §,r§:Number;
      
      protected var §"$§:Sprite;
      
      protected var §=T§:§]o§;
      
      protected var §`§:§]o§;
      
      protected var §&!I§:Sprite;
      
      protected var §2q§:Sprite;
      
      protected var §0!X§:Sprite;
      
      protected var §&!3§:§"z§;
      
      protected var §?E§:§"z§;
      
      private var §[!9§:Number = 0;
      
      private var §8!R§:int = 0;
      
      protected var §class§:Number = -0.7;
      
      protected var §[A§:Number = 0;
      
      public function §#!4§(param1:§=!^§, param2:§3A§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§+c§ = null;
         this.§2!R§ = new Vector.<§%!_§>();
         super();
         this.§&?§ = param1;
         this.§"$§ = param3;
         if(param2)
         {
            this.setPosition(param2.§[§,param2.§[T§);
            this.§%K§();
            _loc4_ = 0;
            while(_loc4_ < param2.§85§)
            {
               _loc5_ = param2.§+!P§(_loc4_);
               this.addSlingshotObject(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§8!R§ = this.§,!1§();
            this.§6V§ = 0;
            if(this.§2!R§.length <= 0)
            {
               §-3§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§!-§ + " " + this.§[4§);
               this.setSlingShotState(§=G§);
            }
            else
            {
               this.setSlingShotState(§9!?§);
            }
         }
         else
         {
            §-3§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.setSlingShotState(§=G§);
         }
         this.§,r§ = 0;
         this.§4!!§();
         this.update(0,true);
         this.§=!S§();
         this.§3_§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§"$§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§[!9§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§6V§ < this.§2!R§.length;
      }
      
      public function dispose() : void
      {
         while(this.§2!R§.length > 0)
         {
            this.§3!6§(0);
         }
         this.§2!R§ = null;
         if(this.§"$§)
         {
            this.§"$§.dispose();
            this.§"$§ = null;
         }
         this.§^_§ = null;
         this.§^<§ = null;
         this.§5!?§ = null;
      }
      
      public function §""§(param1:String, param2:Number, param3:Number, param4:int = -1) : §%!_§
      {
         var _loc5_:§%!_§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,param4)).§0^§();
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §%!_§
      {
         var _loc5_:§%!_§ = new §%!_§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§2!R§.push(_loc5_);
         }
         else
         {
            this.§2!R§.splice(param4,0,_loc5_);
         }
         this.§^_§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function setSlingShotState(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §9!?§)
         {
            this.§[!6§();
            this.§@N§ = 1000;
         }
         else if(this.mSlingShotState == §<!6§)
         {
            this.§[!6§();
            this.§@N§ = 0;
         }
         else if(this.mSlingShotState == §]7§)
         {
            this.§@N§ = 10000;
            this.§`M§ = false;
            this.§[!6§();
         }
         else if(this.mSlingShotState == §=G§)
         {
            this.§[!6§();
            this.§@N§ = 2000;
         }
         else if(this.mSlingShotState == §;P§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§`M§ = false;
               this.§[!6§();
               this.§2!R§[this.§6V§].setPosition(this.§?!F§ - this.§2!R§[this.§6V§].radius * Math.cos(this.§^U§ / (180 / Math.PI)),this.§0!L§ + this.§2!R§[this.§6V§].radius * Math.sin(this.§^U§ / (180 / Math.PI)));
            }
            else
            {
               this.§[!6§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §+A§() : §=!^§
      {
         return this.§&?§;
      }
      
      public function §2k§() : Boolean
      {
         return this.mSlingShotState == §=G§ && this.§@N§ <= 0;
      }
      
      private function §%K§() : void
      {
         var _loc1_:§@_§ = this.§7!#§();
         var _loc2_:§^L§ = _loc1_.getFrame(0);
         var _loc3_:§^L§ = _loc1_.getFrame(1);
         this.§&!3§ = new §"z§(_loc2_.texture);
         this.§&!3§.scaleX = _loc2_.scale;
         this.§&!3§.scaleY = _loc2_.scale;
         this.§?E§ = new §"z§(_loc3_.texture);
         this.§?E§.scaleX = _loc3_.scale;
         this.§?E§.scaleY = _loc3_.scale;
         this.§3!`§();
         this.§`H§();
         this.§^_§ = new Sprite();
         this.§"$§.addChild(this.§&!3§);
         this.§"$§.addChild(this.§&!I§);
         this.§"$§.addChild(this.§^_§);
         this.§"$§.addChild(this.§0!X§);
         this.§"$§.addChild(this.§2q§);
         this.§"$§.addChild(this.§?E§);
         this.§[!Y§ = this.§[4§ + 8.5;
      }
      
      protected function §7!#§() : §@_§
      {
         return this.§&?§.§'!;§.§#!E§("SLINGSHOT");
      }
      
      public function §3!`§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§%^§ = this.§!-§;
         this.§;p§ = this.§[4§;
         this.§'l§ = §'_§.§^K§;
         _loc1_ = null;
      }
      
      protected function §`H§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§-r§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §-r§ = this.§&?§.§!c§.§1u§(_loc2_);
         }
         this.§0!X§ = new Sprite();
         var _loc1_:§"z§ = new §"z§(§-r§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§0!X§.addChild(_loc1_);
         this.§&!I§ = new Sprite();
         this.§=T§ = new §]o§(2,2,§@!H§);
         this.§&!I§.addChild(this.§=T§);
         this.§2q§ = new Sprite();
         this.§`§ = new §]o§(2,2,§@!H§);
         this.§2q§.addChild(this.§`§);
      }
      
      public function §3_§(param1:Number) : void
      {
         var _loc2_:Number = this.§0!L§ / §=!^§.§4#§;
         var _loc3_:Number = this.§?!F§ / §=!^§.§4#§;
         var _loc4_:Number = 3.5 + 8 * ((this.§'l§ - this.§else§) / this.§'l§);
         this.§0!X§.x = _loc3_;
         this.§0!X§.y = _loc2_;
         this.§0!X§.rotation = -this.§^U§ / (180 / Math.PI);
         this.§&!3§.x = this.§!-§ / §=!^§.§4#§ - 3;
         this.§&!3§.y = this.§[4§ / §=!^§.§4#§ - 30;
         this.§?E§.x = this.§!-§ / §=!^§.§4#§ - 30;
         this.§?E§.y = this.§[4§ / §=!^§.§4#§ - 30;
         this.§2q§.x = this.§!-§ / §=!^§.§4#§ - 17;
         this.§2q§.y = this.§[4§ / §=!^§.§4#§ + 5;
         this.§2q§.rotation = Math.atan2(_loc2_ - this.§2q§.y,_loc3_ - this.§2q§.x);
         this.§&!I§.x = this.§!-§ / §=!^§.§4#§ + 22;
         this.§&!I§.y = this.§[4§ / §=!^§.§4#§;
         this.§&!I§.rotation = Math.atan2(_loc2_ - this.§&!I§.y,_loc3_ - this.§&!I§.x);
         this.§`§.width = Math.sqrt(Math.pow(_loc3_ - this.§2q§.x,2) + Math.pow(_loc2_ - this.§2q§.y,2));
         this.§=T§.width = Math.sqrt(Math.pow(_loc3_ - this.§&!I§.x,2) + Math.pow(_loc2_ - this.§&!I§.y,2));
         this.§`§.height = this.§=T§.height = _loc4_ * 2;
         this.§`§.y = -this.§`§.height / 2;
         this.§=T§.y = -this.§=T§.height / 2;
         this.§>#§ = false;
      }
      
      public function §+y§() : void
      {
         while(this.§2!R§.length > 0)
         {
            this.§3!6§(0,true);
         }
         this.§1!%§();
         this.addSlingshotObject("BIRD_SARDINE",this.§!-§,this.§[4§);
         this.setSlingShotState(§]7§);
      }
      
      protected function §1!%§() : void
      {
         §return§.§2!S§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.setSlingShotState(§;P§);
      }
      
      public function §[!6§() : void
      {
         this.setNewCoordinatesForRubber(this.§%^§,this.§;p§ + this.§'l§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§?!F§ == param1 && this.§0!L§ == param2)
         {
            return true;
         }
         this.§else§ = Math.sqrt((param2 - this.§;p§) * (param2 - this.§;p§) + (param1 - this.§%^§) * (param1 - this.§%^§));
         if(this.§else§ > this.§'l§)
         {
            if(param3)
            {
               this.§else§ = Math.sqrt((this.§0!L§ - this.§;p§) * (this.§0!L§ - this.§;p§) + (this.§?!F§ - this.§%^§) * (this.§?!F§ - this.§%^§));
               return false;
            }
            param1 = this.§%^§ + this.§'l§ * (param1 - this.§%^§) / this.§else§;
            param2 = this.§;p§ + this.§'l§ * (param2 - this.§;p§) / this.§else§;
            this.§else§ = this.§'l§;
         }
         this.§?!F§ = param1;
         this.§0!L§ = param2;
         this.§^U§ = Math.atan2(-(this.§0!L§ - this.§;p§),this.§?!F§ - this.§%^§);
         this.§^U§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§?!F§ = param1 + this.§class§;
            this.§0!L§ = param2 + this.§[A§;
            this.§^U§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§'l§ / 2;
         if(this.§else§ > _loc7_ && this.§^U§ > -90 - _loc4_ + _loc5_ && this.§^U§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§%^§ + _loc7_ * (param1 - this.§%^§) / this.§else§;
            param2 = this.§;p§ + _loc7_ * (param2 - this.§;p§) / this.§else§;
            this.§else§ = _loc7_;
            this.§?!F§ = param1;
            this.§0!L§ = param2;
         }
         else if(this.§else§ > _loc7_ && this.§^U§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§^U§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§'l§ - _loc7_) * (Math.abs(this.§^U§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§%^§ + _loc8_ * (param1 - this.§%^§) / this.§else§;
            param2 = this.§;p§ + _loc8_ * (param2 - this.§;p§) / this.§else§;
            this.§else§ = _loc8_;
            this.§?!F§ = param1;
            this.§0!L§ = param2;
         }
         if(this.§else§ <= this.§'l§ * 0.45)
         {
            this.§-!&§ = true;
         }
         else if(this.§-!&§ && this.§else§ >= this.§'l§ * 0.8)
         {
            this.§%G§();
            this.§-!&§ = false;
         }
         this.§>#§ = true;
         return true;
      }
      
      protected function §%G§() : void
      {
         §return§.§2!S§("SlingshotStreched");
      }
      
      public function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§!-§,this.§[4§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§!-§;
         this.§!-§ = param1;
         var _loc5_:Number = param2 - this.§[4§;
         this.§[4§ = param2;
         this.§[!Y§ += _loc5_;
         this.§;p§ += _loc5_;
         this.§0!L§ += _loc5_;
         this.§%^§ += _loc4_;
         this.§?!F§ += _loc4_;
         if(param3)
         {
            this.§3_§(0);
         }
         this.§>#§ = true;
      }
      
      public function §#J§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§%!_§ = null;
         _loc2_ = this.§2!R§[this.§6V§];
         var _loc3_:Number = this.§else§ / this.§'l§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§#!4§.§>K§) : Number(§#!4§.§0=§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §^p§() : Point
      {
         var _loc1_:§%!_§ = null;
         if(this.§2!R§.length > this.§6V§)
         {
            _loc1_ = this.§2!R§[this.§6V§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §0;§() : Point
      {
         return new Point(this.§%^§,this.§;p§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§%!_§ = null;
         this.updateGroundControl(param1);
         if(this.§>#§)
         {
            this.§3_§(param1);
         }
         this.§@N§ -= param1;
         if(this.§@N§ < 0)
         {
            this.§@N§ = 0;
         }
         if(this.mSlingShotState != §=G§)
         {
            this.§3!-§(param1,param2);
            _loc3_ = null;
            if(this.§2!R§.length > 0)
            {
               _loc3_ = this.§2!R§[this.§6V§];
            }
            if(_loc3_)
            {
               _loc3_.§>L§(param1);
            }
            if(!_loc3_)
            {
               this.setSlingShotState(§=G§);
            }
            else if(this.mSlingShotState == §9!?§)
            {
               if(this.§@N§ <= 0)
               {
                  this.setSlingShotState(§<!6§);
                  _loc3_.§37§();
               }
            }
            else if(this.mSlingShotState == §<!6§)
            {
               if(_loc3_.§ n§)
               {
                  this.setSlingShotState(§]7§);
               }
            }
            else if(this.mSlingShotState == §]7§)
            {
               _loc3_.setPosition(this.§?!F§ - _loc3_.radius * Math.cos(this.§^U§ / (180 / Math.PI)),this.§0!L§ + _loc3_.radius * Math.sin(this.§^U§ / (180 / Math.PI)));
               if(this.§`M§)
               {
                  this.§-p§(this.§else§ / this.§'l§,this.§^U§);
               }
            }
         }
      }
      
      public function §&!!§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§%!_§ = null;
         if(this.§2!R§.length > 0)
         {
            _loc5_ = this.§2!R§[this.§6V§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§-p§(param3,param4);
      }
      
      protected function §-p§(param1:Number, param2:Number) : void
      {
         var _loc3_:§%!_§ = null;
         this.§class§ = §%W§;
         this.§[A§ = §&k§;
         if(this.§2!R§.length > 0)
         {
            _loc3_ = this.§2!R§[this.§6V§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§`M§ = false;
         this.§[!9§ = new Date().time;
         this.§&?§.§#o§(_loc3_,param1,param2);
         this.§3!6§(this.§6V§,_loc3_.§@!S§ > 0);
         this.§'Q§();
         if(this.§6V§ >= this.§2!R§.length)
         {
            this.setSlingShotState(§=G§);
         }
         else
         {
            this.setSlingShotState(§9!?§);
         }
      }
      
      protected function §'Q§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §return§.§2!S§("BirdShot" + _loc1_);
      }
      
      public function §3!-§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§6V§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§2!R§.length)
         {
            if(this.mSlingShotState == §;P§)
            {
               this.§2!R§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§2!R§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§%!_§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§[!6§();
         if(this.§%"§ >= this.§2!R§.length)
         {
            return false;
         }
         _loc1_ = this.§2!R§[this.§%"§];
         _loc2_ = §6!]§.§'!Q§(_loc1_.name).score;
         this.§&?§.addScore(_loc2_,§2s§.§,P§,true,_loc1_.x,_loc1_.y - 3,§%v§.§]§(_loc1_.name));
         _loc1_.§[!G§(-1,true);
         ++this.§%"§;
         return true;
      }
      
      public function §,!1§() : int
      {
         var _loc2_:§%!_§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§2!R§)
         {
            _loc1_ += §6!]§.§'!Q§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §5![§() : int
      {
         return this.§8!R§;
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§,r§ >= 0)
         {
            this.§,r§ -= param1;
            if(this.§,r§ <= 0)
            {
               _loc2_ = this.§&?§.objects.§]!U§(this.§%^§,this.§[!Y§);
               if(_loc2_ < 0)
               {
                  this.applyGravity(0.1);
                  this.§,r§ = 0;
               }
               else if(!this.§&?§.objects.§+D§(_loc2_).§-!K§)
               {
                  this.§,r§ = -1;
               }
               else if(this.§&?§.objects.§+D§(_loc2_).§'[§())
               {
                  this.§,r§ = 2000;
               }
               else
               {
                  this.§,r§ = 500;
               }
            }
         }
      }
      
      public function §=!S§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§&?§.objects.§]!U§(this.§%^§,this.§[!Y§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.applyGravity(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§,r§ = -1;
      }
      
      public function §^!E§(param1:Number, param2:Number) : void
      {
         this.§"$§.x = -param1;
         this.§"$§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §]7§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §]7§ && this.§else§ > this.§'l§ * §>!a§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.setSlingShotState(§]7§);
         var _loc1_:§%!_§ = this.§2!R§[this.§6V§];
         _loc1_.§[!G§(§5e§.§@!&§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§%!_§ = this.§2!R§[this.§6V§];
         _loc1_.§[!G§(§5e§.§1<§);
      }
      
      public function shoot() : void
      {
         this.§`M§ = true;
      }
      
      protected function §3!6§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§%!_§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§2!R§[param1])
         {
            _loc3_ = this.§2!R§[param1];
            this.§^_§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§8z§(this.§2!R§[param1]);
            }
            _loc3_.dispose();
            this.§2!R§[param1] = null;
         }
         this.§2!R§.splice(param1,1);
      }
      
      public function §8z§(param1:§%!_§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §=!^§.§4#§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §=!^§.§4#§) + Math.random() * -_loc8_ * 2;
            this.§&?§.particles.addParticle(§%v§.§4!W§,§2!4§.§8!Q§,§%v§.§[H§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§%v§.§!v§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§&?§.particles.addParticle(§%v§.§6!8§,§2!4§.§8!Q§,§%v§.§[H§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §>1§(param1:§%!_§) : void
      {
         this.§3!6§(this.§2!R§.indexOf(param1));
      }
      
      public function §4!!§() : void
      {
         var _loc2_:§%!_§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§%!_§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§2!R§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§!-§ - this.§2!R§[_loc1_].x) * (this.§!-§ - this.§2!R§[_loc1_].x) + (this.§[4§ - this.§2!R§[_loc1_].y) * (this.§[4§ - this.§2!R§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§!-§ - this.§2!R§[_loc1_ + 1].x) * (this.§!-§ - this.§2!R§[_loc1_ + 1].x) + (this.§[4§ - this.§2!R§[_loc1_ + 1].y) * (this.§[4§ - this.§2!R§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§2!R§[_loc1_];
               this.§2!R§.splice(_loc1_,1);
               this.§2!R§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§^_§.numChildren > 0)
         {
            this.§^_§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§2!R§.length)
         {
            _loc2_ = this.§2!R§[_loc1_];
            this.§^_§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §4n§(param1:Number, param2:Number) : §%!_§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§2!R§.length)
         {
            if(this.§2!R§[_loc3_])
            {
               if(this.§2!R§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§2!R§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §9%§(param1:Number, param2:Number) : §#!4§
      {
         if(param1 >= this.§!-§ - this.§'l§ / 4 && param1 <= this.§!-§ + this.§'l§ / 4 && param2 >= this.§[4§ - this.§'l§ / 4 && this.§[4§ <= this.§[!Y§)
         {
            return this;
         }
         return null;
      }
      
      public function §;!5§(param1:§3A§) : void
      {
         var _loc3_:§%!_§ = null;
         var _loc4_:§+c§ = null;
         param1.§[§ = this.§!-§;
         param1.§[T§ = this.§[4§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§2!R§.length)
         {
            _loc3_ = this.§2!R§[_loc2_];
            (_loc4_ = new §+c§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§;!!§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §3G§() : void
      {
         while(this.§2!R§.length > 0)
         {
            this.§>1§(this.§2!R§[0]);
         }
      }
      
      public function §!9§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§2!R§.length)
         {
            if(this.§2!R§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§2!R§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§!-§ > param1.x && this.§!-§ < param2.x && this.§[4§ > param1.y && this.§[4§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §0!<§() : Array
      {
         return [this.§?E§,this.§&!3§];
      }
      
      public function §]$§(param1:String, param2:Number, param3:Number) : §%!_§
      {
         var _loc4_:§%!_§ = this.addSlingshotObject(param1,param2,param3);
         this.§4!!§();
         return _loc4_;
      }
      
      public function §+!F§() : Number
      {
         return this.§2!R§.length;
      }
   }
}
