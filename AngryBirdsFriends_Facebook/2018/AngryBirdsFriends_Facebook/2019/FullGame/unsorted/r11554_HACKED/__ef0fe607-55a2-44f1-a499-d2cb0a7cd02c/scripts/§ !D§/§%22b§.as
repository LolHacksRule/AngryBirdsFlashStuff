package § !D§
{
   import §!6§.DisplayObject;
   import §!6§.Image;
   import §!6§.Sprite;
   import §""'§.Texture;
   import §"$=§.§=$&§;
   import §%A§.§'Y§;
   import §%A§.§>F§;
   import §9#K§.§=#f§;
   import §9$+§.§=!E§;
   import §>"9§.§[#%§;
   import §?§.§,Y§;
   import §^"[§.§4!8§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §"b§ extends EventDispatcher
   {
      
      public static const §&#<§:String = "slingshot_shot_bird";
      
      private static const §;"b§:int = 1800;
      
      public static const §[$ §:Number = 0.4;
      
      public static const §^M§:int = 0;
      
      public static const §&"s§:int = 1;
      
      public static const §"G§:int = 2;
      
      public static const §70§:int = 3;
      
      public static const §4#C§:int = 5;
      
      public static const §6"+§:int = 6;
      
      public static const §##U§:int = 3151368;
      
      protected static var §%>§:Texture;
      
      protected static var §!<§:Texture;
       
      
      protected var §3"9§:§4!8§;
      
      protected var §&!g§:§'"u§;
      
      protected var §-##§:Number;
      
      protected var §0#[§:Number;
      
      protected var §?+§:Number;
      
      protected var §+!o§:Number = 8.5;
      
      protected var §+"D§:Number;
      
      protected var §7!h§:Number;
      
      protected var §%#b§:Number;
      
      protected var §+!;§:Number;
      
      protected var §!b§:Number = 1.0;
      
      protected var §@$=§:Boolean;
      
      protected var §8#^§:Boolean;
      
      protected var override:Boolean;
      
      protected var §>U§:Boolean = false;
      
      public var mBirds:Vector.<§;M§>;
      
      public var mNextBirdIndex:int;
      
      protected var §""z§:int = 0;
      
      protected var §3$5§:int;
      
      protected var §'v§:Number;
      
      public var §-A§:Sprite;
      
      protected var §+"$§:Sprite;
      
      public var §4"a§:int = 0;
      
      protected var §;f§:Number = 0;
      
      public var mSlingShotState:int;
      
      public var §9$,§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §"!u§:Boolean = false;
      
      public var §@#W§:Number;
      
      protected var § U§:Sprite;
      
      protected var §;P§:Sprite;
      
      protected var §0!]§:Sprite;
      
      protected var §=3§:DisplayObject;
      
      protected var §^"q§:Sprite;
      
      protected var §`#E§:DisplayObject;
      
      protected var §4!P§:Sprite;
      
      protected var §9"E§:DisplayObject;
      
      protected var §,#Q§:Sprite;
      
      protected var §]"u§:Sprite;
      
      protected var §`!!§:DisplayObject;
      
      private var §0f§:Number = 0;
      
      private var §="=§:Number = 0;
      
      private var §@$A§:Number = -1;
      
      private var § c§:Number = 0;
      
      private var §1"a§:Boolean = false;
      
      private var §6"0§:int = 0;
      
      public function §"b§(param1:§'"u§, param2:§=$&§, param3:Sprite, param4:Number = 1.0, param5:Boolean = true, param6:Boolean = true, param7:Boolean = false)
      {
         var _loc8_:int = 0;
         var _loc9_:§=!E§ = null;
         this.mBirds = new Vector.<§;M§>();
         super();
         this.§&!g§ = param1;
         this.§ U§ = param3;
         this.§!b§ = param4;
         this.§@$=§ = param5;
         this.§8#^§ = param6;
         this.override = param7;
         if(param2)
         {
            this.setPosition(param2.slingshotX,param2.slingshotY,param2.§+7§);
            this.§'t§();
            _loc8_ = 0;
            while(_loc8_ < param2.§0?§)
            {
               _loc9_ = param2.§,0§(_loc8_);
               this.addSlingshotObject(_loc9_.type,_loc9_.x,_loc9_.y,_loc9_.angle,_loc8_);
               _loc8_++;
            }
            this.§6"0§ = this.§<r§();
            this.mNextBirdIndex = 0;
            if(this.mBirds.length <= 0)
            {
               §=#f§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§-##§ + " " + this.§0#[§);
               this.setSlingShotState(§70§);
            }
            else
            {
               this.setSlingShotState(§^M§);
            }
         }
         else
         {
            §=#f§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.setSlingShotState(§70§);
         }
         this.§@#W§ = 0;
         this.sortBirds();
         this.update(0,true);
         this.§1!o§();
         this.updateAnimations(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§ U§;
      }
      
      public function get aimingLineSprite() : Sprite
      {
         return this.§+"$§;
      }
      
      public function get §2#J§() : Number
      {
         return this.§0f§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.mNextBirdIndex < this.mBirds.length;
      }
      
      public function get shootingAngle() : Number
      {
         return this.§;f§;
      }
      
      public function get §0B§() : Number
      {
         return this.§="=§;
      }
      
      public function get x() : Number
      {
         return this.§-##§;
      }
      
      public function get y() : Number
      {
         return this.§0#[§;
      }
      
      public function get angle() : Number
      {
         return this.§?+§;
      }
      
      public function get §;!-§() : Boolean
      {
         return this.§8#^§;
      }
      
      public function get §9"L§() : Boolean
      {
         return this.override;
      }
      
      public function dispose() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§6!-§(0);
         }
         this.mBirds = null;
         if(this.§ U§)
         {
            this.§ U§.dispose();
            this.§ U§ = null;
         }
         this.§-A§ = null;
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§=3§)
         {
            this.§=3§.color = param1;
         }
         if(this.§`!!§)
         {
            this.§`!!§.color = param1;
         }
      }
      
      public function addBirdStraightIntoSlingshot(param1:String, param2:Number, param3:Number, param4:int) : §;M§
      {
         var _loc6_:§;M§ = null;
         if(this.mBirds.length > 0)
         {
            (_loc6_ = this.mBirds[0]).§^![§(false);
            _loc6_.animationsEnabled = false;
         }
         var _loc5_:§;M§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,0,param4)).§^![§(true);
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §;M§
      {
         var _loc6_:§,Y§ = this.§&!g§.levelItemManager.getItem(param1);
         var _loc7_:Sprite;
         (_loc7_ = new Sprite()).scaleX = _loc6_.scale;
         _loc7_.scaleY = _loc6_.scale;
         var _loc8_:§;M§ = this.initializeSlingshotObject(_loc6_,param2,param3,param4,_loc7_,param5);
         if(param5 < 0)
         {
            this.mBirds.push(_loc8_);
         }
         else
         {
            this.mBirds.splice(param5,0,_loc8_);
         }
         ++this.§""z§;
         this.§-A§.addChild(_loc8_.sprite);
         return _loc8_;
      }
      
      protected function initializeSlingshotObject(param1:§,Y§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §;M§
      {
         return new §;M§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
      }
      
      public function setSlingShotState(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §^M§)
         {
            this.§!#v§();
            this.§'v§ = 1000;
         }
         else if(this.mSlingShotState == §&"s§)
         {
            this.§!#v§();
            this.§'v§ = 0;
         }
         else if(this.mSlingShotState == §"G§)
         {
            this.§'v§ = 10000;
            this.§"!u§ = false;
            this.§!#v§();
         }
         else if(this.mSlingShotState == §70§)
         {
            this.§!#v§();
            this.§'v§ = 2000;
         }
         else if(this.mSlingShotState == §4#C§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§"!u§ = false;
               this.§!#v§();
               this.mBirds[this.mNextBirdIndex].setPosition(this.§4#§ - this.mBirds[this.mNextBirdIndex].radius * Math.cos(this.§;f§ / (180 / Math.PI)),this.§0"n§ + this.mBirds[this.mNextBirdIndex].radius * Math.sin(this.§;f§ / (180 / Math.PI)),180 - this.§;f§);
            }
            else
            {
               this.§!#v§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §-a§() : §'"u§
      {
         return this.§&!g§;
      }
      
      public function §2$D§() : Boolean
      {
         return this.mSlingShotState == §70§ && this.§'v§ <= 0;
      }
      
      protected function getSlingshotAnimation() : §4!8§
      {
         return this.§&!g§.animationManager.getAnimation("SLINGSHOT");
      }
      
      private function §'t§() : void
      {
         this.§3"9§ = this.getSlingshotAnimation();
         this.§=3§ = this.§3"9§.getFrame(0);
         this.§=3§.pivotX = -3;
         this.§=3§.pivotY = -24;
         this.§`!!§ = this.§3"9§.getFrame(1);
         this.§`!!§.pivotX = -30;
         this.§`!!§.pivotY = -30;
         this.§4"6§();
         this.§7"W§();
         this.§;P§ = new Sprite();
         this.§;P§.addChild(this.§=3§);
         this.§;P§.addChild(this.§^"q§);
         this.§+"$§ = new Sprite();
         this.§-A§ = new Sprite();
         this.§0!]§ = new Sprite();
         this.§0!]§.addChild(this.§,#Q§);
         this.§0!]§.addChild(this.§4!P§);
         this.§0!]§.addChild(this.§`!!§);
         this.§!M§();
      }
      
      protected function §!M§() : void
      {
         this.§ U§.addChild(this.§;P§);
         this.§ U§.addChild(this.§+"$§);
         this.§ U§.addChild(this.§-A§);
         this.§ U§.addChild(this.§0!]§);
      }
      
      public function §4"6§() : void
      {
         new Rectangle(0,0,100,100);
         this.§+"D§ = this.§-##§;
         this.§7!h§ = this.§0#[§;
         this.§+!;§ = §;#W§.§,#'§;
      }
      
      private function §"!1§(param1:uint) : void
      {
         var _loc2_:BitmapData = new BitmapData(2,2,true,4278190080 | param1);
         if(§!<§)
         {
            this.§&!g§.textureManager.unregisterBitmapDataTexture(§!<§);
         }
         §!<§ = this.§&!g§.textureManager.getTextureFromBitmapData(_loc2_);
      }
      
      protected function §<!e§() : DisplayObject
      {
         return new Image(§!<§);
      }
      
      protected function §]$0§(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc3_:BitmapData = null;
         if(!§%>§ || param2)
         {
            _loc3_ = new BitmapData(18,26,true,4278190080 | param1);
            if(§%>§)
            {
               this.§&!g§.textureManager.unregisterBitmapDataTexture(§%>§);
            }
            §%>§ = this.§&!g§.textureManager.getTextureFromBitmapData(_loc3_);
         }
         return new Image(§%>§);
      }
      
      protected function §7"W§(param1:uint = 3151368, param2:uint = 3151368, param3:Boolean = false) : void
      {
         this.§,#Q§ = new Sprite();
         this.§]"u§ = new Sprite();
         var _loc4_:DisplayObject;
         (_loc4_ = this.§]$0§(param2,param3)).rotation = Math.PI;
         _loc4_.x = _loc4_.width / 2;
         _loc4_.y = _loc4_.height / 2;
         this.§]"u§.addChild(_loc4_);
         this.§,#Q§.addChild(this.§]"u§);
         this.§^"q§ = new Sprite();
         this.§^"q§.x = 22;
         this.§^"q§.y = 0;
         this.§"!1§(param1);
         this.§`#E§ = this.§<!e§();
         this.§^"q§.addChild(this.§`#E§);
         this.§4!P§ = new Sprite();
         this.§4!P§.x = -17;
         this.§4!P§.y = 5;
         this.§9"E§ = this.§<!e§();
         this.§4!P§.addChild(this.§9"E§);
      }
      
      protected function updateAnimations(param1:Number) : void
      {
         var _loc2_:Number = (this.§0"n§ - this.§0#[§) / §'"u§.§'#e§;
         var _loc3_:Number = (this.§4#§ - this.§-##§) / §'"u§.§'#e§;
         var _loc4_:Number = Math.cos(this.§?+§);
         var _loc5_:Number = Math.sin(this.§?+§);
         var _loc6_:Number = -Math.sin(this.§?+§);
         var _loc7_:Number = Math.cos(this.§?+§);
         var _loc8_:Number = _loc3_;
         var _loc9_:Number = _loc2_;
         _loc3_ = _loc8_ * _loc4_ + _loc9_ * _loc5_;
         _loc2_ = _loc8_ * _loc6_ + _loc9_ * _loc7_;
         var _loc10_:Number = 3.5 + 8 * ((this.§+!;§ - this.§1!O§) / this.§+!;§);
         this.§,#Q§.x = _loc3_;
         this.§,#Q§.y = _loc2_;
         this.§,#Q§.rotation = -this.§?+§ - this.§;f§ / (180 / Math.PI);
         this.§;P§.x = this.§-##§ / §'"u§.§'#e§;
         this.§;P§.y = this.§0#[§ / §'"u§.§'#e§;
         this.§;P§.rotation = this.§?+§;
         this.§0!]§.x = this.§-##§ / §'"u§.§'#e§;
         this.§0!]§.y = this.§0#[§ / §'"u§.§'#e§;
         this.§0!]§.rotation = this.§?+§;
         this.§4!P§.rotation = Math.atan2(_loc2_ - this.§4!P§.y,_loc3_ - this.§4!P§.x);
         this.§9"E§.width = Math.sqrt(Math.pow(_loc3_ - this.§4!P§.x,2) + Math.pow(_loc2_ - this.§4!P§.y,2));
         this.§9"E§.height = _loc10_ * 2;
         this.§9"E§.y = -this.§9"E§.height / 2;
         this.§^"q§.rotation = Math.atan2(_loc2_ - this.§^"q§.y,_loc3_ - this.§^"q§.x);
         this.§`#E§.width = Math.sqrt(Math.pow(_loc3_ - this.§^"q§.x,2) + Math.pow(_loc2_ - this.§^"q§.y,2));
         this.§`#E§.height = _loc10_ * 2;
         this.§`#E§.y = -this.§`#E§.height / 2;
         this.§9$,§ = false;
      }
      
      public function useMightyEagle() : §;M§
      {
         var _loc2_:§;M§ = null;
         while(this.mBirds.length > 0)
         {
            this.§6!-§(0,true);
         }
         this.§;]§();
         if(this.mBirds.length > 0)
         {
            _loc2_ = this.mBirds[0];
            _loc2_.§^![§(false);
         }
         var _loc1_:§;M§ = this.addSlingshotObject("BIRD_SARDINE",this.§-##§,this.§0#[§,0);
         _loc1_.§^![§(true);
         _loc1_.animationsEnabled = false;
         this.setSlingShotState(§"G§);
         return _loc1_;
      }
      
      protected function §;]§() : void
      {
         §[#%§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.setSlingShotState(§4#C§);
      }
      
      public function §!#v§() : void
      {
         this.setNewCoordinatesForRubber(this.§+"D§,this.§7!h§ + this.§+!;§ / 8);
      }
      
      protected function get §4#`§() : Number
      {
         return this.§%#b§ * this.§!b§;
      }
      
      protected function get §1!O§() : Number
      {
         return Math.min(this.§%#b§,this.§+!;§);
      }
      
      protected function get §4#§() : Number
      {
         if(this.§%#b§ >= this.§+!;§)
         {
            return this.§+"D§ + this.§+!;§ * Math.cos(this.§;f§ / 180 * Math.PI);
         }
         return this.§+"D§ + this.§%#b§ * Math.cos(this.§;f§ / 180 * Math.PI);
      }
      
      protected function get §0"n§() : Number
      {
         if(this.§%#b§ >= this.§+!;§)
         {
            return this.§7!h§ - this.§+!;§ * Math.sin(this.§;f§ / 180 * Math.PI);
         }
         return this.§7!h§ - this.§%#b§ * Math.sin(this.§;f§ / 180 * Math.PI);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         if(this.§@$A§ > 0)
         {
            return false;
         }
         var _loc4_:Number = param1 - this.§+"D§;
         var _loc5_:Number = param2 - this.§7!h§;
         var _loc6_:Number;
         if((_loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) * this.§!b§ > this.§+!;§)
         {
            if(param3)
            {
               return false;
            }
            _loc6_ = this.§+!;§ / this.§!b§;
         }
         var _loc7_:Number = (_loc7_ = Math.atan2(-(param2 - this.§7!h§),param1 - this.§+"D§)) * (180 / Math.PI);
         if(!this.mDragging && this.§@$A§ < 0)
         {
            _loc6_ = 0.8;
            _loc7_ = -160;
         }
         if(this.§@$=§)
         {
            _loc6_ = this.§ #3§(_loc6_);
         }
         return this.§>!>§(_loc7_,_loc6_);
      }
      
      protected function § #3§(param1:Number) : Number
      {
         var _loc5_:Number = this.§+!;§ / 2;
         if(param1 > _loc5_)
         {
            if(this.§;f§ > -90 - 12 + 5 && this.§;f§ < -90 + 12 + 5)
            {
               return _loc5_;
            }
            if(this.§;f§ > -90 - 12 - 4 + 5 && this.§;f§ < -90 + 12 + 4 + 5)
            {
               return Number(_loc5_ + (this.§+!;§ - _loc5_) * (Math.abs(this.§;f§ - -90 - 5) - 12) / 4);
            }
         }
         return param1;
      }
      
      protected function §>!>§(param1:Number, param2:Number) : Boolean
      {
         this.§;f§ = param1;
         this.§%#b§ = param2;
         if(this.§%#b§ <= this.§+!;§ * 0.45)
         {
            this.§>U§ = true;
         }
         else if(this.§>U§ && this.§%#b§ >= this.§+!;§ * 0.8)
         {
            this.playStretchSound();
            this.§>U§ = false;
         }
         this.§9$,§ = true;
         return true;
      }
      
      protected function playStretchSound() : void
      {
         §[#%§.playSound("SlingshotStreched");
      }
      
      protected function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§-##§ + param1 * Math.cos(this.§?+§ + Math.PI / 2),this.§0#[§ + param1 * Math.sin(this.§?+§ + Math.PI / 2),this.§?+§);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc5_:Number = param1 - this.§-##§;
         this.§-##§ = param1;
         var _loc6_:Number = param2 - this.§0#[§;
         this.§0#[§ = param2;
         this.§?+§ = param3;
         this.§7!h§ += _loc6_;
         this.§+"D§ += _loc5_;
         if(param4)
         {
            this.updateAnimations(0);
         }
         this.§9$,§ = true;
      }
      
      protected function §^x§() : Number
      {
         return this.§4#`§ / this.§+!;§;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§;M§ = this.mBirds[this.mNextBirdIndex];
         var _loc3_:Number = this.§^x§();
         if(_loc2_)
         {
            _loc1_ = _loc2_.§=@§;
         }
         return _loc1_ * _loc3_;
      }
      
      public function getPosition() : Point
      {
         var _loc1_:§;M§ = null;
         if(this.mBirds.length > this.mNextBirdIndex)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §="V§() : Point
      {
         return new Point(this.§+"D§,this.§7!h§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§;M§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.§%"q§(param1);
         if(this.§9$,§)
         {
            this.updateAnimations(param1);
         }
         this.§'v§ -= param1;
         if(this.§'v§ < 0)
         {
            this.§'v§ = 0;
         }
         if(this.mSlingShotState != §70§)
         {
            this.§4"_§(param1,param2);
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
               this.setSlingShotState(§70§);
            }
            else if(this.mSlingShotState == §^M§)
            {
               if(this.§'v§ <= 0)
               {
                  this.setSlingShotState(§&"s§);
                  _loc3_.§0#f§();
               }
            }
            else if(this.mSlingShotState == §&"s§)
            {
               if(_loc3_.§]"Q§)
               {
                  this.setSlingShotState(§"G§);
               }
            }
            else if(this.mSlingShotState == §"G§)
            {
               _loc4_ = this.§4#§ - _loc3_.radius * Math.cos(this.§;f§ / (180 / Math.PI));
               _loc5_ = this.§0"n§ + _loc3_.radius * Math.sin(this.§;f§ / (180 / Math.PI));
               if(this.mDragging || this.§@$A§ >= 0)
               {
                  _loc3_.setPosition(_loc4_,_loc5_,180 - this.§;f§);
               }
               else
               {
                  _loc3_.setPosition(_loc4_,_loc5_,this.angle);
               }
               if(this.§"!u§)
               {
                  this.shootCurrentBird(this.§^x§(),this.§;f§);
               }
            }
         }
      }
      
      public function §<1§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§;M§ = null;
         if(this.mBirds.length > 0)
         {
            _loc5_ = this.mBirds[this.mNextBirdIndex];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2,180 - this.§;f§);
         this.shootCurrentBird(param3,param4);
      }
      
      protected function shootBird() : void
      {
         this.§1"a§ = false;
         var _loc1_:§;M§ = null;
         if(this.mBirds.length > this.mNextBirdIndex)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
         }
         if(!_loc1_)
         {
            return;
         }
         this.§0f§ = new Date().time;
         this.§&!g§.shootBird(_loc1_,this.§="=§,this.§;f§);
         this.§6!-§(this.mNextBirdIndex,_loc1_.§5$1§ > 0);
         this.playBirdShotSound();
         if(this.mNextBirdIndex >= this.mBirds.length)
         {
            this.setSlingShotState(§70§);
         }
         else
         {
            this.setSlingShotState(§^M§);
         }
         dispatchEvent(new Event(§&#<§));
      }
      
      protected function §%"q§(param1:Number) : void
      {
         if(this.§@$A§ <= 0)
         {
            return;
         }
         this.§9$,§ = true;
         this.§@$A§ -= param1;
         if(this.§@$A§ <= 0)
         {
            this.§@$A§ = 0;
         }
         var _loc2_:Number = this.§@$A§ / §;"b§;
         var _loc3_:Number = this.§ c§ * Math.cos(_loc2_ * Math.PI * 8) * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_;
         this.§>!>§(this.§;f§,_loc3_);
         if(this.§@$A§ == 0)
         {
            this.§@$A§ = -1;
            this.§!#v§();
         }
         if(this.§1"a§)
         {
            this.shootBird();
         }
      }
      
      public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         this.§="=§ = param1;
         this.§;f§ = param2;
         this.§@$A§ = §;"b§;
         this.§ c§ = this.§%#b§;
         this.mDragging = false;
         this.§"!u§ = false;
         this.§1"a§ = true;
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §[#%§.playSound("bird_shot-a" + _loc1_);
      }
      
      public function §4"_§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.mNextBirdIndex;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.mBirds.length)
         {
            this.mBirds[_loc4_].update(param1,this.mSlingShotState == §4#C§,param2);
            _loc4_++;
         }
      }
      
      public function getCurrentBirdType() : String
      {
         var _loc1_:§;M§ = null;
         if(this.mNextBirdIndex < this.mBirds.length)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
            return _loc1_.name;
         }
         return null;
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§;M§ = null;
         this.mDragging = false;
         this.§!#v§();
         if(this.§3$5§ >= this.mBirds.length)
         {
            return false;
         }
         _loc1_ = this.mBirds[this.§3$5§];
         if(_loc1_.§["N§)
         {
            _loc1_.§9w§(true);
            this.showScoreForRemainingBird(_loc1_,this.§&!g§.levelItemManager.getItem(_loc1_.name).destroyedScoreInc);
            this.mBirds[this.§3$5§].scoreCounted = true;
            ++this.§3$5§;
         }
         else
         {
            this.mBirds[this.§3$5§].scoreCounted = false;
            ++this.§3$5§;
         }
         return true;
      }
      
      protected function showScoreForRemainingBird(param1:§;M§, param2:int) : void
      {
         this.§&!g§.addScore(param2,§@#z§.§@"f§,true,param1.x,param1.y - 3,§'Y§.§!,§(param1.name),param1.levelItem.floatingScoreFont);
      }
      
      public function §<r§() : int
      {
         var _loc2_:§;M§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mBirds)
         {
            _loc1_ += this.§&!g§.levelItemManager.getItem(_loc2_.name).destroyedScoreInc;
         }
         return _loc1_;
      }
      
      public function §2D§() : int
      {
         var _loc2_:§;M§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mBirds)
         {
            if(!_loc2_.scoreCounted)
            {
               _loc1_ += this.§&!g§.levelItemManager.getItem(_loc2_.name).destroyedScoreInc;
            }
         }
         return _loc1_;
      }
      
      public function §<"F§() : int
      {
         return this.§6"0§;
      }
      
      protected function §1!o§() : void
      {
         var _loc1_:int = 1000;
         var _loc2_:Number = Math.cos(this.§?+§ + Math.PI / 2) * this.§+!o§;
         var _loc3_:Number = Math.sin(this.§?+§ + Math.PI / 2) * this.§+!o§;
         while(int(this.§&!g§.objects.§+!J§(this.§+"D§ + _loc2_,this.§7!h§ + _loc3_)) == -1)
         {
            this.applyGravity(0.1);
            if(_loc1_-- <= 0)
            {
               break;
            }
         }
         this.§@#W§ = -1;
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§ U§.x = -param1;
         this.§ U§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §"G§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function get canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §"G§ && this.§^x§() >= §[$ § && this.§@$A§ < 0;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.setSlingShotState(§"G§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
      }
      
      public function shoot() : void
      {
         this.§"!u§ = true;
      }
      
      protected function §6!-§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§;M§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.mBirds[param1])
         {
            _loc3_ = this.mBirds[param1];
            this.§-A§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.showDestructionParticles(this.mBirds[param1]);
            }
            _loc3_.dispose();
            this.mBirds[param1] = null;
         }
         this.mBirds.splice(param1,1);
      }
      
      protected function showDestructionParticles(param1:§;M§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §'"u§.§'#e§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §'"u§.§'#e§) + Math.random() * -_loc8_ * 2;
            this.§&!g§.particles.addParticle(§'Y§.§7!s§,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,param1.x + _loc7_,param1.y + _loc8_,1500,"",§'Y§.getParticleMaterialFromEngineMaterial(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§&!g§.particles.addParticle(§'Y§.§?#B§,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:§;M§) : void
      {
         this.§6!-§(this.mBirds.indexOf(param1));
      }
      
      public function sortBirds() : void
      {
         var _loc1_:§;M§ = null;
         this.mBirds.sort(this.§4!y§);
         while(this.§-A§.numChildren > 0)
         {
            this.§-A§.removeChildAt(0);
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_ = this.mBirds[_loc2_];
            this.§-A§.addChildAt(_loc1_.sprite,0);
            _loc2_++;
         }
      }
      
      private function §4!y§(param1:§;M§, param2:§;M§) : Number
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
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §;M§
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
      
      public function §7#I§(param1:Number, param2:Number) : §"b§
      {
         if(param1 >= this.§-##§ - this.§+!;§ / 4 && param1 <= this.§-##§ + this.§+!;§ / 4 && param2 >= this.§0#[§ - this.§+!;§ / 4 && param2 <= this.§0#[§ + this.§+!o§)
         {
            return this;
         }
         return null;
      }
      
      public function §4"4§(param1:§=$&§) : void
      {
         var _loc3_:§;M§ = null;
         var _loc4_:§=!E§ = null;
         param1.slingshotX = this.§-##§;
         param1.slingshotY = this.§0#[§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc3_ = this.mBirds[_loc2_];
            (_loc4_ = new §=!E§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.type = _loc3_.name;
            param1.§-P§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §]! §() : void
      {
         while(this.mBirds.length > 0)
         {
            this.removeObject(this.mBirds[0]);
         }
      }
      
      public function § !A§(param1:Point, param2:Point) : Array
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
         if(this.§-##§ > param1.x && this.§-##§ < param2.x && this.§0#[§ > param1.y && this.§0#[§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §?<§(param1:String, param2:Number, param3:Number, param4:Number) : §;M§
      {
         var _loc5_:§;M§ = this.addSlingshotObject(param1,param2,param3,param4);
         this.§3O§();
         return _loc5_;
      }
      
      public function §17§() : int
      {
         return this.mBirds.length;
      }
      
      public function §@$B§() : int
      {
         return this.§""z§;
      }
      
      public function §3O§() : void
      {
         this.mBirds.sort(this.§-#>§);
         var _loc1_:int = 0;
         while(_loc1_ < this.mBirds.length)
         {
            this.mBirds[_loc1_].launchIndex = _loc1_;
            _loc1_++;
         }
         this.mNextBirdIndex = 0;
      }
      
      private function §-#>§(param1:§;M§, param2:§;M§) : Number
      {
         var _loc3_:Number = Math.pow(param1.x - this.§-##§,2) + Math.pow(param1.y - this.§0#[§,2);
         var _loc4_:Number = Math.pow(param2.x - this.§-##§,2) + Math.pow(param2.y - this.§0#[§,2);
         return _loc3_ - _loc4_;
      }
   }
}
