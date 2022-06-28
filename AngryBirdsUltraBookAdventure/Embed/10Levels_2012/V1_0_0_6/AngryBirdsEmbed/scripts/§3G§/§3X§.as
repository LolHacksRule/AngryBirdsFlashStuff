package §3G§
{
   import §#h§.§ !H§;
   import §,!C§.§0v§;
   import §,!C§.§implements§;
   import §,_§.§-!!§;
   import §,_§.§4K§;
   import §,_§.Sprite;
   import §5`§.§%F§;
   import §5`§.§+R§;
   import §7!=§.Texture;
   import §=!B§.§^!9§;
   import §>K§.§9X§;
   import §?t§.§,i§;
   import §?t§.§;x§;
   import §`6§.§5L§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §3X§
   {
      
      public static const §!J§:int = 0;
      
      public static const §?!H§:int = 1;
      
      public static const §`9§:int = 2;
      
      public static const §=2§:int = 3;
      
      public static const §%g§:int = 5;
      
      public static const § !5§:int = 3151368;
      
      protected static const §4g§:int = 8;
      
      protected static const §-J§:int = 0;
      
      public static const §-'§:Number = 46.25;
      
      public static const §,#§:Number = 52.5;
      
      protected static const §5%§:Number = -0.7;
      
      protected static const §+s§:Number = 0;
      
      protected static var §?!<§:Texture;
      
      public static const §]6§:Number = 0.4;
       
      
      public var §33§:§!E§;
      
      public var §^C§:Number;
      
      public var §0§:Number;
      
      public var §^5§:Number;
      
      protected var §]!4§:Number;
      
      protected var §'T§:Number;
      
      protected var §50§:Number;
      
      protected var §%9§:Number;
      
      public var §8O§:Number;
      
      public var §`m§:Boolean = false;
      
      protected var §,3§:Number;
      
      public var §'@§:Vector.<§6A§>;
      
      public var §'t§:int;
      
      public var §[G§:int;
      
      public var §?S§:Number;
      
      public var §21§:Sprite;
      
      public var §&$§:int = 0;
      
      public var §23§:Number = 0;
      
      public var §@L§:Array;
      
      public var §;!6§:Array;
      
      public var mSlingShotState:int;
      
      public var §&F§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §^l§:Boolean = false;
      
      public var §>q§:Number;
      
      protected var §62§:Sprite;
      
      protected var §[g§:§-!!§;
      
      protected var §9G§:§-!!§;
      
      protected var §-!-§:Sprite;
      
      protected var §=!$§:Sprite;
      
      protected var §9!>§:Sprite;
      
      protected var §;§:§4K§;
      
      protected var §27§:§4K§;
      
      private var §0V§:Number = 0;
      
      private var §[i§:int = 0;
      
      protected var §5!§:Number = -0.7;
      
      protected var §3!<§:Number = 0;
      
      public function §3X§(param1:§!E§, param2:§^!9§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§5L§ = null;
         this.§'@§ = new Vector.<§6A§>();
         super();
         this.§33§ = param1;
         this.§62§ = param3;
         if(param2)
         {
            this.setPosition(param2.§&w§,param2.§11§);
            this.§0m§();
            _loc4_ = 0;
            while(_loc4_ < param2.§ true§)
            {
               _loc5_ = param2.§=_§(_loc4_);
               this.§12§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§[i§ = this.§#f§();
            this.§'t§ = 0;
            if(this.§'@§.length <= 0)
            {
               §9X§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§^C§ + " " + this.§0§);
               this.§;;§(§=2§);
            }
            else
            {
               this.§;;§(§!J§);
            }
         }
         else
         {
            §9X§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§;;§(§=2§);
         }
         this.§>q§ = 0;
         this.§@-§();
         this.update(0,true);
         this.§&_§();
         this.§ !>§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§62§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§0V§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§'t§ < this.§'@§.length;
      }
      
      public function dispose() : void
      {
         while(this.§'@§.length > 0)
         {
            this.§"-§(0);
         }
         this.§'@§ = null;
         if(this.§62§)
         {
            this.§62§.dispose();
            this.§62§ = null;
         }
         this.§21§ = null;
         this.§@L§ = null;
         this.§;!6§ = null;
      }
      
      public function §5!,§(param1:String, param2:Number, param3:Number, param4:int = -1) : §6A§
      {
         var _loc5_:§6A§;
         (_loc5_ = this.§12§(param1,param2,param3,param4)).§9!H§();
         return _loc5_;
      }
      
      protected function §12§(param1:String, param2:Number, param3:Number, param4:int = -1) : §6A§
      {
         var _loc5_:§6A§ = new §6A§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§'@§.push(_loc5_);
         }
         else
         {
            this.§'@§.splice(param4,0,_loc5_);
         }
         this.§21§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §;;§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §!J§)
         {
            this.§3!>§();
            this.§?S§ = 1000;
         }
         else if(this.mSlingShotState == §?!H§)
         {
            this.§3!>§();
            this.§?S§ = 0;
         }
         else if(this.mSlingShotState == §`9§)
         {
            this.§?S§ = 10000;
            this.§^l§ = false;
            this.§3!>§();
         }
         else if(this.mSlingShotState == §=2§)
         {
            this.§3!>§();
            this.§?S§ = 2000;
         }
         else if(this.mSlingShotState == §%g§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§^l§ = false;
               this.§3!>§();
               this.§'@§[this.§'t§].setPosition(this.§50§ - this.§'@§[this.§'t§].radius * Math.cos(this.§23§ / (180 / Math.PI)),this.§%9§ + this.§'@§[this.§'t§].radius * Math.sin(this.§23§ / (180 / Math.PI)));
            }
            else
            {
               this.§3!>§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §6u§() : §!E§
      {
         return this.§33§;
      }
      
      public function §'!A§() : Boolean
      {
         return this.mSlingShotState == §=2§ && this.§?S§ <= 0;
      }
      
      private function §0m§() : void
      {
         var _loc1_:§+R§ = this.§!4§();
         var _loc2_:§%F§ = _loc1_.getFrame(0);
         var _loc3_:§%F§ = _loc1_.getFrame(1);
         this.§;§ = new §4K§(_loc2_.texture);
         this.§;§.scaleX = _loc2_.scale;
         this.§;§.scaleY = _loc2_.scale;
         this.§27§ = new §4K§(_loc3_.texture);
         this.§27§.scaleX = _loc3_.scale;
         this.§27§.scaleY = _loc3_.scale;
         this.§0!;§();
         this.§`!-§();
         this.§21§ = new Sprite();
         this.§62§.addChild(this.§;§);
         this.§62§.addChild(this.§-!-§);
         this.§62§.addChild(this.§21§);
         this.§62§.addChild(this.§9!>§);
         this.§62§.addChild(this.§=!$§);
         this.§62§.addChild(this.§27§);
         this.§^5§ = this.§0§ + 8.5;
      }
      
      protected function §!4§() : §+R§
      {
         return this.§33§.§ use§.§,!;§("SLINGSHOT");
      }
      
      public function §0!;§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§]!4§ = this.§^C§;
         this.§'T§ = this.§0§;
         this.§,3§ = §&!"§.§8o§;
         _loc1_ = null;
      }
      
      protected function §`!-§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§?!<§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §?!<§ = this.§33§.textureManager.§-§(_loc2_);
         }
         this.§9!>§ = new Sprite();
         var _loc1_:§4K§ = new §4K§(§?!<§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§9!>§.addChild(_loc1_);
         this.§-!-§ = new Sprite();
         this.§[g§ = new §-!!§(2,2,§ !5§);
         this.§-!-§.addChild(this.§[g§);
         this.§=!$§ = new Sprite();
         this.§9G§ = new §-!!§(2,2,§ !5§);
         this.§=!$§.addChild(this.§9G§);
      }
      
      public function § !>§(param1:Number) : void
      {
         var _loc2_:Number = this.§%9§ / §!E§.§#N§;
         var _loc3_:Number = this.§50§ / §!E§.§#N§;
         var _loc4_:Number = 3.5 + 8 * ((this.§,3§ - this.§8O§) / this.§,3§);
         this.§9!>§.x = _loc3_;
         this.§9!>§.y = _loc2_;
         this.§9!>§.rotation = -this.§23§ / (180 / Math.PI);
         this.§;§.x = this.§^C§ / §!E§.§#N§ - 3;
         this.§;§.y = this.§0§ / §!E§.§#N§ - 30;
         this.§27§.x = this.§^C§ / §!E§.§#N§ - 30;
         this.§27§.y = this.§0§ / §!E§.§#N§ - 30;
         this.§=!$§.x = this.§^C§ / §!E§.§#N§ - 17;
         this.§=!$§.y = this.§0§ / §!E§.§#N§ + 5;
         this.§=!$§.rotation = Math.atan2(_loc2_ - this.§=!$§.y,_loc3_ - this.§=!$§.x);
         this.§-!-§.x = this.§^C§ / §!E§.§#N§ + 22;
         this.§-!-§.y = this.§0§ / §!E§.§#N§;
         this.§-!-§.rotation = Math.atan2(_loc2_ - this.§-!-§.y,_loc3_ - this.§-!-§.x);
         this.§9G§.width = Math.sqrt(Math.pow(_loc3_ - this.§=!$§.x,2) + Math.pow(_loc2_ - this.§=!$§.y,2));
         this.§[g§.width = Math.sqrt(Math.pow(_loc3_ - this.§-!-§.x,2) + Math.pow(_loc2_ - this.§-!-§.y,2));
         this.§9G§.height = this.§[g§.height = _loc4_ * 2;
         this.§9G§.y = -this.§9G§.height / 2;
         this.§[g§.y = -this.§[g§.height / 2;
         this.§&F§ = false;
      }
      
      public function §4A§() : void
      {
         while(this.§'@§.length > 0)
         {
            this.§"-§(0,true);
         }
         this.§8=§();
         this.§12§("BIRD_SARDINE",this.§^C§,this.§0§);
         this.§;;§(§`9§);
      }
      
      protected function §8=§() : void
      {
         § !H§.§ !%§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§;;§(§%g§);
      }
      
      public function §3!>§() : void
      {
         this.setNewCoordinatesForRubber(this.§]!4§,this.§'T§ + this.§,3§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§50§ == param1 && this.§%9§ == param2)
         {
            return true;
         }
         this.§8O§ = Math.sqrt((param2 - this.§'T§) * (param2 - this.§'T§) + (param1 - this.§]!4§) * (param1 - this.§]!4§));
         if(this.§8O§ > this.§,3§)
         {
            if(param3)
            {
               this.§8O§ = Math.sqrt((this.§%9§ - this.§'T§) * (this.§%9§ - this.§'T§) + (this.§50§ - this.§]!4§) * (this.§50§ - this.§]!4§));
               return false;
            }
            param1 = this.§]!4§ + this.§,3§ * (param1 - this.§]!4§) / this.§8O§;
            param2 = this.§'T§ + this.§,3§ * (param2 - this.§'T§) / this.§8O§;
            this.§8O§ = this.§,3§;
         }
         this.§50§ = param1;
         this.§%9§ = param2;
         this.§23§ = Math.atan2(-(this.§%9§ - this.§'T§),this.§50§ - this.§]!4§);
         this.§23§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§50§ = param1 + this.§5!§;
            this.§%9§ = param2 + this.§3!<§;
            this.§23§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§,3§ / 2;
         if(this.§8O§ > _loc7_ && this.§23§ > -90 - _loc4_ + _loc5_ && this.§23§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§]!4§ + _loc7_ * (param1 - this.§]!4§) / this.§8O§;
            param2 = this.§'T§ + _loc7_ * (param2 - this.§'T§) / this.§8O§;
            this.§8O§ = _loc7_;
            this.§50§ = param1;
            this.§%9§ = param2;
         }
         else if(this.§8O§ > _loc7_ && this.§23§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§23§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§,3§ - _loc7_) * (Math.abs(this.§23§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§]!4§ + _loc8_ * (param1 - this.§]!4§) / this.§8O§;
            param2 = this.§'T§ + _loc8_ * (param2 - this.§'T§) / this.§8O§;
            this.§8O§ = _loc8_;
            this.§50§ = param1;
            this.§%9§ = param2;
         }
         if(this.§8O§ <= this.§,3§ * 0.45)
         {
            this.§`m§ = true;
         }
         else if(this.§`m§ && this.§8O§ >= this.§,3§ * 0.8)
         {
            this.§;9§();
            this.§`m§ = false;
         }
         this.§&F§ = true;
         return true;
      }
      
      protected function §;9§() : void
      {
         § !H§.§ !%§("SlingshotStreched");
      }
      
      public function §%B§(param1:Number) : void
      {
         this.setPosition(this.§^C§,this.§0§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§^C§;
         this.§^C§ = param1;
         var _loc5_:Number = param2 - this.§0§;
         this.§0§ = param2;
         this.§^5§ += _loc5_;
         this.§'T§ += _loc5_;
         this.§%9§ += _loc5_;
         this.§]!4§ += _loc4_;
         this.§50§ += _loc4_;
         if(param3)
         {
            this.§ !>§(0);
         }
         this.§&F§ = true;
      }
      
      public function § S§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§6A§ = null;
         _loc2_ = this.§'@§[this.§'t§];
         var _loc3_:Number = this.§8O§ / this.§,3§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§3X§.§,#§) : Number(§3X§.§-'§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §4G§() : Point
      {
         var _loc1_:§6A§ = null;
         if(this.§'@§.length > this.§'t§)
         {
            _loc1_ = this.§'@§[this.§'t§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §<_§() : Point
      {
         return new Point(this.§]!4§,this.§'T§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§6A§ = null;
         this.§]o§(param1);
         if(this.§&F§)
         {
            this.§ !>§(param1);
         }
         this.§?S§ -= param1;
         if(this.§?S§ < 0)
         {
            this.§?S§ = 0;
         }
         if(this.mSlingShotState != §=2§)
         {
            this.§2!?§(param1,param2);
            _loc3_ = null;
            if(this.§'@§.length > 0)
            {
               _loc3_ = this.§'@§[this.§'t§];
            }
            if(_loc3_)
            {
               _loc3_.§,5§(param1);
            }
            if(!_loc3_)
            {
               this.§;;§(§=2§);
            }
            else if(this.mSlingShotState == §!J§)
            {
               if(this.§?S§ <= 0)
               {
                  this.§;;§(§?!H§);
                  _loc3_.§=U§();
               }
            }
            else if(this.mSlingShotState == §?!H§)
            {
               if(_loc3_.§4!%§)
               {
                  this.§;;§(§`9§);
               }
            }
            else if(this.mSlingShotState == §`9§)
            {
               _loc3_.setPosition(this.§50§ - _loc3_.radius * Math.cos(this.§23§ / (180 / Math.PI)),this.§%9§ + _loc3_.radius * Math.sin(this.§23§ / (180 / Math.PI)));
               if(this.§^l§)
               {
                  this.§0!§(this.§8O§ / this.§,3§,this.§23§);
               }
            }
         }
      }
      
      public function §7>§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§6A§ = null;
         if(this.§'@§.length > 0)
         {
            _loc5_ = this.§'@§[this.§'t§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§0!§(param3,param4);
      }
      
      protected function §0!§(param1:Number, param2:Number) : void
      {
         var _loc3_:§6A§ = null;
         this.§5!§ = §5%§;
         this.§3!<§ = §+s§;
         if(this.§'@§.length > 0)
         {
            _loc3_ = this.§'@§[this.§'t§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§^l§ = false;
         this.§0V§ = new Date().time;
         this.§33§.§0F§(_loc3_,param1,param2);
         this.§"-§(this.§'t§,_loc3_.§"@§ > 0);
         this.§3!'§();
         if(this.§'t§ >= this.§'@§.length)
         {
            this.§;;§(§=2§);
         }
         else
         {
            this.§;;§(§!J§);
         }
      }
      
      protected function §3!'§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         § !H§.§ !%§("BirdShot" + _loc1_);
      }
      
      public function §2!?§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§'t§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§'@§.length)
         {
            if(this.mSlingShotState == §%g§)
            {
               this.§'@§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§'@§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§6A§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§3!>§();
         if(this.§[G§ >= this.§'@§.length)
         {
            return false;
         }
         _loc1_ = this.§'@§[this.§[G§];
         _loc2_ = §0v§.§&2§(_loc1_.name).score;
         this.§33§.addScore(_loc2_,§4f§.§7!"§,true,_loc1_.x,_loc1_.y - 3,§,i§.§[!1§(_loc1_.name));
         _loc1_.§&6§(-1,true);
         ++this.§[G§;
         return true;
      }
      
      public function §#f§() : int
      {
         var _loc2_:§6A§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§'@§)
         {
            _loc1_ += §0v§.§&2§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §<w§() : int
      {
         return this.§[i§;
      }
      
      public function §]o§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§>q§ >= 0)
         {
            this.§>q§ -= param1;
            if(this.§>q§ <= 0)
            {
               _loc2_ = this.§33§.objects.§@F§(this.§]!4§,this.§^5§);
               if(_loc2_ < 0)
               {
                  this.§%B§(0.1);
                  this.§>q§ = 0;
               }
               else if(!this.§33§.objects.§6!"§(_loc2_).§@!+§)
               {
                  this.§>q§ = -1;
               }
               else if(this.§33§.objects.§6!"§(_loc2_).§-[§())
               {
                  this.§>q§ = 2000;
               }
               else
               {
                  this.§>q§ = 500;
               }
            }
         }
      }
      
      public function §&_§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§33§.objects.§@F§(this.§]!4§,this.§^5§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§%B§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§>q§ = -1;
      }
      
      public function §+C§(param1:Number, param2:Number) : void
      {
         this.§62§.x = -param1;
         this.§62§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §`9§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §`9§ && this.§8O§ > this.§,3§ * §]6§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§;;§(§`9§);
         var _loc1_:§6A§ = this.§'@§[this.§'t§];
         _loc1_.§&6§(§implements§.§=j§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§6A§ = this.§'@§[this.§'t§];
         _loc1_.§&6§(§implements§.§3!I§);
      }
      
      public function shoot() : void
      {
         this.§^l§ = true;
      }
      
      protected function §"-§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§6A§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§'@§[param1])
         {
            _loc3_ = this.§'@§[param1];
            this.§21§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§+!,§(this.§'@§[param1]);
            }
            _loc3_.dispose();
            this.§'@§[param1] = null;
         }
         this.§'@§.splice(param1,1);
      }
      
      public function §+!,§(param1:§6A§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §!E§.§#N§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §!E§.§#N§) + Math.random() * -_loc8_ * 2;
            this.§33§.particles.§8"§(§,i§.§?I§,§;x§.§]+§,§,i§.§6I§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§,i§.§?Q§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§33§.particles.§8"§(§,i§.§ 5§,§;x§.§]+§,§,i§.§6I§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §'>§(param1:§6A§) : void
      {
         this.§"-§(this.§'@§.indexOf(param1));
      }
      
      public function §@-§() : void
      {
         var _loc2_:§6A§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§6A§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§'@§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§^C§ - this.§'@§[_loc1_].x) * (this.§^C§ - this.§'@§[_loc1_].x) + (this.§0§ - this.§'@§[_loc1_].y) * (this.§0§ - this.§'@§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§^C§ - this.§'@§[_loc1_ + 1].x) * (this.§^C§ - this.§'@§[_loc1_ + 1].x) + (this.§0§ - this.§'@§[_loc1_ + 1].y) * (this.§0§ - this.§'@§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§'@§[_loc1_];
               this.§'@§.splice(_loc1_,1);
               this.§'@§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§21§.numChildren > 0)
         {
            this.§21§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§'@§.length)
         {
            _loc2_ = this.§'@§[_loc1_];
            this.§21§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §9!$§(param1:Number, param2:Number) : §6A§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§'@§.length)
         {
            if(this.§'@§[_loc3_])
            {
               if(this.§'@§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§'@§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §-Y§(param1:Number, param2:Number) : §3X§
      {
         if(param1 >= this.§^C§ - this.§,3§ / 4 && param1 <= this.§^C§ + this.§,3§ / 4 && param2 >= this.§0§ - this.§,3§ / 4 && this.§0§ <= this.§^5§)
         {
            return this;
         }
         return null;
      }
      
      public function §,K§(param1:§^!9§) : void
      {
         var _loc3_:§6A§ = null;
         var _loc4_:§5L§ = null;
         param1.§&w§ = this.§^C§;
         param1.§11§ = this.§0§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§'@§.length)
         {
            _loc3_ = this.§'@§[_loc2_];
            (_loc4_ = new §5L§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§`$§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §99§() : void
      {
         while(this.§'@§.length > 0)
         {
            this.§'>§(this.§'@§[0]);
         }
      }
      
      public function §!-§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§'@§.length)
         {
            if(this.§'@§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§'@§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§^C§ > param1.x && this.§^C§ < param2.x && this.§0§ > param1.y && this.§0§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §[c§() : Array
      {
         return [this.§27§,this.§;§];
      }
      
      public function §6! §(param1:String, param2:Number, param3:Number) : §6A§
      {
         var _loc4_:§6A§ = this.§12§(param1,param2,param3);
         this.§@-§();
         return _loc4_;
      }
      
      public function §4&§() : Number
      {
         return this.§'@§.length;
      }
   }
}
