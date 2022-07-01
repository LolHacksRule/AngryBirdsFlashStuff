package §=b§
{
   import §1'§.§%u§;
   import §3>§.§>!&§;
   import §3>§.§["!§;
   import §6!&§.§0!b§;
   import §6p§.§'!B§;
   import §7q§.§"L§;
   import §7q§.§0!§;
   import §7q§.Sprite;
   import §8Y§.Texture;
   import §;!<§.§9B§;
   import §;!<§.§<!D§;
   import §;w§.§3"+§;
   import §;w§.§5!Y§;
   import §@!;§.§&F§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §5?§
   {
      
      public static const §;![§:int = 0;
      
      public static const §>9§:int = 1;
      
      public static const §&!Q§:int = 2;
      
      public static const §'h§:int = 3;
      
      public static const §#!j§:int = 5;
      
      public static const §"[§:int = 3151368;
      
      protected static const §<""§:int = 8;
      
      protected static const §<D§:int = 0;
      
      public static const §4!k§:Number = 46.25;
      
      public static const §?!e§:Number = 52.5;
      
      protected static const §27§:Number = -0.7;
      
      protected static const §=!§:Number = 0;
      
      protected static var §=!v§:Texture;
      
      public static const §21§:Number = 0.4;
       
      
      public var §;!x§:§-!K§;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §2p§:Number;
      
      protected var §+I§:Number;
      
      protected var §1W§:Number;
      
      protected var §5!4§:Number;
      
      protected var §9" §:Number;
      
      public var §8c§:Number;
      
      public var §'!y§:Boolean = false;
      
      protected var §8"§:Number;
      
      public var mBirds:Vector.<§8",§>;
      
      public var §?!d§:int;
      
      public var §<`§:int;
      
      public var §<"#§:Number;
      
      public var §<5§:Sprite;
      
      public var §5!E§:int = 0;
      
      public var §"!9§:Number = 0;
      
      public var §7!9§:Array;
      
      public var §<!;§:Array;
      
      public var mSlingShotState:int;
      
      public var §^!l§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §?!7§:Boolean = false;
      
      public var §>E§:Number;
      
      protected var §5H§:Sprite;
      
      protected var §&!R§:§"L§;
      
      protected var §#!$§:§"L§;
      
      protected var § !U§:Sprite;
      
      protected var §[!e§:Sprite;
      
      protected var §""4§:Sprite;
      
      protected var §>"§:§0!§;
      
      protected var §4!W§:§0!§;
      
      private var §&!%§:Number = 0;
      
      private var §3!'§:int = 0;
      
      protected var §&b§:Number = -0.7;
      
      protected var §8N§:Number = 0;
      
      public function §5?§(param1:§-!K§, param2:§0!b§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§%u§ = null;
         this.mBirds = new Vector.<§8",§>();
         super();
         this.§;!x§ = param1;
         this.§5H§ = param3;
         if(param2)
         {
            this.setPosition(param2.§0@§,param2.§,!E§);
            this.§?!C§();
            _loc4_ = 0;
            while(_loc4_ < param2.§&9§)
            {
               _loc5_ = param2.§-!_§(_loc4_);
               this.§!!-§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§3!'§ = this.§%!E§();
            this.§?!d§ = 0;
            if(this.mBirds.length <= 0)
            {
               §&F§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.mX + " " + this.mY);
               this.setSlingShotState(§'h§);
            }
            else
            {
               this.setSlingShotState(§;![§);
            }
         }
         else
         {
            §&F§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.setSlingShotState(§'h§);
         }
         this.§>E§ = 0;
         this.§[N§();
         this.update(0,true);
         this.§5!5§();
         this.§3!f§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§5H§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§&!%§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§?!d§ < this.mBirds.length;
      }
      
      public function dispose() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§ "#§(0);
         }
         this.mBirds = null;
         if(this.§5H§)
         {
            this.§5H§.dispose();
            this.§5H§ = null;
         }
         this.§<5§ = null;
         this.§7!9§ = null;
         this.§<!;§ = null;
      }
      
      public function §^k§(param1:String, param2:Number, param3:Number, param4:int = -1) : §8",§
      {
         var _loc5_:§8",§;
         (_loc5_ = this.§!!-§(param1,param2,param3,param4)).§ ",§();
         return _loc5_;
      }
      
      protected function §!!-§(param1:String, param2:Number, param3:Number, param4:int = -1) : §8",§
      {
         var _loc5_:§8",§ = new §8",§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.mBirds.push(_loc5_);
         }
         else
         {
            this.mBirds.splice(param4,0,_loc5_);
         }
         this.§<5§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function setSlingShotState(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §;![§)
         {
            this.§&S§();
            this.§<"#§ = 1000;
         }
         else if(this.mSlingShotState == §>9§)
         {
            this.§&S§();
            this.§<"#§ = 0;
         }
         else if(this.mSlingShotState == §&!Q§)
         {
            this.§<"#§ = 10000;
            this.§?!7§ = false;
            this.§&S§();
         }
         else if(this.mSlingShotState == §'h§)
         {
            this.§&S§();
            this.§<"#§ = 2000;
         }
         else if(this.mSlingShotState == §#!j§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§?!7§ = false;
               this.§&S§();
               this.mBirds[this.§?!d§].setPosition(this.§5!4§ - this.mBirds[this.§?!d§].radius * Math.cos(this.§"!9§ / (180 / Math.PI)),this.§9" § + this.mBirds[this.§?!d§].radius * Math.sin(this.§"!9§ / (180 / Math.PI)));
            }
            else
            {
               this.§&S§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §'!E§() : §-!K§
      {
         return this.§;!x§;
      }
      
      public function §1!`§() : Boolean
      {
         return this.mSlingShotState == §'h§ && this.§<"#§ <= 0;
      }
      
      private function §?!C§() : void
      {
         var _loc1_:§9B§ = this.§,e§();
         var _loc2_:§<!D§ = _loc1_.getFrame(0);
         var _loc3_:§<!D§ = _loc1_.getFrame(1);
         this.§>"§ = new §0!§(_loc2_.texture);
         this.§>"§.scaleX = _loc2_.scale;
         this.§>"§.scaleY = _loc2_.scale;
         this.§4!W§ = new §0!§(_loc3_.texture);
         this.§4!W§.scaleX = _loc3_.scale;
         this.§4!W§.scaleY = _loc3_.scale;
         this.§!!c§();
         this.§9s§();
         this.§<5§ = new Sprite();
         this.§5H§.addChild(this.§>"§);
         this.§5H§.addChild(this.§ !U§);
         this.§5H§.addChild(this.§<5§);
         this.§5H§.addChild(this.§""4§);
         this.§5H§.addChild(this.§[!e§);
         this.§5H§.addChild(this.§4!W§);
         this.§2p§ = this.mY + 8.5;
      }
      
      protected function §,e§() : §9B§
      {
         return this.§;!x§.§"!i§.§]@§("SLINGSHOT");
      }
      
      public function §!!c§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§+I§ = this.mX;
         this.§1W§ = this.mY;
         this.§8"§ = §0;§.§=C§;
         _loc1_ = null;
      }
      
      protected function §9s§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§=!v§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §=!v§ = this.§;!x§.§20§.§>!d§(_loc2_);
         }
         this.§""4§ = new Sprite();
         var _loc1_:§0!§ = new §0!§(§=!v§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§""4§.addChild(_loc1_);
         this.§ !U§ = new Sprite();
         this.§&!R§ = new §"L§(2,2,§"[§);
         this.§ !U§.addChild(this.§&!R§);
         this.§[!e§ = new Sprite();
         this.§#!$§ = new §"L§(2,2,§"[§);
         this.§[!e§.addChild(this.§#!$§);
      }
      
      public function §3!f§(param1:Number) : void
      {
         var _loc2_:Number = this.§9" § / §-!K§.§"!C§;
         var _loc3_:Number = this.§5!4§ / §-!K§.§"!C§;
         var _loc4_:Number = 3.5 + 8 * ((this.§8"§ - this.§8c§) / this.§8"§);
         this.§""4§.x = _loc3_;
         this.§""4§.y = _loc2_;
         this.§""4§.rotation = -this.§"!9§ / (180 / Math.PI);
         this.§>"§.x = this.mX / §-!K§.§"!C§ - 3;
         this.§>"§.y = this.mY / §-!K§.§"!C§ - 30;
         this.§4!W§.x = this.mX / §-!K§.§"!C§ - 30;
         this.§4!W§.y = this.mY / §-!K§.§"!C§ - 30;
         this.§[!e§.x = this.mX / §-!K§.§"!C§ - 17;
         this.§[!e§.y = this.mY / §-!K§.§"!C§ + 5;
         this.§[!e§.rotation = Math.atan2(_loc2_ - this.§[!e§.y,_loc3_ - this.§[!e§.x);
         this.§ !U§.x = this.mX / §-!K§.§"!C§ + 22;
         this.§ !U§.y = this.mY / §-!K§.§"!C§;
         this.§ !U§.rotation = Math.atan2(_loc2_ - this.§ !U§.y,_loc3_ - this.§ !U§.x);
         this.§#!$§.width = Math.sqrt(Math.pow(_loc3_ - this.§[!e§.x,2) + Math.pow(_loc2_ - this.§[!e§.y,2));
         this.§&!R§.width = Math.sqrt(Math.pow(_loc3_ - this.§ !U§.x,2) + Math.pow(_loc2_ - this.§ !U§.y,2));
         this.§#!$§.height = this.§&!R§.height = _loc4_ * 2;
         this.§#!$§.y = -this.§#!$§.height / 2;
         this.§&!R§.y = -this.§&!R§.height / 2;
         this.§^!l§ = false;
      }
      
      public function §<7§() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§ "#§(0,true);
         }
         this.§&P§();
         this.§!!-§("BIRD_SARDINE",this.mX,this.mY);
         this.setSlingShotState(§&!Q§);
      }
      
      protected function §&P§() : void
      {
         §'!B§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.setSlingShotState(§#!j§);
      }
      
      public function §&S§() : void
      {
         this.setNewCoordinatesForRubber(this.§+I§,this.§1W§ + this.§8"§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§5!4§ == param1 && this.§9" § == param2)
         {
            return true;
         }
         this.§8c§ = Math.sqrt((param2 - this.§1W§) * (param2 - this.§1W§) + (param1 - this.§+I§) * (param1 - this.§+I§));
         if(this.§8c§ > this.§8"§)
         {
            if(param3)
            {
               this.§8c§ = Math.sqrt((this.§9" § - this.§1W§) * (this.§9" § - this.§1W§) + (this.§5!4§ - this.§+I§) * (this.§5!4§ - this.§+I§));
               return false;
            }
            param1 = this.§+I§ + this.§8"§ * (param1 - this.§+I§) / this.§8c§;
            param2 = this.§1W§ + this.§8"§ * (param2 - this.§1W§) / this.§8c§;
            this.§8c§ = this.§8"§;
         }
         this.§5!4§ = param1;
         this.§9" § = param2;
         this.§"!9§ = Math.atan2(-(this.§9" § - this.§1W§),this.§5!4§ - this.§+I§);
         this.§"!9§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§5!4§ = param1 + this.§&b§;
            this.§9" § = param2 + this.§8N§;
            this.§"!9§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§8"§ / 2;
         if(this.§8c§ > _loc7_ && this.§"!9§ > -90 - _loc4_ + _loc5_ && this.§"!9§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§+I§ + _loc7_ * (param1 - this.§+I§) / this.§8c§;
            param2 = this.§1W§ + _loc7_ * (param2 - this.§1W§) / this.§8c§;
            this.§8c§ = _loc7_;
            this.§5!4§ = param1;
            this.§9" § = param2;
         }
         else if(this.§8c§ > _loc7_ && this.§"!9§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§"!9§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§8"§ - _loc7_) * (Math.abs(this.§"!9§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§+I§ + _loc8_ * (param1 - this.§+I§) / this.§8c§;
            param2 = this.§1W§ + _loc8_ * (param2 - this.§1W§) / this.§8c§;
            this.§8c§ = _loc8_;
            this.§5!4§ = param1;
            this.§9" § = param2;
         }
         if(this.§8c§ <= this.§8"§ * 0.45)
         {
            this.§'!y§ = true;
         }
         else if(this.§'!y§ && this.§8c§ >= this.§8"§ * 0.8)
         {
            this.§'!+§();
            this.§'!y§ = false;
         }
         this.§^!l§ = true;
         return true;
      }
      
      protected function §'!+§() : void
      {
         §'!B§.playSound("SlingshotStreched");
      }
      
      public function §?V§(param1:Number) : void
      {
         this.setPosition(this.mX,this.mY + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.mX;
         this.mX = param1;
         var _loc5_:Number = param2 - this.mY;
         this.mY = param2;
         this.§2p§ += _loc5_;
         this.§1W§ += _loc5_;
         this.§9" § += _loc5_;
         this.§+I§ += _loc4_;
         this.§5!4§ += _loc4_;
         if(param3)
         {
            this.§3!f§(0);
         }
         this.§^!l§ = true;
      }
      
      public function §;<§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§8",§ = null;
         _loc2_ = this.mBirds[this.§?!d§];
         var _loc3_:Number = this.§8c§ / this.§8"§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§5?§.§?!e§) : Number(§5?§.§4!k§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §"B§() : Point
      {
         var _loc1_:§8",§ = null;
         if(this.mBirds.length > this.§?!d§)
         {
            _loc1_ = this.mBirds[this.§?!d§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §'!R§() : Point
      {
         return new Point(this.§+I§,this.§1W§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§8",§ = null;
         this.§""3§(param1);
         if(this.§^!l§)
         {
            this.§3!f§(param1);
         }
         this.§<"#§ -= param1;
         if(this.§<"#§ < 0)
         {
            this.§<"#§ = 0;
         }
         if(this.mSlingShotState != §'h§)
         {
            this.§!!q§(param1,param2);
            _loc3_ = null;
            if(this.mBirds.length > 0)
            {
               _loc3_ = this.mBirds[this.§?!d§];
            }
            if(_loc3_)
            {
               _loc3_.§?!x§(param1);
            }
            if(!_loc3_)
            {
               this.setSlingShotState(§'h§);
            }
            else if(this.mSlingShotState == §;![§)
            {
               if(this.§<"#§ <= 0)
               {
                  this.setSlingShotState(§>9§);
                  _loc3_.§2"1§();
               }
            }
            else if(this.mSlingShotState == §>9§)
            {
               if(_loc3_.§<N§)
               {
                  this.setSlingShotState(§&!Q§);
               }
            }
            else if(this.mSlingShotState == §&!Q§)
            {
               _loc3_.setPosition(this.§5!4§ - _loc3_.radius * Math.cos(this.§"!9§ / (180 / Math.PI)),this.§9" § + _loc3_.radius * Math.sin(this.§"!9§ / (180 / Math.PI)));
               if(this.§?!7§)
               {
                  this.§8! §(this.§8c§ / this.§8"§,this.§"!9§);
               }
            }
         }
      }
      
      public function § A§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§8",§ = null;
         if(this.mBirds.length > 0)
         {
            _loc5_ = this.mBirds[this.§?!d§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§8! §(param3,param4);
      }
      
      protected function §8! §(param1:Number, param2:Number) : void
      {
         var _loc3_:§8",§ = null;
         this.§&b§ = §27§;
         this.§8N§ = §=!§;
         if(this.mBirds.length > 0)
         {
            _loc3_ = this.mBirds[this.§?!d§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§?!7§ = false;
         this.§&!%§ = new Date().time;
         this.§;!x§.§<&§(_loc3_,param1,param2);
         this.§ "#§(this.§?!d§,_loc3_.§=!w§ > 0);
         this.§+-§();
         if(this.§?!d§ >= this.mBirds.length)
         {
            this.setSlingShotState(§'h§);
         }
         else
         {
            this.setSlingShotState(§;![§);
         }
      }
      
      protected function §+-§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §'!B§.playSound("BirdShot" + _loc1_);
      }
      
      public function §!!q§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§?!d§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.mBirds.length)
         {
            if(this.mSlingShotState == §#!j§)
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
         var _loc1_:§8",§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§&S§();
         if(this.§<`§ >= this.mBirds.length)
         {
            return false;
         }
         _loc1_ = this.mBirds[this.§<`§];
         _loc2_ = §["!§.§+!s§(_loc1_.name).score;
         this.§;!x§.addScore(_loc2_,§'=§.§4"4§,true,_loc1_.x,_loc1_.y - 3,§3"+§.§%"0§(_loc1_.name));
         _loc1_.§-!z§(-1,true);
         ++this.§<`§;
         return true;
      }
      
      public function §%!E§() : int
      {
         var _loc2_:§8",§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mBirds)
         {
            _loc1_ += §["!§.§+!s§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §0!L§() : int
      {
         return this.§3!'§;
      }
      
      public function §""3§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§>E§ >= 0)
         {
            this.§>E§ -= param1;
            if(this.§>E§ <= 0)
            {
               _loc2_ = this.§;!x§.objects.§0`§(this.§+I§,this.§2p§);
               if(_loc2_ < 0)
               {
                  this.§?V§(0.1);
                  this.§>E§ = 0;
               }
               else if(!this.§;!x§.objects.getObject(_loc2_).§!!$§)
               {
                  this.§>E§ = -1;
               }
               else if(this.§;!x§.objects.getObject(_loc2_).§@_§())
               {
                  this.§>E§ = 2000;
               }
               else
               {
                  this.§>E§ = 500;
               }
            }
         }
      }
      
      public function §5!5§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§;!x§.objects.§0`§(this.§+I§,this.§2p§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§?V§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§>E§ = -1;
      }
      
      public function §,"#§(param1:Number, param2:Number) : void
      {
         this.§5H§.x = -param1;
         this.§5H§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §&!Q§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §&!Q§ && this.§8c§ > this.§8"§ * §21§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.setSlingShotState(§&!Q§);
         var _loc1_:§8",§ = this.mBirds[this.§?!d§];
         _loc1_.§-!z§(§>!&§.§;r§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§8",§ = this.mBirds[this.§?!d§];
         _loc1_.§-!z§(§>!&§.§;!c§);
      }
      
      public function shoot() : void
      {
         this.§?!7§ = true;
      }
      
      protected function § "#§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§8",§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.mBirds[param1])
         {
            _loc3_ = this.mBirds[param1];
            this.§<5§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§;J§(this.mBirds[param1]);
            }
            _loc3_.dispose();
            this.mBirds[param1] = null;
         }
         this.mBirds.splice(param1,1);
      }
      
      public function §;J§(param1:§8",§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §-!K§.§"!C§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §-!K§.§"!C§) + Math.random() * -_loc8_ * 2;
            this.§;!x§.particles.§continue§(§3"+§.§2s§,§5!Y§.§%R§,§3"+§.§^!q§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§3"+§.§`d§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§;!x§.particles.§continue§(§3"+§.§7"!§,§5!Y§.§%R§,§3"+§.§^!q§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:§8",§) : void
      {
         this.§ "#§(this.mBirds.indexOf(param1));
      }
      
      public function §[N§() : void
      {
         var _loc2_:§8",§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§8",§ = null;
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
         while(this.§<5§.numChildren > 0)
         {
            this.§<5§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.mBirds.length)
         {
            _loc2_ = this.mBirds[_loc1_];
            this.§<5§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §8",§
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
      
      public function intersectsWithPoint(param1:Number, param2:Number) : §5?§
      {
         if(param1 >= this.mX - this.§8"§ / 4 && param1 <= this.mX + this.§8"§ / 4 && param2 >= this.mY - this.§8"§ / 4 && this.mY <= this.§2p§)
         {
            return this;
         }
         return null;
      }
      
      public function writeSlingshotInformation(param1:§0!b§) : void
      {
         var _loc3_:§8",§ = null;
         var _loc4_:§%u§ = null;
         param1.§0@§ = this.mX;
         param1.§,!E§ = this.mY;
         var _loc2_:Number = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc3_ = this.mBirds[_loc2_];
            (_loc4_ = new §%u§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§#!N§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §<" §() : void
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
      
      public function §-i§() : Array
      {
         return [this.§4!W§,this.§>"§];
      }
      
      public function addNewBirdToEndOfList(param1:String, param2:Number, param3:Number) : §8",§
      {
         var _loc4_:§8",§ = this.§!!-§(param1,param2,param3);
         this.§[N§();
         return _loc4_;
      }
      
      public function getBirdCount() : Number
      {
         return this.mBirds.length;
      }
   }
}
