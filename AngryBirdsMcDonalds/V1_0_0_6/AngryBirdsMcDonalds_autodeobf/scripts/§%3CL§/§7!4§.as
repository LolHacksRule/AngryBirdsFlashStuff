package §<L§
{
   import § !^§.Texture;
   import §&!!§.§7N§;
   import §&!!§.§[!]§;
   import §2![§.§7Q§;
   import §2![§.Sprite;
   import §2![§.§[!U§;
   import §7_§.§]![§;
   import §8!§.§'F§;
   import §8!§.§9!-§;
   import §8<§.§<!7§;
   import §9§.§;!B§;
   import §?!'§.§3!^§;
   import §?!'§.§[!S§;
   import §^!K§.§ !$§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §7!4§
   {
      
      public static const §,!C§:int = 0;
      
      public static const §#S§:int = 1;
      
      public static const § !R§:int = 2;
      
      public static const §8=§:int = 3;
      
      public static const §1f§:int = 5;
      
      public static const §9!1§:int = 3151368;
      
      protected static const §'>§:int = 8;
      
      protected static const §;!L§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const BIRD_LAUNCH_FORCE_GREEN:Number = 52.5;
      
      protected static const §0!M§:Number = -0.7;
      
      protected static const §"u§:Number = 0;
      
      protected static var §]6§:Texture;
      
      public static const §>9§:Number = 0.4;
       
      
      public var mLevelMain:§!!G§;
      
      public var §+p§:Number;
      
      public var §,,§:Number;
      
      public var §#!o§:Number;
      
      protected var §4P§:Number;
      
      protected var §@"§:Number;
      
      protected var §&g§:Number;
      
      protected var §2!^§:Number;
      
      public var §9!Q§:Number;
      
      public var §7&§:Boolean = false;
      
      protected var §=O§:Number;
      
      public var § &§:Vector.<§&E§>;
      
      public var §'J§:int;
      
      public var §]!#§:int;
      
      public var §!!P§:Number;
      
      public var §implements§:Sprite;
      
      public var §3G§:int = 0;
      
      public var §-!M§:Number = 0;
      
      public var §73§:Array;
      
      public var §%!B§:Array;
      
      public var mSlingShotState:int;
      
      public var § o§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §5#§:Boolean = false;
      
      public var §4C§:Number;
      
      protected var §%!l§:Sprite;
      
      protected var §2W§:§7Q§;
      
      protected var §"-§:§7Q§;
      
      protected var §2m§:Sprite;
      
      protected var §?!9§:Sprite;
      
      protected var §]!V§:Sprite;
      
      protected var §;,§:§[!U§;
      
      protected var §<b§:§[!U§;
      
      private var §+`§:Number = 0;
      
      private var §;J§:int = 0;
      
      protected var §4=§:Number = -0.7;
      
      protected var §]!X§:Number = 0;
      
      public function §7!4§(param1:§!!G§, param2:§]![§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§;!B§ = null;
         this.§ &§ = new Vector.<§&E§>();
         super();
         this.mLevelMain = param1;
         this.§%!l§ = param3;
         if(param2)
         {
            this.setPosition(param2.§[w§,param2.§'!S§);
            this.§6g§();
            _loc4_ = 0;
            while(_loc4_ < param2.§4i§)
            {
               _loc5_ = param2.§package§(_loc4_);
               this.§@!D§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§;J§ = this.§5![§();
            this.§'J§ = 0;
            if(this.§ &§.length <= 0)
            {
               §<!7§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§+p§ + " " + this.§,,§);
               this.§9R§(§8=§);
            }
            else
            {
               this.§9R§(§,!C§);
            }
         }
         else
         {
            §<!7§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§9R§(§8=§);
         }
         this.§4C§ = 0;
         this.§6o§();
         this.update(0,true);
         this.§@k§();
         this.updateAnimations(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§%!l§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§+`§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§'J§ < this.§ &§.length;
      }
      
      public function dispose() : void
      {
         while(this.§ &§.length > 0)
         {
            this.§2!0§(0);
         }
         this.§ &§ = null;
         if(this.§%!l§)
         {
            this.§%!l§.dispose();
            this.§%!l§ = null;
         }
         this.§implements§ = null;
         this.§73§ = null;
         this.§%!B§ = null;
      }
      
      public function §-H§(param1:String, param2:Number, param3:Number, param4:int = -1) : §&E§
      {
         var _loc5_:§&E§;
         (_loc5_ = this.§@!D§(param1,param2,param3,param4)).§;!T§();
         return _loc5_;
      }
      
      protected function §@!D§(param1:String, param2:Number, param3:Number, param4:int = -1) : §&E§
      {
         var _loc5_:§&E§ = new §&E§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§ &§.push(_loc5_);
         }
         else
         {
            this.§ &§.splice(param4,0,_loc5_);
         }
         this.§implements§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §9R§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §,!C§)
         {
            this.§0z§();
            this.§!!P§ = 1000;
         }
         else if(this.mSlingShotState == §#S§)
         {
            this.§0z§();
            this.§!!P§ = 0;
         }
         else if(this.mSlingShotState == § !R§)
         {
            this.§!!P§ = 10000;
            this.§5#§ = false;
            this.§0z§();
         }
         else if(this.mSlingShotState == §8=§)
         {
            this.§0z§();
            this.§!!P§ = 2000;
         }
         else if(this.mSlingShotState == §1f§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§5#§ = false;
               this.§0z§();
               this.§ &§[this.§'J§].setPosition(this.§&g§ - this.§ &§[this.§'J§].radius * Math.cos(this.§-!M§ / (180 / Math.PI)),this.§2!^§ + this.§ &§[this.§'J§].radius * Math.sin(this.§-!M§ / (180 / Math.PI)));
            }
            else
            {
               this.§0z§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §2!V§() : §!!G§
      {
         return this.mLevelMain;
      }
      
      public function §9?§() : Boolean
      {
         return this.mSlingShotState == §8=§ && this.§!!P§ <= 0;
      }
      
      private function §6g§() : void
      {
         var _loc1_:§[!]§ = this.§+e§();
         var _loc2_:§7N§ = _loc1_.getFrame(0);
         var _loc3_:§7N§ = _loc1_.getFrame(1);
         this.§;,§ = new §[!U§(_loc2_.texture);
         this.§;,§.scaleX = _loc2_.scale;
         this.§;,§.scaleY = _loc2_.scale;
         this.§<b§ = new §[!U§(_loc3_.texture);
         this.§<b§.scaleX = _loc3_.scale;
         this.§<b§.scaleY = _loc3_.scale;
         this.§6'§();
         this.§+Z§();
         this.§implements§ = new Sprite();
         this.§%!l§.addChild(this.§;,§);
         this.§%!l§.addChild(this.§2m§);
         this.§%!l§.addChild(this.§implements§);
         this.§%!l§.addChild(this.§]!V§);
         this.§%!l§.addChild(this.§?!9§);
         this.§%!l§.addChild(this.§<b§);
         this.§#!o§ = this.§,,§ + 8.5;
      }
      
      protected function §+e§() : §[!]§
      {
         return this.mLevelMain.animationManager.getAnimation("SLINGSHOT");
      }
      
      public function §6'§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§4P§ = this.§+p§;
         this.§@"§ = this.§,,§;
         this.§=O§ = §6H§.§>S§;
         _loc1_ = null;
      }
      
      protected function §+Z§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§]6§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §]6§ = this.mLevelMain.textureManager.getTextureFromBitmapData(_loc2_);
         }
         this.§]!V§ = new Sprite();
         var _loc1_:§[!U§ = new §[!U§(§]6§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§]!V§.addChild(_loc1_);
         this.§2m§ = new Sprite();
         this.§2W§ = new §7Q§(2,2,§9!1§);
         this.§2m§.addChild(this.§2W§);
         this.§?!9§ = new Sprite();
         this.§"-§ = new §7Q§(2,2,§9!1§);
         this.§?!9§.addChild(this.§"-§);
      }
      
      public function updateAnimations(param1:Number) : void
      {
         var _loc2_:Number = this.§2!^§ / §!!G§.§ !E§;
         var _loc3_:Number = this.§&g§ / §!!G§.§ !E§;
         var _loc4_:Number = 3.5 + 8 * ((this.§=O§ - this.§9!Q§) / this.§=O§);
         this.§]!V§.x = _loc3_;
         this.§]!V§.y = _loc2_;
         this.§]!V§.rotation = -this.§-!M§ / (180 / Math.PI);
         this.§;,§.x = this.§+p§ / §!!G§.§ !E§ - 3;
         this.§;,§.y = this.§,,§ / §!!G§.§ !E§ - 30;
         this.§<b§.x = this.§+p§ / §!!G§.§ !E§ - 30;
         this.§<b§.y = this.§,,§ / §!!G§.§ !E§ - 30;
         this.§?!9§.x = this.§+p§ / §!!G§.§ !E§ - 17;
         this.§?!9§.y = this.§,,§ / §!!G§.§ !E§ + 5;
         this.§?!9§.rotation = Math.atan2(_loc2_ - this.§?!9§.y,_loc3_ - this.§?!9§.x);
         this.§2m§.x = this.§+p§ / §!!G§.§ !E§ + 22;
         this.§2m§.y = this.§,,§ / §!!G§.§ !E§;
         this.§2m§.rotation = Math.atan2(_loc2_ - this.§2m§.y,_loc3_ - this.§2m§.x);
         this.§"-§.width = Math.sqrt(Math.pow(_loc3_ - this.§?!9§.x,2) + Math.pow(_loc2_ - this.§?!9§.y,2));
         this.§2W§.width = Math.sqrt(Math.pow(_loc3_ - this.§2m§.x,2) + Math.pow(_loc2_ - this.§2m§.y,2));
         this.§"-§.height = this.§2W§.height = _loc4_ * 2;
         this.§"-§.y = -this.§"-§.height / 2;
         this.§2W§.y = -this.§2W§.height / 2;
         this.§ o§ = false;
      }
      
      public function §9!9§() : void
      {
         while(this.§ &§.length > 0)
         {
            this.§2!0§(0,true);
         }
         this.§4G§();
         this.§@!D§("BIRD_SARDINE",this.§+p§,this.§,,§);
         this.§9R§(§ !R§);
      }
      
      protected function §4G§() : void
      {
         § !$§.§-N§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§9R§(§1f§);
      }
      
      public function §0z§() : void
      {
         this.setNewCoordinatesForRubber(this.§4P§,this.§@"§ + this.§=O§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§&g§ == param1 && this.§2!^§ == param2)
         {
            return true;
         }
         this.§9!Q§ = Math.sqrt((param2 - this.§@"§) * (param2 - this.§@"§) + (param1 - this.§4P§) * (param1 - this.§4P§));
         if(this.§9!Q§ > this.§=O§)
         {
            if(param3)
            {
               this.§9!Q§ = Math.sqrt((this.§2!^§ - this.§@"§) * (this.§2!^§ - this.§@"§) + (this.§&g§ - this.§4P§) * (this.§&g§ - this.§4P§));
               return false;
            }
            param1 = this.§4P§ + this.§=O§ * (param1 - this.§4P§) / this.§9!Q§;
            param2 = this.§@"§ + this.§=O§ * (param2 - this.§@"§) / this.§9!Q§;
            this.§9!Q§ = this.§=O§;
         }
         this.§&g§ = param1;
         this.§2!^§ = param2;
         this.§-!M§ = Math.atan2(-(this.§2!^§ - this.§@"§),this.§&g§ - this.§4P§);
         this.§-!M§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§&g§ = param1 + this.§4=§;
            this.§2!^§ = param2 + this.§]!X§;
            this.§-!M§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§=O§ / 2;
         if(this.§9!Q§ > _loc7_ && this.§-!M§ > -90 - _loc4_ + _loc5_ && this.§-!M§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§4P§ + _loc7_ * (param1 - this.§4P§) / this.§9!Q§;
            param2 = this.§@"§ + _loc7_ * (param2 - this.§@"§) / this.§9!Q§;
            this.§9!Q§ = _loc7_;
            this.§&g§ = param1;
            this.§2!^§ = param2;
         }
         else if(this.§9!Q§ > _loc7_ && this.§-!M§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§-!M§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§=O§ - _loc7_) * (Math.abs(this.§-!M§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§4P§ + _loc8_ * (param1 - this.§4P§) / this.§9!Q§;
            param2 = this.§@"§ + _loc8_ * (param2 - this.§@"§) / this.§9!Q§;
            this.§9!Q§ = _loc8_;
            this.§&g§ = param1;
            this.§2!^§ = param2;
         }
         if(this.§9!Q§ <= this.§=O§ * 0.45)
         {
            this.§7&§ = true;
         }
         else if(this.§7&§ && this.§9!Q§ >= this.§=O§ * 0.8)
         {
            this.§?X§();
            this.§7&§ = false;
         }
         this.§ o§ = true;
         return true;
      }
      
      protected function §?X§() : void
      {
         § !$§.§-N§("SlingshotStreched");
      }
      
      public function §+v§(param1:Number) : void
      {
         this.setPosition(this.§+p§,this.§,,§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§+p§;
         this.§+p§ = param1;
         var _loc5_:Number = param2 - this.§,,§;
         this.§,,§ = param2;
         this.§#!o§ += _loc5_;
         this.§@"§ += _loc5_;
         this.§2!^§ += _loc5_;
         this.§4P§ += _loc4_;
         this.§&g§ += _loc4_;
         if(param3)
         {
            this.updateAnimations(0);
         }
         this.§ o§ = true;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§&E§ = null;
         _loc2_ = this.§ &§[this.§'J§];
         var _loc3_:Number = this.§9!Q§ / this.§=O§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§7!4§.BIRD_LAUNCH_FORCE_GREEN) : Number(§7!4§.BIRD_LAUNCH_FORCE);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §5B§() : Point
      {
         var _loc1_:§&E§ = null;
         if(this.§ &§.length > this.§'J§)
         {
            _loc1_ = this.§ &§[this.§'J§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §7!1§() : Point
      {
         return new Point(this.§4P§,this.§@"§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§&E§ = null;
         this.§6C§(param1);
         if(this.§ o§)
         {
            this.updateAnimations(param1);
         }
         this.§!!P§ -= param1;
         if(this.§!!P§ < 0)
         {
            this.§!!P§ = 0;
         }
         if(this.mSlingShotState != §8=§)
         {
            this.§ !X§(param1,param2);
            _loc3_ = null;
            if(this.§ &§.length > 0)
            {
               _loc3_ = this.§ &§[this.§'J§];
            }
            if(_loc3_)
            {
               _loc3_.§-!i§(param1);
            }
            if(!_loc3_)
            {
               this.§9R§(§8=§);
            }
            else if(this.mSlingShotState == §,!C§)
            {
               if(this.§!!P§ <= 0)
               {
                  this.§9R§(§#S§);
                  _loc3_.§#?§();
               }
            }
            else if(this.mSlingShotState == §#S§)
            {
               if(_loc3_.§1T§)
               {
                  this.§9R§(§ !R§);
               }
            }
            else if(this.mSlingShotState == § !R§)
            {
               _loc3_.setPosition(this.§&g§ - _loc3_.radius * Math.cos(this.§-!M§ / (180 / Math.PI)),this.§2!^§ + _loc3_.radius * Math.sin(this.§-!M§ / (180 / Math.PI)));
               if(this.§5#§)
               {
                  this.§%3§(this.§9!Q§ / this.§=O§,this.§-!M§);
               }
            }
         }
      }
      
      public function §#!3§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§&E§ = null;
         if(this.§ &§.length > 0)
         {
            _loc5_ = this.§ &§[this.§'J§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§%3§(param3,param4);
      }
      
      protected function §%3§(param1:Number, param2:Number) : void
      {
         var _loc3_:§&E§ = null;
         this.§4=§ = §0!M§;
         this.§]!X§ = §"u§;
         if(this.§ &§.length > 0)
         {
            _loc3_ = this.§ &§[this.§'J§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§5#§ = false;
         this.§+`§ = new Date().time;
         this.mLevelMain.§<V§(_loc3_,param1,param2);
         this.§2!0§(this.§'J§,_loc3_.§0!-§ > 0);
         this.playBirdShotSound();
         if(this.§'J§ >= this.§ &§.length)
         {
            this.§9R§(§8=§);
         }
         else
         {
            this.§9R§(§,!C§);
         }
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         § !$§.§-N§("BirdShot" + _loc1_);
      }
      
      public function § !X§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§'J§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§ &§.length)
         {
            if(this.mSlingShotState == §1f§)
            {
               this.§ &§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§ &§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§&E§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§0z§();
         if(this.§]!#§ >= this.§ &§.length)
         {
            return false;
         }
         _loc1_ = this.§ &§[this.§]!#§];
         _loc2_ = §[!S§.§;Z§(_loc1_.name).score;
         this.mLevelMain.addScore(_loc2_,§4S§.§2!W§,true,_loc1_.x,_loc1_.y - 3,§9!-§.§'r§(_loc1_.name));
         _loc1_.§3r§(-1,true);
         ++this.§]!#§;
         return true;
      }
      
      public function §5![§() : int
      {
         var _loc2_:§&E§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§ &§)
         {
            _loc1_ += §[!S§.§;Z§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §0!f§() : int
      {
         return this.§;J§;
      }
      
      public function §6C§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§4C§ >= 0)
         {
            this.§4C§ -= param1;
            if(this.§4C§ <= 0)
            {
               _loc2_ = this.mLevelMain.objects.§7T§(this.§4P§,this.§#!o§);
               if(_loc2_ < 0)
               {
                  this.§+v§(0.1);
                  this.§4C§ = 0;
               }
               else if(!this.mLevelMain.objects.§8K§(_loc2_).§?9§)
               {
                  this.§4C§ = -1;
               }
               else if(this.mLevelMain.objects.§8K§(_loc2_).§?E§())
               {
                  this.§4C§ = 2000;
               }
               else
               {
                  this.§4C§ = 500;
               }
            }
         }
      }
      
      public function §@k§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.mLevelMain.objects.§7T§(this.§4P§,this.§#!o§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§+v§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§4C§ = -1;
      }
      
      public function §=6§(param1:Number, param2:Number) : void
      {
         this.§%!l§.x = -param1;
         this.§%!l§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == § !R§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == § !R§ && this.§9!Q§ > this.§=O§ * §>9§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§9R§(§ !R§);
         var _loc1_:§&E§ = this.§ &§[this.§'J§];
         _loc1_.§3r§(§3!^§.§'!i§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§&E§ = this.§ &§[this.§'J§];
         _loc1_.§3r§(§3!^§.§>q§);
      }
      
      public function shoot() : void
      {
         this.§5#§ = true;
      }
      
      protected function §2!0§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§&E§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§ &§[param1])
         {
            _loc3_ = this.§ &§[param1];
            this.§implements§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§8B§(this.§ &§[param1]);
            }
            _loc3_.dispose();
            this.§ &§[param1] = null;
         }
         this.§ &§.splice(param1,1);
      }
      
      public function §8B§(param1:§&E§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §!!G§.§ !E§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §!!G§.§ !E§) + Math.random() * -_loc8_ * 2;
            this.mLevelMain.particles.§]!5§(§9!-§.§`!f§,§'F§.§8e§,§9!-§.§7=§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§9!-§.§4!^§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.mLevelMain.particles.§]!5§(§9!-§.§0!?§,§'F§.§8e§,§9!-§.§7=§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §;1§(param1:§&E§) : void
      {
         this.§2!0§(this.§ &§.indexOf(param1));
      }
      
      public function §6o§() : void
      {
         var _loc2_:§&E§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§&E§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§ &§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§+p§ - this.§ &§[_loc1_].x) * (this.§+p§ - this.§ &§[_loc1_].x) + (this.§,,§ - this.§ &§[_loc1_].y) * (this.§,,§ - this.§ &§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§+p§ - this.§ &§[_loc1_ + 1].x) * (this.§+p§ - this.§ &§[_loc1_ + 1].x) + (this.§,,§ - this.§ &§[_loc1_ + 1].y) * (this.§,,§ - this.§ &§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§ &§[_loc1_];
               this.§ &§.splice(_loc1_,1);
               this.§ &§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§implements§.numChildren > 0)
         {
            this.§implements§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§ &§.length)
         {
            _loc2_ = this.§ &§[_loc1_];
            this.§implements§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §&O§(param1:Number, param2:Number) : §&E§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§ &§.length)
         {
            if(this.§ &§[_loc3_])
            {
               if(this.§ &§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§ &§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §4$§(param1:Number, param2:Number) : §7!4§
      {
         if(param1 >= this.§+p§ - this.§=O§ / 4 && param1 <= this.§+p§ + this.§=O§ / 4 && param2 >= this.§,,§ - this.§=O§ / 4 && this.§,,§ <= this.§#!o§)
         {
            return this;
         }
         return null;
      }
      
      public function §"!h§(param1:§]![§) : void
      {
         var _loc3_:§&E§ = null;
         var _loc4_:§;!B§ = null;
         param1.§[w§ = this.§+p§;
         param1.§'!S§ = this.§,,§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§ &§.length)
         {
            _loc3_ = this.§ &§[_loc2_];
            (_loc4_ = new §;!B§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§7;§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §'!d§() : void
      {
         while(this.§ &§.length > 0)
         {
            this.§;1§(this.§ &§[0]);
         }
      }
      
      public function §;3§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§ &§.length)
         {
            if(this.§ &§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§ &§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§+p§ > param1.x && this.§+p§ < param2.x && this.§,,§ > param1.y && this.§,,§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §5!'§() : Array
      {
         return [this.§<b§,this.§;,§];
      }
      
      public function §;!]§(param1:String, param2:Number, param3:Number) : §&E§
      {
         var _loc4_:§&E§ = this.§@!D§(param1,param2,param3);
         this.§6o§();
         return _loc4_;
      }
      
      public function §+!$§() : Number
      {
         return this.§ &§.length;
      }
   }
}
