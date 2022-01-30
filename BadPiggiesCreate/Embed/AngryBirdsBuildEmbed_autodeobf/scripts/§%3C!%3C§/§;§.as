package §<!<§
{
   import § !r§.§`![§;
   import §#N§.§!r§;
   import §#N§.§<!r§;
   import §-!0§.§2! §;
   import §-!`§.§7!J§;
   import §-!`§.§8!p§;
   import §-!`§.Sprite;
   import §0!-§.Texture;
   import §1?§.§+!§;
   import §=U§.§;P§;
   import §=U§.§>?§;
   import §?!6§.§1!!§;
   import §?!6§.§@T§;
   import §@_§.§7!-§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §;§
   {
      
      public static const §!!0§:int = 0;
      
      public static const §3P§:int = 1;
      
      public static const §>!A§:int = 2;
      
      public static const §>!]§:int = 3;
      
      public static const §#!f§:int = 5;
      
      public static const §+'§:int = 3151368;
      
      protected static const §2B§:int = 8;
      
      protected static const §,0§:int = 0;
      
      public static const §5B§:Number = 46.25;
      
      public static const § !3§:Number = 52.5;
      
      protected static var §9!@§:Texture;
      
      public static const §'D§:Number = 0.4;
       
      
      public var §-n§:§7E§;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §;!F§:Number;
      
      protected var §]J§:Number;
      
      protected var §-!L§:Number;
      
      protected var §1!r§:Number;
      
      protected var §,!U§:Number;
      
      public var §6!`§:Number;
      
      public var §<>§:Boolean = false;
      
      protected var §>@§:Number;
      
      public var mBirds:Vector.<§]K§>;
      
      public var §1!6§:int;
      
      public var §@!_§:int;
      
      public var §[c§:Number;
      
      public var §0G§:Sprite;
      
      public var §[9§:int = 0;
      
      public var §"!K§:Number = 0;
      
      public var §#J§:Array;
      
      public var §8!D§:Array;
      
      public var mSlingShotState:int;
      
      public var §1!J§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §2f§:Boolean = false;
      
      public var §""§:Number;
      
      protected var §>E§:Sprite;
      
      protected var §7W§:§8!p§;
      
      protected var §3!l§:§8!p§;
      
      protected var §[!"§:Sprite;
      
      protected var §%!K§:Sprite;
      
      protected var §6r§:Sprite;
      
      protected var §,!§:§7!J§;
      
      protected var §"A§:§7!J§;
      
      private var §-!T§:Number = 0;
      
      private var §4H§:int = 0;
      
      public function §;§(param1:§7E§, param2:§2! §, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§7!-§ = null;
         this.mBirds = new Vector.<§]K§>();
         super();
         this.§-n§ = param1;
         this.§>E§ = param3;
         if(param2)
         {
            this.setPosition(param2.§>!$§,param2.§]!l§);
            this.§<r§();
            _loc4_ = 0;
            while(_loc4_ < param2.§-!E§)
            {
               _loc5_ = param2.§`R§(_loc4_);
               this.§^!R§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§4H§ = this.§]+§();
            this.§1!6§ = 0;
            if(this.mBirds.length <= 0)
            {
               §`![§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.mX + " " + this.mY);
               this.setSlingShotState(§>!]§);
            }
            else
            {
               this.setSlingShotState(§!!0§);
            }
         }
         else
         {
            §`![§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.setSlingShotState(§>!]§);
         }
         this.§""§ = 0;
         this.§!!=§();
         this.update(0,true);
         this.groundSlingshot();
         this.§3!s§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§>E§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§-!T§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§1!6§ < this.mBirds.length;
      }
      
      public function dispose() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§34§(0);
         }
         this.mBirds = null;
         if(this.§>E§)
         {
            this.§>E§.dispose();
            this.§>E§ = null;
         }
         this.§0G§ = null;
         this.§#J§ = null;
         this.§8!D§ = null;
      }
      
      public function §;=§(param1:String, param2:Number, param3:Number, param4:int = -1) : §]K§
      {
         var _loc5_:§]K§;
         (_loc5_ = this.§^!R§(param1,param2,param3,param4)).§;!C§();
         return _loc5_;
      }
      
      protected function §^!R§(param1:String, param2:Number, param3:Number, param4:int = -1) : §]K§
      {
         var _loc5_:§]K§ = new §]K§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.mBirds.push(_loc5_);
         }
         else
         {
            this.mBirds.splice(param4,0,_loc5_);
         }
         this.§0G§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function setSlingShotState(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §!!0§)
         {
            this.§8z§();
            this.§[c§ = 1000;
         }
         else if(this.mSlingShotState == §3P§)
         {
            this.§8z§();
            this.§[c§ = 0;
         }
         else if(this.mSlingShotState == §>!A§)
         {
            this.§[c§ = 10000;
            this.§2f§ = false;
            this.§8z§();
         }
         else if(this.mSlingShotState == §>!]§)
         {
            this.§8z§();
            this.§[c§ = 2000;
         }
         else if(this.mSlingShotState == §#!f§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§2f§ = false;
               this.§8z§();
               this.mBirds[this.§1!6§].setPosition(this.§1!r§ - this.mBirds[this.§1!6§].radius * Math.cos(this.§"!K§ / (180 / Math.PI)),this.§,!U§ + this.mBirds[this.§1!6§].radius * Math.sin(this.§"!K§ / (180 / Math.PI)));
            }
            else
            {
               this.§8z§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §<q§() : §7E§
      {
         return this.§-n§;
      }
      
      public function §]!&§() : Boolean
      {
         return this.mSlingShotState == §>!]§ && this.§[c§ <= 0;
      }
      
      private function §<r§() : void
      {
         var _loc1_:§;P§ = this.§-n§.§@!o§.§`!!§("SLINGSHOT");
         var _loc2_:§>?§ = _loc1_.getFrame(0);
         var _loc3_:§>?§ = _loc1_.getFrame(1);
         this.§,!§ = new §7!J§(_loc2_.texture);
         this.§,!§.scaleX = _loc2_.scale;
         this.§,!§.scaleY = _loc2_.scale;
         this.§"A§ = new §7!J§(_loc3_.texture);
         this.§"A§.scaleX = _loc3_.scale;
         this.§"A§.scaleY = _loc3_.scale;
         this.§%!N§();
         this.§0!r§();
         this.§0G§ = new Sprite();
         this.§>E§.addChild(this.§,!§);
         this.§>E§.addChild(this.§[!"§);
         this.§>E§.addChild(this.§0G§);
         this.§>E§.addChild(this.§6r§);
         this.§>E§.addChild(this.§%!K§);
         this.§>E§.addChild(this.§"A§);
         this.§;!F§ = this.mY + 8.5;
      }
      
      public function §%!N§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§]J§ = this.mX;
         this.§-!L§ = this.mY;
         this.§>@§ = §;J§.§@H§;
         _loc1_ = null;
      }
      
      protected function §0!r§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§9!@§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §9!@§ = this.§-n§.textureManager.§%!^§(_loc2_);
         }
         this.§6r§ = new Sprite();
         var _loc1_:§7!J§ = new §7!J§(§9!@§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§6r§.addChild(_loc1_);
         this.§[!"§ = new Sprite();
         this.§7W§ = new §8!p§(2,2,§+'§);
         this.§[!"§.addChild(this.§7W§);
         this.§%!K§ = new Sprite();
         this.§3!l§ = new §8!p§(2,2,§+'§);
         this.§%!K§.addChild(this.§3!l§);
      }
      
      public function §3!s§(param1:Number) : void
      {
         var _loc2_:Number = this.§,!U§ / §7E§.§8!'§;
         var _loc3_:Number = this.§1!r§ / §7E§.§8!'§;
         var _loc4_:Number = 3.5 + 8 * ((this.§>@§ - this.§6!`§) / this.§>@§);
         this.§6r§.x = _loc3_;
         this.§6r§.y = _loc2_;
         this.§6r§.rotation = -this.§"!K§ / (180 / Math.PI);
         this.§,!§.x = this.mX / §7E§.§8!'§ - 3;
         this.§,!§.y = this.mY / §7E§.§8!'§ - 30;
         this.§"A§.x = this.mX / §7E§.§8!'§ - 30;
         this.§"A§.y = this.mY / §7E§.§8!'§ - 30;
         this.§%!K§.x = this.mX / §7E§.§8!'§ - 17;
         this.§%!K§.y = this.mY / §7E§.§8!'§ + 5;
         this.§%!K§.rotation = Math.atan2(_loc2_ - this.§%!K§.y,_loc3_ - this.§%!K§.x);
         this.§[!"§.x = this.mX / §7E§.§8!'§ + 22;
         this.§[!"§.y = this.mY / §7E§.§8!'§;
         this.§[!"§.rotation = Math.atan2(_loc2_ - this.§[!"§.y,_loc3_ - this.§[!"§.x);
         this.§3!l§.width = Math.sqrt(Math.pow(_loc3_ - this.§%!K§.x,2) + Math.pow(_loc2_ - this.§%!K§.y,2));
         this.§7W§.width = Math.sqrt(Math.pow(_loc3_ - this.§[!"§.x,2) + Math.pow(_loc2_ - this.§[!"§.y,2));
         this.§3!l§.height = this.§7W§.height = _loc4_ * 2;
         this.§3!l§.y = -this.§3!l§.height / 2;
         this.§7W§.y = -this.§7W§.height / 2;
         this.§1!J§ = false;
      }
      
      public function §+!9§() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§34§(0,true);
         }
         this.§case §();
         this.§^!R§("BIRD_SARDINE",this.mX,this.mY);
         this.setSlingShotState(§>!A§);
      }
      
      protected function §case §() : void
      {
         §+!§.§4c§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.setSlingShotState(§#!f§);
      }
      
      public function §8z§() : void
      {
         this.setNewCoordinatesForRubber(this.§]J§,this.§-!L§ + this.§>@§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§1!r§ == param1 && this.§,!U§ == param2)
         {
            return true;
         }
         this.§6!`§ = Math.sqrt((param2 - this.§-!L§) * (param2 - this.§-!L§) + (param1 - this.§]J§) * (param1 - this.§]J§));
         if(this.§6!`§ > this.§>@§)
         {
            if(param3)
            {
               this.§6!`§ = Math.sqrt((this.§,!U§ - this.§-!L§) * (this.§,!U§ - this.§-!L§) + (this.§1!r§ - this.§]J§) * (this.§1!r§ - this.§]J§));
               return false;
            }
            param1 = this.§]J§ + this.§>@§ * (param1 - this.§]J§) / this.§6!`§;
            param2 = this.§-!L§ + this.§>@§ * (param2 - this.§-!L§) / this.§6!`§;
            this.§6!`§ = this.§>@§;
         }
         this.§1!r§ = param1;
         this.§,!U§ = param2;
         this.§"!K§ = Math.atan2(-(this.§,!U§ - this.§-!L§),this.§1!r§ - this.§]J§);
         this.§"!K§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§1!r§ = param1 - 0.7;
            this.§,!U§ = param2;
            this.§"!K§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§>@§ / 2;
         if(this.§6!`§ > _loc7_ && this.§"!K§ > -90 - _loc4_ + _loc5_ && this.§"!K§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§]J§ + _loc7_ * (param1 - this.§]J§) / this.§6!`§;
            param2 = this.§-!L§ + _loc7_ * (param2 - this.§-!L§) / this.§6!`§;
            this.§6!`§ = _loc7_;
            this.§1!r§ = param1;
            this.§,!U§ = param2;
         }
         else if(this.§6!`§ > _loc7_ && this.§"!K§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§"!K§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§>@§ - _loc7_) * (Math.abs(this.§"!K§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§]J§ + _loc8_ * (param1 - this.§]J§) / this.§6!`§;
            param2 = this.§-!L§ + _loc8_ * (param2 - this.§-!L§) / this.§6!`§;
            this.§6!`§ = _loc8_;
            this.§1!r§ = param1;
            this.§,!U§ = param2;
         }
         if(this.§6!`§ <= this.§>@§ * 0.45)
         {
            this.§<>§ = true;
         }
         else if(this.§<>§ && this.§6!`§ >= this.§>@§ * 0.8)
         {
            this.§;%§();
            this.§<>§ = false;
         }
         this.§1!J§ = true;
         return true;
      }
      
      protected function §;%§() : void
      {
         §+!§.§4c§("SlingshotStreched");
      }
      
      public function §"8§(param1:Number) : void
      {
         this.setPosition(this.mX,this.mY + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.mX;
         this.mX = param1;
         var _loc5_:Number = param2 - this.mY;
         this.mY = param2;
         this.§;!F§ += _loc5_;
         this.§-!L§ += _loc5_;
         this.§,!U§ += _loc5_;
         this.§]J§ += _loc4_;
         this.§1!r§ += _loc4_;
         if(param3)
         {
            this.§3!s§(0);
         }
         this.§1!J§ = true;
      }
      
      public function §2"§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§]K§ = null;
         _loc2_ = this.mBirds[this.§1!6§];
         var _loc3_:Number = this.§6!`§ / this.§>@§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§;§.§ !3§) : Number(§;§.§5B§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function getPosition() : Point
      {
         var _loc1_:§]K§ = null;
         if(this.mBirds.length > this.§1!6§)
         {
            _loc1_ = this.mBirds[this.§1!6§];
            return new Point(_loc1_.mX,_loc1_.mY);
         }
         return null;
      }
      
      public function §3!d§() : Point
      {
         return new Point(this.§]J§,this.§-!L§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§]K§ = null;
         this.§"E§(param1);
         if(this.§1!J§)
         {
            this.§3!s§(param1);
         }
         this.§[c§ -= param1;
         if(this.§[c§ < 0)
         {
            this.§[c§ = 0;
         }
         if(this.mSlingShotState != §>!]§)
         {
            this.§%!E§(param1,param2);
            _loc3_ = null;
            if(this.mBirds.length > 0)
            {
               _loc3_ = this.mBirds[this.§1!6§];
            }
            if(_loc3_)
            {
               _loc3_.§#w§(param1);
            }
            if(!_loc3_)
            {
               this.setSlingShotState(§>!]§);
            }
            else if(this.mSlingShotState == §!!0§)
            {
               if(this.§[c§ <= 0)
               {
                  this.setSlingShotState(§3P§);
                  _loc3_.§;!H§();
               }
            }
            else if(this.mSlingShotState == §3P§)
            {
               if(_loc3_.§`!i§)
               {
                  this.setSlingShotState(§>!A§);
               }
            }
            else if(this.mSlingShotState == §>!A§)
            {
               _loc3_.setPosition(this.§1!r§ - _loc3_.radius * Math.cos(this.§"!K§ / (180 / Math.PI)),this.§,!U§ + _loc3_.radius * Math.sin(this.§"!K§ / (180 / Math.PI)));
               if(this.§2f§)
               {
                  this.§!!c§(this.§6!`§ / this.§>@§,this.§"!K§);
               }
            }
         }
      }
      
      public function §2!I§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§]K§ = null;
         if(this.mBirds.length > 0)
         {
            _loc5_ = this.mBirds[this.§1!6§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§!!c§(param3,param4);
      }
      
      protected function §!!c§(param1:Number, param2:Number) : void
      {
         var _loc3_:§]K§ = null;
         if(this.mBirds.length > 0)
         {
            _loc3_ = this.mBirds[this.§1!6§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§2f§ = false;
         this.§-!T§ = new Date().time;
         this.§-n§.§3!i§(_loc3_,param1,param2);
         this.§34§(this.§1!6§,_loc3_.§2!@§ > 0);
         this.§[d§();
         if(this.§1!6§ >= this.mBirds.length)
         {
            this.setSlingShotState(§>!]§);
         }
         else
         {
            this.setSlingShotState(§!!0§);
         }
      }
      
      protected function §[d§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §+!§.§4c§("BirdShot" + _loc1_);
      }
      
      public function §%!E§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§1!6§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.mBirds.length)
         {
            if(this.mSlingShotState == §#!f§)
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
         var _loc1_:§]K§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§8z§();
         if(this.§@!_§ >= this.mBirds.length)
         {
            return false;
         }
         _loc1_ = this.mBirds[this.§@!_§];
         _loc2_ = §1!!§.§#P§(_loc1_.name).score;
         this.§-n§.addScore(_loc2_,§ !p§.§+!c§,true,_loc1_.mX,_loc1_.mY - 3,§!r§.§&M§(_loc1_.name));
         _loc1_.§&K§(-1,true);
         ++this.§@!_§;
         return true;
      }
      
      public function §]+§() : int
      {
         var _loc2_:§]K§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mBirds)
         {
            _loc1_ += §1!!§.§#P§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §6J§() : int
      {
         return this.§4H§;
      }
      
      public function §"E§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§""§ >= 0)
         {
            this.§""§ -= param1;
            if(this.§""§ <= 0)
            {
               _loc2_ = this.§-n§.objects.§^!!§(this.§]J§,this.§;!F§);
               if(_loc2_ < 0)
               {
                  this.§"8§(0.1);
                  this.§""§ = 0;
               }
               else if(!this.§-n§.objects.getObject(_loc2_).§7T§)
               {
                  this.§""§ = -1;
               }
               else if(this.§-n§.objects.getObject(_loc2_).§^!%§())
               {
                  this.§""§ = 2000;
               }
               else
               {
                  this.§""§ = 500;
               }
            }
         }
      }
      
      public function groundSlingshot() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§-n§.objects.§^!!§(this.§]J§,this.§;!F§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§"8§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§""§ = -1;
      }
      
      public function §[t§(param1:Number, param2:Number) : void
      {
         this.§>E§.x = -param1;
         this.§>E§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §>!A§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §>!A§ && this.§6!`§ > this.§>@§ * §'D§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.setSlingShotState(§>!A§);
         var _loc1_:§]K§ = this.mBirds[this.§1!6§];
         _loc1_.§&K§(§@T§.§-^§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§]K§ = this.mBirds[this.§1!6§];
         _loc1_.§&K§(§@T§.§"!?§);
      }
      
      public function shoot() : void
      {
         this.§2f§ = true;
      }
      
      protected function §34§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§]K§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.mBirds[param1])
         {
            _loc3_ = this.mBirds[param1];
            this.§0G§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§>!"§(this.mBirds[param1]);
            }
            _loc3_.dispose();
            this.mBirds[param1] = null;
         }
         this.mBirds.splice(param1,1);
      }
      
      public function §>!"§(param1:§]K§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §7E§.§8!'§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §7E§.§8!'§) + Math.random() * -_loc8_ * 2;
            this.§-n§.particles.§1&§(§!r§.§2!H§,§<!r§.§1N§,§!r§.§^!F§,param1.mX + _loc7_,param1.mY + _loc8_,1500,"",§!r§.§^!O§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§-n§.particles.§1&§(§!r§.§93§,§<!r§.§1N§,§!r§.§^!F§,param1.mX,param1.mY,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:§]K§) : void
      {
         this.§34§(this.mBirds.indexOf(param1));
      }
      
      public function §!!=§() : void
      {
         var _loc2_:§]K§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§]K§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.mBirds.length - 1)
         {
            _loc3_ = Math.sqrt((this.mX - this.mBirds[_loc1_].mX) * (this.mX - this.mBirds[_loc1_].mX) + (this.mY - this.mBirds[_loc1_].mY) * (this.mY - this.mBirds[_loc1_].mY));
            if((_loc4_ = Math.sqrt((this.mX - this.mBirds[_loc1_ + 1].mX) * (this.mX - this.mBirds[_loc1_ + 1].mX) + (this.mY - this.mBirds[_loc1_ + 1].mY) * (this.mY - this.mBirds[_loc1_ + 1].mY))) < _loc3_)
            {
               _loc5_ = this.mBirds[_loc1_];
               this.mBirds.splice(_loc1_,1);
               this.mBirds.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§0G§.numChildren > 0)
         {
            this.§0G§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.mBirds.length)
         {
            _loc2_ = this.mBirds[_loc1_];
            this.§0G§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §]K§
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
      
      public function intersectsWithPoint(param1:Number, param2:Number) : §;§
      {
         if(param1 >= this.mX - this.§>@§ / 4 && param1 <= this.mX + this.§>@§ / 4 && param2 >= this.mY - this.§>@§ / 4 && this.mY <= this.§;!F§)
         {
            return this;
         }
         return null;
      }
      
      public function §8x§(param1:§2! §) : void
      {
         var _loc3_:§]K§ = null;
         var _loc4_:§7!-§ = null;
         param1.§>!$§ = this.mX;
         param1.§]!l§ = this.mY;
         var _loc2_:Number = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc3_ = this.mBirds[_loc2_];
            (_loc4_ = new §7!-§()).x = _loc3_.mX;
            _loc4_.y = _loc3_.mY;
            _loc4_.id = _loc3_.name;
            param1.§1!T§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §7!S§() : void
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
      
      public function §try §() : Array
      {
         return [this.§"A§,this.§,!§];
      }
      
      public function addNewBirdToEndOfList(param1:String, param2:Number, param3:Number) : §]K§
      {
         var _loc4_:§]K§ = this.§^!R§(param1,param2,param3);
         this.§!!=§();
         return _loc4_;
      }
      
      public function getBirdCount() : Number
      {
         return this.mBirds.length;
      }
   }
}
