package §?b§
{
   import §!!>§.§!8§;
   import §!!>§.§#C§;
   import §'!E§.§-x§;
   import §'k§.§2v§;
   import §'k§.§7x§;
   import §+!"§.§5!<§;
   import §5!@§.Texture;
   import §6J§.§&!;§;
   import §7!0§.§6Z§;
   import §7!0§.§9!0§;
   import §9W§.§3g§;
   import §9W§.§6!0§;
   import §9W§.Sprite;
   import §@D§.§6I§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §4K§
   {
      
      public static const §0@§:int = 0;
      
      public static const §'p§:int = 1;
      
      public static const §-R§:int = 2;
      
      public static const §;5§:int = 3;
      
      public static const §9"§:int = 5;
      
      public static const §91§:int = 3151368;
      
      protected static const §9<§:int = 8;
      
      protected static const §>B§:int = 0;
      
      public static const §9=§:Number = 46.25;
      
      public static const § m§:Number = 52.5;
      
      protected static const §]N§:Number = -0.7;
      
      protected static const §95§:Number = 0;
      
      protected static var §=C§:Texture;
      
      public static const §[&§:Number = 0.4;
       
      
      public var §4!%§:§7!,§;
      
      public var §<!B§:Number;
      
      public var §,k§:Number;
      
      public var §7A§:Number;
      
      protected var §,1§:Number;
      
      protected var §7B§:Number;
      
      protected var §=R§:Number;
      
      protected var §@!4§:Number;
      
      public var §`!4§:Number;
      
      public var §9E§:Boolean = false;
      
      protected var § s§:Number;
      
      public var §,!&§:Vector.<§+$§>;
      
      public var §<!0§:int;
      
      public var § w§:int;
      
      public var §with§:Number;
      
      public var §<S§:Sprite;
      
      public var §8!5§:int = 0;
      
      public var §#%§:Number = 0;
      
      public var §!!2§:Array;
      
      public var §1b§:Array;
      
      public var mSlingShotState:int;
      
      public var §,7§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §#j§:Boolean = false;
      
      public var §`!7§:Number;
      
      protected var §[0§:Sprite;
      
      protected var §`P§:§3g§;
      
      protected var §+>§:§3g§;
      
      protected var §%8§:Sprite;
      
      protected var §^H§:Sprite;
      
      protected var §7!?§:Sprite;
      
      protected var §;q§:§6!0§;
      
      protected var §&q§:§6!0§;
      
      private var §?!4§:Number = 0;
      
      private var §8n§:int = 0;
      
      protected var §<B§:Number = -0.7;
      
      protected var §<5§:Number = 0;
      
      public function §4K§(param1:§7!,§, param2:§&!;§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§-x§ = null;
         this.§,!&§ = new Vector.<§+$§>();
         super();
         this.§4!%§ = param1;
         this.§[0§ = param3;
         if(param2)
         {
            this.setPosition(param2.§+;§,param2.§0_§);
            this.§>!1§();
            _loc4_ = 0;
            while(_loc4_ < param2.§11§)
            {
               _loc5_ = param2.§@'§(_loc4_);
               this.§85§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§8n§ = this.§="§();
            this.§<!0§ = 0;
            if(this.§,!&§.length <= 0)
            {
               §5!<§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§<!B§ + " " + this.§,k§);
               this.§#!4§(§;5§);
            }
            else
            {
               this.§#!4§(§0@§);
            }
         }
         else
         {
            §5!<§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§#!4§(§;5§);
         }
         this.§`!7§ = 0;
         this.§33§();
         this.update(0,true);
         this.§'!$§();
         this.§9p§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§[0§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§?!4§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§<!0§ < this.§,!&§.length;
      }
      
      public function dispose() : void
      {
         while(this.§,!&§.length > 0)
         {
            this.§2A§(0);
         }
         this.§,!&§ = null;
         if(this.§[0§)
         {
            this.§[0§.dispose();
            this.§[0§ = null;
         }
         this.§<S§ = null;
         this.§!!2§ = null;
         this.§1b§ = null;
      }
      
      public function §1F§(param1:String, param2:Number, param3:Number, param4:int = -1) : §+$§
      {
         var _loc5_:§+$§;
         (_loc5_ = this.§85§(param1,param2,param3,param4)).§6p§();
         return _loc5_;
      }
      
      protected function §85§(param1:String, param2:Number, param3:Number, param4:int = -1) : §+$§
      {
         var _loc5_:§+$§ = new §+$§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§,!&§.push(_loc5_);
         }
         else
         {
            this.§,!&§.splice(param4,0,_loc5_);
         }
         this.§<S§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §#!4§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §0@§)
         {
            this.§?P§();
            this.§with§ = 1000;
         }
         else if(this.mSlingShotState == §'p§)
         {
            this.§?P§();
            this.§with§ = 0;
         }
         else if(this.mSlingShotState == §-R§)
         {
            this.§with§ = 10000;
            this.§#j§ = false;
            this.§?P§();
         }
         else if(this.mSlingShotState == §;5§)
         {
            this.§?P§();
            this.§with§ = 2000;
         }
         else if(this.mSlingShotState == §9"§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§#j§ = false;
               this.§?P§();
               this.§,!&§[this.§<!0§].setPosition(this.§=R§ - this.§,!&§[this.§<!0§].radius * Math.cos(this.§#%§ / (180 / Math.PI)),this.§@!4§ + this.§,!&§[this.§<!0§].radius * Math.sin(this.§#%§ / (180 / Math.PI)));
            }
            else
            {
               this.§?P§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §;'§() : §7!,§
      {
         return this.§4!%§;
      }
      
      public function §-!9§() : Boolean
      {
         return this.mSlingShotState == §;5§ && this.§with§ <= 0;
      }
      
      private function §>!1§() : void
      {
         var _loc1_:§7x§ = this.§1k§();
         var _loc2_:§2v§ = _loc1_.getFrame(0);
         var _loc3_:§2v§ = _loc1_.getFrame(1);
         this.§;q§ = new §6!0§(_loc2_.texture);
         this.§;q§.scaleX = _loc2_.scale;
         this.§;q§.scaleY = _loc2_.scale;
         this.§&q§ = new §6!0§(_loc3_.texture);
         this.§&q§.scaleX = _loc3_.scale;
         this.§&q§.scaleY = _loc3_.scale;
         this.§&!"§();
         this.§0Y§();
         this.§<S§ = new Sprite();
         this.§[0§.addChild(this.§;q§);
         this.§[0§.addChild(this.§%8§);
         this.§[0§.addChild(this.§<S§);
         this.§[0§.addChild(this.§7!?§);
         this.§[0§.addChild(this.§^H§);
         this.§[0§.addChild(this.§&q§);
         this.§7A§ = this.§,k§ + 8.5;
      }
      
      protected function §1k§() : §7x§
      {
         return this.§4!%§.§!`§.§`l§("SLINGSHOT");
      }
      
      public function §&!"§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§,1§ = this.§<!B§;
         this.§7B§ = this.§,k§;
         this.§ s§ = §&z§.§4!0§;
         _loc1_ = null;
      }
      
      protected function §0Y§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§=C§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §=C§ = this.§4!%§.textureManager.§3B§(_loc2_);
         }
         this.§7!?§ = new Sprite();
         var _loc1_:§6!0§ = new §6!0§(§=C§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§7!?§.addChild(_loc1_);
         this.§%8§ = new Sprite();
         this.§`P§ = new §3g§(2,2,§91§);
         this.§%8§.addChild(this.§`P§);
         this.§^H§ = new Sprite();
         this.§+>§ = new §3g§(2,2,§91§);
         this.§^H§.addChild(this.§+>§);
      }
      
      public function §9p§(param1:Number) : void
      {
         var _loc2_:Number = this.§@!4§ / §7!,§.§ '§;
         var _loc3_:Number = this.§=R§ / §7!,§.§ '§;
         var _loc4_:Number = 3.5 + 8 * ((this.§ s§ - this.§`!4§) / this.§ s§);
         this.§7!?§.x = _loc3_;
         this.§7!?§.y = _loc2_;
         this.§7!?§.rotation = -this.§#%§ / (180 / Math.PI);
         this.§;q§.x = this.§<!B§ / §7!,§.§ '§ - 3;
         this.§;q§.y = this.§,k§ / §7!,§.§ '§ - 30;
         this.§&q§.x = this.§<!B§ / §7!,§.§ '§ - 30;
         this.§&q§.y = this.§,k§ / §7!,§.§ '§ - 30;
         this.§^H§.x = this.§<!B§ / §7!,§.§ '§ - 17;
         this.§^H§.y = this.§,k§ / §7!,§.§ '§ + 5;
         this.§^H§.rotation = Math.atan2(_loc2_ - this.§^H§.y,_loc3_ - this.§^H§.x);
         this.§%8§.x = this.§<!B§ / §7!,§.§ '§ + 22;
         this.§%8§.y = this.§,k§ / §7!,§.§ '§;
         this.§%8§.rotation = Math.atan2(_loc2_ - this.§%8§.y,_loc3_ - this.§%8§.x);
         this.§+>§.width = Math.sqrt(Math.pow(_loc3_ - this.§^H§.x,2) + Math.pow(_loc2_ - this.§^H§.y,2));
         this.§`P§.width = Math.sqrt(Math.pow(_loc3_ - this.§%8§.x,2) + Math.pow(_loc2_ - this.§%8§.y,2));
         this.§+>§.height = this.§`P§.height = _loc4_ * 2;
         this.§+>§.y = -this.§+>§.height / 2;
         this.§`P§.y = -this.§`P§.height / 2;
         this.§,7§ = false;
      }
      
      public function §7!;§() : void
      {
         while(this.§,!&§.length > 0)
         {
            this.§2A§(0,true);
         }
         this.§!7§();
         this.§85§("BIRD_SARDINE",this.§<!B§,this.§,k§);
         this.§#!4§(§-R§);
      }
      
      protected function §!7§() : void
      {
         §6I§.§ ;§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§#!4§(§9"§);
      }
      
      public function §?P§() : void
      {
         this.setNewCoordinatesForRubber(this.§,1§,this.§7B§ + this.§ s§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§=R§ == param1 && this.§@!4§ == param2)
         {
            return true;
         }
         this.§`!4§ = Math.sqrt((param2 - this.§7B§) * (param2 - this.§7B§) + (param1 - this.§,1§) * (param1 - this.§,1§));
         if(this.§`!4§ > this.§ s§)
         {
            if(param3)
            {
               this.§`!4§ = Math.sqrt((this.§@!4§ - this.§7B§) * (this.§@!4§ - this.§7B§) + (this.§=R§ - this.§,1§) * (this.§=R§ - this.§,1§));
               return false;
            }
            param1 = this.§,1§ + this.§ s§ * (param1 - this.§,1§) / this.§`!4§;
            param2 = this.§7B§ + this.§ s§ * (param2 - this.§7B§) / this.§`!4§;
            this.§`!4§ = this.§ s§;
         }
         this.§=R§ = param1;
         this.§@!4§ = param2;
         this.§#%§ = Math.atan2(-(this.§@!4§ - this.§7B§),this.§=R§ - this.§,1§);
         this.§#%§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§=R§ = param1 + this.§<B§;
            this.§@!4§ = param2 + this.§<5§;
            this.§#%§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§ s§ / 2;
         if(this.§`!4§ > _loc7_ && this.§#%§ > -90 - _loc4_ + _loc5_ && this.§#%§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§,1§ + _loc7_ * (param1 - this.§,1§) / this.§`!4§;
            param2 = this.§7B§ + _loc7_ * (param2 - this.§7B§) / this.§`!4§;
            this.§`!4§ = _loc7_;
            this.§=R§ = param1;
            this.§@!4§ = param2;
         }
         else if(this.§`!4§ > _loc7_ && this.§#%§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§#%§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§ s§ - _loc7_) * (Math.abs(this.§#%§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§,1§ + _loc8_ * (param1 - this.§,1§) / this.§`!4§;
            param2 = this.§7B§ + _loc8_ * (param2 - this.§7B§) / this.§`!4§;
            this.§`!4§ = _loc8_;
            this.§=R§ = param1;
            this.§@!4§ = param2;
         }
         if(this.§`!4§ <= this.§ s§ * 0.45)
         {
            this.§9E§ = true;
         }
         else if(this.§9E§ && this.§`!4§ >= this.§ s§ * 0.8)
         {
            this.§-#§();
            this.§9E§ = false;
         }
         this.§,7§ = true;
         return true;
      }
      
      protected function §-#§() : void
      {
         §6I§.§ ;§("SlingshotStreched");
      }
      
      public function §@t§(param1:Number) : void
      {
         this.setPosition(this.§<!B§,this.§,k§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§<!B§;
         this.§<!B§ = param1;
         var _loc5_:Number = param2 - this.§,k§;
         this.§,k§ = param2;
         this.§7A§ += _loc5_;
         this.§7B§ += _loc5_;
         this.§@!4§ += _loc5_;
         this.§,1§ += _loc4_;
         this.§=R§ += _loc4_;
         if(param3)
         {
            this.§9p§(0);
         }
         this.§,7§ = true;
      }
      
      public function §-!G§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§+$§ = null;
         _loc2_ = this.§,!&§[this.§<!0§];
         var _loc3_:Number = this.§`!4§ / this.§ s§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§4K§.§ m§) : Number(§4K§.§9=§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §`j§() : Point
      {
         var _loc1_:§+$§ = null;
         if(this.§,!&§.length > this.§<!0§)
         {
            _loc1_ = this.§,!&§[this.§<!0§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §]U§() : Point
      {
         return new Point(this.§,1§,this.§7B§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§+$§ = null;
         this.§1M§(param1);
         if(this.§,7§)
         {
            this.§9p§(param1);
         }
         this.§with§ -= param1;
         if(this.§with§ < 0)
         {
            this.§with§ = 0;
         }
         if(this.mSlingShotState != §;5§)
         {
            this.§>C§(param1,param2);
            _loc3_ = null;
            if(this.§,!&§.length > 0)
            {
               _loc3_ = this.§,!&§[this.§<!0§];
            }
            if(_loc3_)
            {
               _loc3_.§ H§(param1);
            }
            if(!_loc3_)
            {
               this.§#!4§(§;5§);
            }
            else if(this.mSlingShotState == §0@§)
            {
               if(this.§with§ <= 0)
               {
                  this.§#!4§(§'p§);
                  _loc3_.§+`§();
               }
            }
            else if(this.mSlingShotState == §'p§)
            {
               if(_loc3_.§2^§)
               {
                  this.§#!4§(§-R§);
               }
            }
            else if(this.mSlingShotState == §-R§)
            {
               _loc3_.setPosition(this.§=R§ - _loc3_.radius * Math.cos(this.§#%§ / (180 / Math.PI)),this.§@!4§ + _loc3_.radius * Math.sin(this.§#%§ / (180 / Math.PI)));
               if(this.§#j§)
               {
                  this.§#!D§(this.§`!4§ / this.§ s§,this.§#%§);
               }
            }
         }
      }
      
      public function §'P§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§+$§ = null;
         if(this.§,!&§.length > 0)
         {
            _loc5_ = this.§,!&§[this.§<!0§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§#!D§(param3,param4);
      }
      
      protected function §#!D§(param1:Number, param2:Number) : void
      {
         var _loc3_:§+$§ = null;
         this.§<B§ = §]N§;
         this.§<5§ = §95§;
         if(this.§,!&§.length > 0)
         {
            _loc3_ = this.§,!&§[this.§<!0§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§#j§ = false;
         this.§?!4§ = new Date().time;
         this.§4!%§.§6U§(_loc3_,param1,param2);
         this.§2A§(this.§<!0§,_loc3_.§#!9§ > 0);
         this.§?§();
         if(this.§<!0§ >= this.§,!&§.length)
         {
            this.§#!4§(§;5§);
         }
         else
         {
            this.§#!4§(§0@§);
         }
      }
      
      protected function §?§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §6I§.§ ;§("BirdShot" + _loc1_);
      }
      
      public function §>C§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§<!0§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§,!&§.length)
         {
            if(this.mSlingShotState == §9"§)
            {
               this.§,!&§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§,!&§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§+$§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§?P§();
         if(this.§ w§ >= this.§,!&§.length)
         {
            return false;
         }
         _loc1_ = this.§,!&§[this.§ w§];
         _loc2_ = §9!0§.§&!<§(_loc1_.name).score;
         this.§4!%§.addScore(_loc2_,§3$§.§;!D§,true,_loc1_.x,_loc1_.y - 3,§!8§.§>n§(_loc1_.name));
         _loc1_.§1j§(-1,true);
         ++this.§ w§;
         return true;
      }
      
      public function §="§() : int
      {
         var _loc2_:§+$§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§,!&§)
         {
            _loc1_ += §9!0§.§&!<§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §,!G§() : int
      {
         return this.§8n§;
      }
      
      public function §1M§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§`!7§ >= 0)
         {
            this.§`!7§ -= param1;
            if(this.§`!7§ <= 0)
            {
               _loc2_ = this.§4!%§.objects.§&!7§(this.§,1§,this.§7A§);
               if(_loc2_ < 0)
               {
                  this.§@t§(0.1);
                  this.§`!7§ = 0;
               }
               else if(!this.§4!%§.objects.§"0§(_loc2_).§`!F§)
               {
                  this.§`!7§ = -1;
               }
               else if(this.§4!%§.objects.§"0§(_loc2_).§%f§())
               {
                  this.§`!7§ = 2000;
               }
               else
               {
                  this.§`!7§ = 500;
               }
            }
         }
      }
      
      public function §'!$§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§4!%§.objects.§&!7§(this.§,1§,this.§7A§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§@t§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§`!7§ = -1;
      }
      
      public function §-b§(param1:Number, param2:Number) : void
      {
         this.§[0§.x = -param1;
         this.§[0§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §-R§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §-R§ && this.§`!4§ > this.§ s§ * §[&§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§#!4§(§-R§);
         var _loc1_:§+$§ = this.§,!&§[this.§<!0§];
         _loc1_.§1j§(§6Z§.§[d§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§+$§ = this.§,!&§[this.§<!0§];
         _loc1_.§1j§(§6Z§.§ h§);
      }
      
      public function shoot() : void
      {
         this.§#j§ = true;
      }
      
      protected function §2A§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§+$§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§,!&§[param1])
         {
            _loc3_ = this.§,!&§[param1];
            this.§<S§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§`!"§(this.§,!&§[param1]);
            }
            _loc3_.dispose();
            this.§,!&§[param1] = null;
         }
         this.§,!&§.splice(param1,1);
      }
      
      public function §`!"§(param1:§+$§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §7!,§.§ '§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §7!,§.§ '§) + Math.random() * -_loc8_ * 2;
            this.§4!%§.particles.§'!;§(§!8§.dynamic,§#C§.§#!'§,§!8§.§3!'§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§!8§.§3^§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§4!%§.particles.§'!;§(§!8§.§7_§,§#C§.§#!'§,§!8§.§3!'§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §^2§(param1:§+$§) : void
      {
         this.§2A§(this.§,!&§.indexOf(param1));
      }
      
      public function §33§() : void
      {
         var _loc2_:§+$§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§+$§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,!&§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§<!B§ - this.§,!&§[_loc1_].x) * (this.§<!B§ - this.§,!&§[_loc1_].x) + (this.§,k§ - this.§,!&§[_loc1_].y) * (this.§,k§ - this.§,!&§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§<!B§ - this.§,!&§[_loc1_ + 1].x) * (this.§<!B§ - this.§,!&§[_loc1_ + 1].x) + (this.§,k§ - this.§,!&§[_loc1_ + 1].y) * (this.§,k§ - this.§,!&§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§,!&§[_loc1_];
               this.§,!&§.splice(_loc1_,1);
               this.§,!&§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§<S§.numChildren > 0)
         {
            this.§<S§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§,!&§.length)
         {
            _loc2_ = this.§,!&§[_loc1_];
            this.§<S§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §"c§(param1:Number, param2:Number) : §+$§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§,!&§.length)
         {
            if(this.§,!&§[_loc3_])
            {
               if(this.§,!&§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§,!&§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §?X§(param1:Number, param2:Number) : §4K§
      {
         if(param1 >= this.§<!B§ - this.§ s§ / 4 && param1 <= this.§<!B§ + this.§ s§ / 4 && param2 >= this.§,k§ - this.§ s§ / 4 && this.§,k§ <= this.§7A§)
         {
            return this;
         }
         return null;
      }
      
      public function §]Z§(param1:§&!;§) : void
      {
         var _loc3_:§+$§ = null;
         var _loc4_:§-x§ = null;
         param1.§+;§ = this.§<!B§;
         param1.§0_§ = this.§,k§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§,!&§.length)
         {
            _loc3_ = this.§,!&§[_loc2_];
            (_loc4_ = new §-x§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§!B§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §22§() : void
      {
         while(this.§,!&§.length > 0)
         {
            this.§^2§(this.§,!&§[0]);
         }
      }
      
      public function §]V§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§,!&§.length)
         {
            if(this.§,!&§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§,!&§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§<!B§ > param1.x && this.§<!B§ < param2.x && this.§,k§ > param1.y && this.§,k§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §8!B§() : Array
      {
         return [this.§&q§,this.§;q§];
      }
      
      public function §<N§(param1:String, param2:Number, param3:Number) : §+$§
      {
         var _loc4_:§+$§ = this.§85§(param1,param2,param3);
         this.§33§();
         return _loc4_;
      }
      
      public function §0!F§() : Number
      {
         return this.§,!&§.length;
      }
   }
}
