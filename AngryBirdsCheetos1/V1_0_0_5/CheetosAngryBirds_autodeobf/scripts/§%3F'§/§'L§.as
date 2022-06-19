package §?'§
{
   import §!!%§.§7!W§;
   import §!!%§.§?f§;
   import §!!R§.§#q§;
   import §!!R§.Sprite;
   import §!!R§.§^!4§;
   import §#K§.§?I§;
   import §&!W§.§&!$§;
   import §&!W§.§+=§;
   import §&N§.§@,§;
   import §,B§.§1F§;
   import §,B§.§?7§;
   import §2!6§.§%!$§;
   import §2k§.Texture;
   import §9h§.§-!#§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §'L§
   {
      
      public static const §8c§:int = 0;
      
      public static const §6!&§:int = 1;
      
      public static const §0'§:int = 2;
      
      public static const §?!S§:int = 3;
      
      public static const §"!R§:int = 5;
      
      public static const §<b§:int = 3151368;
      
      protected static const §9!5§:int = 8;
      
      protected static const §&8§:int = 0;
      
      public static const §^z§:Number = 46.25;
      
      public static const §1p§:Number = 52.5;
      
      protected static var §-O§:Texture;
      
      public static const §-W§:Number = 0.4;
       
      
      public var §;c§:§9N§;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §;!W§:Number;
      
      protected var §8@§:Number;
      
      protected var §9j§:Number;
      
      protected var §-"§:Number;
      
      protected var §`!<§:Number;
      
      public var §9!=§:Number;
      
      public var §1+§:Boolean = false;
      
      protected var §+!D§:Number;
      
      public var § !J§:Vector.<§[!N§>;
      
      public var §`4§:int;
      
      public var §'!E§:int;
      
      public var §'n§:Number;
      
      public var §1j§:Sprite;
      
      public var §67§:int = 0;
      
      public var §+U§:Number = 0;
      
      public var §8!;§:Array;
      
      public var §@&§:Array;
      
      public var mSlingShotState:int;
      
      public var §!Z§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §?!J§:Boolean = false;
      
      public var §!P§:Number;
      
      protected var §=!<§:Sprite;
      
      protected var §@Y§:§^!4§;
      
      protected var §3;§:§^!4§;
      
      protected var §-!@§:Sprite;
      
      protected var §4!X§:Sprite;
      
      protected var §[-§:Sprite;
      
      protected var §7!P§:§#q§;
      
      protected var §>;§:§#q§;
      
      private var §17§:Number = 0;
      
      public function §'L§(param1:§9N§, param2:§?I§, param3:Sprite)
      {
         var _loc4_:§-!#§ = null;
         this.§ !J§ = new Vector.<§[!N§>();
         super();
         this.§;c§ = param1;
         this.§=!<§ = param3;
         if(param2)
         {
            this.setPosition(param2.§with§,param2.§4Y§);
            this.§&C§();
            for each(_loc4_ in param2.§ !J§)
            {
               this.§^c§(_loc4_.id,_loc4_.x,_loc4_.y);
            }
            this.§`4§ = 0;
            if(this.§ !J§.length <= 0)
            {
               §@,§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.mX + " " + this.mY);
               this.§<!§(§?!S§);
            }
            else
            {
               this.§<!§(§8c§);
            }
         }
         else
         {
            §@,§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§<!§(§?!S§);
         }
         this.§!P§ = 0;
         this.§3!K§();
         this.update(0,true);
         this.§[!%§();
         this.§,!J§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§=!<§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§17§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§`4§ < this.§ !J§.length;
      }
      
      public function dispose() : void
      {
         while(this.§ !J§.length > 0)
         {
            this.§<R§(0);
         }
         this.§ !J§ = null;
         if(this.§=!<§)
         {
            this.§=!<§.dispose();
            this.§=!<§ = null;
         }
         this.§1j§ = null;
         this.§8!;§ = null;
         this.§@&§ = null;
      }
      
      public function §<!G§(param1:String, param2:Number, param3:Number, param4:int = -1) : §[!N§
      {
         var _loc5_:§[!N§;
         (_loc5_ = this.§^c§(param1,param2,param3,param4)).§+!8§();
         return _loc5_;
      }
      
      protected function §^c§(param1:String, param2:Number, param3:Number, param4:int = -1) : §[!N§
      {
         var _loc5_:§[!N§ = new §[!N§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§ !J§.push(_loc5_);
         }
         else
         {
            this.§ !J§.splice(param4,0,_loc5_);
         }
         this.§1j§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §<!§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §8c§)
         {
            this.§@!>§();
            this.§'n§ = 1000;
         }
         else if(this.mSlingShotState == §6!&§)
         {
            this.§@!>§();
            this.§'n§ = 0;
         }
         else if(this.mSlingShotState == §0'§)
         {
            this.§'n§ = 10000;
            this.§?!J§ = false;
            this.§@!>§();
         }
         else if(this.mSlingShotState == §?!S§)
         {
            this.§@!>§();
            this.§'n§ = 2000;
         }
         else if(this.mSlingShotState == §"!R§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§?!J§ = false;
               this.§@!>§();
               this.§ !J§[this.§`4§].setPosition(this.§-"§ - this.§ !J§[this.§`4§].radius * Math.cos(this.§+U§ / (180 / Math.PI)),this.§`!<§ + this.§ !J§[this.§`4§].radius * Math.sin(this.§+U§ / (180 / Math.PI)));
            }
            else
            {
               this.§@!>§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §&O§() : §9N§
      {
         return this.§;c§;
      }
      
      public function §5q§() : Boolean
      {
         return this.mSlingShotState == §?!S§ && this.§'n§ <= 0;
      }
      
      private function §&C§() : void
      {
         var _loc1_:§+=§ = this.§;c§.§+S§.§3Z§("SLINGSHOT");
         var _loc2_:§&!$§ = _loc1_.getFrame(0);
         var _loc3_:§&!$§ = _loc1_.getFrame(1);
         this.§7!P§ = new §#q§(_loc2_.texture);
         this.§7!P§.scaleX = _loc2_.scale;
         this.§7!P§.scaleY = _loc2_.scale;
         this.§>;§ = new §#q§(_loc3_.texture);
         this.§>;§.scaleX = _loc3_.scale;
         this.§>;§.scaleY = _loc3_.scale;
         this.§!!D§();
         this.§?+§();
         this.§1j§ = new Sprite();
         this.§=!<§.addChild(this.§7!P§);
         this.§=!<§.addChild(this.§-!@§);
         this.§=!<§.addChild(this.§1j§);
         this.§=!<§.addChild(this.§[-§);
         this.§=!<§.addChild(this.§4!X§);
         this.§=!<§.addChild(this.§>;§);
         this.§;!W§ = this.mY + 8.5;
      }
      
      public function §!!D§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§8@§ = this.mX;
         this.§9j§ = this.mY;
         this.§+!D§ = §1V§.§,C§;
         _loc1_ = null;
      }
      
      protected function §?+§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§-O§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §-O§ = this.§;c§.§"B§.§]]§(_loc2_);
         }
         this.§[-§ = new Sprite();
         var _loc1_:§#q§ = new §#q§(§-O§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§[-§.addChild(_loc1_);
         this.§-!@§ = new Sprite();
         this.§@Y§ = new §^!4§(2,2,§<b§);
         this.§-!@§.addChild(this.§@Y§);
         this.§4!X§ = new Sprite();
         this.§3;§ = new §^!4§(2,2,§<b§);
         this.§4!X§.addChild(this.§3;§);
      }
      
      public function §,!J§(param1:Number) : void
      {
         var _loc2_:Number = this.§`!<§ / §9N§.§8!5§;
         var _loc3_:Number = this.§-"§ / §9N§.§8!5§;
         var _loc4_:Number = 3.5 + 8 * ((this.§+!D§ - this.§9!=§) / this.§+!D§);
         this.§[-§.x = _loc3_;
         this.§[-§.y = _loc2_;
         this.§[-§.rotation = -this.§+U§ / (180 / Math.PI);
         this.§7!P§.x = this.mX / §9N§.§8!5§ - 3;
         this.§7!P§.y = this.mY / §9N§.§8!5§ - 30;
         this.§>;§.x = this.mX / §9N§.§8!5§ - 30;
         this.§>;§.y = this.mY / §9N§.§8!5§ - 30;
         this.§4!X§.x = this.mX / §9N§.§8!5§ - 17;
         this.§4!X§.y = this.mY / §9N§.§8!5§ + 5;
         this.§4!X§.rotation = Math.atan2(_loc2_ - this.§4!X§.y,_loc3_ - this.§4!X§.x);
         this.§-!@§.x = this.mX / §9N§.§8!5§ + 22;
         this.§-!@§.y = this.mY / §9N§.§8!5§;
         this.§-!@§.rotation = Math.atan2(_loc2_ - this.§-!@§.y,_loc3_ - this.§-!@§.x);
         this.§3;§.width = Math.sqrt(Math.pow(_loc3_ - this.§4!X§.x,2) + Math.pow(_loc2_ - this.§4!X§.y,2));
         this.§@Y§.width = Math.sqrt(Math.pow(_loc3_ - this.§-!@§.x,2) + Math.pow(_loc2_ - this.§-!@§.y,2));
         this.§3;§.height = this.§@Y§.height = _loc4_ * 2;
         this.§3;§.y = -this.§3;§.height / 2;
         this.§@Y§.y = -this.§@Y§.height / 2;
         this.§!Z§ = false;
      }
      
      public function §+!'§() : void
      {
         while(this.§ !J§.length > 0)
         {
            this.§<R§(0,true);
         }
         this.§=<§();
         this.§^c§("BIRD_SARDINE",this.mX,this.mY);
         this.§<!§(§0'§);
      }
      
      protected function §=<§() : void
      {
         §%!$§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§<!§(§"!R§);
      }
      
      public function §@!>§() : void
      {
         this.setNewCoordinatesForRubber(this.§8@§,this.§9j§ + this.§+!D§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§-"§ == param1 && this.§`!<§ == param2)
         {
            return true;
         }
         this.§9!=§ = Math.sqrt((param2 - this.§9j§) * (param2 - this.§9j§) + (param1 - this.§8@§) * (param1 - this.§8@§));
         if(this.§9!=§ > this.§+!D§)
         {
            if(param3)
            {
               this.§9!=§ = Math.sqrt((this.§`!<§ - this.§9j§) * (this.§`!<§ - this.§9j§) + (this.§-"§ - this.§8@§) * (this.§-"§ - this.§8@§));
               return false;
            }
            param1 = this.§8@§ + this.§+!D§ * (param1 - this.§8@§) / this.§9!=§;
            param2 = this.§9j§ + this.§+!D§ * (param2 - this.§9j§) / this.§9!=§;
            this.§9!=§ = this.§+!D§;
         }
         this.§-"§ = param1;
         this.§`!<§ = param2;
         this.§+U§ = Math.atan2(-(this.§`!<§ - this.§9j§),this.§-"§ - this.§8@§);
         this.§+U§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§-"§ = param1 - 0.7;
            this.§`!<§ = param2;
            this.§+U§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§+!D§ / 2;
         if(this.§9!=§ > _loc7_ && this.§+U§ > -90 - _loc4_ + _loc5_ && this.§+U§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§8@§ + _loc7_ * (param1 - this.§8@§) / this.§9!=§;
            param2 = this.§9j§ + _loc7_ * (param2 - this.§9j§) / this.§9!=§;
            this.§9!=§ = _loc7_;
            this.§-"§ = param1;
            this.§`!<§ = param2;
         }
         else if(this.§9!=§ > _loc7_ && this.§+U§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§+U§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§+!D§ - _loc7_) * (Math.abs(this.§+U§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§8@§ + _loc8_ * (param1 - this.§8@§) / this.§9!=§;
            param2 = this.§9j§ + _loc8_ * (param2 - this.§9j§) / this.§9!=§;
            this.§9!=§ = _loc8_;
            this.§-"§ = param1;
            this.§`!<§ = param2;
         }
         if(this.§9!=§ <= this.§+!D§ * 0.45)
         {
            this.§1+§ = true;
         }
         else if(this.§1+§ && this.§9!=§ >= this.§+!D§ * 0.8)
         {
            this.§&e§();
            this.§1+§ = false;
         }
         this.§!Z§ = true;
         return true;
      }
      
      protected function §&e§() : void
      {
         §%!$§.playSound("SlingshotStreched");
      }
      
      public function §'!Y§(param1:Number) : void
      {
         this.setPosition(this.mX,this.mY + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.mX;
         this.mX = param1;
         var _loc5_:Number = param2 - this.mY;
         this.mY = param2;
         this.§;!W§ += _loc5_;
         this.§9j§ += _loc5_;
         this.§`!<§ += _loc5_;
         this.§8@§ += _loc4_;
         this.§-"§ += _loc4_;
         if(param3)
         {
            this.§,!J§(0);
         }
         this.§!Z§ = true;
      }
      
      public function §,!S§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§[!N§ = null;
         _loc2_ = this.§ !J§[this.§`4§];
         var _loc3_:Number = this.§9!=§ / this.§+!D§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§'L§.§1p§) : Number(§'L§.§^z§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §+0§() : Point
      {
         var _loc1_:§[!N§ = null;
         if(this.§ !J§.length > this.§`4§)
         {
            _loc1_ = this.§ !J§[this.§`4§];
            return new Point(_loc1_.mX,_loc1_.mY);
         }
         return null;
      }
      
      public function §"N§() : Point
      {
         return new Point(this.§8@§,this.§9j§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§[!N§ = null;
         this.§&!?§(param1);
         if(this.§!Z§)
         {
            this.§,!J§(param1);
         }
         this.§'n§ -= param1;
         if(this.§'n§ < 0)
         {
            this.§'n§ = 0;
         }
         if(this.mSlingShotState != §?!S§)
         {
            this.§#4§(param1,param2);
            _loc3_ = null;
            if(this.§ !J§.length > 0)
            {
               _loc3_ = this.§ !J§[this.§`4§];
            }
            if(_loc3_)
            {
               _loc3_.§[D§(param1);
            }
            if(!_loc3_)
            {
               this.§<!§(§?!S§);
            }
            else if(this.mSlingShotState == §8c§)
            {
               if(this.§'n§ <= 0)
               {
                  this.§<!§(§6!&§);
                  _loc3_.§>'§();
               }
            }
            else if(this.mSlingShotState == §6!&§)
            {
               if(_loc3_.§^I§)
               {
                  this.§<!§(§0'§);
               }
            }
            else if(this.mSlingShotState == §0'§)
            {
               _loc3_.setPosition(this.§-"§ - _loc3_.radius * Math.cos(this.§+U§ / (180 / Math.PI)),this.§`!<§ + _loc3_.radius * Math.sin(this.§+U§ / (180 / Math.PI)));
               if(this.§?!J§)
               {
                  this.§<!N§(this.§9!=§ / this.§+!D§,this.§+U§);
               }
            }
         }
      }
      
      public function §]!F§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§[!N§ = null;
         if(this.§ !J§.length > 0)
         {
            _loc5_ = this.§ !J§[this.§`4§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§<!N§(param3,param4);
      }
      
      protected function §<!N§(param1:Number, param2:Number) : void
      {
         var _loc3_:§[!N§ = null;
         if(this.§ !J§.length > 0)
         {
            _loc3_ = this.§ !J§[this.§`4§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§?!J§ = false;
         this.§17§ = new Date().time;
         this.§;c§.§>!O§(_loc3_,param1,param2);
         this.§<R§(this.§`4§,_loc3_.§6A§ > 0);
         this.§0!M§();
         if(this.§`4§ >= this.§ !J§.length)
         {
            this.§<!§(§?!S§);
         }
         else
         {
            this.§<!§(§8c§);
         }
      }
      
      protected function §0!M§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §%!$§.playSound("BirdShot" + _loc1_);
      }
      
      public function §#4§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§`4§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§ !J§.length)
         {
            if(this.mSlingShotState == §"!R§)
            {
               this.§ !J§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§ !J§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§[!N§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§@!>§();
         if(this.§'!E§ >= this.§ !J§.length)
         {
            return false;
         }
         _loc1_ = this.§ !J§[this.§'!E§];
         _loc2_ = §?7§.§`1§(_loc1_.name).score;
         this.§;c§.addScore(_loc2_,§74§.§3F§,true,_loc1_.mX,_loc1_.mY - 3,§?f§.§%6§(_loc1_.name));
         _loc1_.§3?§(-1,true);
         ++this.§'!E§;
         return true;
      }
      
      public function §,6§() : int
      {
         var _loc2_:§[!N§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§ !J§)
         {
            _loc1_ += §?7§.§`1§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §&!?§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§!P§ >= 0)
         {
            this.§!P§ -= param1;
            if(this.§!P§ <= 0)
            {
               _loc2_ = this.§;c§.objects.§#P§(this.§8@§,this.§;!W§);
               if(_loc2_ < 0)
               {
                  this.§'!Y§(0.1);
                  this.§!P§ = 0;
               }
               else if(!this.§;c§.objects.§+m§(_loc2_).§8!Q§)
               {
                  this.§!P§ = -1;
               }
               else if(this.§;c§.objects.§+m§(_loc2_).§`9§())
               {
                  this.§!P§ = 2000;
               }
               else
               {
                  this.§!P§ = 500;
               }
            }
         }
      }
      
      public function §[!%§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§;c§.objects.§#P§(this.§8@§,this.§;!W§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§'!Y§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§!P§ = -1;
      }
      
      public function §;f§(param1:Number, param2:Number) : void
      {
         this.§=!<§.x = -param1;
         this.§=!<§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §0'§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §0'§ && this.§9!=§ > this.§+!D§ * §-W§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§<!§(§0'§);
         var _loc1_:§[!N§ = this.§ !J§[this.§`4§];
         _loc1_.§3?§(§1F§.§&g§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§[!N§ = this.§ !J§[this.§`4§];
         _loc1_.§3?§(§1F§.§2!#§);
      }
      
      public function shoot() : void
      {
         this.§?!J§ = true;
      }
      
      protected function §<R§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§[!N§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§ !J§[param1])
         {
            _loc3_ = this.§ !J§[param1];
            this.§1j§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§#@§(this.§ !J§[param1]);
            }
            _loc3_.dispose();
            this.§ !J§[param1] = null;
         }
         this.§ !J§.splice(param1,1);
      }
      
      public function §#@§(param1:§[!N§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §9N§.§8!5§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §9N§.§8!5§) + Math.random() * -_loc8_ * 2;
            this.§;c§.particles.addParticle(§?f§.§[!Y§,§7!W§.§'>§,§?f§.§"z§,param1.mX + _loc7_,param1.mY + _loc8_,1500,"",§?f§.§+!Z§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§;c§.particles.addParticle(§?f§.§2!K§,§7!W§.§'>§,§?f§.§"z§,param1.mX,param1.mY,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §5F§(param1:§[!N§) : void
      {
         this.§<R§(this.§ !J§.indexOf(param1));
      }
      
      public function §3!K§() : void
      {
         var _loc2_:§[!N§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§[!N§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§ !J§.length - 1)
         {
            _loc3_ = Math.sqrt((this.mX - this.§ !J§[_loc1_].mX) * (this.mX - this.§ !J§[_loc1_].mX) + (this.mY - this.§ !J§[_loc1_].mY) * (this.mY - this.§ !J§[_loc1_].mY));
            if((_loc4_ = Math.sqrt((this.mX - this.§ !J§[_loc1_ + 1].mX) * (this.mX - this.§ !J§[_loc1_ + 1].mX) + (this.mY - this.§ !J§[_loc1_ + 1].mY) * (this.mY - this.§ !J§[_loc1_ + 1].mY))) < _loc3_)
            {
               _loc5_ = this.§ !J§[_loc1_];
               this.§ !J§.splice(_loc1_,1);
               this.§ !J§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§1j§.numChildren > 0)
         {
            this.§1j§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§ !J§.length)
         {
            _loc2_ = this.§ !J§[_loc1_];
            this.§1j§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §;M§(param1:Number, param2:Number) : §[!N§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§ !J§.length)
         {
            if(this.§ !J§[_loc3_])
            {
               if(this.§ !J§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§ !J§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §7l§(param1:Number, param2:Number) : §'L§
      {
         if(param1 >= this.mX - this.§+!D§ / 4 && param1 <= this.mX + this.§+!D§ / 4 && param2 >= this.mY - this.§+!D§ / 4 && this.mY <= this.§;!W§)
         {
            return this;
         }
         return null;
      }
      
      public function §@7§(param1:§?I§) : void
      {
         var _loc3_:§[!N§ = null;
         var _loc4_:§-!#§ = null;
         param1.§with§ = this.mX;
         param1.§4Y§ = this.mY;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§ !J§.length)
         {
            _loc3_ = this.§ !J§[_loc2_];
            (_loc4_ = new §-!#§()).x = _loc3_.mX;
            _loc4_.y = _loc3_.mY;
            _loc4_.id = _loc3_.name;
            param1.§ !J§.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function § "§() : void
      {
         while(this.§ !J§.length > 0)
         {
            this.§5F§(this.§ !J§[0]);
         }
      }
      
      public function §4!=§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§ !J§.length)
         {
            if(this.§ !J§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§ !J§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.mX > param1.x && this.mX < param2.x && this.mY > param1.y && this.mY < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §2!&§() : Array
      {
         return [this.§>;§,this.§7!P§];
      }
      
      public function §&!-§(param1:String, param2:Number, param3:Number) : §[!N§
      {
         var _loc4_:§[!N§ = this.§^c§(param1,param2,param3);
         this.§3!K§();
         return _loc4_;
      }
      
      public function §`v§() : Number
      {
         return this.§ !J§.length;
      }
   }
}
