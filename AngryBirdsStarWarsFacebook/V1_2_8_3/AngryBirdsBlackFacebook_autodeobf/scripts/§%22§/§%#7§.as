package §"§#0
{
   import §!!k§.§1!^§;
   import §#g§.§["%§;
   import §#g§.§^i§;
   import §&"s§.Texture;
   import §9"`§.§-"H§;
   import §=G§.§<5§;
   import §^9§.§?"E§;
   import §^9§.§^#'§;
   import §`"1§.§=Q§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §null §.§>#-§;
   import §use§.§,!u§;
   import §use§.§-"z§;
   import §use§.DisplayObject;
   import §use§.Sprite;
   
   public class §%#7§ extends EventDispatcher
   {
      
      public static const §@"8§:String = "slingshot_shot_bird";
      
      private static const §0!]§:int = 1800;
      
      public static const §,§:Number = 0.4;
      
      public static const §8!2§:int = 0;
      
      public static const final:int = 1;
      
      public static const §]!r§:int = 2;
      
      public static const §%!E§:int = 3;
      
      public static const §>k§:int = 5;
      
      public static const §##3§:int = 6;
      
      public static const §3;§:int = 3151368;
      
      protected static var §;w§:Texture;
       
      
      protected var §"U§:§1!^§;
      
      protected var §+!E§:§;!E§;
      
      protected var §0U§:Number;
      
      protected var §3"[§:Number;
      
      protected var §^]§:Number;
      
      protected var §2&§:Number = 8.5;
      
      protected var §`u§:Number;
      
      protected var §>s§:Number;
      
      protected var §'"]§:Number;
      
      protected var §`""§:Number;
      
      protected var §8=§:Number = 1.0;
      
      protected var §0"`§:Boolean;
      
      protected var §;#4§:Boolean;
      
      protected var §>!M§:Boolean = false;
      
      public var §&"P§:Vector.<§1!T§>;
      
      public var §#!A§:int;
      
      protected var §#!b§:int = 0;
      
      protected var §]m§:int;
      
      protected var §1"p§:Number;
      
      public var §6Q§:Sprite;
      
      protected var §'"z§:Sprite;
      
      public var §#"X§:int = 0;
      
      protected var §^#6§:Number = 0;
      
      public var mSlingShotState:int;
      
      public var §<"e§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §^!,§:Boolean = false;
      
      public var § #'§:Number;
      
      protected var §0v§:Sprite;
      
      protected var §"!n§:Sprite;
      
      protected var §9!W§:Sprite;
      
      protected var § each§:DisplayObject;
      
      protected var § L§:Sprite;
      
      protected var §&"E§:DisplayObject;
      
      protected var §""1§:Sprite;
      
      protected var §[#&§:DisplayObject;
      
      protected var §8!O§:Sprite;
      
      protected var §1"B§:Sprite;
      
      protected var §8T§:DisplayObject;
      
      private var §7n§:Number = 0;
      
      private var §;#5§:Number = 0;
      
      private var §!"V§:Number = -1;
      
      private var §>"T§:Number = 0;
      
      private var §,!D§:Boolean = false;
      
      private var §>#$§:int = 0;
      
      public function §%#7§(param1:§;!E§, param2:§>#-§, param3:Sprite, param4:Number = 1.0, param5:Boolean = true, param6:Boolean = true)
      {
         var _loc7_:int = 0;
         var _loc8_:§<5§ = null;
         this.§&"P§ = new Vector.<§1!T§>();
         super();
         this.§+!E§ = param1;
         this.§0v§ = param3;
         this.§8=§ = param4;
         this.§0"`§ = param5;
         this.§;#4§ = param6;
         if(param2)
         {
            this.setPosition(param2.slingshotX,param2.slingshotY,param2.§#!'§);
            this.§#!§();
            _loc7_ = 0;
            while(_loc7_ < param2.§]#4§)
            {
               _loc8_ = param2.§+"F§(_loc7_);
               this.addSlingshotObject(_loc8_.type,_loc8_.x,_loc8_.y,_loc8_.angle,_loc8_.index);
               _loc7_++;
            }
            this.§>#$§ = this.§!"T§();
            this.§#!A§ = 0;
            if(this.§&"P§.length <= 0)
            {
               §-"H§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§0U§ + " " + this.§3"[§);
               this.§]"<§(§%!E§);
            }
            else
            {
               this.§]"<§(§8!2§);
            }
         }
         else
         {
            §-"H§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§]"<§(§%!E§);
         }
         this.§ #'§ = 0;
         this.sortBirds();
         this.update(0,true);
         this.groundSlingshot();
         this.§9G§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§0v§;
      }
      
      public function get aimingLineSprite() : Sprite
      {
         return this.§'"z§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§7n§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§#!A§ < this.§&"P§.length;
      }
      
      public function get shootingAngle() : Number
      {
         return this.§^#6§;
      }
      
      public function get x() : Number
      {
         return this.§0U§;
      }
      
      public function get y() : Number
      {
         return this.§3"[§;
      }
      
      public function get angle() : Number
      {
         return this.§^]§;
      }
      
      public function get §<%§() : Boolean
      {
         return this.§;#4§;
      }
      
      public function dispose() : void
      {
         while(this.§&"P§.length > 0)
         {
            this.§!U§(0);
         }
         this.§&"P§ = null;
         if(this.§0v§)
         {
            this.§0v§.dispose();
            this.§0v§ = null;
         }
         this.§6Q§ = null;
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§ each§)
         {
            this.§ each§.color = param1;
         }
         if(this.§8T§)
         {
            this.§8T§.color = param1;
         }
      }
      
      public function §<"<§(param1:String, param2:Number, param3:Number, param4:int) : §1!T§
      {
         var _loc6_:§1!T§ = null;
         if(this.§&"P§.length > 0)
         {
            (_loc6_ = this.§&"P§[0]).setOnSlingshot(false);
            _loc6_.§"!8§ = false;
         }
         var _loc5_:§1!T§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,0,param4)).setOnSlingshot(true);
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §1!T§
      {
         var _loc6_:§["%§ = this.§+!E§.levelItemManager.getItem(param1);
         var _loc7_:Sprite;
         (_loc7_ = new Sprite()).scaleX = _loc6_.scale;
         _loc7_.scaleY = _loc6_.scale;
         var _loc8_:§1!T§ = this.initializeSlingshotObject(_loc6_,param2,param3,param4,_loc7_,param5);
         if(param5 < 0)
         {
            this.§&"P§.push(_loc8_);
         }
         else
         {
            this.§&"P§.splice(param5,0,_loc8_);
         }
         ++this.§#!b§;
         this.§6Q§.addChild(_loc8_.sprite);
         return _loc8_;
      }
      
      protected function initializeSlingshotObject(param1:§["%§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §1!T§
      {
         return new §1!T§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
      }
      
      public function §]"<§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §8!2§)
         {
            this.§=!$§();
            this.§1"p§ = 1000;
         }
         else if(this.mSlingShotState == final)
         {
            this.§=!$§();
            this.§1"p§ = 0;
         }
         else if(this.mSlingShotState == §]!r§)
         {
            this.§1"p§ = 10000;
            this.§^!,§ = false;
            this.§=!$§();
         }
         else if(this.mSlingShotState == §%!E§)
         {
            this.§=!$§();
            this.§1"p§ = 2000;
         }
         else if(this.mSlingShotState == §>k§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§^!,§ = false;
               this.§=!$§();
               this.§&"P§[this.§#!A§].setPosition(this.§4^§ - this.§&"P§[this.§#!A§].radius * Math.cos(this.§^#6§ / (180 / Math.PI)),this.§2!h§ + this.§&"P§[this.§#!A§].radius * Math.sin(this.§^#6§ / (180 / Math.PI)),180 - this.§^#6§);
            }
            else
            {
               this.§=!$§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §8o§() : §;!E§
      {
         return this.§+!E§;
      }
      
      public function §5"6§() : Boolean
      {
         return this.mSlingShotState == §%!E§ && this.§1"p§ <= 0;
      }
      
      protected function §1X§() : §1!^§
      {
         return this.§+!E§.animationManager.getAnimation("SLINGSHOT");
      }
      
      private function §#!§() : void
      {
         this.§"U§ = this.§1X§();
         this.§ each§ = this.§"U§.getFrame(0);
         this.§ each§.pivotX = -3;
         this.§ each§.pivotY = -24;
         this.§8T§ = this.§"U§.getFrame(1);
         this.§8T§.pivotX = -30;
         this.§8T§.pivotY = -30;
         this.§ !E§();
         this.§ `§();
         this.§"!n§ = new Sprite();
         this.§"!n§.addChild(this.§ each§);
         this.§"!n§.addChild(this.§ L§);
         this.§'"z§ = new Sprite();
         this.§6Q§ = new Sprite();
         this.§9!W§ = new Sprite();
         this.§9!W§.addChild(this.§8!O§);
         this.§9!W§.addChild(this.§""1§);
         this.§9!W§.addChild(this.§8T§);
         this.§,"1§();
      }
      
      protected function §,"1§() : void
      {
         this.§0v§.addChild(this.§"!n§);
         this.§0v§.addChild(this.§'"z§);
         this.§0v§.addChild(this.§6Q§);
         this.§0v§.addChild(this.§9!W§);
      }
      
      public function § !E§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§`u§ = this.§0U§;
         this.§>s§ = this.§3"[§;
         this.§`""§ = §96§.§>!$§;
         _loc1_ = null;
      }
      
      protected function getRopeImage(param1:uint) : DisplayObject
      {
         return new §-"z§(2,2,param1);
      }
      
      protected function getHolsterImage(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc3_:BitmapData = null;
         if(!§;w§ || param2)
         {
            _loc3_ = new BitmapData(18,26,true,4278190080 | param1);
            if(§;w§)
            {
               this.§+!E§.textureManager.unregisterBitmapDataTexture(§;w§);
            }
            §;w§ = this.§+!E§.textureManager.getTextureFromBitmapData(_loc3_);
         }
         return new §,!u§(§;w§);
      }
      
      protected function § `§(param1:uint = 3151368, param2:uint = 3151368, param3:Boolean = false) : void
      {
         this.§8!O§ = new Sprite();
         this.§1"B§ = new Sprite();
         var _loc4_:DisplayObject;
         (_loc4_ = this.getHolsterImage(param2,param3)).rotation = Math.PI;
         _loc4_.x = _loc4_.width / 2;
         _loc4_.y = _loc4_.height / 2;
         this.§1"B§.addChild(_loc4_);
         this.§8!O§.addChild(this.§1"B§);
         this.§ L§ = new Sprite();
         this.§ L§.x = 22;
         this.§ L§.y = 0;
         this.§&"E§ = this.getRopeImage(param1);
         this.§ L§.addChild(this.§&"E§);
         this.§""1§ = new Sprite();
         this.§""1§.x = -17;
         this.§""1§.y = 5;
         this.§[#&§ = this.getRopeImage(param1);
         this.§""1§.addChild(this.§[#&§);
      }
      
      protected function §9G§(param1:Number) : void
      {
         var _loc2_:Number = (this.§2!h§ - this.§3"[§) / §;!E§.§0"?§;
         var _loc3_:Number = (this.§4^§ - this.§0U§) / §;!E§.§0"?§;
         var _loc4_:Number = Math.cos(this.§^]§);
         var _loc5_:Number = Math.sin(this.§^]§);
         var _loc6_:Number = -Math.sin(this.§^]§);
         var _loc7_:Number = Math.cos(this.§^]§);
         var _loc8_:Number = _loc3_;
         var _loc9_:Number = _loc2_;
         _loc3_ = _loc8_ * _loc4_ + _loc9_ * _loc5_;
         _loc2_ = _loc8_ * _loc6_ + _loc9_ * _loc7_;
         var _loc10_:Number = 3.5 + 8 * ((this.§`""§ - this.§"c§) / this.§`""§);
         this.§8!O§.x = _loc3_;
         this.§8!O§.y = _loc2_;
         this.§8!O§.rotation = -this.§^]§ - this.§^#6§ / (180 / Math.PI);
         this.§"!n§.x = this.§0U§ / §;!E§.§0"?§;
         this.§"!n§.y = this.§3"[§ / §;!E§.§0"?§;
         this.§"!n§.rotation = this.§^]§;
         this.§9!W§.x = this.§0U§ / §;!E§.§0"?§;
         this.§9!W§.y = this.§3"[§ / §;!E§.§0"?§;
         this.§9!W§.rotation = this.§^]§;
         this.§""1§.rotation = Math.atan2(_loc2_ - this.§""1§.y,_loc3_ - this.§""1§.x);
         this.§[#&§.width = Math.sqrt(Math.pow(_loc3_ - this.§""1§.x,2) + Math.pow(_loc2_ - this.§""1§.y,2));
         this.§[#&§.height = _loc10_ * 2;
         this.§[#&§.y = -this.§[#&§.height / 2;
         this.§ L§.rotation = Math.atan2(_loc2_ - this.§ L§.y,_loc3_ - this.§ L§.x);
         this.§&"E§.width = Math.sqrt(Math.pow(_loc3_ - this.§ L§.x,2) + Math.pow(_loc2_ - this.§ L§.y,2));
         this.§&"E§.height = _loc10_ * 2;
         this.§&"E§.y = -this.§&"E§.height / 2;
         this.§<"e§ = false;
      }
      
      public function useMightyEagle() : §1!T§
      {
         var _loc2_:§1!T§ = null;
         while(this.§&"P§.length > 0)
         {
            this.§!U§(0,true);
         }
         this.§^q§();
         if(this.§&"P§.length > 0)
         {
            _loc2_ = this.§&"P§[0];
            _loc2_.setOnSlingshot(false);
         }
         var _loc1_:§1!T§ = this.addSlingshotObject("BIRD_SARDINE",this.§0U§,this.§3"[§,0);
         _loc1_.setOnSlingshot(true);
         _loc1_.§"!8§ = false;
         this.§]"<§(§]!r§);
         return _loc1_;
      }
      
      protected function §^q§() : void
      {
         §=Q§.§`!A§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§]"<§(§>k§);
      }
      
      public function §=!$§() : void
      {
         this.setNewCoordinatesForRubber(this.§`u§,this.§>s§ + this.§`""§ / 8);
      }
      
      protected function get §@Y§() : Number
      {
         return this.§'"]§ * this.§8=§;
      }
      
      protected function get §"c§() : Number
      {
         return Math.min(this.§'"]§,this.§`""§);
      }
      
      protected function get §4^§() : Number
      {
         if(this.§'"]§ >= this.§`""§)
         {
            return this.§`u§ + this.§`""§ * Math.cos(this.§^#6§ / 180 * Math.PI);
         }
         return this.§`u§ + this.§'"]§ * Math.cos(this.§^#6§ / 180 * Math.PI);
      }
      
      protected function get §2!h§() : Number
      {
         if(this.§'"]§ >= this.§`""§)
         {
            return this.§>s§ - this.§`""§ * Math.sin(this.§^#6§ / 180 * Math.PI);
         }
         return this.§>s§ - this.§'"]§ * Math.sin(this.§^#6§ / 180 * Math.PI);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         if(this.§!"V§ > 0)
         {
            return false;
         }
         var _loc4_:Number = param1 - this.§`u§;
         var _loc5_:Number = param2 - this.§>s§;
         var _loc6_:Number;
         if((_loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) * this.§8=§ > this.§`""§)
         {
            if(param3)
            {
               return false;
            }
            _loc6_ = this.§`""§ / this.§8=§;
         }
         var _loc7_:Number = (_loc7_ = Math.atan2(-(param2 - this.§>s§),param1 - this.§`u§)) * (180 / Math.PI);
         if(!this.mDragging && this.§!"V§ < 0)
         {
            _loc6_ = 0.8;
            _loc7_ = -160;
         }
         if(this.§0"`§)
         {
            _loc6_ = this.§1"'§(_loc6_);
         }
         return this.§1!;§(_loc7_,_loc6_);
      }
      
      protected function §1"'§(param1:Number) : Number
      {
         var _loc6_:Number = NaN;
         var _loc5_:Number = this.§`""§ / 2;
         if(param1 > _loc5_)
         {
            if(this.§^#6§ > -90 - 12 + 5 && this.§^#6§ < -90 + 12 + 5)
            {
               return _loc5_;
            }
            if(this.§^#6§ > -90 - 12 - 4 + 5 && this.§^#6§ < -90 + 12 + 4 + 5)
            {
               return Number(_loc5_ + (this.§`""§ - _loc5_) * (Math.abs(this.§^#6§ - -90 - 5) - 12) / 4);
            }
         }
         return param1;
      }
      
      protected function §1!;§(param1:Number, param2:Number) : Boolean
      {
         this.§^#6§ = param1;
         this.§'"]§ = param2;
         if(this.§'"]§ <= this.§`""§ * 0.45)
         {
            this.§>!M§ = true;
         }
         else if(this.§>!M§ && this.§'"]§ >= this.§`""§ * 0.8)
         {
            this.playStretchSound();
            this.§>!M§ = false;
         }
         this.§<"e§ = true;
         return true;
      }
      
      protected function playStretchSound() : void
      {
         §=Q§.§`!A§("SlingshotStreched");
      }
      
      protected function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§0U§ + param1 * Math.cos(this.§^]§ + Math.PI / 2),this.§3"[§ + param1 * Math.sin(this.§^]§ + Math.PI / 2),this.§^]§);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc5_:Number = param1 - this.§0U§;
         this.§0U§ = param1;
         var _loc6_:Number = param2 - this.§3"[§;
         this.§3"[§ = param2;
         this.§^]§ = param3;
         this.§>s§ += _loc6_;
         this.§`u§ += _loc5_;
         if(param4)
         {
            this.§9G§(0);
         }
         this.§<"e§ = true;
      }
      
      protected function §`"'§() : Number
      {
         return this.§@Y§ / this.§`""§;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§1!T§ = this.§&"P§[this.§#!A§];
         var _loc3_:Number = this.§`"'§();
         if(_loc2_)
         {
            _loc1_ = _loc2_.§5T§;
         }
         return _loc1_ * _loc3_;
      }
      
      public function getPosition() : Point
      {
         var _loc1_:§1!T§ = null;
         if(this.§&"P§.length > this.§#!A§)
         {
            _loc1_ = this.§&"P§[this.§#!A§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §#!H§() : Point
      {
         return new Point(this.§`u§,this.§>s§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§1!T§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.§4c§(param1);
         if(this.§<"e§)
         {
            this.§9G§(param1);
         }
         this.§1"p§ -= param1;
         if(this.§1"p§ < 0)
         {
            this.§1"p§ = 0;
         }
         if(this.mSlingShotState != §%!E§)
         {
            this.§"u§(param1,param2);
            _loc3_ = null;
            if(this.§&"P§.length > 0)
            {
               _loc3_ = this.§&"P§[this.§#!A§];
            }
            if(_loc3_)
            {
               _loc3_.§1o§(param1);
            }
            if(!_loc3_)
            {
               this.§]"<§(§%!E§);
            }
            else if(this.mSlingShotState == §8!2§)
            {
               if(this.§1"p§ <= 0)
               {
                  this.§]"<§(final);
                  _loc3_.§&#1§();
               }
            }
            else if(this.mSlingShotState == final)
            {
               if(_loc3_.§="z§)
               {
                  this.§]"<§(§]!r§);
               }
            }
            else if(this.mSlingShotState == §]!r§)
            {
               _loc4_ = this.§4^§ - _loc3_.radius * Math.cos(this.§^#6§ / (180 / Math.PI));
               _loc5_ = this.§2!h§ + _loc3_.radius * Math.sin(this.§^#6§ / (180 / Math.PI));
               if(this.mDragging || this.§!"V§ >= 0)
               {
                  _loc3_.setPosition(_loc4_,_loc5_,180 - this.§^#6§);
               }
               else
               {
                  _loc3_.setPosition(_loc4_,_loc5_,this.angle);
               }
               if(this.§^!,§)
               {
                  this.shootCurrentBird(this.§`"'§(),this.§^#6§);
               }
            }
         }
      }
      
      public function §]"8§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§1!T§ = null;
         if(this.§&"P§.length > 0)
         {
            _loc5_ = this.§&"P§[this.§#!A§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2,180 - this.§^#6§);
         this.shootCurrentBird(param3,param4);
      }
      
      protected function shootBird() : void
      {
         this.§,!D§ = false;
         var _loc1_:§1!T§ = null;
         if(this.§&"P§.length > this.§#!A§)
         {
            _loc1_ = this.§&"P§[this.§#!A§];
         }
         if(!_loc1_)
         {
            return;
         }
         this.§7n§ = new Date().time;
         this.§+!E§.shootBird(_loc1_,this.§;#5§,this.§^#6§);
         this.§!U§(this.§#!A§,_loc1_.§@"7§ > 0);
         this.playBirdShotSound();
         if(this.§#!A§ >= this.§&"P§.length)
         {
            this.§]"<§(§%!E§);
         }
         else
         {
            this.§]"<§(§8!2§);
         }
         dispatchEvent(new Event(§@"8§));
      }
      
      protected function §4c§(param1:Number) : void
      {
         if(this.§!"V§ <= 0)
         {
            return;
         }
         this.§<"e§ = true;
         this.§!"V§ -= param1;
         if(this.§!"V§ <= 0)
         {
            this.§!"V§ = 0;
         }
         var _loc2_:Number = this.§!"V§ / §0!]§;
         var _loc3_:Number = this.§>"T§ * Math.cos(_loc2_ * Math.PI * 8) * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_;
         this.§1!;§(this.§^#6§,_loc3_);
         if(this.§!"V§ == 0)
         {
            this.§!"V§ = -1;
            this.§=!$§();
         }
         if(this.§,!D§)
         {
            this.shootBird();
         }
      }
      
      public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         this.§;#5§ = param1;
         this.§^#6§ = param2;
         this.§!"V§ = §0!]§;
         this.§>"T§ = this.§'"]§;
         this.mDragging = false;
         this.§^!,§ = false;
         this.§,!D§ = true;
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §=Q§.§`!A§("BirdShot" + _loc1_);
      }
      
      public function §"u§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§#!A§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§&"P§.length)
         {
            this.§&"P§[_loc4_].update(param1,this.mSlingShotState == §>k§,param2);
            _loc4_++;
         }
      }
      
      public function getCurrentBirdType() : String
      {
         var _loc1_:§1!T§ = null;
         if(this.§#!A§ < this.§&"P§.length)
         {
            _loc1_ = this.§&"P§[this.§#!A§];
            return _loc1_.name;
         }
         return null;
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§1!T§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§=!$§();
         if(this.§]m§ >= this.§&"P§.length)
         {
            return false;
         }
         _loc1_ = this.§&"P§[this.§]m§];
         _loc1_.§@!`§(-1,true);
         _loc2_ = this.§+!E§.levelItemManager.getItem(_loc1_.name).score;
         this.showScoreForRemainingBird(_loc1_,_loc2_);
         ++this.§]m§;
         return true;
      }
      
      protected function showScoreForRemainingBird(param1:§1!T§, param2:int) : void
      {
         this.§+!E§.addScore(param2,§0!0§.§[[§,true,param1.x,param1.y - 3,§?"E§.§@G§(param1.name));
      }
      
      public function §!"T§() : int
      {
         var _loc2_:§1!T§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§&"P§)
         {
            _loc1_ += this.§+!E§.levelItemManager.getItem(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §5"Y§() : int
      {
         return this.§>#$§;
      }
      
      protected function groundSlingshot() : void
      {
         var _loc4_:int = 0;
         var _loc1_:int = 1000;
         var _loc2_:Number = Math.cos(this.§^]§ + Math.PI / 2) * this.§2&§;
         var _loc3_:Number = Math.sin(this.§^]§ + Math.PI / 2) * this.§2&§;
         while((_loc4_ = this.§+!E§.objects.§["]§(this.§`u§ + _loc2_,this.§>s§ + _loc3_)) == -1)
         {
            this.applyGravity(0.1);
            if(_loc1_-- <= 0)
            {
               break;
            }
         }
         this.§ #'§ = -1;
      }
      
      public function §7!G§(param1:Number, param2:Number) : void
      {
         this.§0v§.x = -param1;
         this.§0v§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §]!r§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function get canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §]!r§ && this.§`"'§() >= §,§ && this.§!"V§ < 0;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§]"<§(§]!r§);
         var _loc1_:§1!T§ = this.§&"P§[this.§#!A§];
         _loc1_.§@!`§(§^i§.§3,§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§1!T§ = this.§&"P§[this.§#!A§];
         _loc1_.§@!`§(§^i§.§4"4§);
      }
      
      public function shoot() : void
      {
         this.§^!,§ = true;
      }
      
      protected function §!U§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§1!T§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§&"P§[param1])
         {
            _loc3_ = this.§&"P§[param1];
            this.§6Q§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.showDestructionParticles(this.§&"P§[param1]);
            }
            _loc3_.dispose();
            this.§&"P§[param1] = null;
         }
         this.§&"P§.splice(param1,1);
      }
      
      protected function showDestructionParticles(param1:§1!T§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §;!E§.§0"?§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §;!E§.§0"?§) + Math.random() * -_loc8_ * 2;
            this.§+!E§.particles.§>#1§(§?"E§.§[J§,§^#'§.§&5§,§?"E§.§3y§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§?"E§.§##+§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§+!E§.particles.§>#1§(§?"E§.§+"1§,§^#'§.§&5§,§?"E§.§3y§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:§1!T§) : void
      {
         this.§!U§(this.§&"P§.indexOf(param1));
      }
      
      public function sortBirds() : void
      {
         var _loc1_:§1!T§ = null;
         this.§&"P§.sort(this.§>!'§);
         while(this.§6Q§.numChildren > 0)
         {
            this.§6Q§.removeChildAt(0);
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§&"P§.length)
         {
            _loc1_ = this.§&"P§[_loc2_];
            this.§6Q§.addChildAt(_loc1_.sprite,0);
            _loc2_++;
         }
      }
      
      private function §>!'§(param1:§1!T§, param2:§1!T§) : Number
      {
         if(param1.§+v§ < param2.§+v§)
         {
            return -1;
         }
         if(param1.§+v§ > param2.§+v§)
         {
            return 1;
         }
         return 0;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §1!T§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§&"P§.length)
         {
            if(this.§&"P§[_loc3_])
            {
               if(this.§&"P§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§&"P§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §'!&§(param1:Number, param2:Number) : §%#7§
      {
         if(param1 >= this.§0U§ - this.§`""§ / 4 && param1 <= this.§0U§ + this.§`""§ / 4 && param2 >= this.§3"[§ - this.§`""§ / 4 && this.§3"[§ <= this.§3"[§ + this.§2&§)
         {
            return this;
         }
         return null;
      }
      
      public function §?!&§(param1:§>#-§) : void
      {
         var _loc3_:§1!T§ = null;
         var _loc4_:§<5§ = null;
         param1.slingshotX = this.§0U§;
         param1.slingshotY = this.§3"[§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§&"P§.length)
         {
            _loc3_ = this.§&"P§[_loc2_];
            (_loc4_ = new §<5§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.type = _loc3_.name;
            param1.§[7§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §6y§() : void
      {
         while(this.§&"P§.length > 0)
         {
            this.removeObject(this.§&"P§[0]);
         }
      }
      
      public function §1"h§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§&"P§.length)
         {
            if(this.§&"P§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§&"P§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§0U§ > param1.x && this.§0U§ < param2.x && this.§3"[§ > param1.y && this.§3"[§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function addNewBirdToEndOfList(param1:String, param2:Number, param3:Number, param4:Number) : §1!T§
      {
         var _loc5_:§1!T§ = this.addSlingshotObject(param1,param2,param3,param4);
         this.sortBirds();
         return _loc5_;
      }
      
      public function getBirdCount() : int
      {
         return this.§&"P§.length;
      }
      
      public function §=!i§() : int
      {
         return this.§#!b§;
      }
   }
}
