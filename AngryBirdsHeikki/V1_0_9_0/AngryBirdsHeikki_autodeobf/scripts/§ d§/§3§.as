package § d§
{
   import § 0§.Texture;
   import §"§.§"@§;
   import §"§.§2z§;
   import §#!f§.§,!0§;
   import §#!f§.§9!,§;
   import §#!f§.Sprite;
   import §%i§.§#`§;
   import §0i§.§]_§;
   import §3!§.§2!$§;
   import §3!§.§3!W§;
   import §8! §.§1_§;
   import §@!"§.§"E§;
   import §^-§.§'!!§;
   import §^-§.§;!f§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §3§
   {
      
      public static const §;!§:int = 0;
      
      public static const §4F§:int = 1;
      
      public static const STATE_BIRD_IS_READY:int = 2;
      
      public static const §5m§:int = 3;
      
      public static const §@%§:int = 5;
      
      public static const §?!#§:int = 3151368;
      
      protected static const §>!8§:int = 8;
      
      protected static const §=y§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const §3@§:Number = 52.5;
      
      protected static const §,!5§:Number = -0.7;
      
      protected static const §91§:Number = 0;
      
      protected static var §;H§:Texture;
      
      public static const §^h§:Number = 0.4;
       
      
      public var §"2§:§'!"§;
      
      public var §`B§:Number;
      
      public var §,!9§:Number;
      
      public var §<F§:Number;
      
      protected var §!!G§:Number;
      
      protected var §&D§:Number;
      
      protected var §!![§:Number;
      
      protected var §=!&§:Number;
      
      public var §^!0§:Number;
      
      public var §2X§:Boolean = false;
      
      protected var §<K§:Number;
      
      public var §3!R§:Vector.<§=!,§>;
      
      public var §^L§:int;
      
      public var §@!F§:int;
      
      public var §4!I§:Number;
      
      public var §>'§:Sprite;
      
      public var §?H§:int = 0;
      
      public var §@0§:Number = 0;
      
      public var §2I§:Array;
      
      public var §?!&§:Array;
      
      public var mSlingShotState:int;
      
      public var §8!1§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §9!H§:Boolean = false;
      
      public var §"!@§:Number;
      
      protected var §3![§:Sprite;
      
      protected var §!8§:§,!0§;
      
      protected var §?N§:§,!0§;
      
      protected var §'!b§:Sprite;
      
      protected var §8K§:Sprite;
      
      protected var §!!2§:Sprite;
      
      protected var §-r§:§9!,§;
      
      protected var §@$§:§9!,§;
      
      private var §6!;§:Number = 0;
      
      private var §]!a§:int = 0;
      
      protected var § "§:Number = -0.7;
      
      protected var §]g§:Number = 0;
      
      public function §3§(param1:§'!"§, param2:§1_§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§"E§ = null;
         this.§3!R§ = new Vector.<§=!,§>();
         super();
         this.§"2§ = param1;
         this.§3![§ = param3;
         if(param2)
         {
            this.setPosition(param2.§4z§,param2.§^x§);
            this.§,!P§();
            _loc4_ = 0;
            while(_loc4_ < param2.§@!K§)
            {
               _loc5_ = param2.§3Q§(_loc4_);
               this.addSlingshotObject(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§]!a§ = this.§'!J§();
            this.§^L§ = 0;
            if(this.§3!R§.length <= 0)
            {
               §]_§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§`B§ + " " + this.§,!9§);
               this.§;!-§(§5m§);
            }
            else
            {
               this.§;!-§(§;!§);
            }
         }
         else
         {
            §]_§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§;!-§(§5m§);
         }
         this.§"!@§ = 0;
         this.§+!f§();
         this.update(0,true);
         this.§ set§();
         this.§"O§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§3![§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§6!;§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§^L§ < this.§3!R§.length;
      }
      
      public function dispose() : void
      {
         while(this.§3!R§.length > 0)
         {
            this.§4^§(0);
         }
         this.§3!R§ = null;
         if(this.§3![§)
         {
            this.§3![§.dispose();
            this.§3![§ = null;
         }
         this.§>'§ = null;
         this.§2I§ = null;
         this.§?!&§ = null;
      }
      
      public function §8!5§(param1:String, param2:Number, param3:Number, param4:int = -1) : §=!,§
      {
         var _loc5_:§=!,§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,param4)).§["§();
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §=!,§
      {
         var _loc5_:§=!,§ = new §=!,§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§3!R§.push(_loc5_);
         }
         else
         {
            this.§3!R§.splice(param4,0,_loc5_);
         }
         this.§>'§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §;!-§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §;!§)
         {
            this.§25§();
            this.§4!I§ = 1000;
         }
         else if(this.mSlingShotState == §4F§)
         {
            this.§25§();
            this.§4!I§ = 0;
         }
         else if(this.mSlingShotState == STATE_BIRD_IS_READY)
         {
            this.§4!I§ = 10000;
            this.§9!H§ = false;
            this.§25§();
         }
         else if(this.mSlingShotState == §5m§)
         {
            this.§25§();
            this.§4!I§ = 2000;
         }
         else if(this.mSlingShotState == §@%§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§9!H§ = false;
               this.§25§();
               this.§3!R§[this.§^L§].setPosition(this.§!![§ - this.§3!R§[this.§^L§].radius * Math.cos(this.§@0§ / (180 / Math.PI)),this.§=!&§ + this.§3!R§[this.§^L§].radius * Math.sin(this.§@0§ / (180 / Math.PI)));
            }
            else
            {
               this.§25§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §@!a§() : §'!"§
      {
         return this.§"2§;
      }
      
      public function §0J§() : Boolean
      {
         return this.mSlingShotState == §5m§ && this.§4!I§ <= 0;
      }
      
      private function §,!P§() : void
      {
         var _loc1_:§3!W§ = this.§^z§();
         var _loc2_:§2!$§ = _loc1_.getFrame(0);
         var _loc3_:§2!$§ = _loc1_.getFrame(1);
         this.§-r§ = new §9!,§(_loc2_.texture);
         this.§-r§.scaleX = _loc2_.scale;
         this.§-r§.scaleY = _loc2_.scale;
         this.§@$§ = new §9!,§(_loc3_.texture);
         this.§@$§.scaleX = _loc3_.scale;
         this.§@$§.scaleY = _loc3_.scale;
         this.§22§();
         this.§#!!§();
         this.§>'§ = new Sprite();
         this.§3![§.addChild(this.§-r§);
         this.§3![§.addChild(this.§'!b§);
         this.§3![§.addChild(this.§>'§);
         this.§3![§.addChild(this.§!!2§);
         this.§3![§.addChild(this.§8K§);
         this.§3![§.addChild(this.§@$§);
         this.§<F§ = this.§,!9§ + 8.5;
      }
      
      protected function §^z§() : §3!W§
      {
         return this.§"2§.§4!2§.§'k§("SLINGSHOT");
      }
      
      public function §22§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§!!G§ = this.§`B§;
         this.§&D§ = this.§,!9§;
         this.§<K§ = §&!S§.§4!=§;
         _loc1_ = null;
      }
      
      protected function §#!!§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§;H§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §;H§ = this.§"2§.textureManager.§-Z§(_loc2_);
         }
         this.§!!2§ = new Sprite();
         var _loc1_:§9!,§ = new §9!,§(§;H§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§!!2§.addChild(_loc1_);
         this.§'!b§ = new Sprite();
         this.§!8§ = new §,!0§(2,2,§?!#§);
         this.§'!b§.addChild(this.§!8§);
         this.§8K§ = new Sprite();
         this.§?N§ = new §,!0§(2,2,§?!#§);
         this.§8K§.addChild(this.§?N§);
      }
      
      public function §"O§(param1:Number) : void
      {
         var _loc2_:Number = this.§=!&§ / §'!"§.§#3§;
         var _loc3_:Number = this.§!![§ / §'!"§.§#3§;
         var _loc4_:Number = 3.5 + 8 * ((this.§<K§ - this.§^!0§) / this.§<K§);
         this.§!!2§.x = _loc3_;
         this.§!!2§.y = _loc2_;
         this.§!!2§.rotation = -this.§@0§ / (180 / Math.PI);
         this.§-r§.x = this.§`B§ / §'!"§.§#3§ - 3;
         this.§-r§.y = this.§,!9§ / §'!"§.§#3§ - 30;
         this.§@$§.x = this.§`B§ / §'!"§.§#3§ - 30;
         this.§@$§.y = this.§,!9§ / §'!"§.§#3§ - 30;
         this.§8K§.x = this.§`B§ / §'!"§.§#3§ - 17;
         this.§8K§.y = this.§,!9§ / §'!"§.§#3§ + 5;
         this.§8K§.rotation = Math.atan2(_loc2_ - this.§8K§.y,_loc3_ - this.§8K§.x);
         this.§'!b§.x = this.§`B§ / §'!"§.§#3§ + 22;
         this.§'!b§.y = this.§,!9§ / §'!"§.§#3§;
         this.§'!b§.rotation = Math.atan2(_loc2_ - this.§'!b§.y,_loc3_ - this.§'!b§.x);
         this.§?N§.width = Math.sqrt(Math.pow(_loc3_ - this.§8K§.x,2) + Math.pow(_loc2_ - this.§8K§.y,2));
         this.§!8§.width = Math.sqrt(Math.pow(_loc3_ - this.§'!b§.x,2) + Math.pow(_loc2_ - this.§'!b§.y,2));
         this.§?N§.height = this.§!8§.height = _loc4_ * 2;
         this.§?N§.y = -this.§?N§.height / 2;
         this.§!8§.y = -this.§!8§.height / 2;
         this.§8!1§ = false;
      }
      
      public function §9!d§() : void
      {
         while(this.§3!R§.length > 0)
         {
            this.§4^§(0,true);
         }
         this.§0r§();
         this.addSlingshotObject("BIRD_SARDINE",this.§`B§,this.§,!9§);
         this.§;!-§(STATE_BIRD_IS_READY);
      }
      
      protected function §0r§() : void
      {
         §#`§.§2o§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§;!-§(§@%§);
      }
      
      public function §25§() : void
      {
         this.setNewCoordinatesForRubber(this.§!!G§,this.§&D§ + this.§<K§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§!![§ == param1 && this.§=!&§ == param2)
         {
            return true;
         }
         this.§^!0§ = Math.sqrt((param2 - this.§&D§) * (param2 - this.§&D§) + (param1 - this.§!!G§) * (param1 - this.§!!G§));
         if(this.§^!0§ > this.§<K§)
         {
            if(param3)
            {
               this.§^!0§ = Math.sqrt((this.§=!&§ - this.§&D§) * (this.§=!&§ - this.§&D§) + (this.§!![§ - this.§!!G§) * (this.§!![§ - this.§!!G§));
               return false;
            }
            param1 = this.§!!G§ + this.§<K§ * (param1 - this.§!!G§) / this.§^!0§;
            param2 = this.§&D§ + this.§<K§ * (param2 - this.§&D§) / this.§^!0§;
            this.§^!0§ = this.§<K§;
         }
         this.§!![§ = param1;
         this.§=!&§ = param2;
         this.§@0§ = Math.atan2(-(this.§=!&§ - this.§&D§),this.§!![§ - this.§!!G§);
         this.§@0§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§!![§ = param1 + this.§ "§;
            this.§=!&§ = param2 + this.§]g§;
            this.§@0§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§<K§ / 2;
         if(this.§^!0§ > _loc7_ && this.§@0§ > -90 - _loc4_ + _loc5_ && this.§@0§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§!!G§ + _loc7_ * (param1 - this.§!!G§) / this.§^!0§;
            param2 = this.§&D§ + _loc7_ * (param2 - this.§&D§) / this.§^!0§;
            this.§^!0§ = _loc7_;
            this.§!![§ = param1;
            this.§=!&§ = param2;
         }
         else if(this.§^!0§ > _loc7_ && this.§@0§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§@0§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§<K§ - _loc7_) * (Math.abs(this.§@0§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§!!G§ + _loc8_ * (param1 - this.§!!G§) / this.§^!0§;
            param2 = this.§&D§ + _loc8_ * (param2 - this.§&D§) / this.§^!0§;
            this.§^!0§ = _loc8_;
            this.§!![§ = param1;
            this.§=!&§ = param2;
         }
         if(this.§^!0§ <= this.§<K§ * 0.45)
         {
            this.§2X§ = true;
         }
         else if(this.§2X§ && this.§^!0§ >= this.§<K§ * 0.8)
         {
            this.§0!`§();
            this.§2X§ = false;
         }
         this.§8!1§ = true;
         return true;
      }
      
      protected function §0!`§() : void
      {
         §#`§.§2o§("SlingshotStreched");
      }
      
      public function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§`B§,this.§,!9§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§`B§;
         this.§`B§ = param1;
         var _loc5_:Number = param2 - this.§,!9§;
         this.§,!9§ = param2;
         this.§<F§ += _loc5_;
         this.§&D§ += _loc5_;
         this.§=!&§ += _loc5_;
         this.§!!G§ += _loc4_;
         this.§!![§ += _loc4_;
         if(param3)
         {
            this.§"O§(0);
         }
         this.§8!1§ = true;
      }
      
      public function §8!0§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§=!,§ = null;
         _loc2_ = this.§3!R§[this.§^L§];
         var _loc3_:Number = this.§^!0§ / this.§<K§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§3§.§3@§) : Number(§3§.BIRD_LAUNCH_FORCE);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §!<§() : Point
      {
         var _loc1_:§=!,§ = null;
         if(this.§3!R§.length > this.§^L§)
         {
            _loc1_ = this.§3!R§[this.§^L§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §2! §() : Point
      {
         return new Point(this.§!!G§,this.§&D§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§=!,§ = null;
         this.updateGroundControl(param1);
         if(this.§8!1§)
         {
            this.§"O§(param1);
         }
         this.§4!I§ -= param1;
         if(this.§4!I§ < 0)
         {
            this.§4!I§ = 0;
         }
         if(this.mSlingShotState != §5m§)
         {
            this.§@,§(param1,param2);
            _loc3_ = null;
            if(this.§3!R§.length > 0)
            {
               _loc3_ = this.§3!R§[this.§^L§];
            }
            if(_loc3_)
            {
               _loc3_.§+!?§(param1);
            }
            if(!_loc3_)
            {
               this.§;!-§(§5m§);
            }
            else if(this.mSlingShotState == §;!§)
            {
               if(this.§4!I§ <= 0)
               {
                  this.§;!-§(§4F§);
                  _loc3_.§[Z§();
               }
            }
            else if(this.mSlingShotState == §4F§)
            {
               if(_loc3_.§6>§)
               {
                  this.§;!-§(STATE_BIRD_IS_READY);
               }
            }
            else if(this.mSlingShotState == STATE_BIRD_IS_READY)
            {
               _loc3_.setPosition(this.§!![§ - _loc3_.radius * Math.cos(this.§@0§ / (180 / Math.PI)),this.§=!&§ + _loc3_.radius * Math.sin(this.§@0§ / (180 / Math.PI)));
               if(this.§9!H§)
               {
                  this.§%a§(this.§^!0§ / this.§<K§,this.§@0§);
               }
            }
         }
      }
      
      public function §;!F§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§=!,§ = null;
         if(this.§3!R§.length > 0)
         {
            _loc5_ = this.§3!R§[this.§^L§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§%a§(param3,param4);
      }
      
      protected function §%a§(param1:Number, param2:Number) : void
      {
         var _loc3_:§=!,§ = null;
         this.§ "§ = §,!5§;
         this.§]g§ = §91§;
         if(this.§3!R§.length > 0)
         {
            _loc3_ = this.§3!R§[this.§^L§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§9!H§ = false;
         this.§6!;§ = new Date().time;
         this.§"2§.§!Y§(_loc3_,param1,param2);
         this.§4^§(this.§^L§,_loc3_.§^!O§ > 0);
         this.§!$§();
         if(this.§^L§ >= this.§3!R§.length)
         {
            this.§;!-§(§5m§);
         }
         else
         {
            this.§;!-§(§;!§);
         }
      }
      
      protected function §!$§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §#`§.§2o§("BirdShot" + _loc1_);
      }
      
      public function §@,§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§^L§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§3!R§.length)
         {
            if(this.mSlingShotState == §@%§)
            {
               this.§3!R§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§3!R§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§=!,§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§25§();
         if(this.§@!F§ >= this.§3!R§.length)
         {
            return false;
         }
         _loc1_ = this.§3!R§[this.§@!F§];
         _loc2_ = §;!f§.§]!L§(_loc1_.name).score;
         this.§"2§.addScore(_loc2_,§]!_§.§+!#§,true,_loc1_.x,_loc1_.y - 3,§2z§.§=6§(_loc1_.name));
         _loc1_.§@H§(-1,true);
         ++this.§@!F§;
         return true;
      }
      
      public function §'!J§() : int
      {
         var _loc2_:§=!,§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§3!R§)
         {
            _loc1_ += §;!f§.§]!L§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §#^§() : int
      {
         return this.§]!a§;
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§"!@§ >= 0)
         {
            this.§"!@§ -= param1;
            if(this.§"!@§ <= 0)
            {
               _loc2_ = this.§"2§.objects.§3!+§(this.§!!G§,this.§<F§);
               if(_loc2_ < 0)
               {
                  this.applyGravity(0.1);
                  this.§"!@§ = 0;
               }
               else if(!this.§"2§.objects.§<Q§(_loc2_).§7$§)
               {
                  this.§"!@§ = -1;
               }
               else if(this.§"2§.objects.§<Q§(_loc2_).§?g§())
               {
                  this.§"!@§ = 2000;
               }
               else
               {
                  this.§"!@§ = 500;
               }
            }
         }
      }
      
      public function § set§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§"2§.objects.§3!+§(this.§!!G§,this.§<F§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.applyGravity(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§"!@§ = -1;
      }
      
      public function §9!J§(param1:Number, param2:Number) : void
      {
         this.§3![§.x = -param1;
         this.§3![§.y = -param2;
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
         return this.mSlingShotState == STATE_BIRD_IS_READY && this.§^!0§ > this.§<K§ * §^h§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§;!-§(STATE_BIRD_IS_READY);
         var _loc1_:§=!,§ = this.§3!R§[this.§^L§];
         _loc1_.§@H§(§'!!§.§^[§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§=!,§ = this.§3!R§[this.§^L§];
         _loc1_.§@H§(§'!!§.§5w§);
      }
      
      public function shoot() : void
      {
         this.§9!H§ = true;
      }
      
      protected function §4^§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§=!,§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§3!R§[param1])
         {
            _loc3_ = this.§3!R§[param1];
            this.§>'§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§2w§(this.§3!R§[param1]);
            }
            _loc3_.dispose();
            this.§3!R§[param1] = null;
         }
         this.§3!R§.splice(param1,1);
      }
      
      public function §2w§(param1:§=!,§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §'!"§.§#3§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §'!"§.§#3§) + Math.random() * -_loc8_ * 2;
            this.§"2§.particles.addParticle(§2z§.§?^§,§"@§.§6^§,§2z§.§<A§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§2z§.§?1§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§"2§.particles.addParticle(§2z§.§]!`§,§"@§.§6^§,§2z§.§<A§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §@&§(param1:§=!,§) : void
      {
         this.§4^§(this.§3!R§.indexOf(param1));
      }
      
      public function §+!f§() : void
      {
         var _loc2_:§=!,§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§=!,§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§3!R§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§`B§ - this.§3!R§[_loc1_].x) * (this.§`B§ - this.§3!R§[_loc1_].x) + (this.§,!9§ - this.§3!R§[_loc1_].y) * (this.§,!9§ - this.§3!R§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§`B§ - this.§3!R§[_loc1_ + 1].x) * (this.§`B§ - this.§3!R§[_loc1_ + 1].x) + (this.§,!9§ - this.§3!R§[_loc1_ + 1].y) * (this.§,!9§ - this.§3!R§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§3!R§[_loc1_];
               this.§3!R§.splice(_loc1_,1);
               this.§3!R§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§>'§.numChildren > 0)
         {
            this.§>'§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§3!R§.length)
         {
            _loc2_ = this.§3!R§[_loc1_];
            this.§>'§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §>!d§(param1:Number, param2:Number) : §=!,§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§3!R§.length)
         {
            if(this.§3!R§[_loc3_])
            {
               if(this.§3!R§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§3!R§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function § A§(param1:Number, param2:Number) : §3§
      {
         if(param1 >= this.§`B§ - this.§<K§ / 4 && param1 <= this.§`B§ + this.§<K§ / 4 && param2 >= this.§,!9§ - this.§<K§ / 4 && this.§,!9§ <= this.§<F§)
         {
            return this;
         }
         return null;
      }
      
      public function §73§(param1:§1_§) : void
      {
         var _loc3_:§=!,§ = null;
         var _loc4_:§"E§ = null;
         param1.§4z§ = this.§`B§;
         param1.§^x§ = this.§,!9§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§3!R§.length)
         {
            _loc3_ = this.§3!R§[_loc2_];
            (_loc4_ = new §"E§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§`!L§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §!J§() : void
      {
         while(this.§3!R§.length > 0)
         {
            this.§@&§(this.§3!R§[0]);
         }
      }
      
      public function §[!`§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§3!R§.length)
         {
            if(this.§3!R§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§3!R§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§`B§ > param1.x && this.§`B§ < param2.x && this.§,!9§ > param1.y && this.§,!9§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §%h§() : Array
      {
         return [this.§@$§,this.§-r§];
      }
      
      public function §+O§(param1:String, param2:Number, param3:Number) : §=!,§
      {
         var _loc4_:§=!,§ = this.addSlingshotObject(param1,param2,param3);
         this.§+!f§();
         return _loc4_;
      }
      
      public function §2§() : Number
      {
         return this.§3!R§.length;
      }
   }
}
