package §9N§
{
   import §%!$§.§=m§;
   import §,u§.§8O§;
   import §2!-§.Texture;
   import §4W§.§2f§;
   import §4W§.§>c§;
   import §<!+§.§with§;
   import §?7§.§&!5§;
   import §?7§.§=!5§;
   import §?f§.§,v§;
   import §?f§.§-&§;
   import §@,§.§4h§;
   import §`a§.§>?§;
   import §`a§.§?!N§;
   import §`a§.Sprite;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §;c§
   {
      
      public static const §6!&§:int = 0;
      
      public static const §0'§:int = 1;
      
      public static const §?!S§:int = 2;
      
      public static const §"!R§:int = 3;
      
      public static const §<b§:int = 5;
      
      public static const §9!5§:int = 3151368;
      
      protected static const §&8§:int = 8;
      
      protected static const §^z§:int = 0;
      
      public static const §1p§:Number = 46.25;
      
      public static const §-O§:Number = 52.5;
      
      protected static var §-W§:Texture;
      
      public static const §`!7§:Number = 0.4;
       
      
      public var §8@§:§9!%§;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §=j§:Number;
      
      protected var §9j§:Number;
      
      protected var §-"§:Number;
      
      protected var §`!<§:Number;
      
      protected var §9!=§:Number;
      
      public var §1+§:Number;
      
      public var §+!D§:Boolean = false;
      
      protected var § !J§:Number;
      
      public var §`4§:Vector.<§8'§>;
      
      public var §'!E§:int;
      
      public var §'n§:int;
      
      public var §1j§:Number;
      
      public var §67§:Sprite;
      
      public var §+U§:int = 0;
      
      public var §8!;§:Number = 0;
      
      public var §@&§:Array;
      
      public var §!Z§:Array;
      
      public var mSlingShotState:int;
      
      public var §?!J§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §@Y§:Boolean = false;
      
      public var §;!W§:Number;
      
      protected var §9!A§:Sprite;
      
      protected var §3;§:§?!N§;
      
      protected var §-!@§:§?!N§;
      
      protected var §4!X§:Sprite;
      
      protected var §[-§:Sprite;
      
      protected var §7!P§:Sprite;
      
      protected var §>;§:§>?§;
      
      protected var §17§:§>?§;
      
      private var §<!G§:Number = 0;
      
      public function §;c§(param1:§9!%§, param2:§with§, param3:Sprite)
      {
         var _loc4_:§8O§ = null;
         this.§`4§ = new Vector.<§8'§>();
         super();
         this.§8@§ = param1;
         this.§9!A§ = param3;
         if(param2)
         {
            this.setPosition(param2.§4Y§,param2.§%!&§);
            this.§!!D§();
            for each(_loc4_ in param2.§`4§)
            {
               this.§<!§(_loc4_.id,_loc4_.x,_loc4_.y);
            }
            this.§'!E§ = 0;
            if(this.§`4§.length <= 0)
            {
               §4h§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.mX + " " + this.mY);
               this.§&O§(§"!R§);
            }
            else
            {
               this.§&O§(§6!&§);
            }
         }
         else
         {
            §4h§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§&O§(§"!R§);
         }
         this.§;!W§ = 0;
         this.§;M§();
         this.update(0,true);
         this.§;f§();
         this.§=<§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§9!A§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§<!G§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§'!E§ < this.§`4§.length;
      }
      
      public function dispose() : void
      {
         while(this.§`4§.length > 0)
         {
            this.§#@§(0);
         }
         this.§`4§ = null;
         if(this.§9!A§)
         {
            this.§9!A§.dispose();
            this.§9!A§ = null;
         }
         this.§67§ = null;
         this.§@&§ = null;
         this.§!Z§ = null;
      }
      
      public function §^c§(param1:String, param2:Number, param3:Number, param4:int = -1) : §8'§
      {
         var _loc5_:§8'§;
         (_loc5_ = this.§<!§(param1,param2,param3,param4)).§[D§();
         return _loc5_;
      }
      
      protected function §<!§(param1:String, param2:Number, param3:Number, param4:int = -1) : §8'§
      {
         var _loc5_:§8'§ = new §8'§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§`4§.push(_loc5_);
         }
         else
         {
            this.§`4§.splice(param4,0,_loc5_);
         }
         this.§67§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §&O§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §6!&§)
         {
            this.§&e§();
            this.§1j§ = 1000;
         }
         else if(this.mSlingShotState == §0'§)
         {
            this.§&e§();
            this.§1j§ = 0;
         }
         else if(this.mSlingShotState == §?!S§)
         {
            this.§1j§ = 10000;
            this.§@Y§ = false;
            this.§&e§();
         }
         else if(this.mSlingShotState == §"!R§)
         {
            this.§&e§();
            this.§1j§ = 2000;
         }
         else if(this.mSlingShotState == §<b§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§@Y§ = false;
               this.§&e§();
               this.§`4§[this.§'!E§].setPosition(this.§`!<§ - this.§`4§[this.§'!E§].radius * Math.cos(this.§8!;§ / (180 / Math.PI)),this.§9!=§ + this.§`4§[this.§'!E§].radius * Math.sin(this.§8!;§ / (180 / Math.PI)));
            }
            else
            {
               this.§&e§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §5q§() : §9!%§
      {
         return this.§8@§;
      }
      
      public function §&C§() : Boolean
      {
         return this.mSlingShotState == §"!R§ && this.§1j§ <= 0;
      }
      
      private function §!!D§() : void
      {
         var _loc1_:§2f§ = this.§8@§.§"B§.§2!'§("SLINGSHOT");
         var _loc2_:§>c§ = _loc1_.getFrame(0);
         var _loc3_:§>c§ = _loc1_.getFrame(1);
         this.§>;§ = new §>?§(_loc2_.texture);
         this.§>;§.scaleX = _loc2_.scale;
         this.§>;§.scaleY = _loc2_.scale;
         this.§17§ = new §>?§(_loc3_.texture);
         this.§17§.scaleX = _loc3_.scale;
         this.§17§.scaleY = _loc3_.scale;
         this.§?+§();
         this.§,!J§();
         this.§67§ = new Sprite();
         this.§9!A§.addChild(this.§>;§);
         this.§9!A§.addChild(this.§4!X§);
         this.§9!A§.addChild(this.§67§);
         this.§9!A§.addChild(this.§7!P§);
         this.§9!A§.addChild(this.§[-§);
         this.§9!A§.addChild(this.§17§);
         this.§=j§ = this.mY + 8.5;
      }
      
      public function §?+§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§9j§ = this.mX;
         this.§-"§ = this.mY;
         this.§ !J§ = §&!V§.§2v§;
         _loc1_ = null;
      }
      
      protected function §,!J§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§-W§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §-W§ = this.§8@§.§#G§.§8E§(_loc2_);
         }
         this.§7!P§ = new Sprite();
         var _loc1_:§>?§ = new §>?§(§-W§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§7!P§.addChild(_loc1_);
         this.§4!X§ = new Sprite();
         this.§3;§ = new §?!N§(2,2,§9!5§);
         this.§4!X§.addChild(this.§3;§);
         this.§[-§ = new Sprite();
         this.§-!@§ = new §?!N§(2,2,§9!5§);
         this.§[-§.addChild(this.§-!@§);
      }
      
      public function §=<§(param1:Number) : void
      {
         var _loc2_:Number = this.§9!=§ / §9!%§.§catch§;
         var _loc3_:Number = this.§`!<§ / §9!%§.§catch§;
         var _loc4_:Number = 3.5 + 8 * ((this.§ !J§ - this.§1+§) / this.§ !J§);
         this.§7!P§.x = _loc3_;
         this.§7!P§.y = _loc2_;
         this.§7!P§.rotation = -this.§8!;§ / (180 / Math.PI);
         this.§>;§.x = this.mX / §9!%§.§catch§ - 3;
         this.§>;§.y = this.mY / §9!%§.§catch§ - 30;
         this.§17§.x = this.mX / §9!%§.§catch§ - 30;
         this.§17§.y = this.mY / §9!%§.§catch§ - 30;
         this.§[-§.x = this.mX / §9!%§.§catch§ - 17;
         this.§[-§.y = this.mY / §9!%§.§catch§ + 5;
         this.§[-§.rotation = Math.atan2(_loc2_ - this.§[-§.y,_loc3_ - this.§[-§.x);
         this.§4!X§.x = this.mX / §9!%§.§catch§ + 22;
         this.§4!X§.y = this.mY / §9!%§.§catch§;
         this.§4!X§.rotation = Math.atan2(_loc2_ - this.§4!X§.y,_loc3_ - this.§4!X§.x);
         this.§-!@§.width = Math.sqrt(Math.pow(_loc3_ - this.§[-§.x,2) + Math.pow(_loc2_ - this.§[-§.y,2));
         this.§3;§.width = Math.sqrt(Math.pow(_loc3_ - this.§4!X§.x,2) + Math.pow(_loc2_ - this.§4!X§.y,2));
         this.§-!@§.height = this.§3;§.height = _loc4_ * 2;
         this.§-!@§.y = -this.§-!@§.height / 2;
         this.§3;§.y = -this.§3;§.height / 2;
         this.§?!J§ = false;
      }
      
      public function §6!A§() : void
      {
         while(this.§`4§.length > 0)
         {
            this.§#@§(0,true);
         }
         this.§@!>§();
         this.§<!§("BIRD_SARDINE",this.mX,this.mY);
         this.§&O§(§?!S§);
      }
      
      protected function §@!>§() : void
      {
         §=m§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§&O§(§<b§);
      }
      
      public function §&e§() : void
      {
         this.setNewCoordinatesForRubber(this.§9j§,this.§-"§ + this.§ !J§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§`!<§ == param1 && this.§9!=§ == param2)
         {
            return true;
         }
         this.§1+§ = Math.sqrt((param2 - this.§-"§) * (param2 - this.§-"§) + (param1 - this.§9j§) * (param1 - this.§9j§));
         if(this.§1+§ > this.§ !J§)
         {
            if(param3)
            {
               this.§1+§ = Math.sqrt((this.§9!=§ - this.§-"§) * (this.§9!=§ - this.§-"§) + (this.§`!<§ - this.§9j§) * (this.§`!<§ - this.§9j§));
               return false;
            }
            param1 = this.§9j§ + this.§ !J§ * (param1 - this.§9j§) / this.§1+§;
            param2 = this.§-"§ + this.§ !J§ * (param2 - this.§-"§) / this.§1+§;
            this.§1+§ = this.§ !J§;
         }
         this.§`!<§ = param1;
         this.§9!=§ = param2;
         this.§8!;§ = Math.atan2(-(this.§9!=§ - this.§-"§),this.§`!<§ - this.§9j§);
         this.§8!;§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§`!<§ = param1 - 0.7;
            this.§9!=§ = param2;
            this.§8!;§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§ !J§ / 2;
         if(this.§1+§ > _loc7_ && this.§8!;§ > -90 - _loc4_ + _loc5_ && this.§8!;§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§9j§ + _loc7_ * (param1 - this.§9j§) / this.§1+§;
            param2 = this.§-"§ + _loc7_ * (param2 - this.§-"§) / this.§1+§;
            this.§1+§ = _loc7_;
            this.§`!<§ = param1;
            this.§9!=§ = param2;
         }
         else if(this.§1+§ > _loc7_ && this.§8!;§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§8!;§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§ !J§ - _loc7_) * (Math.abs(this.§8!;§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§9j§ + _loc8_ * (param1 - this.§9j§) / this.§1+§;
            param2 = this.§-"§ + _loc8_ * (param2 - this.§-"§) / this.§1+§;
            this.§1+§ = _loc8_;
            this.§`!<§ = param1;
            this.§9!=§ = param2;
         }
         if(this.§1+§ <= this.§ !J§ * 0.45)
         {
            this.§+!D§ = true;
         }
         else if(this.§+!D§ && this.§1+§ >= this.§ !J§ * 0.8)
         {
            this.§,!S§();
            this.§+!D§ = false;
         }
         this.§?!J§ = true;
         return true;
      }
      
      protected function §,!S§() : void
      {
         §=m§.playSound("SlingshotStreched");
      }
      
      public function § #§(param1:Number) : void
      {
         this.setPosition(this.mX,this.mY + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.mX;
         this.mX = param1;
         var _loc5_:Number = param2 - this.mY;
         this.mY = param2;
         this.§=j§ += _loc5_;
         this.§-"§ += _loc5_;
         this.§9!=§ += _loc5_;
         this.§9j§ += _loc4_;
         this.§`!<§ += _loc4_;
         if(param3)
         {
            this.§=<§(0);
         }
         this.§?!J§ = true;
      }
      
      public function §"N§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§8'§ = null;
         _loc2_ = this.§`4§[this.§'!E§];
         var _loc3_:Number = this.§1+§ / this.§ !J§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§;c§.§-O§) : Number(§;c§.§1p§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §+0§() : Point
      {
         var _loc1_:§8'§ = null;
         if(this.§`4§.length > this.§'!E§)
         {
            _loc1_ = this.§`4§[this.§'!E§];
            return new Point(_loc1_.mX,_loc1_.mY);
         }
         return null;
      }
      
      public function §]!F§() : Point
      {
         return new Point(this.§9j§,this.§-"§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§8'§ = null;
         this.§'!Y§(param1);
         if(this.§?!J§)
         {
            this.§=<§(param1);
         }
         this.§1j§ -= param1;
         if(this.§1j§ < 0)
         {
            this.§1j§ = 0;
         }
         if(this.mSlingShotState != §"!R§)
         {
            this.§,6§(param1,param2);
            _loc3_ = null;
            if(this.§`4§.length > 0)
            {
               _loc3_ = this.§`4§[this.§'!E§];
            }
            if(_loc3_)
            {
               _loc3_.§>'§(param1);
            }
            if(!_loc3_)
            {
               this.§&O§(§"!R§);
            }
            else if(this.mSlingShotState == §6!&§)
            {
               if(this.§1j§ <= 0)
               {
                  this.§&O§(§0'§);
                  _loc3_.§&!?§();
               }
            }
            else if(this.mSlingShotState == §0'§)
            {
               if(_loc3_.§6A§)
               {
                  this.§&O§(§?!S§);
               }
            }
            else if(this.mSlingShotState == §?!S§)
            {
               _loc3_.setPosition(this.§`!<§ - _loc3_.radius * Math.cos(this.§8!;§ / (180 / Math.PI)),this.§9!=§ + _loc3_.radius * Math.sin(this.§8!;§ / (180 / Math.PI)));
               if(this.§@Y§)
               {
                  this.§0!M§(this.§1+§ / this.§ !J§,this.§8!;§);
               }
            }
         }
      }
      
      public function §<!N§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§8'§ = null;
         if(this.§`4§.length > 0)
         {
            _loc5_ = this.§`4§[this.§'!E§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§0!M§(param3,param4);
      }
      
      protected function §0!M§(param1:Number, param2:Number) : void
      {
         var _loc3_:§8'§ = null;
         if(this.§`4§.length > 0)
         {
            _loc3_ = this.§`4§[this.§'!E§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§@Y§ = false;
         this.§<!G§ = new Date().time;
         this.§8@§.§8!"§(_loc3_,param1,param2);
         this.§#@§(this.§'!E§,_loc3_.§1;§ > 0);
         this.§#4§();
         if(this.§'!E§ >= this.§`4§.length)
         {
            this.§&O§(§"!R§);
         }
         else
         {
            this.§&O§(§6!&§);
         }
      }
      
      protected function §#4§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §=m§.playSound("BirdShot" + _loc1_);
      }
      
      public function §,6§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§'!E§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§`4§.length)
         {
            if(this.mSlingShotState == §<b§)
            {
               this.§`4§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§`4§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§8'§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§&e§();
         if(this.§'n§ >= this.§`4§.length)
         {
            return false;
         }
         _loc1_ = this.§`4§[this.§'n§];
         _loc2_ = §&!5§.§;@§(_loc1_.name).score;
         this.§8@§.addScore(_loc2_,§^_§.§3B§,true,_loc1_.mX,_loc1_.mY - 3,§-&§.§7!W§(_loc1_.name));
         _loc1_.§+^§(-1,true);
         ++this.§'n§;
         return true;
      }
      
      public function §[!%§() : int
      {
         var _loc2_:§8'§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§`4§)
         {
            _loc1_ += §&!5§.§;@§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §'!Y§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§;!W§ >= 0)
         {
            this.§;!W§ -= param1;
            if(this.§;!W§ <= 0)
            {
               _loc2_ = this.§8@§.objects.§+m§(this.§9j§,this.§=j§);
               if(_loc2_ < 0)
               {
                  this.§ #§(0.1);
                  this.§;!W§ = 0;
               }
               else if(!this.§8@§.objects.§'!P§(_loc2_).§2!X§)
               {
                  this.§;!W§ = -1;
               }
               else if(this.§8@§.objects.§'!P§(_loc2_).§5!@§())
               {
                  this.§;!W§ = 2000;
               }
               else
               {
                  this.§;!W§ = 500;
               }
            }
         }
      }
      
      public function §;f§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§8@§.objects.§+m§(this.§9j§,this.§=j§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§ #§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§;!W§ = -1;
      }
      
      public function §<R§(param1:Number, param2:Number) : void
      {
         this.§9!A§.x = -param1;
         this.§9!A§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §?!S§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §?!S§ && this.§1+§ > this.§ !J§ * §`!7§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§&O§(§?!S§);
         var _loc1_:§8'§ = this.§`4§[this.§'!E§];
         _loc1_.§+^§(§=!5§.§#!1§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§8'§ = this.§`4§[this.§'!E§];
         _loc1_.§+^§(§=!5§.§&g§);
      }
      
      public function shoot() : void
      {
         this.§@Y§ = true;
      }
      
      protected function §#@§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§8'§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§`4§[param1])
         {
            _loc3_ = this.§`4§[param1];
            this.§67§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§5F§(this.§`4§[param1]);
            }
            _loc3_.dispose();
            this.§`4§[param1] = null;
         }
         this.§`4§.splice(param1,1);
      }
      
      public function §5F§(param1:§8'§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §9!%§.§catch§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §9!%§.§catch§) + Math.random() * -_loc8_ * 2;
            this.§8@§.particles.addParticle(§-&§.§+H§,§,v§.§-!;§,§-&§.§ ,§,param1.mX + _loc7_,param1.mY + _loc8_,1500,"",§-&§.§%6§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§8@§.particles.addParticle(§-&§.§1U§,§,v§.§-!;§,§-&§.§ ,§,param1.mX,param1.mY,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §3!K§(param1:§8'§) : void
      {
         this.§#@§(this.§`4§.indexOf(param1));
      }
      
      public function §;M§() : void
      {
         var _loc2_:§8'§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§8'§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§`4§.length - 1)
         {
            _loc3_ = Math.sqrt((this.mX - this.§`4§[_loc1_].mX) * (this.mX - this.§`4§[_loc1_].mX) + (this.mY - this.§`4§[_loc1_].mY) * (this.mY - this.§`4§[_loc1_].mY));
            if((_loc4_ = Math.sqrt((this.mX - this.§`4§[_loc1_ + 1].mX) * (this.mX - this.§`4§[_loc1_ + 1].mX) + (this.mY - this.§`4§[_loc1_ + 1].mY) * (this.mY - this.§`4§[_loc1_ + 1].mY))) < _loc3_)
            {
               _loc5_ = this.§`4§[_loc1_];
               this.§`4§.splice(_loc1_,1);
               this.§`4§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§67§.numChildren > 0)
         {
            this.§67§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§`4§.length)
         {
            _loc2_ = this.§`4§[_loc1_];
            this.§67§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §7l§(param1:Number, param2:Number) : §8'§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§`4§.length)
         {
            if(this.§`4§[_loc3_])
            {
               if(this.§`4§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§`4§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §@7§(param1:Number, param2:Number) : §;c§
      {
         if(param1 >= this.mX - this.§ !J§ / 4 && param1 <= this.mX + this.§ !J§ / 4 && param2 >= this.mY - this.§ !J§ / 4 && this.mY <= this.§=j§)
         {
            return this;
         }
         return null;
      }
      
      public function § "§(param1:§with§) : void
      {
         var _loc3_:§8'§ = null;
         var _loc4_:§8O§ = null;
         param1.§4Y§ = this.mX;
         param1.§%!&§ = this.mY;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§`4§.length)
         {
            _loc3_ = this.§`4§[_loc2_];
            (_loc4_ = new §8O§()).x = _loc3_.mX;
            _loc4_.y = _loc3_.mY;
            _loc4_.id = _loc3_.name;
            param1.§`4§.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function §4!=§() : void
      {
         while(this.§`4§.length > 0)
         {
            this.§3!K§(this.§`4§[0]);
         }
      }
      
      public function §2!&§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§`4§.length)
         {
            if(this.§`4§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§`4§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.mX > param1.x && this.mX < param2.x && this.mY > param1.y && this.mY < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §&!-§() : Array
      {
         return [this.§17§,this.§>;§];
      }
      
      public function §`v§(param1:String, param2:Number, param3:Number) : §8'§
      {
         var _loc4_:§8'§ = this.§<!§(param1,param2,param3);
         this.§;M§();
         return _loc4_;
      }
      
      public function §8c§() : Number
      {
         return this.§`4§.length;
      }
   }
}
