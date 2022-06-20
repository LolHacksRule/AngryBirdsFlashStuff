package §?$#§
{
   import § "v§.§4$4§;
   import §""4§.Texture;
   import §#"3§.§4!h§;
   import §#Z§.DisplayObject;
   import §#Z§.Image;
   import §#Z§.Sprite;
   import §%$0§.§2#Z§;
   import §%$0§.§`#I§;
   import §-!j§.§-"8§;
   import §9#M§.§,`§;
   import §?o§.§ ^§;
   import §@"v§.§;"U§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §2!"§ extends EventDispatcher
   {
      
      public static const §5Q§:String = "slingshot_shot_bird";
      
      private static const §5#e§:int = 1800;
      
      public static const §8"#§:Number = 0.4;
      
      public static const §3#o§:int = 0;
      
      public static const §#!9§:int = 1;
      
      public static const §'[§:int = 2;
      
      public static const §1#%§:int = 3;
      
      public static const § "X§:int = 5;
      
      public static const §8K§:int = 6;
      
      public static const §switch§:int = 3151368;
      
      protected static var §+!P§:Texture;
      
      protected static var §'#0§:Texture;
       
      
      protected var §?"9§:§,`§;
      
      protected var § 6§:§<d§;
      
      protected var §0k§:Number;
      
      protected var §@_§:Number;
      
      protected var §8"a§:Number;
      
      protected var §""]§:Number = 8.5;
      
      protected var §8!V§:Number;
      
      protected var §-#0§:Number;
      
      protected var §7#J§:Number;
      
      protected var §`'§:Number;
      
      protected var §+#?§:Number = 1.0;
      
      protected var §!#U§:Boolean;
      
      protected var §6!B§:Boolean;
      
      protected var §-"F§:Boolean;
      
      protected var §+#f§:Boolean = false;
      
      public var mBirds:Vector.<§;![§>;
      
      public var mNextBirdIndex:int;
      
      protected var §3!v§:int = 0;
      
      protected var §+4§:int;
      
      protected var §7$;§:Number;
      
      public var §[!M§:Sprite;
      
      protected var §+#Q§:Sprite;
      
      public var §="x§:int = 0;
      
      protected var §@"6§:Number = 0;
      
      public var mSlingShotState:int;
      
      public var §;!'§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §=";§:Boolean = false;
      
      public var §1#u§:Number;
      
      protected var §]#+§:Sprite;
      
      protected var §<"G§:Sprite;
      
      protected var §&e§:Sprite;
      
      protected var §0#"§:DisplayObject;
      
      protected var §7!w§:Sprite;
      
      protected var §"#T§:DisplayObject;
      
      protected var §[#"§:Sprite;
      
      protected var §,M§:DisplayObject;
      
      protected var §-!E§:Sprite;
      
      protected var §,!h§:Sprite;
      
      protected var §+^§:DisplayObject;
      
      private var § #1§:Number = 0;
      
      private var §,#W§:Number = 0;
      
      private var §4"J§:Number = -1;
      
      private var §+M§:Number = 0;
      
      private var §-$4§:Boolean = false;
      
      private var §4#_§:int = 0;
      
      public function §2!"§(param1:§<d§, param2:§ ^§, param3:Sprite, param4:Number = 1.0, param5:Boolean = true, param6:Boolean = true, param7:Boolean = false)
      {
         var _loc8_:int = 0;
         var _loc9_:§;"U§ = null;
         this.mBirds = new Vector.<§;![§>();
         super();
         this.§ 6§ = param1;
         this.§]#+§ = param3;
         this.§+#?§ = param4;
         this.§!#U§ = param5;
         this.§6!B§ = param6;
         this.§-"F§ = param7;
         if(param2)
         {
            this.setPosition(param2.slingshotX,param2.slingshotY,param2.§"y§);
            this.§&#F§();
            _loc8_ = 0;
            while(_loc8_ < param2.§7v§)
            {
               _loc9_ = param2.§1#!§(_loc8_);
               this.addSlingshotObject(_loc9_.type,_loc9_.x,_loc9_.y,_loc9_.angle,_loc8_);
               _loc8_++;
            }
            this.§4#_§ = this.§&!t§();
            this.mNextBirdIndex = 0;
            if(this.mBirds.length <= 0)
            {
               §4!h§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§0k§ + " " + this.§@_§);
               this.setSlingShotState(§1#%§);
            }
            else
            {
               this.setSlingShotState(§3#o§);
            }
         }
         else
         {
            §4!h§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.setSlingShotState(§1#%§);
         }
         this.§1#u§ = 0;
         this.sortBirds();
         this.update(0,true);
         this.§^[§();
         this.updateAnimations(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§]#+§;
      }
      
      public function get aimingLineSprite() : Sprite
      {
         return this.§+#Q§;
      }
      
      public function get §57§() : Number
      {
         return this.§ #1§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.mNextBirdIndex < this.mBirds.length;
      }
      
      public function get shootingAngle() : Number
      {
         return this.§@"6§;
      }
      
      public function get §!#B§() : Number
      {
         return this.§,#W§;
      }
      
      public function get x() : Number
      {
         return this.§0k§;
      }
      
      public function get y() : Number
      {
         return this.§@_§;
      }
      
      public function get angle() : Number
      {
         return this.§8"a§;
      }
      
      public function get §"#4§() : Boolean
      {
         return this.§6!B§;
      }
      
      public function get §4#[§() : Boolean
      {
         return this.§-"F§;
      }
      
      public function dispose() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§+"9§(0);
         }
         this.mBirds = null;
         if(this.§]#+§)
         {
            this.§]#+§.dispose();
            this.§]#+§ = null;
         }
         this.§[!M§ = null;
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§0#"§)
         {
            this.§0#"§.color = param1;
         }
         if(this.§+^§)
         {
            this.§+^§.color = param1;
         }
      }
      
      public function addBirdStraightIntoSlingshot(param1:String, param2:Number, param3:Number, param4:int) : §;![§
      {
         var _loc6_:§;![§ = null;
         if(this.mBirds.length > 0)
         {
            (_loc6_ = this.mBirds[0]).§`"L§(false);
            _loc6_.animationsEnabled = false;
         }
         var _loc5_:§;![§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,0,param4)).§`"L§(true);
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §;![§
      {
         var _loc6_:§-"8§ = this.§ 6§.levelItemManager.getItem(param1);
         var _loc7_:Sprite;
         (_loc7_ = new Sprite()).scaleX = _loc6_.scale;
         _loc7_.scaleY = _loc6_.scale;
         var _loc8_:§;![§ = this.initializeSlingshotObject(_loc6_,param2,param3,param4,_loc7_,param5);
         if(param5 < 0)
         {
            this.mBirds.push(_loc8_);
         }
         else
         {
            this.mBirds.splice(param5,0,_loc8_);
         }
         ++this.§3!v§;
         this.§[!M§.addChild(_loc8_.sprite);
         return _loc8_;
      }
      
      protected function initializeSlingshotObject(param1:§-"8§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §;![§
      {
         return new §;![§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
      }
      
      public function setSlingShotState(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §3#o§)
         {
            this.§ "4§();
            this.§7$;§ = 1000;
         }
         else if(this.mSlingShotState == §#!9§)
         {
            this.§ "4§();
            this.§7$;§ = 0;
         }
         else if(this.mSlingShotState == §'[§)
         {
            this.§7$;§ = 10000;
            this.§=";§ = false;
            this.§ "4§();
         }
         else if(this.mSlingShotState == §1#%§)
         {
            this.§ "4§();
            this.§7$;§ = 2000;
         }
         else if(this.mSlingShotState == § "X§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§=";§ = false;
               this.§ "4§();
               this.mBirds[this.mNextBirdIndex].setPosition(this.§>!"§ - this.mBirds[this.mNextBirdIndex].radius * Math.cos(this.§@"6§ / (180 / Math.PI)),this.§0!@§ + this.mBirds[this.mNextBirdIndex].radius * Math.sin(this.§@"6§ / (180 / Math.PI)),180 - this.§@"6§);
            }
            else
            {
               this.§ "4§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §'"&§() : §<d§
      {
         return this.§ 6§;
      }
      
      public function §?X§() : Boolean
      {
         return this.mSlingShotState == §1#%§ && this.§7$;§ <= 0;
      }
      
      protected function getSlingshotAnimation() : §,`§
      {
         return this.§ 6§.animationManager.getAnimation("SLINGSHOT");
      }
      
      private function §&#F§() : void
      {
         this.§?"9§ = this.getSlingshotAnimation();
         this.§0#"§ = this.§?"9§.getFrame(0);
         this.§0#"§.pivotX = -3;
         this.§0#"§.pivotY = -24;
         this.§+^§ = this.§?"9§.getFrame(1);
         this.§+^§.pivotX = -30;
         this.§+^§.pivotY = -30;
         this.§ #J§();
         this.§,#$§();
         this.§<"G§ = new Sprite();
         this.§<"G§.addChild(this.§0#"§);
         this.§<"G§.addChild(this.§7!w§);
         this.§+#Q§ = new Sprite();
         this.§[!M§ = new Sprite();
         this.§&e§ = new Sprite();
         this.§&e§.addChild(this.§-!E§);
         this.§&e§.addChild(this.§[#"§);
         this.§&e§.addChild(this.§+^§);
         this.§+!j§();
      }
      
      protected function §+!j§() : void
      {
         this.§]#+§.addChild(this.§<"G§);
         this.§]#+§.addChild(this.§+#Q§);
         this.§]#+§.addChild(this.§[!M§);
         this.§]#+§.addChild(this.§&e§);
      }
      
      public function § #J§() : void
      {
         new Rectangle(0,0,100,100);
         this.§8!V§ = this.§0k§;
         this.§-#0§ = this.§@_§;
         this.§`'§ = §&$0§.§%n§;
      }
      
      private function §5!y§(param1:uint) : void
      {
         var _loc2_:BitmapData = new BitmapData(2,2,true,4278190080 | param1);
         if(§'#0§)
         {
            this.§ 6§.textureManager.unregisterBitmapDataTexture(§'#0§);
         }
         §'#0§ = this.§ 6§.textureManager.getTextureFromBitmapData(_loc2_);
      }
      
      protected function §^"9§() : DisplayObject
      {
         return new Image(§'#0§);
      }
      
      protected function §?"%§(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc3_:BitmapData = null;
         if(!§+!P§ || param2)
         {
            _loc3_ = new BitmapData(18,26,true,4278190080 | param1);
            if(§+!P§)
            {
               this.§ 6§.textureManager.unregisterBitmapDataTexture(§+!P§);
            }
            §+!P§ = this.§ 6§.textureManager.getTextureFromBitmapData(_loc3_);
         }
         return new Image(§+!P§);
      }
      
      protected function §,#$§(param1:uint = 3151368, param2:uint = 3151368, param3:Boolean = false) : void
      {
         this.§-!E§ = new Sprite();
         this.§,!h§ = new Sprite();
         var _loc4_:DisplayObject;
         (_loc4_ = this.§?"%§(param2,param3)).rotation = Math.PI;
         _loc4_.x = _loc4_.width / 2;
         _loc4_.y = _loc4_.height / 2;
         this.§,!h§.addChild(_loc4_);
         this.§-!E§.addChild(this.§,!h§);
         this.§7!w§ = new Sprite();
         this.§7!w§.x = 22;
         this.§7!w§.y = 0;
         this.§5!y§(param1);
         this.§"#T§ = this.§^"9§();
         this.§7!w§.addChild(this.§"#T§);
         this.§[#"§ = new Sprite();
         this.§[#"§.x = -17;
         this.§[#"§.y = 5;
         this.§,M§ = this.§^"9§();
         this.§[#"§.addChild(this.§,M§);
      }
      
      protected function updateAnimations(param1:Number) : void
      {
         var _loc2_:Number = (this.§0!@§ - this.§@_§) / §<d§.§6@§;
         var _loc3_:Number = (this.§>!"§ - this.§0k§) / §<d§.§6@§;
         var _loc4_:Number = Math.cos(this.§8"a§);
         var _loc5_:Number = Math.sin(this.§8"a§);
         var _loc6_:Number = -Math.sin(this.§8"a§);
         var _loc7_:Number = Math.cos(this.§8"a§);
         var _loc8_:Number = _loc3_;
         var _loc9_:Number = _loc2_;
         _loc3_ = _loc8_ * _loc4_ + _loc9_ * _loc5_;
         _loc2_ = _loc8_ * _loc6_ + _loc9_ * _loc7_;
         var _loc10_:Number = 3.5 + 8 * ((this.§`'§ - this.§41§) / this.§`'§);
         this.§-!E§.x = _loc3_;
         this.§-!E§.y = _loc2_;
         this.§-!E§.rotation = -this.§8"a§ - this.§@"6§ / (180 / Math.PI);
         this.§<"G§.x = this.§0k§ / §<d§.§6@§;
         this.§<"G§.y = this.§@_§ / §<d§.§6@§;
         this.§<"G§.rotation = this.§8"a§;
         this.§&e§.x = this.§0k§ / §<d§.§6@§;
         this.§&e§.y = this.§@_§ / §<d§.§6@§;
         this.§&e§.rotation = this.§8"a§;
         this.§[#"§.rotation = Math.atan2(_loc2_ - this.§[#"§.y,_loc3_ - this.§[#"§.x);
         this.§,M§.width = Math.sqrt(Math.pow(_loc3_ - this.§[#"§.x,2) + Math.pow(_loc2_ - this.§[#"§.y,2));
         this.§,M§.height = _loc10_ * 2;
         this.§,M§.y = -this.§,M§.height / 2;
         this.§7!w§.rotation = Math.atan2(_loc2_ - this.§7!w§.y,_loc3_ - this.§7!w§.x);
         this.§"#T§.width = Math.sqrt(Math.pow(_loc3_ - this.§7!w§.x,2) + Math.pow(_loc2_ - this.§7!w§.y,2));
         this.§"#T§.height = _loc10_ * 2;
         this.§"#T§.y = -this.§"#T§.height / 2;
         this.§;!'§ = false;
      }
      
      public function useMightyEagle() : §;![§
      {
         var _loc2_:§;![§ = null;
         while(this.mBirds.length > 0)
         {
            this.§+"9§(0,true);
         }
         this.§4!N§();
         if(this.mBirds.length > 0)
         {
            _loc2_ = this.mBirds[0];
            _loc2_.§`"L§(false);
         }
         var _loc1_:§;![§ = this.addSlingshotObject("BIRD_SARDINE",this.§0k§,this.§@_§,0);
         _loc1_.§`"L§(true);
         _loc1_.animationsEnabled = false;
         this.setSlingShotState(§'[§);
         return _loc1_;
      }
      
      protected function §4!N§() : void
      {
         §4$4§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.setSlingShotState(§ "X§);
      }
      
      public function § "4§() : void
      {
         this.setNewCoordinatesForRubber(this.§8!V§,this.§-#0§ + this.§`'§ / 8);
      }
      
      protected function get §=$2§() : Number
      {
         return this.§7#J§ * this.§+#?§;
      }
      
      protected function get §41§() : Number
      {
         return Math.min(this.§7#J§,this.§`'§);
      }
      
      protected function get §>!"§() : Number
      {
         if(this.§7#J§ >= this.§`'§)
         {
            return this.§8!V§ + this.§`'§ * Math.cos(this.§@"6§ / 180 * Math.PI);
         }
         return this.§8!V§ + this.§7#J§ * Math.cos(this.§@"6§ / 180 * Math.PI);
      }
      
      protected function get §0!@§() : Number
      {
         if(this.§7#J§ >= this.§`'§)
         {
            return this.§-#0§ - this.§`'§ * Math.sin(this.§@"6§ / 180 * Math.PI);
         }
         return this.§-#0§ - this.§7#J§ * Math.sin(this.§@"6§ / 180 * Math.PI);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         if(this.§4"J§ > 0)
         {
            return false;
         }
         var _loc4_:Number = param1 - this.§8!V§;
         var _loc5_:Number = param2 - this.§-#0§;
         var _loc6_:Number;
         if((_loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) * this.§+#?§ > this.§`'§)
         {
            if(param3)
            {
               return false;
            }
            _loc6_ = this.§`'§ / this.§+#?§;
         }
         var _loc7_:Number = (_loc7_ = Math.atan2(-(param2 - this.§-#0§),param1 - this.§8!V§)) * (180 / Math.PI);
         if(!this.mDragging && this.§4"J§ < 0)
         {
            _loc6_ = 0.8;
            _loc7_ = -160;
         }
         if(this.§!#U§)
         {
            _loc6_ = this.§5$9§(_loc6_);
         }
         return this.§7!q§(_loc7_,_loc6_);
      }
      
      protected function §5$9§(param1:Number) : Number
      {
         var _loc5_:Number = this.§`'§ / 2;
         if(param1 > _loc5_)
         {
            if(this.§@"6§ > -90 - 12 + 5 && this.§@"6§ < -90 + 12 + 5)
            {
               return _loc5_;
            }
            if(this.§@"6§ > -90 - 12 - 4 + 5 && this.§@"6§ < -90 + 12 + 4 + 5)
            {
               return Number(_loc5_ + (this.§`'§ - _loc5_) * (Math.abs(this.§@"6§ - -90 - 5) - 12) / 4);
            }
         }
         return param1;
      }
      
      protected function §7!q§(param1:Number, param2:Number) : Boolean
      {
         this.§@"6§ = param1;
         this.§7#J§ = param2;
         if(this.§7#J§ <= this.§`'§ * 0.45)
         {
            this.§+#f§ = true;
         }
         else if(this.§+#f§ && this.§7#J§ >= this.§`'§ * 0.8)
         {
            this.playStretchSound();
            this.§+#f§ = false;
         }
         this.§;!'§ = true;
         return true;
      }
      
      protected function playStretchSound() : void
      {
         §4$4§.playSound("SlingshotStreched");
      }
      
      protected function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§0k§ + param1 * Math.cos(this.§8"a§ + Math.PI / 2),this.§@_§ + param1 * Math.sin(this.§8"a§ + Math.PI / 2),this.§8"a§);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc5_:Number = param1 - this.§0k§;
         this.§0k§ = param1;
         var _loc6_:Number = param2 - this.§@_§;
         this.§@_§ = param2;
         this.§8"a§ = param3;
         this.§-#0§ += _loc6_;
         this.§8!V§ += _loc5_;
         if(param4)
         {
            this.updateAnimations(0);
         }
         this.§;!'§ = true;
      }
      
      protected function §<";§() : Number
      {
         return this.§=$2§ / this.§`'§;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§;![§ = this.mBirds[this.mNextBirdIndex];
         var _loc3_:Number = this.§<";§();
         if(_loc2_)
         {
            _loc1_ = _loc2_.§7z§;
         }
         return _loc1_ * _loc3_;
      }
      
      public function getPosition() : Point
      {
         var _loc1_:§;![§ = null;
         if(this.mBirds.length > this.mNextBirdIndex)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §2!h§() : Point
      {
         return new Point(this.§8!V§,this.§-#0§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§;![§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.§]$+§(param1);
         if(this.§;!'§)
         {
            this.updateAnimations(param1);
         }
         this.§7$;§ -= param1;
         if(this.§7$;§ < 0)
         {
            this.§7$;§ = 0;
         }
         if(this.mSlingShotState != §1#%§)
         {
            this.§9!D§(param1,param2);
            _loc3_ = null;
            if(this.mBirds.length > 0)
            {
               _loc3_ = this.mBirds[this.mNextBirdIndex];
            }
            if(_loc3_)
            {
               _loc3_.approachSlingshot(param1);
            }
            if(!_loc3_)
            {
               this.setSlingShotState(§1#%§);
            }
            else if(this.mSlingShotState == §3#o§)
            {
               if(this.§7$;§ <= 0)
               {
                  this.setSlingShotState(§#!9§);
                  _loc3_.§#I§();
               }
            }
            else if(this.mSlingShotState == §#!9§)
            {
               if(_loc3_.§'1§)
               {
                  this.setSlingShotState(§'[§);
               }
            }
            else if(this.mSlingShotState == §'[§)
            {
               _loc4_ = this.§>!"§ - _loc3_.radius * Math.cos(this.§@"6§ / (180 / Math.PI));
               _loc5_ = this.§0!@§ + _loc3_.radius * Math.sin(this.§@"6§ / (180 / Math.PI));
               if(this.mDragging || this.§4"J§ >= 0)
               {
                  _loc3_.setPosition(_loc4_,_loc5_,180 - this.§@"6§);
               }
               else
               {
                  _loc3_.setPosition(_loc4_,_loc5_,this.angle);
               }
               if(this.§=";§)
               {
                  this.shootCurrentBird(this.§<";§(),this.§@"6§);
               }
            }
         }
      }
      
      public function §]#Y§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§;![§ = null;
         if(this.mBirds.length > 0)
         {
            _loc5_ = this.mBirds[this.mNextBirdIndex];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2,180 - this.§@"6§);
         this.shootCurrentBird(param3,param4);
      }
      
      protected function shootBird() : void
      {
         this.§-$4§ = false;
         var _loc1_:§;![§ = null;
         if(this.mBirds.length > this.mNextBirdIndex)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
         }
         if(!_loc1_)
         {
            return;
         }
         this.§ #1§ = new Date().time;
         this.§ 6§.shootBird(_loc1_,this.§,#W§,this.§@"6§);
         this.§+"9§(this.mNextBirdIndex,_loc1_.§7g§ > 0);
         this.playBirdShotSound();
         if(this.mNextBirdIndex >= this.mBirds.length)
         {
            this.setSlingShotState(§1#%§);
         }
         else
         {
            this.setSlingShotState(§3#o§);
         }
         dispatchEvent(new Event(§5Q§));
      }
      
      protected function §]$+§(param1:Number) : void
      {
         if(this.§4"J§ <= 0)
         {
            return;
         }
         this.§;!'§ = true;
         this.§4"J§ -= param1;
         if(this.§4"J§ <= 0)
         {
            this.§4"J§ = 0;
         }
         var _loc2_:Number = this.§4"J§ / §5#e§;
         var _loc3_:Number = this.§+M§ * Math.cos(_loc2_ * Math.PI * 8) * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_;
         this.§7!q§(this.§@"6§,_loc3_);
         if(this.§4"J§ == 0)
         {
            this.§4"J§ = -1;
            this.§ "4§();
         }
         if(this.§-$4§)
         {
            this.shootBird();
         }
      }
      
      public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         this.§,#W§ = param1;
         this.§@"6§ = param2;
         this.§4"J§ = §5#e§;
         this.§+M§ = this.§7#J§;
         this.mDragging = false;
         this.§=";§ = false;
         this.§-$4§ = true;
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §4$4§.playSound("bird_shot-a" + _loc1_);
      }
      
      public function §9!D§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.mNextBirdIndex;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.mBirds.length)
         {
            this.mBirds[_loc4_].update(param1,this.mSlingShotState == § "X§,param2);
            _loc4_++;
         }
      }
      
      public function getCurrentBirdType() : String
      {
         var _loc1_:§;![§ = null;
         if(this.mNextBirdIndex < this.mBirds.length)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
            return _loc1_.name;
         }
         return null;
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§;![§ = null;
         this.mDragging = false;
         this.§ "4§();
         if(this.§+4§ >= this.mBirds.length)
         {
            return false;
         }
         _loc1_ = this.mBirds[this.§+4§];
         if(_loc1_.§5"_§)
         {
            _loc1_.§'5§(true);
            this.showScoreForRemainingBird(_loc1_,this.§ 6§.levelItemManager.getItem(_loc1_.name).destroyedScoreInc);
            this.mBirds[this.§+4§].scoreCounted = true;
            ++this.§+4§;
         }
         else
         {
            this.mBirds[this.§+4§].scoreCounted = false;
            ++this.§+4§;
         }
         return true;
      }
      
      protected function showScoreForRemainingBird(param1:§;![§, param2:int) : void
      {
         this.§ 6§.addScore(param2,§-V§.§-"u§,true,param1.x,param1.y - 3,§`#I§.§`#i§(param1.name),param1.levelItem.floatingScoreFont);
      }
      
      public function §&!t§() : int
      {
         var _loc2_:§;![§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mBirds)
         {
            _loc1_ += this.§ 6§.levelItemManager.getItem(_loc2_.name).destroyedScoreInc;
         }
         return _loc1_;
      }
      
      public function §3f§() : int
      {
         var _loc2_:§;![§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mBirds)
         {
            if(!_loc2_.scoreCounted)
            {
               _loc1_ += this.§ 6§.levelItemManager.getItem(_loc2_.name).destroyedScoreInc;
            }
         }
         return _loc1_;
      }
      
      public function §^!C§() : int
      {
         return this.§4#_§;
      }
      
      protected function §^[§() : void
      {
         var _loc1_:int = 1000;
         var _loc2_:Number = Math.cos(this.§8"a§ + Math.PI / 2) * this.§""]§;
         var _loc3_:Number = Math.sin(this.§8"a§ + Math.PI / 2) * this.§""]§;
         while(int(this.§ 6§.objects.§@"q§(this.§8!V§ + _loc2_,this.§-#0§ + _loc3_)) == -1)
         {
            this.applyGravity(0.1);
            if(_loc1_-- <= 0)
            {
               break;
            }
         }
         this.§1#u§ = -1;
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§]#+§.x = -param1;
         this.§]#+§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §'[§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function get canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §'[§ && this.§<";§() >= §8"#§ && this.§4"J§ < 0;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.setSlingShotState(§'[§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
      }
      
      public function shoot() : void
      {
         this.§=";§ = true;
      }
      
      protected function §+"9§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§;![§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.mBirds[param1])
         {
            _loc3_ = this.mBirds[param1];
            this.§[!M§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.showDestructionParticles(this.mBirds[param1]);
            }
            _loc3_.dispose();
            this.mBirds[param1] = null;
         }
         this.mBirds.splice(param1,1);
      }
      
      protected function showDestructionParticles(param1:§;![§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §<d§.§6@§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §<d§.§6@§) + Math.random() * -_loc8_ * 2;
            this.§ 6§.particles.addParticle(§`#I§.§5$"§,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,param1.x + _loc7_,param1.y + _loc8_,1500,"",§`#I§.getParticleMaterialFromEngineMaterial(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§ 6§.particles.addParticle(§`#I§.§"!S§,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:§;![§) : void
      {
         this.§+"9§(this.mBirds.indexOf(param1));
      }
      
      public function sortBirds() : void
      {
         var _loc1_:§;![§ = null;
         this.mBirds.sort(this.§##S§);
         while(this.§[!M§.numChildren > 0)
         {
            this.§[!M§.removeChildAt(0);
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_ = this.mBirds[_loc2_];
            this.§[!M§.addChildAt(_loc1_.sprite,0);
            _loc2_++;
         }
      }
      
      private function §##S§(param1:§;![§, param2:§;![§) : Number
      {
         if(param1.launchIndex < param2.launchIndex)
         {
            return -1;
         }
         if(param1.launchIndex > param2.launchIndex)
         {
            return 1;
         }
         return 0;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §;![§
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
      
      public function §,b§(param1:Number, param2:Number) : §2!"§
      {
         if(param1 >= this.§0k§ - this.§`'§ / 4 && param1 <= this.§0k§ + this.§`'§ / 4 && param2 >= this.§@_§ - this.§`'§ / 4 && param2 <= this.§@_§ + this.§""]§)
         {
            return this;
         }
         return null;
      }
      
      public function §%#R§(param1:§ ^§) : void
      {
         var _loc3_:§;![§ = null;
         var _loc4_:§;"U§ = null;
         param1.slingshotX = this.§0k§;
         param1.slingshotY = this.§@_§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc3_ = this.mBirds[_loc2_];
            (_loc4_ = new §;"U§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.type = _loc3_.name;
            param1.§&!D§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §6"r§() : void
      {
         while(this.mBirds.length > 0)
         {
            this.removeObject(this.mBirds[0]);
         }
      }
      
      public function §'#l§(param1:Point, param2:Point) : Array
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
         if(this.§0k§ > param1.x && this.§0k§ < param2.x && this.§@_§ > param1.y && this.§@_§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §>!j§(param1:String, param2:Number, param3:Number, param4:Number) : §;![§
      {
         var _loc5_:§;![§ = this.addSlingshotObject(param1,param2,param3,param4);
         this.§3#_§();
         return _loc5_;
      }
      
      public function §,"j§() : int
      {
         return this.mBirds.length;
      }
      
      public function §?#&§() : int
      {
         return this.§3!v§;
      }
      
      public function §3#_§() : void
      {
         this.mBirds.sort(this.§9"n§);
         var _loc1_:int = 0;
         while(_loc1_ < this.mBirds.length)
         {
            this.mBirds[_loc1_].launchIndex = _loc1_;
            _loc1_++;
         }
         this.mNextBirdIndex = 0;
      }
      
      private function §9"n§(param1:§;![§, param2:§;![§) : Number
      {
         var _loc3_:Number = Math.pow(param1.x - this.§0k§,2) + Math.pow(param1.y - this.§@_§,2);
         var _loc4_:Number = Math.pow(param2.x - this.§0k§,2) + Math.pow(param2.y - this.§@_§,2);
         return _loc3_ - _loc4_;
      }
   }
}
