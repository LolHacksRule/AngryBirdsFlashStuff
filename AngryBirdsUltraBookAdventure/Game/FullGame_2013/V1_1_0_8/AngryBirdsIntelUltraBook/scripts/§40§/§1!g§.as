package §40§
{
   import § ! §.§=!%§;
   import § ! §.§>p§;
   import §"!i§.§"!'§;
   import §0S§.§6!D§;
   import §0S§.§7!Z§;
   import §1!B§.§<m§;
   import §5<§.§#c§;
   import §=`§.§#`§;
   import §=`§.§%!L§;
   import §?]§.Texture;
   import §[!b§.§-!Q§;
   import §`g§.§ O§;
   import §`g§.§"<§;
   import §`g§.Sprite;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §1!g§
   {
      
      public static const §,a§:int = 0;
      
      public static const §1f§:int = 1;
      
      public static const §?9§:int = 2;
      
      public static const §7r§:int = 3;
      
      public static const §"9§:int = 5;
      
      public static const §+!d§:int = 3151368;
      
      protected static const §,[§:int = 8;
      
      protected static const §-%§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const BIRD_LAUNCH_FORCE_GREEN:Number = 52.5;
      
      protected static const §#!k§:Number = -0.7;
      
      protected static const §%s§:Number = 0;
      
      protected static var §'!8§:Texture;
      
      public static const §1G§:Number = 0.4;
       
      
      public var §#!U§:§5G§;
      
      public var §#!!§:Number;
      
      public var §!!3§:Number;
      
      public var §[!-§:Number;
      
      protected var §1;§:Number;
      
      protected var §4_§:Number;
      
      protected var §^0§:Number;
      
      protected var §7!B§:Number;
      
      public var §0!g§:Number;
      
      public var §"!F§:Boolean = false;
      
      protected var §-m§:Number;
      
      public var § Y§:Vector.<§<!P§>;
      
      public var §1]§:int;
      
      public var §9h§:int;
      
      public var §4!K§:Number;
      
      public var §;!j§:Sprite;
      
      public var §[<§:int = 0;
      
      public var §]f§:Number = 0;
      
      public var §+!5§:Array;
      
      public var §3!t§:Array;
      
      public var mSlingShotState:int;
      
      public var §4q§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §%!N§:Boolean = false;
      
      public var §0!§:Number;
      
      protected var § w§:Boolean = false;
      
      protected var §]2§:Sprite;
      
      protected var §4!O§:§ O§;
      
      protected var §@I§:§ O§;
      
      protected var §<g§:Sprite;
      
      protected var §=d§:Sprite;
      
      protected var §8r§:Sprite;
      
      protected var §^!0§:§"<§;
      
      protected var §3""§:§"<§;
      
      private var §00§:Number = 0;
      
      private var §"1§:int = 0;
      
      protected var §1!p§:Number = -0.7;
      
      protected var §@§:Number = 0;
      
      public function §1!g§(param1:§5G§, param2:§"!'§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§#c§ = null;
         this.§ Y§ = new Vector.<§<!P§>();
         super();
         this.§#!U§ = param1;
         this.§]2§ = param3;
         if(param2)
         {
            this.setPosition(param2.§`!P§,param2.§=!M§);
            this.§," §();
            _loc4_ = 0;
            while(_loc4_ < param2.§[i§)
            {
               _loc5_ = param2.§^!V§(_loc4_);
               this.§-!I§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§"1§ = this.§+!u§();
            this.§1]§ = 0;
            if(this.§ Y§.length <= 0)
            {
               §<m§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§#!!§ + " " + this.§!!3§);
               this.§8k§(§7r§);
            }
            else
            {
               this.§8k§(§,a§);
            }
         }
         else
         {
            §<m§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§8k§(§7r§);
         }
         this.§0!§ = 0;
         this.§+G§();
         this.update(0,true);
         this.§;[§();
         this.updateAnimations(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§]2§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§00§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§1]§ < this.§ Y§.length;
      }
      
      public function dispose() : void
      {
         while(this.§ Y§.length > 0)
         {
            this.§5!u§(0);
         }
         this.§ Y§ = null;
         if(this.§]2§)
         {
            this.§]2§.dispose();
            this.§]2§ = null;
         }
         this.§;!j§ = null;
         this.§+!5§ = null;
         this.§3!t§ = null;
      }
      
      public function §'!%§(param1:String, param2:Number, param3:Number, param4:int = -1) : §<!P§
      {
         var _loc5_:§<!P§;
         (_loc5_ = this.§-!I§(param1,param2,param3,param4)).§0!@§();
         this.§8k§(§?9§);
         return _loc5_;
      }
      
      protected function §-!I§(param1:String, param2:Number, param3:Number, param4:int = -1) : §<!P§
      {
         var _loc5_:§<!P§ = new §<!P§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§ Y§.push(_loc5_);
         }
         else
         {
            this.§ Y§.splice(param4,0,_loc5_);
         }
         this.§;!j§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §8k§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §,a§)
         {
            this.§5!d§();
            this.§4!K§ = 1000;
         }
         else if(this.mSlingShotState == §1f§)
         {
            this.§5!d§();
            this.§4!K§ = 0;
         }
         else if(this.mSlingShotState == §?9§)
         {
            this.§4!K§ = 10000;
            this.§%!N§ = false;
            this.§5!d§();
         }
         else if(this.mSlingShotState == §7r§)
         {
            this.§5!d§();
            this.§4!K§ = 2000;
         }
         else if(this.mSlingShotState == §"9§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§%!N§ = false;
               this.§5!d§();
               this.§ Y§[this.§1]§].setPosition(this.§^0§ - this.§ Y§[this.§1]§].radius * Math.cos(this.§]f§ / (180 / Math.PI)),this.§7!B§ + this.§ Y§[this.§1]§].radius * Math.sin(this.§]f§ / (180 / Math.PI)));
            }
            else
            {
               this.§5!d§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §`!j§() : §5G§
      {
         return this.§#!U§;
      }
      
      public function § !$§() : Boolean
      {
         return this.mSlingShotState == §7r§ && this.§4!K§ <= 0;
      }
      
      private function §," §() : void
      {
         var _loc1_:§%!L§ = this.getSlingshotAnimation();
         var _loc2_:§#`§ = _loc1_.getFrame(0);
         var _loc3_:§#`§ = _loc1_.getFrame(1);
         this.§^!0§ = new §"<§(_loc2_.texture);
         this.§^!0§.scaleX = _loc2_.scale;
         this.§^!0§.scaleY = _loc2_.scale;
         this.§3""§ = new §"<§(_loc3_.texture);
         this.§3""§.scaleX = _loc3_.scale;
         this.§3""§.scaleY = _loc3_.scale;
         this.§5!3§();
         this.§[w§();
         this.§;!j§ = new Sprite();
         this.§]2§.addChild(this.§^!0§);
         this.§]2§.addChild(this.§<g§);
         this.§]2§.addChild(this.§;!j§);
         this.§]2§.addChild(this.§8r§);
         this.§]2§.addChild(this.§=d§);
         this.§]2§.addChild(this.§3""§);
         this.§[!-§ = this.§!!3§ + 8.5;
      }
      
      protected function getSlingshotAnimation() : §%!L§
      {
         return this.§#!U§.animationManager.getAnimation("SLINGSHOT");
      }
      
      public function §5!3§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§1;§ = this.§#!!§;
         this.§4_§ = this.§!!3§;
         this.§-m§ = §2!y§.§5L§;
         _loc1_ = null;
      }
      
      protected function §[w§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§'!8§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §'!8§ = this.§#!U§.textureManager.getTextureFromBitmapData(_loc2_);
         }
         this.§8r§ = new Sprite();
         var _loc1_:§"<§ = new §"<§(§'!8§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§8r§.addChild(_loc1_);
         this.§<g§ = new Sprite();
         this.§4!O§ = new § O§(2,2,§+!d§);
         this.§<g§.addChild(this.§4!O§);
         this.§=d§ = new Sprite();
         this.§@I§ = new § O§(2,2,§+!d§);
         this.§=d§.addChild(this.§@I§);
      }
      
      public function updateAnimations(param1:Number) : void
      {
         var _loc2_:Number = this.§7!B§ / §5G§.§6+§;
         var _loc3_:Number = this.§^0§ / §5G§.§6+§;
         var _loc4_:Number = 3.5 + 8 * ((this.§-m§ - this.§0!g§) / this.§-m§);
         this.§8r§.x = _loc3_;
         this.§8r§.y = _loc2_;
         this.§8r§.rotation = -this.§]f§ / (180 / Math.PI);
         this.§^!0§.x = this.§#!!§ / §5G§.§6+§ - 3;
         this.§^!0§.y = this.§!!3§ / §5G§.§6+§ - 30;
         this.§3""§.x = this.§#!!§ / §5G§.§6+§ - 30;
         this.§3""§.y = this.§!!3§ / §5G§.§6+§ - 30;
         this.§=d§.x = this.§#!!§ / §5G§.§6+§ - 17;
         this.§=d§.y = this.§!!3§ / §5G§.§6+§ + 5;
         this.§=d§.rotation = Math.atan2(_loc2_ - this.§=d§.y,_loc3_ - this.§=d§.x);
         this.§<g§.x = this.§#!!§ / §5G§.§6+§ + 22;
         this.§<g§.y = this.§!!3§ / §5G§.§6+§;
         this.§<g§.rotation = Math.atan2(_loc2_ - this.§<g§.y,_loc3_ - this.§<g§.x);
         this.§@I§.width = Math.sqrt(Math.pow(_loc3_ - this.§=d§.x,2) + Math.pow(_loc2_ - this.§=d§.y,2));
         this.§4!O§.width = Math.sqrt(Math.pow(_loc3_ - this.§<g§.x,2) + Math.pow(_loc2_ - this.§<g§.y,2));
         this.§@I§.height = this.§4!O§.height = _loc4_ * 2;
         this.§@I§.y = -this.§@I§.height / 2;
         this.§4!O§.y = -this.§4!O§.height / 2;
         this.§4q§ = false;
      }
      
      public function useMightyEagle() : void
      {
         while(this.§ Y§.length > 0)
         {
            this.§5!u§(0,true);
         }
         this.§]! §();
         this.§-!I§("BIRD_SARDINE",this.§#!!§,this.§!!3§);
         this.§8k§(§?9§);
      }
      
      protected function §]! §() : void
      {
         §-!Q§.§#3§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§8k§(§"9§);
      }
      
      public function §5!d§() : void
      {
         this.setNewCoordinatesForRubber(this.§1;§,this.§4_§ + this.§-m§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§^0§ == param1 && this.§7!B§ == param2)
         {
            return true;
         }
         this.§0!g§ = Math.sqrt((param2 - this.§4_§) * (param2 - this.§4_§) + (param1 - this.§1;§) * (param1 - this.§1;§));
         if(this.§0!g§ > this.§-m§)
         {
            if(param3)
            {
               this.§0!g§ = Math.sqrt((this.§7!B§ - this.§4_§) * (this.§7!B§ - this.§4_§) + (this.§^0§ - this.§1;§) * (this.§^0§ - this.§1;§));
               return false;
            }
            param1 = this.§1;§ + this.§-m§ * (param1 - this.§1;§) / this.§0!g§;
            param2 = this.§4_§ + this.§-m§ * (param2 - this.§4_§) / this.§0!g§;
            this.§0!g§ = this.§-m§;
         }
         this.§^0§ = param1;
         this.§7!B§ = param2;
         this.§]f§ = Math.atan2(-(this.§7!B§ - this.§4_§),this.§^0§ - this.§1;§);
         this.§]f§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§^0§ = param1 + this.§1!p§;
            this.§7!B§ = param2 + this.§@§;
            this.§]f§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§-m§ / 2;
         if(this.§0!g§ > _loc7_ && this.§]f§ > -90 - _loc4_ + _loc5_ && this.§]f§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§1;§ + _loc7_ * (param1 - this.§1;§) / this.§0!g§;
            param2 = this.§4_§ + _loc7_ * (param2 - this.§4_§) / this.§0!g§;
            this.§0!g§ = _loc7_;
            this.§^0§ = param1;
            this.§7!B§ = param2;
         }
         else if(this.§0!g§ > _loc7_ && this.§]f§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§]f§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§-m§ - _loc7_) * (Math.abs(this.§]f§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§1;§ + _loc8_ * (param1 - this.§1;§) / this.§0!g§;
            param2 = this.§4_§ + _loc8_ * (param2 - this.§4_§) / this.§0!g§;
            this.§0!g§ = _loc8_;
            this.§^0§ = param1;
            this.§7!B§ = param2;
         }
         if(this.§0!g§ <= this.§-m§ * 0.45)
         {
            this.§"!F§ = true;
         }
         else if(this.§"!F§ && this.§0!g§ >= this.§-m§ * 0.8)
         {
            this.§^<§();
            this.§"!F§ = false;
         }
         this.§4q§ = true;
         return true;
      }
      
      protected function §^<§() : void
      {
         §-!Q§.§#3§("SlingshotStreched");
      }
      
      public function §<4§(param1:Number) : void
      {
         this.setPosition(this.§#!!§,this.§!!3§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§#!!§;
         this.§#!!§ = param1;
         var _loc5_:Number = param2 - this.§!!3§;
         this.§!!3§ = param2;
         this.§[!-§ += _loc5_;
         this.§4_§ += _loc5_;
         this.§7!B§ += _loc5_;
         this.§1;§ += _loc4_;
         this.§^0§ += _loc4_;
         if(param3)
         {
            this.updateAnimations(0);
         }
         this.§4q§ = true;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§<!P§ = null;
         _loc2_ = this.§ Y§[this.§1]§];
         var _loc3_:Number = this.§0!g§ / this.§-m§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§1!g§.BIRD_LAUNCH_FORCE_GREEN) : Number(§1!g§.BIRD_LAUNCH_FORCE);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §+j§() : Point
      {
         var _loc1_:§<!P§ = null;
         if(this.§ Y§.length > this.§1]§)
         {
            _loc1_ = this.§ Y§[this.§1]§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §'!'§() : Point
      {
         return new Point(this.§1;§,this.§4_§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§<!P§ = null;
         this.§!!&§(param1);
         if(this.§4q§)
         {
            this.updateAnimations(param1);
         }
         this.§4!K§ -= param1;
         if(this.§4!K§ < 0)
         {
            this.§4!K§ = 0;
         }
         if(this.mSlingShotState != §7r§)
         {
            this.§9!!§(param1,param2);
            _loc3_ = null;
            if(this.§ Y§.length > 0)
            {
               _loc3_ = this.§ Y§[this.§1]§];
            }
            if(_loc3_)
            {
               _loc3_.§5!b§(param1);
            }
            if(!_loc3_)
            {
               this.§8k§(§7r§);
            }
            else if(this.mSlingShotState == §,a§)
            {
               if(this.§4!K§ <= 0)
               {
                  this.§8k§(§1f§);
                  _loc3_.§"0§();
               }
            }
            else if(this.mSlingShotState == §1f§)
            {
               if(_loc3_.§,O§)
               {
                  this.§8k§(§?9§);
               }
            }
            else if(this.mSlingShotState == §?9§)
            {
               if(!_loc3_.§%b§())
               {
                  _loc3_.setPosition(this.§^0§ - _loc3_.radius * Math.cos(this.§]f§ / (180 / Math.PI)),this.§7!B§ + _loc3_.radius * Math.sin(this.§]f§ / (180 / Math.PI)));
               }
               if(this.§%!N§)
               {
                  this.§break§(this.§0!g§ / this.§-m§,this.§]f§);
               }
            }
         }
      }
      
      public function §7!t§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§<!P§ = null;
         if(this.§ Y§.length > 0)
         {
            _loc5_ = this.§ Y§[this.§1]§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§break§(param3,param4);
      }
      
      protected function §break§(param1:Number, param2:Number) : void
      {
         var _loc3_:§<!P§ = null;
         this.§1!p§ = §#!k§;
         this.§@§ = §%s§;
         if(this.§ Y§.length > 0)
         {
            _loc3_ = this.§ Y§[this.§1]§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§%!N§ = false;
         this.§00§ = new Date().time;
         this.§#!U§.§`!`§(_loc3_,param1,param2);
         this.§5!u§(this.§1]§,_loc3_.§+_§ > 0);
         this.playBirdShotSound();
         if(this.§1]§ >= this.§ Y§.length)
         {
            this.§8k§(§7r§);
         }
         else
         {
            this.§8k§(§,a§);
         }
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §-!Q§.§#3§("BirdShot" + _loc1_);
      }
      
      public function §9!!§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§1]§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§ Y§.length)
         {
            if(this.mSlingShotState == §"9§)
            {
               this.§ Y§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§ Y§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§<!P§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§5!d§();
         if(this.§9h§ >= this.§ Y§.length)
         {
            return false;
         }
         _loc1_ = this.§ Y§[this.§9h§];
         _loc2_ = §7!Z§.§`!H§(_loc1_.name).score;
         this.§#!U§.addScore(_loc2_,§-!8§.§'!b§,true,_loc1_.x,_loc1_.y - 3,§>p§.§?`§(_loc1_.name));
         _loc1_.§-!M§(-1,true);
         ++this.§9h§;
         return true;
      }
      
      public function §+!u§() : int
      {
         var _loc2_:§<!P§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§ Y§)
         {
            _loc1_ += §7!Z§.§`!H§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §&!M§() : int
      {
         return this.§"1§;
      }
      
      public function §!!&§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§0!§ >= 0)
         {
            this.§0!§ -= param1;
            if(this.§0!§ <= 0)
            {
               _loc2_ = this.§#!U§.objects.§3q§(this.§1;§,this.§[!-§);
               if(_loc2_ < 0)
               {
                  this.§<4§(0.1);
                  this.§0!§ = 0;
               }
               else if(!this.§#!U§.objects.§ !X§(_loc2_).§5d§)
               {
                  this.§0!§ = -1;
               }
               else if(this.§#!U§.objects.§ !X§(_loc2_).§,1§())
               {
                  this.§0!§ = 2000;
               }
               else
               {
                  this.§0!§ = 500;
               }
            }
         }
      }
      
      public function §;[§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§#!U§.objects.§3q§(this.§1;§,this.§[!-§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§<4§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§0!§ = -1;
      }
      
      public function §1T§(param1:Number, param2:Number) : void
      {
         this.§]2§.x = -param1;
         this.§]2§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §?9§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §?9§ && this.§0!g§ > this.§-m§ * §1G§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§8k§(§?9§);
         var _loc1_:§<!P§ = this.§ Y§[this.§1]§];
         _loc1_.§-!M§(§6!D§.§+" §);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§<!P§ = this.§ Y§[this.§1]§];
         _loc1_.§-!M§(§6!D§.§!!q§);
      }
      
      public function shoot() : void
      {
         this.§%!N§ = true;
      }
      
      protected function §5!u§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§<!P§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§ Y§[param1])
         {
            _loc3_ = this.§ Y§[param1];
            this.§;!j§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§2c§(this.§ Y§[param1]);
            }
            _loc3_.dispose();
            this.§ Y§[param1] = null;
         }
         this.§ Y§.splice(param1,1);
      }
      
      public function §2c§(param1:§<!P§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §5G§.§6+§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §5G§.§6+§) + Math.random() * -_loc8_ * 2;
            this.§#!U§.particles.§-M§(§>p§.§&@§,§=!%§.§2k§,§>p§.§%§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§>p§.§=!f§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§#!U§.particles.§-M§(§>p§.§'f§,§=!%§.§2k§,§>p§.§%§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §&!l§(param1:§<!P§) : void
      {
         this.§5!u§(this.§ Y§.indexOf(param1));
      }
      
      public function §+G§() : void
      {
         var _loc1_:§<!P§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§<!P§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§ Y§.length - 1)
         {
            _loc1_ = this.§ Y§[_loc2_];
            if(!(_loc1_.§,O§ && _loc2_ == 0))
            {
               _loc3_ = Math.sqrt((this.§#!!§ - this.§ Y§[_loc2_].x) * (this.§#!!§ - this.§ Y§[_loc2_].x) + (this.§!!3§ - this.§ Y§[_loc2_].y) * (this.§!!3§ - this.§ Y§[_loc2_].y));
               if((_loc4_ = Math.sqrt((this.§#!!§ - this.§ Y§[_loc2_ + 1].x) * (this.§#!!§ - this.§ Y§[_loc2_ + 1].x) + (this.§!!3§ - this.§ Y§[_loc2_ + 1].y) * (this.§!!3§ - this.§ Y§[_loc2_ + 1].y))) < _loc3_)
               {
                  _loc5_ = this.§ Y§[_loc2_];
                  this.§ Y§.splice(_loc2_,1);
                  this.§ Y§.splice(_loc2_ + 1,0,_loc5_);
                  _loc2_ = Math.max(-1,_loc2_ - 2);
               }
            }
            _loc2_++;
         }
         while(this.§;!j§.numChildren > 0)
         {
            this.§;!j§.removeChildAt(0);
         }
         _loc2_ = 0;
         while(_loc2_ < this.§ Y§.length)
         {
            _loc1_ = this.§ Y§[_loc2_];
            this.§;!j§.addChildAt(_loc1_.sprite,0);
            _loc2_++;
         }
      }
      
      public function §&J§(param1:Number, param2:Number) : §<!P§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§ Y§.length)
         {
            if(this.§ Y§[_loc3_])
            {
               if(this.§ Y§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§ Y§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §?!#§(param1:Number, param2:Number) : §1!g§
      {
         if(param1 >= this.§#!!§ - this.§-m§ / 4 && param1 <= this.§#!!§ + this.§-m§ / 4 && param2 >= this.§!!3§ - this.§-m§ / 4 && this.§!!3§ <= this.§[!-§)
         {
            return this;
         }
         return null;
      }
      
      public function §#!%§(param1:§"!'§) : void
      {
         var _loc3_:§<!P§ = null;
         var _loc4_:§#c§ = null;
         param1.§`!P§ = this.§#!!§;
         param1.§=!M§ = this.§!!3§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§ Y§.length)
         {
            _loc3_ = this.§ Y§[_loc2_];
            (_loc4_ = new §#c§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§]Z§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §3N§() : void
      {
         while(this.§ Y§.length > 0)
         {
            this.§&!l§(this.§ Y§[0]);
         }
      }
      
      public function §&!g§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§ Y§.length)
         {
            if(this.§ Y§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§ Y§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§#!!§ > param1.x && this.§#!!§ < param2.x && this.§!!3§ > param1.y && this.§!!3§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §;![§() : Array
      {
         return [this.§3""§,this.§^!0§];
      }
      
      public function §#"!§(param1:String, param2:Number, param3:Number) : §<!P§
      {
         var _loc4_:§<!P§ = this.§-!I§(param1,param2,param3);
         this.§+G§();
         return _loc4_;
      }
      
      public function §'_§() : Number
      {
         return this.§ Y§.length;
      }
      
      public function §^F§() : Boolean
      {
         return this.§ w§;
      }
   }
}
