package §0I§
{
   import §"I§.§=!U§;
   import §&!>§.§3!k§;
   import §'<§.§;r§;
   import §,"%§.§4!`§;
   import §-!f§.§-!,§;
   import §-!f§.§7!6§;
   import §-!f§.DisplayObject;
   import §-!f§.Sprite;
   import §3g§.§?!d§;
   import §3g§.§`O§;
   import §5!7§.§3!Y§;
   import §5!7§.§7!R§;
   import §6_§.§6k§;
   import §7"+§.Texture;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §;"0§ extends EventDispatcher
   {
      
      public static const §65§:String = "slingshot_shot_bird";
      
      private static const §-d§:int = 1800;
      
      public static const §>R§:Number = 0.4;
      
      public static const §9" §:int = 0;
      
      public static const §1s§:int = 1;
      
      public static const §<"-§:int = 2;
      
      public static const §7N§:int = 3;
      
      public static const §8!m§:int = 5;
      
      public static const § "4§:int = 6;
      
      public static const §<!'§:int = 3151368;
      
      protected static var §[h§:Texture;
       
      
      protected var §3I§:§6k§;
      
      protected var §-!r§:§!!p§;
      
      protected var §0!'§:Number;
      
      protected var §#<§:Number;
      
      protected var §2!M§:Number;
      
      protected var §8"%§:Number = 8.5;
      
      protected var §`!Y§:Number;
      
      protected var §4'§:Number;
      
      protected var §=!%§:Number;
      
      protected var §7J§:Number;
      
      protected var §>5§:Number = 1.0;
      
      protected var §,1§:Boolean;
      
      protected var §'4§:Boolean;
      
      protected var §1"%§:Boolean = false;
      
      public var §"7§:Vector.<§3]§>;
      
      public var §'!0§:int;
      
      public var §-!L§:int = 0;
      
      protected var §[!p§:int;
      
      protected var §!!u§:Number;
      
      public var §;M§:Sprite;
      
      protected var §5?§:Sprite;
      
      public var §9"%§:int = 0;
      
      protected var §+!c§:Number = 0;
      
      public var mSlingShotState:int;
      
      public var §%5§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §=!g§:Boolean = false;
      
      public var § §:Number;
      
      protected var §]!c§:Sprite;
      
      protected var §;1§:Sprite;
      
      protected var §4!3§:Sprite;
      
      protected var §[!C§:DisplayObject;
      
      protected var §["4§:Sprite;
      
      protected var §"4§:DisplayObject;
      
      protected var §-#§:Sprite;
      
      protected var §2_§:DisplayObject;
      
      protected var §&!D§:Sprite;
      
      protected var §>!D§:Sprite;
      
      protected var §4S§:DisplayObject;
      
      private var §#!u§:Number = 0;
      
      private var §]P§:Number = 0;
      
      private var §=!t§:Number = -1;
      
      private var §>D§:Number = 0;
      
      private var § #§:Boolean = false;
      
      private var §3'§:int = 0;
      
      public function §;"0§(param1:§!!p§, param2:§;r§, param3:Sprite, param4:Number = 1.0, param5:Boolean = true, param6:Boolean = true)
      {
         var _loc7_:int = 0;
         var _loc8_:§4!`§ = null;
         this.§"7§ = new Vector.<§3]§>();
         super();
         this.§-!r§ = param1;
         this.§]!c§ = param3;
         this.§>5§ = param4;
         this.§,1§ = param5;
         this.§'4§ = param6;
         if(param2)
         {
            this.setPosition(param2.slingshotX,param2.slingshotY,param2.§;!_§);
            this.§-"5§();
            _loc7_ = 0;
            while(_loc7_ < param2.§=!k§)
            {
               _loc8_ = param2.§?!P§(_loc7_);
               this.§>W§(_loc8_.type,_loc8_.x,_loc8_.y,_loc8_.angle);
               _loc7_++;
            }
            this.§3'§ = this.§ B§();
            this.§'!0§ = 0;
            if(this.§"7§.length <= 0)
            {
               §=!U§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§0!'§ + " " + this.§#<§);
               this.§7w§(§7N§);
            }
            else
            {
               this.§7w§(§9" §);
            }
         }
         else
         {
            §=!U§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§7w§(§7N§);
         }
         this.§ § = 0;
         this.§80§();
         this.update(0,true);
         this.§@D§();
         this.§,z§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§]!c§;
      }
      
      public function get §,l§() : Sprite
      {
         return this.§5?§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§#!u§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§'!0§ < this.§"7§.length;
      }
      
      public function get §#!+§() : Number
      {
         return this.§+!c§;
      }
      
      public function get x() : Number
      {
         return this.§0!'§;
      }
      
      public function get y() : Number
      {
         return this.§#<§;
      }
      
      public function get angle() : Number
      {
         return this.§2!M§;
      }
      
      public function get §4+§() : Boolean
      {
         return this.§'4§;
      }
      
      public function dispose() : void
      {
         while(this.§"7§.length > 0)
         {
            this.§[H§(0);
         }
         this.§"7§ = null;
         if(this.§]!c§)
         {
            this.§]!c§.dispose();
            this.§]!c§ = null;
         }
         this.§;M§ = null;
      }
      
      public function §2!$§(param1:String, param2:Number, param3:Number, param4:int = -1) : §3]§
      {
         var _loc6_:§3]§ = null;
         if(this.§"7§.length > 0)
         {
            (_loc6_ = this.§"7§[0]).§39§(false);
            _loc6_.§^P§ = false;
         }
         var _loc5_:§3]§;
         (_loc5_ = this.§>W§(param1,param2,param3,0,param4)).§39§(true);
         return _loc5_;
      }
      
      protected function §>W§(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §3]§
      {
         var _loc6_:§3!Y§ = this.§-!r§.levelItemManager.§-!K§(param1);
         var _loc7_:Sprite;
         (_loc7_ = new Sprite()).scaleX = _loc6_.scale;
         _loc7_.scaleY = _loc6_.scale;
         ++this.§-!L§;
         var _loc8_:§3]§ = this.initializeSlingshotObject(_loc6_,param2,param3,param4,_loc7_);
         if(param5 < 0)
         {
            this.§"7§.push(_loc8_);
         }
         else
         {
            this.§"7§.splice(param5,0,_loc8_);
         }
         this.§;M§.addChild(_loc8_.sprite);
         return _loc8_;
      }
      
      protected function initializeSlingshotObject(param1:§3!Y§, param2:Number, param3:Number, param4:Number, param5:Sprite) : §3]§
      {
         return new §3]§(this,param5,param1.itemName,param1,param2,param3,param4);
      }
      
      public function §7w§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §9" §)
         {
            this.§>w§();
            this.§!!u§ = 1000;
         }
         else if(this.mSlingShotState == §1s§)
         {
            this.§>w§();
            this.§!!u§ = 0;
         }
         else if(this.mSlingShotState == §<"-§)
         {
            this.§!!u§ = 10000;
            this.§=!g§ = false;
            this.§>w§();
         }
         else if(this.mSlingShotState == §7N§)
         {
            this.§>w§();
            this.§!!u§ = 2000;
         }
         else if(this.mSlingShotState == §8!m§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§=!g§ = false;
               this.§>w§();
               this.§"7§[this.§'!0§].setPosition(this.§ I§ - this.§"7§[this.§'!0§].radius * Math.cos(this.§+!c§ / (180 / Math.PI)),this.§#!S§ + this.§"7§[this.§'!0§].radius * Math.sin(this.§+!c§ / (180 / Math.PI)),180 - this.§+!c§);
            }
            else
            {
               this.§>w§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §,!j§() : §!!p§
      {
         return this.§-!r§;
      }
      
      public function §8!Q§() : Boolean
      {
         return this.mSlingShotState == §7N§ && this.§!!u§ <= 0;
      }
      
      protected function §92§() : §6k§
      {
         return this.§-!r§.§8!3§.§@!P§("SLINGSHOT");
      }
      
      private function §-"5§() : void
      {
         this.§3I§ = this.§92§();
         this.§[!C§ = this.§3I§.getFrame(0);
         this.§[!C§.pivotX = -3;
         this.§[!C§.pivotY = -24;
         this.§4S§ = this.§3I§.getFrame(1);
         this.§4S§.pivotX = -30;
         this.§4S§.pivotY = -30;
         this.§=p§();
         this.§;=§();
         this.§;1§ = new Sprite();
         this.§;1§.addChild(this.§[!C§);
         this.§;1§.addChild(this.§["4§);
         this.§5?§ = new Sprite();
         this.§;M§ = new Sprite();
         this.§4!3§ = new Sprite();
         this.§4!3§.addChild(this.§&!D§);
         this.§4!3§.addChild(this.§-#§);
         this.§4!3§.addChild(this.§4S§);
         this.§[!I§();
      }
      
      protected function §[!I§() : void
      {
         this.§]!c§.addChild(this.§;1§);
         this.§]!c§.addChild(this.§5?§);
         this.§]!c§.addChild(this.§;M§);
         this.§]!c§.addChild(this.§4!3§);
      }
      
      public function §=p§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§`!Y§ = this.§0!'§;
         this.§4'§ = this.§#<§;
         this.§7J§ = §1!N§.§`!U§;
         _loc1_ = null;
      }
      
      protected function §@!>§(param1:uint) : DisplayObject
      {
         return new §7!6§(2,2,param1);
      }
      
      protected function §&!F§(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc3_:BitmapData = null;
         if(!§[h§ || param2)
         {
            _loc3_ = new BitmapData(18,26,true,4278190080 | param1);
            if(§[h§)
            {
               this.§-!r§.§`!`§.§'!y§(§[h§);
            }
            §[h§ = this.§-!r§.§`!`§.§ ![§(_loc3_);
         }
         return new §-!,§(§[h§);
      }
      
      protected function §;=§(param1:uint = 3151368, param2:uint = 3151368, param3:Boolean = false) : void
      {
         this.§&!D§ = new Sprite();
         this.§>!D§ = new Sprite();
         var _loc4_:DisplayObject;
         (_loc4_ = this.§&!F§(param2,param3)).rotation = Math.PI;
         _loc4_.x = _loc4_.width / 2;
         _loc4_.y = _loc4_.height / 2;
         this.§>!D§.addChild(_loc4_);
         this.§&!D§.addChild(this.§>!D§);
         this.§["4§ = new Sprite();
         this.§["4§.x = 22;
         this.§["4§.y = 0;
         this.§"4§ = this.§@!>§(param1);
         this.§["4§.addChild(this.§"4§);
         this.§-#§ = new Sprite();
         this.§-#§.x = -17;
         this.§-#§.y = 5;
         this.§2_§ = this.§@!>§(param1);
         this.§-#§.addChild(this.§2_§);
      }
      
      protected function §,z§(param1:Number) : void
      {
         var _loc2_:Number = (this.§#!S§ - this.§#<§) / §!!p§.§6L§;
         var _loc3_:Number = (this.§ I§ - this.§0!'§) / §!!p§.§6L§;
         var _loc4_:Number = Math.cos(this.§2!M§);
         var _loc5_:Number = Math.sin(this.§2!M§);
         var _loc6_:Number = -Math.sin(this.§2!M§);
         var _loc7_:Number = Math.cos(this.§2!M§);
         var _loc8_:Number = _loc3_;
         var _loc9_:Number = _loc2_;
         _loc3_ = _loc8_ * _loc4_ + _loc9_ * _loc5_;
         _loc2_ = _loc8_ * _loc6_ + _loc9_ * _loc7_;
         var _loc10_:Number = 3.5 + 8 * ((this.§7J§ - this.§;_§) / this.§7J§);
         this.§&!D§.x = _loc3_;
         this.§&!D§.y = _loc2_;
         this.§&!D§.rotation = -this.§2!M§ - this.§+!c§ / (180 / Math.PI);
         this.§;1§.x = this.§0!'§ / §!!p§.§6L§;
         this.§;1§.y = this.§#<§ / §!!p§.§6L§;
         this.§;1§.rotation = this.§2!M§;
         this.§4!3§.x = this.§0!'§ / §!!p§.§6L§;
         this.§4!3§.y = this.§#<§ / §!!p§.§6L§;
         this.§4!3§.rotation = this.§2!M§;
         this.§-#§.rotation = Math.atan2(_loc2_ - this.§-#§.y,_loc3_ - this.§-#§.x);
         this.§2_§.width = Math.sqrt(Math.pow(_loc3_ - this.§-#§.x,2) + Math.pow(_loc2_ - this.§-#§.y,2));
         this.§2_§.height = _loc10_ * 2;
         this.§2_§.y = -this.§2_§.height / 2;
         this.§["4§.rotation = Math.atan2(_loc2_ - this.§["4§.y,_loc3_ - this.§["4§.x);
         this.§"4§.width = Math.sqrt(Math.pow(_loc3_ - this.§["4§.x,2) + Math.pow(_loc2_ - this.§["4§.y,2));
         this.§"4§.height = _loc10_ * 2;
         this.§"4§.y = -this.§"4§.height / 2;
         this.§%5§ = false;
      }
      
      public function §;!v§() : void
      {
         var _loc2_:§3]§ = null;
         while(this.§"7§.length > 0)
         {
            this.§[H§(0,true);
         }
         this.§]!S§();
         if(this.§"7§.length > 0)
         {
            _loc2_ = this.§"7§[0];
            _loc2_.§39§(false);
         }
         var _loc1_:§3]§ = this.§>W§("BIRD_SARDINE",this.§0!'§,this.§#<§,0);
         _loc1_.§39§(true);
         _loc1_.§^P§ = false;
         this.§7w§(§<"-§);
      }
      
      protected function §]!S§() : void
      {
         §3!k§.§]"4§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§7w§(§8!m§);
      }
      
      public function §>w§() : void
      {
         this.setNewCoordinatesForRubber(this.§`!Y§,this.§4'§ + this.§7J§ / 8);
      }
      
      protected function get §2!Z§() : Number
      {
         return this.§=!%§ * this.§>5§;
      }
      
      protected function get §;_§() : Number
      {
         return Math.min(this.§=!%§,this.§7J§);
      }
      
      protected function get § I§() : Number
      {
         if(this.§=!%§ >= this.§7J§)
         {
            return this.§`!Y§ + this.§7J§ * Math.cos(this.§+!c§ / 180 * Math.PI);
         }
         return this.§`!Y§ + this.§=!%§ * Math.cos(this.§+!c§ / 180 * Math.PI);
      }
      
      protected function get §#!S§() : Number
      {
         if(this.§=!%§ >= this.§7J§)
         {
            return this.§4'§ - this.§7J§ * Math.sin(this.§+!c§ / 180 * Math.PI);
         }
         return this.§4'§ - this.§=!%§ * Math.sin(this.§+!c§ / 180 * Math.PI);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         if(this.§=!t§ > 0)
         {
            return false;
         }
         var _loc4_:Number = param1 - this.§`!Y§;
         var _loc5_:Number = param2 - this.§4'§;
         var _loc6_:Number;
         if((_loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) * this.§>5§ > this.§7J§)
         {
            if(param3)
            {
               return false;
            }
            _loc6_ = this.§7J§ / this.§>5§;
         }
         var _loc7_:Number = (_loc7_ = Math.atan2(-(param2 - this.§4'§),param1 - this.§`!Y§)) * (180 / Math.PI);
         if(!this.mDragging && this.§=!t§ < 0)
         {
            _loc6_ = 0.8;
            _loc7_ = -160;
         }
         if(this.§,1§)
         {
            _loc6_ = this.§`<§(_loc6_);
         }
         return this.§%M§(_loc7_,_loc6_);
      }
      
      protected function §`<§(param1:Number) : Number
      {
         var _loc6_:Number = NaN;
         var _loc5_:Number = this.§7J§ / 2;
         if(param1 > _loc5_)
         {
            if(this.§+!c§ > -90 - 12 + 5 && this.§+!c§ < -90 + 12 + 5)
            {
               return _loc5_;
            }
            if(this.§+!c§ > -90 - 12 - 4 + 5 && this.§+!c§ < -90 + 12 + 4 + 5)
            {
               return Number(_loc5_ + (this.§7J§ - _loc5_) * (Math.abs(this.§+!c§ - -90 - 5) - 12) / 4);
            }
         }
         return param1;
      }
      
      protected function §%M§(param1:Number, param2:Number) : Boolean
      {
         this.§+!c§ = param1;
         this.§=!%§ = param2;
         if(this.§=!%§ <= this.§7J§ * 0.45)
         {
            this.§1"%§ = true;
         }
         else if(this.§1"%§ && this.§=!%§ >= this.§7J§ * 0.8)
         {
            this.§]!D§();
            this.§1"%§ = false;
         }
         this.§%5§ = true;
         return true;
      }
      
      protected function §]!D§() : void
      {
         §3!k§.§]"4§("SlingshotStreched");
      }
      
      protected function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§0!'§ + param1 * Math.cos(this.§2!M§ + Math.PI / 2),this.§#<§ + param1 * Math.sin(this.§2!M§ + Math.PI / 2),this.§2!M§);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc5_:Number = param1 - this.§0!'§;
         this.§0!'§ = param1;
         var _loc6_:Number = param2 - this.§#<§;
         this.§#<§ = param2;
         this.§2!M§ = param3;
         this.§4'§ += _loc6_;
         this.§`!Y§ += _loc5_;
         if(param4)
         {
            this.§,z§(0);
         }
         this.§%5§ = true;
      }
      
      protected function §#F§() : Number
      {
         return this.§2!Z§ / this.§7J§;
      }
      
      public function §>E§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§3]§ = this.§"7§[this.§'!0§];
         var _loc3_:Number = this.§#F§();
         if(_loc2_)
         {
            _loc1_ = _loc2_.§9!v§;
         }
         return _loc1_ * _loc3_;
      }
      
      public function §'!F§() : Point
      {
         var _loc1_:§3]§ = null;
         if(this.§"7§.length > this.§'!0§)
         {
            _loc1_ = this.§"7§[this.§'!0§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §[C§() : Point
      {
         return new Point(this.§`!Y§,this.§4'§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§3]§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.§package§(param1);
         if(this.§%5§)
         {
            this.§,z§(param1);
         }
         this.§!!u§ -= param1;
         if(this.§!!u§ < 0)
         {
            this.§!!u§ = 0;
         }
         if(this.mSlingShotState != §7N§)
         {
            this.§#!#§(param1,param2);
            _loc3_ = null;
            if(this.§"7§.length > 0)
            {
               _loc3_ = this.§"7§[this.§'!0§];
            }
            if(_loc3_)
            {
               _loc3_.§?!J§(param1);
            }
            if(!_loc3_)
            {
               this.§7w§(§7N§);
            }
            else if(this.mSlingShotState == §9" §)
            {
               if(this.§!!u§ <= 0)
               {
                  this.§7w§(§1s§);
                  _loc3_.§8w§();
               }
            }
            else if(this.mSlingShotState == §1s§)
            {
               if(_loc3_.§^=§)
               {
                  this.§7w§(§<"-§);
               }
            }
            else if(this.mSlingShotState == §<"-§)
            {
               _loc4_ = this.§ I§ - _loc3_.radius * Math.cos(this.§+!c§ / (180 / Math.PI));
               _loc5_ = this.§#!S§ + _loc3_.radius * Math.sin(this.§+!c§ / (180 / Math.PI));
               if(this.mDragging || this.§=!t§ >= 0)
               {
                  _loc3_.setPosition(_loc4_,_loc5_,180 - this.§+!c§);
               }
               else
               {
                  _loc3_.setPosition(_loc4_,_loc5_,this.angle);
               }
               if(this.§=!g§)
               {
                  this.§,t§(this.§#F§(),this.§+!c§);
               }
            }
         }
      }
      
      public function §2!r§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§3]§ = null;
         if(this.§"7§.length > 0)
         {
            _loc5_ = this.§"7§[this.§'!0§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2,180 - this.§+!c§);
         this.§,t§(param3,param4);
      }
      
      protected function §4!@§() : void
      {
         this.§ #§ = false;
         var _loc1_:§3]§ = null;
         if(this.§"7§.length > this.§'!0§)
         {
            _loc1_ = this.§"7§[this.§'!0§];
         }
         if(!_loc1_)
         {
            return;
         }
         this.§#!u§ = new Date().time;
         this.§-!r§.§4!@§(_loc1_,this.§]P§,this.§+!c§);
         this.§[H§(this.§'!0§,_loc1_.§#A§ > 0);
         this.§=Z§();
         if(this.§'!0§ >= this.§"7§.length)
         {
            this.§7w§(§7N§);
         }
         else
         {
            this.§7w§(§9" §);
         }
         dispatchEvent(new Event(§65§));
      }
      
      protected function §package§(param1:Number) : void
      {
         if(this.§=!t§ <= 0)
         {
            return;
         }
         this.§%5§ = true;
         this.§=!t§ -= param1;
         if(this.§=!t§ <= 0)
         {
            this.§=!t§ = 0;
         }
         var _loc2_:Number = this.§=!t§ / §-d§;
         var _loc3_:Number = this.§>D§ * Math.cos(_loc2_ * Math.PI * 8) * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_;
         this.§%M§(this.§+!c§,_loc3_);
         if(this.§=!t§ == 0)
         {
            this.§=!t§ = -1;
            this.§>w§();
         }
         if(this.§ #§)
         {
            this.§4!@§();
         }
      }
      
      public function §,t§(param1:Number, param2:Number) : void
      {
         this.§]P§ = param1;
         this.§+!c§ = param2;
         this.§=!t§ = §-d§;
         this.§>D§ = this.§=!%§;
         this.mDragging = false;
         this.§=!g§ = false;
         this.§ #§ = true;
      }
      
      protected function §=Z§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §3!k§.§]"4§("BirdShot" + _loc1_);
      }
      
      public function §#!#§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§'!0§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§"7§.length)
         {
            this.§"7§[_loc4_].update(param1,this.mSlingShotState == §8!m§,param2);
            _loc4_++;
         }
      }
      
      public function §#"&§() : String
      {
         var _loc1_:§3]§ = null;
         if(this.§'!0§ < this.§"7§.length)
         {
            _loc1_ = this.§"7§[this.§'!0§];
            return _loc1_.name;
         }
         return null;
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§3]§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§>w§();
         if(this.§[!p§ >= this.§"7§.length)
         {
            return false;
         }
         _loc1_ = this.§"7§[this.§[!p§];
         _loc1_.§4!g§(-1,true);
         _loc2_ = this.§-!r§.levelItemManager.§-!K§(_loc1_.name).score;
         this.§4"2§(_loc1_,_loc2_);
         ++this.§[!p§;
         return true;
      }
      
      protected function §4"2§(param1:§3]§, param2:int) : void
      {
         this.§-!r§.addScore(param2,§2"3§.§!!y§,true,param1.x,param1.y - 3,§?!d§.§7%§(param1.name));
      }
      
      public function § B§() : int
      {
         var _loc2_:§3]§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§"7§)
         {
            _loc1_ += this.§-!r§.levelItemManager.§-!K§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §=!_§() : int
      {
         return this.§3'§;
      }
      
      protected function §@D§() : void
      {
         var _loc4_:int = 0;
         var _loc1_:int = 1000;
         var _loc2_:Number = Math.cos(this.§2!M§ + Math.PI / 2) * this.§8"%§;
         var _loc3_:Number = Math.sin(this.§2!M§ + Math.PI / 2) * this.§8"%§;
         while((_loc4_ = this.§-!r§.objects.§^#§(this.§`!Y§ + _loc2_,this.§4'§ + _loc3_)) == -1)
         {
            this.applyGravity(0.1);
            if(_loc1_-- <= 0)
            {
               break;
            }
         }
         this.§ § = -1;
      }
      
      public function § ",§(param1:Number, param2:Number) : void
      {
         this.§]!c§.x = -param1;
         this.§]!c§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §<"-§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function get canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §<"-§ && this.§#F§() >= §>R§ && this.§=!t§ < 0;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§7w§(§<"-§);
         var _loc1_:§3]§ = this.§"7§[this.§'!0§];
         _loc1_.§4!g§(§7!R§.§[!K§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§3]§ = this.§"7§[this.§'!0§];
         _loc1_.§4!g§(§7!R§.§!L§);
      }
      
      public function shoot() : void
      {
         this.§=!g§ = true;
      }
      
      protected function §[H§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§3]§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§"7§[param1])
         {
            _loc3_ = this.§"7§[param1];
            this.§;M§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§@!I§(this.§"7§[param1]);
            }
            _loc3_.dispose();
            this.§"7§[param1] = null;
         }
         this.§"7§.splice(param1,1);
      }
      
      protected function §@!I§(param1:§3]§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §!!p§.§6L§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §!!p§.§6L§) + Math.random() * -_loc8_ * 2;
            this.§-!r§.particles.§`q§(§?!d§.§="+§,§`O§.§#!`§,§?!d§.§!!I§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§?!d§.§ !s§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§-!r§.particles.§`q§(§?!d§.§9%§,§`O§.§#!`§,§?!d§.§!!I§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:§3]§) : void
      {
         this.§[H§(this.§"7§.indexOf(param1));
      }
      
      public function §80§() : void
      {
         var _loc2_:§3]§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§3]§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§"7§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§0!'§ - this.§"7§[_loc1_].x) * (this.§0!'§ - this.§"7§[_loc1_].x) + (this.§#<§ - this.§"7§[_loc1_].y) * (this.§#<§ - this.§"7§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§0!'§ - this.§"7§[_loc1_ + 1].x) * (this.§0!'§ - this.§"7§[_loc1_ + 1].x) + (this.§#<§ - this.§"7§[_loc1_ + 1].y) * (this.§#<§ - this.§"7§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§"7§[_loc1_];
               this.§"7§.splice(_loc1_,1);
               this.§"7§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§;M§.numChildren > 0)
         {
            this.§;M§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§"7§.length)
         {
            _loc2_ = this.§"7§[_loc1_];
            this.§;M§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §3]§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§"7§.length)
         {
            if(this.§"7§[_loc3_])
            {
               if(this.§"7§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§"7§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §7]§(param1:Number, param2:Number) : §;"0§
      {
         if(param1 >= this.§0!'§ - this.§7J§ / 4 && param1 <= this.§0!'§ + this.§7J§ / 4 && param2 >= this.§#<§ - this.§7J§ / 4 && this.§#<§ <= this.§#<§ + this.§8"%§)
         {
            return this;
         }
         return null;
      }
      
      public function §=!u§(param1:§;r§) : void
      {
         var _loc3_:§3]§ = null;
         var _loc4_:§4!`§ = null;
         param1.slingshotX = this.§0!'§;
         param1.slingshotY = this.§#<§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§"7§.length)
         {
            _loc3_ = this.§"7§[_loc2_];
            (_loc4_ = new §4!`§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.type = _loc3_.name;
            param1.§3!H§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §#r§() : void
      {
         while(this.§"7§.length > 0)
         {
            this.removeObject(this.§"7§[0]);
         }
      }
      
      public function §4!8§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§"7§.length)
         {
            if(this.§"7§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§"7§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§0!'§ > param1.x && this.§0!'§ < param2.x && this.§#<§ > param1.y && this.§#<§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §-!>§(param1:String, param2:Number, param3:Number, param4:Number) : §3]§
      {
         var _loc5_:§3]§ = this.§>W§(param1,param2,param3,param4);
         this.§80§();
         return _loc5_;
      }
      
      public function §^!n§() : Number
      {
         return this.§"7§.length;
      }
   }
}
