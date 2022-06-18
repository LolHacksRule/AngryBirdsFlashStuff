package §9s§
{
   import § !'§.§+p§;
   import §!D§.§5O§;
   import §!D§.§7D§;
   import §#!@§.§0V§;
   import §#!@§.§?h§;
   import §#!@§.Sprite;
   import §'0§.§]!2§;
   import §1#§.Texture;
   import §6Z§.§"!;§;
   import §;!'§.§4&§;
   import §;!'§.§=j§;
   import §@!;§.§!!=§;
   import §[v§.§'P§;
   import §[v§.§03§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §[!?§
   {
      
      public static const §;H§:int = 0;
      
      public static const §#%§:int = 1;
      
      public static const §]B§:int = 2;
      
      public static const §91§:int = 3;
      
      public static const §-!L§:int = 5;
      
      public static const §!!%§:int = 3151368;
      
      protected static const §=!=§:int = 8;
      
      protected static const §6Y§:int = 0;
      
      public static const §1!4§:Number = 46.25;
      
      public static const §-i§:Number = 52.5;
      
      protected static const §^!4§:Number = -0.7;
      
      protected static const §=h§:Number = 0;
      
      protected static var §@4§:Texture;
      
      public static const §6n§:Number = 0.4;
       
      
      public var §4!I§:§^9§;
      
      public var §3y§:Number;
      
      public var §6@§:Number;
      
      public var §`5§:Number;
      
      protected var §`v§:Number;
      
      protected var §;S§:Number;
      
      protected var §5"§:Number;
      
      protected var §@d§:Number;
      
      public var §&a§:Number;
      
      public var §<P§:Boolean = false;
      
      protected var §?! §:Number;
      
      public var §@s§:Vector.<§1!6§>;
      
      public var §7!G§:int;
      
      public var §"0§:int = 0;
      
      public var §#8§:int;
      
      public var §7!5§:Number;
      
      public var §!!5§:Sprite;
      
      public var §,D§:int = 0;
      
      public var §,7§:Number = 0;
      
      public var §97§:Array;
      
      public var §4!,§:Array;
      
      public var mSlingShotState:int;
      
      public var §,+§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §;C§:Boolean = false;
      
      public var §4! §:Number;
      
      protected var §0m§:Boolean = false;
      
      protected var §;e§:Sprite;
      
      protected var §,>§:§?h§;
      
      protected var §!"§:§?h§;
      
      protected var §02§:Sprite;
      
      protected var § 5§:Sprite;
      
      protected var §;+§:Sprite;
      
      protected var §&!%§:§0V§;
      
      protected var §?D§:§0V§;
      
      private var §!@§:Number = 0;
      
      private var §0g§:int = 0;
      
      protected var §%f§:Number = -0.7;
      
      protected var §+y§:Number = 0;
      
      public function §[!?§(param1:§^9§, param2:§"!;§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§+p§ = null;
         this.§@s§ = new Vector.<§1!6§>();
         super();
         this.§4!I§ = param1;
         this.§;e§ = param3;
         if(param2)
         {
            this.setPosition(param2.§#! §,param2.§#&§);
            this.§68§();
            _loc4_ = 0;
            while(_loc4_ < param2.§%x§)
            {
               _loc5_ = param2.§with§(_loc4_);
               this.§?`§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§0g§ = this.§5!>§();
            this.§7!G§ = 0;
            if(this.§@s§.length <= 0)
            {
               §!!=§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§3y§ + " " + this.§6@§);
               this.§3!D§(§91§);
            }
            else
            {
               this.§3!D§(§;H§);
            }
         }
         else
         {
            §!!=§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§3!D§(§91§);
         }
         this.§4! § = 0;
         this.§9,§();
         this.update(0,true);
         this.§#h§();
         this.§4!+§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§;e§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§!@§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§7!G§ < this.§@s§.length;
      }
      
      public function dispose() : void
      {
         while(this.§@s§.length > 0)
         {
            this.§3Q§(0);
         }
         this.§@s§ = null;
         if(this.§;e§)
         {
            this.§;e§.dispose();
            this.§;e§ = null;
         }
         this.§!!5§ = null;
         this.§97§ = null;
         this.§4!,§ = null;
      }
      
      public function §>=§(param1:String, param2:Number, param3:Number, param4:int = -1) : §1!6§
      {
         var _loc5_:§1!6§;
         (_loc5_ = this.§?`§(param1,param2,param3,param4)).§!N§();
         this.§3!D§(§]B§);
         return _loc5_;
      }
      
      protected function §?`§(param1:String, param2:Number, param3:Number, param4:int = -1) : §1!6§
      {
         var _loc5_:§1!6§ = new §1!6§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§@s§.push(_loc5_);
         }
         else
         {
            this.§@s§.splice(param4,0,_loc5_);
         }
         this.§!!5§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §3!D§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §;H§)
         {
            this.§"!M§();
            this.§7!5§ = 1000;
         }
         else if(this.mSlingShotState == §#%§)
         {
            this.§"!M§();
            this.§7!5§ = 0;
         }
         else if(this.mSlingShotState == §]B§)
         {
            this.§7!5§ = 10000;
            this.§;C§ = false;
            this.§"!M§();
         }
         else if(this.mSlingShotState == §91§)
         {
            this.§"!M§();
            this.§7!5§ = 2000;
         }
         else if(this.mSlingShotState == §-!L§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§;C§ = false;
               this.§"!M§();
               this.§@s§[this.§7!G§].setPosition(this.§5"§ - this.§@s§[this.§7!G§].radius * Math.cos(this.§,7§ / (180 / Math.PI)),this.§@d§ + this.§@s§[this.§7!G§].radius * Math.sin(this.§,7§ / (180 / Math.PI)));
            }
            else
            {
               this.§"!M§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §79§() : §^9§
      {
         return this.§4!I§;
      }
      
      public function §@!=§() : Boolean
      {
         return this.mSlingShotState == §91§ && this.§7!5§ <= 0;
      }
      
      private function §68§() : void
      {
         var _loc1_:§03§ = this.§7v§();
         var _loc2_:§'P§ = _loc1_.getFrame(0);
         var _loc3_:§'P§ = _loc1_.getFrame(1);
         this.§&!%§ = new §0V§(_loc2_.texture);
         this.§&!%§.scaleX = _loc2_.scale;
         this.§&!%§.scaleY = _loc2_.scale;
         this.§?D§ = new §0V§(_loc3_.texture);
         this.§?D§.scaleX = _loc3_.scale;
         this.§?D§.scaleY = _loc3_.scale;
         this.§ !<§();
         this.§33§();
         this.§!!5§ = new Sprite();
         this.§;e§.addChild(this.§&!%§);
         this.§;e§.addChild(this.§02§);
         this.§;e§.addChild(this.§!!5§);
         this.§;e§.addChild(this.§;+§);
         this.§;e§.addChild(this.§ 5§);
         this.§;e§.addChild(this.§?D§);
         this.§`5§ = this.§6@§ + 8.5;
      }
      
      protected function §7v§() : §03§
      {
         return this.§4!I§.§%F§.§ +§("SLINGSHOT");
      }
      
      public function § !<§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§`v§ = this.§3y§;
         this.§;S§ = this.§6@§;
         this.§?! § = §^u§.§+!4§;
         _loc1_ = null;
      }
      
      protected function §33§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§@4§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §@4§ = this.§4!I§.textureManager.§+! §(_loc2_);
         }
         this.§;+§ = new Sprite();
         var _loc1_:§0V§ = new §0V§(§@4§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§;+§.addChild(_loc1_);
         this.§02§ = new Sprite();
         this.§,>§ = new §?h§(2,2,§!!%§);
         this.§02§.addChild(this.§,>§);
         this.§ 5§ = new Sprite();
         this.§!"§ = new §?h§(2,2,§!!%§);
         this.§ 5§.addChild(this.§!"§);
      }
      
      public function §4!+§(param1:Number) : void
      {
         var _loc2_:Number = this.§@d§ / §^9§.§5T§;
         var _loc3_:Number = this.§5"§ / §^9§.§5T§;
         var _loc4_:Number = 3.5 + 8 * ((this.§?! § - this.§&a§) / this.§?! §);
         this.§;+§.x = _loc3_;
         this.§;+§.y = _loc2_;
         this.§;+§.rotation = -this.§,7§ / (180 / Math.PI);
         this.§&!%§.x = this.§3y§ / §^9§.§5T§ - 3;
         this.§&!%§.y = this.§6@§ / §^9§.§5T§ - 30;
         this.§?D§.x = this.§3y§ / §^9§.§5T§ - 30;
         this.§?D§.y = this.§6@§ / §^9§.§5T§ - 30;
         this.§ 5§.x = this.§3y§ / §^9§.§5T§ - 17;
         this.§ 5§.y = this.§6@§ / §^9§.§5T§ + 5;
         this.§ 5§.rotation = Math.atan2(_loc2_ - this.§ 5§.y,_loc3_ - this.§ 5§.x);
         this.§02§.x = this.§3y§ / §^9§.§5T§ + 22;
         this.§02§.y = this.§6@§ / §^9§.§5T§;
         this.§02§.rotation = Math.atan2(_loc2_ - this.§02§.y,_loc3_ - this.§02§.x);
         this.§!"§.width = Math.sqrt(Math.pow(_loc3_ - this.§ 5§.x,2) + Math.pow(_loc2_ - this.§ 5§.y,2));
         this.§,>§.width = Math.sqrt(Math.pow(_loc3_ - this.§02§.x,2) + Math.pow(_loc2_ - this.§02§.y,2));
         this.§!"§.height = this.§,>§.height = _loc4_ * 2;
         this.§!"§.y = -this.§!"§.height / 2;
         this.§,>§.y = -this.§,>§.height / 2;
         this.§,+§ = false;
      }
      
      public function §;R§() : void
      {
         while(this.§@s§.length > 0)
         {
            this.§3Q§(0,true);
         }
         this.§#p§();
         this.§?`§("BIRD_SARDINE",this.§3y§,this.§6@§);
         this.§3!D§(§]B§);
      }
      
      protected function §#p§() : void
      {
         §]!2§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§3!D§(§-!L§);
      }
      
      public function §"!M§() : void
      {
         this.setNewCoordinatesForRubber(this.§`v§,this.§;S§ + this.§?! § / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§5"§ == param1 && this.§@d§ == param2)
         {
            return true;
         }
         this.§&a§ = Math.sqrt((param2 - this.§;S§) * (param2 - this.§;S§) + (param1 - this.§`v§) * (param1 - this.§`v§));
         if(this.§&a§ > this.§?! §)
         {
            if(param3)
            {
               this.§&a§ = Math.sqrt((this.§@d§ - this.§;S§) * (this.§@d§ - this.§;S§) + (this.§5"§ - this.§`v§) * (this.§5"§ - this.§`v§));
               return false;
            }
            param1 = this.§`v§ + this.§?! § * (param1 - this.§`v§) / this.§&a§;
            param2 = this.§;S§ + this.§?! § * (param2 - this.§;S§) / this.§&a§;
            this.§&a§ = this.§?! §;
         }
         this.§5"§ = param1;
         this.§@d§ = param2;
         this.§,7§ = Math.atan2(-(this.§@d§ - this.§;S§),this.§5"§ - this.§`v§);
         this.§,7§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§5"§ = param1 + this.§%f§;
            this.§@d§ = param2 + this.§+y§;
            this.§,7§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§?! § / 2;
         if(this.§&a§ > _loc7_ && this.§,7§ > -90 - _loc4_ + _loc5_ && this.§,7§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§`v§ + _loc7_ * (param1 - this.§`v§) / this.§&a§;
            param2 = this.§;S§ + _loc7_ * (param2 - this.§;S§) / this.§&a§;
            this.§&a§ = _loc7_;
            this.§5"§ = param1;
            this.§@d§ = param2;
         }
         else if(this.§&a§ > _loc7_ && this.§,7§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§,7§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§?! § - _loc7_) * (Math.abs(this.§,7§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§`v§ + _loc8_ * (param1 - this.§`v§) / this.§&a§;
            param2 = this.§;S§ + _loc8_ * (param2 - this.§;S§) / this.§&a§;
            this.§&a§ = _loc8_;
            this.§5"§ = param1;
            this.§@d§ = param2;
         }
         if(this.§&a§ <= this.§?! § * 0.45)
         {
            this.§<P§ = true;
         }
         else if(this.§<P§ && this.§&a§ >= this.§?! § * 0.8)
         {
            this.§1F§();
            this.§<P§ = false;
         }
         this.§,+§ = true;
         return true;
      }
      
      protected function §1F§() : void
      {
         §]!2§.playSound("SlingshotStreched");
      }
      
      public function §]!H§(param1:Number) : void
      {
         this.setPosition(this.§3y§,this.§6@§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§3y§;
         this.§3y§ = param1;
         var _loc5_:Number = param2 - this.§6@§;
         this.§6@§ = param2;
         this.§`5§ += _loc5_;
         this.§;S§ += _loc5_;
         this.§@d§ += _loc5_;
         this.§`v§ += _loc4_;
         this.§5"§ += _loc4_;
         if(param3)
         {
            this.§4!+§(0);
         }
         this.§,+§ = true;
      }
      
      public function § !%§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§1!6§ = null;
         _loc2_ = this.§@s§[this.§7!G§];
         var _loc3_:Number = this.§&a§ / this.§?! §;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§[!?§.§-i§) : Number(§[!?§.§1!4§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §-z§() : Point
      {
         var _loc1_:§1!6§ = null;
         if(this.§@s§.length > this.§7!G§)
         {
            _loc1_ = this.§@s§[this.§7!G§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §@K§() : Point
      {
         return new Point(this.§`v§,this.§;S§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§1!6§ = null;
         this.§9U§(param1);
         if(this.§,+§)
         {
            this.§4!+§(param1);
         }
         this.§7!5§ -= param1;
         if(this.§7!5§ < 0)
         {
            this.§7!5§ = 0;
         }
         if(this.mSlingShotState != §91§)
         {
            this.§94§(param1,param2);
            _loc3_ = null;
            if(this.§@s§.length > 0)
            {
               _loc3_ = this.§@s§[this.§7!G§];
            }
            if(_loc3_)
            {
               _loc3_.§!C§(param1);
            }
            if(!_loc3_)
            {
               this.§3!D§(§91§);
            }
            else if(this.mSlingShotState == §;H§)
            {
               if(this.§7!5§ <= 0)
               {
                  this.§3!D§(§#%§);
                  _loc3_.§6K§();
               }
            }
            else if(this.mSlingShotState == §#%§)
            {
               if(_loc3_.§0!<§)
               {
                  this.§3!D§(§]B§);
               }
            }
            else if(this.mSlingShotState == §]B§)
            {
               if(!_loc3_.§?!F§())
               {
                  _loc3_.setPosition(this.§5"§ - _loc3_.radius * Math.cos(this.§,7§ / (180 / Math.PI)),this.§@d§ + _loc3_.radius * Math.sin(this.§,7§ / (180 / Math.PI)));
               }
               if(this.§;C§)
               {
                  this.§?!O§(this.§&a§ / this.§?! §,this.§,7§);
               }
            }
         }
      }
      
      public function §+A§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§1!6§ = null;
         if(this.§@s§.length > 0)
         {
            _loc5_ = this.§@s§[this.§7!G§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§?!O§(param3,param4);
      }
      
      protected function §?!O§(param1:Number, param2:Number) : void
      {
         var _loc3_:§1!6§ = null;
         this.§%f§ = §^!4§;
         this.§+y§ = §=h§;
         if(this.§@s§.length > 0)
         {
            _loc3_ = this.§@s§[this.§7!G§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§;C§ = false;
         this.§!@§ = new Date().time;
         this.§4!I§.§5,§(_loc3_,param1,param2);
         this.§3Q§(this.§7!G§,_loc3_.§48§ > 0);
         this.§9B§();
         if(this.§7!G§ >= this.§@s§.length)
         {
            this.§3!D§(§91§);
         }
         else
         {
            this.§3!D§(§;H§);
         }
      }
      
      protected function §9B§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §]!2§.playSound("BirdShot" + _loc1_);
      }
      
      public function §94§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§7!G§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§@s§.length)
         {
            if(this.mSlingShotState == §-!L§)
            {
               this.§@s§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§@s§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§1!6§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§"!M§();
         if(this.§#8§ >= this.§@s§.length)
         {
            return false;
         }
         _loc1_ = this.§@s§[this.§#8§];
         _loc2_ = §=j§.§=c§(_loc1_.name).score;
         this.§4!I§.addScore(_loc2_,§%!L§.§3o§,true,_loc1_.x,_loc1_.y - 3,§7D§.§&$§(_loc1_.name));
         _loc1_.§9<§(-1,true);
         ++this.§#8§;
         return true;
      }
      
      public function §5!>§() : int
      {
         var _loc2_:§1!6§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§@s§)
         {
            _loc1_ += §=j§.§=c§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §<Y§() : int
      {
         return this.§0g§;
      }
      
      public function §9U§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§4! § >= 0)
         {
            this.§4! § -= param1;
            if(this.§4! § <= 0)
            {
               _loc2_ = this.§4!I§.objects.§3!,§(this.§`v§,this.§`5§);
               if(_loc2_ < 0)
               {
                  this.§]!H§(0.1);
                  this.§4! § = 0;
               }
               else if(!this.§4!I§.objects.§]!G§(_loc2_).§]n§)
               {
                  this.§4! § = -1;
               }
               else if(this.§4!I§.objects.§]!G§(_loc2_).§;!"§())
               {
                  this.§4! § = 2000;
               }
               else
               {
                  this.§4! § = 500;
               }
            }
         }
      }
      
      public function §#h§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§4!I§.objects.§3!,§(this.§`v§,this.§`5§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§]!H§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§4! § = -1;
      }
      
      public function §,P§(param1:Number, param2:Number) : void
      {
         this.§;e§.x = -param1;
         this.§;e§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §]B§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §]B§ && this.§&a§ > this.§?! § * §6n§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§3!D§(§]B§);
         var _loc1_:§1!6§ = this.§@s§[this.§7!G§];
         _loc1_.§9<§(§4&§.§9L§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§1!6§ = this.§@s§[this.§7!G§];
         _loc1_.§9<§(§4&§.§<V§);
      }
      
      public function shoot() : void
      {
         this.§;C§ = true;
      }
      
      protected function §3Q§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§1!6§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§@s§[param1])
         {
            _loc3_ = this.§@s§[param1];
            this.§!!5§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§<! §(this.§@s§[param1]);
            }
            _loc3_.dispose();
            this.§@s§[param1] = null;
         }
         this.§@s§.splice(param1,1);
      }
      
      public function §<! §(param1:§1!6§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §^9§.§5T§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §^9§.§5T§) + Math.random() * -_loc8_ * 2;
            this.§4!I§.particles.§3S§(§7D§.§!W§,§5O§.PARTICLE_GROUP_GAME_EFFECTS,§7D§.PARTICLE_TYPE_KINETIC_PARTICLE,param1.x + _loc7_,param1.y + _loc8_,1500,"",§7D§.getParticleMaterialFromEngineMaterial(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§4!I§.particles.§3S§(§7D§.§[N§,§5O§.PARTICLE_GROUP_GAME_EFFECTS,§7D§.PARTICLE_TYPE_KINETIC_PARTICLE,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §10§(param1:§1!6§) : void
      {
         this.§3Q§(this.§@s§.indexOf(param1));
      }
      
      public function §9,§() : void
      {
         var _loc1_:§1!6§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§1!6§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§@s§.length - 1)
         {
            _loc1_ = this.§@s§[_loc2_];
            if(!(_loc1_.§0!<§ && _loc2_ == 0))
            {
               _loc3_ = Math.sqrt((this.§3y§ - this.§@s§[_loc2_].x) * (this.§3y§ - this.§@s§[_loc2_].x) + (this.§6@§ - this.§@s§[_loc2_].y) * (this.§6@§ - this.§@s§[_loc2_].y));
               if((_loc4_ = Math.sqrt((this.§3y§ - this.§@s§[_loc2_ + 1].x) * (this.§3y§ - this.§@s§[_loc2_ + 1].x) + (this.§6@§ - this.§@s§[_loc2_ + 1].y) * (this.§6@§ - this.§@s§[_loc2_ + 1].y))) < _loc3_)
               {
                  _loc5_ = this.§@s§[_loc2_];
                  this.§@s§.splice(_loc2_,1);
                  this.§@s§.splice(_loc2_ + 1,0,_loc5_);
                  _loc2_ = Math.max(-1,_loc2_ - 2);
               }
            }
            _loc2_++;
         }
         while(this.§!!5§.numChildren > 0)
         {
            this.§!!5§.removeChildAt(0);
         }
         _loc2_ = 0;
         while(_loc2_ < this.§@s§.length)
         {
            _loc1_ = this.§@s§[_loc2_];
            this.§!!5§.addChildAt(_loc1_.sprite,0);
            _loc2_++;
         }
      }
      
      public function §5U§(param1:Number, param2:Number) : §1!6§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§@s§.length)
         {
            if(this.§@s§[_loc3_])
            {
               if(this.§@s§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§@s§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §+!#§(param1:Number, param2:Number) : §[!?§
      {
         if(param1 >= this.§3y§ - this.§?! § / 4 && param1 <= this.§3y§ + this.§?! § / 4 && param2 >= this.§6@§ - this.§?! § / 4 && this.§6@§ <= this.§`5§)
         {
            return this;
         }
         return null;
      }
      
      public function §;^§(param1:§"!;§) : void
      {
         var _loc3_:§1!6§ = null;
         var _loc4_:§+p§ = null;
         param1.§#! § = this.§3y§;
         param1.§#&§ = this.§6@§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§@s§.length)
         {
            _loc3_ = this.§@s§[_loc2_];
            (_loc4_ = new §+p§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§3z§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §6N§() : void
      {
         while(this.§@s§.length > 0)
         {
            this.§10§(this.§@s§[0]);
         }
      }
      
      public function §6B§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§@s§.length)
         {
            if(this.§@s§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§@s§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§3y§ > param1.x && this.§3y§ < param2.x && this.§6@§ > param1.y && this.§6@§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §8!D§() : Array
      {
         return [this.§?D§,this.§&!%§];
      }
      
      public function §]L§(param1:String, param2:Number, param3:Number) : §1!6§
      {
         var _loc4_:§1!6§ = this.§?`§(param1,param2,param3);
         this.§9,§();
         return _loc4_;
      }
      
      public function §]+§() : Number
      {
         return this.§@s§.length;
      }
      
      public function §implements§() : Boolean
      {
         return this.§0m§;
      }
   }
}
