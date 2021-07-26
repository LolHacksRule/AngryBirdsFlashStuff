package §#g§
{
   import § !N§.§>!L§;
   import §,#e§.DisplayObject;
   import §,#e§.Image;
   import §,#e§.Sprite;
   import §-#]§.Texture;
   import §3"V§.§ b§;
   import §6"p§.§^"t§;
   import §7"T§.§7b§;
   import §7"o§.§##P§;
   import §7"o§.§=,§;
   import §7#$§.§?# §;
   import §8#K§.§&2§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §^"R§ extends EventDispatcher
   {
      
      public static const §%"b§:String = "slingshot_shot_bird";
      
      private static const §5!+§:int = 1800;
      
      public static const §&"[§:Number = 0.4;
      
      public static const §3!6§:int = 0;
      
      public static const §%#I§:int = 1;
      
      public static const §;D§:int = 2;
      
      public static const §`#A§:int = 3;
      
      public static const §@#+§:int = 5;
      
      public static const §@$8§:int = 6;
      
      public static const §`"y§:int = 3151368;
      
      protected static var §2!k§:Texture;
      
      protected static var §=$1§:Texture;
       
      
      protected var §#!O§:§7b§;
      
      protected var §9!E§:§8#3§;
      
      protected var §&$'§:Number;
      
      protected var §<#-§:Number;
      
      protected var §"$#§:Number;
      
      protected var §;!I§:Number = 8.5;
      
      protected var §]#G§:Number;
      
      protected var §`!+§:Number;
      
      protected var §2"w§:Number;
      
      protected var §[+§:Number;
      
      protected var §6"M§:Number = 1.0;
      
      protected var §>#V§:Boolean;
      
      protected var §!!0§:Boolean;
      
      protected var §=#I§:Boolean;
      
      protected var §-l§:Boolean = false;
      
      public var mBirds:Vector.<§1#0§>;
      
      public var mNextBirdIndex:int;
      
      protected var §`!#§:int = 0;
      
      protected var §["e§:int;
      
      protected var §3%§:Number;
      
      public var §`" §:Sprite;
      
      protected var §-#z§:Sprite;
      
      public var §@"Z§:int = 0;
      
      protected var §+"P§:Number = 0;
      
      public var mSlingShotState:int;
      
      public var §+#9§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §'W§:Boolean = false;
      
      public var §+!%§:Number;
      
      protected var §&"h§:Sprite;
      
      protected var §4!@§:Sprite;
      
      protected var §;$C§:Sprite;
      
      protected var §#$@§:DisplayObject;
      
      protected var §;#h§:Sprite;
      
      protected var §%G§:DisplayObject;
      
      protected var §8!%§:Sprite;
      
      protected var §%#y§:DisplayObject;
      
      protected var §5T§:Sprite;
      
      protected var §-$6§:Sprite;
      
      protected var §7#w§:DisplayObject;
      
      private var §8"w§:Number = 0;
      
      private var §&$0§:Number = 0;
      
      private var §#"Y§:Number = -1;
      
      private var §<!^§:Number = 0;
      
      private var §6"c§:Boolean = false;
      
      private var §+"b§:int = 0;
      
      public function §^"R§(param1:§8#3§, param2:§?# §, param3:Sprite, param4:Number = 1.0, param5:Boolean = true, param6:Boolean = true, param7:Boolean = false)
      {
         var _loc8_:int = 0;
         var _loc9_:§>!L§ = null;
         this.mBirds = new Vector.<§1#0§>();
         super();
         this.§9!E§ = param1;
         this.§&"h§ = param3;
         this.§6"M§ = param4;
         this.§>#V§ = param5;
         this.§!!0§ = param6;
         this.§=#I§ = param7;
         if(param2)
         {
            this.setPosition(param2.slingshotX,param2.slingshotY,param2.§=f§);
            this.§>"x§();
            _loc8_ = 0;
            while(_loc8_ < param2.§;M§)
            {
               _loc9_ = param2.§8"y§(_loc8_);
               this.addSlingshotObject(_loc9_.type,_loc9_.x,_loc9_.y,_loc9_.angle,_loc8_);
               _loc8_++;
            }
            this.§+"b§ = this.§`#&§();
            this.mNextBirdIndex = 0;
            if(this.mBirds.length <= 0)
            {
               §^"t§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§&$'§ + " " + this.§<#-§);
               this.setSlingShotState(§`#A§);
            }
            else
            {
               this.setSlingShotState(§3!6§);
            }
         }
         else
         {
            §^"t§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.setSlingShotState(§`#A§);
         }
         this.§+!%§ = 0;
         this.sortBirds();
         this.update(0,true);
         this.§8q§();
         this.updateAnimations(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§&"h§;
      }
      
      public function get aimingLineSprite() : Sprite
      {
         return this.§-#z§;
      }
      
      public function get §%"p§() : Number
      {
         return this.§8"w§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.mNextBirdIndex < this.mBirds.length;
      }
      
      public function get shootingAngle() : Number
      {
         return this.§+"P§;
      }
      
      public function get §1!A§() : Number
      {
         return this.§&$0§;
      }
      
      public function get x() : Number
      {
         return this.§&$'§;
      }
      
      public function get y() : Number
      {
         return this.§<#-§;
      }
      
      public function get angle() : Number
      {
         return this.§"$#§;
      }
      
      public function get §`"i§() : Boolean
      {
         return this.§!!0§;
      }
      
      public function get §2#J§() : Boolean
      {
         return this.§=#I§;
      }
      
      public function dispose() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§[-§(0);
         }
         this.mBirds = null;
         if(this.§&"h§)
         {
            this.§&"h§.dispose();
            this.§&"h§ = null;
         }
         this.§`" § = null;
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§#$@§)
         {
            this.§#$@§.color = param1;
         }
         if(this.§7#w§)
         {
            this.§7#w§.color = param1;
         }
      }
      
      public function addBirdStraightIntoSlingshot(param1:String, param2:Number, param3:Number, param4:int) : §1#0§
      {
         var _loc6_:§1#0§ = null;
         if(this.mBirds.length > 0)
         {
            (_loc6_ = this.mBirds[0]).§8! §(false);
            _loc6_.animationsEnabled = false;
         }
         var _loc5_:§1#0§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,0,param4)).§8! §(true);
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §1#0§
      {
         var _loc6_:§&2§ = this.§9!E§.levelItemManager.getItem(param1);
         var _loc7_:Sprite;
         (_loc7_ = new Sprite()).scaleX = _loc6_.scale;
         _loc7_.scaleY = _loc6_.scale;
         var _loc8_:§1#0§ = this.initializeSlingshotObject(_loc6_,param2,param3,param4,_loc7_,param5);
         if(param5 < 0)
         {
            this.mBirds.push(_loc8_);
         }
         else
         {
            this.mBirds.splice(param5,0,_loc8_);
         }
         ++this.§`!#§;
         this.§`" §.addChild(_loc8_.sprite);
         return _loc8_;
      }
      
      protected function initializeSlingshotObject(param1:§&2§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §1#0§
      {
         return new §1#0§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
      }
      
      public function setSlingShotState(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §3!6§)
         {
            this.§>"3§();
            this.§3%§ = 1000;
         }
         else if(this.mSlingShotState == §%#I§)
         {
            this.§>"3§();
            this.§3%§ = 0;
         }
         else if(this.mSlingShotState == §;D§)
         {
            this.§3%§ = 10000;
            this.§'W§ = false;
            this.§>"3§();
         }
         else if(this.mSlingShotState == §`#A§)
         {
            this.§>"3§();
            this.§3%§ = 2000;
         }
         else if(this.mSlingShotState == §@#+§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§'W§ = false;
               this.§>"3§();
               this.mBirds[this.mNextBirdIndex].setPosition(this.§]#L§ - this.mBirds[this.mNextBirdIndex].radius * Math.cos(this.§+"P§ / (180 / Math.PI)),this.§ o§ + this.mBirds[this.mNextBirdIndex].radius * Math.sin(this.§+"P§ / (180 / Math.PI)),180 - this.§+"P§);
            }
            else
            {
               this.§>"3§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §,!M§() : §8#3§
      {
         return this.§9!E§;
      }
      
      public function §'$A§() : Boolean
      {
         return this.mSlingShotState == §`#A§ && this.§3%§ <= 0;
      }
      
      protected function getSlingshotAnimation() : §7b§
      {
         return this.§9!E§.animationManager.getAnimation("SLINGSHOT");
      }
      
      private function §>"x§() : void
      {
         this.§#!O§ = this.getSlingshotAnimation();
         this.§#$@§ = this.§#!O§.getFrame(0);
         this.§#$@§.pivotX = -3;
         this.§#$@§.pivotY = -24;
         this.§7#w§ = this.§#!O§.getFrame(1);
         this.§7#w§.pivotX = -30;
         this.§7#w§.pivotY = -30;
         this.§`#,§();
         this.§8#6§();
         this.§4!@§ = new Sprite();
         this.§4!@§.addChild(this.§#$@§);
         this.§4!@§.addChild(this.§;#h§);
         this.§-#z§ = new Sprite();
         this.§`" § = new Sprite();
         this.§;$C§ = new Sprite();
         this.§;$C§.addChild(this.§5T§);
         this.§;$C§.addChild(this.§8!%§);
         this.§;$C§.addChild(this.§7#w§);
         this.§3#6§();
      }
      
      protected function §3#6§() : void
      {
         this.§&"h§.addChild(this.§4!@§);
         this.§&"h§.addChild(this.§-#z§);
         this.§&"h§.addChild(this.§`" §);
         this.§&"h§.addChild(this.§;$C§);
      }
      
      public function §`#,§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§]#G§ = this.§&$'§;
         this.§`!+§ = this.§<#-§;
         this.§[+§ = §7#E§.§4!k§;
         _loc1_ = null;
      }
      
      private function §&-§(param1:uint) : void
      {
         var _loc2_:BitmapData = new BitmapData(2,2,true,4278190080 | param1);
         if(§=$1§)
         {
            this.§9!E§.textureManager.unregisterBitmapDataTexture(§=$1§);
         }
         §=$1§ = this.§9!E§.textureManager.getTextureFromBitmapData(_loc2_);
      }
      
      protected function §8$;§() : DisplayObject
      {
         return new Image(§=$1§);
      }
      
      protected function §8$!§(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc3_:BitmapData = null;
         if(!§2!k§ || param2)
         {
            _loc3_ = new BitmapData(18,26,true,4278190080 | param1);
            if(§2!k§)
            {
               this.§9!E§.textureManager.unregisterBitmapDataTexture(§2!k§);
            }
            §2!k§ = this.§9!E§.textureManager.getTextureFromBitmapData(_loc3_);
         }
         return new Image(§2!k§);
      }
      
      protected function §8#6§(param1:uint = 3151368, param2:uint = 3151368, param3:Boolean = false) : void
      {
         this.§5T§ = new Sprite();
         this.§-$6§ = new Sprite();
         var _loc4_:DisplayObject;
         (_loc4_ = this.§8$!§(param2,param3)).rotation = Math.PI;
         _loc4_.x = _loc4_.width / 2;
         _loc4_.y = _loc4_.height / 2;
         this.§-$6§.addChild(_loc4_);
         this.§5T§.addChild(this.§-$6§);
         this.§;#h§ = new Sprite();
         this.§;#h§.x = 22;
         this.§;#h§.y = 0;
         this.§&-§(param1);
         this.§%G§ = this.§8$;§();
         this.§;#h§.addChild(this.§%G§);
         this.§8!%§ = new Sprite();
         this.§8!%§.x = -17;
         this.§8!%§.y = 5;
         this.§%#y§ = this.§8$;§();
         this.§8!%§.addChild(this.§%#y§);
      }
      
      protected function updateAnimations(param1:Number) : void
      {
         var _loc2_:Number = (this.§ o§ - this.§<#-§) / §8#3§.§2K§;
         var _loc3_:Number = (this.§]#L§ - this.§&$'§) / §8#3§.§2K§;
         var _loc4_:Number = Math.cos(this.§"$#§);
         var _loc5_:Number = Math.sin(this.§"$#§);
         var _loc6_:Number = -Math.sin(this.§"$#§);
         var _loc7_:Number = Math.cos(this.§"$#§);
         var _loc8_:Number = _loc3_;
         var _loc9_:Number = _loc2_;
         _loc3_ = _loc8_ * _loc4_ + _loc9_ * _loc5_;
         _loc2_ = _loc8_ * _loc6_ + _loc9_ * _loc7_;
         var _loc10_:Number = 3.5 + 8 * ((this.§[+§ - this.§-$2§) / this.§[+§);
         this.§5T§.x = _loc3_;
         this.§5T§.y = _loc2_;
         this.§5T§.rotation = -this.§"$#§ - this.§+"P§ / (180 / Math.PI);
         this.§4!@§.x = this.§&$'§ / §8#3§.§2K§;
         this.§4!@§.y = this.§<#-§ / §8#3§.§2K§;
         this.§4!@§.rotation = this.§"$#§;
         this.§;$C§.x = this.§&$'§ / §8#3§.§2K§;
         this.§;$C§.y = this.§<#-§ / §8#3§.§2K§;
         this.§;$C§.rotation = this.§"$#§;
         this.§8!%§.rotation = Math.atan2(_loc2_ - this.§8!%§.y,_loc3_ - this.§8!%§.x);
         this.§%#y§.width = Math.sqrt(Math.pow(_loc3_ - this.§8!%§.x,2) + Math.pow(_loc2_ - this.§8!%§.y,2));
         this.§%#y§.height = _loc10_ * 2;
         this.§%#y§.y = -this.§%#y§.height / 2;
         this.§;#h§.rotation = Math.atan2(_loc2_ - this.§;#h§.y,_loc3_ - this.§;#h§.x);
         this.§%G§.width = Math.sqrt(Math.pow(_loc3_ - this.§;#h§.x,2) + Math.pow(_loc2_ - this.§;#h§.y,2));
         this.§%G§.height = _loc10_ * 2;
         this.§%G§.y = -this.§%G§.height / 2;
         this.§+#9§ = false;
      }
      
      public function useMightyEagle() : §1#0§
      {
         var _loc2_:§1#0§ = null;
         while(this.mBirds.length > 0)
         {
            this.§[-§(0,true);
         }
         this.§1#r§();
         if(this.mBirds.length > 0)
         {
            _loc2_ = this.mBirds[0];
            _loc2_.§8! §(false);
         }
         var _loc1_:§1#0§ = this.addSlingshotObject("BIRD_SARDINE",this.§&$'§,this.§<#-§,0);
         _loc1_.§8! §(true);
         _loc1_.animationsEnabled = false;
         this.setSlingShotState(§;D§);
         return _loc1_;
      }
      
      protected function §1#r§() : void
      {
         § b§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.setSlingShotState(§@#+§);
      }
      
      public function §>"3§() : void
      {
         this.setNewCoordinatesForRubber(this.§]#G§,this.§`!+§ + this.§[+§ / 8);
      }
      
      protected function get §1!h§() : Number
      {
         return this.§2"w§ * this.§6"M§;
      }
      
      protected function get §-$2§() : Number
      {
         return Math.min(this.§2"w§,this.§[+§);
      }
      
      protected function get §]#L§() : Number
      {
         if(this.§2"w§ >= this.§[+§)
         {
            return this.§]#G§ + this.§[+§ * Math.cos(this.§+"P§ / 180 * Math.PI);
         }
         return this.§]#G§ + this.§2"w§ * Math.cos(this.§+"P§ / 180 * Math.PI);
      }
      
      protected function get § o§() : Number
      {
         if(this.§2"w§ >= this.§[+§)
         {
            return this.§`!+§ - this.§[+§ * Math.sin(this.§+"P§ / 180 * Math.PI);
         }
         return this.§`!+§ - this.§2"w§ * Math.sin(this.§+"P§ / 180 * Math.PI);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         if(this.§#"Y§ > 0)
         {
            return false;
         }
         var _loc4_:Number = param1 - this.§]#G§;
         var _loc5_:Number = param2 - this.§`!+§;
         var _loc6_:Number;
         if((_loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) * this.§6"M§ > this.§[+§)
         {
            if(param3)
            {
               return false;
            }
            _loc6_ = this.§[+§ / this.§6"M§;
         }
         var _loc7_:Number = (_loc7_ = Math.atan2(-(param2 - this.§`!+§),param1 - this.§]#G§)) * (180 / Math.PI);
         if(!this.mDragging && this.§#"Y§ < 0)
         {
            _loc6_ = 0.8;
            _loc7_ = -160;
         }
         if(this.§>#V§)
         {
            _loc6_ = this.§ "a§(_loc6_);
         }
         return this.§[$'§(_loc7_,_loc6_);
      }
      
      protected function § "a§(param1:Number) : Number
      {
         var _loc6_:Number = NaN;
         var _loc5_:Number = this.§[+§ / 2;
         if(param1 > _loc5_)
         {
            if(this.§+"P§ > -90 - 12 + 5 && this.§+"P§ < -90 + 12 + 5)
            {
               return _loc5_;
            }
            if(this.§+"P§ > -90 - 12 - 4 + 5 && this.§+"P§ < -90 + 12 + 4 + 5)
            {
               return Number(_loc5_ + (this.§[+§ - _loc5_) * (Math.abs(this.§+"P§ - -90 - 5) - 12) / 4);
            }
         }
         return param1;
      }
      
      protected function §[$'§(param1:Number, param2:Number) : Boolean
      {
         this.§+"P§ = param1;
         this.§2"w§ = param2;
         if(this.§2"w§ <= this.§[+§ * 0.45)
         {
            this.§-l§ = true;
         }
         else if(this.§-l§ && this.§2"w§ >= this.§[+§ * 0.8)
         {
            this.playStretchSound();
            this.§-l§ = false;
         }
         this.§+#9§ = true;
         return true;
      }
      
      protected function playStretchSound() : void
      {
         § b§.playSound("SlingshotStreched");
      }
      
      protected function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§&$'§ + param1 * Math.cos(this.§"$#§ + Math.PI / 2),this.§<#-§ + param1 * Math.sin(this.§"$#§ + Math.PI / 2),this.§"$#§);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc5_:Number = param1 - this.§&$'§;
         this.§&$'§ = param1;
         var _loc6_:Number = param2 - this.§<#-§;
         this.§<#-§ = param2;
         this.§"$#§ = param3;
         this.§`!+§ += _loc6_;
         this.§]#G§ += _loc5_;
         if(param4)
         {
            this.updateAnimations(0);
         }
         this.§+#9§ = true;
      }
      
      protected function §>"8§() : Number
      {
         return this.§1!h§ / this.§[+§;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§1#0§ = this.mBirds[this.mNextBirdIndex];
         var _loc3_:Number = this.§>"8§();
         if(_loc2_)
         {
            _loc1_ = _loc2_.§3$9§;
         }
         return _loc1_ * _loc3_;
      }
      
      public function getPosition() : Point
      {
         var _loc1_:§1#0§ = null;
         if(this.mBirds.length > this.mNextBirdIndex)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §7"1§() : Point
      {
         return new Point(this.§]#G§,this.§`!+§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§1#0§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.§0#q§(param1);
         if(this.§+#9§)
         {
            this.updateAnimations(param1);
         }
         this.§3%§ -= param1;
         if(this.§3%§ < 0)
         {
            this.§3%§ = 0;
         }
         if(this.mSlingShotState != §`#A§)
         {
            this.§^"-§(param1,param2);
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
               this.setSlingShotState(§`#A§);
            }
            else if(this.mSlingShotState == §3!6§)
            {
               if(this.§3%§ <= 0)
               {
                  this.setSlingShotState(§%#I§);
                  _loc3_.§,X§();
               }
            }
            else if(this.mSlingShotState == §%#I§)
            {
               if(_loc3_.§,!p§)
               {
                  this.setSlingShotState(§;D§);
               }
            }
            else if(this.mSlingShotState == §;D§)
            {
               _loc4_ = this.§]#L§ - _loc3_.radius * Math.cos(this.§+"P§ / (180 / Math.PI));
               _loc5_ = this.§ o§ + _loc3_.radius * Math.sin(this.§+"P§ / (180 / Math.PI));
               if(this.mDragging || this.§#"Y§ >= 0)
               {
                  _loc3_.setPosition(_loc4_,_loc5_,180 - this.§+"P§);
               }
               else
               {
                  _loc3_.setPosition(_loc4_,_loc5_,this.angle);
               }
               if(this.§'W§)
               {
                  this.shootCurrentBird(this.§>"8§(),this.§+"P§);
               }
            }
         }
      }
      
      public function §8"<§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§1#0§ = null;
         if(this.mBirds.length > 0)
         {
            _loc5_ = this.mBirds[this.mNextBirdIndex];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2,180 - this.§+"P§);
         this.shootCurrentBird(param3,param4);
      }
      
      protected function shootBird() : void
      {
         this.§6"c§ = false;
         var _loc1_:§1#0§ = null;
         if(this.mBirds.length > this.mNextBirdIndex)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
         }
         if(!_loc1_)
         {
            return;
         }
         this.§8"w§ = new Date().time;
         this.§9!E§.shootBird(_loc1_,this.§&$0§,this.§+"P§);
         this.§[-§(this.mNextBirdIndex,_loc1_.§8#T§ > 0);
         this.playBirdShotSound();
         if(this.mNextBirdIndex >= this.mBirds.length)
         {
            this.setSlingShotState(§`#A§);
         }
         else
         {
            this.setSlingShotState(§3!6§);
         }
         dispatchEvent(new Event(§%"b§));
      }
      
      protected function §0#q§(param1:Number) : void
      {
         if(this.§#"Y§ <= 0)
         {
            return;
         }
         this.§+#9§ = true;
         this.§#"Y§ -= param1;
         if(this.§#"Y§ <= 0)
         {
            this.§#"Y§ = 0;
         }
         var _loc2_:Number = this.§#"Y§ / §5!+§;
         var _loc3_:Number = this.§<!^§ * Math.cos(_loc2_ * Math.PI * 8) * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_;
         this.§[$'§(this.§+"P§,_loc3_);
         if(this.§#"Y§ == 0)
         {
            this.§#"Y§ = -1;
            this.§>"3§();
         }
         if(this.§6"c§)
         {
            this.shootBird();
         }
      }
      
      public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         this.§&$0§ = param1;
         this.§+"P§ = param2;
         this.§#"Y§ = §5!+§;
         this.§<!^§ = this.§2"w§;
         this.mDragging = false;
         this.§'W§ = false;
         this.§6"c§ = true;
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         § b§.playSound("bird_shot-a" + _loc1_);
      }
      
      public function §^"-§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.mNextBirdIndex;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.mBirds.length)
         {
            this.mBirds[_loc4_].update(param1,this.mSlingShotState == §@#+§,param2);
            _loc4_++;
         }
      }
      
      public function getCurrentBirdType() : String
      {
         var _loc1_:§1#0§ = null;
         if(this.mNextBirdIndex < this.mBirds.length)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
            return _loc1_.name;
         }
         return null;
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§1#0§ = null;
         this.mDragging = false;
         this.§>"3§();
         if(this.§["e§ >= this.mBirds.length)
         {
            return false;
         }
         _loc1_ = this.mBirds[this.§["e§];
         if(_loc1_.§##7§)
         {
            _loc1_.§4#y§(true);
            this.showScoreForRemainingBird(_loc1_,this.§9!E§.levelItemManager.getItem(_loc1_.name).destroyedScoreInc);
            this.mBirds[this.§["e§].scoreCounted = true;
            ++this.§["e§;
         }
         else
         {
            this.mBirds[this.§["e§].scoreCounted = false;
            ++this.§["e§;
         }
         return true;
      }
      
      protected function showScoreForRemainingBird(param1:§1#0§, param2:int) : void
      {
         this.§9!E§.addScore(param2,§%!a§.§+#k§,true,param1.x,param1.y - 3,§=,§.§[!`§(param1.name),param1.levelItem.floatingScoreFont);
      }
      
      public function §`#&§() : int
      {
         var _loc2_:§1#0§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mBirds)
         {
            _loc1_ += this.§9!E§.levelItemManager.getItem(_loc2_.name).destroyedScoreInc;
         }
         return _loc1_;
      }
      
      public function §@"=§() : int
      {
         var _loc2_:§1#0§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mBirds)
         {
            if(!_loc2_.scoreCounted)
            {
               _loc1_ += this.§9!E§.levelItemManager.getItem(_loc2_.name).destroyedScoreInc;
            }
         }
         return _loc1_;
      }
      
      public function §5!t§() : int
      {
         return this.§+"b§;
      }
      
      protected function §8q§() : void
      {
         var _loc4_:int = 0;
         var _loc1_:int = 1000;
         var _loc2_:Number = Math.cos(this.§"$#§ + Math.PI / 2) * this.§;!I§;
         var _loc3_:Number = Math.sin(this.§"$#§ + Math.PI / 2) * this.§;!I§;
         while((_loc4_ = this.§9!E§.objects.§`#M§(this.§]#G§ + _loc2_,this.§`!+§ + _loc3_)) == -1)
         {
            this.applyGravity(0.1);
            if(_loc1_-- <= 0)
            {
               break;
            }
         }
         this.§+!%§ = -1;
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§&"h§.x = -param1;
         this.§&"h§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §;D§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function get canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §;D§ && this.§>"8§() >= §&"[§ && this.§#"Y§ < 0;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.setSlingShotState(§;D§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
      }
      
      public function shoot() : void
      {
         this.§'W§ = true;
      }
      
      protected function §[-§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§1#0§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.mBirds[param1])
         {
            _loc3_ = this.mBirds[param1];
            this.§`" §.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.showDestructionParticles(this.mBirds[param1]);
            }
            _loc3_.dispose();
            this.mBirds[param1] = null;
         }
         this.mBirds.splice(param1,1);
      }
      
      protected function showDestructionParticles(param1:§1#0§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §8#3§.§2K§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §8#3§.§2K§) + Math.random() * -_loc8_ * 2;
            this.§9!E§.particles.addParticle(§=,§.§^#Y§,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,param1.x + _loc7_,param1.y + _loc8_,1500,"",§=,§.getParticleMaterialFromEngineMaterial(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§9!E§.particles.addParticle(§=,§.§,$?§,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:§1#0§) : void
      {
         this.§[-§(this.mBirds.indexOf(param1));
      }
      
      public function sortBirds() : void
      {
         var _loc1_:§1#0§ = null;
         this.mBirds.sort(this.§?!a§);
         while(this.§`" §.numChildren > 0)
         {
            this.§`" §.removeChildAt(0);
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_ = this.mBirds[_loc2_];
            this.§`" §.addChildAt(_loc1_.sprite,0);
            _loc2_++;
         }
      }
      
      private function §?!a§(param1:§1#0§, param2:§1#0§) : Number
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
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §1#0§
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
      
      public function §==§(param1:Number, param2:Number) : §^"R§
      {
         if(param1 >= this.§&$'§ - this.§[+§ / 4 && param1 <= this.§&$'§ + this.§[+§ / 4 && param2 >= this.§<#-§ - this.§[+§ / 4 && param2 <= this.§<#-§ + this.§;!I§)
         {
            return this;
         }
         return null;
      }
      
      public function §[!b§(param1:§?# §) : void
      {
         var _loc3_:§1#0§ = null;
         var _loc4_:§>!L§ = null;
         param1.slingshotX = this.§&$'§;
         param1.slingshotY = this.§<#-§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc3_ = this.mBirds[_loc2_];
            (_loc4_ = new §>!L§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.type = _loc3_.name;
            param1.§"#j§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §!#]§() : void
      {
         while(this.mBirds.length > 0)
         {
            this.removeObject(this.mBirds[0]);
         }
      }
      
      public function §>$!§(param1:Point, param2:Point) : Array
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
         if(this.§&$'§ > param1.x && this.§&$'§ < param2.x && this.§<#-§ > param1.y && this.§<#-§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §%"[§(param1:String, param2:Number, param3:Number, param4:Number) : §1#0§
      {
         var _loc5_:§1#0§ = this.addSlingshotObject(param1,param2,param3,param4);
         this.§<#s§();
         return _loc5_;
      }
      
      public function §4#$§() : int
      {
         return this.mBirds.length;
      }
      
      public function §^"]§() : int
      {
         return this.§`!#§;
      }
      
      public function §<#s§() : void
      {
         this.mBirds.sort(this.§9"`§);
         var _loc1_:int = 0;
         while(_loc1_ < this.mBirds.length)
         {
            this.mBirds[_loc1_].launchIndex = _loc1_;
            _loc1_++;
         }
         this.mNextBirdIndex = 0;
      }
      
      private function §9"`§(param1:§1#0§, param2:§1#0§) : Number
      {
         var _loc3_:Number = Math.pow(param1.x - this.§&$'§,2) + Math.pow(param1.y - this.§<#-§,2);
         var _loc4_:Number = Math.pow(param2.x - this.§&$'§,2) + Math.pow(param2.y - this.§<#-§,2);
         return _loc3_ - _loc4_;
      }
   }
}
