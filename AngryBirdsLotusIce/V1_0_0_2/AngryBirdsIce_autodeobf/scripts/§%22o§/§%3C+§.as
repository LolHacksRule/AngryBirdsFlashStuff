package §"o§
{
   import §%?§.Texture;
   import §&V§.§,_§;
   import §&V§.§;Q§;
   import §'m§.§^S§;
   import §2!"§.§4!%§;
   import §2!"§.§8y§;
   import §;!2§.§ S§;
   import §;f§.§^o§;
   import §>Z§.§2;§;
   import §@!=§.§"S§;
   import §@!=§.§4G§;
   import §@!=§.Sprite;
   import §]2§.§<u§;
   import §]2§.§`b§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §<+§
   {
      
      public static const §`>§:int = 0;
      
      public static const §class§:int = 1;
      
      public static const §>!,§:int = 2;
      
      public static const §7!,§:int = 3;
      
      public static const §7P§:int = 5;
      
      public static const §4v§:int = 3151368;
      
      protected static const §7D§:int = 8;
      
      protected static const §0G§:int = 0;
      
      public static const §,C§:Number = 46.25;
      
      public static const §#r§:Number = 52.5;
      
      protected static var §<'§:Texture;
      
      public static const §#z§:Number = 0.4;
       
      
      public var § 6§:§ M§;
      
      public var §2!2§:Number;
      
      public var §9!3§:Number;
      
      public var §=!D§:Number;
      
      protected var §4§:Number;
      
      protected var §0h§:Number;
      
      protected var §?!7§:Number;
      
      protected var §1]§:Number;
      
      public var §5S§:Number;
      
      public var §=!7§:Boolean = false;
      
      protected var §@'§:Number;
      
      public var §0A§:Vector.<§]?§>;
      
      public var §%!H§:int;
      
      public var §;x§:int;
      
      public var §6w§:Number;
      
      public var §>!3§:Sprite;
      
      public var §extends§:int = 0;
      
      public var §7T§:Number = 0;
      
      public var §>#§:Array;
      
      public var §=0§:Array;
      
      public var mSlingShotState:int;
      
      public var §9z§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §%!!§:Boolean = false;
      
      public var §2Q§:Number;
      
      protected var §+x§:Sprite;
      
      protected var §5Q§:§4G§;
      
      protected var §0#§:§4G§;
      
      protected var §,a§:Sprite;
      
      protected var §3!>§:Sprite;
      
      protected var §?q§:Sprite;
      
      protected var §;!§:§"S§;
      
      protected var §^!+§:§"S§;
      
      private var §^r§:Number = 0;
      
      private var §+!D§:int = 0;
      
      public function §<+§(param1:§ M§, param2:§^o§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§ S§ = null;
         this.§0A§ = new Vector.<§]?§>();
         super();
         this.§ 6§ = param1;
         this.§+x§ = param3;
         if(param2)
         {
            this.setPosition(param2.§+z§,param2.§@!>§);
            this.§>"§();
            _loc4_ = 0;
            while(_loc4_ < param2.§3!G§)
            {
               _loc5_ = param2.§,!%§(_loc4_);
               this.§7!D§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§+!D§ = this.§-q§();
            this.§%!H§ = 0;
            if(this.§0A§.length <= 0)
            {
               §^S§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§2!2§ + " " + this.§9!3§);
               this.§?!+§(§7!,§);
            }
            else
            {
               this.§?!+§(§`>§);
            }
         }
         else
         {
            §^S§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§?!+§(§7!,§);
         }
         this.§2Q§ = 0;
         this.§5R§();
         this.update(0,true);
         this.§+t§();
         this.§=k§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§+x§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§^r§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§%!H§ < this.§0A§.length;
      }
      
      public function dispose() : void
      {
         while(this.§0A§.length > 0)
         {
            this.§;!&§(0);
         }
         this.§0A§ = null;
         if(this.§+x§)
         {
            this.§+x§.dispose();
            this.§+x§ = null;
         }
         this.§>!3§ = null;
         this.§>#§ = null;
         this.§=0§ = null;
      }
      
      public function §&G§(param1:String, param2:Number, param3:Number, param4:int = -1) : §]?§
      {
         var _loc5_:§]?§;
         (_loc5_ = this.§7!D§(param1,param2,param3,param4)).§<W§();
         return _loc5_;
      }
      
      protected function §7!D§(param1:String, param2:Number, param3:Number, param4:int = -1) : §]?§
      {
         var _loc5_:§]?§ = new §]?§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§0A§.push(_loc5_);
         }
         else
         {
            this.§0A§.splice(param4,0,_loc5_);
         }
         this.§>!3§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §?!+§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §`>§)
         {
            this.§]K§();
            this.§6w§ = 1000;
         }
         else if(this.mSlingShotState == §class§)
         {
            this.§]K§();
            this.§6w§ = 0;
         }
         else if(this.mSlingShotState == §>!,§)
         {
            this.§6w§ = 10000;
            this.§%!!§ = false;
            this.§]K§();
         }
         else if(this.mSlingShotState == §7!,§)
         {
            this.§]K§();
            this.§6w§ = 2000;
         }
         else if(this.mSlingShotState == §7P§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§%!!§ = false;
               this.§]K§();
               this.§0A§[this.§%!H§].setPosition(this.§?!7§ - this.§0A§[this.§%!H§].radius * Math.cos(this.§7T§ / (180 / Math.PI)),this.§1]§ + this.§0A§[this.§%!H§].radius * Math.sin(this.§7T§ / (180 / Math.PI)));
            }
            else
            {
               this.§]K§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §=?§() : § M§
      {
         return this.§ 6§;
      }
      
      public function §&8§() : Boolean
      {
         return this.mSlingShotState == §7!,§ && this.§6w§ <= 0;
      }
      
      private function §>"§() : void
      {
         var _loc1_:§,_§ = this.§ 6§.§]P§.§!D§("SLINGSHOT");
         var _loc2_:§;Q§ = _loc1_.getFrame(0);
         var _loc3_:§;Q§ = _loc1_.getFrame(1);
         this.§;!§ = new §"S§(_loc2_.texture);
         this.§;!§.scaleX = _loc2_.scale;
         this.§;!§.scaleY = _loc2_.scale;
         this.§^!+§ = new §"S§(_loc3_.texture);
         this.§^!+§.scaleX = _loc3_.scale;
         this.§^!+§.scaleY = _loc3_.scale;
         this.§`w§();
         this.§]!9§();
         this.§>!3§ = new Sprite();
         this.§+x§.addChild(this.§;!§);
         this.§+x§.addChild(this.§,a§);
         this.§+x§.addChild(this.§>!3§);
         this.§+x§.addChild(this.§?q§);
         this.§+x§.addChild(this.§3!>§);
         this.§+x§.addChild(this.§^!+§);
         this.§=!D§ = this.§9!3§ + 8.5;
      }
      
      public function §`w§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§4§ = this.§2!2§;
         this.§0h§ = this.§9!3§;
         this.§@'§ = §,J§.§&P§;
         _loc1_ = null;
      }
      
      protected function §]!9§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§<'§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §<'§ = this.§ 6§.textureManager.§[[§(_loc2_);
         }
         this.§?q§ = new Sprite();
         var _loc1_:§"S§ = new §"S§(§<'§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§?q§.addChild(_loc1_);
         this.§,a§ = new Sprite();
         this.§5Q§ = new §4G§(2,2,§4v§);
         this.§,a§.addChild(this.§5Q§);
         this.§3!>§ = new Sprite();
         this.§0#§ = new §4G§(2,2,§4v§);
         this.§3!>§.addChild(this.§0#§);
      }
      
      public function §=k§(param1:Number) : void
      {
         var _loc2_:Number = this.§1]§ / § M§.§%v§;
         var _loc3_:Number = this.§?!7§ / § M§.§%v§;
         var _loc4_:Number = 3.5 + 8 * ((this.§@'§ - this.§5S§) / this.§@'§);
         this.§?q§.x = _loc3_;
         this.§?q§.y = _loc2_;
         this.§?q§.rotation = -this.§7T§ / (180 / Math.PI);
         this.§;!§.x = this.§2!2§ / § M§.§%v§ - 3;
         this.§;!§.y = this.§9!3§ / § M§.§%v§ - 30;
         this.§^!+§.x = this.§2!2§ / § M§.§%v§ - 30;
         this.§^!+§.y = this.§9!3§ / § M§.§%v§ - 30;
         this.§3!>§.x = this.§2!2§ / § M§.§%v§ - 17;
         this.§3!>§.y = this.§9!3§ / § M§.§%v§ + 5;
         this.§3!>§.rotation = Math.atan2(_loc2_ - this.§3!>§.y,_loc3_ - this.§3!>§.x);
         this.§,a§.x = this.§2!2§ / § M§.§%v§ + 22;
         this.§,a§.y = this.§9!3§ / § M§.§%v§;
         this.§,a§.rotation = Math.atan2(_loc2_ - this.§,a§.y,_loc3_ - this.§,a§.x);
         this.§0#§.width = Math.sqrt(Math.pow(_loc3_ - this.§3!>§.x,2) + Math.pow(_loc2_ - this.§3!>§.y,2));
         this.§5Q§.width = Math.sqrt(Math.pow(_loc3_ - this.§,a§.x,2) + Math.pow(_loc2_ - this.§,a§.y,2));
         this.§0#§.height = this.§5Q§.height = _loc4_ * 2;
         this.§0#§.y = -this.§0#§.height / 2;
         this.§5Q§.y = -this.§5Q§.height / 2;
         this.§9z§ = false;
      }
      
      public function §=!,§() : void
      {
         while(this.§0A§.length > 0)
         {
            this.§;!&§(0,true);
         }
         this.§9U§();
         this.§7!D§("BIRD_SARDINE",this.§2!2§,this.§9!3§);
         this.§?!+§(§>!,§);
      }
      
      protected function §9U§() : void
      {
         §2;§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§?!+§(§7P§);
      }
      
      public function §]K§() : void
      {
         this.setNewCoordinatesForRubber(this.§4§,this.§0h§ + this.§@'§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§?!7§ == param1 && this.§1]§ == param2)
         {
            return true;
         }
         this.§5S§ = Math.sqrt((param2 - this.§0h§) * (param2 - this.§0h§) + (param1 - this.§4§) * (param1 - this.§4§));
         if(this.§5S§ > this.§@'§)
         {
            if(param3)
            {
               this.§5S§ = Math.sqrt((this.§1]§ - this.§0h§) * (this.§1]§ - this.§0h§) + (this.§?!7§ - this.§4§) * (this.§?!7§ - this.§4§));
               return false;
            }
            param1 = this.§4§ + this.§@'§ * (param1 - this.§4§) / this.§5S§;
            param2 = this.§0h§ + this.§@'§ * (param2 - this.§0h§) / this.§5S§;
            this.§5S§ = this.§@'§;
         }
         this.§?!7§ = param1;
         this.§1]§ = param2;
         this.§7T§ = Math.atan2(-(this.§1]§ - this.§0h§),this.§?!7§ - this.§4§);
         this.§7T§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§?!7§ = param1 - 0.7;
            this.§1]§ = param2;
            this.§7T§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§@'§ / 2;
         if(this.§5S§ > _loc7_ && this.§7T§ > -90 - _loc4_ + _loc5_ && this.§7T§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§4§ + _loc7_ * (param1 - this.§4§) / this.§5S§;
            param2 = this.§0h§ + _loc7_ * (param2 - this.§0h§) / this.§5S§;
            this.§5S§ = _loc7_;
            this.§?!7§ = param1;
            this.§1]§ = param2;
         }
         else if(this.§5S§ > _loc7_ && this.§7T§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§7T§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§@'§ - _loc7_) * (Math.abs(this.§7T§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§4§ + _loc8_ * (param1 - this.§4§) / this.§5S§;
            param2 = this.§0h§ + _loc8_ * (param2 - this.§0h§) / this.§5S§;
            this.§5S§ = _loc8_;
            this.§?!7§ = param1;
            this.§1]§ = param2;
         }
         if(this.§5S§ <= this.§@'§ * 0.45)
         {
            this.§=!7§ = true;
         }
         else if(this.§=!7§ && this.§5S§ >= this.§@'§ * 0.8)
         {
            this.§+!4§();
            this.§=!7§ = false;
         }
         this.§9z§ = true;
         return true;
      }
      
      protected function §+!4§() : void
      {
         §2;§.playSound("SlingshotStreched");
      }
      
      public function §4O§(param1:Number) : void
      {
         this.setPosition(this.§2!2§,this.§9!3§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§2!2§;
         this.§2!2§ = param1;
         var _loc5_:Number = param2 - this.§9!3§;
         this.§9!3§ = param2;
         this.§=!D§ += _loc5_;
         this.§0h§ += _loc5_;
         this.§1]§ += _loc5_;
         this.§4§ += _loc4_;
         this.§?!7§ += _loc4_;
         if(param3)
         {
            this.§=k§(0);
         }
         this.§9z§ = true;
      }
      
      public function §,!4§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§]?§ = null;
         _loc2_ = this.§0A§[this.§%!H§];
         var _loc3_:Number = this.§5S§ / this.§@'§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§<+§.§#r§) : Number(§<+§.§,C§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §!5§() : Point
      {
         var _loc1_:§]?§ = null;
         if(this.§0A§.length > this.§%!H§)
         {
            _loc1_ = this.§0A§[this.§%!H§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §4!<§() : Point
      {
         return new Point(this.§4§,this.§0h§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§]?§ = null;
         this.§4?§(param1);
         if(this.§9z§)
         {
            this.§=k§(param1);
         }
         this.§6w§ -= param1;
         if(this.§6w§ < 0)
         {
            this.§6w§ = 0;
         }
         if(this.mSlingShotState != §7!,§)
         {
            this.§@!;§(param1,param2);
            _loc3_ = null;
            if(this.§0A§.length > 0)
            {
               _loc3_ = this.§0A§[this.§%!H§];
            }
            if(_loc3_)
            {
               _loc3_.§>!9§(param1);
            }
            if(!_loc3_)
            {
               this.§?!+§(§7!,§);
            }
            else if(this.mSlingShotState == §`>§)
            {
               if(this.§6w§ <= 0)
               {
                  this.§?!+§(§class§);
                  _loc3_.§2!&§();
               }
            }
            else if(this.mSlingShotState == §class§)
            {
               if(_loc3_.§!!8§)
               {
                  this.§?!+§(§>!,§);
               }
            }
            else if(this.mSlingShotState == §>!,§)
            {
               _loc3_.setPosition(this.§?!7§ - _loc3_.radius * Math.cos(this.§7T§ / (180 / Math.PI)),this.§1]§ + _loc3_.radius * Math.sin(this.§7T§ / (180 / Math.PI)));
               if(this.§%!!§)
               {
                  this.§0!9§(this.§5S§ / this.§@'§,this.§7T§);
               }
            }
         }
      }
      
      public function §0M§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§]?§ = null;
         if(this.§0A§.length > 0)
         {
            _loc5_ = this.§0A§[this.§%!H§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§0!9§(param3,param4);
      }
      
      protected function §0!9§(param1:Number, param2:Number) : void
      {
         var _loc3_:§]?§ = null;
         if(this.§0A§.length > 0)
         {
            _loc3_ = this.§0A§[this.§%!H§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§%!!§ = false;
         this.§^r§ = new Date().time;
         this.§ 6§.§"i§(_loc3_,param1,param2);
         this.§;!&§(this.§%!H§,_loc3_.§&!D§ > 0);
         this.§"!"§();
         if(this.§%!H§ >= this.§0A§.length)
         {
            this.§?!+§(§7!,§);
         }
         else
         {
            this.§?!+§(§`>§);
         }
      }
      
      protected function §"!"§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §2;§.playSound("BirdShot" + _loc1_);
      }
      
      public function §@!;§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§%!H§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§0A§.length)
         {
            if(this.mSlingShotState == §7P§)
            {
               this.§0A§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§0A§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§]?§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§]K§();
         if(this.§;x§ >= this.§0A§.length)
         {
            return false;
         }
         _loc1_ = this.§0A§[this.§;x§];
         _loc2_ = §4!%§.§`!+§(_loc1_.name).score;
         this.§ 6§.addScore(_loc2_,§6y§.§^C§,true,_loc1_.x,_loc1_.y - 3,§`b§.§1!E§(_loc1_.name));
         _loc1_.§'"§(-1,true);
         ++this.§;x§;
         return true;
      }
      
      public function §-q§() : int
      {
         var _loc2_:§]?§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§0A§)
         {
            _loc1_ += §4!%§.§`!+§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §72§() : int
      {
         return this.§+!D§;
      }
      
      public function §4?§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§2Q§ >= 0)
         {
            this.§2Q§ -= param1;
            if(this.§2Q§ <= 0)
            {
               _loc2_ = this.§ 6§.objects.§3!%§(this.§4§,this.§=!D§);
               if(_loc2_ < 0)
               {
                  this.§4O§(0.1);
                  this.§2Q§ = 0;
               }
               else if(!this.§ 6§.objects.§ n§(_loc2_).§-I§)
               {
                  this.§2Q§ = -1;
               }
               else if(this.§ 6§.objects.§ n§(_loc2_).§7!3§())
               {
                  this.§2Q§ = 2000;
               }
               else
               {
                  this.§2Q§ = 500;
               }
            }
         }
      }
      
      public function §+t§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§ 6§.objects.§3!%§(this.§4§,this.§=!D§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§4O§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§2Q§ = -1;
      }
      
      public function §4!A§(param1:Number, param2:Number) : void
      {
         this.§+x§.x = -param1;
         this.§+x§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §>!,§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §>!,§ && this.§5S§ > this.§@'§ * §#z§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§?!+§(§>!,§);
         var _loc1_:§]?§ = this.§0A§[this.§%!H§];
         _loc1_.§'"§(§8y§.§-r§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§]?§ = this.§0A§[this.§%!H§];
         _loc1_.§'"§(§8y§.§%]§);
      }
      
      public function shoot() : void
      {
         this.§%!!§ = true;
      }
      
      protected function §;!&§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§]?§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§0A§[param1])
         {
            _loc3_ = this.§0A§[param1];
            this.§>!3§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§+§(this.§0A§[param1]);
            }
            _loc3_.dispose();
            this.§0A§[param1] = null;
         }
         this.§0A§.splice(param1,1);
      }
      
      public function §+§(param1:§]?§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * § M§.§%v§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * § M§.§%v§) + Math.random() * -_loc8_ * 2;
            this.§ 6§.particles.§1C§(§`b§.§7M§,§<u§.§>7§,§`b§.§ "§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§`b§.§>!6§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§ 6§.particles.§1C§(§`b§.§ !0§,§<u§.§>7§,§`b§.§ "§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §25§(param1:§]?§) : void
      {
         this.§;!&§(this.§0A§.indexOf(param1));
      }
      
      public function §5R§() : void
      {
         var _loc2_:§]?§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§]?§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§0A§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§2!2§ - this.§0A§[_loc1_].x) * (this.§2!2§ - this.§0A§[_loc1_].x) + (this.§9!3§ - this.§0A§[_loc1_].y) * (this.§9!3§ - this.§0A§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§2!2§ - this.§0A§[_loc1_ + 1].x) * (this.§2!2§ - this.§0A§[_loc1_ + 1].x) + (this.§9!3§ - this.§0A§[_loc1_ + 1].y) * (this.§9!3§ - this.§0A§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§0A§[_loc1_];
               this.§0A§.splice(_loc1_,1);
               this.§0A§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§>!3§.numChildren > 0)
         {
            this.§>!3§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§0A§.length)
         {
            _loc2_ = this.§0A§[_loc1_];
            this.§>!3§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §,^§(param1:Number, param2:Number) : §]?§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§0A§.length)
         {
            if(this.§0A§[_loc3_])
            {
               if(this.§0A§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§0A§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §9?§(param1:Number, param2:Number) : §<+§
      {
         if(param1 >= this.§2!2§ - this.§@'§ / 4 && param1 <= this.§2!2§ + this.§@'§ / 4 && param2 >= this.§9!3§ - this.§@'§ / 4 && this.§9!3§ <= this.§=!D§)
         {
            return this;
         }
         return null;
      }
      
      public function §=>§(param1:§^o§) : void
      {
         var _loc3_:§]?§ = null;
         var _loc4_:§ S§ = null;
         param1.§+z§ = this.§2!2§;
         param1.§@!>§ = this.§9!3§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§0A§.length)
         {
            _loc3_ = this.§0A§[_loc2_];
            (_loc4_ = new § S§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§!@§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §[`§() : void
      {
         while(this.§0A§.length > 0)
         {
            this.§25§(this.§0A§[0]);
         }
      }
      
      public function §8^§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§0A§.length)
         {
            if(this.§0A§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§0A§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§2!2§ > param1.x && this.§2!2§ < param2.x && this.§9!3§ > param1.y && this.§9!3§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §3;§() : Array
      {
         return [this.§^!+§,this.§;!§];
      }
      
      public function §<e§(param1:String, param2:Number, param3:Number) : §]?§
      {
         var _loc4_:§]?§ = this.§7!D§(param1,param2,param3);
         this.§5R§();
         return _loc4_;
      }
      
      public function §^!#§() : Number
      {
         return this.§0A§.length;
      }
   }
}
