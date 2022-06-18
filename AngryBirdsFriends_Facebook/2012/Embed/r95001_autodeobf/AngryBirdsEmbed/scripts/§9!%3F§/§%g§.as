package §9!?§
{
   import § "§.§;4§;
   import §!T§.§2!!§;
   import §!T§.§`P§;
   import §0H§.§-V§;
   import §0H§.§2x§;
   import §1!?§.§7_§;
   import §9H§.§@M§;
   import §<-§.Texture;
   import §<k§.§!1§;
   import §<k§.§"!=§;
   import §<k§.Sprite;
   import §[n§.§#H§;
   import §[n§.§2!9§;
   import §]7§.§8!7§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §%g§
   {
      
      public static const § M§:int = 0;
      
      public static const §7!!§:int = 1;
      
      public static const §1?§:int = 2;
      
      public static const §2O§:int = 3;
      
      public static const § `§:int = 5;
      
      public static const §&9§:int = 3151368;
      
      protected static const § V§:int = 8;
      
      protected static const §,u§:int = 0;
      
      public static const §8#§:Number = 46.25;
      
      public static const §&h§:Number = 52.5;
      
      protected static var §#-§:Texture;
      
      public static const §7m§:Number = 0.4;
       
      
      public var §]!9§:§^]§;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §7J§:Number;
      
      protected var §^!5§:Number;
      
      protected var §&!8§:Number;
      
      protected var §]&§:Number;
      
      protected var §]$§:Number;
      
      public var §&!#§:Number;
      
      public var §#F§:Boolean = false;
      
      protected var override:Number;
      
      public var §0r§:Vector.<§#1§>;
      
      public var §,!0§:int;
      
      public var §`!;§:int;
      
      public var § !<§:Number;
      
      public var §#;§:Sprite;
      
      public var §?a§:int = 0;
      
      public var §,h§:Number = 0;
      
      public var §2D§:Array;
      
      public var §1`§:Array;
      
      public var mSlingShotState:int;
      
      public var §&-§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §[p§:Boolean = false;
      
      public var §#L§:Number;
      
      protected var §8!!§:Sprite;
      
      protected var §2!1§:§!1§;
      
      protected var §6u§:§!1§;
      
      protected var §"!-§:Sprite;
      
      protected var §[N§:Sprite;
      
      protected var §'i§:Sprite;
      
      protected var §8n§:§"!=§;
      
      protected var §!!>§:§"!=§;
      
      private var §7e§:Number = 0;
      
      private var §;p§:int = 0;
      
      public function §%g§(param1:§^]§, param2:§;4§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§8!7§ = null;
         this.§0r§ = new Vector.<§#1§>();
         super();
         this.§]!9§ = param1;
         this.§8!!§ = param3;
         if(param2)
         {
            this.setPosition(param2.§]!§,param2.§%q§);
            this.§@"§();
            _loc4_ = 0;
            while(_loc4_ < param2.§0!;§)
            {
               _loc5_ = param2.§]^§(_loc4_);
               this.§0!E§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§;p§ = this.§2r§();
            this.§,!0§ = 0;
            if(this.§0r§.length <= 0)
            {
               §@M§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.mX + " " + this.mY);
               this.§6A§(§2O§);
            }
            else
            {
               this.§6A§(§ M§);
            }
         }
         else
         {
            §@M§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§6A§(§2O§);
         }
         this.§#L§ = 0;
         this.§2;§();
         this.update(0,true);
         this.§'#§();
         this.§&!,§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§8!!§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§7e§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§,!0§ < this.§0r§.length;
      }
      
      public function dispose() : void
      {
         while(this.§0r§.length > 0)
         {
            this.§<!9§(0);
         }
         this.§0r§ = null;
         if(this.§8!!§)
         {
            this.§8!!§.dispose();
            this.§8!!§ = null;
         }
         this.§#;§ = null;
         this.§2D§ = null;
         this.§1`§ = null;
      }
      
      public function §7E§(param1:String, param2:Number, param3:Number, param4:int = -1) : §#1§
      {
         var _loc5_:§#1§;
         (_loc5_ = this.§0!E§(param1,param2,param3,param4)).§5r§();
         return _loc5_;
      }
      
      protected function §0!E§(param1:String, param2:Number, param3:Number, param4:int = -1) : §#1§
      {
         var _loc5_:§#1§ = new §#1§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§0r§.push(_loc5_);
         }
         else
         {
            this.§0r§.splice(param4,0,_loc5_);
         }
         this.§#;§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §6A§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == § M§)
         {
            this.§[,§();
            this.§ !<§ = 1000;
         }
         else if(this.mSlingShotState == §7!!§)
         {
            this.§[,§();
            this.§ !<§ = 0;
         }
         else if(this.mSlingShotState == §1?§)
         {
            this.§ !<§ = 10000;
            this.§[p§ = false;
            this.§[,§();
         }
         else if(this.mSlingShotState == §2O§)
         {
            this.§[,§();
            this.§ !<§ = 2000;
         }
         else if(this.mSlingShotState == § `§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§[p§ = false;
               this.§[,§();
               this.§0r§[this.§,!0§].setPosition(this.§]&§ - this.§0r§[this.§,!0§].radius * Math.cos(this.§,h§ / (180 / Math.PI)),this.§]$§ + this.§0r§[this.§,!0§].radius * Math.sin(this.§,h§ / (180 / Math.PI)));
            }
            else
            {
               this.§[,§();
            }
         }
         this.mDragging = false;
      }
      
      public function get § !#§() : §^]§
      {
         return this.§]!9§;
      }
      
      public function §6$§() : Boolean
      {
         return this.mSlingShotState == §2O§ && this.§ !<§ <= 0;
      }
      
      private function §@"§() : void
      {
         var _loc1_:§2!9§ = this.§]!9§.§[y§.§ E§("SLINGSHOT");
         var _loc2_:§#H§ = _loc1_.getFrame(0);
         var _loc3_:§#H§ = _loc1_.getFrame(1);
         this.§8n§ = new §"!=§(_loc2_.texture);
         this.§8n§.scaleX = _loc2_.scale;
         this.§8n§.scaleY = _loc2_.scale;
         this.§!!>§ = new §"!=§(_loc3_.texture);
         this.§!!>§.scaleX = _loc3_.scale;
         this.§!!>§.scaleY = _loc3_.scale;
         this.§[!8§();
         this.§!A§();
         this.§#;§ = new Sprite();
         this.§8!!§.addChild(this.§8n§);
         this.§8!!§.addChild(this.§"!-§);
         this.§8!!§.addChild(this.§#;§);
         this.§8!!§.addChild(this.§'i§);
         this.§8!!§.addChild(this.§[N§);
         this.§8!!§.addChild(this.§!!>§);
         this.§7J§ = this.mY + 8.5;
      }
      
      public function §[!8§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§^!5§ = this.mX;
         this.§&!8§ = this.mY;
         this.override = §,a§.§'P§;
         _loc1_ = null;
      }
      
      protected function §!A§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§#-§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §#-§ = this.§]!9§.textureManager.§"M§(_loc2_);
         }
         this.§'i§ = new Sprite();
         var _loc1_:§"!=§ = new §"!=§(§#-§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§'i§.addChild(_loc1_);
         this.§"!-§ = new Sprite();
         this.§2!1§ = new §!1§(2,2,§&9§);
         this.§"!-§.addChild(this.§2!1§);
         this.§[N§ = new Sprite();
         this.§6u§ = new §!1§(2,2,§&9§);
         this.§[N§.addChild(this.§6u§);
      }
      
      public function §&!,§(param1:Number) : void
      {
         var _loc2_:Number = this.§]$§ / §^]§.§ u§;
         var _loc3_:Number = this.§]&§ / §^]§.§ u§;
         var _loc4_:Number = 3.5 + 8 * ((this.override - this.§&!#§) / this.override);
         this.§'i§.x = _loc3_;
         this.§'i§.y = _loc2_;
         this.§'i§.rotation = -this.§,h§ / (180 / Math.PI);
         this.§8n§.x = this.mX / §^]§.§ u§ - 3;
         this.§8n§.y = this.mY / §^]§.§ u§ - 30;
         this.§!!>§.x = this.mX / §^]§.§ u§ - 30;
         this.§!!>§.y = this.mY / §^]§.§ u§ - 30;
         this.§[N§.x = this.mX / §^]§.§ u§ - 17;
         this.§[N§.y = this.mY / §^]§.§ u§ + 5;
         this.§[N§.rotation = Math.atan2(_loc2_ - this.§[N§.y,_loc3_ - this.§[N§.x);
         this.§"!-§.x = this.mX / §^]§.§ u§ + 22;
         this.§"!-§.y = this.mY / §^]§.§ u§;
         this.§"!-§.rotation = Math.atan2(_loc2_ - this.§"!-§.y,_loc3_ - this.§"!-§.x);
         this.§6u§.width = Math.sqrt(Math.pow(_loc3_ - this.§[N§.x,2) + Math.pow(_loc2_ - this.§[N§.y,2));
         this.§2!1§.width = Math.sqrt(Math.pow(_loc3_ - this.§"!-§.x,2) + Math.pow(_loc2_ - this.§"!-§.y,2));
         this.§6u§.height = this.§2!1§.height = _loc4_ * 2;
         this.§6u§.y = -this.§6u§.height / 2;
         this.§2!1§.y = -this.§2!1§.height / 2;
         this.§&-§ = false;
      }
      
      public function §`!'§() : void
      {
         while(this.§0r§.length > 0)
         {
            this.§<!9§(0,true);
         }
         this.§0!C§();
         this.§0!E§("BIRD_SARDINE",this.mX,this.mY);
         this.§6A§(§1?§);
      }
      
      protected function §0!C§() : void
      {
         §7_§.§4!5§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§6A§(§ `§);
      }
      
      public function §[,§() : void
      {
         this.setNewCoordinatesForRubber(this.§^!5§,this.§&!8§ + this.override / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§]&§ == param1 && this.§]$§ == param2)
         {
            return true;
         }
         this.§&!#§ = Math.sqrt((param2 - this.§&!8§) * (param2 - this.§&!8§) + (param1 - this.§^!5§) * (param1 - this.§^!5§));
         if(this.§&!#§ > this.override)
         {
            if(param3)
            {
               this.§&!#§ = Math.sqrt((this.§]$§ - this.§&!8§) * (this.§]$§ - this.§&!8§) + (this.§]&§ - this.§^!5§) * (this.§]&§ - this.§^!5§));
               return false;
            }
            param1 = this.§^!5§ + this.override * (param1 - this.§^!5§) / this.§&!#§;
            param2 = this.§&!8§ + this.override * (param2 - this.§&!8§) / this.§&!#§;
            this.§&!#§ = this.override;
         }
         this.§]&§ = param1;
         this.§]$§ = param2;
         this.§,h§ = Math.atan2(-(this.§]$§ - this.§&!8§),this.§]&§ - this.§^!5§);
         this.§,h§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§]&§ = param1 - 0.7;
            this.§]$§ = param2;
            this.§,h§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.override / 2;
         if(this.§&!#§ > _loc7_ && this.§,h§ > -90 - _loc4_ + _loc5_ && this.§,h§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§^!5§ + _loc7_ * (param1 - this.§^!5§) / this.§&!#§;
            param2 = this.§&!8§ + _loc7_ * (param2 - this.§&!8§) / this.§&!#§;
            this.§&!#§ = _loc7_;
            this.§]&§ = param1;
            this.§]$§ = param2;
         }
         else if(this.§&!#§ > _loc7_ && this.§,h§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§,h§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.override - _loc7_) * (Math.abs(this.§,h§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§^!5§ + _loc8_ * (param1 - this.§^!5§) / this.§&!#§;
            param2 = this.§&!8§ + _loc8_ * (param2 - this.§&!8§) / this.§&!#§;
            this.§&!#§ = _loc8_;
            this.§]&§ = param1;
            this.§]$§ = param2;
         }
         if(this.§&!#§ <= this.override * 0.45)
         {
            this.§#F§ = true;
         }
         else if(this.§#F§ && this.§&!#§ >= this.override * 0.8)
         {
            this.§[!,§();
            this.§#F§ = false;
         }
         this.§&-§ = true;
         return true;
      }
      
      protected function §[!,§() : void
      {
         §7_§.§4!5§("SlingshotStreched");
      }
      
      public function § !=§(param1:Number) : void
      {
         this.setPosition(this.mX,this.mY + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.mX;
         this.mX = param1;
         var _loc5_:Number = param2 - this.mY;
         this.mY = param2;
         this.§7J§ += _loc5_;
         this.§&!8§ += _loc5_;
         this.§]$§ += _loc5_;
         this.§^!5§ += _loc4_;
         this.§]&§ += _loc4_;
         if(param3)
         {
            this.§&!,§(0);
         }
         this.§&-§ = true;
      }
      
      public function §7F§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§#1§ = null;
         _loc2_ = this.§0r§[this.§,!0§];
         var _loc3_:Number = this.§&!#§ / this.override;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§%g§.§&h§) : Number(§%g§.§8#§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §"!?§() : Point
      {
         var _loc1_:§#1§ = null;
         if(this.§0r§.length > this.§,!0§)
         {
            _loc1_ = this.§0r§[this.§,!0§];
            return new Point(_loc1_.mX,_loc1_.mY);
         }
         return null;
      }
      
      public function §<&§() : Point
      {
         return new Point(this.§^!5§,this.§&!8§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§#1§ = null;
         this.§8`§(param1);
         if(this.§&-§)
         {
            this.§&!,§(param1);
         }
         this.§ !<§ -= param1;
         if(this.§ !<§ < 0)
         {
            this.§ !<§ = 0;
         }
         if(this.mSlingShotState != §2O§)
         {
            this.§`W§(param1,param2);
            _loc3_ = null;
            if(this.§0r§.length > 0)
            {
               _loc3_ = this.§0r§[this.§,!0§];
            }
            if(_loc3_)
            {
               _loc3_.§70§(param1);
            }
            if(!_loc3_)
            {
               this.§6A§(§2O§);
            }
            else if(this.mSlingShotState == § M§)
            {
               if(this.§ !<§ <= 0)
               {
                  this.§6A§(§7!!§);
                  _loc3_.§<Z§();
               }
            }
            else if(this.mSlingShotState == §7!!§)
            {
               if(_loc3_.§>f§)
               {
                  this.§6A§(§1?§);
               }
            }
            else if(this.mSlingShotState == §1?§)
            {
               _loc3_.setPosition(this.§]&§ - _loc3_.radius * Math.cos(this.§,h§ / (180 / Math.PI)),this.§]$§ + _loc3_.radius * Math.sin(this.§,h§ / (180 / Math.PI)));
               if(this.§[p§)
               {
                  this.§'6§(this.§&!#§ / this.override,this.§,h§);
               }
            }
         }
      }
      
      public function §"E§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§#1§ = null;
         if(this.§0r§.length > 0)
         {
            _loc5_ = this.§0r§[this.§,!0§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§'6§(param3,param4);
      }
      
      protected function §'6§(param1:Number, param2:Number) : void
      {
         var _loc3_:§#1§ = null;
         if(this.§0r§.length > 0)
         {
            _loc3_ = this.§0r§[this.§,!0§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§[p§ = false;
         this.§7e§ = new Date().time;
         this.§]!9§.§<p§(_loc3_,param1,param2);
         this.§<!9§(this.§,!0§,_loc3_.§,4§ > 0);
         this.§6Y§();
         if(this.§,!0§ >= this.§0r§.length)
         {
            this.§6A§(§2O§);
         }
         else
         {
            this.§6A§(§ M§);
         }
      }
      
      protected function §6Y§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §7_§.§4!5§("BirdShot" + _loc1_);
      }
      
      public function §`W§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§,!0§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§0r§.length)
         {
            if(this.mSlingShotState == § `§)
            {
               this.§0r§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§0r§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§#1§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§[,§();
         if(this.§`!;§ >= this.§0r§.length)
         {
            return false;
         }
         _loc1_ = this.§0r§[this.§`!;§];
         _loc2_ = §2!!§.§2V§(_loc1_.name).score;
         this.§]!9§.addScore(_loc2_,§%!+§.§>?§,true,_loc1_.mX,_loc1_.mY - 3,§-V§.§-!2§(_loc1_.name));
         _loc1_.§=2§(-1,true);
         ++this.§`!;§;
         return true;
      }
      
      public function §2r§() : int
      {
         var _loc2_:§#1§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§0r§)
         {
            _loc1_ += §2!!§.§2V§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §[i§() : int
      {
         return this.§;p§;
      }
      
      public function §8`§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§#L§ >= 0)
         {
            this.§#L§ -= param1;
            if(this.§#L§ <= 0)
            {
               _loc2_ = this.§]!9§.objects.§'Z§(this.§^!5§,this.§7J§);
               if(_loc2_ < 0)
               {
                  this.§ !=§(0.1);
                  this.§#L§ = 0;
               }
               else if(!this.§]!9§.objects.§7!6§(_loc2_).§`!>§)
               {
                  this.§#L§ = -1;
               }
               else if(this.§]!9§.objects.§7!6§(_loc2_).§&c§())
               {
                  this.§#L§ = 2000;
               }
               else
               {
                  this.§#L§ = 500;
               }
            }
         }
      }
      
      public function §'#§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§]!9§.objects.§'Z§(this.§^!5§,this.§7J§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§ !=§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§#L§ = -1;
      }
      
      public function include(param1:Number, param2:Number) : void
      {
         this.§8!!§.x = -param1;
         this.§8!!§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §1?§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §1?§ && this.§&!#§ > this.override * §7m§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§6A§(§1?§);
         var _loc1_:§#1§ = this.§0r§[this.§,!0§];
         _loc1_.§=2§(§`P§.§#!G§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§#1§ = this.§0r§[this.§,!0§];
         _loc1_.§=2§(§`P§.§8^§);
      }
      
      public function shoot() : void
      {
         this.§[p§ = true;
      }
      
      protected function §<!9§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§#1§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§0r§[param1])
         {
            _loc3_ = this.§0r§[param1];
            this.§#;§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§9!'§(this.§0r§[param1]);
            }
            _loc3_.dispose();
            this.§0r§[param1] = null;
         }
         this.§0r§.splice(param1,1);
      }
      
      public function §9!'§(param1:§#1§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §^]§.§ u§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §^]§.§ u§) + Math.random() * -_loc8_ * 2;
            this.§]!9§.particles.§]1§(§-V§.§&§,§2x§.§3!6§,§-V§.§?P§,param1.mX + _loc7_,param1.mY + _loc8_,1500,"",§-V§.§3!;§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§]!9§.particles.§]1§(§-V§.§+!D§,§2x§.§3!6§,§-V§.§?P§,param1.mX,param1.mY,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §6!4§(param1:§#1§) : void
      {
         this.§<!9§(this.§0r§.indexOf(param1));
      }
      
      public function §2;§() : void
      {
         var _loc2_:§#1§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§#1§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§0r§.length - 1)
         {
            _loc3_ = Math.sqrt((this.mX - this.§0r§[_loc1_].mX) * (this.mX - this.§0r§[_loc1_].mX) + (this.mY - this.§0r§[_loc1_].mY) * (this.mY - this.§0r§[_loc1_].mY));
            if((_loc4_ = Math.sqrt((this.mX - this.§0r§[_loc1_ + 1].mX) * (this.mX - this.§0r§[_loc1_ + 1].mX) + (this.mY - this.§0r§[_loc1_ + 1].mY) * (this.mY - this.§0r§[_loc1_ + 1].mY))) < _loc3_)
            {
               _loc5_ = this.§0r§[_loc1_];
               this.§0r§.splice(_loc1_,1);
               this.§0r§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§#;§.numChildren > 0)
         {
            this.§#;§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§0r§.length)
         {
            _loc2_ = this.§0r§[_loc1_];
            this.§#;§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §=!F§(param1:Number, param2:Number) : §#1§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§0r§.length)
         {
            if(this.§0r§[_loc3_])
            {
               if(this.§0r§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§0r§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §&7§(param1:Number, param2:Number) : §%g§
      {
         if(param1 >= this.mX - this.override / 4 && param1 <= this.mX + this.override / 4 && param2 >= this.mY - this.override / 4 && this.mY <= this.§7J§)
         {
            return this;
         }
         return null;
      }
      
      public function §`E§(param1:§;4§) : void
      {
         var _loc3_:§#1§ = null;
         var _loc4_:§8!7§ = null;
         param1.§]!§ = this.mX;
         param1.§%q§ = this.mY;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§0r§.length)
         {
            _loc3_ = this.§0r§[_loc2_];
            (_loc4_ = new §8!7§()).x = _loc3_.mX;
            _loc4_.y = _loc3_.mY;
            _loc4_.id = _loc3_.name;
            param1.§3Z§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §[D§() : void
      {
         while(this.§0r§.length > 0)
         {
            this.§6!4§(this.§0r§[0]);
         }
      }
      
      public function §[$§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§0r§.length)
         {
            if(this.§0r§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§0r§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.mX > param1.x && this.mX < param2.x && this.mY > param1.y && this.mY < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §&H§() : Array
      {
         return [this.§!!>§,this.§8n§];
      }
      
      public function §1y§(param1:String, param2:Number, param3:Number) : §#1§
      {
         var _loc4_:§#1§ = this.§0!E§(param1,param2,param3);
         this.§2;§();
         return _loc4_;
      }
      
      public function §5§() : Number
      {
         return this.§0r§.length;
      }
   }
}
