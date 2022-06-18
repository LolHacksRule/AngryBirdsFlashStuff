package §+!%§
{
   import §"!E§.§#g§;
   import §"!E§.§9!E§;
   import §&!7§.Texture;
   import §,Y§.§32§;
   import §,Y§.§5F§;
   import §->§.§2! §;
   import §->§.§7d§;
   import §->§.Sprite;
   import §1!8§.§;!>§;
   import §2x§.§'!@§;
   import §<!@§.§+!-§;
   import §[!$§.§2!%§;
   import §[!$§.§89§;
   import §finally§.§%!D§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §-C§
   {
      
      public static const §[d§:int = 0;
      
      public static const §&$§:int = 1;
      
      public static const §17§:int = 2;
      
      public static const §>d§:int = 3;
      
      public static const §<i§:int = 5;
      
      public static const §0§:int = 3151368;
      
      protected static const § !$§:int = 8;
      
      protected static const §+!<§:int = 0;
      
      public static const §>c§:Number = 46.25;
      
      public static const § C§:Number = 52.5;
      
      protected static var §^d§:Texture;
      
      public static const §-!+§:Number = 0.4;
       
      
      public var §]U§:§'!"§;
      
      public var §#d§:Number;
      
      public var §7^§:Number;
      
      public var §1[§:Number;
      
      protected var §3!-§:Number;
      
      protected var § !1§:Number;
      
      protected var §0!$§:Number;
      
      protected var §9$§:Number;
      
      public var §]q§:Number;
      
      public var §;!"§:Boolean = false;
      
      protected var §5$§:Number;
      
      public var §8§:Vector.<§4;§>;
      
      public var §;<§:int;
      
      public var §']§:int;
      
      public var §,?§:Number;
      
      public var §,N§:Sprite;
      
      public var §8L§:int = 0;
      
      public var §#!@§:Number = 0;
      
      public var §4>§:Array;
      
      public var §2!;§:Array;
      
      public var mSlingShotState:int;
      
      public var §4!4§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §&!>§:Boolean = false;
      
      public var §+!H§:Number;
      
      protected var §'M§:Sprite;
      
      protected var §^v§:§7d§;
      
      protected var §-S§:§7d§;
      
      protected var §#o§:Sprite;
      
      protected var §=@§:Sprite;
      
      protected var §#3§:Sprite;
      
      protected var §-;§:§2! §;
      
      protected var §=v§:§2! §;
      
      private var §5!$§:Number = 0;
      
      private var §&C§:int = 0;
      
      public function §-C§(param1:§'!"§, param2:§+!-§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§%!D§ = null;
         this.§8§ = new Vector.<§4;§>();
         super();
         this.§]U§ = param1;
         this.§'M§ = param3;
         if(param2)
         {
            this.setPosition(param2.§6T§,param2.§?K§);
            this.§[U§();
            _loc4_ = 0;
            while(_loc4_ < param2.§true §)
            {
               _loc5_ = param2.§23§(_loc4_);
               this.§^!%§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§&C§ = this.§"S§();
            this.§;<§ = 0;
            if(this.§8§.length <= 0)
            {
               §'!@§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§#d§ + " " + this.§7^§);
               this.§catch§(§>d§);
            }
            else
            {
               this.§catch§(§[d§);
            }
         }
         else
         {
            §'!@§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§catch§(§>d§);
         }
         this.§+!H§ = 0;
         this.§%"§();
         this.update(0,true);
         this.§3%§();
         this.§<Z§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§'M§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§5!$§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§;<§ < this.§8§.length;
      }
      
      public function dispose() : void
      {
         while(this.§8§.length > 0)
         {
            this.§=$§(0);
         }
         this.§8§ = null;
         if(this.§'M§)
         {
            this.§'M§.dispose();
            this.§'M§ = null;
         }
         this.§,N§ = null;
         this.§4>§ = null;
         this.§2!;§ = null;
      }
      
      public function §@d§(param1:String, param2:Number, param3:Number, param4:int = -1) : §4;§
      {
         var _loc5_:§4;§;
         (_loc5_ = this.§^!%§(param1,param2,param3,param4)).§,+§();
         return _loc5_;
      }
      
      protected function §^!%§(param1:String, param2:Number, param3:Number, param4:int = -1) : §4;§
      {
         var _loc5_:§4;§ = new §4;§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§8§.push(_loc5_);
         }
         else
         {
            this.§8§.splice(param4,0,_loc5_);
         }
         this.§,N§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §catch§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §[d§)
         {
            this.§9!>§();
            this.§,?§ = 1000;
         }
         else if(this.mSlingShotState == §&$§)
         {
            this.§9!>§();
            this.§,?§ = 0;
         }
         else if(this.mSlingShotState == §17§)
         {
            this.§,?§ = 10000;
            this.§&!>§ = false;
            this.§9!>§();
         }
         else if(this.mSlingShotState == §>d§)
         {
            this.§9!>§();
            this.§,?§ = 2000;
         }
         else if(this.mSlingShotState == §<i§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§&!>§ = false;
               this.§9!>§();
               this.§8§[this.§;<§].setPosition(this.§0!$§ - this.§8§[this.§;<§].radius * Math.cos(this.§#!@§ / (180 / Math.PI)),this.§9$§ + this.§8§[this.§;<§].radius * Math.sin(this.§#!@§ / (180 / Math.PI)));
            }
            else
            {
               this.§9!>§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §^S§() : §'!"§
      {
         return this.§]U§;
      }
      
      public function §&i§() : Boolean
      {
         return this.mSlingShotState == §>d§ && this.§,?§ <= 0;
      }
      
      private function §[U§() : void
      {
         var _loc1_:§2!%§ = this.§]U§.§@!5§.§`!-§("SLINGSHOT");
         var _loc2_:§89§ = _loc1_.getFrame(0);
         var _loc3_:§89§ = _loc1_.getFrame(1);
         this.§-;§ = new §2! §(_loc2_.texture);
         this.§-;§.scaleX = _loc2_.scale;
         this.§-;§.scaleY = _loc2_.scale;
         this.§=v§ = new §2! §(_loc3_.texture);
         this.§=v§.scaleX = _loc3_.scale;
         this.§=v§.scaleY = _loc3_.scale;
         this.§7t§();
         this.§%B§();
         this.§,N§ = new Sprite();
         this.§'M§.addChild(this.§-;§);
         this.§'M§.addChild(this.§#o§);
         this.§'M§.addChild(this.§,N§);
         this.§'M§.addChild(this.§#3§);
         this.§'M§.addChild(this.§=@§);
         this.§'M§.addChild(this.§=v§);
         this.§1[§ = this.§7^§ + 8.5;
      }
      
      public function §7t§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§3!-§ = this.§#d§;
         this.§ !1§ = this.§7^§;
         this.§5$§ = §use§.§3!>§;
         _loc1_ = null;
      }
      
      protected function §%B§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§^d§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §^d§ = this.§]U§.textureManager.§%a§(_loc2_);
         }
         this.§#3§ = new Sprite();
         var _loc1_:§2! § = new §2! §(§^d§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§#3§.addChild(_loc1_);
         this.§#o§ = new Sprite();
         this.§^v§ = new §7d§(2,2,§0§);
         this.§#o§.addChild(this.§^v§);
         this.§=@§ = new Sprite();
         this.§-S§ = new §7d§(2,2,§0§);
         this.§=@§.addChild(this.§-S§);
      }
      
      public function §<Z§(param1:Number) : void
      {
         var _loc2_:Number = this.§9$§ / §'!"§.§%!8§;
         var _loc3_:Number = this.§0!$§ / §'!"§.§%!8§;
         var _loc4_:Number = 3.5 + 8 * ((this.§5$§ - this.§]q§) / this.§5$§);
         this.§#3§.x = _loc3_;
         this.§#3§.y = _loc2_;
         this.§#3§.rotation = -this.§#!@§ / (180 / Math.PI);
         this.§-;§.x = this.§#d§ / §'!"§.§%!8§ - 3;
         this.§-;§.y = this.§7^§ / §'!"§.§%!8§ - 30;
         this.§=v§.x = this.§#d§ / §'!"§.§%!8§ - 30;
         this.§=v§.y = this.§7^§ / §'!"§.§%!8§ - 30;
         this.§=@§.x = this.§#d§ / §'!"§.§%!8§ - 17;
         this.§=@§.y = this.§7^§ / §'!"§.§%!8§ + 5;
         this.§=@§.rotation = Math.atan2(_loc2_ - this.§=@§.y,_loc3_ - this.§=@§.x);
         this.§#o§.x = this.§#d§ / §'!"§.§%!8§ + 22;
         this.§#o§.y = this.§7^§ / §'!"§.§%!8§;
         this.§#o§.rotation = Math.atan2(_loc2_ - this.§#o§.y,_loc3_ - this.§#o§.x);
         this.§-S§.width = Math.sqrt(Math.pow(_loc3_ - this.§=@§.x,2) + Math.pow(_loc2_ - this.§=@§.y,2));
         this.§^v§.width = Math.sqrt(Math.pow(_loc3_ - this.§#o§.x,2) + Math.pow(_loc2_ - this.§#o§.y,2));
         this.§-S§.height = this.§^v§.height = _loc4_ * 2;
         this.§-S§.y = -this.§-S§.height / 2;
         this.§^v§.y = -this.§^v§.height / 2;
         this.§4!4§ = false;
      }
      
      public function §7!$§() : void
      {
         while(this.§8§.length > 0)
         {
            this.§=$§(0,true);
         }
         this.§2?§();
         this.§^!%§("BIRD_SARDINE",this.§#d§,this.§7^§);
         this.§catch§(§17§);
      }
      
      protected function §2?§() : void
      {
         §;!>§.§>t§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§catch§(§<i§);
      }
      
      public function §9!>§() : void
      {
         this.setNewCoordinatesForRubber(this.§3!-§,this.§ !1§ + this.§5$§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§0!$§ == param1 && this.§9$§ == param2)
         {
            return true;
         }
         this.§]q§ = Math.sqrt((param2 - this.§ !1§) * (param2 - this.§ !1§) + (param1 - this.§3!-§) * (param1 - this.§3!-§));
         if(this.§]q§ > this.§5$§)
         {
            if(param3)
            {
               this.§]q§ = Math.sqrt((this.§9$§ - this.§ !1§) * (this.§9$§ - this.§ !1§) + (this.§0!$§ - this.§3!-§) * (this.§0!$§ - this.§3!-§));
               return false;
            }
            param1 = this.§3!-§ + this.§5$§ * (param1 - this.§3!-§) / this.§]q§;
            param2 = this.§ !1§ + this.§5$§ * (param2 - this.§ !1§) / this.§]q§;
            this.§]q§ = this.§5$§;
         }
         this.§0!$§ = param1;
         this.§9$§ = param2;
         this.§#!@§ = Math.atan2(-(this.§9$§ - this.§ !1§),this.§0!$§ - this.§3!-§);
         this.§#!@§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§0!$§ = param1 - 0.7;
            this.§9$§ = param2;
            this.§#!@§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§5$§ / 2;
         if(this.§]q§ > _loc7_ && this.§#!@§ > -90 - _loc4_ + _loc5_ && this.§#!@§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§3!-§ + _loc7_ * (param1 - this.§3!-§) / this.§]q§;
            param2 = this.§ !1§ + _loc7_ * (param2 - this.§ !1§) / this.§]q§;
            this.§]q§ = _loc7_;
            this.§0!$§ = param1;
            this.§9$§ = param2;
         }
         else if(this.§]q§ > _loc7_ && this.§#!@§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§#!@§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§5$§ - _loc7_) * (Math.abs(this.§#!@§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§3!-§ + _loc8_ * (param1 - this.§3!-§) / this.§]q§;
            param2 = this.§ !1§ + _loc8_ * (param2 - this.§ !1§) / this.§]q§;
            this.§]q§ = _loc8_;
            this.§0!$§ = param1;
            this.§9$§ = param2;
         }
         if(this.§]q§ <= this.§5$§ * 0.45)
         {
            this.§;!"§ = true;
         }
         else if(this.§;!"§ && this.§]q§ >= this.§5$§ * 0.8)
         {
            this.§`C§();
            this.§;!"§ = false;
         }
         this.§4!4§ = true;
         return true;
      }
      
      protected function §`C§() : void
      {
         §;!>§.§>t§("SlingshotStreched");
      }
      
      public function §09§(param1:Number) : void
      {
         this.setPosition(this.§#d§,this.§7^§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§#d§;
         this.§#d§ = param1;
         var _loc5_:Number = param2 - this.§7^§;
         this.§7^§ = param2;
         this.§1[§ += _loc5_;
         this.§ !1§ += _loc5_;
         this.§9$§ += _loc5_;
         this.§3!-§ += _loc4_;
         this.§0!$§ += _loc4_;
         if(param3)
         {
            this.§<Z§(0);
         }
         this.§4!4§ = true;
      }
      
      public function §[!+§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§4;§ = null;
         _loc2_ = this.§8§[this.§;<§];
         var _loc3_:Number = this.§]q§ / this.§5$§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§-C§.§ C§) : Number(§-C§.§>c§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §>9§() : Point
      {
         var _loc1_:§4;§ = null;
         if(this.§8§.length > this.§;<§)
         {
            _loc1_ = this.§8§[this.§;<§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §@!4§() : Point
      {
         return new Point(this.§3!-§,this.§ !1§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§4;§ = null;
         this.§7;§(param1);
         if(this.§4!4§)
         {
            this.§<Z§(param1);
         }
         this.§,?§ -= param1;
         if(this.§,?§ < 0)
         {
            this.§,?§ = 0;
         }
         if(this.mSlingShotState != §>d§)
         {
            this.§+y§(param1,param2);
            _loc3_ = null;
            if(this.§8§.length > 0)
            {
               _loc3_ = this.§8§[this.§;<§];
            }
            if(_loc3_)
            {
               _loc3_.§1P§(param1);
            }
            if(!_loc3_)
            {
               this.§catch§(§>d§);
            }
            else if(this.mSlingShotState == §[d§)
            {
               if(this.§,?§ <= 0)
               {
                  this.§catch§(§&$§);
                  _loc3_.§'<§();
               }
            }
            else if(this.mSlingShotState == §&$§)
            {
               if(_loc3_.§#>§)
               {
                  this.§catch§(§17§);
               }
            }
            else if(this.mSlingShotState == §17§)
            {
               _loc3_.setPosition(this.§0!$§ - _loc3_.radius * Math.cos(this.§#!@§ / (180 / Math.PI)),this.§9$§ + _loc3_.radius * Math.sin(this.§#!@§ / (180 / Math.PI)));
               if(this.§&!>§)
               {
                  this.§#[§(this.§]q§ / this.§5$§,this.§#!@§);
               }
            }
         }
      }
      
      public function §,q§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§4;§ = null;
         if(this.§8§.length > 0)
         {
            _loc5_ = this.§8§[this.§;<§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§#[§(param3,param4);
      }
      
      protected function §#[§(param1:Number, param2:Number) : void
      {
         var _loc3_:§4;§ = null;
         if(this.§8§.length > 0)
         {
            _loc3_ = this.§8§[this.§;<§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§&!>§ = false;
         this.§5!$§ = new Date().time;
         this.§]U§.§`U§(_loc3_,param1,param2);
         this.§=$§(this.§;<§,_loc3_.§[!E§ > 0);
         this.§^Z§();
         if(this.§;<§ >= this.§8§.length)
         {
            this.§catch§(§>d§);
         }
         else
         {
            this.§catch§(§[d§);
         }
      }
      
      protected function §^Z§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §;!>§.§>t§("BirdShot" + _loc1_);
      }
      
      public function §+y§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§;<§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§8§.length)
         {
            if(this.mSlingShotState == §<i§)
            {
               this.§8§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§8§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§4;§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§9!>§();
         if(this.§']§ >= this.§8§.length)
         {
            return false;
         }
         _loc1_ = this.§8§[this.§']§];
         _loc2_ = §32§.§&V§(_loc1_.name).score;
         this.§]U§.addScore(_loc2_,§>3§.§8$§,true,_loc1_.x,_loc1_.y - 3,§9!E§.§>$§(_loc1_.name));
         _loc1_.§[g§(-1,true);
         ++this.§']§;
         return true;
      }
      
      public function §"S§() : int
      {
         var _loc2_:§4;§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§8§)
         {
            _loc1_ += §32§.§&V§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §1o§() : int
      {
         return this.§&C§;
      }
      
      public function §7;§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§+!H§ >= 0)
         {
            this.§+!H§ -= param1;
            if(this.§+!H§ <= 0)
            {
               _loc2_ = this.§]U§.objects.§,h§(this.§3!-§,this.§1[§);
               if(_loc2_ < 0)
               {
                  this.§09§(0.1);
                  this.§+!H§ = 0;
               }
               else if(!this.§]U§.objects.§ #§(_loc2_).§;!F§)
               {
                  this.§+!H§ = -1;
               }
               else if(this.§]U§.objects.§ #§(_loc2_).§-§())
               {
                  this.§+!H§ = 2000;
               }
               else
               {
                  this.§+!H§ = 500;
               }
            }
         }
      }
      
      public function §3%§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§]U§.objects.§,h§(this.§3!-§,this.§1[§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§09§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§+!H§ = -1;
      }
      
      public function §<+§(param1:Number, param2:Number) : void
      {
         this.§'M§.x = -param1;
         this.§'M§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §17§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §17§ && this.§]q§ > this.§5$§ * §-!+§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§catch§(§17§);
         var _loc1_:§4;§ = this.§8§[this.§;<§];
         _loc1_.§[g§(§5F§.§>E§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§4;§ = this.§8§[this.§;<§];
         _loc1_.§[g§(§5F§.§'I§);
      }
      
      public function shoot() : void
      {
         this.§&!>§ = true;
      }
      
      protected function §=$§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§4;§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§8§[param1])
         {
            _loc3_ = this.§8§[param1];
            this.§,N§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§6l§(this.§8§[param1]);
            }
            _loc3_.dispose();
            this.§8§[param1] = null;
         }
         this.§8§.splice(param1,1);
      }
      
      public function §6l§(param1:§4;§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §'!"§.§%!8§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §'!"§.§%!8§) + Math.random() * -_loc8_ * 2;
            this.§]U§.particles.§#!&§(§9!E§.§!M§,§#g§.§%!H§,§9!E§.§9u§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§9!E§.§2b§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§]U§.particles.§#!&§(§9!E§.§0p§,§#g§.§%!H§,§9!E§.§9u§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §^5§(param1:§4;§) : void
      {
         this.§=$§(this.§8§.indexOf(param1));
      }
      
      public function §%"§() : void
      {
         var _loc2_:§4;§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§4;§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§8§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§#d§ - this.§8§[_loc1_].x) * (this.§#d§ - this.§8§[_loc1_].x) + (this.§7^§ - this.§8§[_loc1_].y) * (this.§7^§ - this.§8§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§#d§ - this.§8§[_loc1_ + 1].x) * (this.§#d§ - this.§8§[_loc1_ + 1].x) + (this.§7^§ - this.§8§[_loc1_ + 1].y) * (this.§7^§ - this.§8§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§8§[_loc1_];
               this.§8§.splice(_loc1_,1);
               this.§8§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§,N§.numChildren > 0)
         {
            this.§,N§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§8§.length)
         {
            _loc2_ = this.§8§[_loc1_];
            this.§,N§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §>M§(param1:Number, param2:Number) : §4;§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§8§.length)
         {
            if(this.§8§[_loc3_])
            {
               if(this.§8§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§8§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §7,§(param1:Number, param2:Number) : §-C§
      {
         if(param1 >= this.§#d§ - this.§5$§ / 4 && param1 <= this.§#d§ + this.§5$§ / 4 && param2 >= this.§7^§ - this.§5$§ / 4 && this.§7^§ <= this.§1[§)
         {
            return this;
         }
         return null;
      }
      
      public function §=x§(param1:§+!-§) : void
      {
         var _loc3_:§4;§ = null;
         var _loc4_:§%!D§ = null;
         param1.§6T§ = this.§#d§;
         param1.§?K§ = this.§7^§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§8§.length)
         {
            _loc3_ = this.§8§[_loc2_];
            (_loc4_ = new §%!D§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§&"§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §"^§() : void
      {
         while(this.§8§.length > 0)
         {
            this.§^5§(this.§8§[0]);
         }
      }
      
      public function §@!'§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§8§.length)
         {
            if(this.§8§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§8§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§#d§ > param1.x && this.§#d§ < param2.x && this.§7^§ > param1.y && this.§7^§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §3!<§() : Array
      {
         return [this.§=v§,this.§-;§];
      }
      
      public function §1@§(param1:String, param2:Number, param3:Number) : §4;§
      {
         var _loc4_:§4;§ = this.§^!%§(param1,param2,param3);
         this.§%"§();
         return _loc4_;
      }
      
      public function §^!5§() : Number
      {
         return this.§8§.length;
      }
   }
}
