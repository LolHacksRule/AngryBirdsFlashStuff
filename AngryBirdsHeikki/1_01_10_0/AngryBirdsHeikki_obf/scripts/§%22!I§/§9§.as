package §"!I§
{
   import § "§.§3-§;
   import §!E§.§!U§;
   import §!E§.§?F§;
   import §2Y§.§7!f§;
   import §2Y§.§7?§;
   import §2Y§.Sprite;
   import §=!<§.§!x§;
   import §=!<§.§8!!§;
   import §@0§.§!k§;
   import §@0§.§`>§;
   import §@R§.§4,§;
   import §^!0§.§&M§;
   import §^!5§.§&!E§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §9§
   {
      
      public static const §8!M§:int = 0;
      
      public static const §+P§:int = 1;
      
      public static const STATE_BIRD_IS_READY:int = 2;
      
      public static const §5H§:int = 3;
      
      public static const §-!U§:int = 5;
      
      public static const §"!_§:int = 3151368;
      
      protected static const §9!!§:int = 8;
      
      protected static const §,a§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const §;!]§:Number = 52.5;
      
      protected static const §!,§:Number = -0.7;
      
      protected static const §]"§:Number = 0;
      
      protected static var §48§:Texture;
      
      public static const §;&§:Number = 0.4;
       
      
      public var §=!V§:§^!2§;
      
      public var §"!d§:Number;
      
      public var §,!W§:Number;
      
      public var §0P§:Number;
      
      protected var § !&§:Number;
      
      protected var §8H§:Number;
      
      protected var §;R§:Number;
      
      protected var §"!c§:Number;
      
      public var §9A§:Number;
      
      public var §"!=§:Boolean = false;
      
      protected var §0!O§:Number;
      
      public var §2!A§:Vector.<§94§>;
      
      public var §3!@§:int;
      
      public var §!!_§:int;
      
      public var §'!C§:Number;
      
      public var §=U§:Sprite;
      
      public var §%T§:int = 0;
      
      public var §5M§:Number = 0;
      
      public var §-!9§:Array;
      
      public var §[!M§:Array;
      
      public var mSlingShotState:int;
      
      public var §^b§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §9!d§:Boolean = false;
      
      public var §3`§:Number;
      
      protected var §;=§:Sprite;
      
      protected var §>!?§:§7?§;
      
      protected var §>!b§:§7?§;
      
      protected var §0!Y§:Sprite;
      
      protected var §`!#§:Sprite;
      
      protected var §!!;§:Sprite;
      
      protected var § !§:§7!f§;
      
      protected var §%@§:§7!f§;
      
      private var §"_§:Number = 0;
      
      private var §8v§:int = 0;
      
      protected var §5b§:Number = -0.7;
      
      protected var §>!;§:Number = 0;
      
      public function §9§(param1:§^!2§, param2:§&!E§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§3-§ = null;
         this.§2!A§ = new Vector.<§94§>();
         super();
         this.§=!V§ = param1;
         this.§;=§ = param3;
         if(param2)
         {
            this.setPosition(param2.§84§,param2.§6!`§);
            this.§?<§();
            _loc4_ = 0;
            while(_loc4_ < param2.§<!5§)
            {
               _loc5_ = param2.§6+§(_loc4_);
               this.addSlingshotObject(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§8v§ = this.§`!_§();
            this.§3!@§ = 0;
            if(this.§2!A§.length <= 0)
            {
               §4,§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§"!d§ + " " + this.§,!W§);
               this.§%&§(§5H§);
            }
            else
            {
               this.§%&§(§8!M§);
            }
         }
         else
         {
            §4,§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§%&§(§5H§);
         }
         this.§3`§ = 0;
         this.§^!K§();
         this.update(0,true);
         this.§<!H§();
         this.§+9§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§;=§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§"_§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§3!@§ < this.§2!A§.length;
      }
      
      public function dispose() : void
      {
         while(this.§2!A§.length > 0)
         {
            this.§%!e§(0);
         }
         this.§2!A§ = null;
         if(this.§;=§)
         {
            this.§;=§.dispose();
            this.§;=§ = null;
         }
         this.§=U§ = null;
         this.§-!9§ = null;
         this.§[!M§ = null;
      }
      
      public function §+!G§(param1:String, param2:Number, param3:Number, param4:int = -1) : §94§
      {
         var _loc5_:§94§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,param4)).§>!'§();
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §94§
      {
         var _loc5_:§94§ = new §94§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§2!A§.push(_loc5_);
         }
         else
         {
            this.§2!A§.splice(param4,0,_loc5_);
         }
         this.§=U§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §%&§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §8!M§)
         {
            this.§7!0§();
            this.§'!C§ = 1000;
         }
         else if(this.mSlingShotState == §+P§)
         {
            this.§7!0§();
            this.§'!C§ = 0;
         }
         else if(this.mSlingShotState == STATE_BIRD_IS_READY)
         {
            this.§'!C§ = 10000;
            this.§9!d§ = false;
            this.§7!0§();
         }
         else if(this.mSlingShotState == §5H§)
         {
            this.§7!0§();
            this.§'!C§ = 2000;
         }
         else if(this.mSlingShotState == §-!U§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§9!d§ = false;
               this.§7!0§();
               this.§2!A§[this.§3!@§].setPosition(this.§;R§ - this.§2!A§[this.§3!@§].radius * Math.cos(this.§5M§ / (180 / Math.PI)),this.§"!c§ + this.§2!A§[this.§3!@§].radius * Math.sin(this.§5M§ / (180 / Math.PI)));
            }
            else
            {
               this.§7!0§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §<!6§() : §^!2§
      {
         return this.§=!V§;
      }
      
      public function §@!§() : Boolean
      {
         return this.mSlingShotState == §5H§ && this.§'!C§ <= 0;
      }
      
      private function §?<§() : void
      {
         var _loc1_:§!x§ = this.§!§();
         var _loc2_:§8!!§ = _loc1_.getFrame(0);
         var _loc3_:§8!!§ = _loc1_.getFrame(1);
         this.§ !§ = new §7!f§(_loc2_.texture);
         this.§ !§.scaleX = _loc2_.scale;
         this.§ !§.scaleY = _loc2_.scale;
         this.§%@§ = new §7!f§(_loc3_.texture);
         this.§%@§.scaleX = _loc3_.scale;
         this.§%@§.scaleY = _loc3_.scale;
         this.§#'§();
         this.§'!U§();
         this.§=U§ = new Sprite();
         this.§;=§.addChild(this.§ !§);
         this.§;=§.addChild(this.§0!Y§);
         this.§;=§.addChild(this.§=U§);
         this.§;=§.addChild(this.§!!;§);
         this.§;=§.addChild(this.§`!#§);
         this.§;=§.addChild(this.§%@§);
         this.§0P§ = this.§,!W§ + 8.5;
      }
      
      protected function §!§() : §!x§
      {
         return this.§=!V§.§?!O§.§!5§("SLINGSHOT");
      }
      
      public function §#'§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§ !&§ = this.§"!d§;
         this.§8H§ = this.§,!W§;
         this.§0!O§ = §<!$§.§6!T§;
         _loc1_ = null;
      }
      
      protected function §'!U§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§48§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §48§ = this.§=!V§.textureManager.§=!Z§(_loc2_);
         }
         this.§!!;§ = new Sprite();
         var _loc1_:§7!f§ = new §7!f§(§48§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§!!;§.addChild(_loc1_);
         this.§0!Y§ = new Sprite();
         this.§>!?§ = new §7?§(2,2,§"!_§);
         this.§0!Y§.addChild(this.§>!?§);
         this.§`!#§ = new Sprite();
         this.§>!b§ = new §7?§(2,2,§"!_§);
         this.§`!#§.addChild(this.§>!b§);
      }
      
      public function §+9§(param1:Number) : void
      {
         var _loc2_:Number = this.§"!c§ / §^!2§.§3!S§;
         var _loc3_:Number = this.§;R§ / §^!2§.§3!S§;
         var _loc4_:Number = 3.5 + 8 * ((this.§0!O§ - this.§9A§) / this.§0!O§);
         this.§!!;§.x = _loc3_;
         this.§!!;§.y = _loc2_;
         this.§!!;§.rotation = -this.§5M§ / (180 / Math.PI);
         this.§ !§.x = this.§"!d§ / §^!2§.§3!S§ - 3;
         this.§ !§.y = this.§,!W§ / §^!2§.§3!S§ - 30;
         this.§%@§.x = this.§"!d§ / §^!2§.§3!S§ - 30;
         this.§%@§.y = this.§,!W§ / §^!2§.§3!S§ - 30;
         this.§`!#§.x = this.§"!d§ / §^!2§.§3!S§ - 17;
         this.§`!#§.y = this.§,!W§ / §^!2§.§3!S§ + 5;
         this.§`!#§.rotation = Math.atan2(_loc2_ - this.§`!#§.y,_loc3_ - this.§`!#§.x);
         this.§0!Y§.x = this.§"!d§ / §^!2§.§3!S§ + 22;
         this.§0!Y§.y = this.§,!W§ / §^!2§.§3!S§;
         this.§0!Y§.rotation = Math.atan2(_loc2_ - this.§0!Y§.y,_loc3_ - this.§0!Y§.x);
         this.§>!b§.width = Math.sqrt(Math.pow(_loc3_ - this.§`!#§.x,2) + Math.pow(_loc2_ - this.§`!#§.y,2));
         this.§>!?§.width = Math.sqrt(Math.pow(_loc3_ - this.§0!Y§.x,2) + Math.pow(_loc2_ - this.§0!Y§.y,2));
         this.§>!b§.height = this.§>!?§.height = _loc4_ * 2;
         this.§>!b§.y = -this.§>!b§.height / 2;
         this.§>!?§.y = -this.§>!?§.height / 2;
         this.§^b§ = false;
      }
      
      public function §[![§() : void
      {
         while(this.§2!A§.length > 0)
         {
            this.§%!e§(0,true);
         }
         this.§6!F§();
         this.addSlingshotObject("BIRD_SARDINE",this.§"!d§,this.§,!W§);
         this.§%&§(STATE_BIRD_IS_READY);
      }
      
      protected function §6!F§() : void
      {
         §&M§.§6!#§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§%&§(§-!U§);
      }
      
      public function §7!0§() : void
      {
         this.setNewCoordinatesForRubber(this.§ !&§,this.§8H§ + this.§0!O§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§;R§ == param1 && this.§"!c§ == param2)
         {
            return true;
         }
         this.§9A§ = Math.sqrt((param2 - this.§8H§) * (param2 - this.§8H§) + (param1 - this.§ !&§) * (param1 - this.§ !&§));
         if(this.§9A§ > this.§0!O§)
         {
            if(param3)
            {
               this.§9A§ = Math.sqrt((this.§"!c§ - this.§8H§) * (this.§"!c§ - this.§8H§) + (this.§;R§ - this.§ !&§) * (this.§;R§ - this.§ !&§));
               return false;
            }
            param1 = this.§ !&§ + this.§0!O§ * (param1 - this.§ !&§) / this.§9A§;
            param2 = this.§8H§ + this.§0!O§ * (param2 - this.§8H§) / this.§9A§;
            this.§9A§ = this.§0!O§;
         }
         this.§;R§ = param1;
         this.§"!c§ = param2;
         this.§5M§ = Math.atan2(-(this.§"!c§ - this.§8H§),this.§;R§ - this.§ !&§);
         this.§5M§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§;R§ = param1 + this.§5b§;
            this.§"!c§ = param2 + this.§>!;§;
            this.§5M§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§0!O§ / 2;
         if(this.§9A§ > _loc7_ && this.§5M§ > -90 - _loc4_ + _loc5_ && this.§5M§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§ !&§ + _loc7_ * (param1 - this.§ !&§) / this.§9A§;
            param2 = this.§8H§ + _loc7_ * (param2 - this.§8H§) / this.§9A§;
            this.§9A§ = _loc7_;
            this.§;R§ = param1;
            this.§"!c§ = param2;
         }
         else if(this.§9A§ > _loc7_ && this.§5M§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§5M§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§0!O§ - _loc7_) * (Math.abs(this.§5M§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§ !&§ + _loc8_ * (param1 - this.§ !&§) / this.§9A§;
            param2 = this.§8H§ + _loc8_ * (param2 - this.§8H§) / this.§9A§;
            this.§9A§ = _loc8_;
            this.§;R§ = param1;
            this.§"!c§ = param2;
         }
         if(this.§9A§ <= this.§0!O§ * 0.45)
         {
            this.§"!=§ = true;
         }
         else if(this.§"!=§ && this.§9A§ >= this.§0!O§ * 0.8)
         {
            this.§4?§();
            this.§"!=§ = false;
         }
         this.§^b§ = true;
         return true;
      }
      
      protected function §4?§() : void
      {
         §&M§.§6!#§("SlingshotStreched");
      }
      
      public function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§"!d§,this.§,!W§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§"!d§;
         this.§"!d§ = param1;
         var _loc5_:Number = param2 - this.§,!W§;
         this.§,!W§ = param2;
         this.§0P§ += _loc5_;
         this.§8H§ += _loc5_;
         this.§"!c§ += _loc5_;
         this.§ !&§ += _loc4_;
         this.§;R§ += _loc4_;
         if(param3)
         {
            this.§+9§(0);
         }
         this.§^b§ = true;
      }
      
      public function §^!%§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§94§ = null;
         _loc2_ = this.§2!A§[this.§3!@§];
         var _loc3_:Number = this.§9A§ / this.§0!O§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§9§.§;!]§) : Number(§9§.BIRD_LAUNCH_FORCE);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §?!W§() : Point
      {
         var _loc1_:§94§ = null;
         if(this.§2!A§.length > this.§3!@§)
         {
            _loc1_ = this.§2!A§[this.§3!@§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §[!Z§() : Point
      {
         return new Point(this.§ !&§,this.§8H§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§94§ = null;
         this.updateGroundControl(param1);
         if(this.§^b§)
         {
            this.§+9§(param1);
         }
         this.§'!C§ -= param1;
         if(this.§'!C§ < 0)
         {
            this.§'!C§ = 0;
         }
         if(this.mSlingShotState != §5H§)
         {
            this.§,R§(param1,param2);
            _loc3_ = null;
            if(this.§2!A§.length > 0)
            {
               _loc3_ = this.§2!A§[this.§3!@§];
            }
            if(_loc3_)
            {
               _loc3_.§'!,§(param1);
            }
            if(!_loc3_)
            {
               this.§%&§(§5H§);
            }
            else if(this.mSlingShotState == §8!M§)
            {
               if(this.§'!C§ <= 0)
               {
                  this.§%&§(§+P§);
                  _loc3_.§<!<§();
               }
            }
            else if(this.mSlingShotState == §+P§)
            {
               if(_loc3_.§]]§)
               {
                  this.§%&§(STATE_BIRD_IS_READY);
               }
            }
            else if(this.mSlingShotState == STATE_BIRD_IS_READY)
            {
               _loc3_.setPosition(this.§;R§ - _loc3_.radius * Math.cos(this.§5M§ / (180 / Math.PI)),this.§"!c§ + _loc3_.radius * Math.sin(this.§5M§ / (180 / Math.PI)));
               if(this.§9!d§)
               {
                  this.§<0§(this.§9A§ / this.§0!O§,this.§5M§);
               }
            }
         }
      }
      
      public function §8q§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§94§ = null;
         if(this.§2!A§.length > 0)
         {
            _loc5_ = this.§2!A§[this.§3!@§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§<0§(param3,param4);
      }
      
      protected function §<0§(param1:Number, param2:Number) : void
      {
         var _loc3_:§94§ = null;
         this.§5b§ = §!,§;
         this.§>!;§ = §]"§;
         if(this.§2!A§.length > 0)
         {
            _loc3_ = this.§2!A§[this.§3!@§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§9!d§ = false;
         this.§"_§ = new Date().time;
         this.§=!V§.§+!b§(_loc3_,param1,param2);
         this.§%!e§(this.§3!@§,_loc3_.§;1§ > 0);
         this.§6!7§();
         if(this.§3!@§ >= this.§2!A§.length)
         {
            this.§%&§(§5H§);
         }
         else
         {
            this.§%&§(§8!M§);
         }
      }
      
      protected function §6!7§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §&M§.§6!#§("BirdShot" + _loc1_);
      }
      
      public function §,R§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§3!@§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§2!A§.length)
         {
            if(this.mSlingShotState == §-!U§)
            {
               this.§2!A§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§2!A§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§94§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§7!0§();
         if(this.§!!_§ >= this.§2!A§.length)
         {
            return false;
         }
         _loc1_ = this.§2!A§[this.§!!_§];
         _loc2_ = §`>§.§<!>§(_loc1_.name).score;
         this.§=!V§.addScore(_loc2_,§ !;§.§<!A§,true,_loc1_.x,_loc1_.y - 3,§!U§.§03§(_loc1_.name));
         _loc1_.§6_§(-1,true);
         ++this.§!!_§;
         return true;
      }
      
      public function §`!_§() : int
      {
         var _loc2_:§94§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§2!A§)
         {
            _loc1_ += §`>§.§<!>§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §^$§() : int
      {
         return this.§8v§;
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§3`§ >= 0)
         {
            this.§3`§ -= param1;
            if(this.§3`§ <= 0)
            {
               _loc2_ = this.§=!V§.objects.§7J§(this.§ !&§,this.§0P§);
               if(_loc2_ < 0)
               {
                  this.applyGravity(0.1);
                  this.§3`§ = 0;
               }
               else if(!this.§=!V§.objects.§@r§(_loc2_).§4>§)
               {
                  this.§3`§ = -1;
               }
               else if(this.§=!V§.objects.§@r§(_loc2_).§[b§())
               {
                  this.§3`§ = 2000;
               }
               else
               {
                  this.§3`§ = 500;
               }
            }
         }
      }
      
      public function §<!H§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§=!V§.objects.§7J§(this.§ !&§,this.§0P§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.applyGravity(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§3`§ = -1;
      }
      
      public function §+!+§(param1:Number, param2:Number) : void
      {
         this.§;=§.x = -param1;
         this.§;=§.y = -param2;
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
         return this.mSlingShotState == STATE_BIRD_IS_READY && this.§9A§ > this.§0!O§ * §;&§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§%&§(STATE_BIRD_IS_READY);
         var _loc1_:§94§ = this.§2!A§[this.§3!@§];
         _loc1_.§6_§(§!k§.§7b§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§94§ = this.§2!A§[this.§3!@§];
         _loc1_.§6_§(§!k§.§]!§);
      }
      
      public function shoot() : void
      {
         this.§9!d§ = true;
      }
      
      protected function §%!e§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§94§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§2!A§[param1])
         {
            _loc3_ = this.§2!A§[param1];
            this.§=U§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§;!c§(this.§2!A§[param1]);
            }
            _loc3_.dispose();
            this.§2!A§[param1] = null;
         }
         this.§2!A§.splice(param1,1);
      }
      
      public function §;!c§(param1:§94§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §^!2§.§3!S§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §^!2§.§3!S§) + Math.random() * -_loc8_ * 2;
            this.§=!V§.particles.addParticle(§!U§.§&§,§?F§.§<G§,§!U§.§"R§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§!U§.§9Z§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§=!V§.particles.addParticle(§!U§.§5!Y§,§?F§.§<G§,§!U§.§"R§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §4!P§(param1:§94§) : void
      {
         this.§%!e§(this.§2!A§.indexOf(param1));
      }
      
      public function §^!K§() : void
      {
         var _loc2_:§94§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§94§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§2!A§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§"!d§ - this.§2!A§[_loc1_].x) * (this.§"!d§ - this.§2!A§[_loc1_].x) + (this.§,!W§ - this.§2!A§[_loc1_].y) * (this.§,!W§ - this.§2!A§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§"!d§ - this.§2!A§[_loc1_ + 1].x) * (this.§"!d§ - this.§2!A§[_loc1_ + 1].x) + (this.§,!W§ - this.§2!A§[_loc1_ + 1].y) * (this.§,!W§ - this.§2!A§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§2!A§[_loc1_];
               this.§2!A§.splice(_loc1_,1);
               this.§2!A§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§=U§.numChildren > 0)
         {
            this.§=U§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§2!A§.length)
         {
            _loc2_ = this.§2!A§[_loc1_];
            this.§=U§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §=!B§(param1:Number, param2:Number) : §94§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§2!A§.length)
         {
            if(this.§2!A§[_loc3_])
            {
               if(this.§2!A§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§2!A§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §`7§(param1:Number, param2:Number) : §9§
      {
         if(param1 >= this.§"!d§ - this.§0!O§ / 4 && param1 <= this.§"!d§ + this.§0!O§ / 4 && param2 >= this.§,!W§ - this.§0!O§ / 4 && this.§,!W§ <= this.§0P§)
         {
            return this;
         }
         return null;
      }
      
      public function §,A§(param1:§&!E§) : void
      {
         var _loc3_:§94§ = null;
         var _loc4_:§3-§ = null;
         param1.§84§ = this.§"!d§;
         param1.§6!`§ = this.§,!W§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§2!A§.length)
         {
            _loc3_ = this.§2!A§[_loc2_];
            (_loc4_ = new §3-§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§>M§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §^=§() : void
      {
         while(this.§2!A§.length > 0)
         {
            this.§4!P§(this.§2!A§[0]);
         }
      }
      
      public function §'g§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§2!A§.length)
         {
            if(this.§2!A§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§2!A§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§"!d§ > param1.x && this.§"!d§ < param2.x && this.§,!W§ > param1.y && this.§,!W§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §1<§() : Array
      {
         return [this.§%@§,this.§ !§];
      }
      
      public function §%![§(param1:String, param2:Number, param3:Number) : §94§
      {
         var _loc4_:§94§ = this.addSlingshotObject(param1,param2,param3);
         this.§^!K§();
         return _loc4_;
      }
      
      public function §%!W§() : Number
      {
         return this.§2!A§.length;
      }
   }
}
