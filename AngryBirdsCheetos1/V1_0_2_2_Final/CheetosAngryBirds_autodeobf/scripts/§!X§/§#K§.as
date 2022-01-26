package §!X§
{
   import § !G§.§ #§;
   import § `§.§6!=§;
   import § `§.§^1§;
   import §%J§.§#^§;
   import §0! §.§7o§;
   import §0! §.§<2§;
   import §]!B§.Texture;
   import §]!F§.§&!]§;
   import §]@§.§9!<§;
   import §]@§.Sprite;
   import §]@§.§`!C§;
   import §`!K§.§!!>§;
   import §default§.§!A§;
   import §default§.§%<§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §#K§
   {
      
      public static const §8! §:int = 0;
      
      public static const §?7§:int = 1;
      
      public static const §-I§:int = 2;
      
      public static const § !^§:int = 3;
      
      public static const § !P§:int = 5;
      
      public static const §60§:int = 3151368;
      
      protected static const §@!5§:int = 8;
      
      protected static const §2%§:int = 0;
      
      public static const §3u§:Number = 46.25;
      
      public static const § true§:Number = 52.5;
      
      protected static const §?J§:Number = -0.7;
      
      protected static const §4!Z§:Number = 0;
      
      protected static var §;F§:Texture;
      
      public static const §1L§:Number = 0.4;
       
      
      public var §>`§:§86§;
      
      public var §<!Y§:Number;
      
      public var § l§:Number;
      
      public var §<!?§:Number;
      
      protected var §?!M§:Number;
      
      protected var § !>§:Number;
      
      protected var §>!,§:Number;
      
      protected var § <§:Number;
      
      public var §5H§:Number;
      
      public var §0!I§:Boolean = false;
      
      protected var §0![§:Number;
      
      public var §8k§:Vector.<§9k§>;
      
      public var §'J§:int;
      
      public var §=O§:int;
      
      public var §^!,§:Number;
      
      public var §3,§:Sprite;
      
      public var §3!L§:int = 0;
      
      public var §?g§:Number = 0;
      
      public var §1!§:Array;
      
      public var §?&§:Array;
      
      public var mSlingShotState:int;
      
      public var §,!G§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §%R§:Boolean = false;
      
      public var §-!-§:Number;
      
      protected var §?!N§:Sprite;
      
      protected var §#a§:§9!<§;
      
      protected var §8!P§:§9!<§;
      
      protected var §-!"§:Sprite;
      
      protected var §0?§:Sprite;
      
      protected var §7l§:Sprite;
      
      protected var §'!_§:§`!C§;
      
      protected var §7'§:§`!C§;
      
      private var §2"§:Number = 0;
      
      private var §6D§:int = 0;
      
      protected var §%@§:Number = -0.7;
      
      protected var §]e§:Number = 0;
      
      public function §#K§(param1:§86§, param2:§&!]§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§#^§ = null;
         this.§8k§ = new Vector.<§9k§>();
         super();
         this.§>`§ = param1;
         this.§?!N§ = param3;
         if(param2)
         {
            this.setPosition(param2.§^!E§,param2.§0!;§);
            this.§+i§();
            _loc4_ = 0;
            while(_loc4_ < param2.§3]§)
            {
               _loc5_ = param2.§!!J§(_loc4_);
               this.addSlingshotObject(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§6D§ = this.§=!^§();
            this.§'J§ = 0;
            if(this.§8k§.length <= 0)
            {
               § #§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§<!Y§ + " " + this.§ l§);
               this.setSlingShotState(§ !^§);
            }
            else
            {
               this.setSlingShotState(§8! §);
            }
         }
         else
         {
            § #§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.setSlingShotState(§ !^§);
         }
         this.§-!-§ = 0;
         this.§;!P§();
         this.update(0,true);
         this.§9§();
         this.§,!9§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§?!N§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§2"§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§'J§ < this.§8k§.length;
      }
      
      public function dispose() : void
      {
         while(this.§8k§.length > 0)
         {
            this.§'2§(0);
         }
         this.§8k§ = null;
         if(this.§?!N§)
         {
            this.§?!N§.dispose();
            this.§?!N§ = null;
         }
         this.§3,§ = null;
         this.§1!§ = null;
         this.§?&§ = null;
      }
      
      public function §>l§(param1:String, param2:Number, param3:Number, param4:int = -1) : §9k§
      {
         var _loc5_:§9k§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,param4)).§'T§();
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §9k§
      {
         var _loc5_:§9k§ = new §9k§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§8k§.push(_loc5_);
         }
         else
         {
            this.§8k§.splice(param4,0,_loc5_);
         }
         this.§3,§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function setSlingShotState(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §8! §)
         {
            this.§^c§();
            this.§^!,§ = 1000;
         }
         else if(this.mSlingShotState == §?7§)
         {
            this.§^c§();
            this.§^!,§ = 0;
         }
         else if(this.mSlingShotState == §-I§)
         {
            this.§^!,§ = 10000;
            this.§%R§ = false;
            this.§^c§();
         }
         else if(this.mSlingShotState == § !^§)
         {
            this.§^c§();
            this.§^!,§ = 2000;
         }
         else if(this.mSlingShotState == § !P§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§%R§ = false;
               this.§^c§();
               this.§8k§[this.§'J§].setPosition(this.§>!,§ - this.§8k§[this.§'J§].radius * Math.cos(this.§?g§ / (180 / Math.PI)),this.§ <§ + this.§8k§[this.§'J§].radius * Math.sin(this.§?g§ / (180 / Math.PI)));
            }
            else
            {
               this.§^c§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §5D§() : §86§
      {
         return this.§>`§;
      }
      
      public function §5#§() : Boolean
      {
         return this.mSlingShotState == § !^§ && this.§^!,§ <= 0;
      }
      
      private function §+i§() : void
      {
         var _loc1_:§^1§ = this.§>`§.§true§.§>f§("SLINGSHOT");
         var _loc2_:§6!=§ = _loc1_.getFrame(0);
         var _loc3_:§6!=§ = _loc1_.getFrame(1);
         this.§'!_§ = new §`!C§(_loc2_.texture);
         this.§'!_§.scaleX = _loc2_.scale;
         this.§'!_§.scaleY = _loc2_.scale;
         this.§7'§ = new §`!C§(_loc3_.texture);
         this.§7'§.scaleX = _loc3_.scale;
         this.§7'§.scaleY = _loc3_.scale;
         this.§>!L§();
         this.§3!Y§();
         this.§3,§ = new Sprite();
         this.§?!N§.addChild(this.§'!_§);
         this.§?!N§.addChild(this.§-!"§);
         this.§?!N§.addChild(this.§3,§);
         this.§?!N§.addChild(this.§7l§);
         this.§?!N§.addChild(this.§0?§);
         this.§?!N§.addChild(this.§7'§);
         this.§<!?§ = this.§ l§ + 8.5;
      }
      
      public function §>!L§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§?!M§ = this.§<!Y§;
         this.§ !>§ = this.§ l§;
         this.§0![§ = §!j§.§"!§;
         _loc1_ = null;
      }
      
      protected function §3!Y§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§;F§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §;F§ = this.§>`§.§=]§.§1u§(_loc2_);
         }
         this.§7l§ = new Sprite();
         var _loc1_:§`!C§ = new §`!C§(§;F§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§7l§.addChild(_loc1_);
         this.§-!"§ = new Sprite();
         this.§#a§ = new §9!<§(2,2,§60§);
         this.§-!"§.addChild(this.§#a§);
         this.§0?§ = new Sprite();
         this.§8!P§ = new §9!<§(2,2,§60§);
         this.§0?§.addChild(this.§8!P§);
      }
      
      public function §,!9§(param1:Number) : void
      {
         var _loc2_:Number = this.§ <§ / §86§.§7!4§;
         var _loc3_:Number = this.§>!,§ / §86§.§7!4§;
         var _loc4_:Number = 3.5 + 8 * ((this.§0![§ - this.§5H§) / this.§0![§);
         this.§7l§.x = _loc3_;
         this.§7l§.y = _loc2_;
         this.§7l§.rotation = -this.§?g§ / (180 / Math.PI);
         this.§'!_§.x = this.§<!Y§ / §86§.§7!4§ - 3;
         this.§'!_§.y = this.§ l§ / §86§.§7!4§ - 30;
         this.§7'§.x = this.§<!Y§ / §86§.§7!4§ - 30;
         this.§7'§.y = this.§ l§ / §86§.§7!4§ - 30;
         this.§0?§.x = this.§<!Y§ / §86§.§7!4§ - 17;
         this.§0?§.y = this.§ l§ / §86§.§7!4§ + 5;
         this.§0?§.rotation = Math.atan2(_loc2_ - this.§0?§.y,_loc3_ - this.§0?§.x);
         this.§-!"§.x = this.§<!Y§ / §86§.§7!4§ + 22;
         this.§-!"§.y = this.§ l§ / §86§.§7!4§;
         this.§-!"§.rotation = Math.atan2(_loc2_ - this.§-!"§.y,_loc3_ - this.§-!"§.x);
         this.§8!P§.width = Math.sqrt(Math.pow(_loc3_ - this.§0?§.x,2) + Math.pow(_loc2_ - this.§0?§.y,2));
         this.§#a§.width = Math.sqrt(Math.pow(_loc3_ - this.§-!"§.x,2) + Math.pow(_loc2_ - this.§-!"§.y,2));
         this.§8!P§.height = this.§#a§.height = _loc4_ * 2;
         this.§8!P§.y = -this.§8!P§.height / 2;
         this.§#a§.y = -this.§#a§.height / 2;
         this.§,!G§ = false;
      }
      
      public function §9K§() : void
      {
         while(this.§8k§.length > 0)
         {
            this.§'2§(0,true);
         }
         this.§1f§();
         this.addSlingshotObject("BIRD_SARDINE",this.§<!Y§,this.§ l§);
         this.setSlingShotState(§-I§);
      }
      
      protected function §1f§() : void
      {
         §!!>§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.setSlingShotState(§ !P§);
      }
      
      public function §^c§() : void
      {
         this.setNewCoordinatesForRubber(this.§?!M§,this.§ !>§ + this.§0![§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§>!,§ == param1 && this.§ <§ == param2)
         {
            return true;
         }
         this.§5H§ = Math.sqrt((param2 - this.§ !>§) * (param2 - this.§ !>§) + (param1 - this.§?!M§) * (param1 - this.§?!M§));
         if(this.§5H§ > this.§0![§)
         {
            if(param3)
            {
               this.§5H§ = Math.sqrt((this.§ <§ - this.§ !>§) * (this.§ <§ - this.§ !>§) + (this.§>!,§ - this.§?!M§) * (this.§>!,§ - this.§?!M§));
               return false;
            }
            param1 = this.§?!M§ + this.§0![§ * (param1 - this.§?!M§) / this.§5H§;
            param2 = this.§ !>§ + this.§0![§ * (param2 - this.§ !>§) / this.§5H§;
            this.§5H§ = this.§0![§;
         }
         this.§>!,§ = param1;
         this.§ <§ = param2;
         this.§?g§ = Math.atan2(-(this.§ <§ - this.§ !>§),this.§>!,§ - this.§?!M§);
         this.§?g§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§>!,§ = param1 + this.§%@§;
            this.§ <§ = param2 + this.§]e§;
            this.§?g§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§0![§ / 2;
         if(this.§5H§ > _loc7_ && this.§?g§ > -90 - _loc4_ + _loc5_ && this.§?g§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§?!M§ + _loc7_ * (param1 - this.§?!M§) / this.§5H§;
            param2 = this.§ !>§ + _loc7_ * (param2 - this.§ !>§) / this.§5H§;
            this.§5H§ = _loc7_;
            this.§>!,§ = param1;
            this.§ <§ = param2;
         }
         else if(this.§5H§ > _loc7_ && this.§?g§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§?g§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§0![§ - _loc7_) * (Math.abs(this.§?g§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§?!M§ + _loc8_ * (param1 - this.§?!M§) / this.§5H§;
            param2 = this.§ !>§ + _loc8_ * (param2 - this.§ !>§) / this.§5H§;
            this.§5H§ = _loc8_;
            this.§>!,§ = param1;
            this.§ <§ = param2;
         }
         if(this.§5H§ <= this.§0![§ * 0.45)
         {
            this.§0!I§ = true;
         }
         else if(this.§0!I§ && this.§5H§ >= this.§0![§ * 0.8)
         {
            this.§%!^§();
            this.§0!I§ = false;
         }
         this.§,!G§ = true;
         return true;
      }
      
      protected function §%!^§() : void
      {
         §!!>§.playSound("SlingshotStreched");
      }
      
      public function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§<!Y§,this.§ l§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§<!Y§;
         this.§<!Y§ = param1;
         var _loc5_:Number = param2 - this.§ l§;
         this.§ l§ = param2;
         this.§<!?§ += _loc5_;
         this.§ !>§ += _loc5_;
         this.§ <§ += _loc5_;
         this.§?!M§ += _loc4_;
         this.§>!,§ += _loc4_;
         if(param3)
         {
            this.§,!9§(0);
         }
         this.§,!G§ = true;
      }
      
      public function §7!Y§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§9k§ = null;
         _loc2_ = this.§8k§[this.§'J§];
         var _loc3_:Number = this.§5H§ / this.§0![§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§#K§.§ true§) : Number(§#K§.§3u§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §@!+§() : Point
      {
         var _loc1_:§9k§ = null;
         if(this.§8k§.length > this.§'J§)
         {
            _loc1_ = this.§8k§[this.§'J§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §#!5§() : Point
      {
         return new Point(this.§?!M§,this.§ !>§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§9k§ = null;
         this.updateGroundControl(param1);
         if(this.§,!G§)
         {
            this.§,!9§(param1);
         }
         this.§^!,§ -= param1;
         if(this.§^!,§ < 0)
         {
            this.§^!,§ = 0;
         }
         if(this.mSlingShotState != § !^§)
         {
            this.§[r§(param1,param2);
            _loc3_ = null;
            if(this.§8k§.length > 0)
            {
               _loc3_ = this.§8k§[this.§'J§];
            }
            if(_loc3_)
            {
               _loc3_.§ 8§(param1);
            }
            if(!_loc3_)
            {
               this.setSlingShotState(§ !^§);
            }
            else if(this.mSlingShotState == §8! §)
            {
               if(this.§^!,§ <= 0)
               {
                  this.setSlingShotState(§?7§);
                  _loc3_.§=w§();
               }
            }
            else if(this.mSlingShotState == §?7§)
            {
               if(_loc3_.§,!T§)
               {
                  this.setSlingShotState(§-I§);
               }
            }
            else if(this.mSlingShotState == §-I§)
            {
               _loc3_.setPosition(this.§>!,§ - _loc3_.radius * Math.cos(this.§?g§ / (180 / Math.PI)),this.§ <§ + _loc3_.radius * Math.sin(this.§?g§ / (180 / Math.PI)));
               if(this.§%R§)
               {
                  this.§?!L§(this.§5H§ / this.§0![§,this.§?g§);
               }
            }
         }
      }
      
      public function §9!B§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§9k§ = null;
         if(this.§8k§.length > 0)
         {
            _loc5_ = this.§8k§[this.§'J§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§?!L§(param3,param4);
      }
      
      protected function §?!L§(param1:Number, param2:Number) : void
      {
         var _loc3_:§9k§ = null;
         this.§%@§ = §?J§;
         this.§]e§ = §4!Z§;
         if(this.§8k§.length > 0)
         {
            _loc3_ = this.§8k§[this.§'J§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§%R§ = false;
         this.§2"§ = new Date().time;
         this.§>`§.§7_§(_loc3_,param1,param2);
         this.§'2§(this.§'J§,_loc3_.§2v§ > 0);
         this.§3!<§();
         if(this.§'J§ >= this.§8k§.length)
         {
            this.setSlingShotState(§ !^§);
         }
         else
         {
            this.setSlingShotState(§8! §);
         }
      }
      
      protected function §3!<§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §!!>§.playSound("BirdShot" + _loc1_);
      }
      
      public function §[r§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§'J§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§8k§.length)
         {
            if(this.mSlingShotState == § !P§)
            {
               this.§8k§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§8k§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§9k§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§^c§();
         if(this.§=O§ >= this.§8k§.length)
         {
            return false;
         }
         _loc1_ = this.§8k§[this.§=O§];
         _loc2_ = §%<§.§<<§(_loc1_.name).score;
         this.§>`§.addScore(_loc2_,§7@§.§3A§,true,_loc1_.x,_loc1_.y - 3,§7o§.§=F§(_loc1_.name));
         _loc1_.§+-§(-1,true);
         ++this.§=O§;
         return true;
      }
      
      public function §=!^§() : int
      {
         var _loc2_:§9k§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§8k§)
         {
            _loc1_ += §%<§.§<<§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §9D§() : int
      {
         return this.§6D§;
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§-!-§ >= 0)
         {
            this.§-!-§ -= param1;
            if(this.§-!-§ <= 0)
            {
               _loc2_ = this.§>`§.objects.§0K§(this.§?!M§,this.§<!?§);
               if(_loc2_ < 0)
               {
                  this.applyGravity(0.1);
                  this.§-!-§ = 0;
               }
               else if(!this.§>`§.objects.§1T§(_loc2_).§`!T§)
               {
                  this.§-!-§ = -1;
               }
               else if(this.§>`§.objects.§1T§(_loc2_).§69§())
               {
                  this.§-!-§ = 2000;
               }
               else
               {
                  this.§-!-§ = 500;
               }
            }
         }
      }
      
      public function §9§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§>`§.objects.§0K§(this.§?!M§,this.§<!?§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.applyGravity(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§-!-§ = -1;
      }
      
      public function §<!=§(param1:Number, param2:Number) : void
      {
         this.§?!N§.x = -param1;
         this.§?!N§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §-I§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §-I§ && this.§5H§ > this.§0![§ * §1L§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.setSlingShotState(§-I§);
         var _loc1_:§9k§ = this.§8k§[this.§'J§];
         _loc1_.§+-§(§!A§.§"!T§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§9k§ = this.§8k§[this.§'J§];
         _loc1_.§+-§(§!A§.§,G§);
      }
      
      public function shoot() : void
      {
         this.§%R§ = true;
      }
      
      protected function §'2§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§9k§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§8k§[param1])
         {
            _loc3_ = this.§8k§[param1];
            this.§3,§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§;b§(this.§8k§[param1]);
            }
            _loc3_.dispose();
            this.§8k§[param1] = null;
         }
         this.§8k§.splice(param1,1);
      }
      
      public function §;b§(param1:§9k§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §86§.§7!4§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §86§.§7!4§) + Math.random() * -_loc8_ * 2;
            this.§>`§.particles.addParticle(§7o§.§8!I§,§<2§.§]!X§,§7o§.§%u§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§7o§.§3E§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§>`§.particles.addParticle(§7o§.§39§,§<2§.§]!X§,§7o§.§%u§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §"!>§(param1:§9k§) : void
      {
         this.§'2§(this.§8k§.indexOf(param1));
      }
      
      public function §;!P§() : void
      {
         var _loc2_:§9k§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§9k§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§8k§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§<!Y§ - this.§8k§[_loc1_].x) * (this.§<!Y§ - this.§8k§[_loc1_].x) + (this.§ l§ - this.§8k§[_loc1_].y) * (this.§ l§ - this.§8k§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§<!Y§ - this.§8k§[_loc1_ + 1].x) * (this.§<!Y§ - this.§8k§[_loc1_ + 1].x) + (this.§ l§ - this.§8k§[_loc1_ + 1].y) * (this.§ l§ - this.§8k§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§8k§[_loc1_];
               this.§8k§.splice(_loc1_,1);
               this.§8k§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§3,§.numChildren > 0)
         {
            this.§3,§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§8k§.length)
         {
            _loc2_ = this.§8k§[_loc1_];
            this.§3,§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §5q§(param1:Number, param2:Number) : §9k§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§8k§.length)
         {
            if(this.§8k§[_loc3_])
            {
               if(this.§8k§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§8k§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §'o§(param1:Number, param2:Number) : §#K§
      {
         if(param1 >= this.§<!Y§ - this.§0![§ / 4 && param1 <= this.§<!Y§ + this.§0![§ / 4 && param2 >= this.§ l§ - this.§0![§ / 4 && this.§ l§ <= this.§<!?§)
         {
            return this;
         }
         return null;
      }
      
      public function §-N§(param1:§&!]§) : void
      {
         var _loc3_:§9k§ = null;
         var _loc4_:§#^§ = null;
         param1.§^!E§ = this.§<!Y§;
         param1.§0!;§ = this.§ l§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§8k§.length)
         {
            _loc3_ = this.§8k§[_loc2_];
            (_loc4_ = new §#^§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§"L§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §var§() : void
      {
         while(this.§8k§.length > 0)
         {
            this.§"!>§(this.§8k§[0]);
         }
      }
      
      public function §'!A§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§8k§.length)
         {
            if(this.§8k§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§8k§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§<!Y§ > param1.x && this.§<!Y§ < param2.x && this.§ l§ > param1.y && this.§ l§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §,!$§() : Array
      {
         return [this.§7'§,this.§'!_§];
      }
      
      public function §58§(param1:String, param2:Number, param3:Number) : §9k§
      {
         var _loc4_:§9k§ = this.addSlingshotObject(param1,param2,param3);
         this.§;!P§();
         return _loc4_;
      }
      
      public function §&!_§() : Number
      {
         return this.§8k§.length;
      }
   }
}
