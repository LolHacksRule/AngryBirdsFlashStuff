package §%b§
{
   import §!4§.§=!Z§;
   import §-A§.Texture;
   import §0C§.§;!Q§;
   import §98§.§;m§;
   import §98§.§=!F§;
   import §;C§.§5!O§;
   import §?!H§.§!h§;
   import §?!H§.§=!D§;
   import §@!§.§ !N§;
   import §@!§.§8!W§;
   import §@I§.§!U§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §null §.§%!G§;
   import §null §.§>U§;
   import §null §.Sprite;
   
   public class §=!!§
   {
      
      public static const §%!7§:int = 0;
      
      public static const §<!T§:int = 1;
      
      public static const §#<§:int = 2;
      
      public static const §^!D§:int = 3;
      
      public static const § f§:int = 5;
      
      public static const §?z§:int = 3151368;
      
      protected static const §'!?§:int = 8;
      
      protected static const § $§:int = 0;
      
      public static const §3l§:Number = 46.25;
      
      public static const §9;§:Number = 52.5;
      
      protected static const §[!U§:Number = -0.7;
      
      protected static const §]!E§:Number = 0;
      
      protected static var §38§:Texture;
      
      public static const §9!P§:Number = 0.4;
       
      
      public var §]!8§:§0!Z§;
      
      public var §+!L§:Number;
      
      public var §!;§:Number;
      
      public var §9!3§:Number;
      
      protected var §"!Q§:Number;
      
      protected var §93§:Number;
      
      protected var §5@§:Number;
      
      protected var §#!`§:Number;
      
      public var §+p§:Number;
      
      public var §3N§:Boolean = false;
      
      protected var §<!;§:Number;
      
      public var §^!O§:Vector.<§&b§>;
      
      public var §3!H§:int;
      
      public var §,l§:int;
      
      public var §<0§:Number;
      
      public var §%!-§:Sprite;
      
      public var §8!2§:int = 0;
      
      public var §+i§:Number = 0;
      
      public var §'0§:Array;
      
      public var §&^§:Array;
      
      public var mSlingShotState:int;
      
      public var §<!>§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §&_§:Boolean = false;
      
      public var §-K§:Number;
      
      protected var §&!C§:Sprite;
      
      protected var §@!0§:§>U§;
      
      protected var §2$§:§>U§;
      
      protected var §#!;§:Sprite;
      
      protected var § i§:Sprite;
      
      protected var §3!V§:Sprite;
      
      protected var §5O§:§%!G§;
      
      protected var §`c§:§%!G§;
      
      private var §`!&§:Number = 0;
      
      private var §`t§:int = 0;
      
      protected var §;9§:Number = -0.7;
      
      protected var §8!+§:Number = 0;
      
      public function §=!!§(param1:§0!Z§, param2:§;!Q§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§!U§ = null;
         this.§^!O§ = new Vector.<§&b§>();
         super();
         this.§]!8§ = param1;
         this.§&!C§ = param3;
         if(param2)
         {
            this.setPosition(param2.§7;§,param2.§1!6§);
            this.§-R§();
            _loc4_ = 0;
            while(_loc4_ < param2.§1C§)
            {
               _loc5_ = param2.§[#§(_loc4_);
               this.addSlingshotObject(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§`t§ = this.§#!@§();
            this.§3!H§ = 0;
            if(this.§^!O§.length <= 0)
            {
               §=!Z§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§+!L§ + " " + this.§!;§);
               this.setSlingShotState(§^!D§);
            }
            else
            {
               this.setSlingShotState(§%!7§);
            }
         }
         else
         {
            §=!Z§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.setSlingShotState(§^!D§);
         }
         this.§-K§ = 0;
         this.§5K§();
         this.update(0,true);
         this.§^!§();
         this.§`l§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§&!C§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§`!&§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§3!H§ < this.§^!O§.length;
      }
      
      public function dispose() : void
      {
         while(this.§^!O§.length > 0)
         {
            this.§2o§(0);
         }
         this.§^!O§ = null;
         if(this.§&!C§)
         {
            this.§&!C§.dispose();
            this.§&!C§ = null;
         }
         this.§%!-§ = null;
         this.§'0§ = null;
         this.§&^§ = null;
      }
      
      public function §>X§(param1:String, param2:Number, param3:Number, param4:int = -1) : §&b§
      {
         var _loc5_:§&b§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,param4)).§?!_§();
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §&b§
      {
         var _loc5_:§&b§ = new §&b§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§^!O§.push(_loc5_);
         }
         else
         {
            this.§^!O§.splice(param4,0,_loc5_);
         }
         this.§%!-§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function setSlingShotState(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §%!7§)
         {
            this.§%B§();
            this.§<0§ = 1000;
         }
         else if(this.mSlingShotState == §<!T§)
         {
            this.§%B§();
            this.§<0§ = 0;
         }
         else if(this.mSlingShotState == §#<§)
         {
            this.§<0§ = 10000;
            this.§&_§ = false;
            this.§%B§();
         }
         else if(this.mSlingShotState == §^!D§)
         {
            this.§%B§();
            this.§<0§ = 2000;
         }
         else if(this.mSlingShotState == § f§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§&_§ = false;
               this.§%B§();
               this.§^!O§[this.§3!H§].setPosition(this.§5@§ - this.§^!O§[this.§3!H§].radius * Math.cos(this.§+i§ / (180 / Math.PI)),this.§#!`§ + this.§^!O§[this.§3!H§].radius * Math.sin(this.§+i§ / (180 / Math.PI)));
            }
            else
            {
               this.§%B§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §`!4§() : §0!Z§
      {
         return this.§]!8§;
      }
      
      public function §]!G§() : Boolean
      {
         return this.mSlingShotState == §^!D§ && this.§<0§ <= 0;
      }
      
      private function §-R§() : void
      {
         var _loc1_:§8!W§ = this.§?T§();
         var _loc2_:§ !N§ = _loc1_.getFrame(0);
         var _loc3_:§ !N§ = _loc1_.getFrame(1);
         this.§5O§ = new §%!G§(_loc2_.texture);
         this.§5O§.scaleX = _loc2_.scale;
         this.§5O§.scaleY = _loc2_.scale;
         this.§`c§ = new §%!G§(_loc3_.texture);
         this.§`c§.scaleX = _loc3_.scale;
         this.§`c§.scaleY = _loc3_.scale;
         this.§%!O§();
         this.§?3§();
         this.§%!-§ = new Sprite();
         this.§&!C§.addChild(this.§5O§);
         this.§&!C§.addChild(this.§#!;§);
         this.§&!C§.addChild(this.§%!-§);
         this.§&!C§.addChild(this.§3!V§);
         this.§&!C§.addChild(this.§ i§);
         this.§&!C§.addChild(this.§`c§);
         this.§9!3§ = this.§!;§ + 8.5;
      }
      
      protected function §?T§() : §8!W§
      {
         return this.§]!8§.§%!P§.§0g§("SLINGSHOT");
      }
      
      public function §%!O§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§"!Q§ = this.§+!L§;
         this.§93§ = this.§!;§;
         this.§<!;§ = §][§.§7!-§;
         _loc1_ = null;
      }
      
      protected function §?3§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§38§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §38§ = this.§]!8§.§>A§.§9!1§(_loc2_);
         }
         this.§3!V§ = new Sprite();
         var _loc1_:§%!G§ = new §%!G§(§38§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§3!V§.addChild(_loc1_);
         this.§#!;§ = new Sprite();
         this.§@!0§ = new §>U§(2,2,§?z§);
         this.§#!;§.addChild(this.§@!0§);
         this.§ i§ = new Sprite();
         this.§2$§ = new §>U§(2,2,§?z§);
         this.§ i§.addChild(this.§2$§);
      }
      
      public function §`l§(param1:Number) : void
      {
         var _loc2_:Number = this.§#!`§ / §0!Z§.§+n§;
         var _loc3_:Number = this.§5@§ / §0!Z§.§+n§;
         var _loc4_:Number = 3.5 + 8 * ((this.§<!;§ - this.§+p§) / this.§<!;§);
         this.§3!V§.x = _loc3_;
         this.§3!V§.y = _loc2_;
         this.§3!V§.rotation = -this.§+i§ / (180 / Math.PI);
         this.§5O§.x = this.§+!L§ / §0!Z§.§+n§ - 3;
         this.§5O§.y = this.§!;§ / §0!Z§.§+n§ - 30;
         this.§`c§.x = this.§+!L§ / §0!Z§.§+n§ - 30;
         this.§`c§.y = this.§!;§ / §0!Z§.§+n§ - 30;
         this.§ i§.x = this.§+!L§ / §0!Z§.§+n§ - 17;
         this.§ i§.y = this.§!;§ / §0!Z§.§+n§ + 5;
         this.§ i§.rotation = Math.atan2(_loc2_ - this.§ i§.y,_loc3_ - this.§ i§.x);
         this.§#!;§.x = this.§+!L§ / §0!Z§.§+n§ + 22;
         this.§#!;§.y = this.§!;§ / §0!Z§.§+n§;
         this.§#!;§.rotation = Math.atan2(_loc2_ - this.§#!;§.y,_loc3_ - this.§#!;§.x);
         this.§2$§.width = Math.sqrt(Math.pow(_loc3_ - this.§ i§.x,2) + Math.pow(_loc2_ - this.§ i§.y,2));
         this.§@!0§.width = Math.sqrt(Math.pow(_loc3_ - this.§#!;§.x,2) + Math.pow(_loc2_ - this.§#!;§.y,2));
         this.§2$§.height = this.§@!0§.height = _loc4_ * 2;
         this.§2$§.y = -this.§2$§.height / 2;
         this.§@!0§.y = -this.§@!0§.height / 2;
         this.§<!>§ = false;
      }
      
      public function §9!-§() : void
      {
         while(this.§^!O§.length > 0)
         {
            this.§2o§(0,true);
         }
         this.§6!Q§();
         this.addSlingshotObject("BIRD_SARDINE",this.§+!L§,this.§!;§);
         this.setSlingShotState(§#<§);
      }
      
      protected function §6!Q§() : void
      {
         §5!O§.§-q§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.setSlingShotState(§ f§);
      }
      
      public function §%B§() : void
      {
         this.setNewCoordinatesForRubber(this.§"!Q§,this.§93§ + this.§<!;§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§5@§ == param1 && this.§#!`§ == param2)
         {
            return true;
         }
         this.§+p§ = Math.sqrt((param2 - this.§93§) * (param2 - this.§93§) + (param1 - this.§"!Q§) * (param1 - this.§"!Q§));
         if(this.§+p§ > this.§<!;§)
         {
            if(param3)
            {
               this.§+p§ = Math.sqrt((this.§#!`§ - this.§93§) * (this.§#!`§ - this.§93§) + (this.§5@§ - this.§"!Q§) * (this.§5@§ - this.§"!Q§));
               return false;
            }
            param1 = this.§"!Q§ + this.§<!;§ * (param1 - this.§"!Q§) / this.§+p§;
            param2 = this.§93§ + this.§<!;§ * (param2 - this.§93§) / this.§+p§;
            this.§+p§ = this.§<!;§;
         }
         this.§5@§ = param1;
         this.§#!`§ = param2;
         this.§+i§ = Math.atan2(-(this.§#!`§ - this.§93§),this.§5@§ - this.§"!Q§);
         this.§+i§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§5@§ = param1 + this.§;9§;
            this.§#!`§ = param2 + this.§8!+§;
            this.§+i§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§<!;§ / 2;
         if(this.§+p§ > _loc7_ && this.§+i§ > -90 - _loc4_ + _loc5_ && this.§+i§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§"!Q§ + _loc7_ * (param1 - this.§"!Q§) / this.§+p§;
            param2 = this.§93§ + _loc7_ * (param2 - this.§93§) / this.§+p§;
            this.§+p§ = _loc7_;
            this.§5@§ = param1;
            this.§#!`§ = param2;
         }
         else if(this.§+p§ > _loc7_ && this.§+i§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§+i§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§<!;§ - _loc7_) * (Math.abs(this.§+i§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§"!Q§ + _loc8_ * (param1 - this.§"!Q§) / this.§+p§;
            param2 = this.§93§ + _loc8_ * (param2 - this.§93§) / this.§+p§;
            this.§+p§ = _loc8_;
            this.§5@§ = param1;
            this.§#!`§ = param2;
         }
         if(this.§+p§ <= this.§<!;§ * 0.45)
         {
            this.§3N§ = true;
         }
         else if(this.§3N§ && this.§+p§ >= this.§<!;§ * 0.8)
         {
            this.§5!W§();
            this.§3N§ = false;
         }
         this.§<!>§ = true;
         return true;
      }
      
      protected function §5!W§() : void
      {
         §5!O§.§-q§("SlingshotStreched");
      }
      
      public function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§+!L§,this.§!;§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§+!L§;
         this.§+!L§ = param1;
         var _loc5_:Number = param2 - this.§!;§;
         this.§!;§ = param2;
         this.§9!3§ += _loc5_;
         this.§93§ += _loc5_;
         this.§#!`§ += _loc5_;
         this.§"!Q§ += _loc4_;
         this.§5@§ += _loc4_;
         if(param3)
         {
            this.§`l§(0);
         }
         this.§<!>§ = true;
      }
      
      public function §#b§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§&b§ = null;
         _loc2_ = this.§^!O§[this.§3!H§];
         var _loc3_:Number = this.§+p§ / this.§<!;§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§=!!§.§9;§) : Number(§=!!§.§3l§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §=0§() : Point
      {
         var _loc1_:§&b§ = null;
         if(this.§^!O§.length > this.§3!H§)
         {
            _loc1_ = this.§^!O§[this.§3!H§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §3!F§() : Point
      {
         return new Point(this.§"!Q§,this.§93§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§&b§ = null;
         this.updateGroundControl(param1);
         if(this.§<!>§)
         {
            this.§`l§(param1);
         }
         this.§<0§ -= param1;
         if(this.§<0§ < 0)
         {
            this.§<0§ = 0;
         }
         if(this.mSlingShotState != §^!D§)
         {
            this.§"'§(param1,param2);
            _loc3_ = null;
            if(this.§^!O§.length > 0)
            {
               _loc3_ = this.§^!O§[this.§3!H§];
            }
            if(_loc3_)
            {
               _loc3_.§;!_§(param1);
            }
            if(!_loc3_)
            {
               this.setSlingShotState(§^!D§);
            }
            else if(this.mSlingShotState == §%!7§)
            {
               if(this.§<0§ <= 0)
               {
                  this.setSlingShotState(§<!T§);
                  _loc3_.§[8§();
               }
            }
            else if(this.mSlingShotState == §<!T§)
            {
               if(_loc3_.§<v§)
               {
                  this.setSlingShotState(§#<§);
               }
            }
            else if(this.mSlingShotState == §#<§)
            {
               _loc3_.setPosition(this.§5@§ - _loc3_.radius * Math.cos(this.§+i§ / (180 / Math.PI)),this.§#!`§ + _loc3_.radius * Math.sin(this.§+i§ / (180 / Math.PI)));
               if(this.§&_§)
               {
                  this.§#!E§(this.§+p§ / this.§<!;§,this.§+i§);
               }
            }
         }
      }
      
      public function §[!R§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§&b§ = null;
         if(this.§^!O§.length > 0)
         {
            _loc5_ = this.§^!O§[this.§3!H§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§#!E§(param3,param4);
      }
      
      protected function §#!E§(param1:Number, param2:Number) : void
      {
         var _loc3_:§&b§ = null;
         this.§;9§ = §[!U§;
         this.§8!+§ = §]!E§;
         if(this.§^!O§.length > 0)
         {
            _loc3_ = this.§^!O§[this.§3!H§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§&_§ = false;
         this.§`!&§ = new Date().time;
         this.§]!8§.§9!U§(_loc3_,param1,param2);
         this.§2o§(this.§3!H§,_loc3_.§-&§ > 0);
         this.§5!`§();
         if(this.§3!H§ >= this.§^!O§.length)
         {
            this.setSlingShotState(§^!D§);
         }
         else
         {
            this.setSlingShotState(§%!7§);
         }
      }
      
      protected function §5!`§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §5!O§.§-q§("BirdShot" + _loc1_);
      }
      
      public function §"'§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§3!H§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§^!O§.length)
         {
            if(this.mSlingShotState == § f§)
            {
               this.§^!O§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§^!O§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§&b§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§%B§();
         if(this.§,l§ >= this.§^!O§.length)
         {
            return false;
         }
         _loc1_ = this.§^!O§[this.§,l§];
         _loc2_ = §!h§.§2M§(_loc1_.name).score;
         this.§]!8§.addScore(_loc2_,§?0§.§^c§,true,_loc1_.x,_loc1_.y - 3,§=!F§.§4#§(_loc1_.name));
         _loc1_.§9!O§(-1,true);
         ++this.§,l§;
         return true;
      }
      
      public function §#!@§() : int
      {
         var _loc2_:§&b§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§^!O§)
         {
            _loc1_ += §!h§.§2M§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §^!W§() : int
      {
         return this.§`t§;
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§-K§ >= 0)
         {
            this.§-K§ -= param1;
            if(this.§-K§ <= 0)
            {
               _loc2_ = this.§]!8§.objects.§`!8§(this.§"!Q§,this.§9!3§);
               if(_loc2_ < 0)
               {
                  this.applyGravity(0.1);
                  this.§-K§ = 0;
               }
               else if(!this.§]!8§.objects.§,`§(_loc2_).§^o§)
               {
                  this.§-K§ = -1;
               }
               else if(this.§]!8§.objects.§,`§(_loc2_).§]!;§())
               {
                  this.§-K§ = 2000;
               }
               else
               {
                  this.§-K§ = 500;
               }
            }
         }
      }
      
      public function §^!§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§]!8§.objects.§`!8§(this.§"!Q§,this.§9!3§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.applyGravity(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§-K§ = -1;
      }
      
      public function §@^§(param1:Number, param2:Number) : void
      {
         this.§&!C§.x = -param1;
         this.§&!C§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §#<§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §#<§ && this.§+p§ > this.§<!;§ * §9!P§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.setSlingShotState(§#<§);
         var _loc1_:§&b§ = this.§^!O§[this.§3!H§];
         _loc1_.§9!O§(§=!D§.§ use§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§&b§ = this.§^!O§[this.§3!H§];
         _loc1_.§9!O§(§=!D§.§`"§);
      }
      
      public function shoot() : void
      {
         this.§&_§ = true;
      }
      
      protected function §2o§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§&b§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§^!O§[param1])
         {
            _loc3_ = this.§^!O§[param1];
            this.§%!-§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§&!8§(this.§^!O§[param1]);
            }
            _loc3_.dispose();
            this.§^!O§[param1] = null;
         }
         this.§^!O§.splice(param1,1);
      }
      
      public function §&!8§(param1:§&b§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §0!Z§.§+n§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §0!Z§.§+n§) + Math.random() * -_loc8_ * 2;
            this.§]!8§.particles.addParticle(§=!F§.§[<§,§;m§.§?=§,§=!F§.§'U§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§=!F§.§2T§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§]!8§.particles.addParticle(§=!F§.§^T§,§;m§.§?=§,§=!F§.§'U§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §"!0§(param1:§&b§) : void
      {
         this.§2o§(this.§^!O§.indexOf(param1));
      }
      
      public function §5K§() : void
      {
         var _loc2_:§&b§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§&b§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§^!O§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§+!L§ - this.§^!O§[_loc1_].x) * (this.§+!L§ - this.§^!O§[_loc1_].x) + (this.§!;§ - this.§^!O§[_loc1_].y) * (this.§!;§ - this.§^!O§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§+!L§ - this.§^!O§[_loc1_ + 1].x) * (this.§+!L§ - this.§^!O§[_loc1_ + 1].x) + (this.§!;§ - this.§^!O§[_loc1_ + 1].y) * (this.§!;§ - this.§^!O§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§^!O§[_loc1_];
               this.§^!O§.splice(_loc1_,1);
               this.§^!O§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§%!-§.numChildren > 0)
         {
            this.§%!-§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§^!O§.length)
         {
            _loc2_ = this.§^!O§[_loc1_];
            this.§%!-§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §,u§(param1:Number, param2:Number) : §&b§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§^!O§.length)
         {
            if(this.§^!O§[_loc3_])
            {
               if(this.§^!O§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§^!O§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §-;§(param1:Number, param2:Number) : §=!!§
      {
         if(param1 >= this.§+!L§ - this.§<!;§ / 4 && param1 <= this.§+!L§ + this.§<!;§ / 4 && param2 >= this.§!;§ - this.§<!;§ / 4 && this.§!;§ <= this.§9!3§)
         {
            return this;
         }
         return null;
      }
      
      public function §`!7§(param1:§;!Q§) : void
      {
         var _loc3_:§&b§ = null;
         var _loc4_:§!U§ = null;
         param1.§7;§ = this.§+!L§;
         param1.§1!6§ = this.§!;§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§^!O§.length)
         {
            _loc3_ = this.§^!O§[_loc2_];
            (_loc4_ = new §!U§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§3K§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §>!O§() : void
      {
         while(this.§^!O§.length > 0)
         {
            this.§"!0§(this.§^!O§[0]);
         }
      }
      
      public function §-!K§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§^!O§.length)
         {
            if(this.§^!O§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§^!O§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§+!L§ > param1.x && this.§+!L§ < param2.x && this.§!;§ > param1.y && this.§!;§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §&!X§() : Array
      {
         return [this.§`c§,this.§5O§];
      }
      
      public function §?^§(param1:String, param2:Number, param3:Number) : §&b§
      {
         var _loc4_:§&b§ = this.addSlingshotObject(param1,param2,param3);
         this.§5K§();
         return _loc4_;
      }
      
      public function §for§() : Number
      {
         return this.§^!O§.length;
      }
   }
}
