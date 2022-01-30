package §]k§
{
   import § !T§.§7@§;
   import §#!4§.§0!q§;
   import §#!4§.§=f§;
   import §%z§.§9!n§;
   import §%z§.§;#§;
   import §,!q§.§#!H§;
   import §,!q§.§+Q§;
   import §,!q§.DisplayObject;
   import §,!q§.Sprite;
   import §-!b§.§<W§;
   import §0!$§.§#!-§;
   import §0!s§.§#"%§;
   import §?V§.Texture;
   import §@!6§.§3!5§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §>!x§ extends EventDispatcher
   {
      
      public static const §7r§:String = "slingshot_shot_bird";
      
      private static const §6"-§:int = 1800;
      
      public static const §@§:Number = 0.4;
      
      public static const §&!U§:int = 0;
      
      public static const §#4§:int = 1;
      
      public static const §^!^§:int = 2;
      
      public static const §&V§:int = 3;
      
      public static const §9F§:int = 5;
      
      public static const §;6§:int = 6;
      
      public static const §2D§:int = 3151368;
      
      protected static var §+!X§:Texture;
       
      
      protected var §"!d§:§<W§;
      
      protected var §#g§:§<S§;
      
      protected var §@S§:Number;
      
      protected var §#B§:Number;
      
      protected var §5h§:Number;
      
      protected var §+"&§:Number = 8.5;
      
      protected var §-"2§:Number;
      
      protected var §@K§:Number;
      
      protected var §2!j§:Number;
      
      protected var §6!o§:Number;
      
      protected var §[D§:Number = 1.0;
      
      protected var §>!k§:Boolean;
      
      protected var §^!W§:Boolean;
      
      protected var §6J§:Boolean = false;
      
      public var §-!7§:Vector.<§-! §>;
      
      public var §continue§:int;
      
      public var §^Q§:int = 0;
      
      protected var §5!9§:int;
      
      protected var §0!z§:Number;
      
      public var §0"'§:Sprite;
      
      protected var §>!a§:Sprite;
      
      public var §?6§:int = 0;
      
      protected var §`!=§:Number = 0;
      
      public var mSlingShotState:int;
      
      public var §-&§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §,M§:Boolean = false;
      
      public var §5R§:Number;
      
      protected var §2!&§:Sprite;
      
      protected var §,"#§:Sprite;
      
      protected var §4!k§:Sprite;
      
      protected var §-!U§:DisplayObject;
      
      protected var §&Z§:Sprite;
      
      protected var §&!r§:DisplayObject;
      
      protected var §'4§:Sprite;
      
      protected var § g§:DisplayObject;
      
      protected var §"w§:Sprite;
      
      protected var §6!@§:Sprite;
      
      protected var §1y§:DisplayObject;
      
      private var §-!x§:Number = 0;
      
      private var §;!@§:Number = 0;
      
      private var §+!%§:Number = -1;
      
      private var §>!e§:Number = 0;
      
      private var §!&§:Boolean = false;
      
      private var §^J§:int = 0;
      
      public function §>!x§(param1:§<S§, param2:§7@§, param3:Sprite, param4:Number = 1.0, param5:Boolean = true, param6:Boolean = true)
      {
         var _loc7_:int = 0;
         var _loc8_:§#"%§ = null;
         this.§-!7§ = new Vector.<§-! §>();
         super();
         this.§#g§ = param1;
         this.§2!&§ = param3;
         this.§[D§ = param4;
         this.§>!k§ = param5;
         this.§^!W§ = param6;
         if(param2)
         {
            this.setPosition(param2.slingshotX,param2.slingshotY,param2.§1""§);
            this.§&7§();
            _loc7_ = 0;
            while(_loc7_ < param2.§`![§)
            {
               _loc8_ = param2.§'!t§(_loc7_);
               this.§"C§(_loc8_.type,_loc8_.x,_loc8_.y,_loc8_.angle);
               _loc7_++;
            }
            this.§^J§ = this.§`"&§();
            this.§continue§ = 0;
            if(this.§-!7§.length <= 0)
            {
               §#!-§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§@S§ + " " + this.§#B§);
               this.§,!e§(§&V§);
            }
            else
            {
               this.§,!e§(§&!U§);
            }
         }
         else
         {
            §#!-§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§,!e§(§&V§);
         }
         this.§5R§ = 0;
         this.§==§();
         this.update(0,true);
         this.§ =§();
         this.§&""§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§2!&§;
      }
      
      public function get § 0§() : Sprite
      {
         return this.§>!a§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§-!x§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§continue§ < this.§-!7§.length;
      }
      
      public function get §0c§() : Number
      {
         return this.§`!=§;
      }
      
      public function get x() : Number
      {
         return this.§@S§;
      }
      
      public function get y() : Number
      {
         return this.§#B§;
      }
      
      public function get angle() : Number
      {
         return this.§5h§;
      }
      
      public function get §8"-§() : Boolean
      {
         return this.§^!W§;
      }
      
      public function dispose() : void
      {
         while(this.§-!7§.length > 0)
         {
            this.§%$§(0);
         }
         this.§-!7§ = null;
         if(this.§2!&§)
         {
            this.§2!&§.dispose();
            this.§2!&§ = null;
         }
         this.§0"'§ = null;
      }
      
      public function §'§(param1:String, param2:Number, param3:Number, param4:int = -1) : §-! §
      {
         var _loc6_:§-! § = null;
         if(this.§-!7§.length > 0)
         {
            (_loc6_ = this.§-!7§[0]).§?5§(false);
            _loc6_.§ else§ = false;
         }
         var _loc5_:§-! §;
         (_loc5_ = this.§"C§(param1,param2,param3,0,param4)).§?5§(true);
         return _loc5_;
      }
      
      protected function §"C§(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §-! §
      {
         var _loc6_:§9!n§ = this.§#g§.levelItemManager.§4!1§(param1);
         var _loc7_:Sprite;
         (_loc7_ = new Sprite()).scaleX = _loc6_.scale;
         _loc7_.scaleY = _loc6_.scale;
         ++this.§^Q§;
         var _loc8_:§-! § = this.initializeSlingshotObject(_loc6_,param2,param3,param4,_loc7_);
         if(param5 < 0)
         {
            this.§-!7§.push(_loc8_);
         }
         else
         {
            this.§-!7§.splice(param5,0,_loc8_);
         }
         this.§0"'§.addChild(_loc8_.sprite);
         return _loc8_;
      }
      
      protected function initializeSlingshotObject(param1:§9!n§, param2:Number, param3:Number, param4:Number, param5:Sprite) : §-! §
      {
         return new §-! §(this,param5,param1.itemName,param1,param2,param3,param4);
      }
      
      public function §,!e§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §&!U§)
         {
            this.§ true§();
            this.§0!z§ = 1000;
         }
         else if(this.mSlingShotState == §#4§)
         {
            this.§ true§();
            this.§0!z§ = 0;
         }
         else if(this.mSlingShotState == §^!^§)
         {
            this.§0!z§ = 10000;
            this.§,M§ = false;
            this.§ true§();
         }
         else if(this.mSlingShotState == §&V§)
         {
            this.§ true§();
            this.§0!z§ = 2000;
         }
         else if(this.mSlingShotState == §9F§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§,M§ = false;
               this.§ true§();
               this.§-!7§[this.§continue§].setPosition(this.§4"2§ - this.§-!7§[this.§continue§].radius * Math.cos(this.§`!=§ / (180 / Math.PI)),this.§9K§ + this.§-!7§[this.§continue§].radius * Math.sin(this.§`!=§ / (180 / Math.PI)),180 - this.§`!=§);
            }
            else
            {
               this.§ true§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §1!w§() : §<S§
      {
         return this.§#g§;
      }
      
      public function §=K§() : Boolean
      {
         return this.mSlingShotState == §&V§ && this.§0!z§ <= 0;
      }
      
      protected function § X§() : §<W§
      {
         return this.§#g§.§-h§.§ !u§("SLINGSHOT");
      }
      
      private function §&7§() : void
      {
         this.§"!d§ = this.§ X§();
         this.§-!U§ = this.§"!d§.getFrame(0);
         this.§-!U§.pivotX = -3;
         this.§-!U§.pivotY = -24;
         this.§1y§ = this.§"!d§.getFrame(1);
         this.§1y§.pivotX = -30;
         this.§1y§.pivotY = -30;
         this.§]"2§();
         this.§]j§();
         this.§,"#§ = new Sprite();
         this.§,"#§.addChild(this.§-!U§);
         this.§,"#§.addChild(this.§&Z§);
         this.§>!a§ = new Sprite();
         this.§0"'§ = new Sprite();
         this.§4!k§ = new Sprite();
         this.§4!k§.addChild(this.§"w§);
         this.§4!k§.addChild(this.§'4§);
         this.§4!k§.addChild(this.§1y§);
         this.§5"5§();
      }
      
      protected function §5"5§() : void
      {
         this.§2!&§.addChild(this.§,"#§);
         this.§2!&§.addChild(this.§>!a§);
         this.§2!&§.addChild(this.§0"'§);
         this.§2!&§.addChild(this.§4!k§);
      }
      
      public function §]"2§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§-"2§ = this.§@S§;
         this.§@K§ = this.§#B§;
         this.§6!o§ = §#w§.§-!e§;
         _loc1_ = null;
      }
      
      protected function §80§(param1:uint) : DisplayObject
      {
         return new §#!H§(2,2,param1);
      }
      
      protected function §<!E§(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc3_:BitmapData = null;
         if(!§+!X§ || param2)
         {
            _loc3_ = new BitmapData(18,26,true,4278190080 | param1);
            if(§+!X§)
            {
               this.§#g§.§0p§.§1!#§(§+!X§);
            }
            §+!X§ = this.§#g§.§0p§.§2!8§(_loc3_);
         }
         return new §+Q§(§+!X§);
      }
      
      protected function §]j§(param1:uint = 3151368, param2:uint = 3151368, param3:Boolean = false) : void
      {
         this.§"w§ = new Sprite();
         this.§6!@§ = new Sprite();
         var _loc4_:DisplayObject;
         (_loc4_ = this.§<!E§(param2,param3)).rotation = Math.PI;
         _loc4_.x = _loc4_.width / 2;
         _loc4_.y = _loc4_.height / 2;
         this.§6!@§.addChild(_loc4_);
         this.§"w§.addChild(this.§6!@§);
         this.§&Z§ = new Sprite();
         this.§&Z§.x = 22;
         this.§&Z§.y = 0;
         this.§&!r§ = this.§80§(param1);
         this.§&Z§.addChild(this.§&!r§);
         this.§'4§ = new Sprite();
         this.§'4§.x = -17;
         this.§'4§.y = 5;
         this.§ g§ = this.§80§(param1);
         this.§'4§.addChild(this.§ g§);
      }
      
      protected function §&""§(param1:Number) : void
      {
         var _loc2_:Number = (this.§9K§ - this.§#B§) / §<S§.§;!Q§;
         var _loc3_:Number = (this.§4"2§ - this.§@S§) / §<S§.§;!Q§;
         var _loc4_:Number = Math.cos(this.§5h§);
         var _loc5_:Number = Math.sin(this.§5h§);
         var _loc6_:Number = -Math.sin(this.§5h§);
         var _loc7_:Number = Math.cos(this.§5h§);
         var _loc8_:Number = _loc3_;
         var _loc9_:Number = _loc2_;
         _loc3_ = _loc8_ * _loc4_ + _loc9_ * _loc5_;
         _loc2_ = _loc8_ * _loc6_ + _loc9_ * _loc7_;
         var _loc10_:Number = 3.5 + 8 * ((this.§6!o§ - this.§3!g§) / this.§6!o§);
         this.§"w§.x = _loc3_;
         this.§"w§.y = _loc2_;
         this.§"w§.rotation = -this.§5h§ - this.§`!=§ / (180 / Math.PI);
         this.§,"#§.x = this.§@S§ / §<S§.§;!Q§;
         this.§,"#§.y = this.§#B§ / §<S§.§;!Q§;
         this.§,"#§.rotation = this.§5h§;
         this.§4!k§.x = this.§@S§ / §<S§.§;!Q§;
         this.§4!k§.y = this.§#B§ / §<S§.§;!Q§;
         this.§4!k§.rotation = this.§5h§;
         this.§'4§.rotation = Math.atan2(_loc2_ - this.§'4§.y,_loc3_ - this.§'4§.x);
         this.§ g§.width = Math.sqrt(Math.pow(_loc3_ - this.§'4§.x,2) + Math.pow(_loc2_ - this.§'4§.y,2));
         this.§ g§.height = _loc10_ * 2;
         this.§ g§.y = -this.§ g§.height / 2;
         this.§&Z§.rotation = Math.atan2(_loc2_ - this.§&Z§.y,_loc3_ - this.§&Z§.x);
         this.§&!r§.width = Math.sqrt(Math.pow(_loc3_ - this.§&Z§.x,2) + Math.pow(_loc2_ - this.§&Z§.y,2));
         this.§&!r§.height = _loc10_ * 2;
         this.§&!r§.y = -this.§&!r§.height / 2;
         this.§-&§ = false;
      }
      
      public function §4"-§() : void
      {
         var _loc2_:§-! § = null;
         while(this.§-!7§.length > 0)
         {
            this.§%$§(0,true);
         }
         this.§2!d§();
         if(this.§-!7§.length > 0)
         {
            _loc2_ = this.§-!7§[0];
            _loc2_.§?5§(false);
         }
         var _loc1_:§-! § = this.§"C§("BIRD_SARDINE",this.§@S§,this.§#B§,0);
         _loc1_.§?5§(true);
         _loc1_.§ else§ = false;
         this.§,!e§(§^!^§);
      }
      
      protected function §2!d§() : void
      {
         §3!5§.§<!9§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§,!e§(§9F§);
      }
      
      public function § true§() : void
      {
         this.setNewCoordinatesForRubber(this.§-"2§,this.§@K§ + this.§6!o§ / 8);
      }
      
      protected function get §@e§() : Number
      {
         return this.§2!j§ * this.§[D§;
      }
      
      protected function get §3!g§() : Number
      {
         return Math.min(this.§2!j§,this.§6!o§);
      }
      
      protected function get §4"2§() : Number
      {
         if(this.§2!j§ >= this.§6!o§)
         {
            return this.§-"2§ + this.§6!o§ * Math.cos(this.§`!=§ / 180 * Math.PI);
         }
         return this.§-"2§ + this.§2!j§ * Math.cos(this.§`!=§ / 180 * Math.PI);
      }
      
      protected function get §9K§() : Number
      {
         if(this.§2!j§ >= this.§6!o§)
         {
            return this.§@K§ - this.§6!o§ * Math.sin(this.§`!=§ / 180 * Math.PI);
         }
         return this.§@K§ - this.§2!j§ * Math.sin(this.§`!=§ / 180 * Math.PI);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         if(this.§+!%§ > 0)
         {
            return false;
         }
         var _loc4_:Number = param1 - this.§-"2§;
         var _loc5_:Number = param2 - this.§@K§;
         var _loc6_:Number;
         if((_loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) * this.§[D§ > this.§6!o§)
         {
            if(param3)
            {
               return false;
            }
            _loc6_ = this.§6!o§ / this.§[D§;
         }
         var _loc7_:Number = (_loc7_ = Math.atan2(-(param2 - this.§@K§),param1 - this.§-"2§)) * (180 / Math.PI);
         if(!this.mDragging && this.§+!%§ < 0)
         {
            _loc6_ = 0.8;
            _loc7_ = -160;
         }
         if(this.§>!k§)
         {
            _loc6_ = this.§3e§(_loc6_);
         }
         return this.§!!1§(_loc7_,_loc6_);
      }
      
      protected function §3e§(param1:Number) : Number
      {
         var _loc6_:Number = NaN;
         var _loc5_:Number = this.§6!o§ / 2;
         if(param1 > _loc5_)
         {
            if(this.§`!=§ > -90 - 12 + 5 && this.§`!=§ < -90 + 12 + 5)
            {
               return _loc5_;
            }
            if(this.§`!=§ > -90 - 12 - 4 + 5 && this.§`!=§ < -90 + 12 + 4 + 5)
            {
               return Number(_loc5_ + (this.§6!o§ - _loc5_) * (Math.abs(this.§`!=§ - -90 - 5) - 12) / 4);
            }
         }
         return param1;
      }
      
      protected function §!!1§(param1:Number, param2:Number) : Boolean
      {
         this.§`!=§ = param1;
         this.§2!j§ = param2;
         if(this.§2!j§ <= this.§6!o§ * 0.45)
         {
            this.§6J§ = true;
         }
         else if(this.§6J§ && this.§2!j§ >= this.§6!o§ * 0.8)
         {
            this.§67§();
            this.§6J§ = false;
         }
         this.§-&§ = true;
         return true;
      }
      
      protected function §67§() : void
      {
         §3!5§.§<!9§("SlingshotStreched");
      }
      
      protected function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§@S§ + param1 * Math.cos(this.§5h§ + Math.PI / 2),this.§#B§ + param1 * Math.sin(this.§5h§ + Math.PI / 2),this.§5h§);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc5_:Number = param1 - this.§@S§;
         this.§@S§ = param1;
         var _loc6_:Number = param2 - this.§#B§;
         this.§#B§ = param2;
         this.§5h§ = param3;
         this.§@K§ += _loc6_;
         this.§-"2§ += _loc5_;
         if(param4)
         {
            this.§&""§(0);
         }
         this.§-&§ = true;
      }
      
      protected function §>!4§() : Number
      {
         return this.§@e§ / this.§6!o§;
      }
      
      public function §]!F§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§-! § = this.§-!7§[this.§continue§];
         var _loc3_:Number = this.§>!4§();
         if(_loc2_)
         {
            _loc1_ = _loc2_.§?!w§;
         }
         return _loc1_ * _loc3_;
      }
      
      public function §&§() : Point
      {
         var _loc1_:§-! § = null;
         if(this.§-!7§.length > this.§continue§)
         {
            _loc1_ = this.§-!7§[this.§continue§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §6!T§() : Point
      {
         return new Point(this.§-"2§,this.§@K§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§-! § = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.§1!4§(param1);
         if(this.§-&§)
         {
            this.§&""§(param1);
         }
         this.§0!z§ -= param1;
         if(this.§0!z§ < 0)
         {
            this.§0!z§ = 0;
         }
         if(this.mSlingShotState != §&V§)
         {
            this.§"!@§(param1,param2);
            _loc3_ = null;
            if(this.§-!7§.length > 0)
            {
               _loc3_ = this.§-!7§[this.§continue§];
            }
            if(_loc3_)
            {
               _loc3_.§[p§(param1);
            }
            if(!_loc3_)
            {
               this.§,!e§(§&V§);
            }
            else if(this.mSlingShotState == §&!U§)
            {
               if(this.§0!z§ <= 0)
               {
                  this.§,!e§(§#4§);
                  _loc3_.§=!%§();
               }
            }
            else if(this.mSlingShotState == §#4§)
            {
               if(_loc3_.§4^§)
               {
                  this.§,!e§(§^!^§);
               }
            }
            else if(this.mSlingShotState == §^!^§)
            {
               _loc4_ = this.§4"2§ - _loc3_.radius * Math.cos(this.§`!=§ / (180 / Math.PI));
               _loc5_ = this.§9K§ + _loc3_.radius * Math.sin(this.§`!=§ / (180 / Math.PI));
               if(this.mDragging || this.§+!%§ >= 0)
               {
                  _loc3_.setPosition(_loc4_,_loc5_,180 - this.§`!=§);
               }
               else
               {
                  _loc3_.setPosition(_loc4_,_loc5_,this.angle);
               }
               if(this.§,M§)
               {
                  this.§>R§(this.§>!4§(),this.§`!=§);
               }
            }
         }
      }
      
      public function § +§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§-! § = null;
         if(this.§-!7§.length > 0)
         {
            _loc5_ = this.§-!7§[this.§continue§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2,180 - this.§`!=§);
         this.§>R§(param3,param4);
      }
      
      protected function §8G§() : void
      {
         this.§!&§ = false;
         var _loc1_:§-! § = null;
         if(this.§-!7§.length > this.§continue§)
         {
            _loc1_ = this.§-!7§[this.§continue§];
         }
         if(!_loc1_)
         {
            return;
         }
         this.§-!x§ = new Date().time;
         this.§#g§.§8G§(_loc1_,this.§;!@§,this.§`!=§);
         this.§%$§(this.§continue§,_loc1_.§!9§ > 0);
         this.§[4§();
         if(this.§continue§ >= this.§-!7§.length)
         {
            this.§,!e§(§&V§);
         }
         else
         {
            this.§,!e§(§&!U§);
         }
         dispatchEvent(new Event(§7r§));
      }
      
      protected function §1!4§(param1:Number) : void
      {
         if(this.§+!%§ <= 0)
         {
            return;
         }
         this.§-&§ = true;
         this.§+!%§ -= param1;
         if(this.§+!%§ <= 0)
         {
            this.§+!%§ = 0;
         }
         var _loc2_:Number = this.§+!%§ / §6"-§;
         var _loc3_:Number = this.§>!e§ * Math.cos(_loc2_ * Math.PI * 8) * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_;
         this.§!!1§(this.§`!=§,_loc3_);
         if(this.§+!%§ == 0)
         {
            this.§+!%§ = -1;
            this.§ true§();
         }
         if(this.§!&§)
         {
            this.§8G§();
         }
      }
      
      public function §>R§(param1:Number, param2:Number) : void
      {
         this.§;!@§ = param1;
         this.§`!=§ = param2;
         this.§+!%§ = §6"-§;
         this.§>!e§ = this.§2!j§;
         this.mDragging = false;
         this.§,M§ = false;
         this.§!&§ = true;
      }
      
      protected function §[4§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §3!5§.§<!9§("BirdShot" + _loc1_);
      }
      
      public function §"!@§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§continue§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§-!7§.length)
         {
            this.§-!7§[_loc4_].update(param1,this.mSlingShotState == §9F§,param2);
            _loc4_++;
         }
      }
      
      public function §@!u§() : String
      {
         var _loc1_:§-! § = null;
         if(this.§continue§ < this.§-!7§.length)
         {
            _loc1_ = this.§-!7§[this.§continue§];
            return _loc1_.name;
         }
         return null;
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§-! § = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§ true§();
         if(this.§5!9§ >= this.§-!7§.length)
         {
            return false;
         }
         _loc1_ = this.§-!7§[this.§5!9§];
         _loc1_.§&t§(-1,true);
         _loc2_ = this.§#g§.levelItemManager.§4!1§(_loc1_.name).score;
         this.§=!&§(_loc1_,_loc2_);
         ++this.§5!9§;
         return true;
      }
      
      protected function §=!&§(param1:§-! §, param2:int) : void
      {
         this.§#g§.addScore(param2,§9J§.§ !$§,true,param1.x,param1.y - 3,§=f§.§;"2§(param1.name));
      }
      
      public function §`"&§() : int
      {
         var _loc2_:§-! § = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§-!7§)
         {
            _loc1_ += this.§#g§.levelItemManager.§4!1§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §8!X§() : int
      {
         return this.§^J§;
      }
      
      protected function § =§() : void
      {
         var _loc4_:int = 0;
         var _loc1_:int = 1000;
         var _loc2_:Number = Math.cos(this.§5h§ + Math.PI / 2) * this.§+"&§;
         var _loc3_:Number = Math.sin(this.§5h§ + Math.PI / 2) * this.§+"&§;
         while((_loc4_ = this.§#g§.objects.§#!r§(this.§-"2§ + _loc2_,this.§@K§ + _loc3_)) == -1)
         {
            this.applyGravity(0.1);
            if(_loc1_-- <= 0)
            {
               break;
            }
         }
         this.§5R§ = -1;
      }
      
      public function §7Z§(param1:Number, param2:Number) : void
      {
         this.§2!&§.x = -param1;
         this.§2!&§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §^!^§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function get canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §^!^§ && this.§>!4§() >= §@§ && this.§+!%§ < 0;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§,!e§(§^!^§);
         var _loc1_:§-! § = this.§-!7§[this.§continue§];
         _loc1_.§&t§(§;#§.§-a§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§-! § = this.§-!7§[this.§continue§];
         _loc1_.§&t§(§;#§.§43§);
      }
      
      public function shoot() : void
      {
         this.§,M§ = true;
      }
      
      protected function §%$§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§-! § = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§-!7§[param1])
         {
            _loc3_ = this.§-!7§[param1];
            this.§0"'§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§5§(this.§-!7§[param1]);
            }
            _loc3_.dispose();
            this.§-!7§[param1] = null;
         }
         this.§-!7§.splice(param1,1);
      }
      
      protected function §5§(param1:§-! §) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §<S§.§;!Q§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §<S§.§;!Q§) + Math.random() * -_loc8_ * 2;
            this.§#g§.particles.§6!=§(§=f§.§,!3§,§0!q§.§[!V§,§=f§.§@m§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§=f§.§6!M§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§#g§.particles.§6!=§(§=f§.§<#§,§0!q§.§[!V§,§=f§.§@m§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:§-! §) : void
      {
         this.§%$§(this.§-!7§.indexOf(param1));
      }
      
      public function §==§() : void
      {
         var _loc2_:§-! § = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§-! § = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§-!7§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§@S§ - this.§-!7§[_loc1_].x) * (this.§@S§ - this.§-!7§[_loc1_].x) + (this.§#B§ - this.§-!7§[_loc1_].y) * (this.§#B§ - this.§-!7§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§@S§ - this.§-!7§[_loc1_ + 1].x) * (this.§@S§ - this.§-!7§[_loc1_ + 1].x) + (this.§#B§ - this.§-!7§[_loc1_ + 1].y) * (this.§#B§ - this.§-!7§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§-!7§[_loc1_];
               this.§-!7§.splice(_loc1_,1);
               this.§-!7§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§0"'§.numChildren > 0)
         {
            this.§0"'§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§-!7§.length)
         {
            _loc2_ = this.§-!7§[_loc1_];
            this.§0"'§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §-! §
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§-!7§.length)
         {
            if(this.§-!7§[_loc3_])
            {
               if(this.§-!7§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§-!7§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §2c§(param1:Number, param2:Number) : §>!x§
      {
         if(param1 >= this.§@S§ - this.§6!o§ / 4 && param1 <= this.§@S§ + this.§6!o§ / 4 && param2 >= this.§#B§ - this.§6!o§ / 4 && this.§#B§ <= this.§#B§ + this.§+"&§)
         {
            return this;
         }
         return null;
      }
      
      public function §#"0§(param1:§7@§) : void
      {
         var _loc3_:§-! § = null;
         var _loc4_:§#"%§ = null;
         param1.slingshotX = this.§@S§;
         param1.slingshotY = this.§#B§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§-!7§.length)
         {
            _loc3_ = this.§-!7§[_loc2_];
            (_loc4_ = new §#"%§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.type = _loc3_.name;
            param1.§&&§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §+^§() : void
      {
         while(this.§-!7§.length > 0)
         {
            this.removeObject(this.§-!7§[0]);
         }
      }
      
      public function §%!c§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§-!7§.length)
         {
            if(this.§-!7§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§-!7§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§@S§ > param1.x && this.§@S§ < param2.x && this.§#B§ > param1.y && this.§#B§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §@I§(param1:String, param2:Number, param3:Number, param4:Number) : §-! §
      {
         var _loc5_:§-! § = this.§"C§(param1,param2,param3,param4);
         this.§==§();
         return _loc5_;
      }
      
      public function §;V§() : Number
      {
         return this.§-!7§.length;
      }
   }
}
