package §^#>§
{
   import §!!U§.§#"t§;
   import §!!U§.§2"D§;
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §&v§.Texture;
   import §2"Y§.§"t§;
   import §2"Y§.§'§;
   import §5t§.Log;
   import §7!F§.§>"G§;
   import §<"B§.§5y§;
   import §="2§.§?!r§;
   import §?m§.§8!B§;
   import §`!r§.§ U§;
   import §`!r§.§,!w§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §;x§ extends EventDispatcher
   {
      
      public static const §?!i§:String = "slingshot_shot_bird";
      
      private static const §="@§:int = 1800;
      
      public static const §6!5§:Number = 0.4;
      
      public static const §1!V§:int = 0;
      
      public static const §<"F§:int = 1;
      
      public static const §,"K§:int = 2;
      
      public static const §2"R§:int = 3;
      
      public static const §?R§:int = 5;
      
      public static const §@"m§:int = 6;
      
      public static const §+#5§:int = 3151368;
      
      protected static var §&n§:Texture;
       
      
      protected var §6e§:§>"G§;
      
      protected var §2#G§:§#_§;
      
      protected var §8!+§:Number;
      
      protected var §=!Z§:Number;
      
      protected var §[<§:Number;
      
      protected var §<!m§:Number = 8.5;
      
      protected var §9"C§:Number;
      
      protected var §-#;§:Number;
      
      protected var §&##§:Number;
      
      protected var §"!S§:Number;
      
      protected var §!#R§:Number = 1.0;
      
      protected var §?t§:Boolean;
      
      protected var §<m§:Boolean;
      
      protected var §6"U§:Boolean = false;
      
      public var §,!?§:Vector.<§`"]§>;
      
      public var §72§:int;
      
      protected var §&!$§:int = 0;
      
      protected var §["J§:int;
      
      protected var §1J§:Number;
      
      public var §<v§:Sprite;
      
      protected var §]#%§:Sprite;
      
      public var §=#5§:int = 0;
      
      protected var §7"1§:Number = 0;
      
      public var mSlingShotState:int;
      
      public var §["]§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §+"t§:Boolean = false;
      
      public var §@§:Number;
      
      protected var §%G§:Sprite;
      
      protected var §0!4§:Sprite;
      
      protected var §9"h§:Sprite;
      
      protected var §"#S§:DisplayObject;
      
      protected var §@s§:Sprite;
      
      protected var §<"f§:DisplayObject;
      
      protected var §4I§:Sprite;
      
      protected var §1!_§:DisplayObject;
      
      protected var §]<§:Sprite;
      
      protected var §;Y§:Sprite;
      
      protected var §-4§:DisplayObject;
      
      private var §;!6§:Number = 0;
      
      private var §&U§:Number = 0;
      
      private var §@##§:Number = -1;
      
      private var §,!p§:Number = 0;
      
      private var §"#"§:Boolean = false;
      
      private var §4J§:int = 0;
      
      public function §;x§(param1:§#_§, param2:§8!B§, param3:Sprite, param4:Number = 1.0, param5:Boolean = true, param6:Boolean = true)
      {
         var _loc7_:int = 0;
         var _loc8_:§5y§ = null;
         this.§,!?§ = new Vector.<§`"]§>();
         super();
         this.§2#G§ = param1;
         this.§%G§ = param3;
         this.§!#R§ = param4;
         this.§?t§ = param5;
         this.§<m§ = param6;
         if(param2)
         {
            this.setPosition(param2.slingshotX,param2.slingshotY,param2.§0"r§);
            this.§4"Q§();
            _loc7_ = 0;
            while(_loc7_ < param2.§'o§)
            {
               _loc8_ = param2.§+§(_loc7_);
               this.addSlingshotObject(_loc8_.type,_loc8_.x,_loc8_.y,_loc8_.angle,_loc8_.index);
               _loc7_++;
            }
            this.§4J§ = this.§#"+§();
            this.§72§ = 0;
            if(this.§,!?§.length <= 0)
            {
               Log.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§8!+§ + " " + this.§=!Z§);
               this.§8"F§(§2"R§);
            }
            else
            {
               this.§8"F§(§1!V§);
            }
         }
         else
         {
            Log.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§8"F§(§2"R§);
         }
         this.§@§ = 0;
         this.sortBirds();
         this.update(0,true);
         this.groundSlingshot();
         this.§[!2§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§%G§;
      }
      
      public function get aimingLineSprite() : Sprite
      {
         return this.§]#%§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§;!6§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§72§ < this.§,!?§.length;
      }
      
      public function get shootingAngle() : Number
      {
         return this.§7"1§;
      }
      
      public function get x() : Number
      {
         return this.§8!+§;
      }
      
      public function get y() : Number
      {
         return this.§=!Z§;
      }
      
      public function get angle() : Number
      {
         return this.§[<§;
      }
      
      public function get §]`§() : Boolean
      {
         return this.§<m§;
      }
      
      public function dispose() : void
      {
         while(this.§,!?§.length > 0)
         {
            this.§%"'§(0);
         }
         this.§,!?§ = null;
         if(this.§%G§)
         {
            this.§%G§.dispose();
            this.§%G§ = null;
         }
         this.§<v§ = null;
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§"#S§)
         {
            this.§"#S§.color = param1;
         }
         if(this.§-4§)
         {
            this.§-4§.color = param1;
         }
      }
      
      public function §4§(param1:String, param2:Number, param3:Number, param4:int) : §`"]§
      {
         var _loc6_:§`"]§ = null;
         if(this.§,!?§.length > 0)
         {
            (_loc6_ = this.§,!?§[0]).setOnSlingshot(false);
            _loc6_.§6<§ = false;
         }
         var _loc5_:§`"]§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,0,param4)).setOnSlingshot(true);
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §`"]§
      {
         var _loc6_:§"t§ = this.§2#G§.levelItemManager.getItem(param1);
         var _loc7_:Sprite;
         (_loc7_ = new Sprite()).scaleX = _loc6_.scale;
         _loc7_.scaleY = _loc6_.scale;
         var _loc8_:§`"]§ = this.initializeSlingshotObject(_loc6_,param2,param3,param4,_loc7_,param5);
         if(param5 < 0)
         {
            this.§,!?§.push(_loc8_);
         }
         else
         {
            this.§,!?§.splice(param5,0,_loc8_);
         }
         ++this.§&!$§;
         this.§<v§.addChild(_loc8_.sprite);
         return _loc8_;
      }
      
      protected function initializeSlingshotObject(param1:§"t§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §`"]§
      {
         return new §`"]§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
      }
      
      public function §8"F§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §1!V§)
         {
            this.§#o§();
            this.§1J§ = 1000;
         }
         else if(this.mSlingShotState == §<"F§)
         {
            this.§#o§();
            this.§1J§ = 0;
         }
         else if(this.mSlingShotState == §,"K§)
         {
            this.§1J§ = 10000;
            this.§+"t§ = false;
            this.§#o§();
         }
         else if(this.mSlingShotState == §2"R§)
         {
            this.§#o§();
            this.§1J§ = 2000;
         }
         else if(this.mSlingShotState == §?R§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§+"t§ = false;
               this.§#o§();
               this.§,!?§[this.§72§].setPosition(this.§,!!§ - this.§,!?§[this.§72§].radius * Math.cos(this.§7"1§ / (180 / Math.PI)),this.§;#A§ + this.§,!?§[this.§72§].radius * Math.sin(this.§7"1§ / (180 / Math.PI)),180 - this.§7"1§);
            }
            else
            {
               this.§#o§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §-"Z§() : §#_§
      {
         return this.§2#G§;
      }
      
      public function §0#Y§() : Boolean
      {
         return this.mSlingShotState == §2"R§ && this.§1J§ <= 0;
      }
      
      protected function §>"5§() : §>"G§
      {
         return this.§2#G§.animationManager.getAnimation("SLINGSHOT");
      }
      
      private function §4"Q§() : void
      {
         this.§6e§ = this.§>"5§();
         this.§"#S§ = this.§6e§.getFrame(0);
         this.§"#S§.pivotX = -3;
         this.§"#S§.pivotY = -24;
         this.§-4§ = this.§6e§.getFrame(1);
         this.§-4§.pivotX = -30;
         this.§-4§.pivotY = -30;
         this.§ e§();
         this.§@P§();
         this.§0!4§ = new Sprite();
         this.§0!4§.addChild(this.§"#S§);
         this.§0!4§.addChild(this.§@s§);
         this.§]#%§ = new Sprite();
         this.§<v§ = new Sprite();
         this.§9"h§ = new Sprite();
         this.§9"h§.addChild(this.§]<§);
         this.§9"h§.addChild(this.§4I§);
         this.§9"h§.addChild(this.§-4§);
         this.§%!Q§();
      }
      
      protected function §%!Q§() : void
      {
         this.§%G§.addChild(this.§0!4§);
         this.§%G§.addChild(this.§]#%§);
         this.§%G§.addChild(this.§<v§);
         this.§%G§.addChild(this.§9"h§);
      }
      
      public function § e§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§9"C§ = this.§8!+§;
         this.§-#;§ = this.§=!Z§;
         this.§"!S§ = §0"x§.§,b§;
         _loc1_ = null;
      }
      
      protected function getRopeImage(param1:uint) : DisplayObject
      {
         return new §2"D§(2,2,param1);
      }
      
      protected function getHolsterImage(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc3_:BitmapData = null;
         if(!§&n§ || param2)
         {
            _loc3_ = new BitmapData(18,26,true,4278190080 | param1);
            if(§&n§)
            {
               this.§2#G§.textureManager.unregisterBitmapDataTexture(§&n§);
            }
            §&n§ = this.§2#G§.textureManager.getTextureFromBitmapData(_loc3_);
         }
         return new §#"t§(§&n§);
      }
      
      protected function §@P§(param1:uint = 3151368, param2:uint = 3151368, param3:Boolean = false) : void
      {
         this.§]<§ = new Sprite();
         this.§;Y§ = new Sprite();
         var _loc4_:DisplayObject;
         (_loc4_ = this.getHolsterImage(param2,param3)).rotation = Math.PI;
         _loc4_.x = _loc4_.width / 2;
         _loc4_.y = _loc4_.height / 2;
         this.§;Y§.addChild(_loc4_);
         this.§]<§.addChild(this.§;Y§);
         this.§@s§ = new Sprite();
         this.§@s§.x = 22;
         this.§@s§.y = 0;
         this.§<"f§ = this.getRopeImage(param1);
         this.§@s§.addChild(this.§<"f§);
         this.§4I§ = new Sprite();
         this.§4I§.x = -17;
         this.§4I§.y = 5;
         this.§1!_§ = this.getRopeImage(param1);
         this.§4I§.addChild(this.§1!_§);
      }
      
      protected function §[!2§(param1:Number) : void
      {
         var _loc2_:Number = (this.§;#A§ - this.§=!Z§) / §#_§.§8]§;
         var _loc3_:Number = (this.§,!!§ - this.§8!+§) / §#_§.§8]§;
         var _loc4_:Number = Math.cos(this.§[<§);
         var _loc5_:Number = Math.sin(this.§[<§);
         var _loc6_:Number = -Math.sin(this.§[<§);
         var _loc7_:Number = Math.cos(this.§[<§);
         var _loc8_:Number = _loc3_;
         var _loc9_:Number = _loc2_;
         _loc3_ = _loc8_ * _loc4_ + _loc9_ * _loc5_;
         _loc2_ = _loc8_ * _loc6_ + _loc9_ * _loc7_;
         var _loc10_:Number = 3.5 + 8 * ((this.§"!S§ - this.§["Q§) / this.§"!S§);
         this.§]<§.x = _loc3_;
         this.§]<§.y = _loc2_;
         this.§]<§.rotation = -this.§[<§ - this.§7"1§ / (180 / Math.PI);
         this.§0!4§.x = this.§8!+§ / §#_§.§8]§;
         this.§0!4§.y = this.§=!Z§ / §#_§.§8]§;
         this.§0!4§.rotation = this.§[<§;
         this.§9"h§.x = this.§8!+§ / §#_§.§8]§;
         this.§9"h§.y = this.§=!Z§ / §#_§.§8]§;
         this.§9"h§.rotation = this.§[<§;
         this.§4I§.rotation = Math.atan2(_loc2_ - this.§4I§.y,_loc3_ - this.§4I§.x);
         this.§1!_§.width = Math.sqrt(Math.pow(_loc3_ - this.§4I§.x,2) + Math.pow(_loc2_ - this.§4I§.y,2));
         this.§1!_§.height = _loc10_ * 2;
         this.§1!_§.y = -this.§1!_§.height / 2;
         this.§@s§.rotation = Math.atan2(_loc2_ - this.§@s§.y,_loc3_ - this.§@s§.x);
         this.§<"f§.width = Math.sqrt(Math.pow(_loc3_ - this.§@s§.x,2) + Math.pow(_loc2_ - this.§@s§.y,2));
         this.§<"f§.height = _loc10_ * 2;
         this.§<"f§.y = -this.§<"f§.height / 2;
         this.§["]§ = false;
      }
      
      public function useMightyEagle() : §`"]§
      {
         var _loc2_:§`"]§ = null;
         while(this.§,!?§.length > 0)
         {
            this.§%"'§(0,true);
         }
         this.§["p§();
         if(this.§,!?§.length > 0)
         {
            _loc2_ = this.§,!?§[0];
            _loc2_.setOnSlingshot(false);
         }
         var _loc1_:§`"]§ = this.addSlingshotObject("BIRD_SARDINE",this.§8!+§,this.§=!Z§,0);
         _loc1_.setOnSlingshot(true);
         _loc1_.§6<§ = false;
         this.§8"F§(§,"K§);
         return _loc1_;
      }
      
      protected function §["p§() : void
      {
         §?!r§.§"#_§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§8"F§(§?R§);
      }
      
      public function §#o§() : void
      {
         this.setNewCoordinatesForRubber(this.§9"C§,this.§-#;§ + this.§"!S§ / 8);
      }
      
      protected function get §>"o§() : Number
      {
         return this.§&##§ * this.§!#R§;
      }
      
      protected function get §["Q§() : Number
      {
         return Math.min(this.§&##§,this.§"!S§);
      }
      
      protected function get §,!!§() : Number
      {
         if(this.§&##§ >= this.§"!S§)
         {
            return this.§9"C§ + this.§"!S§ * Math.cos(this.§7"1§ / 180 * Math.PI);
         }
         return this.§9"C§ + this.§&##§ * Math.cos(this.§7"1§ / 180 * Math.PI);
      }
      
      protected function get §;#A§() : Number
      {
         if(this.§&##§ >= this.§"!S§)
         {
            return this.§-#;§ - this.§"!S§ * Math.sin(this.§7"1§ / 180 * Math.PI);
         }
         return this.§-#;§ - this.§&##§ * Math.sin(this.§7"1§ / 180 * Math.PI);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         if(this.§@##§ > 0)
         {
            return false;
         }
         var _loc4_:Number = param1 - this.§9"C§;
         var _loc5_:Number = param2 - this.§-#;§;
         var _loc6_:Number;
         if((_loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) * this.§!#R§ > this.§"!S§)
         {
            if(param3)
            {
               return false;
            }
            _loc6_ = this.§"!S§ / this.§!#R§;
         }
         var _loc7_:Number = (_loc7_ = Math.atan2(-(param2 - this.§-#;§),param1 - this.§9"C§)) * (180 / Math.PI);
         if(!this.mDragging && this.§@##§ < 0)
         {
            _loc6_ = 0.8;
            _loc7_ = -160;
         }
         if(this.§?t§)
         {
            _loc6_ = this.§[!h§(_loc6_);
         }
         return this.§0V§(_loc7_,_loc6_);
      }
      
      protected function §[!h§(param1:Number) : Number
      {
         var _loc6_:Number = NaN;
         var _loc5_:Number = this.§"!S§ / 2;
         if(param1 > _loc5_)
         {
            if(this.§7"1§ > -90 - 12 + 5 && this.§7"1§ < -90 + 12 + 5)
            {
               return _loc5_;
            }
            if(this.§7"1§ > -90 - 12 - 4 + 5 && this.§7"1§ < -90 + 12 + 4 + 5)
            {
               return Number(_loc5_ + (this.§"!S§ - _loc5_) * (Math.abs(this.§7"1§ - -90 - 5) - 12) / 4);
            }
         }
         return param1;
      }
      
      protected function §0V§(param1:Number, param2:Number) : Boolean
      {
         this.§7"1§ = param1;
         this.§&##§ = param2;
         if(this.§&##§ <= this.§"!S§ * 0.45)
         {
            this.§6"U§ = true;
         }
         else if(this.§6"U§ && this.§&##§ >= this.§"!S§ * 0.8)
         {
            this.playStretchSound();
            this.§6"U§ = false;
         }
         this.§["]§ = true;
         return true;
      }
      
      protected function playStretchSound() : void
      {
         §?!r§.§"#_§("SlingshotStreched");
      }
      
      protected function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§8!+§ + param1 * Math.cos(this.§[<§ + Math.PI / 2),this.§=!Z§ + param1 * Math.sin(this.§[<§ + Math.PI / 2),this.§[<§);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc5_:Number = param1 - this.§8!+§;
         this.§8!+§ = param1;
         var _loc6_:Number = param2 - this.§=!Z§;
         this.§=!Z§ = param2;
         this.§[<§ = param3;
         this.§-#;§ += _loc6_;
         this.§9"C§ += _loc5_;
         if(param4)
         {
            this.§[!2§(0);
         }
         this.§["]§ = true;
      }
      
      protected function §,!8§() : Number
      {
         return this.§>"o§ / this.§"!S§;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§`"]§ = this.§,!?§[this.§72§];
         var _loc3_:Number = this.§,!8§();
         if(_loc2_)
         {
            _loc1_ = _loc2_.§^"+§;
         }
         return _loc1_ * _loc3_;
      }
      
      public function getPosition() : Point
      {
         var _loc1_:§`"]§ = null;
         if(this.§,!?§.length > this.§72§)
         {
            _loc1_ = this.§,!?§[this.§72§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §[@§() : Point
      {
         return new Point(this.§9"C§,this.§-#;§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§`"]§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.§1#@§(param1);
         if(this.§["]§)
         {
            this.§[!2§(param1);
         }
         this.§1J§ -= param1;
         if(this.§1J§ < 0)
         {
            this.§1J§ = 0;
         }
         if(this.mSlingShotState != §2"R§)
         {
            this.§6#P§(param1,param2);
            _loc3_ = null;
            if(this.§,!?§.length > 0)
            {
               _loc3_ = this.§,!?§[this.§72§];
            }
            if(_loc3_)
            {
               _loc3_.§,!`§(param1);
            }
            if(!_loc3_)
            {
               this.§8"F§(§2"R§);
            }
            else if(this.mSlingShotState == §1!V§)
            {
               if(this.§1J§ <= 0)
               {
                  this.§8"F§(§<"F§);
                  _loc3_.§,!R§();
               }
            }
            else if(this.mSlingShotState == §<"F§)
            {
               if(_loc3_.§8#M§)
               {
                  this.§8"F§(§,"K§);
               }
            }
            else if(this.mSlingShotState == §,"K§)
            {
               _loc4_ = this.§,!!§ - _loc3_.radius * Math.cos(this.§7"1§ / (180 / Math.PI));
               _loc5_ = this.§;#A§ + _loc3_.radius * Math.sin(this.§7"1§ / (180 / Math.PI));
               if(this.mDragging || this.§@##§ >= 0)
               {
                  _loc3_.setPosition(_loc4_,_loc5_,180 - this.§7"1§);
               }
               else
               {
                  _loc3_.setPosition(_loc4_,_loc5_,this.angle);
               }
               if(this.§+"t§)
               {
                  this.shootCurrentBird(this.§,!8§(),this.§7"1§);
               }
            }
         }
      }
      
      public function §;"A§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§`"]§ = null;
         if(this.§,!?§.length > 0)
         {
            _loc5_ = this.§,!?§[this.§72§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2,180 - this.§7"1§);
         this.shootCurrentBird(param3,param4);
      }
      
      protected function shootBird() : void
      {
         this.§"#"§ = false;
         var _loc1_:§`"]§ = null;
         if(this.§,!?§.length > this.§72§)
         {
            _loc1_ = this.§,!?§[this.§72§];
         }
         if(!_loc1_)
         {
            return;
         }
         this.§;!6§ = new Date().time;
         this.§2#G§.shootBird(_loc1_,this.§&U§,this.§7"1§);
         this.§%"'§(this.§72§,_loc1_.§&"D§ > 0);
         this.playBirdShotSound();
         if(this.§72§ >= this.§,!?§.length)
         {
            this.§8"F§(§2"R§);
         }
         else
         {
            this.§8"F§(§1!V§);
         }
         dispatchEvent(new Event(§?!i§));
      }
      
      protected function §1#@§(param1:Number) : void
      {
         if(this.§@##§ <= 0)
         {
            return;
         }
         this.§["]§ = true;
         this.§@##§ -= param1;
         if(this.§@##§ <= 0)
         {
            this.§@##§ = 0;
         }
         var _loc2_:Number = this.§@##§ / §="@§;
         var _loc3_:Number = this.§,!p§ * Math.cos(_loc2_ * Math.PI * 8) * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_;
         this.§0V§(this.§7"1§,_loc3_);
         if(this.§@##§ == 0)
         {
            this.§@##§ = -1;
            this.§#o§();
         }
         if(this.§"#"§)
         {
            this.shootBird();
         }
      }
      
      public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         this.§&U§ = param1;
         this.§7"1§ = param2;
         this.§@##§ = §="@§;
         this.§,!p§ = this.§&##§;
         this.mDragging = false;
         this.§+"t§ = false;
         this.§"#"§ = true;
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §?!r§.§"#_§("BirdShot" + _loc1_);
      }
      
      public function §6#P§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§72§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§,!?§.length)
         {
            this.§,!?§[_loc4_].update(param1,this.mSlingShotState == §?R§,param2);
            _loc4_++;
         }
      }
      
      public function getCurrentBirdType() : String
      {
         var _loc1_:§`"]§ = null;
         if(this.§72§ < this.§,!?§.length)
         {
            _loc1_ = this.§,!?§[this.§72§];
            return _loc1_.name;
         }
         return null;
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§`"]§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§#o§();
         if(this.§["J§ >= this.§,!?§.length)
         {
            return false;
         }
         _loc1_ = this.§,!?§[this.§["J§];
         _loc1_.§7"7§(-1,true);
         _loc2_ = this.§2#G§.levelItemManager.getItem(_loc1_.name).score;
         this.showScoreForRemainingBird(_loc1_,_loc2_);
         ++this.§["J§;
         return true;
      }
      
      protected function showScoreForRemainingBird(param1:§`"]§, param2:int) : void
      {
         this.§2#G§.addScore(param2,§&'§.§1!W§,true,param1.x,param1.y - 3,§ U§.§0#`§(param1.name));
      }
      
      public function §#"+§() : int
      {
         var _loc2_:§`"]§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§,!?§)
         {
            _loc1_ += this.§2#G§.levelItemManager.getItem(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §^#U§() : int
      {
         return this.§4J§;
      }
      
      protected function groundSlingshot() : void
      {
         var _loc4_:int = 0;
         var _loc1_:int = 1000;
         var _loc2_:Number = Math.cos(this.§[<§ + Math.PI / 2) * this.§<!m§;
         var _loc3_:Number = Math.sin(this.§[<§ + Math.PI / 2) * this.§<!m§;
         while((_loc4_ = this.§2#G§.objects.§4#7§(this.§9"C§ + _loc2_,this.§-#;§ + _loc3_)) == -1)
         {
            this.applyGravity(0.1);
            if(_loc1_-- <= 0)
            {
               break;
            }
         }
         this.§@§ = -1;
      }
      
      public function §'"0§(param1:Number, param2:Number) : void
      {
         this.§%G§.x = -param1;
         this.§%G§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §,"K§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function get canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §,"K§ && this.§,!8§() >= §6!5§ && this.§@##§ < 0;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§8"F§(§,"K§);
         var _loc1_:§`"]§ = this.§,!?§[this.§72§];
         _loc1_.§7"7§(§'#2§.§##Z§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§`"]§ = this.§,!?§[this.§72§];
         _loc1_.§7"7§(§'#2§.§];§);
      }
      
      public function shoot() : void
      {
         this.§+"t§ = true;
      }
      
      protected function §%"'§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§`"]§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§,!?§[param1])
         {
            _loc3_ = this.§,!?§[param1];
            this.§<v§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.showDestructionParticles(this.§,!?§[param1]);
            }
            _loc3_.dispose();
            this.§,!?§[param1] = null;
         }
         this.§,!?§.splice(param1,1);
      }
      
      protected function showDestructionParticles(param1:§`"]§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §#_§.§8]§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §#_§.§8]§) + Math.random() * -_loc8_ * 2;
            this.§2#G§.particles.§;!0§(§ U§.§7!i§,§,!w§.§ !B§,§ U§.§'# §,param1.x + _loc7_,param1.y + _loc8_,1500,"",§ U§.§`"I§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§2#G§.particles.§;!0§(§ U§.§?#;§,§,!w§.§ !B§,§ U§.§'# §,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:§`"]§) : void
      {
         this.§%"'§(this.§,!?§.indexOf(param1));
      }
      
      public function sortBirds() : void
      {
         var _loc1_:§`"]§ = null;
         this.§,!?§.sort(this.§ !6§);
         while(this.§<v§.numChildren > 0)
         {
            this.§<v§.removeChildAt(0);
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§,!?§.length)
         {
            _loc1_ = this.§,!?§[_loc2_];
            this.§<v§.addChildAt(_loc1_.sprite,0);
            _loc2_++;
         }
      }
      
      private function § !6§(param1:§`"]§, param2:§`"]§) : Number
      {
         if(param1.§""J§ < param2.§""J§)
         {
            return -1;
         }
         if(param1.§""J§ > param2.§""J§)
         {
            return 1;
         }
         return 0;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §`"]§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§,!?§.length)
         {
            if(this.§,!?§[_loc3_])
            {
               if(this.§,!?§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§,!?§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §9"U§(param1:Number, param2:Number) : §;x§
      {
         if(param1 >= this.§8!+§ - this.§"!S§ / 4 && param1 <= this.§8!+§ + this.§"!S§ / 4 && param2 >= this.§=!Z§ - this.§"!S§ / 4 && this.§=!Z§ <= this.§=!Z§ + this.§<!m§)
         {
            return this;
         }
         return null;
      }
      
      public function §6!0§(param1:§8!B§) : void
      {
         var _loc3_:§`"]§ = null;
         var _loc4_:§5y§ = null;
         param1.slingshotX = this.§8!+§;
         param1.slingshotY = this.§=!Z§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§,!?§.length)
         {
            _loc3_ = this.§,!?§[_loc2_];
            (_loc4_ = new §5y§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.type = _loc3_.name;
            param1.§0#T§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §%"F§() : void
      {
         while(this.§,!?§.length > 0)
         {
            this.removeObject(this.§,!?§[0]);
         }
      }
      
      public function §-!!§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§,!?§.length)
         {
            if(this.§,!?§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§,!?§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§8!+§ > param1.x && this.§8!+§ < param2.x && this.§=!Z§ > param1.y && this.§=!Z§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function addNewBirdToEndOfList(param1:String, param2:Number, param3:Number, param4:Number) : §`"]§
      {
         var _loc5_:§`"]§ = this.addSlingshotObject(param1,param2,param3,param4);
         this.sortBirds();
         return _loc5_;
      }
      
      public function getBirdCount() : int
      {
         return this.§,!?§.length;
      }
      
      public function §6!^§() : int
      {
         return this.§&!$§;
      }
   }
}
