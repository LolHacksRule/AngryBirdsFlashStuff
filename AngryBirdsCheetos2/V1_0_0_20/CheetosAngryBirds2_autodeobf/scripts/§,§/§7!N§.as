package §,§
{
   import §!r§.§"B§;
   import §!r§.§3!!§;
   import §-!Q§.§,!7§;
   import §1!4§.§7!?§;
   import §1!4§.§do§;
   import §9t§.§"h§;
   import §9t§.§35§;
   import §;A§.§ l§;
   import §>^§.§!6§;
   import §]!a§.Texture;
   import §^a§.§ !'§;
   import §^a§.§6p§;
   import §^a§.Sprite;
   import §`![§.§!!K§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §7!N§
   {
      
      public static const §8!4§:int = 0;
      
      public static const § w§:int = 1;
      
      public static const §4!G§:int = 2;
      
      public static const §0!A§:int = 3;
      
      public static const §;N§:int = 5;
      
      public static const §?=§:int = 3151368;
      
      protected static const §<i§:int = 8;
      
      protected static const §<[§:int = 0;
      
      public static const §0C§:Number = 46.25;
      
      public static const §"O§:Number = 52.5;
      
      protected static const §%o§:Number = -0.7;
      
      protected static const §'!N§:Number = 0;
      
      protected static var §&S§:Texture;
      
      public static const §6l§:Number = 0.4;
       
      
      public var §^!I§:§ p§;
      
      public var §7F§:Number;
      
      public var §6_§:Number;
      
      public var §]!U§:Number;
      
      protected var §!=§:Number;
      
      protected var §2!V§:Number;
      
      protected var § !S§:Number;
      
      protected var §>Q§:Number;
      
      public var §+!a§:Number;
      
      public var §8$§:Boolean = false;
      
      protected var §?D§:Number;
      
      public var §0!b§:Vector.<§ 3§>;
      
      public var §7!B§:int;
      
      public var §@R§:int;
      
      public var §5z§:Number;
      
      public var §,!C§:Sprite;
      
      public var §<!E§:int = 0;
      
      public var §1[§:Number = 0;
      
      public var §=-§:Array;
      
      public var §2!S§:Array;
      
      public var mSlingShotState:int;
      
      public var §3]§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §3_§:Boolean = false;
      
      public var §56§:Number;
      
      protected var §,;§:Boolean = false;
      
      protected var §8!2§:Sprite;
      
      protected var §1Z§:§ !'§;
      
      protected var §&!E§:§ !'§;
      
      protected var §;!e§:Sprite;
      
      protected var §8!M§:Sprite;
      
      protected var §8f§:Sprite;
      
      protected var §2! §:§6p§;
      
      protected var §8y§:§6p§;
      
      private var §!!S§:Number = 0;
      
      private var §]#§:int = 0;
      
      protected var §^x§:Number = -0.7;
      
      protected var §2!h§:Number = 0;
      
      public function §7!N§(param1:§ p§, param2:§!!K§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§ l§ = null;
         this.§0!b§ = new Vector.<§ 3§>();
         super();
         this.§^!I§ = param1;
         this.§8!2§ = param3;
         if(param2)
         {
            this.setPosition(param2.§;!Y§,param2.§'f§);
            this.§5j§();
            _loc4_ = 0;
            while(_loc4_ < param2.§!Z§)
            {
               _loc5_ = param2.§1&§(_loc4_);
               this.addSlingshotObject(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§]#§ = this.§@!K§();
            this.§7!B§ = 0;
            if(this.§0!b§.length <= 0)
            {
               §!6§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§7F§ + " " + this.§6_§);
               this.setSlingShotState(§0!A§);
            }
            else
            {
               this.setSlingShotState(§8!4§);
            }
         }
         else
         {
            §!6§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.setSlingShotState(§0!A§);
         }
         this.§56§ = 0;
         this.§6$§();
         this.update(0,true);
         this.§!!X§();
         this.§-!<§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§8!2§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§!!S§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§7!B§ < this.§0!b§.length;
      }
      
      public function dispose() : void
      {
         while(this.§0!b§.length > 0)
         {
            this.§<!a§(0);
         }
         this.§0!b§ = null;
         if(this.§8!2§)
         {
            this.§8!2§.dispose();
            this.§8!2§ = null;
         }
         this.§,!C§ = null;
         this.§=-§ = null;
         this.§2!S§ = null;
      }
      
      public function §'"§(param1:String, param2:Number, param3:Number, param4:int = -1) : § 3§
      {
         var _loc5_:§ 3§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,param4)).§`!h§();
         this.setSlingShotState(§4!G§);
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : § 3§
      {
         var _loc5_:§ 3§ = new § 3§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§0!b§.push(_loc5_);
         }
         else
         {
            this.§0!b§.splice(param4,0,_loc5_);
         }
         this.§,!C§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function setSlingShotState(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §8!4§)
         {
            this.§ !W§();
            this.§5z§ = 1000;
         }
         else if(this.mSlingShotState == § w§)
         {
            this.§ !W§();
            this.§5z§ = 0;
         }
         else if(this.mSlingShotState == §4!G§)
         {
            this.§5z§ = 10000;
            this.§3_§ = false;
            this.§ !W§();
         }
         else if(this.mSlingShotState == §0!A§)
         {
            this.§ !W§();
            this.§5z§ = 2000;
         }
         else if(this.mSlingShotState == §;N§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§3_§ = false;
               this.§ !W§();
               this.§0!b§[this.§7!B§].setPosition(this.§ !S§ - this.§0!b§[this.§7!B§].radius * Math.cos(this.§1[§ / (180 / Math.PI)),this.§>Q§ + this.§0!b§[this.§7!B§].radius * Math.sin(this.§1[§ / (180 / Math.PI)));
            }
            else
            {
               this.§ !W§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §,!Z§() : § p§
      {
         return this.§^!I§;
      }
      
      public function § b§() : Boolean
      {
         return this.mSlingShotState == §0!A§ && this.§5z§ <= 0;
      }
      
      private function §5j§() : void
      {
         var _loc1_:§"h§ = this.§>!N§();
         var _loc2_:§35§ = _loc1_.getFrame(0);
         var _loc3_:§35§ = _loc1_.getFrame(1);
         this.§2! § = new §6p§(_loc2_.texture);
         this.§2! §.scaleX = _loc2_.scale;
         this.§2! §.scaleY = _loc2_.scale;
         this.§8y§ = new §6p§(_loc3_.texture);
         this.§8y§.scaleX = _loc3_.scale;
         this.§8y§.scaleY = _loc3_.scale;
         this.§5V§();
         this.§8S§();
         this.§,!C§ = new Sprite();
         this.§8!2§.addChild(this.§2! §);
         this.§8!2§.addChild(this.§;!e§);
         this.§8!2§.addChild(this.§,!C§);
         this.§8!2§.addChild(this.§8f§);
         this.§8!2§.addChild(this.§8!M§);
         this.§8!2§.addChild(this.§8y§);
         this.§]!U§ = this.§6_§ + 8.5;
      }
      
      protected function §>!N§() : §"h§
      {
         return this.§^!I§.§#U§.§;5§("SLINGSHOT");
      }
      
      public function §5V§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§!=§ = this.§7F§;
         this.§2!V§ = this.§6_§;
         this.§?D§ = §?9§.§`2§;
         _loc1_ = null;
      }
      
      protected function §8S§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§&S§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §&S§ = this.§^!I§.§],§.§0!U§(_loc2_);
         }
         this.§8f§ = new Sprite();
         var _loc1_:§6p§ = new §6p§(§&S§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§8f§.addChild(_loc1_);
         this.§;!e§ = new Sprite();
         this.§1Z§ = new § !'§(2,2,§?=§);
         this.§;!e§.addChild(this.§1Z§);
         this.§8!M§ = new Sprite();
         this.§&!E§ = new § !'§(2,2,§?=§);
         this.§8!M§.addChild(this.§&!E§);
      }
      
      public function §-!<§(param1:Number) : void
      {
         var _loc2_:Number = this.§>Q§ / § p§.§]!E§;
         var _loc3_:Number = this.§ !S§ / § p§.§]!E§;
         var _loc4_:Number = 3.5 + 8 * ((this.§?D§ - this.§+!a§) / this.§?D§);
         this.§8f§.x = _loc3_;
         this.§8f§.y = _loc2_;
         this.§8f§.rotation = -this.§1[§ / (180 / Math.PI);
         this.§2! §.x = this.§7F§ / § p§.§]!E§ - 3;
         this.§2! §.y = this.§6_§ / § p§.§]!E§ - 30;
         this.§8y§.x = this.§7F§ / § p§.§]!E§ - 30;
         this.§8y§.y = this.§6_§ / § p§.§]!E§ - 30;
         this.§8!M§.x = this.§7F§ / § p§.§]!E§ - 17;
         this.§8!M§.y = this.§6_§ / § p§.§]!E§ + 5;
         this.§8!M§.rotation = Math.atan2(_loc2_ - this.§8!M§.y,_loc3_ - this.§8!M§.x);
         this.§;!e§.x = this.§7F§ / § p§.§]!E§ + 22;
         this.§;!e§.y = this.§6_§ / § p§.§]!E§;
         this.§;!e§.rotation = Math.atan2(_loc2_ - this.§;!e§.y,_loc3_ - this.§;!e§.x);
         this.§&!E§.width = Math.sqrt(Math.pow(_loc3_ - this.§8!M§.x,2) + Math.pow(_loc2_ - this.§8!M§.y,2));
         this.§1Z§.width = Math.sqrt(Math.pow(_loc3_ - this.§;!e§.x,2) + Math.pow(_loc2_ - this.§;!e§.y,2));
         this.§&!E§.height = this.§1Z§.height = _loc4_ * 2;
         this.§&!E§.y = -this.§&!E§.height / 2;
         this.§1Z§.y = -this.§1Z§.height / 2;
         this.§3]§ = false;
      }
      
      public function §8§() : void
      {
         while(this.§0!b§.length > 0)
         {
            this.§<!a§(0,true);
         }
         this.§2=§();
         this.addSlingshotObject("BIRD_SARDINE",this.§7F§,this.§6_§);
         this.setSlingShotState(§4!G§);
      }
      
      protected function §2=§() : void
      {
         §,!7§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.setSlingShotState(§;N§);
      }
      
      public function § !W§() : void
      {
         this.setNewCoordinatesForRubber(this.§!=§,this.§2!V§ + this.§?D§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§ !S§ == param1 && this.§>Q§ == param2)
         {
            return true;
         }
         this.§+!a§ = Math.sqrt((param2 - this.§2!V§) * (param2 - this.§2!V§) + (param1 - this.§!=§) * (param1 - this.§!=§));
         if(this.§+!a§ > this.§?D§)
         {
            if(param3)
            {
               this.§+!a§ = Math.sqrt((this.§>Q§ - this.§2!V§) * (this.§>Q§ - this.§2!V§) + (this.§ !S§ - this.§!=§) * (this.§ !S§ - this.§!=§));
               return false;
            }
            param1 = this.§!=§ + this.§?D§ * (param1 - this.§!=§) / this.§+!a§;
            param2 = this.§2!V§ + this.§?D§ * (param2 - this.§2!V§) / this.§+!a§;
            this.§+!a§ = this.§?D§;
         }
         this.§ !S§ = param1;
         this.§>Q§ = param2;
         this.§1[§ = Math.atan2(-(this.§>Q§ - this.§2!V§),this.§ !S§ - this.§!=§);
         this.§1[§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§ !S§ = param1 + this.§^x§;
            this.§>Q§ = param2 + this.§2!h§;
            this.§1[§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§?D§ / 2;
         if(this.§+!a§ > _loc7_ && this.§1[§ > -90 - _loc4_ + _loc5_ && this.§1[§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§!=§ + _loc7_ * (param1 - this.§!=§) / this.§+!a§;
            param2 = this.§2!V§ + _loc7_ * (param2 - this.§2!V§) / this.§+!a§;
            this.§+!a§ = _loc7_;
            this.§ !S§ = param1;
            this.§>Q§ = param2;
         }
         else if(this.§+!a§ > _loc7_ && this.§1[§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§1[§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§?D§ - _loc7_) * (Math.abs(this.§1[§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§!=§ + _loc8_ * (param1 - this.§!=§) / this.§+!a§;
            param2 = this.§2!V§ + _loc8_ * (param2 - this.§2!V§) / this.§+!a§;
            this.§+!a§ = _loc8_;
            this.§ !S§ = param1;
            this.§>Q§ = param2;
         }
         if(this.§+!a§ <= this.§?D§ * 0.45)
         {
            this.§8$§ = true;
         }
         else if(this.§8$§ && this.§+!a§ >= this.§?D§ * 0.8)
         {
            this.§]v§();
            this.§8$§ = false;
         }
         this.§3]§ = true;
         return true;
      }
      
      protected function §]v§() : void
      {
         §,!7§.playSound("SlingshotStreched");
      }
      
      public function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§7F§,this.§6_§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§7F§;
         this.§7F§ = param1;
         var _loc5_:Number = param2 - this.§6_§;
         this.§6_§ = param2;
         this.§]!U§ += _loc5_;
         this.§2!V§ += _loc5_;
         this.§>Q§ += _loc5_;
         this.§!=§ += _loc4_;
         this.§ !S§ += _loc4_;
         if(param3)
         {
            this.§-!<§(0);
         }
         this.§3]§ = true;
      }
      
      public function §'§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§ 3§ = null;
         _loc2_ = this.§0!b§[this.§7!B§];
         var _loc3_:Number = this.§+!a§ / this.§?D§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§7!N§.§"O§) : Number(§7!N§.§0C§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §2q§() : Point
      {
         var _loc1_:§ 3§ = null;
         if(this.§0!b§.length > this.§7!B§)
         {
            _loc1_ = this.§0!b§[this.§7!B§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §[!^§() : Point
      {
         return new Point(this.§!=§,this.§2!V§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§ 3§ = null;
         this.updateGroundControl(param1);
         if(this.§3]§)
         {
            this.§-!<§(param1);
         }
         this.§5z§ -= param1;
         if(this.§5z§ < 0)
         {
            this.§5z§ = 0;
         }
         if(this.mSlingShotState != §0!A§)
         {
            this.§%R§(param1,param2);
            _loc3_ = null;
            if(this.§0!b§.length > 0)
            {
               _loc3_ = this.§0!b§[this.§7!B§];
            }
            if(_loc3_)
            {
               _loc3_.§[x§(param1);
            }
            if(!_loc3_)
            {
               this.setSlingShotState(§0!A§);
            }
            else if(this.mSlingShotState == §8!4§)
            {
               if(this.§5z§ <= 0)
               {
                  this.setSlingShotState(§ w§);
                  _loc3_.§?C§();
               }
            }
            else if(this.mSlingShotState == § w§)
            {
               if(_loc3_.§1!S§)
               {
                  this.setSlingShotState(§4!G§);
               }
            }
            else if(this.mSlingShotState == §4!G§)
            {
               if(!_loc3_.§1!!§())
               {
                  _loc3_.setPosition(this.§ !S§ - _loc3_.radius * Math.cos(this.§1[§ / (180 / Math.PI)),this.§>Q§ + _loc3_.radius * Math.sin(this.§1[§ / (180 / Math.PI)));
               }
               if(this.§3_§)
               {
                  this.§ 2§(this.§+!a§ / this.§?D§,this.§1[§);
               }
            }
         }
      }
      
      public function §7+§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§ 3§ = null;
         if(this.§0!b§.length > 0)
         {
            _loc5_ = this.§0!b§[this.§7!B§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§ 2§(param3,param4);
      }
      
      protected function § 2§(param1:Number, param2:Number) : void
      {
         var _loc3_:§ 3§ = null;
         this.§^x§ = §%o§;
         this.§2!h§ = §'!N§;
         if(this.§0!b§.length > 0)
         {
            _loc3_ = this.§0!b§[this.§7!B§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§3_§ = false;
         this.§!!S§ = new Date().time;
         this.§^!I§.§1!f§(_loc3_,param1,param2);
         this.§<!a§(this.§7!B§,_loc3_.§8M§ > 0);
         this.§<K§();
         if(this.§7!B§ >= this.§0!b§.length)
         {
            this.setSlingShotState(§0!A§);
         }
         else
         {
            this.setSlingShotState(§8!4§);
         }
      }
      
      protected function §<K§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §,!7§.playSound("BirdShot" + _loc1_);
      }
      
      public function §%R§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§7!B§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§0!b§.length)
         {
            if(this.mSlingShotState == §;N§)
            {
               this.§0!b§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§0!b§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§ 3§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§ !W§();
         if(this.§@R§ >= this.§0!b§.length)
         {
            return false;
         }
         _loc1_ = this.§0!b§[this.§@R§];
         _loc2_ = §3!!§.§^!-§(_loc1_.name).score;
         this.§^!I§.addScore(_loc2_,§'-§.§+j§,true,_loc1_.x,_loc1_.y - 3,§7!?§.§=I§(_loc1_.name));
         _loc1_.§>!%§(-1,true);
         ++this.§@R§;
         return true;
      }
      
      public function §@!K§() : int
      {
         var _loc2_:§ 3§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§0!b§)
         {
            _loc1_ += §3!!§.§^!-§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §<j§() : int
      {
         return this.§]#§;
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§56§ >= 0)
         {
            this.§56§ -= param1;
            if(this.§56§ <= 0)
            {
               _loc2_ = this.§^!I§.objects.§0P§(this.§!=§,this.§]!U§);
               if(_loc2_ < 0)
               {
                  this.applyGravity(0.1);
                  this.§56§ = 0;
               }
               else if(!this.§^!I§.objects.§0;§(_loc2_).§>![§)
               {
                  this.§56§ = -1;
               }
               else if(this.§^!I§.objects.§0;§(_loc2_).§>!<§())
               {
                  this.§56§ = 2000;
               }
               else
               {
                  this.§56§ = 500;
               }
            }
         }
      }
      
      public function §!!X§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§^!I§.objects.§0P§(this.§!=§,this.§]!U§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.applyGravity(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§56§ = -1;
      }
      
      public function §1q§(param1:Number, param2:Number) : void
      {
         this.§8!2§.x = -param1;
         this.§8!2§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §4!G§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §4!G§ && this.§+!a§ > this.§?D§ * §6l§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.setSlingShotState(§4!G§);
         var _loc1_:§ 3§ = this.§0!b§[this.§7!B§];
         _loc1_.§>!%§(§"B§.§&7§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§ 3§ = this.§0!b§[this.§7!B§];
         _loc1_.§>!%§(§"B§.§ 7§);
      }
      
      public function shoot() : void
      {
         this.§3_§ = true;
      }
      
      protected function §<!a§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§ 3§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§0!b§[param1])
         {
            _loc3_ = this.§0!b§[param1];
            this.§,!C§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§%j§(this.§0!b§[param1]);
            }
            _loc3_.dispose();
            this.§0!b§[param1] = null;
         }
         this.§0!b§.splice(param1,1);
      }
      
      public function §%j§(param1:§ 3§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * § p§.§]!E§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * § p§.§]!E§) + Math.random() * -_loc8_ * 2;
            this.§^!I§.particles.addParticle(§7!?§.§=!E§,§do§.§+!c§,§7!?§.§22§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§7!?§.§7R§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§^!I§.particles.addParticle(§7!?§.§=!H§,§do§.§+!c§,§7!?§.§22§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §9?§(param1:§ 3§) : void
      {
         this.§<!a§(this.§0!b§.indexOf(param1));
      }
      
      public function §6$§() : void
      {
         var _loc1_:§ 3§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§ 3§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§0!b§.length - 1)
         {
            _loc1_ = this.§0!b§[_loc2_];
            if(!(_loc1_.§1!S§ && _loc2_ == 0))
            {
               _loc3_ = Math.sqrt((this.§7F§ - this.§0!b§[_loc2_].x) * (this.§7F§ - this.§0!b§[_loc2_].x) + (this.§6_§ - this.§0!b§[_loc2_].y) * (this.§6_§ - this.§0!b§[_loc2_].y));
               if((_loc4_ = Math.sqrt((this.§7F§ - this.§0!b§[_loc2_ + 1].x) * (this.§7F§ - this.§0!b§[_loc2_ + 1].x) + (this.§6_§ - this.§0!b§[_loc2_ + 1].y) * (this.§6_§ - this.§0!b§[_loc2_ + 1].y))) < _loc3_)
               {
                  _loc5_ = this.§0!b§[_loc2_];
                  this.§0!b§.splice(_loc2_,1);
                  this.§0!b§.splice(_loc2_ + 1,0,_loc5_);
                  _loc2_ = Math.max(-1,_loc2_ - 2);
               }
            }
            _loc2_++;
         }
         while(this.§,!C§.numChildren > 0)
         {
            this.§,!C§.removeChildAt(0);
         }
         _loc2_ = 0;
         while(_loc2_ < this.§0!b§.length)
         {
            _loc1_ = this.§0!b§[_loc2_];
            this.§,!C§.addChildAt(_loc1_.sprite,0);
            _loc2_++;
         }
      }
      
      public function §`!2§(param1:Number, param2:Number) : § 3§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§0!b§.length)
         {
            if(this.§0!b§[_loc3_])
            {
               if(this.§0!b§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§0!b§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §+!N§(param1:Number, param2:Number) : §7!N§
      {
         if(param1 >= this.§7F§ - this.§?D§ / 4 && param1 <= this.§7F§ + this.§?D§ / 4 && param2 >= this.§6_§ - this.§?D§ / 4 && this.§6_§ <= this.§]!U§)
         {
            return this;
         }
         return null;
      }
      
      public function §]!Q§(param1:§!!K§) : void
      {
         var _loc3_:§ 3§ = null;
         var _loc4_:§ l§ = null;
         param1.§;!Y§ = this.§7F§;
         param1.§'f§ = this.§6_§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§0!b§.length)
         {
            _loc3_ = this.§0!b§[_loc2_];
            (_loc4_ = new § l§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§1!,§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §+!_§() : void
      {
         while(this.§0!b§.length > 0)
         {
            this.§9?§(this.§0!b§[0]);
         }
      }
      
      public function §^!]§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§0!b§.length)
         {
            if(this.§0!b§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§0!b§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§7F§ > param1.x && this.§7F§ < param2.x && this.§6_§ > param1.y && this.§6_§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §#Q§() : Array
      {
         return [this.§8y§,this.§2! §];
      }
      
      public function §=!I§(param1:String, param2:Number, param3:Number) : § 3§
      {
         var _loc4_:§ 3§ = this.addSlingshotObject(param1,param2,param3);
         this.§6$§();
         return _loc4_;
      }
      
      public function §@S§() : Number
      {
         return this.§0!b§.length;
      }
      
      public function §#'§() : Boolean
      {
         return this.§,;§;
      }
   }
}
