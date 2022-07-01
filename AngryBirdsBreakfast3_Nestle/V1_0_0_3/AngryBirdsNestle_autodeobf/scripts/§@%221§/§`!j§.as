package §@"1§
{
   import §!!<§.§>"4§;
   import §!!<§.§[!L§;
   import §0!Y§.§#"5§;
   import §0!Y§.§-f§;
   import §0!Y§.DisplayObject;
   import §0!Y§.Sprite;
   import §6!?§.§7!t§;
   import §82§.§%v§;
   import §82§.§8W§;
   import §9![§.§1!i§;
   import §<!A§.§=Q§;
   import §=!7§.§1!7§;
   import §>!a§.§-?§;
   import §^z§.Texture;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §`!j§ extends EventDispatcher
   {
      
      public static const §1!Q§:String = "slingshot_shot_bird";
      
      private static const §[!Y§:int = 1800;
      
      public static const §"!R§:Number = 0.4;
      
      public static const §`!v§:int = 0;
      
      public static const §8!8§:int = 1;
      
      public static const §7>§:int = 2;
      
      public static const §]!u§:int = 3;
      
      public static const §>!n§:int = 5;
      
      public static const §%-§:int = 6;
      
      public static const §^"3§:int = 3151368;
      
      protected static var §[!m§:Texture;
       
      
      protected var §'a§:§7!t§;
      
      protected var §`W§:§"h§;
      
      protected var §%!H§:Number;
      
      protected var §^<§:Number;
      
      protected var §5!A§:Number;
      
      protected var §@m§:Number = 8.5;
      
      protected var §]!h§:Number;
      
      protected var §?I§:Number;
      
      protected var §5"§:Number;
      
      protected var §3!Q§:Number;
      
      protected var §^!8§:Number = 1.0;
      
      protected var §[m§:Boolean;
      
      protected var §9;§:Boolean;
      
      protected var §6M§:Boolean = false;
      
      public var §1%§:Vector.<§8L§>;
      
      public var §>!g§:int;
      
      protected var §+!k§:int;
      
      protected var §7§:Number;
      
      public var §]![§:Sprite;
      
      protected var §7C§:Sprite;
      
      public var §4!`§:int = 0;
      
      protected var §+!i§:Number = 0;
      
      public var mSlingShotState:int;
      
      public var §]4§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §@b§:Boolean = false;
      
      public var §6z§:Number;
      
      protected var §<q§:Sprite;
      
      protected var §!&§:Sprite;
      
      protected var §3"2§:Sprite;
      
      protected var §^§:DisplayObject;
      
      protected var §`" §:Sprite;
      
      protected var §0j§:DisplayObject;
      
      protected var §@;§:Sprite;
      
      protected var §+w§:DisplayObject;
      
      protected var §1!h§:Sprite;
      
      protected var §^!^§:Sprite;
      
      protected var §3!&§:DisplayObject;
      
      private var §6`§:Number = 0;
      
      private var §=f§:Number = 0;
      
      private var §@'§:Number = -1;
      
      private var §[!w§:Number = 0;
      
      private var §!a§:Boolean = false;
      
      private var §<#§:int = 0;
      
      public function §`!j§(param1:§"h§, param2:§-?§, param3:Sprite, param4:Number = 1.0, param5:Boolean = true, param6:Boolean = true)
      {
         var _loc7_:int = 0;
         var _loc8_:§=Q§ = null;
         this.§1%§ = new Vector.<§8L§>();
         super();
         this.§`W§ = param1;
         this.§<q§ = param3;
         this.§^!8§ = param4;
         this.§[m§ = param5;
         this.§9;§ = param6;
         if(param2)
         {
            this.setPosition(param2.slingshotX,param2.slingshotY,param2.§>!^§);
            this.§4J§();
            _loc7_ = 0;
            while(_loc7_ < param2.§"!<§)
            {
               _loc8_ = param2.§;r§(_loc7_);
               this.§%O§(_loc8_.type,_loc8_.x,_loc8_.y,_loc8_.angle);
               _loc7_++;
            }
            this.§<#§ = this.§%7§();
            this.§>!g§ = 0;
            if(this.§1%§.length <= 0)
            {
               §1!7§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§%!H§ + " " + this.§^<§);
               this.§-!o§(§]!u§);
            }
            else
            {
               this.§-!o§(§`!v§);
            }
         }
         else
         {
            §1!7§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§-!o§(§]!u§);
         }
         this.§6z§ = 0;
         this.§0g§();
         this.update(0,true);
         this.§5a§();
         this.§@!L§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§<q§;
      }
      
      public function get §^!6§() : Sprite
      {
         return this.§7C§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§6`§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§>!g§ < this.§1%§.length;
      }
      
      public function get §8h§() : Number
      {
         return this.§+!i§;
      }
      
      public function get x() : Number
      {
         return this.§%!H§;
      }
      
      public function get y() : Number
      {
         return this.§^<§;
      }
      
      public function get angle() : Number
      {
         return this.§5!A§;
      }
      
      public function get §`!V§() : Boolean
      {
         return this.§9;§;
      }
      
      public function dispose() : void
      {
         while(this.§1%§.length > 0)
         {
            this.§;!§(0);
         }
         this.§1%§ = null;
         if(this.§<q§)
         {
            this.§<q§.dispose();
            this.§<q§ = null;
         }
         this.§]![§ = null;
      }
      
      public function §?!@§(param1:String, param2:Number, param3:Number, param4:int = -1) : §8L§
      {
         var _loc6_:§8L§ = null;
         if(this.§1%§.length > 0)
         {
            (_loc6_ = this.§1%§[0]).§2S§(false);
            _loc6_.§'!S§ = false;
         }
         var _loc5_:§8L§;
         (_loc5_ = this.§%O§(param1,param2,param3,0,param4)).§2S§(true);
         return _loc5_;
      }
      
      protected function §%O§(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §8L§
      {
         var _loc6_:§>"4§ = this.§`W§.levelItemManager.§7`§(param1);
         var _loc7_:Sprite;
         (_loc7_ = new Sprite()).scaleX = _loc6_.scale;
         _loc7_.scaleY = _loc6_.scale;
         var _loc8_:§8L§ = this.initializeSlingshotObject(_loc6_,param2,param3,param4,_loc7_);
         if(param5 < 0)
         {
            this.§1%§.push(_loc8_);
         }
         else
         {
            this.§1%§.splice(param5,0,_loc8_);
         }
         this.§]![§.addChild(_loc8_.sprite);
         return _loc8_;
      }
      
      protected function initializeSlingshotObject(param1:§>"4§, param2:Number, param3:Number, param4:Number, param5:Sprite) : §8L§
      {
         return new §8L§(this,param5,param1.itemName,param1,param2,param3,param4);
      }
      
      public function §-!o§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §`!v§)
         {
            this.§;!6§();
            this.§7§ = 1000;
         }
         else if(this.mSlingShotState == §8!8§)
         {
            this.§;!6§();
            this.§7§ = 0;
         }
         else if(this.mSlingShotState == §7>§)
         {
            this.§7§ = 10000;
            this.§@b§ = false;
            this.§;!6§();
         }
         else if(this.mSlingShotState == §]!u§)
         {
            this.§;!6§();
            this.§7§ = 2000;
         }
         else if(this.mSlingShotState == §>!n§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§@b§ = false;
               this.§;!6§();
               this.§1%§[this.§>!g§].setPosition(this.§]s§ - this.§1%§[this.§>!g§].radius * Math.cos(this.§+!i§ / (180 / Math.PI)),this.§>r§ + this.§1%§[this.§>!g§].radius * Math.sin(this.§+!i§ / (180 / Math.PI)),180 - this.§+!i§);
            }
            else
            {
               this.§;!6§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §9v§() : §"h§
      {
         return this.§`W§;
      }
      
      public function §]q§() : Boolean
      {
         return this.mSlingShotState == §]!u§ && this.§7§ <= 0;
      }
      
      protected function §`!%§() : §7!t§
      {
         return this.§`W§.§[!c§.§[!q§("SLINGSHOT");
      }
      
      private function §4J§() : void
      {
         this.§'a§ = this.§`!%§();
         this.§^§ = this.§'a§.getFrame(0);
         this.§^§.pivotX = -3;
         this.§^§.pivotY = -24;
         this.§3!&§ = this.§'a§.getFrame(1);
         this.§3!&§.pivotX = -30;
         this.§3!&§.pivotY = -30;
         this.§,"0§();
         this.§8!m§();
         this.§!&§ = new Sprite();
         this.§!&§.addChild(this.§^§);
         this.§!&§.addChild(this.§`" §);
         this.§7C§ = new Sprite();
         this.§]![§ = new Sprite();
         this.§3"2§ = new Sprite();
         this.§3"2§.addChild(this.§1!h§);
         this.§3"2§.addChild(this.§@;§);
         this.§3"2§.addChild(this.§3!&§);
         this.§ !r§();
      }
      
      protected function § !r§() : void
      {
         this.§<q§.addChild(this.§!&§);
         this.§<q§.addChild(this.§7C§);
         this.§<q§.addChild(this.§]![§);
         this.§<q§.addChild(this.§3"2§);
      }
      
      public function §,"0§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§]!h§ = this.§%!H§;
         this.§?I§ = this.§^<§;
         this.§3!Q§ = §<!<§.§,M§;
         _loc1_ = null;
      }
      
      protected function §&?§(param1:uint) : DisplayObject
      {
         return new §-f§(2,2,param1);
      }
      
      protected function §6",§(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc3_:BitmapData = null;
         if(!§[!m§ || param2)
         {
            _loc3_ = new BitmapData(18,26,true,4278190080 | param1);
            if(§[!m§)
            {
               this.§`W§.§&p§.§=N§(§[!m§);
            }
            §[!m§ = this.§`W§.§&p§.§6!&§(_loc3_);
         }
         return new §#"5§(§[!m§);
      }
      
      protected function §8!m§(param1:uint = 3151368, param2:uint = 3151368, param3:Boolean = false) : void
      {
         this.§1!h§ = new Sprite();
         this.§^!^§ = new Sprite();
         var _loc4_:DisplayObject;
         (_loc4_ = this.§6",§(param2,param3)).rotation = Math.PI;
         _loc4_.x = _loc4_.width / 2;
         _loc4_.y = _loc4_.height / 2;
         this.§^!^§.addChild(_loc4_);
         this.§1!h§.addChild(this.§^!^§);
         this.§`" § = new Sprite();
         this.§`" §.x = 22;
         this.§`" §.y = 0;
         this.§0j§ = this.§&?§(param1);
         this.§`" §.addChild(this.§0j§);
         this.§@;§ = new Sprite();
         this.§@;§.x = -17;
         this.§@;§.y = 5;
         this.§+w§ = this.§&?§(param1);
         this.§@;§.addChild(this.§+w§);
      }
      
      protected function §@!L§(param1:Number) : void
      {
         var _loc2_:Number = (this.§>r§ - this.§^<§) / §"h§.§4<§;
         var _loc3_:Number = (this.§]s§ - this.§%!H§) / §"h§.§4<§;
         var _loc4_:Number = Math.cos(this.§5!A§);
         var _loc5_:Number = Math.sin(this.§5!A§);
         var _loc6_:Number = -Math.sin(this.§5!A§);
         var _loc7_:Number = Math.cos(this.§5!A§);
         var _loc8_:Number = _loc3_;
         var _loc9_:Number = _loc2_;
         _loc3_ = _loc8_ * _loc4_ + _loc9_ * _loc5_;
         _loc2_ = _loc8_ * _loc6_ + _loc9_ * _loc7_;
         var _loc10_:Number = 3.5 + 8 * ((this.§3!Q§ - this.§7!K§) / this.§3!Q§);
         this.§1!h§.x = _loc3_;
         this.§1!h§.y = _loc2_;
         this.§1!h§.rotation = -this.§5!A§ - this.§+!i§ / (180 / Math.PI);
         this.§!&§.x = this.§%!H§ / §"h§.§4<§;
         this.§!&§.y = this.§^<§ / §"h§.§4<§;
         this.§!&§.rotation = this.§5!A§;
         this.§3"2§.x = this.§%!H§ / §"h§.§4<§;
         this.§3"2§.y = this.§^<§ / §"h§.§4<§;
         this.§3"2§.rotation = this.§5!A§;
         this.§@;§.rotation = Math.atan2(_loc2_ - this.§@;§.y,_loc3_ - this.§@;§.x);
         this.§+w§.width = Math.sqrt(Math.pow(_loc3_ - this.§@;§.x,2) + Math.pow(_loc2_ - this.§@;§.y,2));
         this.§+w§.height = _loc10_ * 2;
         this.§+w§.y = -this.§+w§.height / 2;
         this.§`" §.rotation = Math.atan2(_loc2_ - this.§`" §.y,_loc3_ - this.§`" §.x);
         this.§0j§.width = Math.sqrt(Math.pow(_loc3_ - this.§`" §.x,2) + Math.pow(_loc2_ - this.§`" §.y,2));
         this.§0j§.height = _loc10_ * 2;
         this.§0j§.y = -this.§0j§.height / 2;
         this.§]4§ = false;
      }
      
      public function §&"0§() : void
      {
         var _loc2_:§8L§ = null;
         while(this.§1%§.length > 0)
         {
            this.§;!§(0,true);
         }
         this.§6d§();
         if(this.§1%§.length > 0)
         {
            _loc2_ = this.§1%§[0];
            _loc2_.§2S§(false);
         }
         var _loc1_:§8L§ = this.§%O§("BIRD_SARDINE",this.§%!H§,this.§^<§,0);
         _loc1_.§2S§(true);
         _loc1_.§'!S§ = false;
         this.§-!o§(§7>§);
      }
      
      protected function §6d§() : void
      {
         §1!i§.§+!Y§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§-!o§(§>!n§);
      }
      
      public function §;!6§() : void
      {
         this.setNewCoordinatesForRubber(this.§]!h§,this.§?I§ + this.§3!Q§ / 8);
      }
      
      protected function get §7@§() : Number
      {
         return this.§5"§ * this.§^!8§;
      }
      
      protected function get §7!K§() : Number
      {
         return Math.min(this.§5"§,this.§3!Q§);
      }
      
      protected function get §]s§() : Number
      {
         if(this.§5"§ >= this.§3!Q§)
         {
            return this.§]!h§ + this.§3!Q§ * Math.cos(this.§+!i§ / 180 * Math.PI);
         }
         return this.§]!h§ + this.§5"§ * Math.cos(this.§+!i§ / 180 * Math.PI);
      }
      
      protected function get §>r§() : Number
      {
         if(this.§5"§ >= this.§3!Q§)
         {
            return this.§?I§ - this.§3!Q§ * Math.sin(this.§+!i§ / 180 * Math.PI);
         }
         return this.§?I§ - this.§5"§ * Math.sin(this.§+!i§ / 180 * Math.PI);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         if(this.§@'§ > 0)
         {
            return false;
         }
         var _loc4_:Number = param1 - this.§]!h§;
         var _loc5_:Number = param2 - this.§?I§;
         var _loc6_:Number;
         if((_loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) * this.§^!8§ > this.§3!Q§)
         {
            if(param3)
            {
               return false;
            }
            _loc6_ = this.§3!Q§ / this.§^!8§;
         }
         var _loc7_:Number = (_loc7_ = Math.atan2(-(param2 - this.§?I§),param1 - this.§]!h§)) * (180 / Math.PI);
         if(!this.mDragging && this.§@'§ < 0)
         {
            _loc6_ = 0.8;
            _loc7_ = -160;
         }
         if(this.§[m§)
         {
            _loc6_ = this.§90§(_loc6_);
         }
         return this.§>"$§(_loc7_,_loc6_);
      }
      
      protected function §90§(param1:Number) : Number
      {
         var _loc6_:Number = NaN;
         var _loc5_:Number = this.§3!Q§ / 2;
         if(param1 > _loc5_)
         {
            if(this.§+!i§ > -90 - 12 + 5 && this.§+!i§ < -90 + 12 + 5)
            {
               return _loc5_;
            }
            if(this.§+!i§ > -90 - 12 - 4 + 5 && this.§+!i§ < -90 + 12 + 4 + 5)
            {
               return Number(_loc5_ + (this.§3!Q§ - _loc5_) * (Math.abs(this.§+!i§ - -90 - 5) - 12) / 4);
            }
         }
         return param1;
      }
      
      protected function §>"$§(param1:Number, param2:Number) : Boolean
      {
         this.§+!i§ = param1;
         this.§5"§ = param2;
         if(this.§5"§ <= this.§3!Q§ * 0.45)
         {
            this.§6M§ = true;
         }
         else if(this.§6M§ && this.§5"§ >= this.§3!Q§ * 0.8)
         {
            this.§^!d§();
            this.§6M§ = false;
         }
         this.§]4§ = true;
         return true;
      }
      
      protected function §^!d§() : void
      {
         §1!i§.§+!Y§("SlingshotStreched");
      }
      
      protected function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§%!H§ + param1 * Math.cos(this.§5!A§ + Math.PI / 2),this.§^<§ + param1 * Math.sin(this.§5!A§ + Math.PI / 2),this.§5!A§);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc5_:Number = param1 - this.§%!H§;
         this.§%!H§ = param1;
         var _loc6_:Number = param2 - this.§^<§;
         this.§^<§ = param2;
         this.§5!A§ = param3;
         this.§?I§ += _loc6_;
         this.§]!h§ += _loc5_;
         if(param4)
         {
            this.§@!L§(0);
         }
         this.§]4§ = true;
      }
      
      protected function §[;§() : Number
      {
         return this.§7@§ / this.§3!Q§;
      }
      
      public function §9!§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§8L§ = this.§1%§[this.§>!g§];
         var _loc3_:Number = this.§[;§();
         if(_loc2_)
         {
            _loc1_ = _loc2_.§9[§;
         }
         return _loc1_ * _loc3_;
      }
      
      public function §3! §() : Point
      {
         var _loc1_:§8L§ = null;
         if(this.§1%§.length > this.§>!g§)
         {
            _loc1_ = this.§1%§[this.§>!g§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §1!P§() : Point
      {
         return new Point(this.§]!h§,this.§?I§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§8L§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.§ 8§(param1);
         if(this.§]4§)
         {
            this.§@!L§(param1);
         }
         this.§7§ -= param1;
         if(this.§7§ < 0)
         {
            this.§7§ = 0;
         }
         if(this.mSlingShotState != §]!u§)
         {
            this.§8![§(param1,param2);
            _loc3_ = null;
            if(this.§1%§.length > 0)
            {
               _loc3_ = this.§1%§[this.§>!g§];
            }
            if(_loc3_)
            {
               _loc3_.§for §(param1);
            }
            if(!_loc3_)
            {
               this.§-!o§(§]!u§);
            }
            else if(this.mSlingShotState == §`!v§)
            {
               if(this.§7§ <= 0)
               {
                  this.§-!o§(§8!8§);
                  _loc3_.§3F§();
               }
            }
            else if(this.mSlingShotState == §8!8§)
            {
               if(_loc3_.§%"1§)
               {
                  this.§-!o§(§7>§);
               }
            }
            else if(this.mSlingShotState == §7>§)
            {
               _loc4_ = this.§]s§ - _loc3_.radius * Math.cos(this.§+!i§ / (180 / Math.PI));
               _loc5_ = this.§>r§ + _loc3_.radius * Math.sin(this.§+!i§ / (180 / Math.PI));
               if(this.mDragging || this.§@'§ >= 0)
               {
                  _loc3_.setPosition(_loc4_,_loc5_,180 - this.§+!i§);
               }
               else
               {
                  _loc3_.setPosition(_loc4_,_loc5_,this.angle);
               }
               if(this.§@b§)
               {
                  this.§[[§(this.§[;§(),this.§+!i§);
               }
            }
         }
      }
      
      public function §0!3§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§8L§ = null;
         if(this.§1%§.length > 0)
         {
            _loc5_ = this.§1%§[this.§>!g§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2,180 - this.§+!i§);
         this.§[[§(param3,param4);
      }
      
      protected function §4!Q§() : void
      {
         this.§!a§ = false;
         var _loc1_:§8L§ = null;
         if(this.§1%§.length > this.§>!g§)
         {
            _loc1_ = this.§1%§[this.§>!g§];
         }
         if(!_loc1_)
         {
            return;
         }
         this.§6`§ = new Date().time;
         this.§`W§.§4!Q§(_loc1_,this.§=f§,this.§+!i§);
         this.§;!§(this.§>!g§,_loc1_.§ !n§ > 0);
         this.§;!H§();
         if(this.§>!g§ >= this.§1%§.length)
         {
            this.§-!o§(§]!u§);
         }
         else
         {
            this.§-!o§(§`!v§);
         }
         dispatchEvent(new Event(§1!Q§));
      }
      
      protected function § 8§(param1:Number) : void
      {
         if(this.§@'§ <= 0)
         {
            return;
         }
         this.§]4§ = true;
         this.§@'§ -= param1;
         if(this.§@'§ <= 0)
         {
            this.§@'§ = 0;
         }
         var _loc2_:Number = this.§@'§ / §[!Y§;
         var _loc3_:Number = this.§[!w§ * Math.cos(_loc2_ * Math.PI * 8) * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_;
         this.§>"$§(this.§+!i§,_loc3_);
         if(this.§@'§ == 0)
         {
            this.§@'§ = -1;
            this.§;!6§();
         }
         if(this.§!a§)
         {
            this.§4!Q§();
         }
      }
      
      public function §[[§(param1:Number, param2:Number) : void
      {
         this.§=f§ = param1;
         this.§+!i§ = param2;
         this.§@'§ = §[!Y§;
         this.§[!w§ = this.§5"§;
         this.mDragging = false;
         this.§@b§ = false;
         this.§!a§ = true;
      }
      
      protected function §;!H§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §1!i§.§+!Y§("BirdShot" + _loc1_);
      }
      
      public function §8![§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§>!g§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§1%§.length)
         {
            this.§1%§[_loc4_].update(param1,this.mSlingShotState == §>!n§,param2);
            _loc4_++;
         }
      }
      
      public function §<!D§() : String
      {
         var _loc1_:§8L§ = null;
         if(this.§>!g§ < this.§1%§.length)
         {
            _loc1_ = this.§1%§[this.§>!g§];
            return _loc1_.name;
         }
         return null;
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§8L§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§;!6§();
         if(this.§+!k§ >= this.§1%§.length)
         {
            return false;
         }
         _loc1_ = this.§1%§[this.§+!k§];
         _loc1_.§4!r§(-1,true);
         _loc2_ = this.§`W§.levelItemManager.§7`§(_loc1_.name).score;
         this.§"o§(_loc1_,_loc2_);
         ++this.§+!k§;
         return true;
      }
      
      protected function §"o§(param1:§8L§, param2:int) : void
      {
         this.§`W§.addScore(param2,§"1§.§]0§,true,param1.x,param1.y - 3,§%v§.§?!O§(param1.name));
      }
      
      public function §%7§() : int
      {
         var _loc2_:§8L§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§1%§)
         {
            _loc1_ += this.§`W§.levelItemManager.§7`§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §7!Y§() : int
      {
         return this.§<#§;
      }
      
      protected function §5a§() : void
      {
         var _loc4_:int = 0;
         var _loc1_:int = 1000;
         var _loc2_:Number = Math.cos(this.§5!A§ + Math.PI / 2) * this.§@m§;
         var _loc3_:Number = Math.sin(this.§5!A§ + Math.PI / 2) * this.§@m§;
         while((_loc4_ = this.§`W§.objects.§?"4§(this.§]!h§ + _loc2_,this.§?I§ + _loc3_)) == -1)
         {
            this.applyGravity(0.1);
            if(_loc1_-- <= 0)
            {
               break;
            }
         }
         this.§6z§ = -1;
      }
      
      public function §;"0§(param1:Number, param2:Number) : void
      {
         this.§<q§.x = -param1;
         this.§<q§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §7>§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function get canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §7>§ && this.§[;§() >= §"!R§ && this.§@'§ < 0;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§-!o§(§7>§);
         var _loc1_:§8L§ = this.§1%§[this.§>!g§];
         _loc1_.§4!r§(§[!L§.§6G§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§8L§ = this.§1%§[this.§>!g§];
         _loc1_.§4!r§(§[!L§.§;!@§);
      }
      
      public function shoot() : void
      {
         this.§@b§ = true;
      }
      
      protected function §;!§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§8L§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§1%§[param1])
         {
            _loc3_ = this.§1%§[param1];
            this.§]![§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§&!h§(this.§1%§[param1]);
            }
            _loc3_.dispose();
            this.§1%§[param1] = null;
         }
         this.§1%§.splice(param1,1);
      }
      
      protected function §&!h§(param1:§8L§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §"h§.§4<§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §"h§.§4<§) + Math.random() * -_loc8_ * 2;
            this.§`W§.particles.§;!9§(§%v§.§!"3§,§8W§.§8!C§,§%v§.§!-§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§%v§.§#S§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§`W§.particles.§;!9§(§%v§.§'"$§,§8W§.§8!C§,§%v§.§!-§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:§8L§) : void
      {
         this.§;!§(this.§1%§.indexOf(param1));
      }
      
      public function §0g§() : void
      {
         var _loc2_:§8L§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§8L§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§1%§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§%!H§ - this.§1%§[_loc1_].x) * (this.§%!H§ - this.§1%§[_loc1_].x) + (this.§^<§ - this.§1%§[_loc1_].y) * (this.§^<§ - this.§1%§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§%!H§ - this.§1%§[_loc1_ + 1].x) * (this.§%!H§ - this.§1%§[_loc1_ + 1].x) + (this.§^<§ - this.§1%§[_loc1_ + 1].y) * (this.§^<§ - this.§1%§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§1%§[_loc1_];
               this.§1%§.splice(_loc1_,1);
               this.§1%§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§]![§.numChildren > 0)
         {
            this.§]![§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§1%§.length)
         {
            _loc2_ = this.§1%§[_loc1_];
            this.§]![§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §8L§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§1%§.length)
         {
            if(this.§1%§[_loc3_])
            {
               if(this.§1%§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§1%§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get(param1:Number, param2:Number) : §`!j§
      {
         if(param1 >= this.§%!H§ - this.§3!Q§ / 4 && param1 <= this.§%!H§ + this.§3!Q§ / 4 && param2 >= this.§^<§ - this.§3!Q§ / 4 && this.§^<§ <= this.§^<§ + this.§@m§)
         {
            return this;
         }
         return null;
      }
      
      public function §`!d§(param1:§-?§) : void
      {
         var _loc3_:§8L§ = null;
         var _loc4_:§=Q§ = null;
         param1.slingshotX = this.§%!H§;
         param1.slingshotY = this.§^<§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§1%§.length)
         {
            _loc3_ = this.§1%§[_loc2_];
            (_loc4_ = new §=Q§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.type = _loc3_.name;
            param1.§4!S§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §#d§() : void
      {
         while(this.§1%§.length > 0)
         {
            this.removeObject(this.§1%§[0]);
         }
      }
      
      public function §2G§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§1%§.length)
         {
            if(this.§1%§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§1%§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§%!H§ > param1.x && this.§%!H§ < param2.x && this.§^<§ > param1.y && this.§^<§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §]I§(param1:String, param2:Number, param3:Number, param4:Number) : §8L§
      {
         var _loc5_:§8L§ = this.§%O§(param1,param2,param3,param4);
         this.§0g§();
         return _loc5_;
      }
      
      public function §<!q§() : Number
      {
         return this.§1%§.length;
      }
   }
}
