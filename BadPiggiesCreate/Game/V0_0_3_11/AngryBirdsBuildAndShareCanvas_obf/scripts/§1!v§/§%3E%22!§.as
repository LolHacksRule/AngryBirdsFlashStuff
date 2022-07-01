package §1!v§
{
   import §+%§.§5!F§;
   import §,!!§.§5!G§;
   import §,!!§.§>!]§;
   import §1!Y§.§5!W§;
   import §1!Y§.§8C§;
   import §1!Y§.Sprite;
   import §8q§.§+P§;
   import §8q§.§@§;
   import §;X§.§ do§;
   import §?!k§.§0!t§;
   import §[_§.§'!N§;
   import §[_§.§+!P§;
   import §]!!§.§]"%§;
   import §^i§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §>"!§
   {
      
      public static const §9!r§:int = 0;
      
      public static const §^"%§:int = 1;
      
      public static const §2J§:int = 2;
      
      public static const §9!o§:int = 3;
      
      public static const §5#§:int = 5;
      
      public static const §<!A§:int = 3151368;
      
      protected static const §#S§:int = 8;
      
      protected static const §[!j§:int = 0;
      
      public static const §;3§:Number = 46.25;
      
      public static const §=d§:Number = 52.5;
      
      protected static const §2M§:Number = -0.7;
      
      protected static const §'""§:Number = 0;
      
      protected static var §,9§:Texture;
      
      public static const §&t§:Number = 0.4;
       
      
      public var §]Z§:§@%§;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §5I§:Number;
      
      protected var §'Q§:Number;
      
      protected var §%!C§:Number;
      
      protected var §`'§:Number;
      
      protected var §5u§:Number;
      
      public var §&>§:Number;
      
      public var § "'§:Boolean = false;
      
      protected var §7!g§:Number;
      
      public var mBirds:Vector.<§!,§>;
      
      public var §6!8§:int;
      
      public var §@!]§:int;
      
      public var §7!v§:Number;
      
      public var §>!A§:Sprite;
      
      public var § 7§:int = 0;
      
      public var §@>§:Number = 0;
      
      public var § ;§:Array;
      
      public var §-q§:Array;
      
      public var mSlingShotState:int;
      
      public var §""!§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §5!E§:Boolean = false;
      
      public var § j§:Number;
      
      protected var § "5§:Sprite;
      
      protected var §+!v§:§5!W§;
      
      protected var §#s§:§5!W§;
      
      protected var §%!k§:Sprite;
      
      protected var §;!M§:Sprite;
      
      protected var §5;§:Sprite;
      
      protected var §1!&§:§8C§;
      
      protected var §@!B§:§8C§;
      
      private var §+J§:Number = 0;
      
      private var §=+§:int = 0;
      
      protected var §@l§:Number = -0.7;
      
      protected var §<6§:Number = 0;
      
      public function §>"!§(param1:§@%§, param2:§5!F§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§]"%§ = null;
         this.mBirds = new Vector.<§!,§>();
         super();
         this.§]Z§ = param1;
         this.§ "5§ = param3;
         if(param2)
         {
            this.setPosition(param2.§7e§,param2.§!P§);
            this.§6!E§();
            _loc4_ = 0;
            while(_loc4_ < param2.§%+§)
            {
               _loc5_ = param2.§^!>§(_loc4_);
               this.§0!E§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§=+§ = this.§6-§();
            this.§6!8§ = 0;
            if(this.mBirds.length <= 0)
            {
               § do§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.mX + " " + this.mY);
               this.setSlingShotState(§9!o§);
            }
            else
            {
               this.setSlingShotState(§9!r§);
            }
         }
         else
         {
            § do§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.setSlingShotState(§9!o§);
         }
         this.§ j§ = 0;
         this.§1"0§();
         this.update(0,true);
         this.§@!,§();
         this.§^!p§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§ "5§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§+J§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§6!8§ < this.mBirds.length;
      }
      
      public function dispose() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§1!e§(0);
         }
         this.mBirds = null;
         if(this.§ "5§)
         {
            this.§ "5§.dispose();
            this.§ "5§ = null;
         }
         this.§>!A§ = null;
         this.§ ;§ = null;
         this.§-q§ = null;
      }
      
      public function §26§(param1:String, param2:Number, param3:Number, param4:int = -1) : §!,§
      {
         var _loc5_:§!,§;
         (_loc5_ = this.§0!E§(param1,param2,param3,param4)).§7Q§();
         return _loc5_;
      }
      
      protected function §0!E§(param1:String, param2:Number, param3:Number, param4:int = -1) : §!,§
      {
         var _loc5_:§!,§ = new §!,§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.mBirds.push(_loc5_);
         }
         else
         {
            this.mBirds.splice(param4,0,_loc5_);
         }
         this.§>!A§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function setSlingShotState(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §9!r§)
         {
            this.§6!X§();
            this.§7!v§ = 1000;
         }
         else if(this.mSlingShotState == §^"%§)
         {
            this.§6!X§();
            this.§7!v§ = 0;
         }
         else if(this.mSlingShotState == §2J§)
         {
            this.§7!v§ = 10000;
            this.§5!E§ = false;
            this.§6!X§();
         }
         else if(this.mSlingShotState == §9!o§)
         {
            this.§6!X§();
            this.§7!v§ = 2000;
         }
         else if(this.mSlingShotState == §5#§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§5!E§ = false;
               this.§6!X§();
               this.mBirds[this.§6!8§].setPosition(this.§`'§ - this.mBirds[this.§6!8§].radius * Math.cos(this.§@>§ / (180 / Math.PI)),this.§5u§ + this.mBirds[this.§6!8§].radius * Math.sin(this.§@>§ / (180 / Math.PI)));
            }
            else
            {
               this.§6!X§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §'4§() : §@%§
      {
         return this.§]Z§;
      }
      
      public function §#I§() : Boolean
      {
         return this.mSlingShotState == §9!o§ && this.§7!v§ <= 0;
      }
      
      private function §6!E§() : void
      {
         var _loc1_:§+!P§ = this.§7!O§();
         var _loc2_:§'!N§ = _loc1_.getFrame(0);
         var _loc3_:§'!N§ = _loc1_.getFrame(1);
         this.§1!&§ = new §8C§(_loc2_.texture);
         this.§1!&§.scaleX = _loc2_.scale;
         this.§1!&§.scaleY = _loc2_.scale;
         this.§@!B§ = new §8C§(_loc3_.texture);
         this.§@!B§.scaleX = _loc3_.scale;
         this.§@!B§.scaleY = _loc3_.scale;
         this.§,b§();
         this.§!!f§();
         this.§>!A§ = new Sprite();
         this.§ "5§.addChild(this.§1!&§);
         this.§ "5§.addChild(this.§%!k§);
         this.§ "5§.addChild(this.§>!A§);
         this.§ "5§.addChild(this.§5;§);
         this.§ "5§.addChild(this.§;!M§);
         this.§ "5§.addChild(this.§@!B§);
         this.§5I§ = this.mY + 8.5;
      }
      
      protected function §7!O§() : §+!P§
      {
         return this.§]Z§.§%w§.§5m§("SLINGSHOT");
      }
      
      public function §,b§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§'Q§ = this.mX;
         this.§%!C§ = this.mY;
         this.§7!g§ = §0!9§.§0!`§;
         _loc1_ = null;
      }
      
      protected function §!!f§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§,9§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §,9§ = this.§]Z§.§while§.§[!$§(_loc2_);
         }
         this.§5;§ = new Sprite();
         var _loc1_:§8C§ = new §8C§(§,9§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§5;§.addChild(_loc1_);
         this.§%!k§ = new Sprite();
         this.§+!v§ = new §5!W§(2,2,§<!A§);
         this.§%!k§.addChild(this.§+!v§);
         this.§;!M§ = new Sprite();
         this.§#s§ = new §5!W§(2,2,§<!A§);
         this.§;!M§.addChild(this.§#s§);
      }
      
      public function §^!p§(param1:Number) : void
      {
         var _loc2_:Number = this.§5u§ / §@%§.§?k§;
         var _loc3_:Number = this.§`'§ / §@%§.§?k§;
         var _loc4_:Number = 3.5 + 8 * ((this.§7!g§ - this.§&>§) / this.§7!g§);
         this.§5;§.x = _loc3_;
         this.§5;§.y = _loc2_;
         this.§5;§.rotation = -this.§@>§ / (180 / Math.PI);
         this.§1!&§.x = this.mX / §@%§.§?k§ - 3;
         this.§1!&§.y = this.mY / §@%§.§?k§ - 30;
         this.§@!B§.x = this.mX / §@%§.§?k§ - 30;
         this.§@!B§.y = this.mY / §@%§.§?k§ - 30;
         this.§;!M§.x = this.mX / §@%§.§?k§ - 17;
         this.§;!M§.y = this.mY / §@%§.§?k§ + 5;
         this.§;!M§.rotation = Math.atan2(_loc2_ - this.§;!M§.y,_loc3_ - this.§;!M§.x);
         this.§%!k§.x = this.mX / §@%§.§?k§ + 22;
         this.§%!k§.y = this.mY / §@%§.§?k§;
         this.§%!k§.rotation = Math.atan2(_loc2_ - this.§%!k§.y,_loc3_ - this.§%!k§.x);
         this.§#s§.width = Math.sqrt(Math.pow(_loc3_ - this.§;!M§.x,2) + Math.pow(_loc2_ - this.§;!M§.y,2));
         this.§+!v§.width = Math.sqrt(Math.pow(_loc3_ - this.§%!k§.x,2) + Math.pow(_loc2_ - this.§%!k§.y,2));
         this.§#s§.height = this.§+!v§.height = _loc4_ * 2;
         this.§#s§.y = -this.§#s§.height / 2;
         this.§+!v§.y = -this.§+!v§.height / 2;
         this.§""!§ = false;
      }
      
      public function §%!j§() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§1!e§(0,true);
         }
         this.§ !v§();
         this.§0!E§("BIRD_SARDINE",this.mX,this.mY);
         this.setSlingShotState(§2J§);
      }
      
      protected function § !v§() : void
      {
         §0!t§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.setSlingShotState(§5#§);
      }
      
      public function §6!X§() : void
      {
         this.setNewCoordinatesForRubber(this.§'Q§,this.§%!C§ + this.§7!g§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§`'§ == param1 && this.§5u§ == param2)
         {
            return true;
         }
         this.§&>§ = Math.sqrt((param2 - this.§%!C§) * (param2 - this.§%!C§) + (param1 - this.§'Q§) * (param1 - this.§'Q§));
         if(this.§&>§ > this.§7!g§)
         {
            if(param3)
            {
               this.§&>§ = Math.sqrt((this.§5u§ - this.§%!C§) * (this.§5u§ - this.§%!C§) + (this.§`'§ - this.§'Q§) * (this.§`'§ - this.§'Q§));
               return false;
            }
            param1 = this.§'Q§ + this.§7!g§ * (param1 - this.§'Q§) / this.§&>§;
            param2 = this.§%!C§ + this.§7!g§ * (param2 - this.§%!C§) / this.§&>§;
            this.§&>§ = this.§7!g§;
         }
         this.§`'§ = param1;
         this.§5u§ = param2;
         this.§@>§ = Math.atan2(-(this.§5u§ - this.§%!C§),this.§`'§ - this.§'Q§);
         this.§@>§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§`'§ = param1 + this.§@l§;
            this.§5u§ = param2 + this.§<6§;
            this.§@>§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§7!g§ / 2;
         if(this.§&>§ > _loc7_ && this.§@>§ > -90 - _loc4_ + _loc5_ && this.§@>§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§'Q§ + _loc7_ * (param1 - this.§'Q§) / this.§&>§;
            param2 = this.§%!C§ + _loc7_ * (param2 - this.§%!C§) / this.§&>§;
            this.§&>§ = _loc7_;
            this.§`'§ = param1;
            this.§5u§ = param2;
         }
         else if(this.§&>§ > _loc7_ && this.§@>§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§@>§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§7!g§ - _loc7_) * (Math.abs(this.§@>§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§'Q§ + _loc8_ * (param1 - this.§'Q§) / this.§&>§;
            param2 = this.§%!C§ + _loc8_ * (param2 - this.§%!C§) / this.§&>§;
            this.§&>§ = _loc8_;
            this.§`'§ = param1;
            this.§5u§ = param2;
         }
         if(this.§&>§ <= this.§7!g§ * 0.45)
         {
            this.§ "'§ = true;
         }
         else if(this.§ "'§ && this.§&>§ >= this.§7!g§ * 0.8)
         {
            this.§!!Z§();
            this.§ "'§ = false;
         }
         this.§""!§ = true;
         return true;
      }
      
      protected function §!!Z§() : void
      {
         §0!t§.playSound("SlingshotStreched");
      }
      
      public function §#"9§(param1:Number) : void
      {
         this.setPosition(this.mX,this.mY + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.mX;
         this.mX = param1;
         var _loc5_:Number = param2 - this.mY;
         this.mY = param2;
         this.§5I§ += _loc5_;
         this.§%!C§ += _loc5_;
         this.§5u§ += _loc5_;
         this.§'Q§ += _loc4_;
         this.§`'§ += _loc4_;
         if(param3)
         {
            this.§^!p§(0);
         }
         this.§""!§ = true;
      }
      
      public function §#y§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§!,§ = null;
         _loc2_ = this.mBirds[this.§6!8§];
         var _loc3_:Number = this.§&>§ / this.§7!g§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§>"!§.§=d§) : Number(§>"!§.§;3§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §]>§() : Point
      {
         var _loc1_:§!,§ = null;
         if(this.mBirds.length > this.§6!8§)
         {
            _loc1_ = this.mBirds[this.§6!8§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §6!&§() : Point
      {
         return new Point(this.§'Q§,this.§%!C§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§!,§ = null;
         this.§'"&§(param1);
         if(this.§""!§)
         {
            this.§^!p§(param1);
         }
         this.§7!v§ -= param1;
         if(this.§7!v§ < 0)
         {
            this.§7!v§ = 0;
         }
         if(this.mSlingShotState != §9!o§)
         {
            this.§@R§(param1,param2);
            _loc3_ = null;
            if(this.mBirds.length > 0)
            {
               _loc3_ = this.mBirds[this.§6!8§];
            }
            if(_loc3_)
            {
               _loc3_.§-!&§(param1);
            }
            if(!_loc3_)
            {
               this.setSlingShotState(§9!o§);
            }
            else if(this.mSlingShotState == §9!r§)
            {
               if(this.§7!v§ <= 0)
               {
                  this.setSlingShotState(§^"%§);
                  _loc3_.§[!,§();
               }
            }
            else if(this.mSlingShotState == §^"%§)
            {
               if(_loc3_.§2!3§)
               {
                  this.setSlingShotState(§2J§);
               }
            }
            else if(this.mSlingShotState == §2J§)
            {
               _loc3_.setPosition(this.§`'§ - _loc3_.radius * Math.cos(this.§@>§ / (180 / Math.PI)),this.§5u§ + _loc3_.radius * Math.sin(this.§@>§ / (180 / Math.PI)));
               if(this.§5!E§)
               {
                  this.§&H§(this.§&>§ / this.§7!g§,this.§@>§);
               }
            }
         }
      }
      
      public function §76§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§!,§ = null;
         if(this.mBirds.length > 0)
         {
            _loc5_ = this.mBirds[this.§6!8§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§&H§(param3,param4);
      }
      
      protected function §&H§(param1:Number, param2:Number) : void
      {
         var _loc3_:§!,§ = null;
         this.§@l§ = §2M§;
         this.§<6§ = §'""§;
         if(this.mBirds.length > 0)
         {
            _loc3_ = this.mBirds[this.§6!8§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§5!E§ = false;
         this.§+J§ = new Date().time;
         this.§]Z§.§-!%§(_loc3_,param1,param2);
         this.§1!e§(this.§6!8§,_loc3_.§'!P§ > 0);
         this.§'<§();
         if(this.§6!8§ >= this.mBirds.length)
         {
            this.setSlingShotState(§9!o§);
         }
         else
         {
            this.setSlingShotState(§9!r§);
         }
      }
      
      protected function §'<§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §0!t§.playSound("BirdShot" + _loc1_);
      }
      
      public function §@R§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§6!8§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.mBirds.length)
         {
            if(this.mSlingShotState == §5#§)
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
         var _loc1_:§!,§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§6!X§();
         if(this.§@!]§ >= this.mBirds.length)
         {
            return false;
         }
         _loc1_ = this.mBirds[this.§@!]§];
         _loc2_ = §@§.§4"#§(_loc1_.name).score;
         this.§]Z§.addScore(_loc2_,§7!=§.§0K§,true,_loc1_.x,_loc1_.y - 3,§>!]§.§9!`§(_loc1_.name));
         _loc1_.§+!C§(-1,true);
         ++this.§@!]§;
         return true;
      }
      
      public function §6-§() : int
      {
         var _loc2_:§!,§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mBirds)
         {
            _loc1_ += §@§.§4"#§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §3"3§() : int
      {
         return this.§=+§;
      }
      
      public function §'"&§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§ j§ >= 0)
         {
            this.§ j§ -= param1;
            if(this.§ j§ <= 0)
            {
               _loc2_ = this.§]Z§.objects.§6",§(this.§'Q§,this.§5I§);
               if(_loc2_ < 0)
               {
                  this.§#"9§(0.1);
                  this.§ j§ = 0;
               }
               else if(!this.§]Z§.objects.getObject(_loc2_).§&k§)
               {
                  this.§ j§ = -1;
               }
               else if(this.§]Z§.objects.getObject(_loc2_).§!!Q§())
               {
                  this.§ j§ = 2000;
               }
               else
               {
                  this.§ j§ = 500;
               }
            }
         }
      }
      
      public function §@!,§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§]Z§.objects.§6",§(this.§'Q§,this.§5I§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§#"9§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§ j§ = -1;
      }
      
      public function §@G§(param1:Number, param2:Number) : void
      {
         this.§ "5§.x = -param1;
         this.§ "5§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §2J§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §2J§ && this.§&>§ > this.§7!g§ * §&t§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.setSlingShotState(§2J§);
         var _loc1_:§!,§ = this.mBirds[this.§6!8§];
         _loc1_.§+!C§(§+P§.§9!%§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§!,§ = this.mBirds[this.§6!8§];
         _loc1_.§+!C§(§+P§.§+"8§);
      }
      
      public function shoot() : void
      {
         this.§5!E§ = true;
      }
      
      protected function §1!e§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§!,§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.mBirds[param1])
         {
            _loc3_ = this.mBirds[param1];
            this.§>!A§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§<!C§(this.mBirds[param1]);
            }
            _loc3_.dispose();
            this.mBirds[param1] = null;
         }
         this.mBirds.splice(param1,1);
      }
      
      public function §<!C§(param1:§!,§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §@%§.§?k§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §@%§.§?k§) + Math.random() * -_loc8_ * 2;
            this.§]Z§.particles.§,D§(§>!]§.§]!&§,§5!G§.§5N§,§>!]§.§@!q§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§>!]§.§`!9§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§]Z§.particles.§,D§(§>!]§.§;%§,§5!G§.§5N§,§>!]§.§@!q§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:§!,§) : void
      {
         this.§1!e§(this.mBirds.indexOf(param1));
      }
      
      public function §1"0§() : void
      {
         var _loc2_:§!,§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§!,§ = null;
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
         while(this.§>!A§.numChildren > 0)
         {
            this.§>!A§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.mBirds.length)
         {
            _loc2_ = this.mBirds[_loc1_];
            this.§>!A§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §!,§
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
      
      public function intersectsWithPoint(param1:Number, param2:Number) : §>"!§
      {
         if(param1 >= this.mX - this.§7!g§ / 4 && param1 <= this.mX + this.§7!g§ / 4 && param2 >= this.mY - this.§7!g§ / 4 && this.mY <= this.§5I§)
         {
            return this;
         }
         return null;
      }
      
      public function writeSlingshotInformation(param1:§5!F§) : void
      {
         var _loc3_:§!,§ = null;
         var _loc4_:§]"%§ = null;
         param1.§7e§ = this.mX;
         param1.§!P§ = this.mY;
         var _loc2_:Number = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc3_ = this.mBirds[_loc2_];
            (_loc4_ = new §]"%§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§5!m§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §`3§() : void
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
      
      public function §9!2§() : Array
      {
         return [this.§@!B§,this.§1!&§];
      }
      
      public function addNewBirdToEndOfList(param1:String, param2:Number, param3:Number) : §!,§
      {
         var _loc4_:§!,§ = this.§0!E§(param1,param2,param3);
         this.§1"0§();
         return _loc4_;
      }
      
      public function getBirdCount() : Number
      {
         return this.mBirds.length;
      }
   }
}
