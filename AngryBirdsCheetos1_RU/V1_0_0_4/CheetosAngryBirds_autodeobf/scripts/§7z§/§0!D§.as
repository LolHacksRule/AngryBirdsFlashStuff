package §7z§
{
   import §!4§.§0m§;
   import §!4§.§^!_§;
   import §#K§.§,3§;
   import §+!U§.§?r§;
   import §1!A§.§;a§;
   import §1!A§.§@!O§;
   import §1!A§.Sprite;
   import §5x§.§&o§;
   import §5x§.§]R§;
   import §8K§.§4i§;
   import §8K§.§9!S§;
   import §=q§.§?X§;
   import §^!&§.§;C§;
   import §^n§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §0!D§
   {
      
      public static const §+!@§:int = 0;
      
      public static const §0V§:int = 1;
      
      public static const §%2§:int = 2;
      
      public static const §6N§:int = 3;
      
      public static const §=N§:int = 5;
      
      public static const §;?§:int = 3151368;
      
      protected static const §@W§:int = 8;
      
      protected static const §9!2§:int = 0;
      
      public static const §^!W§:Number = 46.25;
      
      public static const §%&§:Number = 52.5;
      
      protected static const §-o§:Number = -0.7;
      
      protected static const §3h§:Number = 0;
      
      protected static var §#B§:Texture;
      
      public static const §<e§:Number = 0.4;
       
      
      public var §^'§:§]!-§;
      
      public var §6!Z§:Number;
      
      public var §,!A§:Number;
      
      public var §9d§:Number;
      
      protected var §-!^§:Number;
      
      protected var §'!L§:Number;
      
      protected var set:Number;
      
      protected var § 8§:Number;
      
      public var §-!X§:Number;
      
      public var § 6§:Boolean = false;
      
      protected var §`K§:Number;
      
      public var §`u§:Vector.<§&!>§>;
      
      public var §,B§:int;
      
      public var §function§:int;
      
      public var §-!M§:Number;
      
      public var §8!C§:Sprite;
      
      public var §!F§:int = 0;
      
      public var §`'§:Number = 0;
      
      public var §=P§:Array;
      
      public var §6a§:Array;
      
      public var mSlingShotState:int;
      
      public var §+4§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §&!B§:Boolean = false;
      
      public var §3B§:Number;
      
      protected var §0!5§:Sprite;
      
      protected var §#!!§:§@!O§;
      
      protected var §;[§:§@!O§;
      
      protected var §1j§:Sprite;
      
      protected var §5!_§:Sprite;
      
      protected var §9!V§:Sprite;
      
      protected var §4X§:§;a§;
      
      protected var §;!`§:§;a§;
      
      private var §0!^§:Number = 0;
      
      private var § !+§:int = 0;
      
      protected var §,s§:Number = -0.7;
      
      protected var §"O§:Number = 0;
      
      public function §0!D§(param1:§]!-§, param2:§?X§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§?r§ = null;
         this.§`u§ = new Vector.<§&!>§>();
         super();
         this.§^'§ = param1;
         this.§0!5§ = param3;
         if(param2)
         {
            this.setPosition(param2.§'l§,param2.§9L§);
            this.§8A§();
            _loc4_ = 0;
            while(_loc4_ < param2.§,I§)
            {
               _loc5_ = param2.§?w§(_loc4_);
               this.addSlingshotObject(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§ !+§ = this.§`!$§();
            this.§,B§ = 0;
            if(this.§`u§.length <= 0)
            {
               §;C§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§6!Z§ + " " + this.§,!A§);
               this.setSlingShotState(§6N§);
            }
            else
            {
               this.setSlingShotState(§+!@§);
            }
         }
         else
         {
            §;C§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.setSlingShotState(§6N§);
         }
         this.§3B§ = 0;
         this.§8h§();
         this.update(0,true);
         this.§ true§();
         this.§?!§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§0!5§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§0!^§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§,B§ < this.§`u§.length;
      }
      
      public function dispose() : void
      {
         while(this.§`u§.length > 0)
         {
            this.§5s§(0);
         }
         this.§`u§ = null;
         if(this.§0!5§)
         {
            this.§0!5§.dispose();
            this.§0!5§ = null;
         }
         this.§8!C§ = null;
         this.§=P§ = null;
         this.§6a§ = null;
      }
      
      public function § A§(param1:String, param2:Number, param3:Number, param4:int = -1) : §&!>§
      {
         var _loc5_:§&!>§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,param4)).§+T§();
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §&!>§
      {
         var _loc5_:§&!>§ = new §&!>§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§`u§.push(_loc5_);
         }
         else
         {
            this.§`u§.splice(param4,0,_loc5_);
         }
         this.§8!C§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function setSlingShotState(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §+!@§)
         {
            this.§2Q§();
            this.§-!M§ = 1000;
         }
         else if(this.mSlingShotState == §0V§)
         {
            this.§2Q§();
            this.§-!M§ = 0;
         }
         else if(this.mSlingShotState == §%2§)
         {
            this.§-!M§ = 10000;
            this.§&!B§ = false;
            this.§2Q§();
         }
         else if(this.mSlingShotState == §6N§)
         {
            this.§2Q§();
            this.§-!M§ = 2000;
         }
         else if(this.mSlingShotState == §=N§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§&!B§ = false;
               this.§2Q§();
               this.§`u§[this.§,B§].setPosition(this.set - this.§`u§[this.§,B§].radius * Math.cos(this.§`'§ / (180 / Math.PI)),this.§ 8§ + this.§`u§[this.§,B§].radius * Math.sin(this.§`'§ / (180 / Math.PI)));
            }
            else
            {
               this.§2Q§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §6J§() : §]!-§
      {
         return this.§^'§;
      }
      
      public function §2i§() : Boolean
      {
         return this.mSlingShotState == §6N§ && this.§-!M§ <= 0;
      }
      
      private function §8A§() : void
      {
         var _loc1_:§4i§ = this.§@7§();
         var _loc2_:§9!S§ = _loc1_.getFrame(0);
         var _loc3_:§9!S§ = _loc1_.getFrame(1);
         this.§4X§ = new §;a§(_loc2_.texture);
         this.§4X§.scaleX = _loc2_.scale;
         this.§4X§.scaleY = _loc2_.scale;
         this.§;!`§ = new §;a§(_loc3_.texture);
         this.§;!`§.scaleX = _loc3_.scale;
         this.§;!`§.scaleY = _loc3_.scale;
         this.§'!X§();
         this.§5!2§();
         this.§8!C§ = new Sprite();
         this.§0!5§.addChild(this.§4X§);
         this.§0!5§.addChild(this.§1j§);
         this.§0!5§.addChild(this.§8!C§);
         this.§0!5§.addChild(this.§9!V§);
         this.§0!5§.addChild(this.§5!_§);
         this.§0!5§.addChild(this.§;!`§);
         this.§9d§ = this.§,!A§ + 8.5;
      }
      
      protected function §@7§() : §4i§
      {
         return this.§^'§.§]]§.§<]§("SLINGSHOT");
      }
      
      public function §'!X§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§-!^§ = this.§6!Z§;
         this.§'!L§ = this.§,!A§;
         this.§`K§ = §5b§.§2H§;
         _loc1_ = null;
      }
      
      protected function §5!2§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§#B§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §#B§ = this.§^'§.§^!"§.§@U§(_loc2_);
         }
         this.§9!V§ = new Sprite();
         var _loc1_:§;a§ = new §;a§(§#B§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§9!V§.addChild(_loc1_);
         this.§1j§ = new Sprite();
         this.§#!!§ = new §@!O§(2,2,§;?§);
         this.§1j§.addChild(this.§#!!§);
         this.§5!_§ = new Sprite();
         this.§;[§ = new §@!O§(2,2,§;?§);
         this.§5!_§.addChild(this.§;[§);
      }
      
      public function §?!§(param1:Number) : void
      {
         var _loc2_:Number = this.§ 8§ / §]!-§.§>C§;
         var _loc3_:Number = this.set / §]!-§.§>C§;
         var _loc4_:Number = 3.5 + 8 * ((this.§`K§ - this.§-!X§) / this.§`K§);
         this.§9!V§.x = _loc3_;
         this.§9!V§.y = _loc2_;
         this.§9!V§.rotation = -this.§`'§ / (180 / Math.PI);
         this.§4X§.x = this.§6!Z§ / §]!-§.§>C§ - 3;
         this.§4X§.y = this.§,!A§ / §]!-§.§>C§ - 30;
         this.§;!`§.x = this.§6!Z§ / §]!-§.§>C§ - 30;
         this.§;!`§.y = this.§,!A§ / §]!-§.§>C§ - 30;
         this.§5!_§.x = this.§6!Z§ / §]!-§.§>C§ - 17;
         this.§5!_§.y = this.§,!A§ / §]!-§.§>C§ + 5;
         this.§5!_§.rotation = Math.atan2(_loc2_ - this.§5!_§.y,_loc3_ - this.§5!_§.x);
         this.§1j§.x = this.§6!Z§ / §]!-§.§>C§ + 22;
         this.§1j§.y = this.§,!A§ / §]!-§.§>C§;
         this.§1j§.rotation = Math.atan2(_loc2_ - this.§1j§.y,_loc3_ - this.§1j§.x);
         this.§;[§.width = Math.sqrt(Math.pow(_loc3_ - this.§5!_§.x,2) + Math.pow(_loc2_ - this.§5!_§.y,2));
         this.§#!!§.width = Math.sqrt(Math.pow(_loc3_ - this.§1j§.x,2) + Math.pow(_loc2_ - this.§1j§.y,2));
         this.§;[§.height = this.§#!!§.height = _loc4_ * 2;
         this.§;[§.y = -this.§;[§.height / 2;
         this.§#!!§.y = -this.§#!!§.height / 2;
         this.§+4§ = false;
      }
      
      public function §2!?§() : void
      {
         while(this.§`u§.length > 0)
         {
            this.§5s§(0,true);
         }
         this.§<h§();
         this.addSlingshotObject("BIRD_SARDINE",this.§6!Z§,this.§,!A§);
         this.setSlingShotState(§%2§);
      }
      
      protected function §<h§() : void
      {
         §,3§.§7!=§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.setSlingShotState(§=N§);
      }
      
      public function §2Q§() : void
      {
         this.setNewCoordinatesForRubber(this.§-!^§,this.§'!L§ + this.§`K§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.set == param1 && this.§ 8§ == param2)
         {
            return true;
         }
         this.§-!X§ = Math.sqrt((param2 - this.§'!L§) * (param2 - this.§'!L§) + (param1 - this.§-!^§) * (param1 - this.§-!^§));
         if(this.§-!X§ > this.§`K§)
         {
            if(param3)
            {
               this.§-!X§ = Math.sqrt((this.§ 8§ - this.§'!L§) * (this.§ 8§ - this.§'!L§) + (this.set - this.§-!^§) * (this.set - this.§-!^§));
               return false;
            }
            param1 = this.§-!^§ + this.§`K§ * (param1 - this.§-!^§) / this.§-!X§;
            param2 = this.§'!L§ + this.§`K§ * (param2 - this.§'!L§) / this.§-!X§;
            this.§-!X§ = this.§`K§;
         }
         this.set = param1;
         this.§ 8§ = param2;
         this.§`'§ = Math.atan2(-(this.§ 8§ - this.§'!L§),this.set - this.§-!^§);
         this.§`'§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.set = param1 + this.§,s§;
            this.§ 8§ = param2 + this.§"O§;
            this.§`'§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§`K§ / 2;
         if(this.§-!X§ > _loc7_ && this.§`'§ > -90 - _loc4_ + _loc5_ && this.§`'§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§-!^§ + _loc7_ * (param1 - this.§-!^§) / this.§-!X§;
            param2 = this.§'!L§ + _loc7_ * (param2 - this.§'!L§) / this.§-!X§;
            this.§-!X§ = _loc7_;
            this.set = param1;
            this.§ 8§ = param2;
         }
         else if(this.§-!X§ > _loc7_ && this.§`'§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§`'§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§`K§ - _loc7_) * (Math.abs(this.§`'§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§-!^§ + _loc8_ * (param1 - this.§-!^§) / this.§-!X§;
            param2 = this.§'!L§ + _loc8_ * (param2 - this.§'!L§) / this.§-!X§;
            this.§-!X§ = _loc8_;
            this.set = param1;
            this.§ 8§ = param2;
         }
         if(this.§-!X§ <= this.§`K§ * 0.45)
         {
            this.§ 6§ = true;
         }
         else if(this.§ 6§ && this.§-!X§ >= this.§`K§ * 0.8)
         {
            this.§"!-§();
            this.§ 6§ = false;
         }
         this.§+4§ = true;
         return true;
      }
      
      protected function §"!-§() : void
      {
         §,3§.§7!=§("SlingshotStreched");
      }
      
      public function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§6!Z§,this.§,!A§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§6!Z§;
         this.§6!Z§ = param1;
         var _loc5_:Number = param2 - this.§,!A§;
         this.§,!A§ = param2;
         this.§9d§ += _loc5_;
         this.§'!L§ += _loc5_;
         this.§ 8§ += _loc5_;
         this.§-!^§ += _loc4_;
         this.set += _loc4_;
         if(param3)
         {
            this.§?!§(0);
         }
         this.§+4§ = true;
      }
      
      public function §'&§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§&!>§ = null;
         _loc2_ = this.§`u§[this.§,B§];
         var _loc3_:Number = this.§-!X§ / this.§`K§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§0!D§.§%&§) : Number(§0!D§.§^!W§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §0,§() : Point
      {
         var _loc1_:§&!>§ = null;
         if(this.§`u§.length > this.§,B§)
         {
            _loc1_ = this.§`u§[this.§,B§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §^!+§() : Point
      {
         return new Point(this.§-!^§,this.§'!L§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§&!>§ = null;
         this.updateGroundControl(param1);
         if(this.§+4§)
         {
            this.§?!§(param1);
         }
         this.§-!M§ -= param1;
         if(this.§-!M§ < 0)
         {
            this.§-!M§ = 0;
         }
         if(this.mSlingShotState != §6N§)
         {
            this.§,!=§(param1,param2);
            _loc3_ = null;
            if(this.§`u§.length > 0)
            {
               _loc3_ = this.§`u§[this.§,B§];
            }
            if(_loc3_)
            {
               _loc3_.§['§(param1);
            }
            if(!_loc3_)
            {
               this.setSlingShotState(§6N§);
            }
            else if(this.mSlingShotState == §+!@§)
            {
               if(this.§-!M§ <= 0)
               {
                  this.setSlingShotState(§0V§);
                  _loc3_.§1!M§();
               }
            }
            else if(this.mSlingShotState == §0V§)
            {
               if(_loc3_.§^!P§)
               {
                  this.setSlingShotState(§%2§);
               }
            }
            else if(this.mSlingShotState == §%2§)
            {
               _loc3_.setPosition(this.set - _loc3_.radius * Math.cos(this.§`'§ / (180 / Math.PI)),this.§ 8§ + _loc3_.radius * Math.sin(this.§`'§ / (180 / Math.PI)));
               if(this.§&!B§)
               {
                  this.§#R§(this.§-!X§ / this.§`K§,this.§`'§);
               }
            }
         }
      }
      
      public function §"!>§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§&!>§ = null;
         if(this.§`u§.length > 0)
         {
            _loc5_ = this.§`u§[this.§,B§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§#R§(param3,param4);
      }
      
      protected function §#R§(param1:Number, param2:Number) : void
      {
         var _loc3_:§&!>§ = null;
         this.§,s§ = §-o§;
         this.§"O§ = §3h§;
         if(this.§`u§.length > 0)
         {
            _loc3_ = this.§`u§[this.§,B§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§&!B§ = false;
         this.§0!^§ = new Date().time;
         this.§^'§.§6!J§(_loc3_,param1,param2);
         this.§5s§(this.§,B§,_loc3_.§-w§ > 0);
         this.§%%§();
         if(this.§,B§ >= this.§`u§.length)
         {
            this.setSlingShotState(§6N§);
         }
         else
         {
            this.setSlingShotState(§+!@§);
         }
      }
      
      protected function §%%§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §,3§.§7!=§("BirdShot" + _loc1_);
      }
      
      public function §,!=§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§,B§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§`u§.length)
         {
            if(this.mSlingShotState == §=N§)
            {
               this.§`u§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§`u§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§&!>§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§2Q§();
         if(this.§function§ >= this.§`u§.length)
         {
            return false;
         }
         _loc1_ = this.§`u§[this.§function§];
         _loc2_ = §]R§.§;!H§(_loc1_.name).score;
         this.§^'§.addScore(_loc2_,§3a§.§+7§,true,_loc1_.x,_loc1_.y - 3,§^!_§.§9R§(_loc1_.name));
         _loc1_.§9K§(-1,true);
         ++this.§function§;
         return true;
      }
      
      public function §`!$§() : int
      {
         var _loc2_:§&!>§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§`u§)
         {
            _loc1_ += §]R§.§;!H§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §#!3§() : int
      {
         return this.§ !+§;
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§3B§ >= 0)
         {
            this.§3B§ -= param1;
            if(this.§3B§ <= 0)
            {
               _loc2_ = this.§^'§.objects.§8!I§(this.§-!^§,this.§9d§);
               if(_loc2_ < 0)
               {
                  this.applyGravity(0.1);
                  this.§3B§ = 0;
               }
               else if(!this.§^'§.objects.§7X§(_loc2_).§!X§)
               {
                  this.§3B§ = -1;
               }
               else if(this.§^'§.objects.§7X§(_loc2_).§2!H§())
               {
                  this.§3B§ = 2000;
               }
               else
               {
                  this.§3B§ = 500;
               }
            }
         }
      }
      
      public function § true§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§^'§.objects.§8!I§(this.§-!^§,this.§9d§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.applyGravity(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§3B§ = -1;
      }
      
      public function §4!B§(param1:Number, param2:Number) : void
      {
         this.§0!5§.x = -param1;
         this.§0!5§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §%2§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §%2§ && this.§-!X§ > this.§`K§ * §<e§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.setSlingShotState(§%2§);
         var _loc1_:§&!>§ = this.§`u§[this.§,B§];
         _loc1_.§9K§(§&o§.§<!C§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§&!>§ = this.§`u§[this.§,B§];
         _loc1_.§9K§(§&o§.§0!"§);
      }
      
      public function shoot() : void
      {
         this.§&!B§ = true;
      }
      
      protected function §5s§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§&!>§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§`u§[param1])
         {
            _loc3_ = this.§`u§[param1];
            this.§8!C§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§5!F§(this.§`u§[param1]);
            }
            _loc3_.dispose();
            this.§`u§[param1] = null;
         }
         this.§`u§.splice(param1,1);
      }
      
      public function §5!F§(param1:§&!>§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §]!-§.§>C§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §]!-§.§>C§) + Math.random() * -_loc8_ * 2;
            this.§^'§.particles.addParticle(§^!_§.§"1§,§0m§.§=!T§,§^!_§.§4t§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§^!_§.§2!N§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§^'§.particles.addParticle(§^!_§.§^4§,§0m§.§=!T§,§^!_§.§4t§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §^g§(param1:§&!>§) : void
      {
         this.§5s§(this.§`u§.indexOf(param1));
      }
      
      public function §8h§() : void
      {
         var _loc2_:§&!>§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§&!>§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§`u§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§6!Z§ - this.§`u§[_loc1_].x) * (this.§6!Z§ - this.§`u§[_loc1_].x) + (this.§,!A§ - this.§`u§[_loc1_].y) * (this.§,!A§ - this.§`u§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§6!Z§ - this.§`u§[_loc1_ + 1].x) * (this.§6!Z§ - this.§`u§[_loc1_ + 1].x) + (this.§,!A§ - this.§`u§[_loc1_ + 1].y) * (this.§,!A§ - this.§`u§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§`u§[_loc1_];
               this.§`u§.splice(_loc1_,1);
               this.§`u§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§8!C§.numChildren > 0)
         {
            this.§8!C§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§`u§.length)
         {
            _loc2_ = this.§`u§[_loc1_];
            this.§8!C§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §,L§(param1:Number, param2:Number) : §&!>§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§`u§.length)
         {
            if(this.§`u§[_loc3_])
            {
               if(this.§`u§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§`u§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §#!#§(param1:Number, param2:Number) : §0!D§
      {
         if(param1 >= this.§6!Z§ - this.§`K§ / 4 && param1 <= this.§6!Z§ + this.§`K§ / 4 && param2 >= this.§,!A§ - this.§`K§ / 4 && this.§,!A§ <= this.§9d§)
         {
            return this;
         }
         return null;
      }
      
      public function §0K§(param1:§?X§) : void
      {
         var _loc3_:§&!>§ = null;
         var _loc4_:§?r§ = null;
         param1.§'l§ = this.§6!Z§;
         param1.§9L§ = this.§,!A§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§`u§.length)
         {
            _loc3_ = this.§`u§[_loc2_];
            (_loc4_ = new §?r§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§<!!§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §#"§() : void
      {
         while(this.§`u§.length > 0)
         {
            this.§^g§(this.§`u§[0]);
         }
      }
      
      public function §%!&§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§`u§.length)
         {
            if(this.§`u§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§`u§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§6!Z§ > param1.x && this.§6!Z§ < param2.x && this.§,!A§ > param1.y && this.§,!A§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §8!&§() : Array
      {
         return [this.§;!`§,this.§4X§];
      }
      
      public function §>+§(param1:String, param2:Number, param3:Number) : §&!>§
      {
         var _loc4_:§&!>§ = this.addSlingshotObject(param1,param2,param3);
         this.§8h§();
         return _loc4_;
      }
      
      public function §<$§() : Number
      {
         return this.§`u§.length;
      }
   }
}
