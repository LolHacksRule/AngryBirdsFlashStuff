package §4A§
{
   import § !K§.§&&§;
   import § !K§.§5+§;
   import § !K§.Sprite;
   import §"![§.Texture;
   import §'!G§.§1C§;
   import §7I§.§<!0§;
   import §86§.§9]§;
   import §9!Y§.§"#§;
   import §9!Y§.§<!%§;
   import §;G§.§1D§;
   import §;G§.§;Z§;
   import §^p§.§0u§;
   import §^p§.§[!P§;
   import §`!C§.§%@§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §3m§
   {
      
      public static const §7!Y§:int = 0;
      
      public static const §94§:int = 1;
      
      public static const §1&§:int = 2;
      
      public static const §#§:int = 3;
      
      public static const §0!!§:int = 5;
      
      public static const §!O§:int = 3151368;
      
      protected static const §`i§:int = 8;
      
      protected static const § !&§:int = 0;
      
      public static const §?!K§:Number = 46.25;
      
      public static const §`z§:Number = 52.5;
      
      protected static var §%6§:Texture;
      
      public static const §9M§:Number = 0.4;
       
      
      public var mLevelMain:§&_§;
      
      public var §03§:Number;
      
      public var §5,§:Number;
      
      public var §%I§:Number;
      
      protected var §+K§:Number;
      
      protected var §'C§:Number;
      
      protected var §&!1§:Number;
      
      protected var §!Y§:Number;
      
      public var §8!,§:Number;
      
      public var §^!3§:Boolean = false;
      
      protected var §]!§:Number;
      
      public var §^!P§:Vector.<§>!=§>;
      
      public var §=v§:int;
      
      public var §[9§:int;
      
      public var §6g§:Number;
      
      public var §%]§:Sprite;
      
      public var §2!!§:int = 0;
      
      public var §=x§:Number = 0;
      
      public var §@`§:Array;
      
      public var §]n§:Array;
      
      public var mSlingShotState:int;
      
      public var §0'§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §;c§:Boolean = false;
      
      public var §;!5§:Number;
      
      protected var §]!+§:Sprite;
      
      protected var §@D§:§&&§;
      
      protected var §0b§:§&&§;
      
      protected var §'!B§:Sprite;
      
      protected var §?![§:Sprite;
      
      protected var §`&§:Sprite;
      
      protected var §2c§:§5+§;
      
      protected var §^!^§:§5+§;
      
      private var §+_§:Number = 0;
      
      private var §9e§:int = 0;
      
      public function §3m§(param1:§&_§, param2:§9]§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§%@§ = null;
         this.§^!P§ = new Vector.<§>!=§>();
         super();
         this.mLevelMain = param1;
         this.§]!+§ = param3;
         if(param2)
         {
            this.setPosition(param2.§'`§,param2.§1b§);
            this.§&!]§();
            _loc4_ = 0;
            while(_loc4_ < param2.§^g§)
            {
               _loc5_ = param2.§7!W§(_loc4_);
               this.§8!T§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§9e§ = this.§`q§();
            this.§=v§ = 0;
            if(this.§^!P§.length <= 0)
            {
               §1C§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§03§ + " " + this.§5,§);
               this.§%!1§(§#§);
            }
            else
            {
               this.§%!1§(§7!Y§);
            }
         }
         else
         {
            §1C§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§%!1§(§#§);
         }
         this.§;!5§ = 0;
         this.§+!$§();
         this.update(0,true);
         this.§2!]§();
         this.§=m§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§]!+§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§+_§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§=v§ < this.§^!P§.length;
      }
      
      public function dispose() : void
      {
         while(this.§^!P§.length > 0)
         {
            this.§!$§(0);
         }
         this.§^!P§ = null;
         if(this.§]!+§)
         {
            this.§]!+§.dispose();
            this.§]!+§ = null;
         }
         this.§%]§ = null;
         this.§@`§ = null;
         this.§]n§ = null;
      }
      
      public function §`!Y§(param1:String, param2:Number, param3:Number, param4:int = -1) : §>!=§
      {
         var _loc5_:§>!=§;
         (_loc5_ = this.§8!T§(param1,param2,param3,param4)).§!!2§();
         return _loc5_;
      }
      
      protected function §8!T§(param1:String, param2:Number, param3:Number, param4:int = -1) : §>!=§
      {
         var _loc5_:§>!=§ = new §>!=§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§^!P§.push(_loc5_);
         }
         else
         {
            this.§^!P§.splice(param4,0,_loc5_);
         }
         this.§%]§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §%!1§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §7!Y§)
         {
            this.§+1§();
            this.§6g§ = 1000;
         }
         else if(this.mSlingShotState == §94§)
         {
            this.§+1§();
            this.§6g§ = 0;
         }
         else if(this.mSlingShotState == §1&§)
         {
            this.§6g§ = 10000;
            this.§;c§ = false;
            this.§+1§();
         }
         else if(this.mSlingShotState == §#§)
         {
            this.§+1§();
            this.§6g§ = 2000;
         }
         else if(this.mSlingShotState == §0!!§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§;c§ = false;
               this.§+1§();
               this.§^!P§[this.§=v§].setPosition(this.§&!1§ - this.§^!P§[this.§=v§].radius * Math.cos(this.§=x§ / (180 / Math.PI)),this.§!Y§ + this.§^!P§[this.§=v§].radius * Math.sin(this.§=x§ / (180 / Math.PI)));
            }
            else
            {
               this.§+1§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §-e§() : §&_§
      {
         return this.mLevelMain;
      }
      
      public function §'!M§() : Boolean
      {
         return this.mSlingShotState == §#§ && this.§6g§ <= 0;
      }
      
      private function §&!]§() : void
      {
         var _loc1_:§<!%§ = this.mLevelMain.§0!+§.§ !Z§("SLINGSHOT");
         var _loc2_:§"#§ = _loc1_.getFrame(0);
         var _loc3_:§"#§ = _loc1_.getFrame(1);
         this.§2c§ = new §5+§(_loc2_.texture);
         this.§2c§.scaleX = _loc2_.scale;
         this.§2c§.scaleY = _loc2_.scale;
         this.§^!^§ = new §5+§(_loc3_.texture);
         this.§^!^§.scaleX = _loc3_.scale;
         this.§^!^§.scaleY = _loc3_.scale;
         this.§+!c§();
         this.§[!Y§();
         this.§%]§ = new Sprite();
         this.§]!+§.addChild(this.§2c§);
         this.§]!+§.addChild(this.§'!B§);
         this.§]!+§.addChild(this.§%]§);
         this.§]!+§.addChild(this.§`&§);
         this.§]!+§.addChild(this.§?![§);
         this.§]!+§.addChild(this.§^!^§);
         this.§%I§ = this.§5,§ + 8.5;
      }
      
      public function §+!c§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§+K§ = this.§03§;
         this.§'C§ = this.§5,§;
         this.§]!§ = §96§.§3!§;
         _loc1_ = null;
      }
      
      protected function §[!Y§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§%6§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §%6§ = this.mLevelMain.textureManager.§+!>§(_loc2_);
         }
         this.§`&§ = new Sprite();
         var _loc1_:§5+§ = new §5+§(§%6§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§`&§.addChild(_loc1_);
         this.§'!B§ = new Sprite();
         this.§@D§ = new §&&§(2,2,§!O§);
         this.§'!B§.addChild(this.§@D§);
         this.§?![§ = new Sprite();
         this.§0b§ = new §&&§(2,2,§!O§);
         this.§?![§.addChild(this.§0b§);
      }
      
      public function §=m§(param1:Number) : void
      {
         var _loc2_:Number = this.§!Y§ / §&_§.§5-§;
         var _loc3_:Number = this.§&!1§ / §&_§.§5-§;
         var _loc4_:Number = 3.5 + 8 * ((this.§]!§ - this.§8!,§) / this.§]!§);
         this.§`&§.x = _loc3_;
         this.§`&§.y = _loc2_;
         this.§`&§.rotation = -this.§=x§ / (180 / Math.PI);
         this.§2c§.x = this.§03§ / §&_§.§5-§ - 3;
         this.§2c§.y = this.§5,§ / §&_§.§5-§ - 30;
         this.§^!^§.x = this.§03§ / §&_§.§5-§ - 30;
         this.§^!^§.y = this.§5,§ / §&_§.§5-§ - 30;
         this.§?![§.x = this.§03§ / §&_§.§5-§ - 17;
         this.§?![§.y = this.§5,§ / §&_§.§5-§ + 5;
         this.§?![§.rotation = Math.atan2(_loc2_ - this.§?![§.y,_loc3_ - this.§?![§.x);
         this.§'!B§.x = this.§03§ / §&_§.§5-§ + 22;
         this.§'!B§.y = this.§5,§ / §&_§.§5-§;
         this.§'!B§.rotation = Math.atan2(_loc2_ - this.§'!B§.y,_loc3_ - this.§'!B§.x);
         this.§0b§.width = Math.sqrt(Math.pow(_loc3_ - this.§?![§.x,2) + Math.pow(_loc2_ - this.§?![§.y,2));
         this.§@D§.width = Math.sqrt(Math.pow(_loc3_ - this.§'!B§.x,2) + Math.pow(_loc2_ - this.§'!B§.y,2));
         this.§0b§.height = this.§@D§.height = _loc4_ * 2;
         this.§0b§.y = -this.§0b§.height / 2;
         this.§@D§.y = -this.§@D§.height / 2;
         this.§0'§ = false;
      }
      
      public function §>H§() : void
      {
         while(this.§^!P§.length > 0)
         {
            this.§!$§(0,true);
         }
         this.§&@§();
         this.§8!T§("BIRD_SARDINE",this.§03§,this.§5,§);
         this.§%!1§(§1&§);
      }
      
      protected function §&@§() : void
      {
         §<!0§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§%!1§(§0!!§);
      }
      
      public function §+1§() : void
      {
         this.setNewCoordinatesForRubber(this.§+K§,this.§'C§ + this.§]!§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§&!1§ == param1 && this.§!Y§ == param2)
         {
            return true;
         }
         this.§8!,§ = Math.sqrt((param2 - this.§'C§) * (param2 - this.§'C§) + (param1 - this.§+K§) * (param1 - this.§+K§));
         if(this.§8!,§ > this.§]!§)
         {
            if(param3)
            {
               this.§8!,§ = Math.sqrt((this.§!Y§ - this.§'C§) * (this.§!Y§ - this.§'C§) + (this.§&!1§ - this.§+K§) * (this.§&!1§ - this.§+K§));
               return false;
            }
            param1 = this.§+K§ + this.§]!§ * (param1 - this.§+K§) / this.§8!,§;
            param2 = this.§'C§ + this.§]!§ * (param2 - this.§'C§) / this.§8!,§;
            this.§8!,§ = this.§]!§;
         }
         this.§&!1§ = param1;
         this.§!Y§ = param2;
         this.§=x§ = Math.atan2(-(this.§!Y§ - this.§'C§),this.§&!1§ - this.§+K§);
         this.§=x§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§&!1§ = param1 - 0.7;
            this.§!Y§ = param2;
            this.§=x§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§]!§ / 2;
         if(this.§8!,§ > _loc7_ && this.§=x§ > -90 - _loc4_ + _loc5_ && this.§=x§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§+K§ + _loc7_ * (param1 - this.§+K§) / this.§8!,§;
            param2 = this.§'C§ + _loc7_ * (param2 - this.§'C§) / this.§8!,§;
            this.§8!,§ = _loc7_;
            this.§&!1§ = param1;
            this.§!Y§ = param2;
         }
         else if(this.§8!,§ > _loc7_ && this.§=x§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§=x§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§]!§ - _loc7_) * (Math.abs(this.§=x§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§+K§ + _loc8_ * (param1 - this.§+K§) / this.§8!,§;
            param2 = this.§'C§ + _loc8_ * (param2 - this.§'C§) / this.§8!,§;
            this.§8!,§ = _loc8_;
            this.§&!1§ = param1;
            this.§!Y§ = param2;
         }
         if(this.§8!,§ <= this.§]!§ * 0.45)
         {
            this.§^!3§ = true;
         }
         else if(this.§^!3§ && this.§8!,§ >= this.§]!§ * 0.8)
         {
            this.§]H§();
            this.§^!3§ = false;
         }
         this.§0'§ = true;
         return true;
      }
      
      protected function §]H§() : void
      {
         §<!0§.playSound("SlingshotStreched");
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
         this.§'C§ += _loc5_;
         this.§!Y§ += _loc5_;
         this.§+K§ += _loc4_;
         this.§&!1§ += _loc4_;
         if(param3)
         {
            this.§=m§(0);
         }
         this.§0'§ = true;
      }
      
      public function §;§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§>!=§ = null;
         _loc2_ = this.§^!P§[this.§=v§];
         var _loc3_:Number = this.§8!,§ / this.§]!§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§3m§.§`z§) : Number(§3m§.§?!K§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §^!Q§() : Point
      {
         var _loc1_:§>!=§ = null;
         if(this.§^!P§.length > this.§=v§)
         {
            _loc1_ = this.§^!P§[this.§=v§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §5F§() : Point
      {
         return new Point(this.§+K§,this.§'C§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§>!=§ = null;
         this.§^!N§(param1);
         if(this.§0'§)
         {
            this.§=m§(param1);
         }
         this.§6g§ -= param1;
         if(this.§6g§ < 0)
         {
            this.§6g§ = 0;
         }
         if(this.mSlingShotState != §#§)
         {
            this.§!!P§(param1,param2);
            _loc3_ = null;
            if(this.§^!P§.length > 0)
            {
               _loc3_ = this.§^!P§[this.§=v§];
            }
            if(_loc3_)
            {
               _loc3_.§?x§(param1);
            }
            if(!_loc3_)
            {
               this.§%!1§(§#§);
            }
            else if(this.mSlingShotState == §7!Y§)
            {
               if(this.§6g§ <= 0)
               {
                  this.§%!1§(§94§);
                  _loc3_.§`4§();
               }
            }
            else if(this.mSlingShotState == §94§)
            {
               if(_loc3_.§6M§)
               {
                  this.§%!1§(§1&§);
               }
            }
            else if(this.mSlingShotState == §1&§)
            {
               _loc3_.setPosition(this.§&!1§ - _loc3_.radius * Math.cos(this.§=x§ / (180 / Math.PI)),this.§!Y§ + _loc3_.radius * Math.sin(this.§=x§ / (180 / Math.PI)));
               if(this.§;c§)
               {
                  this.§@!%§(this.§8!,§ / this.§]!§,this.§=x§);
               }
            }
         }
      }
      
      public function §+b§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§>!=§ = null;
         if(this.§^!P§.length > 0)
         {
            _loc5_ = this.§^!P§[this.§=v§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§@!%§(param3,param4);
      }
      
      protected function §@!%§(param1:Number, param2:Number) : void
      {
         var _loc3_:§>!=§ = null;
         if(this.§^!P§.length > 0)
         {
            _loc3_ = this.§^!P§[this.§=v§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§;c§ = false;
         this.§+_§ = new Date().time;
         this.mLevelMain.§1!&§(_loc3_,param1,param2);
         this.§!$§(this.§=v§,_loc3_.§<B§ > 0);
         this.§-W§();
         if(this.§=v§ >= this.§^!P§.length)
         {
            this.§%!1§(§#§);
         }
         else
         {
            this.§%!1§(§7!Y§);
         }
      }
      
      protected function §-W§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §<!0§.playSound("BirdShot" + _loc1_);
      }
      
      public function §!!P§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§=v§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§^!P§.length)
         {
            if(this.mSlingShotState == §0!!§)
            {
               this.§^!P§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§^!P§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§>!=§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§+1§();
         if(this.§[9§ >= this.§^!P§.length)
         {
            return false;
         }
         _loc1_ = this.§^!P§[this.§[9§];
         _loc2_ = §[!P§.§!I§(_loc1_.name).score;
         this.mLevelMain.addScore(_loc2_,§-!3§.§<F§,true,_loc1_.x,_loc1_.y - 3,§;Z§.§6%§(_loc1_.name));
         _loc1_.§'!2§(-1,true);
         ++this.§[9§;
         return true;
      }
      
      public function §`q§() : int
      {
         var _loc2_:§>!=§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§^!P§)
         {
            _loc1_ += §[!P§.§!I§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §0!R§() : int
      {
         return this.§9e§;
      }
      
      public function §^!N§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§;!5§ >= 0)
         {
            this.§;!5§ -= param1;
            if(this.§;!5§ <= 0)
            {
               _loc2_ = this.mLevelMain.objects.§'!b§(this.§+K§,this.§%I§);
               if(_loc2_ < 0)
               {
                  this.§2A§(0.1);
                  this.§;!5§ = 0;
               }
               else if(!this.mLevelMain.objects.§&!+§(_loc2_).§%!c§)
               {
                  this.§;!5§ = -1;
               }
               else if(this.mLevelMain.objects.§&!+§(_loc2_).§]C§())
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
      
      public function §2!]§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.mLevelMain.objects.§'!b§(this.§+K§,this.§%I§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§2A§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§;!5§ = -1;
      }
      
      public function §'Q§(param1:Number, param2:Number) : void
      {
         this.§]!+§.x = -param1;
         this.§]!+§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §1&§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §1&§ && this.§8!,§ > this.§]!§ * §9M§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§%!1§(§1&§);
         var _loc1_:§>!=§ = this.§^!P§[this.§=v§];
         _loc1_.§'!2§(§0u§.§73§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§>!=§ = this.§^!P§[this.§=v§];
         _loc1_.§'!2§(§0u§.§#w§);
      }
      
      public function shoot() : void
      {
         this.§;c§ = true;
      }
      
      protected function §!$§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§>!=§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§^!P§[param1])
         {
            _loc3_ = this.§^!P§[param1];
            this.§%]§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§1!;§(this.§^!P§[param1]);
            }
            _loc3_.dispose();
            this.§^!P§[param1] = null;
         }
         this.§^!P§.splice(param1,1);
      }
      
      public function §1!;§(param1:§>!=§) : void
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
            this.mLevelMain.particles.§#!Q§(§;Z§.§8+§,§1D§.§%d§,§;Z§.§>!H§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§;Z§.§"!a§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.mLevelMain.particles.§#!Q§(§;Z§.§%!B§,§1D§.§%d§,§;Z§.§>!H§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §3A§(param1:§>!=§) : void
      {
         this.§!$§(this.§^!P§.indexOf(param1));
      }
      
      public function §+!$§() : void
      {
         var _loc2_:§>!=§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§>!=§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§^!P§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§03§ - this.§^!P§[_loc1_].x) * (this.§03§ - this.§^!P§[_loc1_].x) + (this.§5,§ - this.§^!P§[_loc1_].y) * (this.§5,§ - this.§^!P§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§03§ - this.§^!P§[_loc1_ + 1].x) * (this.§03§ - this.§^!P§[_loc1_ + 1].x) + (this.§5,§ - this.§^!P§[_loc1_ + 1].y) * (this.§5,§ - this.§^!P§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§^!P§[_loc1_];
               this.§^!P§.splice(_loc1_,1);
               this.§^!P§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§%]§.numChildren > 0)
         {
            this.§%]§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§^!P§.length)
         {
            _loc2_ = this.§^!P§[_loc1_];
            this.§%]§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §+"§(param1:Number, param2:Number) : §>!=§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§^!P§.length)
         {
            if(this.§^!P§[_loc3_])
            {
               if(this.§^!P§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§^!P§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §,B§(param1:Number, param2:Number) : §3m§
      {
         if(param1 >= this.§03§ - this.§]!§ / 4 && param1 <= this.§03§ + this.§]!§ / 4 && param2 >= this.§5,§ - this.§]!§ / 4 && this.§5,§ <= this.§%I§)
         {
            return this;
         }
         return null;
      }
      
      public function §<!E§(param1:§9]§) : void
      {
         var _loc3_:§>!=§ = null;
         var _loc4_:§%@§ = null;
         param1.§'`§ = this.§03§;
         param1.§1b§ = this.§5,§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§^!P§.length)
         {
            _loc3_ = this.§^!P§[_loc2_];
            (_loc4_ = new §%@§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§%R§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §5!G§() : void
      {
         while(this.§^!P§.length > 0)
         {
            this.§3A§(this.§^!P§[0]);
         }
      }
      
      public function §9!5§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§^!P§.length)
         {
            if(this.§^!P§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§^!P§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§03§ > param1.x && this.§03§ < param2.x && this.§5,§ > param1.y && this.§5,§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §]!]§() : Array
      {
         return [this.§^!^§,this.§2c§];
      }
      
      public function §2y§(param1:String, param2:Number, param3:Number) : §>!=§
      {
         var _loc4_:§>!=§ = this.§8!T§(param1,param2,param3);
         this.§+!$§();
         return _loc4_;
      }
      
      public function §93§() : Number
      {
         return this.§^!P§.length;
      }
   }
}
