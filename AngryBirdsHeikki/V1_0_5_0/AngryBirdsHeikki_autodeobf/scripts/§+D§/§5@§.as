package §+D§
{
   import § !9§.Texture;
   import §1!K§.§>!<§;
   import §2!Q§.§'[§;
   import §8!I§.§4A§;
   import §8!I§.§=]§;
   import §=X§.§"!6§;
   import §?!B§.§[,§;
   import §?!B§.§^!U§;
   import §[=§.§=!I§;
   import §[=§.§@!#§;
   import §[=§.Sprite;
   import §[d§.§^?§;
   import §`!H§.§3!c§;
   import §`!H§.§5f§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §5@§
   {
      
      public static const §]K§:int = 0;
      
      public static const §[!`§:int = 1;
      
      public static const STATE_BIRD_IS_READY:int = 2;
      
      public static const §5c§:int = 3;
      
      public static const §9!D§:int = 5;
      
      public static const §&J§:int = 3151368;
      
      protected static const §&!X§:int = 8;
      
      protected static const §61§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const §2!$§:Number = 52.5;
      
      protected static const §1T§:Number = -0.7;
      
      protected static const §8!6§:Number = 0;
      
      protected static var §@![§:Texture;
      
      public static const §!h§:Number = 0.4;
       
      
      public var §^!4§:§5!P§;
      
      public var §<O§:Number;
      
      public var §92§:Number;
      
      public var §^9§:Number;
      
      protected var §'=§:Number;
      
      protected var §;r§:Number;
      
      protected var §?J§:Number;
      
      protected var §,§:Number;
      
      public var §&!M§:Number;
      
      public var §;I§:Boolean = false;
      
      protected var §!z§:Number;
      
      public var §>_§:Vector.<§">§>;
      
      public var §'!V§:int;
      
      public var §9N§:int;
      
      public var §]!1§:Number;
      
      public var §-!5§:Sprite;
      
      public var §%!-§:int = 0;
      
      public var § null§:Number = 0;
      
      public var §6>§:Array;
      
      public var §0!A§:Array;
      
      public var mSlingShotState:int;
      
      public var §%!N§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §3!I§:Boolean = false;
      
      public var §[8§:Number;
      
      protected var §%@§:Sprite;
      
      protected var §',§:§=!I§;
      
      protected var §8@§:§=!I§;
      
      protected var §'![§:Sprite;
      
      protected var §1H§:Sprite;
      
      protected var §>!L§:Sprite;
      
      protected var §'"§:§@!#§;
      
      protected var §3m§:§@!#§;
      
      private var §@#§:Number = 0;
      
      private var §75§:int = 0;
      
      protected var §&!Z§:Number = -0.7;
      
      protected var §;j§:Number = 0;
      
      public function §5@§(param1:§5!P§, param2:§"!6§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§^?§ = null;
         this.§>_§ = new Vector.<§">§>();
         super();
         this.§^!4§ = param1;
         this.§%@§ = param3;
         if(param2)
         {
            this.setPosition(param2.§``§,param2.§08§);
            this.§#!-§();
            _loc4_ = 0;
            while(_loc4_ < param2.§7!F§)
            {
               _loc5_ = param2.§1V§(_loc4_);
               this.addSlingshotObject(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§75§ = this.§#4§();
            this.§'!V§ = 0;
            if(this.§>_§.length <= 0)
            {
               §>!<§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§<O§ + " " + this.§92§);
               this.§#k§(§5c§);
            }
            else
            {
               this.§#k§(§]K§);
            }
         }
         else
         {
            §>!<§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§#k§(§5c§);
         }
         this.§[8§ = 0;
         this.§&!V§();
         this.update(0,true);
         this.§%!Z§();
         this.§<![§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§%@§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§@#§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§'!V§ < this.§>_§.length;
      }
      
      public function dispose() : void
      {
         while(this.§>_§.length > 0)
         {
            this.§?E§(0);
         }
         this.§>_§ = null;
         if(this.§%@§)
         {
            this.§%@§.dispose();
            this.§%@§ = null;
         }
         this.§-!5§ = null;
         this.§6>§ = null;
         this.§0!A§ = null;
      }
      
      public function §2!^§(param1:String, param2:Number, param3:Number, param4:int = -1) : §">§
      {
         var _loc5_:§">§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,param4)).§,w§();
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §">§
      {
         var _loc5_:§">§ = new §">§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§>_§.push(_loc5_);
         }
         else
         {
            this.§>_§.splice(param4,0,_loc5_);
         }
         this.§-!5§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §#k§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §]K§)
         {
            this.§#§();
            this.§]!1§ = 1000;
         }
         else if(this.mSlingShotState == §[!`§)
         {
            this.§#§();
            this.§]!1§ = 0;
         }
         else if(this.mSlingShotState == STATE_BIRD_IS_READY)
         {
            this.§]!1§ = 10000;
            this.§3!I§ = false;
            this.§#§();
         }
         else if(this.mSlingShotState == §5c§)
         {
            this.§#§();
            this.§]!1§ = 2000;
         }
         else if(this.mSlingShotState == §9!D§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§3!I§ = false;
               this.§#§();
               this.§>_§[this.§'!V§].setPosition(this.§?J§ - this.§>_§[this.§'!V§].radius * Math.cos(this.§ null§ / (180 / Math.PI)),this.§,§ + this.§>_§[this.§'!V§].radius * Math.sin(this.§ null§ / (180 / Math.PI)));
            }
            else
            {
               this.§#§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §"!d§() : §5!P§
      {
         return this.§^!4§;
      }
      
      public function §1g§() : Boolean
      {
         return this.mSlingShotState == §5c§ && this.§]!1§ <= 0;
      }
      
      private function §#!-§() : void
      {
         var _loc1_:§3!c§ = this.§=3§();
         var _loc2_:§5f§ = _loc1_.getFrame(0);
         var _loc3_:§5f§ = _loc1_.getFrame(1);
         this.§'"§ = new §@!#§(_loc2_.texture);
         this.§'"§.scaleX = _loc2_.scale;
         this.§'"§.scaleY = _loc2_.scale;
         this.§3m§ = new §@!#§(_loc3_.texture);
         this.§3m§.scaleX = _loc3_.scale;
         this.§3m§.scaleY = _loc3_.scale;
         this.§'!A§();
         this.§4x§();
         this.§-!5§ = new Sprite();
         this.§%@§.addChild(this.§'"§);
         this.§%@§.addChild(this.§'![§);
         this.§%@§.addChild(this.§-!5§);
         this.§%@§.addChild(this.§>!L§);
         this.§%@§.addChild(this.§1H§);
         this.§%@§.addChild(this.§3m§);
         this.§^9§ = this.§92§ + 8.5;
      }
      
      protected function §=3§() : §3!c§
      {
         return this.§^!4§.§]!%§.§3![§("SLINGSHOT");
      }
      
      public function §'!A§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§'=§ = this.§<O§;
         this.§;r§ = this.§92§;
         this.§!z§ = §9!4§.§!G§;
         _loc1_ = null;
      }
      
      protected function §4x§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§@![§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §@![§ = this.§^!4§.textureManager.§1!1§(_loc2_);
         }
         this.§>!L§ = new Sprite();
         var _loc1_:§@!#§ = new §@!#§(§@![§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§>!L§.addChild(_loc1_);
         this.§'![§ = new Sprite();
         this.§',§ = new §=!I§(2,2,§&J§);
         this.§'![§.addChild(this.§',§);
         this.§1H§ = new Sprite();
         this.§8@§ = new §=!I§(2,2,§&J§);
         this.§1H§.addChild(this.§8@§);
      }
      
      public function §<![§(param1:Number) : void
      {
         var _loc2_:Number = this.§,§ / §5!P§.§>M§;
         var _loc3_:Number = this.§?J§ / §5!P§.§>M§;
         var _loc4_:Number = 3.5 + 8 * ((this.§!z§ - this.§&!M§) / this.§!z§);
         this.§>!L§.x = _loc3_;
         this.§>!L§.y = _loc2_;
         this.§>!L§.rotation = -this.§ null§ / (180 / Math.PI);
         this.§'"§.x = this.§<O§ / §5!P§.§>M§ - 3;
         this.§'"§.y = this.§92§ / §5!P§.§>M§ - 30;
         this.§3m§.x = this.§<O§ / §5!P§.§>M§ - 30;
         this.§3m§.y = this.§92§ / §5!P§.§>M§ - 30;
         this.§1H§.x = this.§<O§ / §5!P§.§>M§ - 17;
         this.§1H§.y = this.§92§ / §5!P§.§>M§ + 5;
         this.§1H§.rotation = Math.atan2(_loc2_ - this.§1H§.y,_loc3_ - this.§1H§.x);
         this.§'![§.x = this.§<O§ / §5!P§.§>M§ + 22;
         this.§'![§.y = this.§92§ / §5!P§.§>M§;
         this.§'![§.rotation = Math.atan2(_loc2_ - this.§'![§.y,_loc3_ - this.§'![§.x);
         this.§8@§.width = Math.sqrt(Math.pow(_loc3_ - this.§1H§.x,2) + Math.pow(_loc2_ - this.§1H§.y,2));
         this.§',§.width = Math.sqrt(Math.pow(_loc3_ - this.§'![§.x,2) + Math.pow(_loc2_ - this.§'![§.y,2));
         this.§8@§.height = this.§',§.height = _loc4_ * 2;
         this.§8@§.y = -this.§8@§.height / 2;
         this.§',§.y = -this.§',§.height / 2;
         this.§%!N§ = false;
      }
      
      public function §<2§() : void
      {
         while(this.§>_§.length > 0)
         {
            this.§?E§(0,true);
         }
         this.§ var§();
         this.addSlingshotObject("BIRD_SARDINE",this.§<O§,this.§92§);
         this.§#k§(STATE_BIRD_IS_READY);
      }
      
      protected function § var§() : void
      {
         §'[§.§"]§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§#k§(§9!D§);
      }
      
      public function §#§() : void
      {
         this.setNewCoordinatesForRubber(this.§'=§,this.§;r§ + this.§!z§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§?J§ == param1 && this.§,§ == param2)
         {
            return true;
         }
         this.§&!M§ = Math.sqrt((param2 - this.§;r§) * (param2 - this.§;r§) + (param1 - this.§'=§) * (param1 - this.§'=§));
         if(this.§&!M§ > this.§!z§)
         {
            if(param3)
            {
               this.§&!M§ = Math.sqrt((this.§,§ - this.§;r§) * (this.§,§ - this.§;r§) + (this.§?J§ - this.§'=§) * (this.§?J§ - this.§'=§));
               return false;
            }
            param1 = this.§'=§ + this.§!z§ * (param1 - this.§'=§) / this.§&!M§;
            param2 = this.§;r§ + this.§!z§ * (param2 - this.§;r§) / this.§&!M§;
            this.§&!M§ = this.§!z§;
         }
         this.§?J§ = param1;
         this.§,§ = param2;
         this.§ null§ = Math.atan2(-(this.§,§ - this.§;r§),this.§?J§ - this.§'=§);
         this.§ null§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§?J§ = param1 + this.§&!Z§;
            this.§,§ = param2 + this.§;j§;
            this.§ null§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§!z§ / 2;
         if(this.§&!M§ > _loc7_ && this.§ null§ > -90 - _loc4_ + _loc5_ && this.§ null§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§'=§ + _loc7_ * (param1 - this.§'=§) / this.§&!M§;
            param2 = this.§;r§ + _loc7_ * (param2 - this.§;r§) / this.§&!M§;
            this.§&!M§ = _loc7_;
            this.§?J§ = param1;
            this.§,§ = param2;
         }
         else if(this.§&!M§ > _loc7_ && this.§ null§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§ null§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§!z§ - _loc7_) * (Math.abs(this.§ null§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§'=§ + _loc8_ * (param1 - this.§'=§) / this.§&!M§;
            param2 = this.§;r§ + _loc8_ * (param2 - this.§;r§) / this.§&!M§;
            this.§&!M§ = _loc8_;
            this.§?J§ = param1;
            this.§,§ = param2;
         }
         if(this.§&!M§ <= this.§!z§ * 0.45)
         {
            this.§;I§ = true;
         }
         else if(this.§;I§ && this.§&!M§ >= this.§!z§ * 0.8)
         {
            this.§5!V§();
            this.§;I§ = false;
         }
         this.§%!N§ = true;
         return true;
      }
      
      protected function §5!V§() : void
      {
         §'[§.§"]§("SlingshotStreched");
      }
      
      public function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§<O§,this.§92§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§<O§;
         this.§<O§ = param1;
         var _loc5_:Number = param2 - this.§92§;
         this.§92§ = param2;
         this.§^9§ += _loc5_;
         this.§;r§ += _loc5_;
         this.§,§ += _loc5_;
         this.§'=§ += _loc4_;
         this.§?J§ += _loc4_;
         if(param3)
         {
            this.§<![§(0);
         }
         this.§%!N§ = true;
      }
      
      public function §[![§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§">§ = null;
         _loc2_ = this.§>_§[this.§'!V§];
         var _loc3_:Number = this.§&!M§ / this.§!z§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§5@§.§2!$§) : Number(§5@§.BIRD_LAUNCH_FORCE);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §,]§() : Point
      {
         var _loc1_:§">§ = null;
         if(this.§>_§.length > this.§'!V§)
         {
            _loc1_ = this.§>_§[this.§'!V§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §83§() : Point
      {
         return new Point(this.§'=§,this.§;r§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§">§ = null;
         this.updateGroundControl(param1);
         if(this.§%!N§)
         {
            this.§<![§(param1);
         }
         this.§]!1§ -= param1;
         if(this.§]!1§ < 0)
         {
            this.§]!1§ = 0;
         }
         if(this.mSlingShotState != §5c§)
         {
            this.§@X§(param1,param2);
            _loc3_ = null;
            if(this.§>_§.length > 0)
            {
               _loc3_ = this.§>_§[this.§'!V§];
            }
            if(_loc3_)
            {
               _loc3_.§'J§(param1);
            }
            if(!_loc3_)
            {
               this.§#k§(§5c§);
            }
            else if(this.mSlingShotState == §]K§)
            {
               if(this.§]!1§ <= 0)
               {
                  this.§#k§(§[!`§);
                  _loc3_.§+!b§();
               }
            }
            else if(this.mSlingShotState == §[!`§)
            {
               if(_loc3_.§8!S§)
               {
                  this.§#k§(STATE_BIRD_IS_READY);
               }
            }
            else if(this.mSlingShotState == STATE_BIRD_IS_READY)
            {
               _loc3_.setPosition(this.§?J§ - _loc3_.radius * Math.cos(this.§ null§ / (180 / Math.PI)),this.§,§ + _loc3_.radius * Math.sin(this.§ null§ / (180 / Math.PI)));
               if(this.§3!I§)
               {
                  this.§@z§(this.§&!M§ / this.§!z§,this.§ null§);
               }
            }
         }
      }
      
      public function §0!T§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§">§ = null;
         if(this.§>_§.length > 0)
         {
            _loc5_ = this.§>_§[this.§'!V§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§@z§(param3,param4);
      }
      
      protected function §@z§(param1:Number, param2:Number) : void
      {
         var _loc3_:§">§ = null;
         this.§&!Z§ = §1T§;
         this.§;j§ = §8!6§;
         if(this.§>_§.length > 0)
         {
            _loc3_ = this.§>_§[this.§'!V§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§3!I§ = false;
         this.§@#§ = new Date().time;
         this.§^!4§.§1#§(_loc3_,param1,param2);
         this.§?E§(this.§'!V§,_loc3_.§;Z§ > 0);
         this.§1!M§();
         if(this.§'!V§ >= this.§>_§.length)
         {
            this.§#k§(§5c§);
         }
         else
         {
            this.§#k§(§]K§);
         }
      }
      
      protected function §1!M§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §'[§.§"]§("BirdShot" + _loc1_);
      }
      
      public function §@X§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§'!V§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§>_§.length)
         {
            if(this.mSlingShotState == §9!D§)
            {
               this.§>_§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§>_§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§">§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§#§();
         if(this.§9N§ >= this.§>_§.length)
         {
            return false;
         }
         _loc1_ = this.§>_§[this.§9N§];
         _loc2_ = §=]§.§^]§(_loc1_.name).score;
         this.§^!4§.addScore(_loc2_,§6+§.§@!"§,true,_loc1_.x,_loc1_.y - 3,§^!U§.§^!W§(_loc1_.name));
         _loc1_.§'!S§(-1,true);
         ++this.§9N§;
         return true;
      }
      
      public function §#4§() : int
      {
         var _loc2_:§">§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§>_§)
         {
            _loc1_ += §=]§.§^]§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §`B§() : int
      {
         return this.§75§;
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§[8§ >= 0)
         {
            this.§[8§ -= param1;
            if(this.§[8§ <= 0)
            {
               _loc2_ = this.§^!4§.objects.§,@§(this.§'=§,this.§^9§);
               if(_loc2_ < 0)
               {
                  this.applyGravity(0.1);
                  this.§[8§ = 0;
               }
               else if(!this.§^!4§.objects.§,!+§(_loc2_).§5!!§)
               {
                  this.§[8§ = -1;
               }
               else if(this.§^!4§.objects.§,!+§(_loc2_).§?!Q§())
               {
                  this.§[8§ = 2000;
               }
               else
               {
                  this.§[8§ = 500;
               }
            }
         }
      }
      
      public function §%!Z§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§^!4§.objects.§,@§(this.§'=§,this.§^9§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.applyGravity(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§[8§ = -1;
      }
      
      public function §@P§(param1:Number, param2:Number) : void
      {
         this.§%@§.x = -param1;
         this.§%@§.y = -param2;
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
         return this.mSlingShotState == STATE_BIRD_IS_READY && this.§&!M§ > this.§!z§ * §!h§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§#k§(STATE_BIRD_IS_READY);
         var _loc1_:§">§ = this.§>_§[this.§'!V§];
         _loc1_.§'!S§(§4A§.§+!d§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§">§ = this.§>_§[this.§'!V§];
         _loc1_.§'!S§(§4A§.§5b§);
      }
      
      public function shoot() : void
      {
         this.§3!I§ = true;
      }
      
      protected function §?E§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§">§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§>_§[param1])
         {
            _loc3_ = this.§>_§[param1];
            this.§-!5§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§[B§(this.§>_§[param1]);
            }
            _loc3_.dispose();
            this.§>_§[param1] = null;
         }
         this.§>_§.splice(param1,1);
      }
      
      public function §[B§(param1:§">§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §5!P§.§>M§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §5!P§.§>M§) + Math.random() * -_loc8_ * 2;
            this.§^!4§.particles.addParticle(§^!U§.§5!L§,§[,§.§'k§,§^!U§.§&6§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§^!U§.§1!2§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§^!4§.particles.addParticle(§^!U§.§4>§,§[,§.§'k§,§^!U§.§&6§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §7!8§(param1:§">§) : void
      {
         this.§?E§(this.§>_§.indexOf(param1));
      }
      
      public function §&!V§() : void
      {
         var _loc2_:§">§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§">§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§>_§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§<O§ - this.§>_§[_loc1_].x) * (this.§<O§ - this.§>_§[_loc1_].x) + (this.§92§ - this.§>_§[_loc1_].y) * (this.§92§ - this.§>_§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§<O§ - this.§>_§[_loc1_ + 1].x) * (this.§<O§ - this.§>_§[_loc1_ + 1].x) + (this.§92§ - this.§>_§[_loc1_ + 1].y) * (this.§92§ - this.§>_§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§>_§[_loc1_];
               this.§>_§.splice(_loc1_,1);
               this.§>_§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§-!5§.numChildren > 0)
         {
            this.§-!5§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§>_§.length)
         {
            _loc2_ = this.§>_§[_loc1_];
            this.§-!5§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §>]§(param1:Number, param2:Number) : §">§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§>_§.length)
         {
            if(this.§>_§[_loc3_])
            {
               if(this.§>_§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§>_§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §8t§(param1:Number, param2:Number) : §5@§
      {
         if(param1 >= this.§<O§ - this.§!z§ / 4 && param1 <= this.§<O§ + this.§!z§ / 4 && param2 >= this.§92§ - this.§!z§ / 4 && this.§92§ <= this.§^9§)
         {
            return this;
         }
         return null;
      }
      
      public function §,e§(param1:§"!6§) : void
      {
         var _loc3_:§">§ = null;
         var _loc4_:§^?§ = null;
         param1.§``§ = this.§<O§;
         param1.§08§ = this.§92§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§>_§.length)
         {
            _loc3_ = this.§>_§[_loc2_];
            (_loc4_ = new §^?§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§6!Y§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §'_§() : void
      {
         while(this.§>_§.length > 0)
         {
            this.§7!8§(this.§>_§[0]);
         }
      }
      
      public function §[n§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§>_§.length)
         {
            if(this.§>_§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§>_§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§<O§ > param1.x && this.§<O§ < param2.x && this.§92§ > param1.y && this.§92§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §1!V§() : Array
      {
         return [this.§3m§,this.§'"§];
      }
      
      public function §+B§(param1:String, param2:Number, param3:Number) : §">§
      {
         var _loc4_:§">§ = this.addSlingshotObject(param1,param2,param3);
         this.§&!V§();
         return _loc4_;
      }
      
      public function §0!$§() : Number
      {
         return this.§>_§.length;
      }
   }
}
