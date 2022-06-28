package §6A§
{
   import §#X§.§,!F§;
   import §&o§.§<3§;
   import §&o§.§?T§;
   import §&o§.Sprite;
   import §0! §.Texture;
   import §1!-§.§@Z§;
   import §3a§.§7!+§;
   import §4@§.§2!H§;
   import §4@§.§<!6§;
   import §9K§.§!?§;
   import §9K§.§,z§;
   import §^!L§.§%h§;
   import §^!L§.§6<§;
   import §^G§.§#H§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §4!C§
   {
      
      public static const §-!5§:int = 0;
      
      public static const §&!E§:int = 1;
      
      public static const §?f§:int = 2;
      
      public static const §45§:int = 3;
      
      public static const §?!>§:int = 5;
      
      public static const §1v§:int = 3151368;
      
      protected static const §"!J§:int = 8;
      
      protected static const §%!7§:int = 0;
      
      public static const §,!N§:Number = 46.25;
      
      public static const §?1§:Number = 52.5;
      
      protected static const §@!,§:Number = -0.7;
      
      protected static const §`u§:Number = 0;
      
      protected static var §-9§:Texture;
      
      public static const §,i§:Number = 0.4;
       
      
      public var §?V§:§ !§;
      
      public var §-`§:Number;
      
      public var §4J§:Number;
      
      public var §%!4§:Number;
      
      protected var §!G§:Number;
      
      protected var §8O§:Number;
      
      protected var §`F§:Number;
      
      protected var §-!E§:Number;
      
      public var §1r§:Number;
      
      public var §9!B§:Boolean = false;
      
      protected var §5=§:Number;
      
      public var §,B§:Vector.<§!!'§>;
      
      public var §>!;§:int;
      
      public var §];§:int;
      
      public var §&!,§:Number;
      
      public var §-!!§:Sprite;
      
      public var §=b§:int = 0;
      
      public var §[8§:Number = 0;
      
      public var §>3§:Array;
      
      public var §;@§:Array;
      
      public var mSlingShotState:int;
      
      public var §!g§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §!o§:Boolean = false;
      
      public var §3!,§:Number;
      
      protected var §>#§:Boolean = false;
      
      protected var §,!7§:Sprite;
      
      protected var §+@§:§<3§;
      
      protected var §"^§:§<3§;
      
      protected var § ,§:Sprite;
      
      protected var §+Y§:Sprite;
      
      protected var §-q§:Sprite;
      
      protected var §4&§:§?T§;
      
      protected var §-!>§:§?T§;
      
      private var §9n§:Number = 0;
      
      private var §?L§:int = 0;
      
      protected var §8J§:Number = -0.7;
      
      protected var §3!@§:Number = 0;
      
      public function §4!C§(param1:§ !§, param2:§@Z§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§#H§ = null;
         this.§,B§ = new Vector.<§!!'§>();
         super();
         this.§?V§ = param1;
         this.§,!7§ = param3;
         if(param2)
         {
            this.setPosition(param2.§!N§,param2.§#!4§);
            this.§3H§();
            _loc4_ = 0;
            while(_loc4_ < param2.§]U§)
            {
               _loc5_ = param2.§4w§(_loc4_);
               this.§0!%§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§?L§ = this.§+v§();
            this.§>!;§ = 0;
            if(this.§,B§.length <= 0)
            {
               §7!+§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§-`§ + " " + this.§4J§);
               this.§ i§(§45§);
            }
            else
            {
               this.§ i§(§-!5§);
            }
         }
         else
         {
            §7!+§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§ i§(§45§);
         }
         this.§3!,§ = 0;
         this.§5B§();
         this.update(0,true);
         this.§4§();
         this.§'P§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§,!7§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§9n§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§>!;§ < this.§,B§.length;
      }
      
      public function dispose() : void
      {
         while(this.§,B§.length > 0)
         {
            this.§'h§(0);
         }
         this.§,B§ = null;
         if(this.§,!7§)
         {
            this.§,!7§.dispose();
            this.§,!7§ = null;
         }
         this.§-!!§ = null;
         this.§>3§ = null;
         this.§;@§ = null;
      }
      
      public function §<!1§(param1:String, param2:Number, param3:Number, param4:int = -1) : §!!'§
      {
         var _loc5_:§!!'§;
         (_loc5_ = this.§0!%§(param1,param2,param3,param4)).§4!K§();
         this.§ i§(§?f§);
         return _loc5_;
      }
      
      protected function §0!%§(param1:String, param2:Number, param3:Number, param4:int = -1) : §!!'§
      {
         var _loc5_:§!!'§ = new §!!'§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§,B§.push(_loc5_);
         }
         else
         {
            this.§,B§.splice(param4,0,_loc5_);
         }
         this.§-!!§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function § i§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §-!5§)
         {
            this.§8!2§();
            this.§&!,§ = 1000;
         }
         else if(this.mSlingShotState == §&!E§)
         {
            this.§8!2§();
            this.§&!,§ = 0;
         }
         else if(this.mSlingShotState == §?f§)
         {
            this.§&!,§ = 10000;
            this.§!o§ = false;
            this.§8!2§();
         }
         else if(this.mSlingShotState == §45§)
         {
            this.§8!2§();
            this.§&!,§ = 2000;
         }
         else if(this.mSlingShotState == §?!>§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§!o§ = false;
               this.§8!2§();
               this.§,B§[this.§>!;§].setPosition(this.§`F§ - this.§,B§[this.§>!;§].radius * Math.cos(this.§[8§ / (180 / Math.PI)),this.§-!E§ + this.§,B§[this.§>!;§].radius * Math.sin(this.§[8§ / (180 / Math.PI)));
            }
            else
            {
               this.§8!2§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §;s§() : § !§
      {
         return this.§?V§;
      }
      
      public function §;§() : Boolean
      {
         return this.mSlingShotState == §45§ && this.§&!,§ <= 0;
      }
      
      private function §3H§() : void
      {
         var _loc1_:§!?§ = this.§%X§();
         var _loc2_:§,z§ = _loc1_.getFrame(0);
         var _loc3_:§,z§ = _loc1_.getFrame(1);
         this.§4&§ = new §?T§(_loc2_.texture);
         this.§4&§.scaleX = _loc2_.scale;
         this.§4&§.scaleY = _loc2_.scale;
         this.§-!>§ = new §?T§(_loc3_.texture);
         this.§-!>§.scaleX = _loc3_.scale;
         this.§-!>§.scaleY = _loc3_.scale;
         this.§<!$§();
         this.§ A§();
         this.§-!!§ = new Sprite();
         this.§,!7§.addChild(this.§4&§);
         this.§,!7§.addChild(this.§ ,§);
         this.§,!7§.addChild(this.§-!!§);
         this.§,!7§.addChild(this.§-q§);
         this.§,!7§.addChild(this.§+Y§);
         this.§,!7§.addChild(this.§-!>§);
         this.§%!4§ = this.§4J§ + 8.5;
      }
      
      protected function §%X§() : §!?§
      {
         return this.§?V§.§;!L§.§8!0§("SLINGSHOT");
      }
      
      public function §<!$§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§!G§ = this.§-`§;
         this.§8O§ = this.§4J§;
         this.§5=§ = §#!E§.§+B§;
         _loc1_ = null;
      }
      
      protected function § A§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§-9§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §-9§ = this.§?V§.textureManager.§<o§(_loc2_);
         }
         this.§-q§ = new Sprite();
         var _loc1_:§?T§ = new §?T§(§-9§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§-q§.addChild(_loc1_);
         this.§ ,§ = new Sprite();
         this.§+@§ = new §<3§(2,2,§1v§);
         this.§ ,§.addChild(this.§+@§);
         this.§+Y§ = new Sprite();
         this.§"^§ = new §<3§(2,2,§1v§);
         this.§+Y§.addChild(this.§"^§);
      }
      
      public function §'P§(param1:Number) : void
      {
         var _loc2_:Number = this.§-!E§ / § !§.§`J§;
         var _loc3_:Number = this.§`F§ / § !§.§`J§;
         var _loc4_:Number = 3.5 + 8 * ((this.§5=§ - this.§1r§) / this.§5=§);
         this.§-q§.x = _loc3_;
         this.§-q§.y = _loc2_;
         this.§-q§.rotation = -this.§[8§ / (180 / Math.PI);
         this.§4&§.x = this.§-`§ / § !§.§`J§ - 3;
         this.§4&§.y = this.§4J§ / § !§.§`J§ - 30;
         this.§-!>§.x = this.§-`§ / § !§.§`J§ - 30;
         this.§-!>§.y = this.§4J§ / § !§.§`J§ - 30;
         this.§+Y§.x = this.§-`§ / § !§.§`J§ - 17;
         this.§+Y§.y = this.§4J§ / § !§.§`J§ + 5;
         this.§+Y§.rotation = Math.atan2(_loc2_ - this.§+Y§.y,_loc3_ - this.§+Y§.x);
         this.§ ,§.x = this.§-`§ / § !§.§`J§ + 22;
         this.§ ,§.y = this.§4J§ / § !§.§`J§;
         this.§ ,§.rotation = Math.atan2(_loc2_ - this.§ ,§.y,_loc3_ - this.§ ,§.x);
         this.§"^§.width = Math.sqrt(Math.pow(_loc3_ - this.§+Y§.x,2) + Math.pow(_loc2_ - this.§+Y§.y,2));
         this.§+@§.width = Math.sqrt(Math.pow(_loc3_ - this.§ ,§.x,2) + Math.pow(_loc2_ - this.§ ,§.y,2));
         this.§"^§.height = this.§+@§.height = _loc4_ * 2;
         this.§"^§.y = -this.§"^§.height / 2;
         this.§+@§.y = -this.§+@§.height / 2;
         this.§!g§ = false;
      }
      
      public function §9!6§() : void
      {
         while(this.§,B§.length > 0)
         {
            this.§'h§(0,true);
         }
         this.§0w§();
         this.§0!%§("BIRD_SARDINE",this.§-`§,this.§4J§);
         this.§ i§(§?f§);
      }
      
      protected function §0w§() : void
      {
         §,!F§.§;v§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§ i§(§?!>§);
      }
      
      public function §8!2§() : void
      {
         this.setNewCoordinatesForRubber(this.§!G§,this.§8O§ + this.§5=§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§`F§ == param1 && this.§-!E§ == param2)
         {
            return true;
         }
         this.§1r§ = Math.sqrt((param2 - this.§8O§) * (param2 - this.§8O§) + (param1 - this.§!G§) * (param1 - this.§!G§));
         if(this.§1r§ > this.§5=§)
         {
            if(param3)
            {
               this.§1r§ = Math.sqrt((this.§-!E§ - this.§8O§) * (this.§-!E§ - this.§8O§) + (this.§`F§ - this.§!G§) * (this.§`F§ - this.§!G§));
               return false;
            }
            param1 = this.§!G§ + this.§5=§ * (param1 - this.§!G§) / this.§1r§;
            param2 = this.§8O§ + this.§5=§ * (param2 - this.§8O§) / this.§1r§;
            this.§1r§ = this.§5=§;
         }
         this.§`F§ = param1;
         this.§-!E§ = param2;
         this.§[8§ = Math.atan2(-(this.§-!E§ - this.§8O§),this.§`F§ - this.§!G§);
         this.§[8§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§`F§ = param1 + this.§8J§;
            this.§-!E§ = param2 + this.§3!@§;
            this.§[8§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§5=§ / 2;
         if(this.§1r§ > _loc7_ && this.§[8§ > -90 - _loc4_ + _loc5_ && this.§[8§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§!G§ + _loc7_ * (param1 - this.§!G§) / this.§1r§;
            param2 = this.§8O§ + _loc7_ * (param2 - this.§8O§) / this.§1r§;
            this.§1r§ = _loc7_;
            this.§`F§ = param1;
            this.§-!E§ = param2;
         }
         else if(this.§1r§ > _loc7_ && this.§[8§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§[8§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§5=§ - _loc7_) * (Math.abs(this.§[8§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§!G§ + _loc8_ * (param1 - this.§!G§) / this.§1r§;
            param2 = this.§8O§ + _loc8_ * (param2 - this.§8O§) / this.§1r§;
            this.§1r§ = _loc8_;
            this.§`F§ = param1;
            this.§-!E§ = param2;
         }
         if(this.§1r§ <= this.§5=§ * 0.45)
         {
            this.§9!B§ = true;
         }
         else if(this.§9!B§ && this.§1r§ >= this.§5=§ * 0.8)
         {
            this.§#!$§();
            this.§9!B§ = false;
         }
         this.§!g§ = true;
         return true;
      }
      
      protected function §#!$§() : void
      {
         §,!F§.§;v§("SlingshotStreched");
      }
      
      public function §1!>§(param1:Number) : void
      {
         this.setPosition(this.§-`§,this.§4J§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§-`§;
         this.§-`§ = param1;
         var _loc5_:Number = param2 - this.§4J§;
         this.§4J§ = param2;
         this.§%!4§ += _loc5_;
         this.§8O§ += _loc5_;
         this.§-!E§ += _loc5_;
         this.§!G§ += _loc4_;
         this.§`F§ += _loc4_;
         if(param3)
         {
            this.§'P§(0);
         }
         this.§!g§ = true;
      }
      
      public function §8m§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§!!'§ = null;
         _loc2_ = this.§,B§[this.§>!;§];
         var _loc3_:Number = this.§1r§ / this.§5=§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§4!C§.§?1§) : Number(§4!C§.§,!N§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §#!6§() : Point
      {
         var _loc1_:§!!'§ = null;
         if(this.§,B§.length > this.§>!;§)
         {
            _loc1_ = this.§,B§[this.§>!;§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §"5§() : Point
      {
         return new Point(this.§!G§,this.§8O§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§!!'§ = null;
         this.§`!<§(param1);
         if(this.§!g§)
         {
            this.§'P§(param1);
         }
         this.§&!,§ -= param1;
         if(this.§&!,§ < 0)
         {
            this.§&!,§ = 0;
         }
         if(this.mSlingShotState != §45§)
         {
            this.§-]§(param1,param2);
            _loc3_ = null;
            if(this.§,B§.length > 0)
            {
               _loc3_ = this.§,B§[this.§>!;§];
            }
            if(_loc3_)
            {
               _loc3_.§>]§(param1);
            }
            if(!_loc3_)
            {
               this.§ i§(§45§);
            }
            else if(this.mSlingShotState == §-!5§)
            {
               if(this.§&!,§ <= 0)
               {
                  this.§ i§(§&!E§);
                  _loc3_.§?!0§();
               }
            }
            else if(this.mSlingShotState == §&!E§)
            {
               if(_loc3_.§%K§)
               {
                  this.§ i§(§?f§);
               }
            }
            else if(this.mSlingShotState == §?f§)
            {
               if(!_loc3_.§5!&§())
               {
                  _loc3_.setPosition(this.§`F§ - _loc3_.radius * Math.cos(this.§[8§ / (180 / Math.PI)),this.§-!E§ + _loc3_.radius * Math.sin(this.§[8§ / (180 / Math.PI)));
               }
               if(this.§!o§)
               {
                  this.§7w§(this.§1r§ / this.§5=§,this.§[8§);
               }
            }
         }
      }
      
      public function §-R§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§!!'§ = null;
         if(this.§,B§.length > 0)
         {
            _loc5_ = this.§,B§[this.§>!;§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§7w§(param3,param4);
      }
      
      protected function §7w§(param1:Number, param2:Number) : void
      {
         var _loc3_:§!!'§ = null;
         this.§8J§ = §@!,§;
         this.§3!@§ = §`u§;
         if(this.§,B§.length > 0)
         {
            _loc3_ = this.§,B§[this.§>!;§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§!o§ = false;
         this.§9n§ = new Date().time;
         this.§?V§.§>!A§(_loc3_,param1,param2);
         this.§'h§(this.§>!;§,_loc3_.§4b§ > 0);
         this.§=!;§();
         if(this.§>!;§ >= this.§,B§.length)
         {
            this.§ i§(§45§);
         }
         else
         {
            this.§ i§(§-!5§);
         }
      }
      
      protected function §=!;§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §,!F§.§;v§("BirdShot" + _loc1_);
      }
      
      public function §-]§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§>!;§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§,B§.length)
         {
            if(this.mSlingShotState == §?!>§)
            {
               this.§,B§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§,B§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§!!'§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§8!2§();
         if(this.§];§ >= this.§,B§.length)
         {
            return false;
         }
         _loc1_ = this.§,B§[this.§];§];
         _loc2_ = §6<§.§6H§(_loc1_.name).score;
         this.§?V§.addScore(_loc2_,§0!'§.§[]§,true,_loc1_.x,_loc1_.y - 3,§<!6§.§-S§(_loc1_.name));
         _loc1_.§`q§(-1,true);
         ++this.§];§;
         return true;
      }
      
      public function §+v§() : int
      {
         var _loc2_:§!!'§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§,B§)
         {
            _loc1_ += §6<§.§6H§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §7!@§() : int
      {
         return this.§?L§;
      }
      
      public function §`!<§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§3!,§ >= 0)
         {
            this.§3!,§ -= param1;
            if(this.§3!,§ <= 0)
            {
               _loc2_ = this.§?V§.objects.§@,§(this.§!G§,this.§%!4§);
               if(_loc2_ < 0)
               {
                  this.§1!>§(0.1);
                  this.§3!,§ = 0;
               }
               else if(!this.§?V§.objects.§1F§(_loc2_).§1k§)
               {
                  this.§3!,§ = -1;
               }
               else if(this.§?V§.objects.§1F§(_loc2_).§switch§())
               {
                  this.§3!,§ = 2000;
               }
               else
               {
                  this.§3!,§ = 500;
               }
            }
         }
      }
      
      public function §4§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§?V§.objects.§@,§(this.§!G§,this.§%!4§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§1!>§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§3!,§ = -1;
      }
      
      public function §?!<§(param1:Number, param2:Number) : void
      {
         this.§,!7§.x = -param1;
         this.§,!7§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §?f§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §?f§ && this.§1r§ > this.§5=§ * §,i§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§ i§(§?f§);
         var _loc1_:§!!'§ = this.§,B§[this.§>!;§];
         _loc1_.§`q§(§%h§.§>!+§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§!!'§ = this.§,B§[this.§>!;§];
         _loc1_.§`q§(§%h§.§8K§);
      }
      
      public function shoot() : void
      {
         this.§!o§ = true;
      }
      
      protected function §'h§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§!!'§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§,B§[param1])
         {
            _loc3_ = this.§,B§[param1];
            this.§-!!§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§+L§(this.§,B§[param1]);
            }
            _loc3_.dispose();
            this.§,B§[param1] = null;
         }
         this.§,B§.splice(param1,1);
      }
      
      public function §+L§(param1:§!!'§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * § !§.§`J§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * § !§.§`J§) + Math.random() * -_loc8_ * 2;
            this.§?V§.particles.§4#§(§<!6§.§9<§,§2!H§.§"!5§,§<!6§.§!E§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§<!6§.§4!8§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§?V§.particles.§4#§(§<!6§.§=#§,§2!H§.§"!5§,§<!6§.§!E§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §&I§(param1:§!!'§) : void
      {
         this.§'h§(this.§,B§.indexOf(param1));
      }
      
      public function §5B§() : void
      {
         var _loc1_:§!!'§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§!!'§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§,B§.length - 1)
         {
            _loc1_ = this.§,B§[_loc2_];
            if(!(_loc1_.§%K§ && _loc2_ == 0))
            {
               _loc3_ = Math.sqrt((this.§-`§ - this.§,B§[_loc2_].x) * (this.§-`§ - this.§,B§[_loc2_].x) + (this.§4J§ - this.§,B§[_loc2_].y) * (this.§4J§ - this.§,B§[_loc2_].y));
               if((_loc4_ = Math.sqrt((this.§-`§ - this.§,B§[_loc2_ + 1].x) * (this.§-`§ - this.§,B§[_loc2_ + 1].x) + (this.§4J§ - this.§,B§[_loc2_ + 1].y) * (this.§4J§ - this.§,B§[_loc2_ + 1].y))) < _loc3_)
               {
                  _loc5_ = this.§,B§[_loc2_];
                  this.§,B§.splice(_loc2_,1);
                  this.§,B§.splice(_loc2_ + 1,0,_loc5_);
                  _loc2_ = Math.max(-1,_loc2_ - 2);
               }
            }
            _loc2_++;
         }
         while(this.§-!!§.numChildren > 0)
         {
            this.§-!!§.removeChildAt(0);
         }
         _loc2_ = 0;
         while(_loc2_ < this.§,B§.length)
         {
            _loc1_ = this.§,B§[_loc2_];
            this.§-!!§.addChildAt(_loc1_.sprite,0);
            _loc2_++;
         }
      }
      
      public function §'>§(param1:Number, param2:Number) : §!!'§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§,B§.length)
         {
            if(this.§,B§[_loc3_])
            {
               if(this.§,B§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§,B§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §2u§(param1:Number, param2:Number) : §4!C§
      {
         if(param1 >= this.§-`§ - this.§5=§ / 4 && param1 <= this.§-`§ + this.§5=§ / 4 && param2 >= this.§4J§ - this.§5=§ / 4 && this.§4J§ <= this.§%!4§)
         {
            return this;
         }
         return null;
      }
      
      public function §-p§(param1:§@Z§) : void
      {
         var _loc3_:§!!'§ = null;
         var _loc4_:§#H§ = null;
         param1.§!N§ = this.§-`§;
         param1.§#!4§ = this.§4J§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§,B§.length)
         {
            _loc3_ = this.§,B§[_loc2_];
            (_loc4_ = new §#H§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§+!D§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §&!D§() : void
      {
         while(this.§,B§.length > 0)
         {
            this.§&I§(this.§,B§[0]);
         }
      }
      
      public function §-!C§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§,B§.length)
         {
            if(this.§,B§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§,B§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§-`§ > param1.x && this.§-`§ < param2.x && this.§4J§ > param1.y && this.§4J§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §4!#§() : Array
      {
         return [this.§-!>§,this.§4&§];
      }
      
      public function §,;§(param1:String, param2:Number, param3:Number) : §!!'§
      {
         var _loc4_:§!!'§ = this.§0!%§(param1,param2,param3);
         this.§5B§();
         return _loc4_;
      }
      
      public function §@!L§() : Number
      {
         return this.§,B§.length;
      }
      
      public function §+A§() : Boolean
      {
         return this.§>#§;
      }
   }
}
