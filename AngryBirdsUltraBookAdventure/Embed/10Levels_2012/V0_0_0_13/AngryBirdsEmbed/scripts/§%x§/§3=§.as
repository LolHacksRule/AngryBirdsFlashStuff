package §%x§
{
   import §#k§.§?!3§;
   import §-!0§.§4b§;
   import §-!0§.§9X§;
   import §0!<§.§#y§;
   import §>!C§.§9R§;
   import §>F§.§2S§;
   import §>F§.§5b§;
   import §?!?§.§3!E§;
   import §?^§.§8!?§;
   import §?^§.§?C§;
   import §?^§.Sprite;
   import §`K§.§0r§;
   import §`K§.§3n§;
   import each.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §3=§
   {
      
      public static const §=0§:int = 0;
      
      public static const §]9§:int = 1;
      
      public static const §6t§:int = 2;
      
      public static const § in§:int = 3;
      
      public static const §,z§:int = 5;
      
      public static const §=3§:int = 3151368;
      
      protected static const §95§:int = 8;
      
      protected static const §5!4§:int = 0;
      
      public static const §=!,§:Number = 46.25;
      
      public static const §7[§:Number = 52.5;
      
      protected static const §&!1§:Number = -0.7;
      
      protected static const §?B§:Number = 0;
      
      protected static var §-o§:Texture;
      
      public static const §6@§:Number = 0.4;
       
      
      public var §7C§:§#;§;
      
      public var §5!>§:Number;
      
      public var §#!$§:Number;
      
      public var §!!5§:Number;
      
      protected var §]!7§:Number;
      
      protected var §`-§:Number;
      
      protected var §?!+§:Number;
      
      protected var §&D§:Number;
      
      public var §@N§:Number;
      
      public var §>!5§:Boolean = false;
      
      protected var §#!3§:Number;
      
      public var §"_§:Vector.<§0Y§>;
      
      public var §-!3§:int;
      
      public var §?]§:int;
      
      public var §,L§:Number;
      
      public var §72§:Sprite;
      
      public var §=`§:int = 0;
      
      public var §#p§:Number = 0;
      
      public var §2a§:Array;
      
      public var §<k§:Array;
      
      public var mSlingShotState:int;
      
      public var §'1§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §5!;§:Boolean = false;
      
      public var §7h§:Number;
      
      protected var §0W§:Sprite;
      
      protected var §<N§:§?C§;
      
      protected var §"!9§:§?C§;
      
      protected var §%K§:Sprite;
      
      protected var §>z§:Sprite;
      
      protected var §&H§:Sprite;
      
      protected var §6+§:§8!?§;
      
      protected var §^!%§:§8!?§;
      
      private var §null§:Number = 0;
      
      private var §`J§:int = 0;
      
      protected var §5G§:Number = -0.7;
      
      protected var §1u§:Number = 0;
      
      public function §3=§(param1:§#;§, param2:§9R§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§?!3§ = null;
         this.§"_§ = new Vector.<§0Y§>();
         super();
         this.§7C§ = param1;
         this.§0W§ = param3;
         if(param2)
         {
            this.setPosition(param2.§2^§,param2.§7!H§);
            this.§0L§();
            _loc4_ = 0;
            while(_loc4_ < param2.§5C§)
            {
               _loc5_ = param2.§?j§(_loc4_);
               this.§#!%§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§`J§ = this.§,!%§();
            this.§-!3§ = 0;
            if(this.§"_§.length <= 0)
            {
               §#y§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§5!>§ + " " + this.§#!$§);
               this.§'o§(§ in§);
            }
            else
            {
               this.§'o§(§=0§);
            }
         }
         else
         {
            §#y§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§'o§(§ in§);
         }
         this.§7h§ = 0;
         this.§=!!§();
         this.update(0,true);
         this.§!a§();
         this.§?!$§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§0W§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§null§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§-!3§ < this.§"_§.length;
      }
      
      public function dispose() : void
      {
         while(this.§"_§.length > 0)
         {
            this.§,!1§(0);
         }
         this.§"_§ = null;
         if(this.§0W§)
         {
            this.§0W§.dispose();
            this.§0W§ = null;
         }
         this.§72§ = null;
         this.§2a§ = null;
         this.§<k§ = null;
      }
      
      public function §&!<§(param1:String, param2:Number, param3:Number, param4:int = -1) : §0Y§
      {
         var _loc5_:§0Y§;
         (_loc5_ = this.§#!%§(param1,param2,param3,param4)).§^!,§();
         return _loc5_;
      }
      
      protected function §#!%§(param1:String, param2:Number, param3:Number, param4:int = -1) : §0Y§
      {
         var _loc5_:§0Y§ = new §0Y§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§"_§.push(_loc5_);
         }
         else
         {
            this.§"_§.splice(param4,0,_loc5_);
         }
         this.§72§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §'o§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §=0§)
         {
            this.§'!<§();
            this.§,L§ = 1000;
         }
         else if(this.mSlingShotState == §]9§)
         {
            this.§'!<§();
            this.§,L§ = 0;
         }
         else if(this.mSlingShotState == §6t§)
         {
            this.§,L§ = 10000;
            this.§5!;§ = false;
            this.§'!<§();
         }
         else if(this.mSlingShotState == § in§)
         {
            this.§'!<§();
            this.§,L§ = 2000;
         }
         else if(this.mSlingShotState == §,z§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§5!;§ = false;
               this.§'!<§();
               this.§"_§[this.§-!3§].setPosition(this.§?!+§ - this.§"_§[this.§-!3§].radius * Math.cos(this.§#p§ / (180 / Math.PI)),this.§&D§ + this.§"_§[this.§-!3§].radius * Math.sin(this.§#p§ / (180 / Math.PI)));
            }
            else
            {
               this.§'!<§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §!-§() : §#;§
      {
         return this.§7C§;
      }
      
      public function §2!5§() : Boolean
      {
         return this.mSlingShotState == § in§ && this.§,L§ <= 0;
      }
      
      private function §0L§() : void
      {
         var _loc1_:§4b§ = this.§9!!§();
         var _loc2_:§9X§ = _loc1_.getFrame(0);
         var _loc3_:§9X§ = _loc1_.getFrame(1);
         this.§6+§ = new §8!?§(_loc2_.texture);
         this.§6+§.scaleX = _loc2_.scale;
         this.§6+§.scaleY = _loc2_.scale;
         this.§^!%§ = new §8!?§(_loc3_.texture);
         this.§^!%§.scaleX = _loc3_.scale;
         this.§^!%§.scaleY = _loc3_.scale;
         this.§5! §();
         this.§,H§();
         this.§72§ = new Sprite();
         this.§0W§.addChild(this.§6+§);
         this.§0W§.addChild(this.§%K§);
         this.§0W§.addChild(this.§72§);
         this.§0W§.addChild(this.§&H§);
         this.§0W§.addChild(this.§>z§);
         this.§0W§.addChild(this.§^!%§);
         this.§!!5§ = this.§#!$§ + 8.5;
      }
      
      protected function §9!!§() : §4b§
      {
         return this.§7C§.§+!!§.§,V§("SLINGSHOT");
      }
      
      public function §5! §() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§]!7§ = this.§5!>§;
         this.§`-§ = this.§#!$§;
         this.§#!3§ = §#!;§.§9d§;
         _loc1_ = null;
      }
      
      protected function §,H§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§-o§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §-o§ = this.§7C§.textureManager.§ b§(_loc2_);
         }
         this.§&H§ = new Sprite();
         var _loc1_:§8!?§ = new §8!?§(§-o§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§&H§.addChild(_loc1_);
         this.§%K§ = new Sprite();
         this.§<N§ = new §?C§(2,2,§=3§);
         this.§%K§.addChild(this.§<N§);
         this.§>z§ = new Sprite();
         this.§"!9§ = new §?C§(2,2,§=3§);
         this.§>z§.addChild(this.§"!9§);
      }
      
      public function §?!$§(param1:Number) : void
      {
         var _loc2_:Number = this.§&D§ / §#;§.§`!2§;
         var _loc3_:Number = this.§?!+§ / §#;§.§`!2§;
         var _loc4_:Number = 3.5 + 8 * ((this.§#!3§ - this.§@N§) / this.§#!3§);
         this.§&H§.x = _loc3_;
         this.§&H§.y = _loc2_;
         this.§&H§.rotation = -this.§#p§ / (180 / Math.PI);
         this.§6+§.x = this.§5!>§ / §#;§.§`!2§ - 3;
         this.§6+§.y = this.§#!$§ / §#;§.§`!2§ - 30;
         this.§^!%§.x = this.§5!>§ / §#;§.§`!2§ - 30;
         this.§^!%§.y = this.§#!$§ / §#;§.§`!2§ - 30;
         this.§>z§.x = this.§5!>§ / §#;§.§`!2§ - 17;
         this.§>z§.y = this.§#!$§ / §#;§.§`!2§ + 5;
         this.§>z§.rotation = Math.atan2(_loc2_ - this.§>z§.y,_loc3_ - this.§>z§.x);
         this.§%K§.x = this.§5!>§ / §#;§.§`!2§ + 22;
         this.§%K§.y = this.§#!$§ / §#;§.§`!2§;
         this.§%K§.rotation = Math.atan2(_loc2_ - this.§%K§.y,_loc3_ - this.§%K§.x);
         this.§"!9§.width = Math.sqrt(Math.pow(_loc3_ - this.§>z§.x,2) + Math.pow(_loc2_ - this.§>z§.y,2));
         this.§<N§.width = Math.sqrt(Math.pow(_loc3_ - this.§%K§.x,2) + Math.pow(_loc2_ - this.§%K§.y,2));
         this.§"!9§.height = this.§<N§.height = _loc4_ * 2;
         this.§"!9§.y = -this.§"!9§.height / 2;
         this.§<N§.y = -this.§<N§.height / 2;
         this.§'1§ = false;
      }
      
      public function §6L§() : void
      {
         while(this.§"_§.length > 0)
         {
            this.§,!1§(0,true);
         }
         this.§"!1§();
         this.§#!%§("BIRD_SARDINE",this.§5!>§,this.§#!$§);
         this.§'o§(§6t§);
      }
      
      protected function §"!1§() : void
      {
         §3!E§.§<!,§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§'o§(§,z§);
      }
      
      public function §'!<§() : void
      {
         this.setNewCoordinatesForRubber(this.§]!7§,this.§`-§ + this.§#!3§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§?!+§ == param1 && this.§&D§ == param2)
         {
            return true;
         }
         this.§@N§ = Math.sqrt((param2 - this.§`-§) * (param2 - this.§`-§) + (param1 - this.§]!7§) * (param1 - this.§]!7§));
         if(this.§@N§ > this.§#!3§)
         {
            if(param3)
            {
               this.§@N§ = Math.sqrt((this.§&D§ - this.§`-§) * (this.§&D§ - this.§`-§) + (this.§?!+§ - this.§]!7§) * (this.§?!+§ - this.§]!7§));
               return false;
            }
            param1 = this.§]!7§ + this.§#!3§ * (param1 - this.§]!7§) / this.§@N§;
            param2 = this.§`-§ + this.§#!3§ * (param2 - this.§`-§) / this.§@N§;
            this.§@N§ = this.§#!3§;
         }
         this.§?!+§ = param1;
         this.§&D§ = param2;
         this.§#p§ = Math.atan2(-(this.§&D§ - this.§`-§),this.§?!+§ - this.§]!7§);
         this.§#p§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§?!+§ = param1 + this.§5G§;
            this.§&D§ = param2 + this.§1u§;
            this.§#p§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§#!3§ / 2;
         if(this.§@N§ > _loc7_ && this.§#p§ > -90 - _loc4_ + _loc5_ && this.§#p§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§]!7§ + _loc7_ * (param1 - this.§]!7§) / this.§@N§;
            param2 = this.§`-§ + _loc7_ * (param2 - this.§`-§) / this.§@N§;
            this.§@N§ = _loc7_;
            this.§?!+§ = param1;
            this.§&D§ = param2;
         }
         else if(this.§@N§ > _loc7_ && this.§#p§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§#p§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§#!3§ - _loc7_) * (Math.abs(this.§#p§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§]!7§ + _loc8_ * (param1 - this.§]!7§) / this.§@N§;
            param2 = this.§`-§ + _loc8_ * (param2 - this.§`-§) / this.§@N§;
            this.§@N§ = _loc8_;
            this.§?!+§ = param1;
            this.§&D§ = param2;
         }
         if(this.§@N§ <= this.§#!3§ * 0.45)
         {
            this.§>!5§ = true;
         }
         else if(this.§>!5§ && this.§@N§ >= this.§#!3§ * 0.8)
         {
            this.§7!;§();
            this.§>!5§ = false;
         }
         this.§'1§ = true;
         return true;
      }
      
      protected function §7!;§() : void
      {
         §3!E§.§<!,§("SlingshotStreched");
      }
      
      public function §8%§(param1:Number) : void
      {
         this.setPosition(this.§5!>§,this.§#!$§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§5!>§;
         this.§5!>§ = param1;
         var _loc5_:Number = param2 - this.§#!$§;
         this.§#!$§ = param2;
         this.§!!5§ += _loc5_;
         this.§`-§ += _loc5_;
         this.§&D§ += _loc5_;
         this.§]!7§ += _loc4_;
         this.§?!+§ += _loc4_;
         if(param3)
         {
            this.§?!$§(0);
         }
         this.§'1§ = true;
      }
      
      public function §3`§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§0Y§ = null;
         _loc2_ = this.§"_§[this.§-!3§];
         var _loc3_:Number = this.§@N§ / this.§#!3§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§3=§.§7[§) : Number(§3=§.§=!,§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §"[§() : Point
      {
         var _loc1_:§0Y§ = null;
         if(this.§"_§.length > this.§-!3§)
         {
            _loc1_ = this.§"_§[this.§-!3§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §>3§() : Point
      {
         return new Point(this.§]!7§,this.§`-§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§0Y§ = null;
         this.§'U§(param1);
         if(this.§'1§)
         {
            this.§?!$§(param1);
         }
         this.§,L§ -= param1;
         if(this.§,L§ < 0)
         {
            this.§,L§ = 0;
         }
         if(this.mSlingShotState != § in§)
         {
            this.§4!+§(param1,param2);
            _loc3_ = null;
            if(this.§"_§.length > 0)
            {
               _loc3_ = this.§"_§[this.§-!3§];
            }
            if(_loc3_)
            {
               _loc3_.§1Q§(param1);
            }
            if(!_loc3_)
            {
               this.§'o§(§ in§);
            }
            else if(this.mSlingShotState == §=0§)
            {
               if(this.§,L§ <= 0)
               {
                  this.§'o§(§]9§);
                  _loc3_.§[U§();
               }
            }
            else if(this.mSlingShotState == §]9§)
            {
               if(_loc3_.§1]§)
               {
                  this.§'o§(§6t§);
               }
            }
            else if(this.mSlingShotState == §6t§)
            {
               _loc3_.setPosition(this.§?!+§ - _loc3_.radius * Math.cos(this.§#p§ / (180 / Math.PI)),this.§&D§ + _loc3_.radius * Math.sin(this.§#p§ / (180 / Math.PI)));
               if(this.§5!;§)
               {
                  this.§?!5§(this.§@N§ / this.§#!3§,this.§#p§);
               }
            }
         }
      }
      
      public function §>f§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§0Y§ = null;
         if(this.§"_§.length > 0)
         {
            _loc5_ = this.§"_§[this.§-!3§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§?!5§(param3,param4);
      }
      
      protected function §?!5§(param1:Number, param2:Number) : void
      {
         var _loc3_:§0Y§ = null;
         this.§5G§ = §&!1§;
         this.§1u§ = §?B§;
         if(this.§"_§.length > 0)
         {
            _loc3_ = this.§"_§[this.§-!3§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§5!;§ = false;
         this.§null§ = new Date().time;
         this.§7C§.§[!7§(_loc3_,param1,param2);
         this.§,!1§(this.§-!3§,_loc3_.§&!"§ > 0);
         this.§;s§();
         if(this.§-!3§ >= this.§"_§.length)
         {
            this.§'o§(§ in§);
         }
         else
         {
            this.§'o§(§=0§);
         }
      }
      
      protected function §;s§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §3!E§.§<!,§("BirdShot" + _loc1_);
      }
      
      public function §4!+§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§-!3§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§"_§.length)
         {
            if(this.mSlingShotState == §,z§)
            {
               this.§"_§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§"_§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§0Y§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§'!<§();
         if(this.§?]§ >= this.§"_§.length)
         {
            return false;
         }
         _loc1_ = this.§"_§[this.§?]§];
         _loc2_ = §3n§.§]B§(_loc1_.name).score;
         this.§7C§.addScore(_loc2_,§0]§.§,!-§,true,_loc1_.x,_loc1_.y - 3,§2S§.§`!0§(_loc1_.name));
         _loc1_.§-X§(-1,true);
         ++this.§?]§;
         return true;
      }
      
      public function §,!%§() : int
      {
         var _loc2_:§0Y§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§"_§)
         {
            _loc1_ += §3n§.§]B§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §^! §() : int
      {
         return this.§`J§;
      }
      
      public function §'U§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§7h§ >= 0)
         {
            this.§7h§ -= param1;
            if(this.§7h§ <= 0)
            {
               _loc2_ = this.§7C§.objects.§2j§(this.§]!7§,this.§!!5§);
               if(_loc2_ < 0)
               {
                  this.§8%§(0.1);
                  this.§7h§ = 0;
               }
               else if(!this.§7C§.objects.§!6§(_loc2_).§[&§)
               {
                  this.§7h§ = -1;
               }
               else if(this.§7C§.objects.§!6§(_loc2_).§0!@§())
               {
                  this.§7h§ = 2000;
               }
               else
               {
                  this.§7h§ = 500;
               }
            }
         }
      }
      
      public function §!a§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§7C§.objects.§2j§(this.§]!7§,this.§!!5§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§8%§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§7h§ = -1;
      }
      
      public function §^-§(param1:Number, param2:Number) : void
      {
         this.§0W§.x = -param1;
         this.§0W§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §6t§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §6t§ && this.§@N§ > this.§#!3§ * §6@§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§'o§(§6t§);
         var _loc1_:§0Y§ = this.§"_§[this.§-!3§];
         _loc1_.§-X§(§0r§.§<q§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§0Y§ = this.§"_§[this.§-!3§];
         _loc1_.§-X§(§0r§.§ T§);
      }
      
      public function shoot() : void
      {
         this.§5!;§ = true;
      }
      
      protected function §,!1§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§0Y§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§"_§[param1])
         {
            _loc3_ = this.§"_§[param1];
            this.§72§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§5[§(this.§"_§[param1]);
            }
            _loc3_.dispose();
            this.§"_§[param1] = null;
         }
         this.§"_§.splice(param1,1);
      }
      
      public function §5[§(param1:§0Y§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §#;§.§`!2§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §#;§.§`!2§) + Math.random() * -_loc8_ * 2;
            this.§7C§.particles.§ t§(§2S§.§4"§,§5b§.§?D§,§2S§.§9!>§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§2S§.§#!2§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§7C§.particles.§ t§(§2S§.§8x§,§5b§.§?D§,§2S§.§9!>§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §>!"§(param1:§0Y§) : void
      {
         this.§,!1§(this.§"_§.indexOf(param1));
      }
      
      public function §=!!§() : void
      {
         var _loc2_:§0Y§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§0Y§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§"_§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§5!>§ - this.§"_§[_loc1_].x) * (this.§5!>§ - this.§"_§[_loc1_].x) + (this.§#!$§ - this.§"_§[_loc1_].y) * (this.§#!$§ - this.§"_§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§5!>§ - this.§"_§[_loc1_ + 1].x) * (this.§5!>§ - this.§"_§[_loc1_ + 1].x) + (this.§#!$§ - this.§"_§[_loc1_ + 1].y) * (this.§#!$§ - this.§"_§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§"_§[_loc1_];
               this.§"_§.splice(_loc1_,1);
               this.§"_§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§72§.numChildren > 0)
         {
            this.§72§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§"_§.length)
         {
            _loc2_ = this.§"_§[_loc1_];
            this.§72§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §<"§(param1:Number, param2:Number) : §0Y§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§"_§.length)
         {
            if(this.§"_§[_loc3_])
            {
               if(this.§"_§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§"_§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §"!8§(param1:Number, param2:Number) : §3=§
      {
         if(param1 >= this.§5!>§ - this.§#!3§ / 4 && param1 <= this.§5!>§ + this.§#!3§ / 4 && param2 >= this.§#!$§ - this.§#!3§ / 4 && this.§#!$§ <= this.§!!5§)
         {
            return this;
         }
         return null;
      }
      
      public function §[0§(param1:§9R§) : void
      {
         var _loc3_:§0Y§ = null;
         var _loc4_:§?!3§ = null;
         param1.§2^§ = this.§5!>§;
         param1.§7!H§ = this.§#!$§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§"_§.length)
         {
            _loc3_ = this.§"_§[_loc2_];
            (_loc4_ = new §?!3§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§;$§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §,g§() : void
      {
         while(this.§"_§.length > 0)
         {
            this.§>!"§(this.§"_§[0]);
         }
      }
      
      public function §;!?§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§"_§.length)
         {
            if(this.§"_§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§"_§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§5!>§ > param1.x && this.§5!>§ < param2.x && this.§#!$§ > param1.y && this.§#!$§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §8C§() : Array
      {
         return [this.§^!%§,this.§6+§];
      }
      
      public function §1Y§(param1:String, param2:Number, param3:Number) : §0Y§
      {
         var _loc4_:§0Y§ = this.§#!%§(param1,param2,param3);
         this.§=!!§();
         return _loc4_;
      }
      
      public function §,&§() : Number
      {
         return this.§"_§.length;
      }
   }
}
