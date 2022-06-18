package §#;§
{
   import §"a§.§#c§;
   import §"a§.§^>§;
   import §-p§.§&2§;
   import §2!+§.§4>§;
   import §3!A§.§9!0§;
   import §5@§.Texture;
   import §8!G§.§1w§;
   import §8g§.§"g§;
   import §8g§.§<D§;
   import §;q§.§-!>§;
   import §;q§.Sprite;
   import §;q§.§[E§;
   import §^V§.§;n§;
   import §^V§.§<e§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §!l§
   {
      
      public static const §%-§:int = 0;
      
      public static const §0§:int = 1;
      
      public static const § in§:int = 2;
      
      public static const §0!0§:int = 3;
      
      public static const § !&§:int = 5;
      
      public static const §@$§:int = 3151368;
      
      protected static const §[!G§:int = 8;
      
      protected static const §+!5§:int = 0;
      
      public static const §5!;§:Number = 46.25;
      
      public static const §01§:Number = 52.5;
      
      protected static const §8K§:Number = -0.7;
      
      protected static const §5b§:Number = 0;
      
      protected static var §%U§:Texture;
      
      public static const §finally§:Number = 0.4;
       
      
      public var §3!3§:§4!8§;
      
      public var §9r§:Number;
      
      public var §!0§:Number;
      
      public var §8!$§:Number;
      
      protected var §0E§:Number;
      
      protected var §8!F§:Number;
      
      protected var §28§:Number;
      
      protected var §<&§:Number;
      
      public var §39§:Number;
      
      public var §>B§:Boolean = false;
      
      protected var §const§:Number;
      
      public var §%h§:Vector.<§0#§>;
      
      public var §@J§:int;
      
      public var §0!"§:int;
      
      public var §-!F§:Number;
      
      public var §!!@§:Sprite;
      
      public var § b§:int = 0;
      
      public var § !>§:Number = 0;
      
      public var §!#§:Array;
      
      public var §!u§:Array;
      
      public var mSlingShotState:int;
      
      public var §'m§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §[$§:Boolean = false;
      
      public var §;g§:Number;
      
      protected var §]?§:Sprite;
      
      protected var §@!;§:§-!>§;
      
      protected var §^&§:§-!>§;
      
      protected var §5$§:Sprite;
      
      protected var §1%§:Sprite;
      
      protected var §?I§:Sprite;
      
      protected var §%f§:§[E§;
      
      protected var §"q§:§[E§;
      
      private var §%6§:Number = 0;
      
      private var §?o§:int = 0;
      
      protected var §3g§:Number = -0.7;
      
      protected var §6§:Number = 0;
      
      public function §!l§(param1:§4!8§, param2:§1w§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§4>§ = null;
         this.§%h§ = new Vector.<§0#§>();
         super();
         this.§3!3§ = param1;
         this.§]?§ = param3;
         if(param2)
         {
            this.setPosition(param2.§4!E§,param2.§9^§);
            this.§7!7§();
            _loc4_ = 0;
            while(_loc4_ < param2.§4V§)
            {
               _loc5_ = param2.§[_§(_loc4_);
               this.§]8§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§?o§ = this.§=!1§();
            this.§@J§ = 0;
            if(this.§%h§.length <= 0)
            {
               §&2§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§9r§ + " " + this.§!0§);
               this.§8Q§(§0!0§);
            }
            else
            {
               this.§8Q§(§%-§);
            }
         }
         else
         {
            §&2§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§8Q§(§0!0§);
         }
         this.§;g§ = 0;
         this.§6!+§();
         this.update(0,true);
         this.§"!E§();
         this.§%A§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§]?§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§%6§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§@J§ < this.§%h§.length;
      }
      
      public function dispose() : void
      {
         while(this.§%h§.length > 0)
         {
            this.§2E§(0);
         }
         this.§%h§ = null;
         if(this.§]?§)
         {
            this.§]?§.dispose();
            this.§]?§ = null;
         }
         this.§!!@§ = null;
         this.§!#§ = null;
         this.§!u§ = null;
      }
      
      public function §<!&§(param1:String, param2:Number, param3:Number, param4:int = -1) : §0#§
      {
         var _loc5_:§0#§;
         (_loc5_ = this.§]8§(param1,param2,param3,param4)).§=!5§();
         return _loc5_;
      }
      
      protected function §]8§(param1:String, param2:Number, param3:Number, param4:int = -1) : §0#§
      {
         var _loc5_:§0#§ = new §0#§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§%h§.push(_loc5_);
         }
         else
         {
            this.§%h§.splice(param4,0,_loc5_);
         }
         this.§!!@§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §8Q§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §%-§)
         {
            this.§=!6§();
            this.§-!F§ = 1000;
         }
         else if(this.mSlingShotState == §0§)
         {
            this.§=!6§();
            this.§-!F§ = 0;
         }
         else if(this.mSlingShotState == § in§)
         {
            this.§-!F§ = 10000;
            this.§[$§ = false;
            this.§=!6§();
         }
         else if(this.mSlingShotState == §0!0§)
         {
            this.§=!6§();
            this.§-!F§ = 2000;
         }
         else if(this.mSlingShotState == § !&§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§[$§ = false;
               this.§=!6§();
               this.§%h§[this.§@J§].setPosition(this.§28§ - this.§%h§[this.§@J§].radius * Math.cos(this.§ !>§ / (180 / Math.PI)),this.§<&§ + this.§%h§[this.§@J§].radius * Math.sin(this.§ !>§ / (180 / Math.PI)));
            }
            else
            {
               this.§=!6§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §>E§() : §4!8§
      {
         return this.§3!3§;
      }
      
      public function §2!1§() : Boolean
      {
         return this.mSlingShotState == §0!0§ && this.§-!F§ <= 0;
      }
      
      private function §7!7§() : void
      {
         var _loc1_:§#c§ = this.§4!F§();
         var _loc2_:§^>§ = _loc1_.getFrame(0);
         var _loc3_:§^>§ = _loc1_.getFrame(1);
         this.§%f§ = new §[E§(_loc2_.texture);
         this.§%f§.scaleX = _loc2_.scale;
         this.§%f§.scaleY = _loc2_.scale;
         this.§"q§ = new §[E§(_loc3_.texture);
         this.§"q§.scaleX = _loc3_.scale;
         this.§"q§.scaleY = _loc3_.scale;
         this.§;1§();
         this.§8M§();
         this.§!!@§ = new Sprite();
         this.§]?§.addChild(this.§%f§);
         this.§]?§.addChild(this.§5$§);
         this.§]?§.addChild(this.§!!@§);
         this.§]?§.addChild(this.§?I§);
         this.§]?§.addChild(this.§1%§);
         this.§]?§.addChild(this.§"q§);
         this.§8!$§ = this.§!0§ + 8.5;
      }
      
      protected function §4!F§() : §#c§
      {
         return this.§3!3§.§`,§.§12§("SLINGSHOT");
      }
      
      public function §;1§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§0E§ = this.§9r§;
         this.§8!F§ = this.§!0§;
         this.§const§ = §<!+§.§,?§;
         _loc1_ = null;
      }
      
      protected function §8M§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§%U§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §%U§ = this.§3!3§.textureManager.§4;§(_loc2_);
         }
         this.§?I§ = new Sprite();
         var _loc1_:§[E§ = new §[E§(§%U§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§?I§.addChild(_loc1_);
         this.§5$§ = new Sprite();
         this.§@!;§ = new §-!>§(2,2,§@$§);
         this.§5$§.addChild(this.§@!;§);
         this.§1%§ = new Sprite();
         this.§^&§ = new §-!>§(2,2,§@$§);
         this.§1%§.addChild(this.§^&§);
      }
      
      public function §%A§(param1:Number) : void
      {
         var _loc2_:Number = this.§<&§ / §4!8§.§5+§;
         var _loc3_:Number = this.§28§ / §4!8§.§5+§;
         var _loc4_:Number = 3.5 + 8 * ((this.§const§ - this.§39§) / this.§const§);
         this.§?I§.x = _loc3_;
         this.§?I§.y = _loc2_;
         this.§?I§.rotation = -this.§ !>§ / (180 / Math.PI);
         this.§%f§.x = this.§9r§ / §4!8§.§5+§ - 3;
         this.§%f§.y = this.§!0§ / §4!8§.§5+§ - 30;
         this.§"q§.x = this.§9r§ / §4!8§.§5+§ - 30;
         this.§"q§.y = this.§!0§ / §4!8§.§5+§ - 30;
         this.§1%§.x = this.§9r§ / §4!8§.§5+§ - 17;
         this.§1%§.y = this.§!0§ / §4!8§.§5+§ + 5;
         this.§1%§.rotation = Math.atan2(_loc2_ - this.§1%§.y,_loc3_ - this.§1%§.x);
         this.§5$§.x = this.§9r§ / §4!8§.§5+§ + 22;
         this.§5$§.y = this.§!0§ / §4!8§.§5+§;
         this.§5$§.rotation = Math.atan2(_loc2_ - this.§5$§.y,_loc3_ - this.§5$§.x);
         this.§^&§.width = Math.sqrt(Math.pow(_loc3_ - this.§1%§.x,2) + Math.pow(_loc2_ - this.§1%§.y,2));
         this.§@!;§.width = Math.sqrt(Math.pow(_loc3_ - this.§5$§.x,2) + Math.pow(_loc2_ - this.§5$§.y,2));
         this.§^&§.height = this.§@!;§.height = _loc4_ * 2;
         this.§^&§.y = -this.§^&§.height / 2;
         this.§@!;§.y = -this.§@!;§.height / 2;
         this.§'m§ = false;
      }
      
      public function §case§() : void
      {
         while(this.§%h§.length > 0)
         {
            this.§2E§(0,true);
         }
         this.§'!'§();
         this.§]8§("BIRD_SARDINE",this.§9r§,this.§!0§);
         this.§8Q§(§ in§);
      }
      
      protected function §'!'§() : void
      {
         §9!0§.§-! §("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§8Q§(§ !&§);
      }
      
      public function §=!6§() : void
      {
         this.setNewCoordinatesForRubber(this.§0E§,this.§8!F§ + this.§const§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§28§ == param1 && this.§<&§ == param2)
         {
            return true;
         }
         this.§39§ = Math.sqrt((param2 - this.§8!F§) * (param2 - this.§8!F§) + (param1 - this.§0E§) * (param1 - this.§0E§));
         if(this.§39§ > this.§const§)
         {
            if(param3)
            {
               this.§39§ = Math.sqrt((this.§<&§ - this.§8!F§) * (this.§<&§ - this.§8!F§) + (this.§28§ - this.§0E§) * (this.§28§ - this.§0E§));
               return false;
            }
            param1 = this.§0E§ + this.§const§ * (param1 - this.§0E§) / this.§39§;
            param2 = this.§8!F§ + this.§const§ * (param2 - this.§8!F§) / this.§39§;
            this.§39§ = this.§const§;
         }
         this.§28§ = param1;
         this.§<&§ = param2;
         this.§ !>§ = Math.atan2(-(this.§<&§ - this.§8!F§),this.§28§ - this.§0E§);
         this.§ !>§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§28§ = param1 + this.§3g§;
            this.§<&§ = param2 + this.§6§;
            this.§ !>§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§const§ / 2;
         if(this.§39§ > _loc7_ && this.§ !>§ > -90 - _loc4_ + _loc5_ && this.§ !>§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§0E§ + _loc7_ * (param1 - this.§0E§) / this.§39§;
            param2 = this.§8!F§ + _loc7_ * (param2 - this.§8!F§) / this.§39§;
            this.§39§ = _loc7_;
            this.§28§ = param1;
            this.§<&§ = param2;
         }
         else if(this.§39§ > _loc7_ && this.§ !>§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§ !>§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§const§ - _loc7_) * (Math.abs(this.§ !>§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§0E§ + _loc8_ * (param1 - this.§0E§) / this.§39§;
            param2 = this.§8!F§ + _loc8_ * (param2 - this.§8!F§) / this.§39§;
            this.§39§ = _loc8_;
            this.§28§ = param1;
            this.§<&§ = param2;
         }
         if(this.§39§ <= this.§const§ * 0.45)
         {
            this.§>B§ = true;
         }
         else if(this.§>B§ && this.§39§ >= this.§const§ * 0.8)
         {
            this.§>W§();
            this.§>B§ = false;
         }
         this.§'m§ = true;
         return true;
      }
      
      protected function §>W§() : void
      {
         §9!0§.§-! §("SlingshotStreched");
      }
      
      public function §`4§(param1:Number) : void
      {
         this.setPosition(this.§9r§,this.§!0§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§9r§;
         this.§9r§ = param1;
         var _loc5_:Number = param2 - this.§!0§;
         this.§!0§ = param2;
         this.§8!$§ += _loc5_;
         this.§8!F§ += _loc5_;
         this.§<&§ += _loc5_;
         this.§0E§ += _loc4_;
         this.§28§ += _loc4_;
         if(param3)
         {
            this.§%A§(0);
         }
         this.§'m§ = true;
      }
      
      public function §=D§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§0#§ = null;
         _loc2_ = this.§%h§[this.§@J§];
         var _loc3_:Number = this.§39§ / this.§const§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§!l§.§01§) : Number(§!l§.§5!;§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §-+§() : Point
      {
         var _loc1_:§0#§ = null;
         if(this.§%h§.length > this.§@J§)
         {
            _loc1_ = this.§%h§[this.§@J§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §45§() : Point
      {
         return new Point(this.§0E§,this.§8!F§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§0#§ = null;
         this.§>7§(param1);
         if(this.§'m§)
         {
            this.§%A§(param1);
         }
         this.§-!F§ -= param1;
         if(this.§-!F§ < 0)
         {
            this.§-!F§ = 0;
         }
         if(this.mSlingShotState != §0!0§)
         {
            this.§&#§(param1,param2);
            _loc3_ = null;
            if(this.§%h§.length > 0)
            {
               _loc3_ = this.§%h§[this.§@J§];
            }
            if(_loc3_)
            {
               _loc3_.§>!-§(param1);
            }
            if(!_loc3_)
            {
               this.§8Q§(§0!0§);
            }
            else if(this.mSlingShotState == §%-§)
            {
               if(this.§-!F§ <= 0)
               {
                  this.§8Q§(§0§);
                  _loc3_.§55§();
               }
            }
            else if(this.mSlingShotState == §0§)
            {
               if(_loc3_.§2!H§)
               {
                  this.§8Q§(§ in§);
               }
            }
            else if(this.mSlingShotState == § in§)
            {
               _loc3_.setPosition(this.§28§ - _loc3_.radius * Math.cos(this.§ !>§ / (180 / Math.PI)),this.§<&§ + _loc3_.radius * Math.sin(this.§ !>§ / (180 / Math.PI)));
               if(this.§[$§)
               {
                  this.§51§(this.§39§ / this.§const§,this.§ !>§);
               }
            }
         }
      }
      
      public function §2L§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§0#§ = null;
         if(this.§%h§.length > 0)
         {
            _loc5_ = this.§%h§[this.§@J§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§51§(param3,param4);
      }
      
      protected function §51§(param1:Number, param2:Number) : void
      {
         var _loc3_:§0#§ = null;
         this.§3g§ = §8K§;
         this.§6§ = §5b§;
         if(this.§%h§.length > 0)
         {
            _loc3_ = this.§%h§[this.§@J§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§[$§ = false;
         this.§%6§ = new Date().time;
         this.§3!3§.§9!>§(_loc3_,param1,param2);
         this.§2E§(this.§@J§,_loc3_.§6_§ > 0);
         this.§37§();
         if(this.§@J§ >= this.§%h§.length)
         {
            this.§8Q§(§0!0§);
         }
         else
         {
            this.§8Q§(§%-§);
         }
      }
      
      protected function §37§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §9!0§.§-! §("BirdShot" + _loc1_);
      }
      
      public function §&#§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§@J§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§%h§.length)
         {
            if(this.mSlingShotState == § !&§)
            {
               this.§%h§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§%h§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§0#§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§=!6§();
         if(this.§0!"§ >= this.§%h§.length)
         {
            return false;
         }
         _loc1_ = this.§%h§[this.§0!"§];
         _loc2_ = §;n§.§@!G§(_loc1_.name).score;
         this.§3!3§.addScore(_loc2_,§?b§.§`N§,true,_loc1_.x,_loc1_.y - 3,§<D§.§;L§(_loc1_.name));
         _loc1_.§<<§(-1,true);
         ++this.§0!"§;
         return true;
      }
      
      public function §=!1§() : int
      {
         var _loc2_:§0#§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§%h§)
         {
            _loc1_ += §;n§.§@!G§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §7'§() : int
      {
         return this.§?o§;
      }
      
      public function §>7§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§;g§ >= 0)
         {
            this.§;g§ -= param1;
            if(this.§;g§ <= 0)
            {
               _loc2_ = this.§3!3§.objects.§96§(this.§0E§,this.§8!$§);
               if(_loc2_ < 0)
               {
                  this.§`4§(0.1);
                  this.§;g§ = 0;
               }
               else if(!this.§3!3§.objects.§9!#§(_loc2_).§#V§)
               {
                  this.§;g§ = -1;
               }
               else if(this.§3!3§.objects.§9!#§(_loc2_).§"! §())
               {
                  this.§;g§ = 2000;
               }
               else
               {
                  this.§;g§ = 500;
               }
            }
         }
      }
      
      public function §"!E§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§3!3§.objects.§96§(this.§0E§,this.§8!$§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§`4§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§;g§ = -1;
      }
      
      public function §4D§(param1:Number, param2:Number) : void
      {
         this.§]?§.x = -param1;
         this.§]?§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == § in§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == § in§ && this.§39§ > this.§const§ * §finally§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§8Q§(§ in§);
         var _loc1_:§0#§ = this.§%h§[this.§@J§];
         _loc1_.§<<§(§<e§.§,!C§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§0#§ = this.§%h§[this.§@J§];
         _loc1_.§<<§(§<e§.§]J§);
      }
      
      public function shoot() : void
      {
         this.§[$§ = true;
      }
      
      protected function §2E§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§0#§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§%h§[param1])
         {
            _loc3_ = this.§%h§[param1];
            this.§!!@§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§0a§(this.§%h§[param1]);
            }
            _loc3_.dispose();
            this.§%h§[param1] = null;
         }
         this.§%h§.splice(param1,1);
      }
      
      public function §0a§(param1:§0#§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §4!8§.§5+§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §4!8§.§5+§) + Math.random() * -_loc8_ * 2;
            this.§3!3§.particles.§[!5§(§<D§.§"W§,§"g§.§;$§,§<D§.§'K§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§<D§.§;5§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§3!3§.particles.§[!5§(§<D§.§`0§,§"g§.§;$§,§<D§.§'K§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §]p§(param1:§0#§) : void
      {
         this.§2E§(this.§%h§.indexOf(param1));
      }
      
      public function §6!+§() : void
      {
         var _loc2_:§0#§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§0#§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§%h§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§9r§ - this.§%h§[_loc1_].x) * (this.§9r§ - this.§%h§[_loc1_].x) + (this.§!0§ - this.§%h§[_loc1_].y) * (this.§!0§ - this.§%h§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§9r§ - this.§%h§[_loc1_ + 1].x) * (this.§9r§ - this.§%h§[_loc1_ + 1].x) + (this.§!0§ - this.§%h§[_loc1_ + 1].y) * (this.§!0§ - this.§%h§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§%h§[_loc1_];
               this.§%h§.splice(_loc1_,1);
               this.§%h§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§!!@§.numChildren > 0)
         {
            this.§!!@§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§%h§.length)
         {
            _loc2_ = this.§%h§[_loc1_];
            this.§!!@§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §4T§(param1:Number, param2:Number) : §0#§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§%h§.length)
         {
            if(this.§%h§[_loc3_])
            {
               if(this.§%h§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§%h§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §6!=§(param1:Number, param2:Number) : §!l§
      {
         if(param1 >= this.§9r§ - this.§const§ / 4 && param1 <= this.§9r§ + this.§const§ / 4 && param2 >= this.§!0§ - this.§const§ / 4 && this.§!0§ <= this.§8!$§)
         {
            return this;
         }
         return null;
      }
      
      public function §2l§(param1:§1w§) : void
      {
         var _loc3_:§0#§ = null;
         var _loc4_:§4>§ = null;
         param1.§4!E§ = this.§9r§;
         param1.§9^§ = this.§!0§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§%h§.length)
         {
            _loc3_ = this.§%h§[_loc2_];
            (_loc4_ = new §4>§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§^s§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §`g§() : void
      {
         while(this.§%h§.length > 0)
         {
            this.§]p§(this.§%h§[0]);
         }
      }
      
      public function §@+§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§%h§.length)
         {
            if(this.§%h§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§%h§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§9r§ > param1.x && this.§9r§ < param2.x && this.§!0§ > param1.y && this.§!0§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §4!7§() : Array
      {
         return [this.§"q§,this.§%f§];
      }
      
      public function §5o§(param1:String, param2:Number, param3:Number) : §0#§
      {
         var _loc4_:§0#§ = this.§]8§(param1,param2,param3);
         this.§6!+§();
         return _loc4_;
      }
      
      public function § +§() : Number
      {
         return this.§%h§.length;
      }
   }
}
