package §3E§
{
   import §"!@§.§&;§;
   import §#!`§.Texture;
   import §,!E§.§^!'§;
   import §-!6§.§>I§;
   import §27§.§ M§;
   import §27§.§4+§;
   import §5!G§.§31§;
   import §7u§.§&!C§;
   import §7u§.§&x§;
   import §7u§.Sprite;
   import §9!%§.§<!L§;
   import §9!%§.§=A§;
   import §`!B§.§2j§;
   import §`!B§.§4!I§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §]Y§
   {
      
      public static const §,!5§:int = 0;
      
      public static const §`!P§:int = 1;
      
      public static const §?!H§:int = 2;
      
      public static const §-c§:int = 3;
      
      public static const §;F§:int = 5;
      
      public static const §"v§:int = 3151368;
      
      protected static const §try §:int = 8;
      
      protected static const §>O§:int = 0;
      
      public static const §2!I§:Number = 46.25;
      
      public static const §9!'§:Number = 52.5;
      
      protected static const §>S§:Number = -0.7;
      
      protected static const §9K§:Number = 0;
      
      protected static var §2_§:Texture;
      
      public static const §`!I§:Number = 0.4;
       
      
      public var §]v§:§6w§;
      
      public var §,G§:Number;
      
      public var §-+§:Number;
      
      public var §?#§:Number;
      
      protected var §-!0§:Number;
      
      protected var §@!E§:Number;
      
      protected var § 2§:Number;
      
      protected var §3P§:Number;
      
      public var §2!%§:Number;
      
      public var §%X§:Boolean = false;
      
      protected var §^Y§:Number;
      
      public var §0!`§:Vector.<§>o§>;
      
      public var §%!5§:int;
      
      public var §<!6§:int;
      
      public var §--§:Number;
      
      public var §>!#§:Sprite;
      
      public var §;`§:int = 0;
      
      public var §+y§:Number = 0;
      
      public var § !>§:Array;
      
      public var §48§:Array;
      
      public var mSlingShotState:int;
      
      public var § !1§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §^!V§:Boolean = false;
      
      public var §"&§:Number;
      
      protected var §3!F§:Sprite;
      
      protected var §74§:§&x§;
      
      protected var §=E§:§&x§;
      
      protected var § O§:Sprite;
      
      protected var §6!K§:Sprite;
      
      protected var §5!8§:Sprite;
      
      protected var §+!B§:§&!C§;
      
      protected var §#8§:§&!C§;
      
      private var §6!6§:Number = 0;
      
      private var §@F§:int = 0;
      
      protected var §`!1§:Number = -0.7;
      
      protected var §>5§:Number = 0;
      
      public function §]Y§(param1:§6w§, param2:§&;§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§^!'§ = null;
         this.§0!`§ = new Vector.<§>o§>();
         super();
         this.§]v§ = param1;
         this.§3!F§ = param3;
         if(param2)
         {
            this.setPosition(param2.§>Q§,param2.§]!,§);
            this.§7!^§();
            _loc4_ = 0;
            while(_loc4_ < param2.§ U§)
            {
               _loc5_ = param2.§7B§(_loc4_);
               this.addSlingshotObject(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§@F§ = this.§[6§();
            this.§%!5§ = 0;
            if(this.§0!`§.length <= 0)
            {
               §>I§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§,G§ + " " + this.§-+§);
               this.setSlingShotState(§-c§);
            }
            else
            {
               this.setSlingShotState(§,!5§);
            }
         }
         else
         {
            §>I§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.setSlingShotState(§-c§);
         }
         this.§"&§ = 0;
         this.§2!2§();
         this.update(0,true);
         this.§3!?§();
         this.§@V§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§3!F§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§6!6§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§%!5§ < this.§0!`§.length;
      }
      
      public function dispose() : void
      {
         while(this.§0!`§.length > 0)
         {
            this.§&t§(0);
         }
         this.§0!`§ = null;
         if(this.§3!F§)
         {
            this.§3!F§.dispose();
            this.§3!F§ = null;
         }
         this.§>!#§ = null;
         this.§ !>§ = null;
         this.§48§ = null;
      }
      
      public function §[!C§(param1:String, param2:Number, param3:Number, param4:int = -1) : §>o§
      {
         var _loc5_:§>o§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,param4)).§!u§();
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §>o§
      {
         var _loc5_:§>o§ = new §>o§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§0!`§.push(_loc5_);
         }
         else
         {
            this.§0!`§.splice(param4,0,_loc5_);
         }
         this.§>!#§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function setSlingShotState(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §,!5§)
         {
            this.§13§();
            this.§--§ = 1000;
         }
         else if(this.mSlingShotState == §`!P§)
         {
            this.§13§();
            this.§--§ = 0;
         }
         else if(this.mSlingShotState == §?!H§)
         {
            this.§--§ = 10000;
            this.§^!V§ = false;
            this.§13§();
         }
         else if(this.mSlingShotState == §-c§)
         {
            this.§13§();
            this.§--§ = 2000;
         }
         else if(this.mSlingShotState == §;F§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§^!V§ = false;
               this.§13§();
               this.§0!`§[this.§%!5§].setPosition(this.§ 2§ - this.§0!`§[this.§%!5§].radius * Math.cos(this.§+y§ / (180 / Math.PI)),this.§3P§ + this.§0!`§[this.§%!5§].radius * Math.sin(this.§+y§ / (180 / Math.PI)));
            }
            else
            {
               this.§13§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §6#§() : §6w§
      {
         return this.§]v§;
      }
      
      public function §&7§() : Boolean
      {
         return this.mSlingShotState == §-c§ && this.§--§ <= 0;
      }
      
      private function §7!^§() : void
      {
         var _loc1_:§2j§ = this.§02§();
         var _loc2_:§4!I§ = _loc1_.getFrame(0);
         var _loc3_:§4!I§ = _loc1_.getFrame(1);
         this.§+!B§ = new §&!C§(_loc2_.texture);
         this.§+!B§.scaleX = _loc2_.scale;
         this.§+!B§.scaleY = _loc2_.scale;
         this.§#8§ = new §&!C§(_loc3_.texture);
         this.§#8§.scaleX = _loc3_.scale;
         this.§#8§.scaleY = _loc3_.scale;
         this.§5i§();
         this.§#I§();
         this.§>!#§ = new Sprite();
         this.§3!F§.addChild(this.§+!B§);
         this.§3!F§.addChild(this.§ O§);
         this.§3!F§.addChild(this.§>!#§);
         this.§3!F§.addChild(this.§5!8§);
         this.§3!F§.addChild(this.§6!K§);
         this.§3!F§.addChild(this.§#8§);
         this.§?#§ = this.§-+§ + 8.5;
      }
      
      protected function §02§() : §2j§
      {
         return this.§]v§.§]q§.§;!!§("SLINGSHOT");
      }
      
      public function §5i§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§-!0§ = this.§,G§;
         this.§@!E§ = this.§-+§;
         this.§^Y§ = §!$§.§=!7§;
         _loc1_ = null;
      }
      
      protected function §#I§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§2_§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §2_§ = this.§]v§.§59§.§+t§(_loc2_);
         }
         this.§5!8§ = new Sprite();
         var _loc1_:§&!C§ = new §&!C§(§2_§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§5!8§.addChild(_loc1_);
         this.§ O§ = new Sprite();
         this.§74§ = new §&x§(2,2,§"v§);
         this.§ O§.addChild(this.§74§);
         this.§6!K§ = new Sprite();
         this.§=E§ = new §&x§(2,2,§"v§);
         this.§6!K§.addChild(this.§=E§);
      }
      
      public function §@V§(param1:Number) : void
      {
         var _loc2_:Number = this.§3P§ / §6w§.§?!^§;
         var _loc3_:Number = this.§ 2§ / §6w§.§?!^§;
         var _loc4_:Number = 3.5 + 8 * ((this.§^Y§ - this.§2!%§) / this.§^Y§);
         this.§5!8§.x = _loc3_;
         this.§5!8§.y = _loc2_;
         this.§5!8§.rotation = -this.§+y§ / (180 / Math.PI);
         this.§+!B§.x = this.§,G§ / §6w§.§?!^§ - 3;
         this.§+!B§.y = this.§-+§ / §6w§.§?!^§ - 30;
         this.§#8§.x = this.§,G§ / §6w§.§?!^§ - 30;
         this.§#8§.y = this.§-+§ / §6w§.§?!^§ - 30;
         this.§6!K§.x = this.§,G§ / §6w§.§?!^§ - 17;
         this.§6!K§.y = this.§-+§ / §6w§.§?!^§ + 5;
         this.§6!K§.rotation = Math.atan2(_loc2_ - this.§6!K§.y,_loc3_ - this.§6!K§.x);
         this.§ O§.x = this.§,G§ / §6w§.§?!^§ + 22;
         this.§ O§.y = this.§-+§ / §6w§.§?!^§;
         this.§ O§.rotation = Math.atan2(_loc2_ - this.§ O§.y,_loc3_ - this.§ O§.x);
         this.§=E§.width = Math.sqrt(Math.pow(_loc3_ - this.§6!K§.x,2) + Math.pow(_loc2_ - this.§6!K§.y,2));
         this.§74§.width = Math.sqrt(Math.pow(_loc3_ - this.§ O§.x,2) + Math.pow(_loc2_ - this.§ O§.y,2));
         this.§=E§.height = this.§74§.height = _loc4_ * 2;
         this.§=E§.y = -this.§=E§.height / 2;
         this.§74§.y = -this.§74§.height / 2;
         this.§ !1§ = false;
      }
      
      public function § case§() : void
      {
         while(this.§0!`§.length > 0)
         {
            this.§&t§(0,true);
         }
         this.§4!T§();
         this.addSlingshotObject("BIRD_SARDINE",this.§,G§,this.§-+§);
         this.setSlingShotState(§?!H§);
      }
      
      protected function §4!T§() : void
      {
         §31§.§>%§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.setSlingShotState(§;F§);
      }
      
      public function §13§() : void
      {
         this.setNewCoordinatesForRubber(this.§-!0§,this.§@!E§ + this.§^Y§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§ 2§ == param1 && this.§3P§ == param2)
         {
            return true;
         }
         this.§2!%§ = Math.sqrt((param2 - this.§@!E§) * (param2 - this.§@!E§) + (param1 - this.§-!0§) * (param1 - this.§-!0§));
         if(this.§2!%§ > this.§^Y§)
         {
            if(param3)
            {
               this.§2!%§ = Math.sqrt((this.§3P§ - this.§@!E§) * (this.§3P§ - this.§@!E§) + (this.§ 2§ - this.§-!0§) * (this.§ 2§ - this.§-!0§));
               return false;
            }
            param1 = this.§-!0§ + this.§^Y§ * (param1 - this.§-!0§) / this.§2!%§;
            param2 = this.§@!E§ + this.§^Y§ * (param2 - this.§@!E§) / this.§2!%§;
            this.§2!%§ = this.§^Y§;
         }
         this.§ 2§ = param1;
         this.§3P§ = param2;
         this.§+y§ = Math.atan2(-(this.§3P§ - this.§@!E§),this.§ 2§ - this.§-!0§);
         this.§+y§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§ 2§ = param1 + this.§`!1§;
            this.§3P§ = param2 + this.§>5§;
            this.§+y§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§^Y§ / 2;
         if(this.§2!%§ > _loc7_ && this.§+y§ > -90 - _loc4_ + _loc5_ && this.§+y§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§-!0§ + _loc7_ * (param1 - this.§-!0§) / this.§2!%§;
            param2 = this.§@!E§ + _loc7_ * (param2 - this.§@!E§) / this.§2!%§;
            this.§2!%§ = _loc7_;
            this.§ 2§ = param1;
            this.§3P§ = param2;
         }
         else if(this.§2!%§ > _loc7_ && this.§+y§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§+y§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§^Y§ - _loc7_) * (Math.abs(this.§+y§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§-!0§ + _loc8_ * (param1 - this.§-!0§) / this.§2!%§;
            param2 = this.§@!E§ + _loc8_ * (param2 - this.§@!E§) / this.§2!%§;
            this.§2!%§ = _loc8_;
            this.§ 2§ = param1;
            this.§3P§ = param2;
         }
         if(this.§2!%§ <= this.§^Y§ * 0.45)
         {
            this.§%X§ = true;
         }
         else if(this.§%X§ && this.§2!%§ >= this.§^Y§ * 0.8)
         {
            this.§2#§();
            this.§%X§ = false;
         }
         this.§ !1§ = true;
         return true;
      }
      
      protected function §2#§() : void
      {
         §31§.§>%§("SlingshotStreched");
      }
      
      public function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§,G§,this.§-+§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§,G§;
         this.§,G§ = param1;
         var _loc5_:Number = param2 - this.§-+§;
         this.§-+§ = param2;
         this.§?#§ += _loc5_;
         this.§@!E§ += _loc5_;
         this.§3P§ += _loc5_;
         this.§-!0§ += _loc4_;
         this.§ 2§ += _loc4_;
         if(param3)
         {
            this.§@V§(0);
         }
         this.§ !1§ = true;
      }
      
      public function § <§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§>o§ = null;
         _loc2_ = this.§0!`§[this.§%!5§];
         var _loc3_:Number = this.§2!%§ / this.§^Y§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§]Y§.§9!'§) : Number(§]Y§.§2!I§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §-!U§() : Point
      {
         var _loc1_:§>o§ = null;
         if(this.§0!`§.length > this.§%!5§)
         {
            _loc1_ = this.§0!`§[this.§%!5§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §%U§() : Point
      {
         return new Point(this.§-!0§,this.§@!E§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§>o§ = null;
         this.updateGroundControl(param1);
         if(this.§ !1§)
         {
            this.§@V§(param1);
         }
         this.§--§ -= param1;
         if(this.§--§ < 0)
         {
            this.§--§ = 0;
         }
         if(this.mSlingShotState != §-c§)
         {
            this.§5!'§(param1,param2);
            _loc3_ = null;
            if(this.§0!`§.length > 0)
            {
               _loc3_ = this.§0!`§[this.§%!5§];
            }
            if(_loc3_)
            {
               _loc3_.§<!S§(param1);
            }
            if(!_loc3_)
            {
               this.setSlingShotState(§-c§);
            }
            else if(this.mSlingShotState == §,!5§)
            {
               if(this.§--§ <= 0)
               {
                  this.setSlingShotState(§`!P§);
                  _loc3_.§+%§();
               }
            }
            else if(this.mSlingShotState == §`!P§)
            {
               if(_loc3_.§+p§)
               {
                  this.setSlingShotState(§?!H§);
               }
            }
            else if(this.mSlingShotState == §?!H§)
            {
               _loc3_.setPosition(this.§ 2§ - _loc3_.radius * Math.cos(this.§+y§ / (180 / Math.PI)),this.§3P§ + _loc3_.radius * Math.sin(this.§+y§ / (180 / Math.PI)));
               if(this.§^!V§)
               {
                  this.§>p§(this.§2!%§ / this.§^Y§,this.§+y§);
               }
            }
         }
      }
      
      public function §9!K§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§>o§ = null;
         if(this.§0!`§.length > 0)
         {
            _loc5_ = this.§0!`§[this.§%!5§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§>p§(param3,param4);
      }
      
      protected function §>p§(param1:Number, param2:Number) : void
      {
         var _loc3_:§>o§ = null;
         this.§`!1§ = §>S§;
         this.§>5§ = §9K§;
         if(this.§0!`§.length > 0)
         {
            _loc3_ = this.§0!`§[this.§%!5§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§^!V§ = false;
         this.§6!6§ = new Date().time;
         this.§]v§.§]!F§(_loc3_,param1,param2);
         this.§&t§(this.§%!5§,_loc3_.§1c§ > 0);
         this.§0$§();
         if(this.§%!5§ >= this.§0!`§.length)
         {
            this.setSlingShotState(§-c§);
         }
         else
         {
            this.setSlingShotState(§,!5§);
         }
      }
      
      protected function §0$§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §31§.§>%§("BirdShot" + _loc1_);
      }
      
      public function §5!'§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§%!5§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§0!`§.length)
         {
            if(this.mSlingShotState == §;F§)
            {
               this.§0!`§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§0!`§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§>o§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§13§();
         if(this.§<!6§ >= this.§0!`§.length)
         {
            return false;
         }
         _loc1_ = this.§0!`§[this.§<!6§];
         _loc2_ = §<!L§.§]z§(_loc1_.name).score;
         this.§]v§.addScore(_loc2_,§7!+§.§[!0§,true,_loc1_.x,_loc1_.y - 3,§4+§.§4B§(_loc1_.name));
         _loc1_.§"F§(-1,true);
         ++this.§<!6§;
         return true;
      }
      
      public function §[6§() : int
      {
         var _loc2_:§>o§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§0!`§)
         {
            _loc1_ += §<!L§.§]z§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §+#§() : int
      {
         return this.§@F§;
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§"&§ >= 0)
         {
            this.§"&§ -= param1;
            if(this.§"&§ <= 0)
            {
               _loc2_ = this.§]v§.objects.§!!%§(this.§-!0§,this.§?#§);
               if(_loc2_ < 0)
               {
                  this.applyGravity(0.1);
                  this.§"&§ = 0;
               }
               else if(!this.§]v§.objects.§4!K§(_loc2_).§4!M§)
               {
                  this.§"&§ = -1;
               }
               else if(this.§]v§.objects.§4!K§(_loc2_).§@w§())
               {
                  this.§"&§ = 2000;
               }
               else
               {
                  this.§"&§ = 500;
               }
            }
         }
      }
      
      public function §3!?§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§]v§.objects.§!!%§(this.§-!0§,this.§?#§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.applyGravity(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§"&§ = -1;
      }
      
      public function §3!J§(param1:Number, param2:Number) : void
      {
         this.§3!F§.x = -param1;
         this.§3!F§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §?!H§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §?!H§ && this.§2!%§ > this.§^Y§ * §`!I§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.setSlingShotState(§?!H§);
         var _loc1_:§>o§ = this.§0!`§[this.§%!5§];
         _loc1_.§"F§(§=A§.§]!9§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§>o§ = this.§0!`§[this.§%!5§];
         _loc1_.§"F§(§=A§.§&!"§);
      }
      
      public function shoot() : void
      {
         this.§^!V§ = true;
      }
      
      protected function §&t§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§>o§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§0!`§[param1])
         {
            _loc3_ = this.§0!`§[param1];
            this.§>!#§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§"!R§(this.§0!`§[param1]);
            }
            _loc3_.dispose();
            this.§0!`§[param1] = null;
         }
         this.§0!`§.splice(param1,1);
      }
      
      public function §"!R§(param1:§>o§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §6w§.§?!^§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §6w§.§?!^§) + Math.random() * -_loc8_ * 2;
            this.§]v§.particles.addParticle(§4+§.§5!`§,§ M§.§&^§,§4+§.§&'§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§4+§.§#]§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§]v§.particles.addParticle(§4+§.§5>§,§ M§.§&^§,§4+§.§&'§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §1!;§(param1:§>o§) : void
      {
         this.§&t§(this.§0!`§.indexOf(param1));
      }
      
      public function §2!2§() : void
      {
         var _loc2_:§>o§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§>o§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§0!`§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§,G§ - this.§0!`§[_loc1_].x) * (this.§,G§ - this.§0!`§[_loc1_].x) + (this.§-+§ - this.§0!`§[_loc1_].y) * (this.§-+§ - this.§0!`§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§,G§ - this.§0!`§[_loc1_ + 1].x) * (this.§,G§ - this.§0!`§[_loc1_ + 1].x) + (this.§-+§ - this.§0!`§[_loc1_ + 1].y) * (this.§-+§ - this.§0!`§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§0!`§[_loc1_];
               this.§0!`§.splice(_loc1_,1);
               this.§0!`§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§>!#§.numChildren > 0)
         {
            this.§>!#§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§0!`§.length)
         {
            _loc2_ = this.§0!`§[_loc1_];
            this.§>!#§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §3!H§(param1:Number, param2:Number) : §>o§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§0!`§.length)
         {
            if(this.§0!`§[_loc3_])
            {
               if(this.§0!`§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§0!`§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §=s§(param1:Number, param2:Number) : §]Y§
      {
         if(param1 >= this.§,G§ - this.§^Y§ / 4 && param1 <= this.§,G§ + this.§^Y§ / 4 && param2 >= this.§-+§ - this.§^Y§ / 4 && this.§-+§ <= this.§?#§)
         {
            return this;
         }
         return null;
      }
      
      public function §%N§(param1:§&;§) : void
      {
         var _loc3_:§>o§ = null;
         var _loc4_:§^!'§ = null;
         param1.§>Q§ = this.§,G§;
         param1.§]!,§ = this.§-+§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§0!`§.length)
         {
            _loc3_ = this.§0!`§[_loc2_];
            (_loc4_ = new §^!'§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§=!9§(_loc4_);
            _loc2_++;
         }
      }
      
      public function § l§() : void
      {
         while(this.§0!`§.length > 0)
         {
            this.§1!;§(this.§0!`§[0]);
         }
      }
      
      public function §97§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§0!`§.length)
         {
            if(this.§0!`§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§0!`§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§,G§ > param1.x && this.§,G§ < param2.x && this.§-+§ > param1.y && this.§-+§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §`B§() : Array
      {
         return [this.§#8§,this.§+!B§];
      }
      
      public function §@9§(param1:String, param2:Number, param3:Number) : §>o§
      {
         var _loc4_:§>o§ = this.addSlingshotObject(param1,param2,param3);
         this.§2!2§();
         return _loc4_;
      }
      
      public function §,!$§() : Number
      {
         return this.§0!`§.length;
      }
   }
}
