package § 2§
{
   import §!m§.§'!P§;
   import §!m§.§2!k§;
   import §0!_§.§+!?§;
   import §2!s§.§!e§;
   import §2!s§.§2!_§;
   import §6s§.Texture;
   import §8!$§.§?p§;
   import §8+§.§0"$§;
   import §;X§.§4!@§;
   import §`!B§.§ l§;
   import §`!B§.DisplayObject;
   import §`!B§.Sprite;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §<!F§ extends EventDispatcher
   {
      
      public static const §!i§:String = "slingshot_shot_bird";
      
      private static const §+C§:int = 1800;
      
      public static const §7!I§:Number = 0.4;
      
      public static const §2!$§:int = 0;
      
      public static const §%&§:int = 1;
      
      public static const §!Z§:int = 2;
      
      public static const §]_§:int = 3;
      
      public static const §7!K§:int = 5;
      
      public static const §-R§:int = 6;
      
      public static const §3s§:int = 3151368;
      
      protected static var §>!A§:Texture;
      
      protected static var §-!t§:Texture;
       
      
      protected var §8!l§:§+!?§;
      
      protected var §false§:§=+§;
      
      protected var §0O§:Number;
      
      protected var §=!v§:Number;
      
      protected var §'!Y§:Number;
      
      protected var §7g§:Number = 8.5;
      
      protected var §-9§:Number;
      
      protected var §]5§:Number;
      
      protected var §"!P§:Number;
      
      protected var §[w§:Number;
      
      protected var §'G§:Number = 1.0;
      
      protected var §;3§:Boolean;
      
      protected var §5!G§:Boolean;
      
      protected var §5"&§:Boolean;
      
      protected var §%!e§:Boolean = false;
      
      public var §--§:Vector.<§`!d§>;
      
      public var §+b§:int;
      
      protected var §&b§:int = 0;
      
      protected var §@!1§:int;
      
      protected var §6"6§:Number;
      
      public var §?"+§:Sprite;
      
      protected var §]!;§:Sprite;
      
      public var §%%§:int = 0;
      
      protected var §#R§:Number = 0;
      
      public var mSlingShotState:int;
      
      public var §5i§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §=U§:Boolean = false;
      
      public var §[e§:Number;
      
      protected var § C§:Sprite;
      
      protected var §4!K§:Sprite;
      
      protected var §1"#§:Sprite;
      
      protected var §0!s§:DisplayObject;
      
      protected var §"U§:Sprite;
      
      protected var §!k§:DisplayObject;
      
      protected var §^!c§:Sprite;
      
      protected var §56§:DisplayObject;
      
      protected var §<!^§:Sprite;
      
      protected var §"2§:Sprite;
      
      protected var §3!p§:DisplayObject;
      
      private var §;!b§:Number = 0;
      
      private var §#!$§:Number = 0;
      
      private var §;4§:Number = -1;
      
      private var §null §:Number = 0;
      
      private var §,!+§:Boolean = false;
      
      private var §9!?§:int = 0;
      
      private var §`&§:Boolean = false;
      
      public function §<!F§(param1:§=+§, param2:§[d§, param3:Sprite, param4:Number = 1.0, param5:Boolean = true, param6:Boolean = true, param7:Boolean = false)
      {
         var _loc8_:int = 0;
         var _loc9_:§0"$§ = null;
         this.§--§ = new Vector.<§`!d§>();
         super();
         this.§false§ = param1;
         this.§ C§ = param3;
         this.§'G§ = param4;
         this.§;3§ = param5;
         this.§5!G§ = param6;
         this.§5"&§ = param7;
         if(param2)
         {
            this.setPosition(param2.slingshotX,param2.slingshotY,param2.§7"1§);
            this.§!!§();
            _loc8_ = 0;
            while(_loc8_ < param2.§=m§)
            {
               _loc9_ = param2.§4t§(_loc8_);
               this.§;""§(_loc9_.type,_loc9_.x,_loc9_.y,_loc9_.angle,_loc9_.index);
               _loc8_++;
            }
            this.§9!?§ = this.§"@§();
            this.§+b§ = 0;
            if(this.§--§.length <= 0)
            {
               §?p§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§0O§ + " " + this.§=!v§);
               this.§-F§(§]_§);
            }
            else
            {
               this.§-F§(§2!$§);
            }
         }
         else
         {
            §?p§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§-F§(§]_§);
         }
         this.§[e§ = 0;
         this.§;!^§();
         this.update(0,true);
         this.§@!q§();
         this.§'!;§(0);
         this.§0=§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§ C§;
      }
      
      public function get §2E§() : Sprite
      {
         return this.§]!;§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§;!b§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§+b§ < this.§--§.length;
      }
      
      public function get §<"!§() : Number
      {
         return this.§#R§;
      }
      
      public function get x() : Number
      {
         return this.§0O§;
      }
      
      public function get y() : Number
      {
         return this.§=!v§;
      }
      
      public function get angle() : Number
      {
         return this.§'!Y§;
      }
      
      public function get §`e§() : Boolean
      {
         return this.§5!G§;
      }
      
      public function get §#]§() : Boolean
      {
         return this.§5"&§;
      }
      
      public function get §0=§() : Boolean
      {
         return this.§`&§;
      }
      
      public function set §0=§(param1:Boolean) : void
      {
         this.§`&§ = param1;
      }
      
      public function dispose() : void
      {
         while(this.§--§.length > 0)
         {
            this.§,-§(0);
         }
         this.§--§ = null;
         if(this.§ C§)
         {
            this.§ C§.dispose();
            this.§ C§ = null;
         }
         this.§?"+§ = null;
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§0!s§)
         {
            this.§0!s§.color = param1;
         }
         if(this.§3!p§)
         {
            this.§3!p§.color = param1;
         }
      }
      
      public function §2!D§(param1:String, param2:Number, param3:Number, param4:int) : §`!d§
      {
         var _loc6_:§`!d§ = null;
         if(this.§--§.length > 0)
         {
            (_loc6_ = this.§--§[0]).§0!N§(false);
            _loc6_.§<J§ = false;
         }
         var _loc5_:§`!d§;
         (_loc5_ = this.§;""§(param1,param2,param3,0,param4)).§0!N§(true);
         return _loc5_;
      }
      
      protected function §;""§(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §`!d§
      {
         var _loc6_:§!e§ = this.§false§.levelItemManager.§-!X§(param1);
         var _loc7_:Sprite;
         (_loc7_ = new Sprite()).scaleX = _loc6_.scale;
         _loc7_.scaleY = _loc6_.scale;
         var _loc8_:§`!d§ = this.initializeSlingshotObject(_loc6_,param2,param3,param4,_loc7_,param5);
         if(param5 < 0)
         {
            this.§--§.push(_loc8_);
         }
         else
         {
            this.§--§.splice(param5,0,_loc8_);
         }
         ++this.§&b§;
         this.§?"+§.addChild(_loc8_.sprite);
         return _loc8_;
      }
      
      protected function initializeSlingshotObject(param1:§!e§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §`!d§
      {
         return new §`!d§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
      }
      
      public function §-F§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §2!$§)
         {
            this.§8",§();
            this.§6"6§ = 1000;
         }
         else if(this.mSlingShotState == §%&§)
         {
            this.§8",§();
            this.§6"6§ = 0;
         }
         else if(this.mSlingShotState == §!Z§)
         {
            this.§6"6§ = 10000;
            this.§=U§ = false;
            this.§8",§();
         }
         else if(this.mSlingShotState == §]_§)
         {
            this.§8",§();
            this.§6"6§ = 2000;
         }
         else if(this.mSlingShotState == §7!K§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§=U§ = false;
               this.§8",§();
               this.§--§[this.§+b§].setPosition(this.§%[§ - this.§--§[this.§+b§].radius * Math.cos(this.§#R§ / (180 / Math.PI)),this.§+m§ + this.§--§[this.§+b§].radius * Math.sin(this.§#R§ / (180 / Math.PI)),180 - this.§#R§);
            }
            else
            {
               this.§8",§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §]s§() : §=+§
      {
         return this.§false§;
      }
      
      public function §,!^§() : Boolean
      {
         return this.mSlingShotState == §]_§ && this.§6"6§ <= 0;
      }
      
      protected function §[v§() : §+!?§
      {
         return this.§false§.§%!E§.§%h§("SLINGSHOT");
      }
      
      private function §!!§() : void
      {
         this.§8!l§ = this.§[v§();
         this.§0!s§ = this.§8!l§.getFrame(0);
         this.§0!s§.pivotX = -3;
         this.§0!s§.pivotY = -24;
         this.§3!p§ = this.§8!l§.getFrame(1);
         this.§3!p§.pivotX = -30;
         this.§3!p§.pivotY = -30;
         this.§>G§();
         this.§^]§();
         this.§4!K§ = new Sprite();
         this.§4!K§.addChild(this.§0!s§);
         this.§4!K§.addChild(this.§"U§);
         this.§]!;§ = new Sprite();
         this.§?"+§ = new Sprite();
         this.§1"#§ = new Sprite();
         this.§1"#§.addChild(this.§<!^§);
         this.§1"#§.addChild(this.§^!c§);
         this.§1"#§.addChild(this.§3!p§);
         this.§2!7§();
      }
      
      protected function §2!7§() : void
      {
         this.§ C§.addChild(this.§4!K§);
         this.§ C§.addChild(this.§]!;§);
         this.§ C§.addChild(this.§?"+§);
         this.§ C§.addChild(this.§1"#§);
      }
      
      public function §>G§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§-9§ = this.§0O§;
         this.§]5§ = this.§=!v§;
         this.§[w§ = §3t§.§4%§;
         _loc1_ = null;
      }
      
      private function §1!g§(param1:uint) : void
      {
         var _loc2_:BitmapData = new BitmapData(2,2,true,4278190080 | param1);
         if(§-!t§)
         {
            this.§false§.§^!§.§1,§(§-!t§);
         }
         §-!t§ = this.§false§.§^!§.§4"§(_loc2_);
      }
      
      protected function §;!>§() : DisplayObject
      {
         return new § l§(§-!t§);
      }
      
      protected function §#v§(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc3_:BitmapData = null;
         if(!§>!A§ || param2)
         {
            _loc3_ = new BitmapData(18,26,true,4278190080 | param1);
            if(§>!A§)
            {
               this.§false§.§^!§.§1,§(§>!A§);
            }
            §>!A§ = this.§false§.§^!§.§4"§(_loc3_);
         }
         return new § l§(§>!A§);
      }
      
      protected function §^]§(param1:uint = 3151368, param2:uint = 3151368, param3:Boolean = false) : void
      {
         this.§<!^§ = new Sprite();
         this.§"2§ = new Sprite();
         var _loc4_:DisplayObject;
         (_loc4_ = this.§#v§(param2,param3)).rotation = Math.PI;
         _loc4_.x = _loc4_.width / 2;
         _loc4_.y = _loc4_.height / 2;
         this.§"2§.addChild(_loc4_);
         this.§<!^§.addChild(this.§"2§);
         this.§"U§ = new Sprite();
         this.§"U§.x = 22;
         this.§"U§.y = 0;
         this.§1!g§(param1);
         this.§!k§ = this.§;!>§();
         this.§"U§.addChild(this.§!k§);
         this.§^!c§ = new Sprite();
         this.§^!c§.x = -17;
         this.§^!c§.y = 5;
         this.§56§ = this.§;!>§();
         this.§^!c§.addChild(this.§56§);
      }
      
      protected function §'!;§(param1:Number) : void
      {
         var _loc2_:Number = (this.§+m§ - this.§=!v§) / §=+§.§5!w§;
         var _loc3_:Number = (this.§%[§ - this.§0O§) / §=+§.§5!w§;
         var _loc4_:Number = Math.cos(this.§'!Y§);
         var _loc5_:Number = Math.sin(this.§'!Y§);
         var _loc6_:Number = -Math.sin(this.§'!Y§);
         var _loc7_:Number = Math.cos(this.§'!Y§);
         var _loc8_:Number = _loc3_;
         var _loc9_:Number = _loc2_;
         _loc3_ = _loc8_ * _loc4_ + _loc9_ * _loc5_;
         _loc2_ = _loc8_ * _loc6_ + _loc9_ * _loc7_;
         var _loc10_:Number = 3.5 + 8 * ((this.§[w§ - this.§^!S§) / this.§[w§);
         this.§<!^§.x = _loc3_;
         this.§<!^§.y = _loc2_;
         this.§<!^§.rotation = -this.§'!Y§ - this.§#R§ / (180 / Math.PI);
         this.§4!K§.x = this.§0O§ / §=+§.§5!w§;
         this.§4!K§.y = this.§=!v§ / §=+§.§5!w§;
         this.§4!K§.rotation = this.§'!Y§;
         this.§1"#§.x = this.§0O§ / §=+§.§5!w§;
         this.§1"#§.y = this.§=!v§ / §=+§.§5!w§;
         this.§1"#§.rotation = this.§'!Y§;
         this.§^!c§.rotation = Math.atan2(_loc2_ - this.§^!c§.y,_loc3_ - this.§^!c§.x);
         this.§56§.width = Math.sqrt(Math.pow(_loc3_ - this.§^!c§.x,2) + Math.pow(_loc2_ - this.§^!c§.y,2));
         this.§56§.height = _loc10_ * 2;
         this.§56§.y = -this.§56§.height / 2;
         this.§"U§.rotation = Math.atan2(_loc2_ - this.§"U§.y,_loc3_ - this.§"U§.x);
         this.§!k§.width = Math.sqrt(Math.pow(_loc3_ - this.§"U§.x,2) + Math.pow(_loc2_ - this.§"U§.y,2));
         this.§!k§.height = _loc10_ * 2;
         this.§!k§.y = -this.§!k§.height / 2;
         this.§5i§ = false;
      }
      
      public function §9!3§() : §`!d§
      {
         var _loc2_:§`!d§ = null;
         while(this.§--§.length > 0)
         {
            this.§,-§(0,true);
         }
         this.§4!S§();
         if(this.§--§.length > 0)
         {
            _loc2_ = this.§--§[0];
            _loc2_.§0!N§(false);
         }
         var _loc1_:§`!d§ = this.§;""§("BIRD_SARDINE",this.§0O§,this.§=!v§,0);
         _loc1_.§0!N§(true);
         _loc1_.§<J§ = false;
         this.§-F§(§!Z§);
         return _loc1_;
      }
      
      protected function §4!S§() : void
      {
         §4!@§.§`!w§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§-F§(§7!K§);
      }
      
      public function §8",§() : void
      {
         this.setNewCoordinatesForRubber(this.§-9§,this.§]5§ + this.§[w§ / 8);
      }
      
      protected function get §6"+§() : Number
      {
         return this.§"!P§ * this.§'G§;
      }
      
      protected function get §^!S§() : Number
      {
         return Math.min(this.§"!P§,this.§[w§);
      }
      
      protected function get §%[§() : Number
      {
         if(this.§"!P§ >= this.§[w§)
         {
            return this.§-9§ + this.§[w§ * Math.cos(this.§#R§ / 180 * Math.PI);
         }
         return this.§-9§ + this.§"!P§ * Math.cos(this.§#R§ / 180 * Math.PI);
      }
      
      protected function get §+m§() : Number
      {
         if(this.§"!P§ >= this.§[w§)
         {
            return this.§]5§ - this.§[w§ * Math.sin(this.§#R§ / 180 * Math.PI);
         }
         return this.§]5§ - this.§"!P§ * Math.sin(this.§#R§ / 180 * Math.PI);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         if(this.§;4§ > 0)
         {
            return false;
         }
         var _loc4_:Number = param1 - this.§-9§;
         var _loc5_:Number = param2 - this.§]5§;
         var _loc6_:Number;
         if((_loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) * this.§'G§ > this.§[w§)
         {
            if(param3)
            {
               return false;
            }
            _loc6_ = this.§[w§ / this.§'G§;
         }
         var _loc7_:Number = (_loc7_ = Math.atan2(-(param2 - this.§]5§),param1 - this.§-9§)) * (180 / Math.PI);
         if(!this.mDragging && this.§;4§ < 0)
         {
            _loc6_ = 0.8;
            _loc7_ = -160;
         }
         if(this.§;3§)
         {
            _loc6_ = this.§2@§(_loc6_);
         }
         return this.§&!w§(_loc7_,_loc6_);
      }
      
      protected function §2@§(param1:Number) : Number
      {
         var _loc6_:Number = NaN;
         var _loc5_:Number = this.§[w§ / 2;
         if(param1 > _loc5_)
         {
            if(this.§#R§ > -90 - 12 + 5 && this.§#R§ < -90 + 12 + 5)
            {
               return _loc5_;
            }
            if(this.§#R§ > -90 - 12 - 4 + 5 && this.§#R§ < -90 + 12 + 4 + 5)
            {
               return Number(_loc5_ + (this.§[w§ - _loc5_) * (Math.abs(this.§#R§ - -90 - 5) - 12) / 4);
            }
         }
         return param1;
      }
      
      protected function §&!w§(param1:Number, param2:Number) : Boolean
      {
         this.§#R§ = param1;
         this.§"!P§ = param2;
         if(this.§"!P§ <= this.§[w§ * 0.45)
         {
            this.§%!e§ = true;
         }
         else if(this.§%!e§ && this.§"!P§ >= this.§[w§ * 0.8)
         {
            this.§;! §();
            this.§%!e§ = false;
         }
         this.§5i§ = true;
         return true;
      }
      
      protected function §;! §() : void
      {
         §4!@§.§`!w§("SlingshotStreched");
      }
      
      protected function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§0O§ + param1 * Math.cos(this.§'!Y§ + Math.PI / 2),this.§=!v§ + param1 * Math.sin(this.§'!Y§ + Math.PI / 2),this.§'!Y§);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc5_:Number = param1 - this.§0O§;
         this.§0O§ = param1;
         var _loc6_:Number = param2 - this.§=!v§;
         this.§=!v§ = param2;
         this.§'!Y§ = param3;
         this.§]5§ += _loc6_;
         this.§-9§ += _loc5_;
         if(param4)
         {
            this.§'!;§(0);
         }
         this.§5i§ = true;
      }
      
      protected function §"H§() : Number
      {
         return this.§6"+§ / this.§[w§;
      }
      
      public function §,g§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§`!d§ = this.§--§[this.§+b§];
         var _loc3_:Number = this.§"H§();
         if(_loc2_)
         {
            _loc1_ = _loc2_.§+!%§;
         }
         return _loc1_ * _loc3_;
      }
      
      public function §4s§() : Point
      {
         var _loc1_:§`!d§ = null;
         if(this.§--§.length > this.§+b§)
         {
            _loc1_ = this.§--§[this.§+b§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §0!=§() : Point
      {
         return new Point(this.§-9§,this.§]5§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§`!d§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.§7!m§(param1);
         if(this.§5i§)
         {
            this.§'!;§(param1);
         }
         this.§6"6§ -= param1;
         if(this.§6"6§ < 0)
         {
            this.§6"6§ = 0;
         }
         if(this.mSlingShotState != §]_§)
         {
            this.§5"§(param1,param2);
            _loc3_ = null;
            if(this.§--§.length > 0)
            {
               _loc3_ = this.§--§[this.§+b§];
            }
            if(_loc3_)
            {
               _loc3_.§6Q§(param1);
            }
            if(!_loc3_)
            {
               this.§-F§(§]_§);
            }
            else if(this.mSlingShotState == §2!$§)
            {
               if(this.§6"6§ <= 0)
               {
                  this.§-F§(§%&§);
                  _loc3_.§,!R§();
               }
            }
            else if(this.mSlingShotState == §%&§)
            {
               if(_loc3_.§7![§)
               {
                  this.§-F§(§!Z§);
               }
            }
            else if(this.mSlingShotState == §!Z§)
            {
               _loc4_ = this.§%[§ - _loc3_.radius * Math.cos(this.§#R§ / (180 / Math.PI));
               _loc5_ = this.§+m§ + _loc3_.radius * Math.sin(this.§#R§ / (180 / Math.PI));
               if(this.mDragging || this.§;4§ >= 0)
               {
                  _loc3_.setPosition(_loc4_,_loc5_,180 - this.§#R§);
               }
               else
               {
                  _loc3_.setPosition(_loc4_,_loc5_,this.angle);
               }
               if(this.§=U§)
               {
                  this.§-%§(this.§"H§(),this.§#R§);
               }
            }
         }
      }
      
      public function §'B§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§`!d§ = null;
         if(this.§--§.length > 0)
         {
            _loc5_ = this.§--§[this.§+b§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2,180 - this.§#R§);
         this.§-%§(param3,param4);
      }
      
      protected function §!_§() : void
      {
         this.§,!+§ = false;
         var _loc1_:§`!d§ = null;
         if(this.§--§.length > this.§+b§)
         {
            _loc1_ = this.§--§[this.§+b§];
         }
         if(!_loc1_)
         {
            return;
         }
         this.§;!b§ = new Date().time;
         this.§false§.§!_§(_loc1_,this.§#!$§,this.§#R§);
         this.§,-§(this.§+b§,_loc1_.§+Z§ > 0);
         this.§>![§();
         if(this.§+b§ >= this.§--§.length)
         {
            this.§-F§(§]_§);
         }
         else
         {
            this.§-F§(§2!$§);
         }
         dispatchEvent(new Event(§!i§));
      }
      
      protected function §7!m§(param1:Number) : void
      {
         if(this.§;4§ <= 0)
         {
            return;
         }
         this.§5i§ = true;
         this.§;4§ -= param1;
         if(this.§;4§ <= 0)
         {
            this.§;4§ = 0;
         }
         var _loc2_:Number = this.§;4§ / §+C§;
         var _loc3_:Number = this.§null § * Math.cos(_loc2_ * Math.PI * 8) * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_;
         this.§&!w§(this.§#R§,_loc3_);
         if(this.§;4§ == 0)
         {
            this.§;4§ = -1;
            this.§8",§();
         }
         if(this.§,!+§)
         {
            this.§!_§();
         }
      }
      
      public function §-%§(param1:Number, param2:Number) : void
      {
         this.§#!$§ = param1;
         this.§#R§ = param2;
         this.§;4§ = §+C§;
         this.§null § = this.§"!P§;
         this.mDragging = false;
         this.§=U§ = false;
         this.§,!+§ = true;
      }
      
      protected function §>![§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §4!@§.§`!w§("BirdShot" + _loc1_);
      }
      
      public function §5"§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§+b§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§--§.length)
         {
            this.§--§[_loc4_].update(param1,this.mSlingShotState == §7!K§,param2);
            _loc4_++;
         }
      }
      
      public function §1!M§() : String
      {
         var _loc1_:§`!d§ = null;
         if(this.§+b§ < this.§--§.length)
         {
            _loc1_ = this.§--§[this.§+b§];
            return _loc1_.name;
         }
         return null;
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§`!d§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§8",§();
         if(this.§@!1§ >= this.§--§.length)
         {
            return false;
         }
         _loc1_ = this.§--§[this.§@!1§];
         _loc1_.§ !G§(-1,true);
         _loc2_ = this.§false§.levelItemManager.§-!X§(_loc1_.name).score;
         this.§^!,§(_loc1_,_loc2_);
         ++this.§@!1§;
         return true;
      }
      
      protected function §^!,§(param1:§`!d§, param2:int) : void
      {
         this.§false§.addScore(param2,§&p§.§?Y§,true,param1.x,param1.y - 3,§'!P§.§^!l§(param1.name));
      }
      
      public function §"@§() : int
      {
         var _loc2_:§`!d§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§--§)
         {
            _loc1_ += this.§false§.levelItemManager.§-!X§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §%",§() : int
      {
         return this.§9!?§;
      }
      
      protected function §@!q§() : void
      {
         var _loc4_:int = 0;
         var _loc1_:int = 1000;
         var _loc2_:Number = Math.cos(this.§'!Y§ + Math.PI / 2) * this.§7g§;
         var _loc3_:Number = Math.sin(this.§'!Y§ + Math.PI / 2) * this.§7g§;
         while((_loc4_ = this.§false§.objects.§`"'§(this.§-9§ + _loc2_,this.§]5§ + _loc3_)) == -1)
         {
            this.applyGravity(0.1);
            if(_loc1_-- <= 0)
            {
               break;
            }
         }
         this.§[e§ = -1;
      }
      
      public function §#X§(param1:Number, param2:Number) : void
      {
         this.§ C§.x = -param1;
         this.§ C§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §!Z§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function get canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §!Z§ && this.§"H§() >= §7!I§ && this.§;4§ < 0;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§-F§(§!Z§);
         var _loc1_:§`!d§ = this.§--§[this.§+b§];
         _loc1_.§ !G§(§2!_§.§]=§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§`!d§ = this.§--§[this.§+b§];
         _loc1_.§ !G§(§2!_§.§;k§);
      }
      
      public function shoot() : void
      {
         this.§=U§ = true;
      }
      
      protected function §,-§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§`!d§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§--§[param1])
         {
            _loc3_ = this.§--§[param1];
            this.§?"+§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§+n§(this.§--§[param1]);
            }
            _loc3_.dispose();
            this.§--§[param1] = null;
         }
         this.§--§.splice(param1,1);
      }
      
      protected function §+n§(param1:§`!d§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §=+§.§5!w§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §=+§.§5!w§) + Math.random() * -_loc8_ * 2;
            this.§false§.particles.§+<§(§'!P§.§^3§,§2!k§.§ g§,§'!P§.§>]§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§'!P§.§&%§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§false§.particles.§+<§(§'!P§.§#!G§,§2!k§.§ g§,§'!P§.§>]§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:§`!d§) : void
      {
         this.§,-§(this.§--§.indexOf(param1));
      }
      
      public function §;!^§() : void
      {
         var _loc1_:§`!d§ = null;
         this.§--§.sort(this.§4!C§);
         while(this.§?"+§.numChildren > 0)
         {
            this.§?"+§.removeChildAt(0);
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§--§.length)
         {
            _loc1_ = this.§--§[_loc2_];
            this.§?"+§.addChildAt(_loc1_.sprite,0);
            _loc2_++;
         }
      }
      
      private function §4!C§(param1:§`!d§, param2:§`!d§) : Number
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
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §`!d§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§--§.length)
         {
            if(this.§--§[_loc3_])
            {
               if(this.§--§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§--§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §0<§(param1:Number, param2:Number) : §<!F§
      {
         if(param1 >= this.§0O§ - this.§[w§ / 4 && param1 <= this.§0O§ + this.§[w§ / 4 && param2 >= this.§=!v§ - this.§[w§ / 4 && this.§=!v§ <= this.§=!v§ + this.§7g§)
         {
            return this;
         }
         return null;
      }
      
      public function §&B§(param1:§[d§) : void
      {
         var _loc3_:§`!d§ = null;
         var _loc4_:§0"$§ = null;
         param1.slingshotX = this.§0O§;
         param1.slingshotY = this.§=!v§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§--§.length)
         {
            _loc3_ = this.§--§[_loc2_];
            (_loc4_ = new §0"$§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.type = _loc3_.name;
            param1.§`"#§(_loc4_);
            _loc2_++;
         }
      }
      
      public function § ;§() : void
      {
         while(this.§--§.length > 0)
         {
            this.removeObject(this.§--§[0]);
         }
      }
      
      public function §1!J§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§--§.length)
         {
            if(this.§--§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§--§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§0O§ > param1.x && this.§0O§ < param2.x && this.§=!v§ > param1.y && this.§=!v§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §3k§(param1:String, param2:Number, param3:Number, param4:Number) : §`!d§
      {
         var _loc5_:§`!d§ = this.§;""§(param1,param2,param3,param4);
         this.§[!s§();
         return _loc5_;
      }
      
      public function §;!"§() : int
      {
         return this.§--§.length;
      }
      
      public function §>B§() : int
      {
         return this.§&b§;
      }
      
      public function §[!s§() : void
      {
         this.§--§.sort(this.§9"§);
         var _loc1_:int = 0;
         while(_loc1_ < this.§--§.length)
         {
            this.§--§[_loc1_].launchIndex = _loc1_;
            _loc1_++;
         }
         this.§+b§ = 0;
      }
      
      private function §9"§(param1:§`!d§, param2:§`!d§) : Number
      {
         var _loc3_:Number = Math.pow(param1.x - this.§0O§,2) + Math.pow(param1.y - this.§=!v§,2);
         var _loc4_:Number = Math.pow(param2.x - this.§0O§,2) + Math.pow(param2.y - this.§=!v§,2);
         return _loc3_ - _loc4_;
      }
   }
}
