package §]A§
{
   import § !=§.§0F§;
   import § !=§.DisplayObject;
   import § !=§.Sprite;
   import § !=§.§break§;
   import § !Q§.§"D§;
   import § !a§.Texture;
   import §!P§.§2"4§;
   import §7!<§.§'"%§;
   import §;L§.§=l§;
   import §;Z§.§3?§;
   import §;Z§.§@!`§;
   import §;s§.§%!c§;
   import §[^§.§>"§;
   import §[^§.§`!M§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §]"!§ extends EventDispatcher
   {
      
      public static const §2!Q§:String = "slingshot_shot_bird";
      
      private static const §8p§:int = 1800;
      
      public static const §"!b§:Number = 0.4;
      
      public static const §-!n§:int = 0;
      
      public static const §8§:int = 1;
      
      public static const §^E§:int = 2;
      
      public static const §7"%§:int = 3;
      
      public static const § r§:int = 5;
      
      public static const §%G§:int = 6;
      
      public static const §<!#§:int = 3151368;
      
      protected static var §1X§:Texture;
       
      
      protected var §^!;§:§=l§;
      
      protected var §+"1§:§[d§;
      
      protected var §'!a§:Number;
      
      protected var §[6§:Number;
      
      protected var §`b§:Number;
      
      protected var §?+§:Number = 8.5;
      
      protected var §]!9§:Number;
      
      protected var §]P§:Number;
      
      protected var §!Q§:Number;
      
      protected var §2O§:Number;
      
      protected var §2!c§:Number = 1.0;
      
      protected var §#>§:Boolean;
      
      protected var §!!_§:Boolean;
      
      protected var §7!Y§:Boolean = false;
      
      public var §3!Q§:Vector.<§0n§>;
      
      public var §2!D§:int;
      
      public var §?m§:int = 0;
      
      protected var §#!=§:int;
      
      protected var §<3§:Number;
      
      public var §@+§:Sprite;
      
      protected var §5-§:Sprite;
      
      public var §[" §:int = 0;
      
      protected var §[!@§:Number = 0;
      
      public var mSlingShotState:int;
      
      public var §>h§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var § !R§:Boolean = false;
      
      public var §`!C§:Number;
      
      protected var §%!D§:Sprite;
      
      protected var §=!h§:Sprite;
      
      protected var §,!t§:Sprite;
      
      protected var § !9§:DisplayObject;
      
      protected var §7!C§:Sprite;
      
      protected var §6K§:DisplayObject;
      
      protected var §,!^§:Sprite;
      
      protected var §#!o§:DisplayObject;
      
      protected var §7W§:Sprite;
      
      protected var §!"1§:Sprite;
      
      protected var §2!=§:DisplayObject;
      
      private var § else§:Number = 0;
      
      private var §0H§:Number = 0;
      
      private var §@!R§:Number = -1;
      
      private var §=J§:Number = 0;
      
      private var §0"0§:Boolean = false;
      
      private var §`!+§:int = 0;
      
      public function §]"!§(param1:§[d§, param2:§2"4§, param3:Sprite, param4:Number = 1.0, param5:Boolean = true, param6:Boolean = true)
      {
         var _loc7_:int = 0;
         var _loc8_:§'"%§ = null;
         this.§3!Q§ = new Vector.<§0n§>();
         super();
         this.§+"1§ = param1;
         this.§%!D§ = param3;
         this.§2!c§ = param4;
         this.§#>§ = param5;
         this.§!!_§ = param6;
         if(param2)
         {
            this.setPosition(param2.slingshotX,param2.slingshotY,param2.§4Z§);
            this.§ !n§();
            _loc7_ = 0;
            while(_loc7_ < param2.§`,§)
            {
               _loc8_ = param2.§6m§(_loc7_);
               this.§4!W§(_loc8_.type,_loc8_.x,_loc8_.y,_loc8_.angle);
               _loc7_++;
            }
            this.§`!+§ = this.§?"1§();
            this.§2!D§ = 0;
            if(this.§3!Q§.length <= 0)
            {
               §"D§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§'!a§ + " " + this.§[6§);
               this.§[!K§(§7"%§);
            }
            else
            {
               this.§[!K§(§-!n§);
            }
         }
         else
         {
            §"D§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§[!K§(§7"%§);
         }
         this.§`!C§ = 0;
         this.§]"&§();
         this.update(0,true);
         this.§`!e§();
         this.§,!%§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§%!D§;
      }
      
      public function get §9!Y§() : Sprite
      {
         return this.§5-§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§ else§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§2!D§ < this.§3!Q§.length;
      }
      
      public function get §+!d§() : Number
      {
         return this.§[!@§;
      }
      
      public function get x() : Number
      {
         return this.§'!a§;
      }
      
      public function get y() : Number
      {
         return this.§[6§;
      }
      
      public function get angle() : Number
      {
         return this.§`b§;
      }
      
      public function get §7!N§() : Boolean
      {
         return this.§!!_§;
      }
      
      public function dispose() : void
      {
         while(this.§3!Q§.length > 0)
         {
            this.§9_§(0);
         }
         this.§3!Q§ = null;
         if(this.§%!D§)
         {
            this.§%!D§.dispose();
            this.§%!D§ = null;
         }
         this.§@+§ = null;
      }
      
      public function §`!w§(param1:String, param2:Number, param3:Number, param4:int = -1) : §0n§
      {
         var _loc6_:§0n§ = null;
         if(this.§3!Q§.length > 0)
         {
            (_loc6_ = this.§3!Q§[0]).§6!9§(false);
            _loc6_.§7h§ = false;
         }
         var _loc5_:§0n§;
         (_loc5_ = this.§4!W§(param1,param2,param3,0,param4)).§6!9§(true);
         return _loc5_;
      }
      
      protected function §4!W§(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §0n§
      {
         var _loc6_:§`!M§ = this.§+"1§.levelItemManager.§ "4§(param1);
         var _loc7_:Sprite;
         (_loc7_ = new Sprite()).scaleX = _loc6_.scale;
         _loc7_.scaleY = _loc6_.scale;
         ++this.§?m§;
         var _loc8_:§0n§ = this.initializeSlingshotObject(_loc6_,param2,param3,param4,_loc7_);
         if(param5 < 0)
         {
            this.§3!Q§.push(_loc8_);
         }
         else
         {
            this.§3!Q§.splice(param5,0,_loc8_);
         }
         this.§@+§.addChild(_loc8_.sprite);
         return _loc8_;
      }
      
      protected function initializeSlingshotObject(param1:§`!M§, param2:Number, param3:Number, param4:Number, param5:Sprite) : §0n§
      {
         return new §0n§(this,param5,param1.itemName,param1,param2,param3,param4);
      }
      
      public function §[!K§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §-!n§)
         {
            this.§]N§();
            this.§<3§ = 1000;
         }
         else if(this.mSlingShotState == §8§)
         {
            this.§]N§();
            this.§<3§ = 0;
         }
         else if(this.mSlingShotState == §^E§)
         {
            this.§<3§ = 10000;
            this.§ !R§ = false;
            this.§]N§();
         }
         else if(this.mSlingShotState == §7"%§)
         {
            this.§]N§();
            this.§<3§ = 2000;
         }
         else if(this.mSlingShotState == § r§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§ !R§ = false;
               this.§]N§();
               this.§3!Q§[this.§2!D§].setPosition(this.§2!q§ - this.§3!Q§[this.§2!D§].radius * Math.cos(this.§[!@§ / (180 / Math.PI)),this.§4t§ + this.§3!Q§[this.§2!D§].radius * Math.sin(this.§[!@§ / (180 / Math.PI)),180 - this.§[!@§);
            }
            else
            {
               this.§]N§();
            }
         }
         this.mDragging = false;
      }
      
      public function get § "+§() : §[d§
      {
         return this.§+"1§;
      }
      
      public function §%!W§() : Boolean
      {
         return this.mSlingShotState == §7"%§ && this.§<3§ <= 0;
      }
      
      protected function §-!i§() : §=l§
      {
         return this.§+"1§.§%B§.§[!R§("SLINGSHOT");
      }
      
      private function § !n§() : void
      {
         this.§^!;§ = this.§-!i§();
         this.§ !9§ = this.§^!;§.getFrame(0);
         this.§ !9§.pivotX = -3;
         this.§ !9§.pivotY = -24;
         this.§2!=§ = this.§^!;§.getFrame(1);
         this.§2!=§.pivotX = -30;
         this.§2!=§.pivotY = -30;
         this.§^F§();
         this.§'d§();
         this.§=!h§ = new Sprite();
         this.§=!h§.addChild(this.§ !9§);
         this.§=!h§.addChild(this.§7!C§);
         this.§5-§ = new Sprite();
         this.§@+§ = new Sprite();
         this.§,!t§ = new Sprite();
         this.§,!t§.addChild(this.§7W§);
         this.§,!t§.addChild(this.§,!^§);
         this.§,!t§.addChild(this.§2!=§);
         this.§ R§();
      }
      
      protected function § R§() : void
      {
         this.§%!D§.addChild(this.§=!h§);
         this.§%!D§.addChild(this.§5-§);
         this.§%!D§.addChild(this.§@+§);
         this.§%!D§.addChild(this.§,!t§);
      }
      
      public function §^F§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§]!9§ = this.§'!a§;
         this.§]P§ = this.§[6§;
         this.§2O§ = §7x§.§"O§;
         _loc1_ = null;
      }
      
      protected function §9!D§(param1:uint) : DisplayObject
      {
         return new §break§(2,2,param1);
      }
      
      protected function §'!g§(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc3_:BitmapData = null;
         if(!§1X§ || param2)
         {
            _loc3_ = new BitmapData(18,26,true,4278190080 | param1);
            if(§1X§)
            {
               this.§+"1§.§7!m§.§!Y§(§1X§);
            }
            §1X§ = this.§+"1§.§7!m§.§@",§(_loc3_);
         }
         return new §0F§(§1X§);
      }
      
      protected function §'d§(param1:uint = 3151368, param2:uint = 3151368, param3:Boolean = false) : void
      {
         this.§7W§ = new Sprite();
         this.§!"1§ = new Sprite();
         var _loc4_:DisplayObject;
         (_loc4_ = this.§'!g§(param2,param3)).rotation = Math.PI;
         _loc4_.x = _loc4_.width / 2;
         _loc4_.y = _loc4_.height / 2;
         this.§!"1§.addChild(_loc4_);
         this.§7W§.addChild(this.§!"1§);
         this.§7!C§ = new Sprite();
         this.§7!C§.x = 22;
         this.§7!C§.y = 0;
         this.§6K§ = this.§9!D§(param1);
         this.§7!C§.addChild(this.§6K§);
         this.§,!^§ = new Sprite();
         this.§,!^§.x = -17;
         this.§,!^§.y = 5;
         this.§#!o§ = this.§9!D§(param1);
         this.§,!^§.addChild(this.§#!o§);
      }
      
      protected function §,!%§(param1:Number) : void
      {
         var _loc2_:Number = (this.§4t§ - this.§[6§) / §[d§.§]!U§;
         var _loc3_:Number = (this.§2!q§ - this.§'!a§) / §[d§.§]!U§;
         var _loc4_:Number = Math.cos(this.§`b§);
         var _loc5_:Number = Math.sin(this.§`b§);
         var _loc6_:Number = -Math.sin(this.§`b§);
         var _loc7_:Number = Math.cos(this.§`b§);
         var _loc8_:Number = _loc3_;
         var _loc9_:Number = _loc2_;
         _loc3_ = _loc8_ * _loc4_ + _loc9_ * _loc5_;
         _loc2_ = _loc8_ * _loc6_ + _loc9_ * _loc7_;
         var _loc10_:Number = 3.5 + 8 * ((this.§2O§ - this.§!!Y§) / this.§2O§);
         this.§7W§.x = _loc3_;
         this.§7W§.y = _loc2_;
         this.§7W§.rotation = -this.§`b§ - this.§[!@§ / (180 / Math.PI);
         this.§=!h§.x = this.§'!a§ / §[d§.§]!U§;
         this.§=!h§.y = this.§[6§ / §[d§.§]!U§;
         this.§=!h§.rotation = this.§`b§;
         this.§,!t§.x = this.§'!a§ / §[d§.§]!U§;
         this.§,!t§.y = this.§[6§ / §[d§.§]!U§;
         this.§,!t§.rotation = this.§`b§;
         this.§,!^§.rotation = Math.atan2(_loc2_ - this.§,!^§.y,_loc3_ - this.§,!^§.x);
         this.§#!o§.width = Math.sqrt(Math.pow(_loc3_ - this.§,!^§.x,2) + Math.pow(_loc2_ - this.§,!^§.y,2));
         this.§#!o§.height = _loc10_ * 2;
         this.§#!o§.y = -this.§#!o§.height / 2;
         this.§7!C§.rotation = Math.atan2(_loc2_ - this.§7!C§.y,_loc3_ - this.§7!C§.x);
         this.§6K§.width = Math.sqrt(Math.pow(_loc3_ - this.§7!C§.x,2) + Math.pow(_loc2_ - this.§7!C§.y,2));
         this.§6K§.height = _loc10_ * 2;
         this.§6K§.y = -this.§6K§.height / 2;
         this.§>h§ = false;
      }
      
      public function §<!t§() : void
      {
         var _loc2_:§0n§ = null;
         while(this.§3!Q§.length > 0)
         {
            this.§9_§(0,true);
         }
         this.§1x§();
         if(this.§3!Q§.length > 0)
         {
            _loc2_ = this.§3!Q§[0];
            _loc2_.§6!9§(false);
         }
         var _loc1_:§0n§ = this.§4!W§("BIRD_SARDINE",this.§'!a§,this.§[6§,0);
         _loc1_.§6!9§(true);
         _loc1_.§7h§ = false;
         this.§[!K§(§^E§);
      }
      
      protected function §1x§() : void
      {
         §%!c§.§8" §("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§[!K§(§ r§);
      }
      
      public function §]N§() : void
      {
         this.setNewCoordinatesForRubber(this.§]!9§,this.§]P§ + this.§2O§ / 8);
      }
      
      protected function get §"!K§() : Number
      {
         return this.§!Q§ * this.§2!c§;
      }
      
      protected function get §!!Y§() : Number
      {
         return Math.min(this.§!Q§,this.§2O§);
      }
      
      protected function get §2!q§() : Number
      {
         if(this.§!Q§ >= this.§2O§)
         {
            return this.§]!9§ + this.§2O§ * Math.cos(this.§[!@§ / 180 * Math.PI);
         }
         return this.§]!9§ + this.§!Q§ * Math.cos(this.§[!@§ / 180 * Math.PI);
      }
      
      protected function get §4t§() : Number
      {
         if(this.§!Q§ >= this.§2O§)
         {
            return this.§]P§ - this.§2O§ * Math.sin(this.§[!@§ / 180 * Math.PI);
         }
         return this.§]P§ - this.§!Q§ * Math.sin(this.§[!@§ / 180 * Math.PI);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         if(this.§@!R§ > 0)
         {
            return false;
         }
         var _loc4_:Number = param1 - this.§]!9§;
         var _loc5_:Number = param2 - this.§]P§;
         var _loc6_:Number;
         if((_loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) * this.§2!c§ > this.§2O§)
         {
            if(param3)
            {
               return false;
            }
            _loc6_ = this.§2O§ / this.§2!c§;
         }
         var _loc7_:Number = (_loc7_ = Math.atan2(-(param2 - this.§]P§),param1 - this.§]!9§)) * (180 / Math.PI);
         if(!this.mDragging && this.§@!R§ < 0)
         {
            _loc6_ = 0.8;
            _loc7_ = -160;
         }
         if(this.§#>§)
         {
            _loc6_ = this.§2!S§(_loc6_);
         }
         return this.§%"0§(_loc7_,_loc6_);
      }
      
      protected function §2!S§(param1:Number) : Number
      {
         var _loc6_:Number = NaN;
         var _loc5_:Number = this.§2O§ / 2;
         if(param1 > _loc5_)
         {
            if(this.§[!@§ > -90 - 12 + 5 && this.§[!@§ < -90 + 12 + 5)
            {
               return _loc5_;
            }
            if(this.§[!@§ > -90 - 12 - 4 + 5 && this.§[!@§ < -90 + 12 + 4 + 5)
            {
               return Number(_loc5_ + (this.§2O§ - _loc5_) * (Math.abs(this.§[!@§ - -90 - 5) - 12) / 4);
            }
         }
         return param1;
      }
      
      protected function §%"0§(param1:Number, param2:Number) : Boolean
      {
         this.§[!@§ = param1;
         this.§!Q§ = param2;
         if(this.§!Q§ <= this.§2O§ * 0.45)
         {
            this.§7!Y§ = true;
         }
         else if(this.§7!Y§ && this.§!Q§ >= this.§2O§ * 0.8)
         {
            this.§6[§();
            this.§7!Y§ = false;
         }
         this.§>h§ = true;
         return true;
      }
      
      protected function §6[§() : void
      {
         §%!c§.§8" §("SlingshotStreched");
      }
      
      protected function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§'!a§ + param1 * Math.cos(this.§`b§ + Math.PI / 2),this.§[6§ + param1 * Math.sin(this.§`b§ + Math.PI / 2),this.§`b§);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc5_:Number = param1 - this.§'!a§;
         this.§'!a§ = param1;
         var _loc6_:Number = param2 - this.§[6§;
         this.§[6§ = param2;
         this.§`b§ = param3;
         this.§]P§ += _loc6_;
         this.§]!9§ += _loc5_;
         if(param4)
         {
            this.§,!%§(0);
         }
         this.§>h§ = true;
      }
      
      protected function §;!<§() : Number
      {
         return this.§"!K§ / this.§2O§;
      }
      
      public function §6d§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§0n§ = this.§3!Q§[this.§2!D§];
         var _loc3_:Number = this.§;!<§();
         if(_loc2_)
         {
            _loc1_ = _loc2_.§!9§;
         }
         return _loc1_ * _loc3_;
      }
      
      public function §+!r§() : Point
      {
         var _loc1_:§0n§ = null;
         if(this.§3!Q§.length > this.§2!D§)
         {
            _loc1_ = this.§3!Q§[this.§2!D§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §55§() : Point
      {
         return new Point(this.§]!9§,this.§]P§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§0n§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.§]d§(param1);
         if(this.§>h§)
         {
            this.§,!%§(param1);
         }
         this.§<3§ -= param1;
         if(this.§<3§ < 0)
         {
            this.§<3§ = 0;
         }
         if(this.mSlingShotState != §7"%§)
         {
            this.§=!?§(param1,param2);
            _loc3_ = null;
            if(this.§3!Q§.length > 0)
            {
               _loc3_ = this.§3!Q§[this.§2!D§];
            }
            if(_loc3_)
            {
               _loc3_.§5!U§(param1);
            }
            if(!_loc3_)
            {
               this.§[!K§(§7"%§);
            }
            else if(this.mSlingShotState == §-!n§)
            {
               if(this.§<3§ <= 0)
               {
                  this.§[!K§(§8§);
                  _loc3_.§@"§();
               }
            }
            else if(this.mSlingShotState == §8§)
            {
               if(_loc3_.§?V§)
               {
                  this.§[!K§(§^E§);
               }
            }
            else if(this.mSlingShotState == §^E§)
            {
               _loc4_ = this.§2!q§ - _loc3_.radius * Math.cos(this.§[!@§ / (180 / Math.PI));
               _loc5_ = this.§4t§ + _loc3_.radius * Math.sin(this.§[!@§ / (180 / Math.PI));
               if(this.mDragging || this.§@!R§ >= 0)
               {
                  _loc3_.setPosition(_loc4_,_loc5_,180 - this.§[!@§);
               }
               else
               {
                  _loc3_.setPosition(_loc4_,_loc5_,this.angle);
               }
               if(this.§ !R§)
               {
                  this.§-!]§(this.§;!<§(),this.§[!@§);
               }
            }
         }
      }
      
      public function §]!B§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§0n§ = null;
         if(this.§3!Q§.length > 0)
         {
            _loc5_ = this.§3!Q§[this.§2!D§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2,180 - this.§[!@§);
         this.§-!]§(param3,param4);
      }
      
      protected function §`!<§() : void
      {
         this.§0"0§ = false;
         var _loc1_:§0n§ = null;
         if(this.§3!Q§.length > this.§2!D§)
         {
            _loc1_ = this.§3!Q§[this.§2!D§];
         }
         if(!_loc1_)
         {
            return;
         }
         this.§ else§ = new Date().time;
         this.§+"1§.§`!<§(_loc1_,this.§0H§,this.§[!@§);
         this.§9_§(this.§2!D§,_loc1_.§<P§ > 0);
         this.§]"$§();
         if(this.§2!D§ >= this.§3!Q§.length)
         {
            this.§[!K§(§7"%§);
         }
         else
         {
            this.§[!K§(§-!n§);
         }
         dispatchEvent(new Event(§2!Q§));
      }
      
      protected function §]d§(param1:Number) : void
      {
         if(this.§@!R§ <= 0)
         {
            return;
         }
         this.§>h§ = true;
         this.§@!R§ -= param1;
         if(this.§@!R§ <= 0)
         {
            this.§@!R§ = 0;
         }
         var _loc2_:Number = this.§@!R§ / §8p§;
         var _loc3_:Number = this.§=J§ * Math.cos(_loc2_ * Math.PI * 8) * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_;
         this.§%"0§(this.§[!@§,_loc3_);
         if(this.§@!R§ == 0)
         {
            this.§@!R§ = -1;
            this.§]N§();
         }
         if(this.§0"0§)
         {
            this.§`!<§();
         }
      }
      
      public function §-!]§(param1:Number, param2:Number) : void
      {
         this.§0H§ = param1;
         this.§[!@§ = param2;
         this.§@!R§ = §8p§;
         this.§=J§ = this.§!Q§;
         this.mDragging = false;
         this.§ !R§ = false;
         this.§0"0§ = true;
      }
      
      protected function §]"$§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §%!c§.§8" §("BirdShot" + _loc1_);
      }
      
      public function §=!?§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§2!D§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§3!Q§.length)
         {
            this.§3!Q§[_loc4_].update(param1,this.mSlingShotState == § r§,param2);
            _loc4_++;
         }
      }
      
      public function §@y§() : String
      {
         var _loc1_:§0n§ = null;
         if(this.§2!D§ < this.§3!Q§.length)
         {
            _loc1_ = this.§3!Q§[this.§2!D§];
            return _loc1_.name;
         }
         return null;
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§0n§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§]N§();
         if(this.§#!=§ >= this.§3!Q§.length)
         {
            return false;
         }
         _loc1_ = this.§3!Q§[this.§#!=§];
         _loc1_.§6!b§(-1,true);
         _loc2_ = this.§+"1§.levelItemManager.§ "4§(_loc1_.name).score;
         this.§1!c§(_loc1_,_loc2_);
         ++this.§#!=§;
         return true;
      }
      
      protected function §1!c§(param1:§0n§, param2:int) : void
      {
         this.§+"1§.addScore(param2,§,!l§.§9"%§,true,param1.x,param1.y - 3,§3?§.§+0§(param1.name));
      }
      
      public function §?"1§() : int
      {
         var _loc2_:§0n§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§3!Q§)
         {
            _loc1_ += this.§+"1§.levelItemManager.§ "4§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §<%§() : int
      {
         return this.§`!+§;
      }
      
      protected function §`!e§() : void
      {
         var _loc4_:int = 0;
         var _loc1_:int = 1000;
         var _loc2_:Number = Math.cos(this.§`b§ + Math.PI / 2) * this.§?+§;
         var _loc3_:Number = Math.sin(this.§`b§ + Math.PI / 2) * this.§?+§;
         while((_loc4_ = this.§+"1§.objects.§=f§(this.§]!9§ + _loc2_,this.§]P§ + _loc3_)) == -1)
         {
            this.applyGravity(0.1);
            if(_loc1_-- <= 0)
            {
               break;
            }
         }
         this.§`!C§ = -1;
      }
      
      public function §2v§(param1:Number, param2:Number) : void
      {
         this.§%!D§.x = -param1;
         this.§%!D§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §^E§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function get canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §^E§ && this.§;!<§() >= §"!b§ && this.§@!R§ < 0;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§[!K§(§^E§);
         var _loc1_:§0n§ = this.§3!Q§[this.§2!D§];
         _loc1_.§6!b§(§>"§.§%!1§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§0n§ = this.§3!Q§[this.§2!D§];
         _loc1_.§6!b§(§>"§.§6E§);
      }
      
      public function shoot() : void
      {
         this.§ !R§ = true;
      }
      
      protected function §9_§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§0n§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§3!Q§[param1])
         {
            _loc3_ = this.§3!Q§[param1];
            this.§@+§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§0T§(this.§3!Q§[param1]);
            }
            _loc3_.dispose();
            this.§3!Q§[param1] = null;
         }
         this.§3!Q§.splice(param1,1);
      }
      
      protected function §0T§(param1:§0n§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §[d§.§]!U§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §[d§.§]!U§) + Math.random() * -_loc8_ * 2;
            this.§+"1§.particles.§;$§(§3?§.§3f§,§@!`§.§<<§,§3?§.§72§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§3?§.§"N§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§+"1§.particles.§;$§(§3?§.§#!I§,§@!`§.§<<§,§3?§.§72§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:§0n§) : void
      {
         this.§9_§(this.§3!Q§.indexOf(param1));
      }
      
      public function §]"&§() : void
      {
         var _loc2_:§0n§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§0n§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§3!Q§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§'!a§ - this.§3!Q§[_loc1_].x) * (this.§'!a§ - this.§3!Q§[_loc1_].x) + (this.§[6§ - this.§3!Q§[_loc1_].y) * (this.§[6§ - this.§3!Q§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§'!a§ - this.§3!Q§[_loc1_ + 1].x) * (this.§'!a§ - this.§3!Q§[_loc1_ + 1].x) + (this.§[6§ - this.§3!Q§[_loc1_ + 1].y) * (this.§[6§ - this.§3!Q§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§3!Q§[_loc1_];
               this.§3!Q§.splice(_loc1_,1);
               this.§3!Q§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§@+§.numChildren > 0)
         {
            this.§@+§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§3!Q§.length)
         {
            _loc2_ = this.§3!Q§[_loc1_];
            this.§@+§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §0n§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§3!Q§.length)
         {
            if(this.§3!Q§[_loc3_])
            {
               if(this.§3!Q§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§3!Q§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §@!x§(param1:Number, param2:Number) : §]"!§
      {
         if(param1 >= this.§'!a§ - this.§2O§ / 4 && param1 <= this.§'!a§ + this.§2O§ / 4 && param2 >= this.§[6§ - this.§2O§ / 4 && this.§[6§ <= this.§[6§ + this.§?+§)
         {
            return this;
         }
         return null;
      }
      
      public function §^4§(param1:§2"4§) : void
      {
         var _loc3_:§0n§ = null;
         var _loc4_:§'"%§ = null;
         param1.slingshotX = this.§'!a§;
         param1.slingshotY = this.§[6§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§3!Q§.length)
         {
            _loc3_ = this.§3!Q§[_loc2_];
            (_loc4_ = new §'"%§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.type = _loc3_.name;
            param1.§^!q§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §77§() : void
      {
         while(this.§3!Q§.length > 0)
         {
            this.removeObject(this.§3!Q§[0]);
         }
      }
      
      public function §?p§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§3!Q§.length)
         {
            if(this.§3!Q§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§3!Q§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§'!a§ > param1.x && this.§'!a§ < param2.x && this.§[6§ > param1.y && this.§[6§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §0!n§(param1:String, param2:Number, param3:Number, param4:Number) : §0n§
      {
         var _loc5_:§0n§ = this.§4!W§(param1,param2,param3,param4);
         this.§]"&§();
         return _loc5_;
      }
      
      public function §3G§() : Number
      {
         return this.§3!Q§.length;
      }
   }
}
