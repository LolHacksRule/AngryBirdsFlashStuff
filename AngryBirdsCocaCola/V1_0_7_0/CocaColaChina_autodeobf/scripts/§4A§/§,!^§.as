package §4A§
{
   import §#m§.§3T§;
   import §#m§.§`5§;
   import §+!S§.Texture;
   import §,!Q§.§%^§;
   import §,!Q§.§2P§;
   import §,!Q§.Sprite;
   import §,M§.§%C§;
   import §,M§.§,!;§;
   import §-X§.§5!F§;
   import §2l§.§4!Q§;
   import §2l§.§63§;
   import §2o§.§'%§;
   import §7m§.§7I§;
   import §?@§.§"]§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §,!^§
   {
      
      public static const §3A§:int = 0;
      
      public static const §+!$§:int = 1;
      
      public static const §+"§:int = 2;
      
      public static const §,B§:int = 3;
      
      public static const §<!E§:int = 5;
      
      public static const §5!G§:int = 3151368;
      
      protected static const §9!5§:int = 8;
      
      protected static const §]!]§:int = 0;
      
      public static const §2y§:Number = 46.25;
      
      public static const §93§:Number = 52.5;
      
      protected static const §7!Y§:Number = -0.7;
      
      protected static const §94§:Number = 0;
      
      protected static var §1&§:Texture;
      
      public static const §#§:Number = 0.4;
       
      
      public var mLevelMain:§&_§;
      
      public var §03§:Number;
      
      public var §5,§:Number;
      
      public var §%I§:Number;
      
      protected var § G§:Number;
      
      protected var §9!P§:Number;
      
      protected var §1A§:Number;
      
      protected var §+!&§:Number;
      
      public var §+]§:Number;
      
      public var §^+§:Boolean = false;
      
      protected var §!P§:Number;
      
      public var §6e§:Vector.<§>!=§>;
      
      public var §-L§:int;
      
      public var §,w§:int;
      
      public var §var§:Number;
      
      public var §3m§:Sprite;
      
      public var §+K§:int = 0;
      
      public var §'C§:Number = 0;
      
      public var §&!1§:Array;
      
      public var §!Y§:Array;
      
      public var mSlingShotState:int;
      
      public var §8!,§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §^!3§:Boolean = false;
      
      public var §;!5§:Number;
      
      protected var §]!+§:Sprite;
      
      protected var §]!§:§2P§;
      
      protected var §^!P§:§2P§;
      
      protected var §=v§:Sprite;
      
      protected var §[9§:Sprite;
      
      protected var §6g§:Sprite;
      
      protected var §%]§:§%^§;
      
      protected var §2!!§:§%^§;
      
      private var §=x§:Number = 0;
      
      private var §@`§:int = 0;
      
      protected var §]n§:Number = -0.7;
      
      protected var §0'§:Number = 0;
      
      public function §,!^§(param1:§&_§, param2:§5!F§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§'%§ = null;
         this.§6e§ = new Vector.<§>!=§>();
         super();
         this.mLevelMain = param1;
         this.§]!+§ = param3;
         if(param2)
         {
            this.setPosition(param2.§-!6§,param2.§;e§);
            this.§`&§();
            _loc4_ = 0;
            while(_loc4_ < param2.§,2§)
            {
               _loc5_ = param2.§'a§(_loc4_);
               this.§@D§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§@`§ = this.§=m§();
            this.§-L§ = 0;
            if(this.§6e§.length <= 0)
            {
               §"]§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§03§ + " " + this.§5,§);
               this.§0b§(§,B§);
            }
            else
            {
               this.§0b§(§3A§);
            }
         }
         else
         {
            §"]§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§0b§(§,B§);
         }
         this.§;!5§ = 0;
         this.§@!%§();
         this.update(0,true);
         this.§+1§();
         this.§+_§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§]!+§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§=x§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§-L§ < this.§6e§.length;
      }
      
      public function dispose() : void
      {
         while(this.§6e§.length > 0)
         {
            this.§;§(0);
         }
         this.§6e§ = null;
         if(this.§]!+§)
         {
            this.§]!+§.dispose();
            this.§]!+§ = null;
         }
         this.§3m§ = null;
         this.§&!1§ = null;
         this.§!Y§ = null;
      }
      
      public function §;c§(param1:String, param2:Number, param3:Number, param4:int = -1) : §>!=§
      {
         var _loc5_:§>!=§;
         (_loc5_ = this.§@D§(param1,param2,param3,param4)).§!!2§();
         return _loc5_;
      }
      
      protected function §@D§(param1:String, param2:Number, param3:Number, param4:int = -1) : §>!=§
      {
         var _loc5_:§>!=§ = new §>!=§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§6e§.push(_loc5_);
         }
         else
         {
            this.§6e§.splice(param4,0,_loc5_);
         }
         this.§3m§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §0b§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §3A§)
         {
            this.§`!Y§();
            this.§var§ = 1000;
         }
         else if(this.mSlingShotState == §+!$§)
         {
            this.§`!Y§();
            this.§var§ = 0;
         }
         else if(this.mSlingShotState == §+"§)
         {
            this.§var§ = 10000;
            this.§^!3§ = false;
            this.§`!Y§();
         }
         else if(this.mSlingShotState == §,B§)
         {
            this.§`!Y§();
            this.§var§ = 2000;
         }
         else if(this.mSlingShotState == §<!E§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§^!3§ = false;
               this.§`!Y§();
               this.§6e§[this.§-L§].setPosition(this.§1A§ - this.§6e§[this.§-L§].radius * Math.cos(this.§'C§ / (180 / Math.PI)),this.§+!&§ + this.§6e§[this.§-L§].radius * Math.sin(this.§'C§ / (180 / Math.PI)));
            }
            else
            {
               this.§`!Y§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §'!B§() : §&_§
      {
         return this.mLevelMain;
      }
      
      public function §?![§() : Boolean
      {
         return this.mSlingShotState == §,B§ && this.§var§ <= 0;
      }
      
      private function §`&§() : void
      {
         var _loc1_:§63§ = this.mLevelMain.§0!+§.§set §("SLINGSHOT");
         var _loc2_:§4!Q§ = _loc1_.getFrame(0);
         var _loc3_:§4!Q§ = _loc1_.getFrame(1);
         this.§%]§ = new §%^§(_loc2_.texture);
         this.§%]§.scaleX = _loc2_.scale;
         this.§%]§.scaleY = _loc2_.scale;
         this.§2!!§ = new §%^§(_loc3_.texture);
         this.§2!!§.scaleX = _loc3_.scale;
         this.§2!!§.scaleY = _loc3_.scale;
         this.§2c§();
         this.§^!^§();
         this.§3m§ = new Sprite();
         this.§]!+§.addChild(this.§%]§);
         this.§]!+§.addChild(this.§=v§);
         this.§]!+§.addChild(this.§3m§);
         this.§]!+§.addChild(this.§6g§);
         this.§]!+§.addChild(this.§[9§);
         this.§]!+§.addChild(this.§2!!§);
         this.§%I§ = this.§5,§ + 8.5;
      }
      
      public function §2c§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§ G§ = this.§03§;
         this.§9!P§ = this.§5,§;
         this.§!P§ = §96§.§+3§;
         _loc1_ = null;
      }
      
      protected function §^!^§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§1&§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §1&§ = this.mLevelMain.textureManager.§5!S§(_loc2_);
         }
         this.§6g§ = new Sprite();
         var _loc1_:§%^§ = new §%^§(§1&§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§6g§.addChild(_loc1_);
         this.§=v§ = new Sprite();
         this.§]!§ = new §2P§(2,2,§5!G§);
         this.§=v§.addChild(this.§]!§);
         this.§[9§ = new Sprite();
         this.§^!P§ = new §2P§(2,2,§5!G§);
         this.§[9§.addChild(this.§^!P§);
      }
      
      public function §+_§(param1:Number) : void
      {
         var _loc2_:Number = this.§+!&§ / §&_§.§5-§;
         var _loc3_:Number = this.§1A§ / §&_§.§5-§;
         var _loc4_:Number = 3.5 + 8 * ((this.§!P§ - this.§+]§) / this.§!P§);
         this.§6g§.x = _loc3_;
         this.§6g§.y = _loc2_;
         this.§6g§.rotation = -this.§'C§ / (180 / Math.PI);
         this.§%]§.x = this.§03§ / §&_§.§5-§ - 3;
         this.§%]§.y = this.§5,§ / §&_§.§5-§ - 30;
         this.§2!!§.x = this.§03§ / §&_§.§5-§ - 30;
         this.§2!!§.y = this.§5,§ / §&_§.§5-§ - 30;
         this.§[9§.x = this.§03§ / §&_§.§5-§ - 17;
         this.§[9§.y = this.§5,§ / §&_§.§5-§ + 5;
         this.§[9§.rotation = Math.atan2(_loc2_ - this.§[9§.y,_loc3_ - this.§[9§.x);
         this.§=v§.x = this.§03§ / §&_§.§5-§ + 22;
         this.§=v§.y = this.§5,§ / §&_§.§5-§;
         this.§=v§.rotation = Math.atan2(_loc2_ - this.§=v§.y,_loc3_ - this.§=v§.x);
         this.§^!P§.width = Math.sqrt(Math.pow(_loc3_ - this.§[9§.x,2) + Math.pow(_loc2_ - this.§[9§.y,2));
         this.§]!§.width = Math.sqrt(Math.pow(_loc3_ - this.§=v§.x,2) + Math.pow(_loc2_ - this.§=v§.y,2));
         this.§^!P§.height = this.§]!§.height = _loc4_ * 2;
         this.§^!P§.y = -this.§^!P§.height / 2;
         this.§]!§.y = -this.§]!§.height / 2;
         this.§8!,§ = false;
      }
      
      public function §>H§() : void
      {
         while(this.§6e§.length > 0)
         {
            this.§;§(0,true);
         }
         this.§9e§();
         this.§@D§("BIRD_SARDINE",this.§03§,this.§5,§);
         this.§0b§(§+"§);
      }
      
      protected function §9e§() : void
      {
         §7I§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§0b§(§<!E§);
      }
      
      public function §`!Y§() : void
      {
         this.setNewCoordinatesForRubber(this.§ G§,this.§9!P§ + this.§!P§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§1A§ == param1 && this.§+!&§ == param2)
         {
            return true;
         }
         this.§+]§ = Math.sqrt((param2 - this.§9!P§) * (param2 - this.§9!P§) + (param1 - this.§ G§) * (param1 - this.§ G§));
         if(this.§+]§ > this.§!P§)
         {
            if(param3)
            {
               this.§+]§ = Math.sqrt((this.§+!&§ - this.§9!P§) * (this.§+!&§ - this.§9!P§) + (this.§1A§ - this.§ G§) * (this.§1A§ - this.§ G§));
               return false;
            }
            param1 = this.§ G§ + this.§!P§ * (param1 - this.§ G§) / this.§+]§;
            param2 = this.§9!P§ + this.§!P§ * (param2 - this.§9!P§) / this.§+]§;
            this.§+]§ = this.§!P§;
         }
         this.§1A§ = param1;
         this.§+!&§ = param2;
         this.§'C§ = Math.atan2(-(this.§+!&§ - this.§9!P§),this.§1A§ - this.§ G§);
         this.§'C§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§1A§ = param1 + this.§]n§;
            this.§+!&§ = param2 + this.§0'§;
            this.§'C§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§!P§ / 2;
         if(this.§+]§ > _loc7_ && this.§'C§ > -90 - _loc4_ + _loc5_ && this.§'C§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§ G§ + _loc7_ * (param1 - this.§ G§) / this.§+]§;
            param2 = this.§9!P§ + _loc7_ * (param2 - this.§9!P§) / this.§+]§;
            this.§+]§ = _loc7_;
            this.§1A§ = param1;
            this.§+!&§ = param2;
         }
         else if(this.§+]§ > _loc7_ && this.§'C§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§'C§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§!P§ - _loc7_) * (Math.abs(this.§'C§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§ G§ + _loc8_ * (param1 - this.§ G§) / this.§+]§;
            param2 = this.§9!P§ + _loc8_ * (param2 - this.§9!P§) / this.§+]§;
            this.§+]§ = _loc8_;
            this.§1A§ = param1;
            this.§+!&§ = param2;
         }
         if(this.§+]§ <= this.§!P§ * 0.45)
         {
            this.§^+§ = true;
         }
         else if(this.§^+§ && this.§+]§ >= this.§!P§ * 0.8)
         {
            this.§8!T§();
            this.§^+§ = false;
         }
         this.§8!,§ = true;
         return true;
      }
      
      protected function §8!T§() : void
      {
         §7I§.playSound("SlingshotStreched");
      }
      
      public function §2A§(param1:Number) : void
      {
         this.setPosition(this.§03§,this.§5,§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§03§;
         this.§03§ = param1;
         var _loc5_:Number = param2 - this.§5,§;
         this.§5,§ = param2;
         this.§%I§ += _loc5_;
         this.§9!P§ += _loc5_;
         this.§+!&§ += _loc5_;
         this.§ G§ += _loc4_;
         this.§1A§ += _loc4_;
         if(param3)
         {
            this.§+_§(0);
         }
         this.§8!,§ = true;
      }
      
      public function §%!1§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§>!=§ = null;
         _loc2_ = this.§6e§[this.§-L§];
         var _loc3_:Number = this.§+]§ / this.§!P§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§,!^§.§93§) : Number(§,!^§.§2y§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §8!c§() : Point
      {
         var _loc1_:§>!=§ = null;
         if(this.§6e§.length > this.§-L§)
         {
            _loc1_ = this.§6e§[this.§-L§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §-e§() : Point
      {
         return new Point(this.§ G§,this.§9!P§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§>!=§ = null;
         this.§^!N§(param1);
         if(this.§8!,§)
         {
            this.§+_§(param1);
         }
         this.§var§ -= param1;
         if(this.§var§ < 0)
         {
            this.§var§ = 0;
         }
         if(this.mSlingShotState != §,B§)
         {
            this.§[!Y§(param1,param2);
            _loc3_ = null;
            if(this.§6e§.length > 0)
            {
               _loc3_ = this.§6e§[this.§-L§];
            }
            if(_loc3_)
            {
               _loc3_.§?x§(param1);
            }
            if(!_loc3_)
            {
               this.§0b§(§,B§);
            }
            else if(this.mSlingShotState == §3A§)
            {
               if(this.§var§ <= 0)
               {
                  this.§0b§(§+!$§);
                  _loc3_.§`4§();
               }
            }
            else if(this.mSlingShotState == §+!$§)
            {
               if(_loc3_.§6M§)
               {
                  this.§0b§(§+"§);
               }
            }
            else if(this.mSlingShotState == §+"§)
            {
               _loc3_.setPosition(this.§1A§ - _loc3_.radius * Math.cos(this.§'C§ / (180 / Math.PI)),this.§+!&§ + _loc3_.radius * Math.sin(this.§'C§ / (180 / Math.PI)));
               if(this.§^!3§)
               {
                  this.§&!]§(this.§+]§ / this.§!P§,this.§'C§);
               }
            }
         }
      }
      
      public function §'!M§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§>!=§ = null;
         if(this.§6e§.length > 0)
         {
            _loc5_ = this.§6e§[this.§-L§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§&!]§(param3,param4);
      }
      
      protected function §&!]§(param1:Number, param2:Number) : void
      {
         var _loc3_:§>!=§ = null;
         this.§]n§ = §7!Y§;
         this.§0'§ = §94§;
         if(this.§6e§.length > 0)
         {
            _loc3_ = this.§6e§[this.§-L§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§^!3§ = false;
         this.§=x§ = new Date().time;
         this.mLevelMain.§1!&§(_loc3_,param1,param2);
         this.§;§(this.§-L§,_loc3_.§<B§ > 0);
         this.§+!c§();
         if(this.§-L§ >= this.§6e§.length)
         {
            this.§0b§(§,B§);
         }
         else
         {
            this.§0b§(§3A§);
         }
      }
      
      protected function §+!c§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §7I§.playSound("BirdShot" + _loc1_);
      }
      
      public function §[!Y§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§-L§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§6e§.length)
         {
            if(this.mSlingShotState == §<!E§)
            {
               this.§6e§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§6e§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§>!=§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§`!Y§();
         if(this.§,w§ >= this.§6e§.length)
         {
            return false;
         }
         _loc1_ = this.§6e§[this.§,w§];
         _loc2_ = §3T§.§,!G§(_loc1_.name).score;
         this.mLevelMain.addScore(_loc2_,§-!3§.§<F§,true,_loc1_.x,_loc1_.y - 3,§,!;§.§%?§(_loc1_.name));
         _loc1_.§'!2§(-1,true);
         ++this.§,w§;
         return true;
      }
      
      public function §=m§() : int
      {
         var _loc2_:§>!=§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§6e§)
         {
            _loc1_ += §3T§.§,!G§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §&@§() : int
      {
         return this.§@`§;
      }
      
      public function §^!N§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§;!5§ >= 0)
         {
            this.§;!5§ -= param1;
            if(this.§;!5§ <= 0)
            {
               _loc2_ = this.mLevelMain.objects.§%!+§(this.§ G§,this.§%I§);
               if(_loc2_ < 0)
               {
                  this.§2A§(0.1);
                  this.§;!5§ = 0;
               }
               else if(!this.mLevelMain.objects.§2!-§(_loc2_).§6!E§)
               {
                  this.§;!5§ = -1;
               }
               else if(this.mLevelMain.objects.§2!-§(_loc2_).§]!<§())
               {
                  this.§;!5§ = 2000;
               }
               else
               {
                  this.§;!5§ = 500;
               }
            }
         }
      }
      
      public function §+1§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.mLevelMain.objects.§%!+§(this.§ G§,this.§%I§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§2A§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§;!5§ = -1;
      }
      
      public function §]H§(param1:Number, param2:Number) : void
      {
         this.§]!+§.x = -param1;
         this.§]!+§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §+"§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §+"§ && this.§+]§ > this.§!P§ * §#§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§0b§(§+"§);
         var _loc1_:§>!=§ = this.§6e§[this.§-L§];
         _loc1_.§'!2§(§`5§.§#^§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§>!=§ = this.§6e§[this.§-L§];
         _loc1_.§'!2§(§`5§.§?[§);
      }
      
      public function shoot() : void
      {
         this.§^!3§ = true;
      }
      
      protected function §;§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§>!=§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§6e§[param1])
         {
            _loc3_ = this.§6e§[param1];
            this.§3m§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§5F§(this.§6e§[param1]);
            }
            _loc3_.dispose();
            this.§6e§[param1] = null;
         }
         this.§6e§.splice(param1,1);
      }
      
      public function §5F§(param1:§>!=§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §&_§.§5-§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §&_§.§5-§) + Math.random() * -_loc8_ * 2;
            this.mLevelMain.particles.§<%§(§,!;§.§<!6§,§%C§.§5l§,§,!;§.§7s§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§,!;§.§%!$§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.mLevelMain.particles.§<%§(§,!;§.§^V§,§%C§.§5l§,§,!;§.§7s§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §+b§(param1:§>!=§) : void
      {
         this.§;§(this.§6e§.indexOf(param1));
      }
      
      public function §@!%§() : void
      {
         var _loc2_:§>!=§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§>!=§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§6e§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§03§ - this.§6e§[_loc1_].x) * (this.§03§ - this.§6e§[_loc1_].x) + (this.§5,§ - this.§6e§[_loc1_].y) * (this.§5,§ - this.§6e§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§03§ - this.§6e§[_loc1_ + 1].x) * (this.§03§ - this.§6e§[_loc1_ + 1].x) + (this.§5,§ - this.§6e§[_loc1_ + 1].y) * (this.§5,§ - this.§6e§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§6e§[_loc1_];
               this.§6e§.splice(_loc1_,1);
               this.§6e§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§3m§.numChildren > 0)
         {
            this.§3m§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§6e§.length)
         {
            _loc2_ = this.§6e§[_loc1_];
            this.§3m§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §-W§(param1:Number, param2:Number) : §>!=§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§6e§.length)
         {
            if(this.§6e§[_loc3_])
            {
               if(this.§6e§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§6e§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §!!P§(param1:Number, param2:Number) : §,!^§
      {
         if(param1 >= this.§03§ - this.§!P§ / 4 && param1 <= this.§03§ + this.§!P§ / 4 && param2 >= this.§5,§ - this.§!P§ / 4 && this.§5,§ <= this.§%I§)
         {
            return this;
         }
         return null;
      }
      
      public function §`q§(param1:§5!F§) : void
      {
         var _loc3_:§>!=§ = null;
         var _loc4_:§'%§ = null;
         param1.§-!6§ = this.§03§;
         param1.§;e§ = this.§5,§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§6e§.length)
         {
            _loc3_ = this.§6e§[_loc2_];
            (_loc4_ = new §'%§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§&!+§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §0!R§() : void
      {
         while(this.§6e§.length > 0)
         {
            this.§+b§(this.§6e§[0]);
         }
      }
      
      public function §2!]§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§6e§.length)
         {
            if(this.§6e§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§6e§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§03§ > param1.x && this.§03§ < param2.x && this.§5,§ > param1.y && this.§5,§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §'Q§() : Array
      {
         return [this.§2!!§,this.§%]§];
      }
      
      public function §!$§(param1:String, param2:Number, param3:Number) : §>!=§
      {
         var _loc4_:§>!=§ = this.§@D§(param1,param2,param3);
         this.§@!%§();
         return _loc4_;
      }
      
      public function §1!;§() : Number
      {
         return this.§6e§.length;
      }
   }
}
