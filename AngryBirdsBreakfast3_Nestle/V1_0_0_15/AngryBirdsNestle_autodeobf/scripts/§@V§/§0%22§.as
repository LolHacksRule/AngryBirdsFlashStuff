package §@V§
{
   import §%!B§.§5L§;
   import §%8§.§89§;
   import §%8§.§@-§;
   import §0N§.§ i§;
   import §24§.;
   import §2`§.§;!Q§;
   import §3!J§.§4!2§;
   import §3!J§.DisplayObject;
   import §3!J§.Sprite;
   import §=!4§.Texture;
   import §[!Z§.§>D§;
   import §`2§.§"w§;
   import §`2§.§`""§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §0"§ extends EventDispatcher
   {
      
      public static const §=!f§:String = "slingshot_shot_bird";
      
      private static const §;!,§:int = 1800;
      
      public static const §^&§:Number = 0.4;
      
      public static const §97§:int = 0;
      
      public static const §]""§:int = 1;
      
      public static const §'!i§:int = 2;
      
      public static const §%!T§:int = 3;
      
      public static const §1_§:int = 5;
      
      public static const §5G§:int = 6;
      
      public static const §?!W§:int = 3151368;
      
      protected static var §6v§:Texture;
      
      protected static var §0""§:Texture;
       
      
      protected var §9!i§:§;!Q§;
      
      protected var §!`§:§#=§;
      
      protected var §]!B§:Number;
      
      protected var §9=§:Number;
      
      protected var §8M§:Number;
      
      protected var §5#§:Number = 8.5;
      
      protected var §7W§:Number;
      
      protected var §"Q§:Number;
      
      protected var §7!V§:Number;
      
      protected var §@L§:Number;
      
      protected var §=l§:Number = 1.0;
      
      protected var §77§:Boolean;
      
      protected var §`c§:Boolean;
      
      protected var § '§:Boolean;
      
      protected var §&n§:Boolean = false;
      
      public var §&]§:Vector.<§&#§>;
      
      public var §">§:int;
      
      protected var §0"3§:int = 0;
      
      protected var §,R§:int;
      
      protected var §="'§:Number;
      
      public var §-w§:Sprite;
      
      protected var §4!!§:Sprite;
      
      public var §-"$§:int = 0;
      
      protected var §;!i§:Number = 0;
      
      public var mSlingShotState:int;
      
      public var §>!=§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §^;§:Boolean = false;
      
      public var §3I§:Number;
      
      protected var §&%§:Sprite;
      
      protected var §##§:Sprite;
      
      protected var §0!§:Sprite;
      
      protected var §`!b§:DisplayObject;
      
      protected var §'!2§:Sprite;
      
      protected var §`V§:DisplayObject;
      
      protected var §[S§:Sprite;
      
      protected var §5f§:DisplayObject;
      
      protected var §5!4§:Sprite;
      
      protected var §>"6§:Sprite;
      
      protected var §""#§:DisplayObject;
      
      private var §6!d§:Number = 0;
      
      private var §>V§:Number = 0;
      
      private var §,!"§:Number = -1;
      
      private var §69§:Number = 0;
      
      private var §>!2§:Boolean = false;
      
      private var §`!T§:int = 0;
      
      private var §1?§:Boolean = false;
      
      public function §0"§(param1:§#=§, param2:§5L§, param3:Sprite, param4:Number = 1.0, param5:Boolean = true, param6:Boolean = true, param7:Boolean = false)
      {
         var _loc8_:int = 0;
         var _loc9_:§ i§ = null;
         this.§&]§ = new Vector.<§&#§>();
         super();
         this.§!`§ = param1;
         this.§&%§ = param3;
         this.§=l§ = param4;
         this.§77§ = param5;
         this.§`c§ = param6;
         this.§ '§ = param7;
         if(param2)
         {
            this.setPosition(param2.slingshotX,param2.slingshotY,param2.set);
            this.§2!n§();
            _loc8_ = 0;
            while(_loc8_ < param2.§>s§)
            {
               _loc9_ = param2.§`!^§(_loc8_);
               this.§5`§(_loc9_.type,_loc9_.x,_loc9_.y,_loc9_.angle,_loc9_.index);
               _loc8_++;
            }
            this.§`!T§ = this.§=U§();
            this.§">§ = 0;
            if(this.§&]§.length <= 0)
            {
               §#7§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§]!B§ + " " + this.§9=§);
               this.§,V§(§%!T§);
            }
            else
            {
               this.§,V§(§97§);
            }
         }
         else
         {
            §#7§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§,V§(§%!T§);
         }
         this.§3I§ = 0;
         this.§`#§();
         this.update(0,true);
         this.§^!K§();
         this.§6!M§(0);
         this.§<!G§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§&%§;
      }
      
      public function get §6q§() : Sprite
      {
         return this.§4!!§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§6!d§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§">§ < this.§&]§.length;
      }
      
      public function get §<!v§() : Number
      {
         return this.§;!i§;
      }
      
      public function get x() : Number
      {
         return this.§]!B§;
      }
      
      public function get y() : Number
      {
         return this.§9=§;
      }
      
      public function get angle() : Number
      {
         return this.§8M§;
      }
      
      public function get §2"1§() : Boolean
      {
         return this.§`c§;
      }
      
      public function get §0j§() : Boolean
      {
         return this.§ '§;
      }
      
      public function get §<!G§() : Boolean
      {
         return this.§1?§;
      }
      
      public function set §<!G§(param1:Boolean) : void
      {
         this.§1?§ = param1;
      }
      
      public function dispose() : void
      {
         while(this.§&]§.length > 0)
         {
            this.§%!R§(0);
         }
         this.§&]§ = null;
         if(this.§&%§)
         {
            this.§&%§.dispose();
            this.§&%§ = null;
         }
         this.§-w§ = null;
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§`!b§)
         {
            this.§`!b§.color = param1;
         }
         if(this.§""#§)
         {
            this.§""#§.color = param1;
         }
      }
      
      public function §'R§(param1:String, param2:Number, param3:Number, param4:int) : §&#§
      {
         var _loc6_:§&#§ = null;
         if(this.§&]§.length > 0)
         {
            (_loc6_ = this.§&]§[0]).§8!7§(false);
            _loc6_.§??§ = false;
         }
         var _loc5_:§&#§;
         (_loc5_ = this.§5`§(param1,param2,param3,0,param4)).§8!7§(true);
         return _loc5_;
      }
      
      protected function §5`§(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §&#§
      {
         var _loc6_:§@-§ = this.§!`§.levelItemManager.§1!e§(param1);
         var _loc7_:Sprite;
         (_loc7_ = new Sprite()).scaleX = _loc6_.scale;
         _loc7_.scaleY = _loc6_.scale;
         var _loc8_:§&#§ = this.initializeSlingshotObject(_loc6_,param2,param3,param4,_loc7_,param5);
         if(param5 < 0)
         {
            this.§&]§.push(_loc8_);
         }
         else
         {
            this.§&]§.splice(param5,0,_loc8_);
         }
         ++this.§0"3§;
         this.§-w§.addChild(_loc8_.sprite);
         return _loc8_;
      }
      
      protected function initializeSlingshotObject(param1:§@-§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §&#§
      {
         return new §&#§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
      }
      
      public function §,V§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §97§)
         {
            this.§#!+§();
            this.§="'§ = 1000;
         }
         else if(this.mSlingShotState == §]""§)
         {
            this.§#!+§();
            this.§="'§ = 0;
         }
         else if(this.mSlingShotState == §'!i§)
         {
            this.§="'§ = 10000;
            this.§^;§ = false;
            this.§#!+§();
         }
         else if(this.mSlingShotState == §%!T§)
         {
            this.§#!+§();
            this.§="'§ = 2000;
         }
         else if(this.mSlingShotState == §1_§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§^;§ = false;
               this.§#!+§();
               this.§&]§[this.§">§].setPosition(this.§["6§ - this.§&]§[this.§">§].radius * Math.cos(this.§;!i§ / (180 / Math.PI)),this.§ true§ + this.§&]§[this.§">§].radius * Math.sin(this.§;!i§ / (180 / Math.PI)),180 - this.§;!i§);
            }
            else
            {
               this.§#!+§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §;c§() : §#=§
      {
         return this.§!`§;
      }
      
      public function §6!r§() : Boolean
      {
         return this.mSlingShotState == §%!T§ && this.§="'§ <= 0;
      }
      
      protected function §3a§() : §;!Q§
      {
         return this.§!`§.§13§.§6"%§("SLINGSHOT");
      }
      
      private function §2!n§() : void
      {
         this.§9!i§ = this.§3a§();
         this.§`!b§ = this.§9!i§.getFrame(0);
         this.§`!b§.pivotX = -3;
         this.§`!b§.pivotY = -24;
         this.§""#§ = this.§9!i§.getFrame(1);
         this.§""#§.pivotX = -30;
         this.§""#§.pivotY = -30;
         this.§9"3§();
         this.§?u§();
         this.§##§ = new Sprite();
         this.§##§.addChild(this.§`!b§);
         this.§##§.addChild(this.§'!2§);
         this.§4!!§ = new Sprite();
         this.§-w§ = new Sprite();
         this.§0!§ = new Sprite();
         this.§0!§.addChild(this.§5!4§);
         this.§0!§.addChild(this.§[S§);
         this.§0!§.addChild(this.§""#§);
         this.§5!'§();
      }
      
      protected function §5!'§() : void
      {
         this.§&%§.addChild(this.§##§);
         this.§&%§.addChild(this.§4!!§);
         this.§&%§.addChild(this.§-w§);
         this.§&%§.addChild(this.§0!§);
      }
      
      public function §9"3§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§7W§ = this.§]!B§;
         this.§"Q§ = this.§9=§;
         this.§@L§ = §&z§.§!"1§;
         _loc1_ = null;
      }
      
      private function §]!6§(param1:uint) : void
      {
         var _loc2_:BitmapData = new BitmapData(2,2,true,4278190080 | param1);
         if(§0""§)
         {
            this.§!`§.§]!z§.§ f§(§0""§);
         }
         §0""§ = this.§!`§.§]!z§.§@!;§(_loc2_);
      }
      
      protected function §'!e§() : DisplayObject
      {
         return new §4!2§(§0""§);
      }
      
      protected function §^R§(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc3_:BitmapData = null;
         if(!§6v§ || param2)
         {
            _loc3_ = new BitmapData(18,26,true,4278190080 | param1);
            if(§6v§)
            {
               this.§!`§.§]!z§.§ f§(§6v§);
            }
            §6v§ = this.§!`§.§]!z§.§@!;§(_loc3_);
         }
         return new §4!2§(§6v§);
      }
      
      protected function §?u§(param1:uint = 3151368, param2:uint = 3151368, param3:Boolean = false) : void
      {
         this.§5!4§ = new Sprite();
         this.§>"6§ = new Sprite();
         var _loc4_:DisplayObject;
         (_loc4_ = this.§^R§(param2,param3)).rotation = Math.PI;
         _loc4_.x = _loc4_.width / 2;
         _loc4_.y = _loc4_.height / 2;
         this.§>"6§.addChild(_loc4_);
         this.§5!4§.addChild(this.§>"6§);
         this.§'!2§ = new Sprite();
         this.§'!2§.x = 22;
         this.§'!2§.y = 0;
         this.§]!6§(param1);
         this.§`V§ = this.§'!e§();
         this.§'!2§.addChild(this.§`V§);
         this.§[S§ = new Sprite();
         this.§[S§.x = -17;
         this.§[S§.y = 5;
         this.§5f§ = this.§'!e§();
         this.§[S§.addChild(this.§5f§);
      }
      
      protected function §6!M§(param1:Number) : void
      {
         var _loc2_:Number = (this.§ true§ - this.§9=§) / §#=§.§^!2§;
         var _loc3_:Number = (this.§["6§ - this.§]!B§) / §#=§.§^!2§;
         var _loc4_:Number = Math.cos(this.§8M§);
         var _loc5_:Number = Math.sin(this.§8M§);
         var _loc6_:Number = -Math.sin(this.§8M§);
         var _loc7_:Number = Math.cos(this.§8M§);
         var _loc8_:Number = _loc3_;
         var _loc9_:Number = _loc2_;
         _loc3_ = _loc8_ * _loc4_ + _loc9_ * _loc5_;
         _loc2_ = _loc8_ * _loc6_ + _loc9_ * _loc7_;
         var _loc10_:Number = 3.5 + 8 * ((this.§@L§ - this.§5""§) / this.§@L§);
         this.§5!4§.x = _loc3_;
         this.§5!4§.y = _loc2_;
         this.§5!4§.rotation = -this.§8M§ - this.§;!i§ / (180 / Math.PI);
         this.§##§.x = this.§]!B§ / §#=§.§^!2§;
         this.§##§.y = this.§9=§ / §#=§.§^!2§;
         this.§##§.rotation = this.§8M§;
         this.§0!§.x = this.§]!B§ / §#=§.§^!2§;
         this.§0!§.y = this.§9=§ / §#=§.§^!2§;
         this.§0!§.rotation = this.§8M§;
         this.§[S§.rotation = Math.atan2(_loc2_ - this.§[S§.y,_loc3_ - this.§[S§.x);
         this.§5f§.width = Math.sqrt(Math.pow(_loc3_ - this.§[S§.x,2) + Math.pow(_loc2_ - this.§[S§.y,2));
         this.§5f§.height = _loc10_ * 2;
         this.§5f§.y = -this.§5f§.height / 2;
         this.§'!2§.rotation = Math.atan2(_loc2_ - this.§'!2§.y,_loc3_ - this.§'!2§.x);
         this.§`V§.width = Math.sqrt(Math.pow(_loc3_ - this.§'!2§.x,2) + Math.pow(_loc2_ - this.§'!2§.y,2));
         this.§`V§.height = _loc10_ * 2;
         this.§`V§.y = -this.§`V§.height / 2;
         this.§>!=§ = false;
      }
      
      public function §!j§() : §&#§
      {
         var _loc2_:§&#§ = null;
         while(this.§&]§.length > 0)
         {
            this.§%!R§(0,true);
         }
         this.§@"&§();
         if(this.§&]§.length > 0)
         {
            _loc2_ = this.§&]§[0];
            _loc2_.§8!7§(false);
         }
         var _loc1_:§&#§ = this.§5`§("BIRD_SARDINE",this.§]!B§,this.§9=§,0);
         _loc1_.§8!7§(true);
         _loc1_.§??§ = false;
         this.§,V§(§'!i§);
         return _loc1_;
      }
      
      protected function §@"&§() : void
      {
         §>D§.§9!q§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§,V§(§1_§);
      }
      
      public function §#!+§() : void
      {
         this.setNewCoordinatesForRubber(this.§7W§,this.§"Q§ + this.§@L§ / 8);
      }
      
      protected function get §@Q§() : Number
      {
         return this.§7!V§ * this.§=l§;
      }
      
      protected function get §5""§() : Number
      {
         return Math.min(this.§7!V§,this.§@L§);
      }
      
      protected function get §["6§() : Number
      {
         if(this.§7!V§ >= this.§@L§)
         {
            return this.§7W§ + this.§@L§ * Math.cos(this.§;!i§ / 180 * Math.PI);
         }
         return this.§7W§ + this.§7!V§ * Math.cos(this.§;!i§ / 180 * Math.PI);
      }
      
      protected function get § true§() : Number
      {
         if(this.§7!V§ >= this.§@L§)
         {
            return this.§"Q§ - this.§@L§ * Math.sin(this.§;!i§ / 180 * Math.PI);
         }
         return this.§"Q§ - this.§7!V§ * Math.sin(this.§;!i§ / 180 * Math.PI);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         if(this.§,!"§ > 0)
         {
            return false;
         }
         var _loc4_:Number = param1 - this.§7W§;
         var _loc5_:Number = param2 - this.§"Q§;
         var _loc6_:Number;
         if((_loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) * this.§=l§ > this.§@L§)
         {
            if(param3)
            {
               return false;
            }
            _loc6_ = this.§@L§ / this.§=l§;
         }
         var _loc7_:Number = (_loc7_ = Math.atan2(-(param2 - this.§"Q§),param1 - this.§7W§)) * (180 / Math.PI);
         if(!this.mDragging && this.§,!"§ < 0)
         {
            _loc6_ = 0.8;
            _loc7_ = -160;
         }
         if(this.§77§)
         {
            _loc6_ = this.§9!K§(_loc6_);
         }
         return this.§-!@§(_loc7_,_loc6_);
      }
      
      protected function §9!K§(param1:Number) : Number
      {
         var _loc6_:Number = NaN;
         var _loc5_:Number = this.§@L§ / 2;
         if(param1 > _loc5_)
         {
            if(this.§;!i§ > -90 - 12 + 5 && this.§;!i§ < -90 + 12 + 5)
            {
               return _loc5_;
            }
            if(this.§;!i§ > -90 - 12 - 4 + 5 && this.§;!i§ < -90 + 12 + 4 + 5)
            {
               return Number(_loc5_ + (this.§@L§ - _loc5_) * (Math.abs(this.§;!i§ - -90 - 5) - 12) / 4);
            }
         }
         return param1;
      }
      
      protected function §-!@§(param1:Number, param2:Number) : Boolean
      {
         this.§;!i§ = param1;
         this.§7!V§ = param2;
         if(this.§7!V§ <= this.§@L§ * 0.45)
         {
            this.§&n§ = true;
         }
         else if(this.§&n§ && this.§7!V§ >= this.§@L§ * 0.8)
         {
            this.§#f§();
            this.§&n§ = false;
         }
         this.§>!=§ = true;
         return true;
      }
      
      protected function §#f§() : void
      {
         §>D§.§9!q§("SlingshotStreched");
      }
      
      protected function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§]!B§ + param1 * Math.cos(this.§8M§ + Math.PI / 2),this.§9=§ + param1 * Math.sin(this.§8M§ + Math.PI / 2),this.§8M§);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc5_:Number = param1 - this.§]!B§;
         this.§]!B§ = param1;
         var _loc6_:Number = param2 - this.§9=§;
         this.§9=§ = param2;
         this.§8M§ = param3;
         this.§"Q§ += _loc6_;
         this.§7W§ += _loc5_;
         if(param4)
         {
            this.§6!M§(0);
         }
         this.§>!=§ = true;
      }
      
      protected function §6!7§() : Number
      {
         return this.§@Q§ / this.§@L§;
      }
      
      public function §>"!§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§&#§ = this.§&]§[this.§">§];
         var _loc3_:Number = this.§6!7§();
         if(_loc2_)
         {
            _loc1_ = _loc2_.§+!4§;
         }
         return _loc1_ * _loc3_;
      }
      
      public function §['§() : Point
      {
         var _loc1_:§&#§ = null;
         if(this.§&]§.length > this.§">§)
         {
            _loc1_ = this.§&]§[this.§">§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §-!9§() : Point
      {
         return new Point(this.§7W§,this.§"Q§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§&#§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.§[R§(param1);
         if(this.§>!=§)
         {
            this.§6!M§(param1);
         }
         this.§="'§ -= param1;
         if(this.§="'§ < 0)
         {
            this.§="'§ = 0;
         }
         if(this.mSlingShotState != §%!T§)
         {
            this.§2y§(param1,param2);
            _loc3_ = null;
            if(this.§&]§.length > 0)
            {
               _loc3_ = this.§&]§[this.§">§];
            }
            if(_loc3_)
            {
               _loc3_.§<h§(param1);
            }
            if(!_loc3_)
            {
               this.§,V§(§%!T§);
            }
            else if(this.mSlingShotState == §97§)
            {
               if(this.§="'§ <= 0)
               {
                  this.§,V§(§]""§);
                  _loc3_.§#!'§();
               }
            }
            else if(this.mSlingShotState == §]""§)
            {
               if(_loc3_.§&a§)
               {
                  this.§,V§(§'!i§);
               }
            }
            else if(this.mSlingShotState == §'!i§)
            {
               _loc4_ = this.§["6§ - _loc3_.radius * Math.cos(this.§;!i§ / (180 / Math.PI));
               _loc5_ = this.§ true§ + _loc3_.radius * Math.sin(this.§;!i§ / (180 / Math.PI));
               if(this.mDragging || this.§,!"§ >= 0)
               {
                  _loc3_.setPosition(_loc4_,_loc5_,180 - this.§;!i§);
               }
               else
               {
                  _loc3_.setPosition(_loc4_,_loc5_,this.angle);
               }
               if(this.§^;§)
               {
                  this.§,"1§(this.§6!7§(),this.§;!i§);
               }
            }
         }
      }
      
      public function §8S§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§&#§ = null;
         if(this.§&]§.length > 0)
         {
            _loc5_ = this.§&]§[this.§">§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2,180 - this.§;!i§);
         this.§,"1§(param3,param4);
      }
      
      protected function §?!k§() : void
      {
         this.§>!2§ = false;
         var _loc1_:§&#§ = null;
         if(this.§&]§.length > this.§">§)
         {
            _loc1_ = this.§&]§[this.§">§];
         }
         if(!_loc1_)
         {
            return;
         }
         this.§6!d§ = new Date().time;
         this.§!`§.§?!k§(_loc1_,this.§>V§,this.§;!i§);
         this.§%!R§(this.§">§,_loc1_.§,!P§ > 0);
         this.§5!$§();
         if(this.§">§ >= this.§&]§.length)
         {
            this.§,V§(§%!T§);
         }
         else
         {
            this.§,V§(§97§);
         }
         dispatchEvent(new Event(§=!f§));
      }
      
      protected function §[R§(param1:Number) : void
      {
         if(this.§,!"§ <= 0)
         {
            return;
         }
         this.§>!=§ = true;
         this.§,!"§ -= param1;
         if(this.§,!"§ <= 0)
         {
            this.§,!"§ = 0;
         }
         var _loc2_:Number = this.§,!"§ / §;!,§;
         var _loc3_:Number = this.§69§ * Math.cos(_loc2_ * Math.PI * 8) * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_;
         this.§-!@§(this.§;!i§,_loc3_);
         if(this.§,!"§ == 0)
         {
            this.§,!"§ = -1;
            this.§#!+§();
         }
         if(this.§>!2§)
         {
            this.§?!k§();
         }
      }
      
      public function §,"1§(param1:Number, param2:Number) : void
      {
         this.§>V§ = param1;
         this.§;!i§ = param2;
         this.§,!"§ = §;!,§;
         this.§69§ = this.§7!V§;
         this.mDragging = false;
         this.§^;§ = false;
         this.§>!2§ = true;
      }
      
      protected function §5!$§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §>D§.§9!q§("BirdShot" + _loc1_);
      }
      
      public function §2y§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§">§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§&]§.length)
         {
            this.§&]§[_loc4_].update(param1,this.mSlingShotState == §1_§,param2);
            _loc4_++;
         }
      }
      
      public function § e§() : String
      {
         var _loc1_:§&#§ = null;
         if(this.§">§ < this.§&]§.length)
         {
            _loc1_ = this.§&]§[this.§">§];
            return _loc1_.name;
         }
         return null;
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§&#§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§#!+§();
         if(this.§,R§ >= this.§&]§.length)
         {
            return false;
         }
         _loc1_ = this.§&]§[this.§,R§];
         _loc1_.§=+§(-1,true);
         _loc2_ = this.§!`§.levelItemManager.§1!e§(_loc1_.name).score;
         this.§^A§(_loc1_,_loc2_);
         ++this.§,R§;
         return true;
      }
      
      protected function §^A§(param1:§&#§, param2:int) : void
      {
         this.§!`§.addScore(param2,§52§.§[1§,true,param1.x,param1.y - 3,§`""§.§?!7§(param1.name));
      }
      
      public function §=U§() : int
      {
         var _loc2_:§&#§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§&]§)
         {
            _loc1_ += this.§!`§.levelItemManager.§1!e§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §=!s§() : int
      {
         return this.§`!T§;
      }
      
      protected function §^!K§() : void
      {
         var _loc4_:int = 0;
         var _loc1_:int = 1000;
         var _loc2_:Number = Math.cos(this.§8M§ + Math.PI / 2) * this.§5#§;
         var _loc3_:Number = Math.sin(this.§8M§ + Math.PI / 2) * this.§5#§;
         while((_loc4_ = this.§!`§.objects.§?!_§(this.§7W§ + _loc2_,this.§"Q§ + _loc3_)) == -1)
         {
            this.applyGravity(0.1);
            if(_loc1_-- <= 0)
            {
               break;
            }
         }
         this.§3I§ = -1;
      }
      
      public function §4!J§(param1:Number, param2:Number) : void
      {
         this.§&%§.x = -param1;
         this.§&%§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §'!i§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function get canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §'!i§ && this.§6!7§() >= §^&§ && this.§,!"§ < 0;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§,V§(§'!i§);
         var _loc1_:§&#§ = this.§&]§[this.§">§];
         _loc1_.§=+§(§89§.§8N§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§&#§ = this.§&]§[this.§">§];
         _loc1_.§=+§(§89§.§ v§);
      }
      
      public function shoot() : void
      {
         this.§^;§ = true;
      }
      
      protected function §%!R§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§&#§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§&]§[param1])
         {
            _loc3_ = this.§&]§[param1];
            this.§-w§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§4!u§(this.§&]§[param1]);
            }
            _loc3_.dispose();
            this.§&]§[param1] = null;
         }
         this.§&]§.splice(param1,1);
      }
      
      protected function §4!u§(param1:§&#§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §#=§.§^!2§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §#=§.§^!2§) + Math.random() * -_loc8_ * 2;
            this.§!`§.particles.§9!@§(§`""§.§-J§,§"w§.§,§,§`""§.§@b§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§`""§.§6!X§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§!`§.particles.§9!@§(§`""§.§-!0§,§"w§.§,§,§`""§.§@b§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:§&#§) : void
      {
         this.§%!R§(this.§&]§.indexOf(param1));
      }
      
      public function §`#§() : void
      {
         var _loc1_:§&#§ = null;
         this.§&]§.sort(this.§0!>§);
         while(this.§-w§.numChildren > 0)
         {
            this.§-w§.removeChildAt(0);
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§&]§.length)
         {
            _loc1_ = this.§&]§[_loc2_];
            this.§-w§.addChildAt(_loc1_.sprite,0);
            _loc2_++;
         }
      }
      
      private function §0!>§(param1:§&#§, param2:§&#§) : Number
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
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §&#§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§&]§.length)
         {
            if(this.§&]§[_loc3_])
            {
               if(this.§&]§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§&]§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §-!P§(param1:Number, param2:Number) : §0"§
      {
         if(param1 >= this.§]!B§ - this.§@L§ / 4 && param1 <= this.§]!B§ + this.§@L§ / 4 && param2 >= this.§9=§ - this.§@L§ / 4 && this.§9=§ <= this.§9=§ + this.§5#§)
         {
            return this;
         }
         return null;
      }
      
      public function §'!%§(param1:§5L§) : void
      {
         var _loc3_:§&#§ = null;
         var _loc4_:§ i§ = null;
         param1.slingshotX = this.§]!B§;
         param1.slingshotY = this.§9=§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§&]§.length)
         {
            _loc3_ = this.§&]§[_loc2_];
            (_loc4_ = new § i§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.type = _loc3_.name;
            param1.§'"&§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §5A§() : void
      {
         while(this.§&]§.length > 0)
         {
            this.removeObject(this.§&]§[0]);
         }
      }
      
      public function §?y§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§&]§.length)
         {
            if(this.§&]§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§&]§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§]!B§ > param1.x && this.§]!B§ < param2.x && this.§9=§ > param1.y && this.§9=§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §]!K§(param1:String, param2:Number, param3:Number, param4:Number) : §&#§
      {
         var _loc5_:§&#§ = this.§5`§(param1,param2,param3,param4);
         this.§>!e§();
         return _loc5_;
      }
      
      public function §0a§() : int
      {
         return this.§&]§.length;
      }
      
      public function §&Y§() : int
      {
         return this.§0"3§;
      }
      
      public function §>!e§() : void
      {
         this.§&]§.sort(this.§3j§);
         var _loc1_:int = 0;
         while(_loc1_ < this.§&]§.length)
         {
            this.§&]§[_loc1_].launchIndex = _loc1_;
            _loc1_++;
         }
         this.§">§ = 0;
      }
      
      private function §3j§(param1:§&#§, param2:§&#§) : Number
      {
         var _loc3_:Number = Math.pow(param1.x - this.§]!B§,2) + Math.pow(param1.y - this.§9=§,2);
         var _loc4_:Number = Math.pow(param2.x - this.§]!B§,2) + Math.pow(param2.y - this.§9=§,2);
         return _loc3_ - _loc4_;
      }
   }
}
