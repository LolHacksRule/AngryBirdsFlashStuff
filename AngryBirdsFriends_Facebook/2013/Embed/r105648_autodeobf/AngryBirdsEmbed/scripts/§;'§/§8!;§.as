package §;'§
{
   import §"X§.Texture;
   import §1!A§.§@k§;
   import §8T§.§@o§;
   import §9!#§.§+5§;
   import §9!#§.§5y§;
   import §;^§.§ @§;
   import §;^§.§+a§;
   import §;^§.Sprite;
   import §<!M§.§1!&§;
   import §=!K§.;
   import §=!K§.§@p§;
   import §?!8§.§2>§;
   import §[!=§.§3r§;
   import §[!=§.§>Z§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §8!;§
   {
      
      public static const §2$§:int = 0;
      
      public static const §7!5§:int = 1;
      
      public static const §[7§:int = 2;
      
      public static const §4'§:int = 3;
      
      public static const §;!?§:int = 5;
      
      public static const §9!C§:int = 3151368;
      
      protected static const §,!3§:int = 8;
      
      protected static const §>!@§:int = 0;
      
      public static const §4#§:Number = 46.25;
      
      public static const §%!'§:Number = 52.5;
      
      protected static const §'!§:Number = -0.7;
      
      protected static const §#@§:Number = 0;
      
      protected static var §`B§:Texture;
      
      public static const §4!I§:Number = 0.4;
       
      
      public var §2I§:§?!D§;
      
      public var § H§:Number;
      
      public var §=§:Number;
      
      public var §-^§:Number;
      
      protected var §^#§:Number;
      
      protected var §2!3§:Number;
      
      protected var § g§:Number;
      
      protected var §6-§:Number;
      
      public var §7Q§:Number;
      
      public var §,f§:Boolean = false;
      
      protected var §7!"§:Number;
      
      public var §7j§:Vector.<§%!,§>;
      
      public var §!Y§:int;
      
      public var §9@§:int;
      
      public var §>t§:Number;
      
      public var §^J§:Sprite;
      
      public var §8!6§:int = 0;
      
      public var §'!5§:Number = 0;
      
      public var §-"§:Array;
      
      public var §`J§:Array;
      
      public var mSlingShotState:int;
      
      public var §`=§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §&!;§:Boolean = false;
      
      public var §<!A§:Number;
      
      protected var §&m§:Boolean = false;
      
      protected var §>@§:Sprite;
      
      protected var §1l§:§+a§;
      
      protected var § B§:§+a§;
      
      protected var §?E§:Sprite;
      
      protected var §'2§:Sprite;
      
      protected var §`!C§:Sprite;
      
      protected var §02§:§ @§;
      
      protected var §63§:§ @§;
      
      private var §[r§:Number = 0;
      
      private var §!O§:int = 0;
      
      protected var §4j§:Number = -0.7;
      
      protected var §&l§:Number = 0;
      
      public function §8!;§(param1:§?!D§, param2:§1!&§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§@k§ = null;
         this.§7j§ = new Vector.<§%!,§>();
         super();
         this.§2I§ = param1;
         this.§>@§ = param3;
         if(param2)
         {
            this.setPosition(param2.§>P§,param2.§+C§);
            this.§ n§();
            _loc4_ = 0;
            while(_loc4_ < param2.§'!M§)
            {
               _loc5_ = param2.§4r§(_loc4_);
               this.§9I§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§!O§ = this.§]u§();
            this.§!Y§ = 0;
            if(this.§7j§.length <= 0)
            {
               §2>§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§ H§ + " " + this.§=§);
               this.§-h§(§4'§);
            }
            else
            {
               this.§-h§(§2$§);
            }
         }
         else
         {
            §2>§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§-h§(§4'§);
         }
         this.§<!A§ = 0;
         this.§1m§();
         this.update(0,true);
         this.§'I§();
         this.§+s§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§>@§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§[r§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§!Y§ < this.§7j§.length;
      }
      
      public function dispose() : void
      {
         while(this.§7j§.length > 0)
         {
            this.§&n§(0);
         }
         this.§7j§ = null;
         if(this.§>@§)
         {
            this.§>@§.dispose();
            this.§>@§ = null;
         }
         this.§^J§ = null;
         this.§-"§ = null;
         this.§`J§ = null;
      }
      
      public function §-a§(param1:String, param2:Number, param3:Number, param4:int = -1) : §%!,§
      {
         var _loc5_:§%!,§;
         (_loc5_ = this.§9I§(param1,param2,param3,param4)).§%!G§();
         this.§-h§(§[7§);
         return _loc5_;
      }
      
      protected function §9I§(param1:String, param2:Number, param3:Number, param4:int = -1) : §%!,§
      {
         var _loc5_:§%!,§ = new §%!,§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§7j§.push(_loc5_);
         }
         else
         {
            this.§7j§.splice(param4,0,_loc5_);
         }
         this.§^J§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §-h§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §2$§)
         {
            this.each();
            this.§>t§ = 1000;
         }
         else if(this.mSlingShotState == §7!5§)
         {
            this.each();
            this.§>t§ = 0;
         }
         else if(this.mSlingShotState == §[7§)
         {
            this.§>t§ = 10000;
            this.§&!;§ = false;
            this.each();
         }
         else if(this.mSlingShotState == §4'§)
         {
            this.each();
            this.§>t§ = 2000;
         }
         else if(this.mSlingShotState == §;!?§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§&!;§ = false;
               this.each();
               this.§7j§[this.§!Y§].setPosition(this.§ g§ - this.§7j§[this.§!Y§].radius * Math.cos(this.§'!5§ / (180 / Math.PI)),this.§6-§ + this.§7j§[this.§!Y§].radius * Math.sin(this.§'!5§ / (180 / Math.PI)));
            }
            else
            {
               this.each();
            }
         }
         this.mDragging = false;
      }
      
      public function get §">§() : §?!D§
      {
         return this.§2I§;
      }
      
      public function §@!-§() : Boolean
      {
         return this.mSlingShotState == §4'§ && this.§>t§ <= 0;
      }
      
      private function § n§() : void
      {
         var _loc1_:§#4§ = this.§]s§();
         var _loc2_:§@p§ = _loc1_.getFrame(0);
         var _loc3_:§@p§ = _loc1_.getFrame(1);
         this.§02§ = new § @§(_loc2_.texture);
         this.§02§.scaleX = _loc2_.scale;
         this.§02§.scaleY = _loc2_.scale;
         this.§63§ = new § @§(_loc3_.texture);
         this.§63§.scaleX = _loc3_.scale;
         this.§63§.scaleY = _loc3_.scale;
         this.§3c§();
         this.§,9§();
         this.§^J§ = new Sprite();
         this.§>@§.addChild(this.§02§);
         this.§>@§.addChild(this.§?E§);
         this.§>@§.addChild(this.§^J§);
         this.§>@§.addChild(this.§`!C§);
         this.§>@§.addChild(this.§'2§);
         this.§>@§.addChild(this.§63§);
         this.§-^§ = this.§=§ + 8.5;
      }
      
      protected function §]s§() : §#4§
      {
         return this.§2I§.§6?§.§]C§("SLINGSHOT");
      }
      
      public function §3c§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§^#§ = this.§ H§;
         this.§2!3§ = this.§=§;
         this.§7!"§ = §>-§.§"!N§;
         _loc1_ = null;
      }
      
      protected function §,9§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§`B§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §`B§ = this.§2I§.textureManager.§8!H§(_loc2_);
         }
         this.§`!C§ = new Sprite();
         var _loc1_:§ @§ = new § @§(§`B§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§`!C§.addChild(_loc1_);
         this.§?E§ = new Sprite();
         this.§1l§ = new §+a§(2,2,§9!C§);
         this.§?E§.addChild(this.§1l§);
         this.§'2§ = new Sprite();
         this.§ B§ = new §+a§(2,2,§9!C§);
         this.§'2§.addChild(this.§ B§);
      }
      
      public function §+s§(param1:Number) : void
      {
         var _loc2_:Number = this.§6-§ / §?!D§.§@!I§;
         var _loc3_:Number = this.§ g§ / §?!D§.§@!I§;
         var _loc4_:Number = 3.5 + 8 * ((this.§7!"§ - this.§7Q§) / this.§7!"§);
         this.§`!C§.x = _loc3_;
         this.§`!C§.y = _loc2_;
         this.§`!C§.rotation = -this.§'!5§ / (180 / Math.PI);
         this.§02§.x = this.§ H§ / §?!D§.§@!I§ - 3;
         this.§02§.y = this.§=§ / §?!D§.§@!I§ - 30;
         this.§63§.x = this.§ H§ / §?!D§.§@!I§ - 30;
         this.§63§.y = this.§=§ / §?!D§.§@!I§ - 30;
         this.§'2§.x = this.§ H§ / §?!D§.§@!I§ - 17;
         this.§'2§.y = this.§=§ / §?!D§.§@!I§ + 5;
         this.§'2§.rotation = Math.atan2(_loc2_ - this.§'2§.y,_loc3_ - this.§'2§.x);
         this.§?E§.x = this.§ H§ / §?!D§.§@!I§ + 22;
         this.§?E§.y = this.§=§ / §?!D§.§@!I§;
         this.§?E§.rotation = Math.atan2(_loc2_ - this.§?E§.y,_loc3_ - this.§?E§.x);
         this.§ B§.width = Math.sqrt(Math.pow(_loc3_ - this.§'2§.x,2) + Math.pow(_loc2_ - this.§'2§.y,2));
         this.§1l§.width = Math.sqrt(Math.pow(_loc3_ - this.§?E§.x,2) + Math.pow(_loc2_ - this.§?E§.y,2));
         this.§ B§.height = this.§1l§.height = _loc4_ * 2;
         this.§ B§.y = -this.§ B§.height / 2;
         this.§1l§.y = -this.§1l§.height / 2;
         this.§`=§ = false;
      }
      
      public function §5!+§() : void
      {
         while(this.§7j§.length > 0)
         {
            this.§&n§(0,true);
         }
         this.§&X§();
         this.§9I§("BIRD_SARDINE",this.§ H§,this.§=§);
         this.§-h§(§[7§);
      }
      
      protected function §&X§() : void
      {
         §@o§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§-h§(§;!?§);
      }
      
      public function each() : void
      {
         this.setNewCoordinatesForRubber(this.§^#§,this.§2!3§ + this.§7!"§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§ g§ == param1 && this.§6-§ == param2)
         {
            return true;
         }
         this.§7Q§ = Math.sqrt((param2 - this.§2!3§) * (param2 - this.§2!3§) + (param1 - this.§^#§) * (param1 - this.§^#§));
         if(this.§7Q§ > this.§7!"§)
         {
            if(param3)
            {
               this.§7Q§ = Math.sqrt((this.§6-§ - this.§2!3§) * (this.§6-§ - this.§2!3§) + (this.§ g§ - this.§^#§) * (this.§ g§ - this.§^#§));
               return false;
            }
            param1 = this.§^#§ + this.§7!"§ * (param1 - this.§^#§) / this.§7Q§;
            param2 = this.§2!3§ + this.§7!"§ * (param2 - this.§2!3§) / this.§7Q§;
            this.§7Q§ = this.§7!"§;
         }
         this.§ g§ = param1;
         this.§6-§ = param2;
         this.§'!5§ = Math.atan2(-(this.§6-§ - this.§2!3§),this.§ g§ - this.§^#§);
         this.§'!5§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§ g§ = param1 + this.§4j§;
            this.§6-§ = param2 + this.§&l§;
            this.§'!5§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§7!"§ / 2;
         if(this.§7Q§ > _loc7_ && this.§'!5§ > -90 - _loc4_ + _loc5_ && this.§'!5§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§^#§ + _loc7_ * (param1 - this.§^#§) / this.§7Q§;
            param2 = this.§2!3§ + _loc7_ * (param2 - this.§2!3§) / this.§7Q§;
            this.§7Q§ = _loc7_;
            this.§ g§ = param1;
            this.§6-§ = param2;
         }
         else if(this.§7Q§ > _loc7_ && this.§'!5§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§'!5§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§7!"§ - _loc7_) * (Math.abs(this.§'!5§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§^#§ + _loc8_ * (param1 - this.§^#§) / this.§7Q§;
            param2 = this.§2!3§ + _loc8_ * (param2 - this.§2!3§) / this.§7Q§;
            this.§7Q§ = _loc8_;
            this.§ g§ = param1;
            this.§6-§ = param2;
         }
         if(this.§7Q§ <= this.§7!"§ * 0.45)
         {
            this.§,f§ = true;
         }
         else if(this.§,f§ && this.§7Q§ >= this.§7!"§ * 0.8)
         {
            this.§5!>§();
            this.§,f§ = false;
         }
         this.§`=§ = true;
         return true;
      }
      
      protected function §5!>§() : void
      {
         §@o§.playSound("SlingshotStreched");
      }
      
      public function §`!%§(param1:Number) : void
      {
         this.setPosition(this.§ H§,this.§=§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§ H§;
         this.§ H§ = param1;
         var _loc5_:Number = param2 - this.§=§;
         this.§=§ = param2;
         this.§-^§ += _loc5_;
         this.§2!3§ += _loc5_;
         this.§6-§ += _loc5_;
         this.§^#§ += _loc4_;
         this.§ g§ += _loc4_;
         if(param3)
         {
            this.§+s§(0);
         }
         this.§`=§ = true;
      }
      
      public function §>0§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§%!,§ = null;
         _loc2_ = this.§7j§[this.§!Y§];
         var _loc3_:Number = this.§7Q§ / this.§7!"§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§8!;§.§%!'§) : Number(§8!;§.§4#§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §6v§() : Point
      {
         var _loc1_:§%!,§ = null;
         if(this.§7j§.length > this.§!Y§)
         {
            _loc1_ = this.§7j§[this.§!Y§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §?!J§() : Point
      {
         return new Point(this.§^#§,this.§2!3§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§%!,§ = null;
         this.§<!+§(param1);
         if(this.§`=§)
         {
            this.§+s§(param1);
         }
         this.§>t§ -= param1;
         if(this.§>t§ < 0)
         {
            this.§>t§ = 0;
         }
         if(this.mSlingShotState != §4'§)
         {
            this.§^-§(param1,param2);
            _loc3_ = null;
            if(this.§7j§.length > 0)
            {
               _loc3_ = this.§7j§[this.§!Y§];
            }
            if(_loc3_)
            {
               _loc3_.§@w§(param1);
            }
            if(!_loc3_)
            {
               this.§-h§(§4'§);
            }
            else if(this.mSlingShotState == §2$§)
            {
               if(this.§>t§ <= 0)
               {
                  this.§-h§(§7!5§);
                  _loc3_.§`,§();
               }
            }
            else if(this.mSlingShotState == §7!5§)
            {
               if(_loc3_.§9u§)
               {
                  this.§-h§(§[7§);
               }
            }
            else if(this.mSlingShotState == §[7§)
            {
               if(!_loc3_.§>!G§())
               {
                  _loc3_.setPosition(this.§ g§ - _loc3_.radius * Math.cos(this.§'!5§ / (180 / Math.PI)),this.§6-§ + _loc3_.radius * Math.sin(this.§'!5§ / (180 / Math.PI)));
               }
               if(this.§&!;§)
               {
                  this.§4B§(this.§7Q§ / this.§7!"§,this.§'!5§);
               }
            }
         }
      }
      
      public function §2,§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§%!,§ = null;
         if(this.§7j§.length > 0)
         {
            _loc5_ = this.§7j§[this.§!Y§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§4B§(param3,param4);
      }
      
      protected function §4B§(param1:Number, param2:Number) : void
      {
         var _loc3_:§%!,§ = null;
         this.§4j§ = §'!§;
         this.§&l§ = §#@§;
         if(this.§7j§.length > 0)
         {
            _loc3_ = this.§7j§[this.§!Y§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§&!;§ = false;
         this.§[r§ = new Date().time;
         this.§2I§.§5o§(_loc3_,param1,param2);
         this.§&n§(this.§!Y§,_loc3_.§&x§ > 0);
         this.§ else§();
         if(this.§!Y§ >= this.§7j§.length)
         {
            this.§-h§(§4'§);
         }
         else
         {
            this.§-h§(§2$§);
         }
      }
      
      protected function § else§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §@o§.playSound("BirdShot" + _loc1_);
      }
      
      public function §^-§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§!Y§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§7j§.length)
         {
            if(this.mSlingShotState == §;!?§)
            {
               this.§7j§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§7j§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§%!,§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.each();
         if(this.§9@§ >= this.§7j§.length)
         {
            return false;
         }
         _loc1_ = this.§7j§[this.§9@§];
         _loc2_ = §5y§.§6!%§(_loc1_.name).score;
         this.§2I§.addScore(_loc2_,§3,§.§1!!§,true,_loc1_.x,_loc1_.y - 3,§>Z§.§<!C§(_loc1_.name));
         _loc1_.§3§(-1,true);
         ++this.§9@§;
         return true;
      }
      
      public function §]u§() : int
      {
         var _loc2_:§%!,§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§7j§)
         {
            _loc1_ += §5y§.§6!%§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function § !H§() : int
      {
         return this.§!O§;
      }
      
      public function §<!+§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§<!A§ >= 0)
         {
            this.§<!A§ -= param1;
            if(this.§<!A§ <= 0)
            {
               _loc2_ = this.§2I§.objects.§`!A§(this.§^#§,this.§-^§);
               if(_loc2_ < 0)
               {
                  this.§`!%§(0.1);
                  this.§<!A§ = 0;
               }
               else if(!this.§2I§.objects.§,,§(_loc2_).§7b§)
               {
                  this.§<!A§ = -1;
               }
               else if(this.§2I§.objects.§,,§(_loc2_).§@!5§())
               {
                  this.§<!A§ = 2000;
               }
               else
               {
                  this.§<!A§ = 500;
               }
            }
         }
      }
      
      public function §'I§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§2I§.objects.§`!A§(this.§^#§,this.§-^§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§`!%§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§<!A§ = -1;
      }
      
      public function §+!>§(param1:Number, param2:Number) : void
      {
         this.§>@§.x = -param1;
         this.§>@§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §[7§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §[7§ && this.§7Q§ > this.§7!"§ * §4!I§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§-h§(§[7§);
         var _loc1_:§%!,§ = this.§7j§[this.§!Y§];
         _loc1_.§3§(§+5§.§!=§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§%!,§ = this.§7j§[this.§!Y§];
         _loc1_.§3§(§+5§.§[B§);
      }
      
      public function shoot() : void
      {
         this.§&!;§ = true;
      }
      
      protected function §&n§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§%!,§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§7j§[param1])
         {
            _loc3_ = this.§7j§[param1];
            this.§^J§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§3I§(this.§7j§[param1]);
            }
            _loc3_.dispose();
            this.§7j§[param1] = null;
         }
         this.§7j§.splice(param1,1);
      }
      
      public function §3I§(param1:§%!,§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §?!D§.§@!I§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §?!D§.§@!I§) + Math.random() * -_loc8_ * 2;
            this.§2I§.particles.§48§(§>Z§.§5e§,§3r§.§"H§,§>Z§.§%t§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§>Z§.§'T§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§2I§.particles.§48§(§>Z§.§=P§,§3r§.§"H§,§>Z§.§%t§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function § t§(param1:§%!,§) : void
      {
         this.§&n§(this.§7j§.indexOf(param1));
      }
      
      public function §1m§() : void
      {
         var _loc1_:§%!,§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§%!,§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§7j§.length - 1)
         {
            _loc1_ = this.§7j§[_loc2_];
            if(!(_loc1_.§9u§ && _loc2_ == 0))
            {
               _loc3_ = Math.sqrt((this.§ H§ - this.§7j§[_loc2_].x) * (this.§ H§ - this.§7j§[_loc2_].x) + (this.§=§ - this.§7j§[_loc2_].y) * (this.§=§ - this.§7j§[_loc2_].y));
               if((_loc4_ = Math.sqrt((this.§ H§ - this.§7j§[_loc2_ + 1].x) * (this.§ H§ - this.§7j§[_loc2_ + 1].x) + (this.§=§ - this.§7j§[_loc2_ + 1].y) * (this.§=§ - this.§7j§[_loc2_ + 1].y))) < _loc3_)
               {
                  _loc5_ = this.§7j§[_loc2_];
                  this.§7j§.splice(_loc2_,1);
                  this.§7j§.splice(_loc2_ + 1,0,_loc5_);
                  _loc2_ = Math.max(-1,_loc2_ - 2);
               }
            }
            _loc2_++;
         }
         while(this.§^J§.numChildren > 0)
         {
            this.§^J§.removeChildAt(0);
         }
         _loc2_ = 0;
         while(_loc2_ < this.§7j§.length)
         {
            _loc1_ = this.§7j§[_loc2_];
            this.§^J§.addChildAt(_loc1_.sprite,0);
            _loc2_++;
         }
      }
      
      public function §@&§(param1:Number, param2:Number) : §%!,§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§7j§.length)
         {
            if(this.§7j§[_loc3_])
            {
               if(this.§7j§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§7j§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §]q§(param1:Number, param2:Number) : §8!;§
      {
         if(param1 >= this.§ H§ - this.§7!"§ / 4 && param1 <= this.§ H§ + this.§7!"§ / 4 && param2 >= this.§=§ - this.§7!"§ / 4 && this.§=§ <= this.§-^§)
         {
            return this;
         }
         return null;
      }
      
      public function §0g§(param1:§1!&§) : void
      {
         var _loc3_:§%!,§ = null;
         var _loc4_:§@k§ = null;
         param1.§>P§ = this.§ H§;
         param1.§+C§ = this.§=§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§7j§.length)
         {
            _loc3_ = this.§7j§[_loc2_];
            (_loc4_ = new §@k§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§?!5§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §@@§() : void
      {
         while(this.§7j§.length > 0)
         {
            this.§ t§(this.§7j§[0]);
         }
      }
      
      public function §68§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§7j§.length)
         {
            if(this.§7j§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§7j§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§ H§ > param1.x && this.§ H§ < param2.x && this.§=§ > param1.y && this.§=§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §<q§() : Array
      {
         return [this.§63§,this.§02§];
      }
      
      public function §[!'§(param1:String, param2:Number, param3:Number) : §%!,§
      {
         var _loc4_:§%!,§ = this.§9I§(param1,param2,param3);
         this.§1m§();
         return _loc4_;
      }
      
      public function §true §() : Number
      {
         return this.§7j§.length;
      }
      
      public function §6F§() : Boolean
      {
         return this.§&m§;
      }
   }
}
