package §9!'§
{
   import § A§.§68§;
   import § A§.§8z§;
   import §!!S§.Texture;
   import §&!b§.§ c§;
   import §+!]§.§+!=§;
   import §+!]§.§6H§;
   import §,!A§.§-q§;
   import §,!A§.§0i§;
   import §6!;§.§!>§;
   import §6!;§.§;o§;
   import §6!;§.Sprite;
   import §7e§.§8!P§;
   import §^!"§.§7R§;
   import §^f§.§<q§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §@!U§
   {
      
      public static const §3!9§:int = 0;
      
      public static const §"!I§:int = 1;
      
      public static const STATE_BIRD_IS_READY:int = 2;
      
      public static const §!!A§:int = 3;
      
      public static const §`V§:int = 5;
      
      public static const §]O§:int = 3151368;
      
      protected static const §,<§:int = 8;
      
      protected static const §-#§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const §88§:Number = 52.5;
      
      protected static const §"R§:Number = -0.7;
      
      protected static const §[`§:Number = 0;
      
      protected static var §;K§:Texture;
      
      public static const §%!?§:Number = 0.4;
       
      
      public var §]B§:§0!%§;
      
      public var §5T§:Number;
      
      public var §![§:Number;
      
      public var §02§:Number;
      
      protected var § !^§:Number;
      
      protected var § q§:Number;
      
      protected var § !S§:Number;
      
      protected var §05§:Number;
      
      public var §<l§:Number;
      
      public var §]P§:Boolean = false;
      
      protected var §]2§:Number;
      
      public var §5&§:Vector.<§91§>;
      
      public var §6x§:int;
      
      public var §+9§:int;
      
      public var §5!;§:Number;
      
      public var §-_§:Sprite;
      
      public var §;6§:int = 0;
      
      public var §[8§:Number = 0;
      
      public var §2H§:Array;
      
      public var §%!;§:Array;
      
      public var mSlingShotState:int;
      
      public var §6B§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §>^§:Boolean = false;
      
      public var §<T§:Number;
      
      protected var §%g§:Boolean = false;
      
      protected var §4!B§:Sprite;
      
      protected var §0I§:§;o§;
      
      protected var §9K§:§;o§;
      
      protected var §0!K§:Sprite;
      
      protected var §;D§:Sprite;
      
      protected var §+7§:Sprite;
      
      protected var §@!#§:§!>§;
      
      protected var §>!a§:§!>§;
      
      private var §`b§:Number = 0;
      
      private var §6_§:int = 0;
      
      protected var §1S§:Number = -0.7;
      
      protected var §,!!§:Number = 0;
      
      public function §@!U§(param1:§0!%§, param2:§8!P§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§7R§ = null;
         this.§5&§ = new Vector.<§91§>();
         super();
         this.§]B§ = param1;
         this.§4!B§ = param3;
         if(param2)
         {
            this.setPosition(param2.§;d§,param2.§&!_§);
            this.§ true§();
            _loc4_ = 0;
            while(_loc4_ < param2.§,b§)
            {
               _loc5_ = param2.§[!W§(_loc4_);
               this.addSlingshotObject(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§6_§ = this.§1]§();
            this.§6x§ = 0;
            if(this.§5&§.length <= 0)
            {
               § c§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§5T§ + " " + this.§![§);
               this.§#q§(§!!A§);
            }
            else
            {
               this.§#q§(§3!9§);
            }
         }
         else
         {
            § c§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§#q§(§!!A§);
         }
         this.§<T§ = 0;
         this.§3!g§();
         this.update(0,true);
         this.§&!;§();
         this.§0o§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§4!B§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§`b§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§6x§ < this.§5&§.length;
      }
      
      public function dispose() : void
      {
         while(this.§5&§.length > 0)
         {
            this.§!!K§(0);
         }
         this.§5&§ = null;
         if(this.§4!B§)
         {
            this.§4!B§.dispose();
            this.§4!B§ = null;
         }
         this.§-_§ = null;
         this.§2H§ = null;
         this.§%!;§ = null;
      }
      
      public function §-6§(param1:String, param2:Number, param3:Number, param4:int = -1) : §91§
      {
         var _loc5_:§91§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,param4)).§-!$§();
         this.§#q§(STATE_BIRD_IS_READY);
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §91§
      {
         var _loc5_:§91§ = new §91§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§5&§.push(_loc5_);
         }
         else
         {
            this.§5&§.splice(param4,0,_loc5_);
         }
         this.§-_§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §#q§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §3!9§)
         {
            this.§;!<§();
            this.§5!;§ = 1000;
         }
         else if(this.mSlingShotState == §"!I§)
         {
            this.§;!<§();
            this.§5!;§ = 0;
         }
         else if(this.mSlingShotState == STATE_BIRD_IS_READY)
         {
            this.§5!;§ = 10000;
            this.§>^§ = false;
            this.§;!<§();
         }
         else if(this.mSlingShotState == §!!A§)
         {
            this.§;!<§();
            this.§5!;§ = 2000;
         }
         else if(this.mSlingShotState == §`V§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§>^§ = false;
               this.§;!<§();
               this.§5&§[this.§6x§].setPosition(this.§ !S§ - this.§5&§[this.§6x§].radius * Math.cos(this.§[8§ / (180 / Math.PI)),this.§05§ + this.§5&§[this.§6x§].radius * Math.sin(this.§[8§ / (180 / Math.PI)));
            }
            else
            {
               this.§;!<§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §'#§() : §0!%§
      {
         return this.§]B§;
      }
      
      public function §3!C§() : Boolean
      {
         return this.mSlingShotState == §!!A§ && this.§5!;§ <= 0;
      }
      
      private function § true§() : void
      {
         var _loc1_:§6H§ = this.§<!A§();
         var _loc2_:§+!=§ = _loc1_.getFrame(0);
         var _loc3_:§+!=§ = _loc1_.getFrame(1);
         this.§@!#§ = new §!>§(_loc2_.texture);
         this.§@!#§.scaleX = _loc2_.scale;
         this.§@!#§.scaleY = _loc2_.scale;
         this.§>!a§ = new §!>§(_loc3_.texture);
         this.§>!a§.scaleX = _loc3_.scale;
         this.§>!a§.scaleY = _loc3_.scale;
         this.§@!c§();
         this.§0!I§();
         this.§-_§ = new Sprite();
         this.§4!B§.addChild(this.§@!#§);
         this.§4!B§.addChild(this.§0!K§);
         this.§4!B§.addChild(this.§-_§);
         this.§4!B§.addChild(this.§+7§);
         this.§4!B§.addChild(this.§;D§);
         this.§4!B§.addChild(this.§>!a§);
         this.§02§ = this.§![§ + 8.5;
      }
      
      protected function §<!A§() : §6H§
      {
         return this.§]B§.§2!]§.§>n§("SLINGSHOT");
      }
      
      public function §@!c§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§ !^§ = this.§5T§;
         this.§ q§ = this.§![§;
         this.§]2§ = §&<§.§4z§;
         _loc1_ = null;
      }
      
      protected function §0!I§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§;K§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §;K§ = this.§]B§.textureManager.§@!&§(_loc2_);
         }
         this.§+7§ = new Sprite();
         var _loc1_:§!>§ = new §!>§(§;K§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§+7§.addChild(_loc1_);
         this.§0!K§ = new Sprite();
         this.§0I§ = new §;o§(2,2,§]O§);
         this.§0!K§.addChild(this.§0I§);
         this.§;D§ = new Sprite();
         this.§9K§ = new §;o§(2,2,§]O§);
         this.§;D§.addChild(this.§9K§);
      }
      
      public function §0o§(param1:Number) : void
      {
         var _loc2_:Number = this.§05§ / §0!%§.§"m§;
         var _loc3_:Number = this.§ !S§ / §0!%§.§"m§;
         var _loc4_:Number = 3.5 + 8 * ((this.§]2§ - this.§<l§) / this.§]2§);
         this.§+7§.x = _loc3_;
         this.§+7§.y = _loc2_;
         this.§+7§.rotation = -this.§[8§ / (180 / Math.PI);
         this.§@!#§.x = this.§5T§ / §0!%§.§"m§ - 3;
         this.§@!#§.y = this.§![§ / §0!%§.§"m§ - 30;
         this.§>!a§.x = this.§5T§ / §0!%§.§"m§ - 30;
         this.§>!a§.y = this.§![§ / §0!%§.§"m§ - 30;
         this.§;D§.x = this.§5T§ / §0!%§.§"m§ - 17;
         this.§;D§.y = this.§![§ / §0!%§.§"m§ + 5;
         this.§;D§.rotation = Math.atan2(_loc2_ - this.§;D§.y,_loc3_ - this.§;D§.x);
         this.§0!K§.x = this.§5T§ / §0!%§.§"m§ + 22;
         this.§0!K§.y = this.§![§ / §0!%§.§"m§;
         this.§0!K§.rotation = Math.atan2(_loc2_ - this.§0!K§.y,_loc3_ - this.§0!K§.x);
         this.§9K§.width = Math.sqrt(Math.pow(_loc3_ - this.§;D§.x,2) + Math.pow(_loc2_ - this.§;D§.y,2));
         this.§0I§.width = Math.sqrt(Math.pow(_loc3_ - this.§0!K§.x,2) + Math.pow(_loc2_ - this.§0!K§.y,2));
         this.§9K§.height = this.§0I§.height = _loc4_ * 2;
         this.§9K§.y = -this.§9K§.height / 2;
         this.§0I§.y = -this.§0I§.height / 2;
         this.§6B§ = false;
      }
      
      public function §'!"§() : void
      {
         while(this.§5&§.length > 0)
         {
            this.§!!K§(0,true);
         }
         this.§>S§();
         this.addSlingshotObject("BIRD_SARDINE",this.§5T§,this.§![§);
         this.§#q§(STATE_BIRD_IS_READY);
      }
      
      protected function §>S§() : void
      {
         §<q§.§5!S§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§#q§(§`V§);
      }
      
      public function §;!<§() : void
      {
         this.setNewCoordinatesForRubber(this.§ !^§,this.§ q§ + this.§]2§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§ !S§ == param1 && this.§05§ == param2)
         {
            return true;
         }
         this.§<l§ = Math.sqrt((param2 - this.§ q§) * (param2 - this.§ q§) + (param1 - this.§ !^§) * (param1 - this.§ !^§));
         if(this.§<l§ > this.§]2§)
         {
            if(param3)
            {
               this.§<l§ = Math.sqrt((this.§05§ - this.§ q§) * (this.§05§ - this.§ q§) + (this.§ !S§ - this.§ !^§) * (this.§ !S§ - this.§ !^§));
               return false;
            }
            param1 = this.§ !^§ + this.§]2§ * (param1 - this.§ !^§) / this.§<l§;
            param2 = this.§ q§ + this.§]2§ * (param2 - this.§ q§) / this.§<l§;
            this.§<l§ = this.§]2§;
         }
         this.§ !S§ = param1;
         this.§05§ = param2;
         this.§[8§ = Math.atan2(-(this.§05§ - this.§ q§),this.§ !S§ - this.§ !^§);
         this.§[8§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§ !S§ = param1 + this.§1S§;
            this.§05§ = param2 + this.§,!!§;
            this.§[8§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§]2§ / 2;
         if(this.§<l§ > _loc7_ && this.§[8§ > -90 - _loc4_ + _loc5_ && this.§[8§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§ !^§ + _loc7_ * (param1 - this.§ !^§) / this.§<l§;
            param2 = this.§ q§ + _loc7_ * (param2 - this.§ q§) / this.§<l§;
            this.§<l§ = _loc7_;
            this.§ !S§ = param1;
            this.§05§ = param2;
         }
         else if(this.§<l§ > _loc7_ && this.§[8§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§[8§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§]2§ - _loc7_) * (Math.abs(this.§[8§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§ !^§ + _loc8_ * (param1 - this.§ !^§) / this.§<l§;
            param2 = this.§ q§ + _loc8_ * (param2 - this.§ q§) / this.§<l§;
            this.§<l§ = _loc8_;
            this.§ !S§ = param1;
            this.§05§ = param2;
         }
         if(this.§<l§ <= this.§]2§ * 0.45)
         {
            this.§]P§ = true;
         }
         else if(this.§]P§ && this.§<l§ >= this.§]2§ * 0.8)
         {
            this.§-F§();
            this.§]P§ = false;
         }
         this.§6B§ = true;
         return true;
      }
      
      protected function §-F§() : void
      {
         §<q§.§5!S§("SlingshotStreched");
      }
      
      public function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§5T§,this.§![§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§5T§;
         this.§5T§ = param1;
         var _loc5_:Number = param2 - this.§![§;
         this.§![§ = param2;
         this.§02§ += _loc5_;
         this.§ q§ += _loc5_;
         this.§05§ += _loc5_;
         this.§ !^§ += _loc4_;
         this.§ !S§ += _loc4_;
         if(param3)
         {
            this.§0o§(0);
         }
         this.§6B§ = true;
      }
      
      public function §,!`§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§91§ = null;
         _loc2_ = this.§5&§[this.§6x§];
         var _loc3_:Number = this.§<l§ / this.§]2§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§@!U§.§88§) : Number(§@!U§.BIRD_LAUNCH_FORCE);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §73§() : Point
      {
         var _loc1_:§91§ = null;
         if(this.§5&§.length > this.§6x§)
         {
            _loc1_ = this.§5&§[this.§6x§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §0h§() : Point
      {
         return new Point(this.§ !^§,this.§ q§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§91§ = null;
         this.updateGroundControl(param1);
         if(this.§6B§)
         {
            this.§0o§(param1);
         }
         this.§5!;§ -= param1;
         if(this.§5!;§ < 0)
         {
            this.§5!;§ = 0;
         }
         if(this.mSlingShotState != §!!A§)
         {
            this.§=!a§(param1,param2);
            _loc3_ = null;
            if(this.§5&§.length > 0)
            {
               _loc3_ = this.§5&§[this.§6x§];
            }
            if(_loc3_)
            {
               _loc3_.§-@§(param1);
            }
            if(!_loc3_)
            {
               this.§#q§(§!!A§);
            }
            else if(this.mSlingShotState == §3!9§)
            {
               if(this.§5!;§ <= 0)
               {
                  this.§#q§(§"!I§);
                  _loc3_.§[!'§();
               }
            }
            else if(this.mSlingShotState == §"!I§)
            {
               if(_loc3_.§>0§)
               {
                  this.§#q§(STATE_BIRD_IS_READY);
               }
            }
            else if(this.mSlingShotState == STATE_BIRD_IS_READY)
            {
               if(!_loc3_.§"!M§())
               {
                  _loc3_.setPosition(this.§ !S§ - _loc3_.radius * Math.cos(this.§[8§ / (180 / Math.PI)),this.§05§ + _loc3_.radius * Math.sin(this.§[8§ / (180 / Math.PI)));
               }
               if(this.§>^§)
               {
                  this.§<L§(this.§<l§ / this.§]2§,this.§[8§);
               }
            }
         }
      }
      
      public function §"M§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§91§ = null;
         if(this.§5&§.length > 0)
         {
            _loc5_ = this.§5&§[this.§6x§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§<L§(param3,param4);
      }
      
      protected function §<L§(param1:Number, param2:Number) : void
      {
         var _loc3_:§91§ = null;
         this.§1S§ = §"R§;
         this.§,!!§ = §[`§;
         if(this.§5&§.length > 0)
         {
            _loc3_ = this.§5&§[this.§6x§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§>^§ = false;
         this.§`b§ = new Date().time;
         this.§]B§.§7!a§(_loc3_,param1,param2);
         this.§!!K§(this.§6x§,_loc3_.§#!@§ > 0);
         this.§<X§();
         if(this.§6x§ >= this.§5&§.length)
         {
            this.§#q§(§!!A§);
         }
         else
         {
            this.§#q§(§3!9§);
         }
      }
      
      protected function §<X§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §<q§.§5!S§("BirdShot" + _loc1_);
      }
      
      public function §=!a§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§6x§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§5&§.length)
         {
            if(this.mSlingShotState == §`V§)
            {
               this.§5&§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§5&§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§91§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§;!<§();
         if(this.§+9§ >= this.§5&§.length)
         {
            return false;
         }
         _loc1_ = this.§5&§[this.§+9§];
         _loc2_ = §8z§.§3Z§(_loc1_.name).score;
         this.§]B§.addScore(_loc2_,§8j§.§3a§,true,_loc1_.x,_loc1_.y - 3,§-q§.§^v§(_loc1_.name));
         _loc1_.§<!1§(-1,true);
         ++this.§+9§;
         return true;
      }
      
      public function §1]§() : int
      {
         var _loc2_:§91§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§5&§)
         {
            _loc1_ += §8z§.§3Z§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §0R§() : int
      {
         return this.§6_§;
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§<T§ >= 0)
         {
            this.§<T§ -= param1;
            if(this.§<T§ <= 0)
            {
               _loc2_ = this.§]B§.objects.§1H§(this.§ !^§,this.§02§);
               if(_loc2_ < 0)
               {
                  this.applyGravity(0.1);
                  this.§<T§ = 0;
               }
               else if(!this.§]B§.objects.§]I§(_loc2_).§+y§)
               {
                  this.§<T§ = -1;
               }
               else if(this.§]B§.objects.§]I§(_loc2_).§&n§())
               {
                  this.§<T§ = 2000;
               }
               else
               {
                  this.§<T§ = 500;
               }
            }
         }
      }
      
      public function §&!;§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§]B§.objects.§1H§(this.§ !^§,this.§02§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.applyGravity(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§<T§ = -1;
      }
      
      public function §`s§(param1:Number, param2:Number) : void
      {
         this.§4!B§.x = -param1;
         this.§4!B§.y = -param2;
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
         return this.mSlingShotState == STATE_BIRD_IS_READY && this.§<l§ > this.§]2§ * §%!?§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§#q§(STATE_BIRD_IS_READY);
         var _loc1_:§91§ = this.§5&§[this.§6x§];
         _loc1_.§<!1§(§68§.§-!6§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§91§ = this.§5&§[this.§6x§];
         _loc1_.§<!1§(§68§.§;!&§);
      }
      
      public function shoot() : void
      {
         this.§>^§ = true;
      }
      
      protected function §!!K§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§91§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§5&§[param1])
         {
            _loc3_ = this.§5&§[param1];
            this.§-_§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§<B§(this.§5&§[param1]);
            }
            _loc3_.dispose();
            this.§5&§[param1] = null;
         }
         this.§5&§.splice(param1,1);
      }
      
      public function §<B§(param1:§91§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §0!%§.§"m§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §0!%§.§"m§) + Math.random() * -_loc8_ * 2;
            this.§]B§.particles.addParticle(§-q§.§]!^§,§0i§.§>E§,§-q§.§5[§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§-q§.§]8§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§]B§.particles.addParticle(§-q§.§3!!§,§0i§.§>E§,§-q§.§5[§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §?l§(param1:§91§) : void
      {
         this.§!!K§(this.§5&§.indexOf(param1));
      }
      
      public function §3!g§() : void
      {
         var _loc2_:§91§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§91§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§5&§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§5T§ - this.§5&§[_loc1_].x) * (this.§5T§ - this.§5&§[_loc1_].x) + (this.§![§ - this.§5&§[_loc1_].y) * (this.§![§ - this.§5&§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§5T§ - this.§5&§[_loc1_ + 1].x) * (this.§5T§ - this.§5&§[_loc1_ + 1].x) + (this.§![§ - this.§5&§[_loc1_ + 1].y) * (this.§![§ - this.§5&§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§5&§[_loc1_];
               this.§5&§.splice(_loc1_,1);
               this.§5&§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§-_§.numChildren > 0)
         {
            this.§-_§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§5&§.length)
         {
            _loc2_ = this.§5&§[_loc1_];
            this.§-_§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §=!b§(param1:Number, param2:Number) : §91§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§5&§.length)
         {
            if(this.§5&§[_loc3_])
            {
               if(this.§5&§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§5&§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §4!8§(param1:Number, param2:Number) : §@!U§
      {
         if(param1 >= this.§5T§ - this.§]2§ / 4 && param1 <= this.§5T§ + this.§]2§ / 4 && param2 >= this.§![§ - this.§]2§ / 4 && this.§![§ <= this.§02§)
         {
            return this;
         }
         return null;
      }
      
      public function §9!L§(param1:§8!P§) : void
      {
         var _loc3_:§91§ = null;
         var _loc4_:§7R§ = null;
         param1.§;d§ = this.§5T§;
         param1.§&!_§ = this.§![§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§5&§.length)
         {
            _loc3_ = this.§5&§[_loc2_];
            (_loc4_ = new §7R§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§"!#§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §7!W§() : void
      {
         while(this.§5&§.length > 0)
         {
            this.§?l§(this.§5&§[0]);
         }
      }
      
      public function §3!§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§5&§.length)
         {
            if(this.§5&§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§5&§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§5T§ > param1.x && this.§5T§ < param2.x && this.§![§ > param1.y && this.§![§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §+!<§() : Array
      {
         return [this.§>!a§,this.§@!#§];
      }
      
      public function §9=§(param1:String, param2:Number, param3:Number) : §91§
      {
         var _loc4_:§91§ = this.addSlingshotObject(param1,param2,param3);
         this.§3!g§();
         return _loc4_;
      }
      
      public function § @§() : Number
      {
         return this.§5&§.length;
      }
      
      public function §'!A§() : Boolean
      {
         return this.§%g§;
      }
   }
}
