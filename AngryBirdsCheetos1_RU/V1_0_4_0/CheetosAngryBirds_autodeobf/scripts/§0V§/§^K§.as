package §0V§
{
   import § N§.§]M§;
   import §!$§.§!!O§;
   import §&C§.§7!1§;
   import §&C§.§[b§;
   import §+![§.Texture;
   import §3§.§2?§;
   import §3§.§4!!§;
   import §3§.Sprite;
   import §39§.§=R§;
   import §=?§.§'n§;
   import §>X§.§"^§;
   import §>X§.§7!%§;
   import §`n§.§-!D§;
   import §`n§.§6o§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §^K§
   {
      
      public static const §@T§:int = 0;
      
      public static const §&q§:int = 1;
      
      public static const §7M§:int = 2;
      
      public static const § y§:int = 3;
      
      public static const §1F§:int = 5;
      
      public static const §9!7§:int = 3151368;
      
      protected static const §-Y§:int = 8;
      
      protected static const §='§:int = 0;
      
      public static const §+!O§:Number = 46.25;
      
      public static const §7c§:Number = 52.5;
      
      protected static const §=6§:Number = -0.7;
      
      protected static const §[y§:Number = 0;
      
      protected static var §@!4§:Texture;
      
      public static const §]K§:Number = 0.4;
       
      
      public var §!q§:§`!O§;
      
      public var § W§:Number;
      
      public var §9!9§:Number;
      
      public var §[!P§:Number;
      
      protected var §+K§:Number;
      
      protected var §`Y§:Number;
      
      protected var §>!5§:Number;
      
      protected var §'_§:Number;
      
      public var §-]§:Number;
      
      public var §05§:Boolean = false;
      
      protected var §"!+§:Number;
      
      public var §0#§:Vector.<§6!G§>;
      
      public var §?!#§:int;
      
      public var §8+§:int;
      
      public var §?y§:Number;
      
      public var §9%§:Sprite;
      
      public var §<r§:int = 0;
      
      public var §+w§:Number = 0;
      
      public var §;`§:Array;
      
      public var §@!I§:Array;
      
      public var mSlingShotState:int;
      
      public var §[!"§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §[H§:Boolean = false;
      
      public var §"8§:Number;
      
      protected var §;!5§:Sprite;
      
      protected var §`!R§:§2?§;
      
      protected var §1!Z§:§2?§;
      
      protected var §%o§:Sprite;
      
      protected var §8P§:Sprite;
      
      protected var §9!H§:Sprite;
      
      protected var §5Q§:§4!!§;
      
      protected var §9Z§:§4!!§;
      
      private var §&!N§:Number = 0;
      
      private var §`;§:int = 0;
      
      protected var §<H§:Number = -0.7;
      
      protected var §=t§:Number = 0;
      
      public function §^K§(param1:§`!O§, param2:§=R§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§'n§ = null;
         this.§0#§ = new Vector.<§6!G§>();
         super();
         this.§!q§ = param1;
         this.§;!5§ = param3;
         if(param2)
         {
            this.setPosition(param2.§37§,param2.§`!§);
            this.§"!K§();
            _loc4_ = 0;
            while(_loc4_ < param2.§>!>§)
            {
               _loc5_ = param2.§0!N§(_loc4_);
               this.addSlingshotObject(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§`;§ = this.§^!&§();
            this.§?!#§ = 0;
            if(this.§0#§.length <= 0)
            {
               §]M§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§ W§ + " " + this.§9!9§);
               this.setSlingShotState(§ y§);
            }
            else
            {
               this.setSlingShotState(§@T§);
            }
         }
         else
         {
            §]M§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.setSlingShotState(§ y§);
         }
         this.§"8§ = 0;
         this.§#g§();
         this.update(0,true);
         this.§0!D§();
         this.§[N§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§;!5§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§&!N§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§?!#§ < this.§0#§.length;
      }
      
      public function dispose() : void
      {
         while(this.§0#§.length > 0)
         {
            this.§#!%§(0);
         }
         this.§0#§ = null;
         if(this.§;!5§)
         {
            this.§;!5§.dispose();
            this.§;!5§ = null;
         }
         this.§9%§ = null;
         this.§;`§ = null;
         this.§@!I§ = null;
      }
      
      public function §`!A§(param1:String, param2:Number, param3:Number, param4:int = -1) : §6!G§
      {
         var _loc5_:§6!G§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,param4)).§'!8§();
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §6!G§
      {
         var _loc5_:§6!G§ = new §6!G§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§0#§.push(_loc5_);
         }
         else
         {
            this.§0#§.splice(param4,0,_loc5_);
         }
         this.§9%§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function setSlingShotState(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §@T§)
         {
            this.§<!J§();
            this.§?y§ = 1000;
         }
         else if(this.mSlingShotState == §&q§)
         {
            this.§<!J§();
            this.§?y§ = 0;
         }
         else if(this.mSlingShotState == §7M§)
         {
            this.§?y§ = 10000;
            this.§[H§ = false;
            this.§<!J§();
         }
         else if(this.mSlingShotState == § y§)
         {
            this.§<!J§();
            this.§?y§ = 2000;
         }
         else if(this.mSlingShotState == §1F§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§[H§ = false;
               this.§<!J§();
               this.§0#§[this.§?!#§].setPosition(this.§>!5§ - this.§0#§[this.§?!#§].radius * Math.cos(this.§+w§ / (180 / Math.PI)),this.§'_§ + this.§0#§[this.§?!#§].radius * Math.sin(this.§+w§ / (180 / Math.PI)));
            }
            else
            {
               this.§<!J§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §?!§() : §`!O§
      {
         return this.§!q§;
      }
      
      public function §=!^§() : Boolean
      {
         return this.mSlingShotState == § y§ && this.§?y§ <= 0;
      }
      
      private function §"!K§() : void
      {
         var _loc1_:§-!D§ = this.§`![§();
         var _loc2_:§6o§ = _loc1_.getFrame(0);
         var _loc3_:§6o§ = _loc1_.getFrame(1);
         this.§5Q§ = new §4!!§(_loc2_.texture);
         this.§5Q§.scaleX = _loc2_.scale;
         this.§5Q§.scaleY = _loc2_.scale;
         this.§9Z§ = new §4!!§(_loc3_.texture);
         this.§9Z§.scaleX = _loc3_.scale;
         this.§9Z§.scaleY = _loc3_.scale;
         this.§]!N§();
         this.§#!W§();
         this.§9%§ = new Sprite();
         this.§;!5§.addChild(this.§5Q§);
         this.§;!5§.addChild(this.§%o§);
         this.§;!5§.addChild(this.§9%§);
         this.§;!5§.addChild(this.§9!H§);
         this.§;!5§.addChild(this.§8P§);
         this.§;!5§.addChild(this.§9Z§);
         this.§[!P§ = this.§9!9§ + 8.5;
      }
      
      protected function §`![§() : §-!D§
      {
         return this.§!q§.§2!N§.§7!<§("SLINGSHOT");
      }
      
      public function §]!N§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§+K§ = this.§ W§;
         this.§`Y§ = this.§9!9§;
         this.§"!+§ = §6d§.§`#§;
         _loc1_ = null;
      }
      
      protected function §#!W§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§@!4§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §@!4§ = this.§!q§.§1S§.§^X§(_loc2_);
         }
         this.§9!H§ = new Sprite();
         var _loc1_:§4!!§ = new §4!!§(§@!4§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§9!H§.addChild(_loc1_);
         this.§%o§ = new Sprite();
         this.§`!R§ = new §2?§(2,2,§9!7§);
         this.§%o§.addChild(this.§`!R§);
         this.§8P§ = new Sprite();
         this.§1!Z§ = new §2?§(2,2,§9!7§);
         this.§8P§.addChild(this.§1!Z§);
      }
      
      public function §[N§(param1:Number) : void
      {
         var _loc2_:Number = this.§'_§ / §`!O§.§?!O§;
         var _loc3_:Number = this.§>!5§ / §`!O§.§?!O§;
         var _loc4_:Number = 3.5 + 8 * ((this.§"!+§ - this.§-]§) / this.§"!+§);
         this.§9!H§.x = _loc3_;
         this.§9!H§.y = _loc2_;
         this.§9!H§.rotation = -this.§+w§ / (180 / Math.PI);
         this.§5Q§.x = this.§ W§ / §`!O§.§?!O§ - 3;
         this.§5Q§.y = this.§9!9§ / §`!O§.§?!O§ - 30;
         this.§9Z§.x = this.§ W§ / §`!O§.§?!O§ - 30;
         this.§9Z§.y = this.§9!9§ / §`!O§.§?!O§ - 30;
         this.§8P§.x = this.§ W§ / §`!O§.§?!O§ - 17;
         this.§8P§.y = this.§9!9§ / §`!O§.§?!O§ + 5;
         this.§8P§.rotation = Math.atan2(_loc2_ - this.§8P§.y,_loc3_ - this.§8P§.x);
         this.§%o§.x = this.§ W§ / §`!O§.§?!O§ + 22;
         this.§%o§.y = this.§9!9§ / §`!O§.§?!O§;
         this.§%o§.rotation = Math.atan2(_loc2_ - this.§%o§.y,_loc3_ - this.§%o§.x);
         this.§1!Z§.width = Math.sqrt(Math.pow(_loc3_ - this.§8P§.x,2) + Math.pow(_loc2_ - this.§8P§.y,2));
         this.§`!R§.width = Math.sqrt(Math.pow(_loc3_ - this.§%o§.x,2) + Math.pow(_loc2_ - this.§%o§.y,2));
         this.§1!Z§.height = this.§`!R§.height = _loc4_ * 2;
         this.§1!Z§.y = -this.§1!Z§.height / 2;
         this.§`!R§.y = -this.§`!R§.height / 2;
         this.§[!"§ = false;
      }
      
      public function §^^§() : void
      {
         while(this.§0#§.length > 0)
         {
            this.§#!%§(0,true);
         }
         this.§0'§();
         this.addSlingshotObject("BIRD_SARDINE",this.§ W§,this.§9!9§);
         this.setSlingShotState(§7M§);
      }
      
      protected function §0'§() : void
      {
         §!!O§.§<D§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.setSlingShotState(§1F§);
      }
      
      public function §<!J§() : void
      {
         this.setNewCoordinatesForRubber(this.§+K§,this.§`Y§ + this.§"!+§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§>!5§ == param1 && this.§'_§ == param2)
         {
            return true;
         }
         this.§-]§ = Math.sqrt((param2 - this.§`Y§) * (param2 - this.§`Y§) + (param1 - this.§+K§) * (param1 - this.§+K§));
         if(this.§-]§ > this.§"!+§)
         {
            if(param3)
            {
               this.§-]§ = Math.sqrt((this.§'_§ - this.§`Y§) * (this.§'_§ - this.§`Y§) + (this.§>!5§ - this.§+K§) * (this.§>!5§ - this.§+K§));
               return false;
            }
            param1 = this.§+K§ + this.§"!+§ * (param1 - this.§+K§) / this.§-]§;
            param2 = this.§`Y§ + this.§"!+§ * (param2 - this.§`Y§) / this.§-]§;
            this.§-]§ = this.§"!+§;
         }
         this.§>!5§ = param1;
         this.§'_§ = param2;
         this.§+w§ = Math.atan2(-(this.§'_§ - this.§`Y§),this.§>!5§ - this.§+K§);
         this.§+w§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§>!5§ = param1 + this.§<H§;
            this.§'_§ = param2 + this.§=t§;
            this.§+w§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§"!+§ / 2;
         if(this.§-]§ > _loc7_ && this.§+w§ > -90 - _loc4_ + _loc5_ && this.§+w§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§+K§ + _loc7_ * (param1 - this.§+K§) / this.§-]§;
            param2 = this.§`Y§ + _loc7_ * (param2 - this.§`Y§) / this.§-]§;
            this.§-]§ = _loc7_;
            this.§>!5§ = param1;
            this.§'_§ = param2;
         }
         else if(this.§-]§ > _loc7_ && this.§+w§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§+w§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§"!+§ - _loc7_) * (Math.abs(this.§+w§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§+K§ + _loc8_ * (param1 - this.§+K§) / this.§-]§;
            param2 = this.§`Y§ + _loc8_ * (param2 - this.§`Y§) / this.§-]§;
            this.§-]§ = _loc8_;
            this.§>!5§ = param1;
            this.§'_§ = param2;
         }
         if(this.§-]§ <= this.§"!+§ * 0.45)
         {
            this.§05§ = true;
         }
         else if(this.§05§ && this.§-]§ >= this.§"!+§ * 0.8)
         {
            this.§ B§();
            this.§05§ = false;
         }
         this.§[!"§ = true;
         return true;
      }
      
      protected function § B§() : void
      {
         §!!O§.§<D§("SlingshotStreched");
      }
      
      public function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§ W§,this.§9!9§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§ W§;
         this.§ W§ = param1;
         var _loc5_:Number = param2 - this.§9!9§;
         this.§9!9§ = param2;
         this.§[!P§ += _loc5_;
         this.§`Y§ += _loc5_;
         this.§'_§ += _loc5_;
         this.§+K§ += _loc4_;
         this.§>!5§ += _loc4_;
         if(param3)
         {
            this.§[N§(0);
         }
         this.§[!"§ = true;
      }
      
      public function §5N§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§6!G§ = null;
         _loc2_ = this.§0#§[this.§?!#§];
         var _loc3_:Number = this.§-]§ / this.§"!+§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§^K§.§7c§) : Number(§^K§.§+!O§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §;+§() : Point
      {
         var _loc1_:§6!G§ = null;
         if(this.§0#§.length > this.§?!#§)
         {
            _loc1_ = this.§0#§[this.§?!#§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §][§() : Point
      {
         return new Point(this.§+K§,this.§`Y§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§6!G§ = null;
         this.updateGroundControl(param1);
         if(this.§[!"§)
         {
            this.§[N§(param1);
         }
         this.§?y§ -= param1;
         if(this.§?y§ < 0)
         {
            this.§?y§ = 0;
         }
         if(this.mSlingShotState != § y§)
         {
            this.§]!`§(param1,param2);
            _loc3_ = null;
            if(this.§0#§.length > 0)
            {
               _loc3_ = this.§0#§[this.§?!#§];
            }
            if(_loc3_)
            {
               _loc3_.§[!G§(param1);
            }
            if(!_loc3_)
            {
               this.setSlingShotState(§ y§);
            }
            else if(this.mSlingShotState == §@T§)
            {
               if(this.§?y§ <= 0)
               {
                  this.setSlingShotState(§&q§);
                  _loc3_.§?!@§();
               }
            }
            else if(this.mSlingShotState == §&q§)
            {
               if(_loc3_.§%E§)
               {
                  this.setSlingShotState(§7M§);
               }
            }
            else if(this.mSlingShotState == §7M§)
            {
               _loc3_.setPosition(this.§>!5§ - _loc3_.radius * Math.cos(this.§+w§ / (180 / Math.PI)),this.§'_§ + _loc3_.radius * Math.sin(this.§+w§ / (180 / Math.PI)));
               if(this.§[H§)
               {
                  this.§ "§(this.§-]§ / this.§"!+§,this.§+w§);
               }
            }
         }
      }
      
      public function §0&§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§6!G§ = null;
         if(this.§0#§.length > 0)
         {
            _loc5_ = this.§0#§[this.§?!#§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§ "§(param3,param4);
      }
      
      protected function § "§(param1:Number, param2:Number) : void
      {
         var _loc3_:§6!G§ = null;
         this.§<H§ = §=6§;
         this.§=t§ = §[y§;
         if(this.§0#§.length > 0)
         {
            _loc3_ = this.§0#§[this.§?!#§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§[H§ = false;
         this.§&!N§ = new Date().time;
         this.§!q§.§77§(_loc3_,param1,param2);
         this.§#!%§(this.§?!#§,_loc3_.§7v§ > 0);
         this.§;=§();
         if(this.§?!#§ >= this.§0#§.length)
         {
            this.setSlingShotState(§ y§);
         }
         else
         {
            this.setSlingShotState(§@T§);
         }
      }
      
      protected function §;=§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §!!O§.§<D§("BirdShot" + _loc1_);
      }
      
      public function §]!`§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§?!#§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§0#§.length)
         {
            if(this.mSlingShotState == §1F§)
            {
               this.§0#§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§0#§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§6!G§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§<!J§();
         if(this.§8+§ >= this.§0#§.length)
         {
            return false;
         }
         _loc1_ = this.§0#§[this.§8+§];
         _loc2_ = §[b§.§9R§(_loc1_.name).score;
         this.§!q§.addScore(_loc2_,§;9§.§@_§,true,_loc1_.x,_loc1_.y - 3,§7!%§.§4B§(_loc1_.name));
         _loc1_.§[!Z§(-1,true);
         ++this.§8+§;
         return true;
      }
      
      public function §^!&§() : int
      {
         var _loc2_:§6!G§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§0#§)
         {
            _loc1_ += §[b§.§9R§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §^C§() : int
      {
         return this.§`;§;
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§"8§ >= 0)
         {
            this.§"8§ -= param1;
            if(this.§"8§ <= 0)
            {
               _loc2_ = this.§!q§.objects.§!![§(this.§+K§,this.§[!P§);
               if(_loc2_ < 0)
               {
                  this.applyGravity(0.1);
                  this.§"8§ = 0;
               }
               else if(!this.§!q§.objects.§^i§(_loc2_).§"d§)
               {
                  this.§"8§ = -1;
               }
               else if(this.§!q§.objects.§^i§(_loc2_).§9!<§())
               {
                  this.§"8§ = 2000;
               }
               else
               {
                  this.§"8§ = 500;
               }
            }
         }
      }
      
      public function §0!D§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§!q§.objects.§!![§(this.§+K§,this.§[!P§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.applyGravity(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§"8§ = -1;
      }
      
      public function §0F§(param1:Number, param2:Number) : void
      {
         this.§;!5§.x = -param1;
         this.§;!5§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §7M§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §7M§ && this.§-]§ > this.§"!+§ * §]K§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.setSlingShotState(§7M§);
         var _loc1_:§6!G§ = this.§0#§[this.§?!#§];
         _loc1_.§[!Z§(§7!1§.§'!<§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§6!G§ = this.§0#§[this.§?!#§];
         _loc1_.§[!Z§(§7!1§.§8j§);
      }
      
      public function shoot() : void
      {
         this.§[H§ = true;
      }
      
      protected function §#!%§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§6!G§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§0#§[param1])
         {
            _loc3_ = this.§0#§[param1];
            this.§9%§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§!Q§(this.§0#§[param1]);
            }
            _loc3_.dispose();
            this.§0#§[param1] = null;
         }
         this.§0#§.splice(param1,1);
      }
      
      public function §!Q§(param1:§6!G§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §`!O§.§?!O§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §`!O§.§?!O§) + Math.random() * -_loc8_ * 2;
            this.§!q§.particles.addParticle(§7!%§.§7,§,§"^§.§<!L§,§7!%§.§!w§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§7!%§.§8k§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§!q§.particles.addParticle(§7!%§.§'!W§,§"^§.§<!L§,§7!%§.§!w§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §#z§(param1:§6!G§) : void
      {
         this.§#!%§(this.§0#§.indexOf(param1));
      }
      
      public function §#g§() : void
      {
         var _loc2_:§6!G§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§6!G§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§0#§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§ W§ - this.§0#§[_loc1_].x) * (this.§ W§ - this.§0#§[_loc1_].x) + (this.§9!9§ - this.§0#§[_loc1_].y) * (this.§9!9§ - this.§0#§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§ W§ - this.§0#§[_loc1_ + 1].x) * (this.§ W§ - this.§0#§[_loc1_ + 1].x) + (this.§9!9§ - this.§0#§[_loc1_ + 1].y) * (this.§9!9§ - this.§0#§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§0#§[_loc1_];
               this.§0#§.splice(_loc1_,1);
               this.§0#§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§9%§.numChildren > 0)
         {
            this.§9%§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§0#§.length)
         {
            _loc2_ = this.§0#§[_loc1_];
            this.§9%§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §>C§(param1:Number, param2:Number) : §6!G§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§0#§.length)
         {
            if(this.§0#§[_loc3_])
            {
               if(this.§0#§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§0#§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §5R§(param1:Number, param2:Number) : §^K§
      {
         if(param1 >= this.§ W§ - this.§"!+§ / 4 && param1 <= this.§ W§ + this.§"!+§ / 4 && param2 >= this.§9!9§ - this.§"!+§ / 4 && this.§9!9§ <= this.§[!P§)
         {
            return this;
         }
         return null;
      }
      
      public function §[!5§(param1:§=R§) : void
      {
         var _loc3_:§6!G§ = null;
         var _loc4_:§'n§ = null;
         param1.§37§ = this.§ W§;
         param1.§`!§ = this.§9!9§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§0#§.length)
         {
            _loc3_ = this.§0#§[_loc2_];
            (_loc4_ = new §'n§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§package§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §;!#§() : void
      {
         while(this.§0#§.length > 0)
         {
            this.§#z§(this.§0#§[0]);
         }
      }
      
      public function §4k§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§0#§.length)
         {
            if(this.§0#§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§0#§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§ W§ > param1.x && this.§ W§ < param2.x && this.§9!9§ > param1.y && this.§9!9§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §<!,§() : Array
      {
         return [this.§9Z§,this.§5Q§];
      }
      
      public function §>!§(param1:String, param2:Number, param3:Number) : §6!G§
      {
         var _loc4_:§6!G§ = this.addSlingshotObject(param1,param2,param3);
         this.§#g§();
         return _loc4_;
      }
      
      public function §9C§() : Number
      {
         return this.§0#§.length;
      }
   }
}
