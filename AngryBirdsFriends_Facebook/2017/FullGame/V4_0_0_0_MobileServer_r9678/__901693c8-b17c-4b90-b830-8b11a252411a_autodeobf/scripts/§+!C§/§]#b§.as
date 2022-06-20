package §+!C§
{
   import §&!v§.DisplayObject;
   import §&!v§.Image;
   import §&!v§.Sprite;
   import §-"+§.Texture;
   import §1#W§.§!#&§;
   import §6$"§.§["=§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import §<"p§.§?!T§;
   import §@#§.§]#B§;
   import §^$1§.§2"^§;
   import §^$1§.§7"6§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §]#b§ extends EventDispatcher
   {
      
      public static const §2!Q§:String = "slingshot_shot_bird";
      
      private static const §@"q§:int = 1800;
      
      public static const §@#?§:Number = 0.4;
      
      public static const §^!x§:int = 0;
      
      public static const §9-§:int = 1;
      
      public static const §^#,§:int = 2;
      
      public static const §,$9§:int = 3;
      
      public static const §-"1§:int = 5;
      
      public static const §<2§:int = 6;
      
      public static const §9#+§:int = 3151368;
      
      protected static var §7"!§:Texture;
      
      protected static var §;f§:Texture;
       
      
      protected var §&3§:§8#B§;
      
      protected var §`=§:§!!S§;
      
      protected var §?!l§:Number;
      
      protected var §`"T§:Number;
      
      protected var §;"A§:Number;
      
      protected var §!!z§:Number = 8.5;
      
      protected var §3"n§:Number;
      
      protected var §+!n§:Number;
      
      protected var §`!M§:Number;
      
      protected var §1$0§:Number;
      
      protected var §"b§:Number = 1.0;
      
      protected var §<#Z§:Boolean;
      
      protected var §5!'§:Boolean;
      
      protected var §8"H§:Boolean;
      
      protected var §0$$§:Boolean = false;
      
      public var mBirds:Vector.<§@"@§>;
      
      public var mNextBirdIndex:int;
      
      protected var § #3§:int = 0;
      
      protected var §-"?§:int;
      
      protected var §`#^§:Number;
      
      public var §]§:Sprite;
      
      protected var §+L§:Sprite;
      
      public var §<#$§:int = 0;
      
      protected var §@!t§:Number = 0;
      
      public var mSlingShotState:int;
      
      public var §["S§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §'!w§:Boolean = false;
      
      public var §@#>§:Number;
      
      protected var §'$&§:Sprite;
      
      protected var §?#T§:Sprite;
      
      protected var §`#p§:Sprite;
      
      protected var §3"L§:DisplayObject;
      
      protected var §-"l§:Sprite;
      
      protected var §,Y§:DisplayObject;
      
      protected var §9e§:Sprite;
      
      protected var §;#§:DisplayObject;
      
      protected var §""X§:Sprite;
      
      protected var §;#l§:Sprite;
      
      protected var §8!n§:DisplayObject;
      
      private var §>$1§:Number = 0;
      
      private var §80§:Number = 0;
      
      private var §;§:Number = -1;
      
      private var §5$$§:Number = 0;
      
      private var §="S§:Boolean = false;
      
      private var §'"[§:int = 0;
      
      public function §]#b§(param1:§!!S§, param2:§]#B§, param3:Sprite, param4:Number = 1.0, param5:Boolean = true, param6:Boolean = true, param7:Boolean = false)
      {
         var _loc8_:int = 0;
         var _loc9_:§["=§ = null;
         this.mBirds = new Vector.<§@"@§>();
         super();
         this.§`=§ = param1;
         this.§'$&§ = param3;
         this.§"b§ = param4;
         this.§<#Z§ = param5;
         this.§5!'§ = param6;
         this.§8"H§ = param7;
         if(param2)
         {
            this.setPosition(param2.slingshotX,param2.slingshotY,param2.§-n§);
            this.§0#u§();
            _loc8_ = 0;
            while(_loc8_ < param2.§'# §)
            {
               _loc9_ = param2.§'#M§(_loc8_);
               this.addSlingshotObject(_loc9_.type,_loc9_.x,_loc9_.y,_loc9_.angle,_loc8_);
               _loc8_++;
            }
            this.§'"[§ = this.§'"O§();
            this.mNextBirdIndex = 0;
            if(this.mBirds.length <= 0)
            {
               §?!T§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§?!l§ + " " + this.§`"T§);
               this.setSlingShotState(§,$9§);
            }
            else
            {
               this.setSlingShotState(§^!x§);
            }
         }
         else
         {
            §?!T§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.setSlingShotState(§,$9§);
         }
         this.§@#>§ = 0;
         this.§1C§();
         this.update(0,true);
         this.§@#y§();
         this.updateAnimations(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§'$&§;
      }
      
      public function get aimingLineSprite() : Sprite
      {
         return this.§+L§;
      }
      
      public function get §;!i§() : Number
      {
         return this.§>$1§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.mNextBirdIndex < this.mBirds.length;
      }
      
      public function get shootingAngle() : Number
      {
         return this.§@!t§;
      }
      
      public function get §[$3§() : Number
      {
         return this.§80§;
      }
      
      public function get x() : Number
      {
         return this.§?!l§;
      }
      
      public function get y() : Number
      {
         return this.§`"T§;
      }
      
      public function get angle() : Number
      {
         return this.§;"A§;
      }
      
      public function get §'$#§() : Boolean
      {
         return this.§5!'§;
      }
      
      public function get §@#u§() : Boolean
      {
         return this.§8"H§;
      }
      
      public function dispose() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§ #J§(0);
         }
         this.mBirds = null;
         if(this.§'$&§)
         {
            this.§'$&§.dispose();
            this.§'$&§ = null;
         }
         this.§]§ = null;
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§3"L§)
         {
            this.§3"L§.color = param1;
         }
         if(this.§8!n§)
         {
            this.§8!n§.color = param1;
         }
      }
      
      public function addBirdStraightIntoSlingshot(param1:String, param2:Number, param3:Number, param4:int) : §@"@§
      {
         var _loc6_:§@"@§ = null;
         if(this.mBirds.length > 0)
         {
            (_loc6_ = this.mBirds[0]).§'!N§(false);
            _loc6_.animationsEnabled = false;
         }
         var _loc5_:§@"@§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,0,param4)).§'!N§(true);
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §@"@§
      {
         var _loc6_:§!"v§ = this.§`=§.levelItemManager.getItem(param1);
         var _loc7_:Sprite;
         (_loc7_ = new Sprite()).scaleX = _loc6_.scale;
         _loc7_.scaleY = _loc6_.scale;
         var _loc8_:§@"@§ = this.initializeSlingshotObject(_loc6_,param2,param3,param4,_loc7_,param5);
         if(param5 < 0)
         {
            this.mBirds.push(_loc8_);
         }
         else
         {
            this.mBirds.splice(param5,0,_loc8_);
         }
         ++this.§ #3§;
         this.§]§.addChild(_loc8_.sprite);
         return _loc8_;
      }
      
      protected function initializeSlingshotObject(param1:§!"v§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §@"@§
      {
         return new §@"@§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
      }
      
      public function setSlingShotState(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §^!x§)
         {
            this.§9">§();
            this.§`#^§ = 1000;
         }
         else if(this.mSlingShotState == §9-§)
         {
            this.§9">§();
            this.§`#^§ = 0;
         }
         else if(this.mSlingShotState == §^#,§)
         {
            this.§`#^§ = 10000;
            this.§'!w§ = false;
            this.§9">§();
         }
         else if(this.mSlingShotState == §,$9§)
         {
            this.§9">§();
            this.§`#^§ = 2000;
         }
         else if(this.mSlingShotState == §-"1§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§'!w§ = false;
               this.§9">§();
               this.mBirds[this.mNextBirdIndex].setPosition(this.§!$$§ - this.mBirds[this.mNextBirdIndex].radius * Math.cos(this.§@!t§ / (180 / Math.PI)),this.§7!R§ + this.mBirds[this.mNextBirdIndex].radius * Math.sin(this.§@!t§ / (180 / Math.PI)),180 - this.§@!t§);
            }
            else
            {
               this.§9">§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §"!!§() : §!!S§
      {
         return this.§`=§;
      }
      
      public function §8#r§() : Boolean
      {
         return this.mSlingShotState == §,$9§ && this.§`#^§ <= 0;
      }
      
      protected function getSlingshotAnimation() : §8#B§
      {
         return this.§`=§.animationManager.getAnimation("SLINGSHOT");
      }
      
      private function §0#u§() : void
      {
         this.§&3§ = this.getSlingshotAnimation();
         this.§3"L§ = this.§&3§.getFrame(0);
         this.§3"L§.pivotX = -3;
         this.§3"L§.pivotY = -24;
         this.§8!n§ = this.§&3§.getFrame(1);
         this.§8!n§.pivotX = -30;
         this.§8!n§.pivotY = -30;
         this.§?!H§();
         this.§?!v§();
         this.§?#T§ = new Sprite();
         this.§?#T§.addChild(this.§3"L§);
         this.§?#T§.addChild(this.§-"l§);
         this.§+L§ = new Sprite();
         this.§]§ = new Sprite();
         this.§`#p§ = new Sprite();
         this.§`#p§.addChild(this.§""X§);
         this.§`#p§.addChild(this.§9e§);
         this.§`#p§.addChild(this.§8!n§);
         this.§2"g§();
      }
      
      protected function §2"g§() : void
      {
         this.§'$&§.addChild(this.§?#T§);
         this.§'$&§.addChild(this.§+L§);
         this.§'$&§.addChild(this.§]§);
         this.§'$&§.addChild(this.§`#p§);
      }
      
      public function §?!H§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§3"n§ = this.§?!l§;
         this.§+!n§ = this.§`"T§;
         this.§1$0§ = §1!$§.§4#L§;
         _loc1_ = null;
      }
      
      private function § #M§(param1:uint) : void
      {
         var _loc2_:BitmapData = new BitmapData(2,2,true,4278190080 | param1);
         if(§;f§)
         {
            this.§`=§.textureManager.unregisterBitmapDataTexture(§;f§);
         }
         §;f§ = this.§`=§.textureManager.getTextureFromBitmapData(_loc2_);
      }
      
      protected function §7#8§() : DisplayObject
      {
         return new Image(§;f§);
      }
      
      protected function §["c§(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc3_:BitmapData = null;
         if(!§7"!§ || param2)
         {
            _loc3_ = new BitmapData(18,26,true,4278190080 | param1);
            if(§7"!§)
            {
               this.§`=§.textureManager.unregisterBitmapDataTexture(§7"!§);
            }
            §7"!§ = this.§`=§.textureManager.getTextureFromBitmapData(_loc3_);
         }
         return new Image(§7"!§);
      }
      
      protected function §?!v§(param1:uint = 3151368, param2:uint = 3151368, param3:Boolean = false) : void
      {
         this.§""X§ = new Sprite();
         this.§;#l§ = new Sprite();
         var _loc4_:DisplayObject;
         (_loc4_ = this.§["c§(param2,param3)).rotation = Math.PI;
         _loc4_.x = _loc4_.width / 2;
         _loc4_.y = _loc4_.height / 2;
         this.§;#l§.addChild(_loc4_);
         this.§""X§.addChild(this.§;#l§);
         this.§-"l§ = new Sprite();
         this.§-"l§.x = 22;
         this.§-"l§.y = 0;
         this.§ #M§(param1);
         this.§,Y§ = this.§7#8§();
         this.§-"l§.addChild(this.§,Y§);
         this.§9e§ = new Sprite();
         this.§9e§.x = -17;
         this.§9e§.y = 5;
         this.§;#§ = this.§7#8§();
         this.§9e§.addChild(this.§;#§);
      }
      
      protected function updateAnimations(param1:Number) : void
      {
         var _loc2_:Number = (this.§7!R§ - this.§`"T§) / §!!S§.§,"3§;
         var _loc3_:Number = (this.§!$$§ - this.§?!l§) / §!!S§.§,"3§;
         var _loc4_:Number = Math.cos(this.§;"A§);
         var _loc5_:Number = Math.sin(this.§;"A§);
         var _loc6_:Number = -Math.sin(this.§;"A§);
         var _loc7_:Number = Math.cos(this.§;"A§);
         var _loc8_:Number = _loc3_;
         var _loc9_:Number = _loc2_;
         _loc3_ = _loc8_ * _loc4_ + _loc9_ * _loc5_;
         _loc2_ = _loc8_ * _loc6_ + _loc9_ * _loc7_;
         var _loc10_:Number = 3.5 + 8 * ((this.§1$0§ - this.§8+§) / this.§1$0§);
         this.§""X§.x = _loc3_;
         this.§""X§.y = _loc2_;
         this.§""X§.rotation = -this.§;"A§ - this.§@!t§ / (180 / Math.PI);
         this.§?#T§.x = this.§?!l§ / §!!S§.§,"3§;
         this.§?#T§.y = this.§`"T§ / §!!S§.§,"3§;
         this.§?#T§.rotation = this.§;"A§;
         this.§`#p§.x = this.§?!l§ / §!!S§.§,"3§;
         this.§`#p§.y = this.§`"T§ / §!!S§.§,"3§;
         this.§`#p§.rotation = this.§;"A§;
         this.§9e§.rotation = Math.atan2(_loc2_ - this.§9e§.y,_loc3_ - this.§9e§.x);
         this.§;#§.width = Math.sqrt(Math.pow(_loc3_ - this.§9e§.x,2) + Math.pow(_loc2_ - this.§9e§.y,2));
         this.§;#§.height = _loc10_ * 2;
         this.§;#§.y = -this.§;#§.height / 2;
         this.§-"l§.rotation = Math.atan2(_loc2_ - this.§-"l§.y,_loc3_ - this.§-"l§.x);
         this.§,Y§.width = Math.sqrt(Math.pow(_loc3_ - this.§-"l§.x,2) + Math.pow(_loc2_ - this.§-"l§.y,2));
         this.§,Y§.height = _loc10_ * 2;
         this.§,Y§.y = -this.§,Y§.height / 2;
         this.§["S§ = false;
      }
      
      public function useMightyEagle() : §@"@§
      {
         var _loc2_:§@"@§ = null;
         while(this.mBirds.length > 0)
         {
            this.§ #J§(0,true);
         }
         this.§>"W§();
         if(this.mBirds.length > 0)
         {
            _loc2_ = this.mBirds[0];
            _loc2_.§'!N§(false);
         }
         var _loc1_:§@"@§ = this.addSlingshotObject("BIRD_SARDINE",this.§?!l§,this.§`"T§,0);
         _loc1_.§'!N§(true);
         _loc1_.animationsEnabled = false;
         this.setSlingShotState(§^#,§);
         return _loc1_;
      }
      
      protected function §>"W§() : void
      {
         §!#&§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.setSlingShotState(§-"1§);
      }
      
      public function §9">§() : void
      {
         this.setNewCoordinatesForRubber(this.§3"n§,this.§+!n§ + this.§1$0§ / 8);
      }
      
      protected function get §2"w§() : Number
      {
         return this.§`!M§ * this.§"b§;
      }
      
      protected function get §8+§() : Number
      {
         return Math.min(this.§`!M§,this.§1$0§);
      }
      
      protected function get §!$$§() : Number
      {
         if(this.§`!M§ >= this.§1$0§)
         {
            return this.§3"n§ + this.§1$0§ * Math.cos(this.§@!t§ / 180 * Math.PI);
         }
         return this.§3"n§ + this.§`!M§ * Math.cos(this.§@!t§ / 180 * Math.PI);
      }
      
      protected function get §7!R§() : Number
      {
         if(this.§`!M§ >= this.§1$0§)
         {
            return this.§+!n§ - this.§1$0§ * Math.sin(this.§@!t§ / 180 * Math.PI);
         }
         return this.§+!n§ - this.§`!M§ * Math.sin(this.§@!t§ / 180 * Math.PI);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         if(this.§;§ > 0)
         {
            return false;
         }
         var _loc4_:Number = param1 - this.§3"n§;
         var _loc5_:Number = param2 - this.§+!n§;
         var _loc6_:Number;
         if((_loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) * this.§"b§ > this.§1$0§)
         {
            if(param3)
            {
               return false;
            }
            _loc6_ = this.§1$0§ / this.§"b§;
         }
         var _loc7_:Number = (_loc7_ = Math.atan2(-(param2 - this.§+!n§),param1 - this.§3"n§)) * (180 / Math.PI);
         if(!this.mDragging && this.§;§ < 0)
         {
            _loc6_ = 0.8;
            _loc7_ = -160;
         }
         if(this.§<#Z§)
         {
            _loc6_ = this.§ "@§(_loc6_);
         }
         return this.§+"_§(_loc7_,_loc6_);
      }
      
      protected function § "@§(param1:Number) : Number
      {
         var _loc6_:Number = NaN;
         var _loc5_:Number = this.§1$0§ / 2;
         if(param1 > _loc5_)
         {
            if(this.§@!t§ > -90 - 12 + 5 && this.§@!t§ < -90 + 12 + 5)
            {
               return _loc5_;
            }
            if(this.§@!t§ > -90 - 12 - 4 + 5 && this.§@!t§ < -90 + 12 + 4 + 5)
            {
               return Number(_loc5_ + (this.§1$0§ - _loc5_) * (Math.abs(this.§@!t§ - -90 - 5) - 12) / 4);
            }
         }
         return param1;
      }
      
      protected function §+"_§(param1:Number, param2:Number) : Boolean
      {
         this.§@!t§ = param1;
         this.§`!M§ = param2;
         if(this.§`!M§ <= this.§1$0§ * 0.45)
         {
            this.§0$$§ = true;
         }
         else if(this.§0$$§ && this.§`!M§ >= this.§1$0§ * 0.8)
         {
            this.playStretchSound();
            this.§0$$§ = false;
         }
         this.§["S§ = true;
         return true;
      }
      
      protected function playStretchSound() : void
      {
         §!#&§.playSound("SlingshotStreched");
      }
      
      protected function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§?!l§ + param1 * Math.cos(this.§;"A§ + Math.PI / 2),this.§`"T§ + param1 * Math.sin(this.§;"A§ + Math.PI / 2),this.§;"A§);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc5_:Number = param1 - this.§?!l§;
         this.§?!l§ = param1;
         var _loc6_:Number = param2 - this.§`"T§;
         this.§`"T§ = param2;
         this.§;"A§ = param3;
         this.§+!n§ += _loc6_;
         this.§3"n§ += _loc5_;
         if(param4)
         {
            this.updateAnimations(0);
         }
         this.§["S§ = true;
      }
      
      protected function §[#4§() : Number
      {
         return this.§2"w§ / this.§1$0§;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§@"@§ = this.mBirds[this.mNextBirdIndex];
         var _loc3_:Number = this.§[#4§();
         if(_loc2_)
         {
            _loc1_ = _loc2_.§6i§;
         }
         return _loc1_ * _loc3_;
      }
      
      public function getPosition() : Point
      {
         var _loc1_:§@"@§ = null;
         if(this.mBirds.length > this.mNextBirdIndex)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §0"W§() : Point
      {
         return new Point(this.§3"n§,this.§+!n§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§@"@§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.§^!I§(param1);
         if(this.§["S§)
         {
            this.updateAnimations(param1);
         }
         this.§`#^§ -= param1;
         if(this.§`#^§ < 0)
         {
            this.§`#^§ = 0;
         }
         if(this.mSlingShotState != §,$9§)
         {
            this.§'$<§(param1,param2);
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
               this.setSlingShotState(§,$9§);
            }
            else if(this.mSlingShotState == §^!x§)
            {
               if(this.§`#^§ <= 0)
               {
                  this.setSlingShotState(§9-§);
                  _loc3_.§!![§();
               }
            }
            else if(this.mSlingShotState == §9-§)
            {
               if(_loc3_.§[!9§)
               {
                  this.setSlingShotState(§^#,§);
               }
            }
            else if(this.mSlingShotState == §^#,§)
            {
               _loc4_ = this.§!$$§ - _loc3_.radius * Math.cos(this.§@!t§ / (180 / Math.PI));
               _loc5_ = this.§7!R§ + _loc3_.radius * Math.sin(this.§@!t§ / (180 / Math.PI));
               if(this.mDragging || this.§;§ >= 0)
               {
                  _loc3_.setPosition(_loc4_,_loc5_,180 - this.§@!t§);
               }
               else
               {
                  _loc3_.setPosition(_loc4_,_loc5_,this.angle);
               }
               if(this.§'!w§)
               {
                  this.shootCurrentBird(this.§[#4§(),this.§@!t§);
               }
            }
         }
      }
      
      public function § !4§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§@"@§ = null;
         if(this.mBirds.length > 0)
         {
            _loc5_ = this.mBirds[this.mNextBirdIndex];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2,180 - this.§@!t§);
         this.shootCurrentBird(param3,param4);
      }
      
      protected function shootBird() : void
      {
         this.§="S§ = false;
         var _loc1_:§@"@§ = null;
         if(this.mBirds.length > this.mNextBirdIndex)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
         }
         if(!_loc1_)
         {
            return;
         }
         this.§>$1§ = new Date().time;
         this.§`=§.shootBird(_loc1_,this.§80§,this.§@!t§);
         this.§ #J§(this.mNextBirdIndex,_loc1_.§%"n§ > 0);
         this.playBirdShotSound();
         if(this.mNextBirdIndex >= this.mBirds.length)
         {
            this.setSlingShotState(§,$9§);
         }
         else
         {
            this.setSlingShotState(§^!x§);
         }
         dispatchEvent(new Event(§2!Q§));
      }
      
      protected function §^!I§(param1:Number) : void
      {
         if(this.§;§ <= 0)
         {
            return;
         }
         this.§["S§ = true;
         this.§;§ -= param1;
         if(this.§;§ <= 0)
         {
            this.§;§ = 0;
         }
         var _loc2_:Number = this.§;§ / §@"q§;
         var _loc3_:Number = this.§5$$§ * Math.cos(_loc2_ * Math.PI * 8) * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_;
         this.§+"_§(this.§@!t§,_loc3_);
         if(this.§;§ == 0)
         {
            this.§;§ = -1;
            this.§9">§();
         }
         if(this.§="S§)
         {
            this.shootBird();
         }
      }
      
      public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         this.§80§ = param1;
         this.§@!t§ = param2;
         this.§;§ = §@"q§;
         this.§5$$§ = this.§`!M§;
         this.mDragging = false;
         this.§'!w§ = false;
         this.§="S§ = true;
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §!#&§.playSound("bird_shot-a" + _loc1_);
      }
      
      public function §'$<§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.mNextBirdIndex;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.mBirds.length)
         {
            this.mBirds[_loc4_].update(param1,this.mSlingShotState == §-"1§,param2);
            _loc4_++;
         }
      }
      
      public function getCurrentBirdType() : String
      {
         var _loc1_:§@"@§ = null;
         if(this.mNextBirdIndex < this.mBirds.length)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
            return _loc1_.name;
         }
         return null;
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§@"@§ = null;
         this.mDragging = false;
         this.§9">§();
         if(this.§-"?§ >= this.mBirds.length)
         {
            return false;
         }
         _loc1_ = this.mBirds[this.§-"?§];
         _loc1_.§"#g§(true);
         this.showScoreForRemainingBird(_loc1_,this.§`=§.levelItemManager.getItem(_loc1_.name).destroyedScoreInc);
         this.mBirds[this.§-"?§].scoreCounted = true;
         ++this.§-"?§;
         return true;
      }
      
      protected function showScoreForRemainingBird(param1:§@"@§, param2:int) : void
      {
         this.§`=§.addScore(param2,§2"b§.§5#Y§,true,param1.x,param1.y - 3,§2"^§.§9!O§(param1.name),param1.levelItem.floatingScoreFont);
      }
      
      public function §'"O§() : int
      {
         var _loc2_:§@"@§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mBirds)
         {
            _loc1_ += this.§`=§.levelItemManager.getItem(_loc2_.name).destroyedScoreInc;
         }
         return _loc1_;
      }
      
      public function §+"T§() : int
      {
         var _loc2_:§@"@§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mBirds)
         {
            if(!_loc2_.scoreCounted)
            {
               _loc1_ += this.§`=§.levelItemManager.getItem(_loc2_.name).destroyedScoreInc;
            }
         }
         return _loc1_;
      }
      
      public function §5'§() : int
      {
         return this.§'"[§;
      }
      
      protected function §@#y§() : void
      {
         var _loc4_:int = 0;
         var _loc1_:int = 1000;
         var _loc2_:Number = Math.cos(this.§;"A§ + Math.PI / 2) * this.§!!z§;
         var _loc3_:Number = Math.sin(this.§;"A§ + Math.PI / 2) * this.§!!z§;
         while((_loc4_ = this.§`=§.objects.§%$7§(this.§3"n§ + _loc2_,this.§+!n§ + _loc3_)) == -1)
         {
            this.applyGravity(0.1);
            if(_loc1_-- <= 0)
            {
               break;
            }
         }
         this.§@#>§ = -1;
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§'$&§.x = -param1;
         this.§'$&§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §^#,§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function get canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §^#,§ && this.§[#4§() >= §@#?§ && this.§;§ < 0;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.setSlingShotState(§^#,§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
      }
      
      public function shoot() : void
      {
         this.§'!w§ = true;
      }
      
      protected function § #J§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§@"@§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.mBirds[param1])
         {
            _loc3_ = this.mBirds[param1];
            this.§]§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.showDestructionParticles(this.mBirds[param1]);
            }
            _loc3_.dispose();
            this.mBirds[param1] = null;
         }
         this.mBirds.splice(param1,1);
      }
      
      protected function showDestructionParticles(param1:§@"@§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §!!S§.§,"3§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §!!S§.§,"3§) + Math.random() * -_loc8_ * 2;
            this.§`=§.particles.addParticle(§2"^§.§?w§,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,param1.x + _loc7_,param1.y + _loc8_,1500,"",§2"^§.getParticleMaterialFromEngineMaterial(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§`=§.particles.addParticle(§2"^§.§7"§,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:§@"@§) : void
      {
         this.§ #J§(this.mBirds.indexOf(param1));
      }
      
      public function §1C§() : void
      {
         var _loc1_:§@"@§ = null;
         this.mBirds.sort(this.§[!I§);
         while(this.§]§.numChildren > 0)
         {
            this.§]§.removeChildAt(0);
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_ = this.mBirds[_loc2_];
            this.§]§.addChildAt(_loc1_.sprite,0);
            _loc2_++;
         }
      }
      
      private function §[!I§(param1:§@"@§, param2:§@"@§) : Number
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
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §@"@§
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
      
      public function §&s§(param1:Number, param2:Number) : §]#b§
      {
         if(param1 >= this.§?!l§ - this.§1$0§ / 4 && param1 <= this.§?!l§ + this.§1$0§ / 4 && param2 >= this.§`"T§ - this.§1$0§ / 4 && param2 <= this.§`"T§ + this.§!!z§)
         {
            return this;
         }
         return null;
      }
      
      public function §1"p§(param1:§]#B§) : void
      {
         var _loc3_:§@"@§ = null;
         var _loc4_:§["=§ = null;
         param1.slingshotX = this.§?!l§;
         param1.slingshotY = this.§`"T§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc3_ = this.mBirds[_loc2_];
            (_loc4_ = new §["=§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.type = _loc3_.name;
            param1.§%#d§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §=!E§() : void
      {
         while(this.mBirds.length > 0)
         {
            this.removeObject(this.mBirds[0]);
         }
      }
      
      public function §3-§(param1:Point, param2:Point) : Array
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
         if(this.§?!l§ > param1.x && this.§?!l§ < param2.x && this.§`"T§ > param1.y && this.§`"T§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §2#-§(param1:String, param2:Number, param3:Number, param4:Number) : §@"@§
      {
         var _loc5_:§@"@§ = this.addSlingshotObject(param1,param2,param3,param4);
         this.§-#-§();
         return _loc5_;
      }
      
      public function §%a§() : int
      {
         return this.mBirds.length;
      }
      
      public function § "+§() : int
      {
         return this.§ #3§;
      }
      
      public function §-#-§() : void
      {
         this.mBirds.sort(this.§=!e§);
         var _loc1_:int = 0;
         while(_loc1_ < this.mBirds.length)
         {
            this.mBirds[_loc1_].launchIndex = _loc1_;
            _loc1_++;
         }
         this.mNextBirdIndex = 0;
      }
      
      private function §=!e§(param1:§@"@§, param2:§@"@§) : Number
      {
         var _loc3_:Number = Math.pow(param1.x - this.§?!l§,2) + Math.pow(param1.y - this.§`"T§,2);
         var _loc4_:Number = Math.pow(param2.x - this.§?!l§,2) + Math.pow(param2.y - this.§`"T§,2);
         return _loc3_ - _loc4_;
      }
   }
}
