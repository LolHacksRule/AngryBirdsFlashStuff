package §[x§
{
   import §#J§.§'b§;
   import §#J§.§>=§;
   import §1n§.§1D§;
   import §1n§.§?!C§;
   import §3"§.§8+§;
   import §3O§.§@6§;
   import §4N§.§&!@§;
   import §4N§.§7E§;
   import §5!@§.§0!7§;
   import §;8§.§3f§;
   import §[P§.Texture;
   import §^V§.§09§;
   import §^V§.§1!,§;
   import §^V§.Sprite;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §9"§
   {
      
      public static const §8S§:int = 0;
      
      public static const §1R§:int = 1;
      
      public static const §^I§:int = 2;
      
      public static const §<g§:int = 3;
      
      public static const §5c§:int = 5;
      
      public static const §9f§:int = 3151368;
      
      protected static const §#9§:int = 8;
      
      protected static const §,!"§:int = 0;
      
      public static const §<x§:Number = 46.25;
      
      public static const §?,§:Number = 52.5;
      
      protected static var §<O§:Texture;
      
      public static const §@4§:Number = 0.4;
       
      
      public var §1! §:§2^§;
      
      public var §-Y§:Number;
      
      public var §%!;§:Number;
      
      public var §39§:Number;
      
      protected var §"2§:Number;
      
      protected var §&l§:Number;
      
      protected var §2!9§:Number;
      
      protected var §'C§:Number;
      
      public var §8]§:Number;
      
      public var §5f§:Boolean = false;
      
      protected var §-v§:Number;
      
      public var §]<§:Vector.<§,1§>;
      
      public var §=I§:int;
      
      public var §"j§:int;
      
      public var §+9§:Number;
      
      public var §-o§:Sprite;
      
      public var §2!B§:int = 0;
      
      public var §8E§:Number = 0;
      
      public var §?O§:Array;
      
      public var §'g§:Array;
      
      public var mSlingShotState:int;
      
      public var §%r§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §[6§:Boolean = false;
      
      public var §!!&§:Number;
      
      protected var §1-§:Sprite;
      
      protected var §5s§:§09§;
      
      protected var §3#§:§09§;
      
      protected var §6"§:Sprite;
      
      protected var §5!9§:Sprite;
      
      protected var §%9§:Sprite;
      
      protected var §6!A§:§1!,§;
      
      protected var §7j§:§1!,§;
      
      private var §,j§:Number = 0;
      
      private var §>8§:int = 0;
      
      public function §9"§(param1:§2^§, param2:§8+§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§0!7§ = null;
         this.§]<§ = new Vector.<§,1§>();
         super();
         this.§1! § = param1;
         this.§1-§ = param3;
         if(param2)
         {
            this.setPosition(param2.§true §,param2.§&J§);
            this.§0<§();
            _loc4_ = 0;
            while(_loc4_ < param2.§1x§)
            {
               _loc5_ = param2.§ =§(_loc4_);
               this.§-5§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§>8§ = this.§%!%§();
            this.§=I§ = 0;
            if(this.§]<§.length <= 0)
            {
               §3f§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§-Y§ + " " + this.§%!;§);
               this.§`!<§(§<g§);
            }
            else
            {
               this.§`!<§(§8S§);
            }
         }
         else
         {
            §3f§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§`!<§(§<g§);
         }
         this.§!!&§ = 0;
         this.§8T§();
         this.update(0,true);
         this.§9-§();
         this.§9V§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§1-§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§,j§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§=I§ < this.§]<§.length;
      }
      
      public function dispose() : void
      {
         while(this.§]<§.length > 0)
         {
            this.§!3§(0);
         }
         this.§]<§ = null;
         if(this.§1-§)
         {
            this.§1-§.dispose();
            this.§1-§ = null;
         }
         this.§-o§ = null;
         this.§?O§ = null;
         this.§'g§ = null;
      }
      
      public function §'!8§(param1:String, param2:Number, param3:Number, param4:int = -1) : §,1§
      {
         var _loc5_:§,1§;
         (_loc5_ = this.§-5§(param1,param2,param3,param4)).§"Y§();
         return _loc5_;
      }
      
      protected function §-5§(param1:String, param2:Number, param3:Number, param4:int = -1) : §,1§
      {
         var _loc5_:§,1§ = new §,1§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§]<§.push(_loc5_);
         }
         else
         {
            this.§]<§.splice(param4,0,_loc5_);
         }
         this.§-o§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §`!<§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §8S§)
         {
            this.§49§();
            this.§+9§ = 1000;
         }
         else if(this.mSlingShotState == §1R§)
         {
            this.§49§();
            this.§+9§ = 0;
         }
         else if(this.mSlingShotState == §^I§)
         {
            this.§+9§ = 10000;
            this.§[6§ = false;
            this.§49§();
         }
         else if(this.mSlingShotState == §<g§)
         {
            this.§49§();
            this.§+9§ = 2000;
         }
         else if(this.mSlingShotState == §5c§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§[6§ = false;
               this.§49§();
               this.§]<§[this.§=I§].setPosition(this.§2!9§ - this.§]<§[this.§=I§].radius * Math.cos(this.§8E§ / (180 / Math.PI)),this.§'C§ + this.§]<§[this.§=I§].radius * Math.sin(this.§8E§ / (180 / Math.PI)));
            }
            else
            {
               this.§49§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §01§() : §2^§
      {
         return this.§1! §;
      }
      
      public function §[§() : Boolean
      {
         return this.mSlingShotState == §<g§ && this.§+9§ <= 0;
      }
      
      private function §0<§() : void
      {
         var _loc1_:§?!C§ = this.§1! §.§0!§.§9$§("SLINGSHOT");
         var _loc2_:§1D§ = _loc1_.getFrame(0);
         var _loc3_:§1D§ = _loc1_.getFrame(1);
         this.§6!A§ = new §1!,§(_loc2_.texture);
         this.§6!A§.scaleX = _loc2_.scale;
         this.§6!A§.scaleY = _loc2_.scale;
         this.§7j§ = new §1!,§(_loc3_.texture);
         this.§7j§.scaleX = _loc3_.scale;
         this.§7j§.scaleY = _loc3_.scale;
         this.§,B§();
         this.§=A§();
         this.§-o§ = new Sprite();
         this.§1-§.addChild(this.§6!A§);
         this.§1-§.addChild(this.§6"§);
         this.§1-§.addChild(this.§-o§);
         this.§1-§.addChild(this.§%9§);
         this.§1-§.addChild(this.§5!9§);
         this.§1-§.addChild(this.§7j§);
         this.§39§ = this.§%!;§ + 8.5;
      }
      
      public function §,B§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§"2§ = this.§-Y§;
         this.§&l§ = this.§%!;§;
         this.§-v§ = §`5§.§5M§;
         _loc1_ = null;
      }
      
      protected function §=A§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§<O§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §<O§ = this.§1! §.textureManager.§]C§(_loc2_);
         }
         this.§%9§ = new Sprite();
         var _loc1_:§1!,§ = new §1!,§(§<O§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§%9§.addChild(_loc1_);
         this.§6"§ = new Sprite();
         this.§5s§ = new §09§(2,2,§9f§);
         this.§6"§.addChild(this.§5s§);
         this.§5!9§ = new Sprite();
         this.§3#§ = new §09§(2,2,§9f§);
         this.§5!9§.addChild(this.§3#§);
      }
      
      public function §9V§(param1:Number) : void
      {
         var _loc2_:Number = this.§'C§ / §2^§.§,]§;
         var _loc3_:Number = this.§2!9§ / §2^§.§,]§;
         var _loc4_:Number = 3.5 + 8 * ((this.§-v§ - this.§8]§) / this.§-v§);
         this.§%9§.x = _loc3_;
         this.§%9§.y = _loc2_;
         this.§%9§.rotation = -this.§8E§ / (180 / Math.PI);
         this.§6!A§.x = this.§-Y§ / §2^§.§,]§ - 3;
         this.§6!A§.y = this.§%!;§ / §2^§.§,]§ - 30;
         this.§7j§.x = this.§-Y§ / §2^§.§,]§ - 30;
         this.§7j§.y = this.§%!;§ / §2^§.§,]§ - 30;
         this.§5!9§.x = this.§-Y§ / §2^§.§,]§ - 17;
         this.§5!9§.y = this.§%!;§ / §2^§.§,]§ + 5;
         this.§5!9§.rotation = Math.atan2(_loc2_ - this.§5!9§.y,_loc3_ - this.§5!9§.x);
         this.§6"§.x = this.§-Y§ / §2^§.§,]§ + 22;
         this.§6"§.y = this.§%!;§ / §2^§.§,]§;
         this.§6"§.rotation = Math.atan2(_loc2_ - this.§6"§.y,_loc3_ - this.§6"§.x);
         this.§3#§.width = Math.sqrt(Math.pow(_loc3_ - this.§5!9§.x,2) + Math.pow(_loc2_ - this.§5!9§.y,2));
         this.§5s§.width = Math.sqrt(Math.pow(_loc3_ - this.§6"§.x,2) + Math.pow(_loc2_ - this.§6"§.y,2));
         this.§3#§.height = this.§5s§.height = _loc4_ * 2;
         this.§3#§.y = -this.§3#§.height / 2;
         this.§5s§.y = -this.§5s§.height / 2;
         this.§%r§ = false;
      }
      
      public function §4x§() : void
      {
         while(this.§]<§.length > 0)
         {
            this.§!3§(0,true);
         }
         this.§-=§();
         this.§-5§("BIRD_SARDINE",this.§-Y§,this.§%!;§);
         this.§`!<§(§^I§);
      }
      
      protected function §-=§() : void
      {
         §@6§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§`!<§(§5c§);
      }
      
      public function §49§() : void
      {
         this.setNewCoordinatesForRubber(this.§"2§,this.§&l§ + this.§-v§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§2!9§ == param1 && this.§'C§ == param2)
         {
            return true;
         }
         this.§8]§ = Math.sqrt((param2 - this.§&l§) * (param2 - this.§&l§) + (param1 - this.§"2§) * (param1 - this.§"2§));
         if(this.§8]§ > this.§-v§)
         {
            if(param3)
            {
               this.§8]§ = Math.sqrt((this.§'C§ - this.§&l§) * (this.§'C§ - this.§&l§) + (this.§2!9§ - this.§"2§) * (this.§2!9§ - this.§"2§));
               return false;
            }
            param1 = this.§"2§ + this.§-v§ * (param1 - this.§"2§) / this.§8]§;
            param2 = this.§&l§ + this.§-v§ * (param2 - this.§&l§) / this.§8]§;
            this.§8]§ = this.§-v§;
         }
         this.§2!9§ = param1;
         this.§'C§ = param2;
         this.§8E§ = Math.atan2(-(this.§'C§ - this.§&l§),this.§2!9§ - this.§"2§);
         this.§8E§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§2!9§ = param1 - 0.7;
            this.§'C§ = param2;
            this.§8E§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§-v§ / 2;
         if(this.§8]§ > _loc7_ && this.§8E§ > -90 - _loc4_ + _loc5_ && this.§8E§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§"2§ + _loc7_ * (param1 - this.§"2§) / this.§8]§;
            param2 = this.§&l§ + _loc7_ * (param2 - this.§&l§) / this.§8]§;
            this.§8]§ = _loc7_;
            this.§2!9§ = param1;
            this.§'C§ = param2;
         }
         else if(this.§8]§ > _loc7_ && this.§8E§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§8E§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§-v§ - _loc7_) * (Math.abs(this.§8E§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§"2§ + _loc8_ * (param1 - this.§"2§) / this.§8]§;
            param2 = this.§&l§ + _loc8_ * (param2 - this.§&l§) / this.§8]§;
            this.§8]§ = _loc8_;
            this.§2!9§ = param1;
            this.§'C§ = param2;
         }
         if(this.§8]§ <= this.§-v§ * 0.45)
         {
            this.§5f§ = true;
         }
         else if(this.§5f§ && this.§8]§ >= this.§-v§ * 0.8)
         {
            this.§]L§();
            this.§5f§ = false;
         }
         this.§%r§ = true;
         return true;
      }
      
      protected function §]L§() : void
      {
         §@6§.playSound("SlingshotStreched");
      }
      
      public function §7z§(param1:Number) : void
      {
         this.setPosition(this.§-Y§,this.§%!;§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§-Y§;
         this.§-Y§ = param1;
         var _loc5_:Number = param2 - this.§%!;§;
         this.§%!;§ = param2;
         this.§39§ += _loc5_;
         this.§&l§ += _loc5_;
         this.§'C§ += _loc5_;
         this.§"2§ += _loc4_;
         this.§2!9§ += _loc4_;
         if(param3)
         {
            this.§9V§(0);
         }
         this.§%r§ = true;
      }
      
      public function §4$§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§,1§ = null;
         _loc2_ = this.§]<§[this.§=I§];
         var _loc3_:Number = this.§8]§ / this.§-v§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§9"§.§?,§) : Number(§9"§.§<x§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §>A§() : Point
      {
         var _loc1_:§,1§ = null;
         if(this.§]<§.length > this.§=I§)
         {
            _loc1_ = this.§]<§[this.§=I§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §"!<§() : Point
      {
         return new Point(this.§"2§,this.§&l§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§,1§ = null;
         this.§#2§(param1);
         if(this.§%r§)
         {
            this.§9V§(param1);
         }
         this.§+9§ -= param1;
         if(this.§+9§ < 0)
         {
            this.§+9§ = 0;
         }
         if(this.mSlingShotState != §<g§)
         {
            this.§9!&§(param1,param2);
            _loc3_ = null;
            if(this.§]<§.length > 0)
            {
               _loc3_ = this.§]<§[this.§=I§];
            }
            if(_loc3_)
            {
               _loc3_.§=x§(param1);
            }
            if(!_loc3_)
            {
               this.§`!<§(§<g§);
            }
            else if(this.mSlingShotState == §8S§)
            {
               if(this.§+9§ <= 0)
               {
                  this.§`!<§(§1R§);
                  _loc3_.§@A§();
               }
            }
            else if(this.mSlingShotState == §1R§)
            {
               if(_loc3_.§6E§)
               {
                  this.§`!<§(§^I§);
               }
            }
            else if(this.mSlingShotState == §^I§)
            {
               _loc3_.setPosition(this.§2!9§ - _loc3_.radius * Math.cos(this.§8E§ / (180 / Math.PI)),this.§'C§ + _loc3_.radius * Math.sin(this.§8E§ / (180 / Math.PI)));
               if(this.§[6§)
               {
                  this.§8r§(this.§8]§ / this.§-v§,this.§8E§);
               }
            }
         }
      }
      
      public function §5%§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§,1§ = null;
         if(this.§]<§.length > 0)
         {
            _loc5_ = this.§]<§[this.§=I§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§8r§(param3,param4);
      }
      
      protected function §8r§(param1:Number, param2:Number) : void
      {
         var _loc3_:§,1§ = null;
         if(this.§]<§.length > 0)
         {
            _loc3_ = this.§]<§[this.§=I§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§[6§ = false;
         this.§,j§ = new Date().time;
         this.§1! §.§,0§(_loc3_,param1,param2);
         this.§!3§(this.§=I§,_loc3_.§2@§ > 0);
         this.§4,§();
         if(this.§=I§ >= this.§]<§.length)
         {
            this.§`!<§(§<g§);
         }
         else
         {
            this.§`!<§(§8S§);
         }
      }
      
      protected function §4,§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §@6§.playSound("BirdShot" + _loc1_);
      }
      
      public function §9!&§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§=I§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§]<§.length)
         {
            if(this.mSlingShotState == §5c§)
            {
               this.§]<§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§]<§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§,1§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§49§();
         if(this.§"j§ >= this.§]<§.length)
         {
            return false;
         }
         _loc1_ = this.§]<§[this.§"j§];
         _loc2_ = §&!@§.§9B§(_loc1_.name).score;
         this.§1! §.addScore(_loc2_,§^;§.§'s§,true,_loc1_.x,_loc1_.y - 3,§'b§.§+[§(_loc1_.name));
         _loc1_.§`+§(-1,true);
         ++this.§"j§;
         return true;
      }
      
      public function §%!%§() : int
      {
         var _loc2_:§,1§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§]<§)
         {
            _loc1_ += §&!@§.§9B§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §1!5§() : int
      {
         return this.§>8§;
      }
      
      public function §#2§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§!!&§ >= 0)
         {
            this.§!!&§ -= param1;
            if(this.§!!&§ <= 0)
            {
               _loc2_ = this.§1! §.objects.§9!0§(this.§"2§,this.§39§);
               if(_loc2_ < 0)
               {
                  this.§7z§(0.1);
                  this.§!!&§ = 0;
               }
               else if(!this.§1! §.objects.§!§(_loc2_).§@!!§)
               {
                  this.§!!&§ = -1;
               }
               else if(this.§1! §.objects.§!§(_loc2_).§2h§())
               {
                  this.§!!&§ = 2000;
               }
               else
               {
                  this.§!!&§ = 500;
               }
            }
         }
      }
      
      public function §9-§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§1! §.objects.§9!0§(this.§"2§,this.§39§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§7z§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§!!&§ = -1;
      }
      
      public function §<E§(param1:Number, param2:Number) : void
      {
         this.§1-§.x = -param1;
         this.§1-§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §^I§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §^I§ && this.§8]§ > this.§-v§ * §@4§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§`!<§(§^I§);
         var _loc1_:§,1§ = this.§]<§[this.§=I§];
         _loc1_.§`+§(§7E§.§4B§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§,1§ = this.§]<§[this.§=I§];
         _loc1_.§`+§(§7E§.§"n§);
      }
      
      public function shoot() : void
      {
         this.§[6§ = true;
      }
      
      protected function §!3§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§,1§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§]<§[param1])
         {
            _loc3_ = this.§]<§[param1];
            this.§-o§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§;>§(this.§]<§[param1]);
            }
            _loc3_.dispose();
            this.§]<§[param1] = null;
         }
         this.§]<§.splice(param1,1);
      }
      
      public function §;>§(param1:§,1§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §2^§.§,]§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §2^§.§,]§) + Math.random() * -_loc8_ * 2;
            this.§1! §.particles.§-X§(§'b§.§"x§,§>=§.§>!5§,§'b§.§=<§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§'b§.§@#§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§1! §.particles.§-X§(§'b§.§,U§,§>=§.§>!5§,§'b§.§=<§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §0!;§(param1:§,1§) : void
      {
         this.§!3§(this.§]<§.indexOf(param1));
      }
      
      public function §8T§() : void
      {
         var _loc2_:§,1§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§,1§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§]<§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§-Y§ - this.§]<§[_loc1_].x) * (this.§-Y§ - this.§]<§[_loc1_].x) + (this.§%!;§ - this.§]<§[_loc1_].y) * (this.§%!;§ - this.§]<§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§-Y§ - this.§]<§[_loc1_ + 1].x) * (this.§-Y§ - this.§]<§[_loc1_ + 1].x) + (this.§%!;§ - this.§]<§[_loc1_ + 1].y) * (this.§%!;§ - this.§]<§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§]<§[_loc1_];
               this.§]<§.splice(_loc1_,1);
               this.§]<§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§-o§.numChildren > 0)
         {
            this.§-o§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§]<§.length)
         {
            _loc2_ = this.§]<§[_loc1_];
            this.§-o§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §with§(param1:Number, param2:Number) : §,1§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§]<§.length)
         {
            if(this.§]<§[_loc3_])
            {
               if(this.§]<§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§]<§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §+x§(param1:Number, param2:Number) : §9"§
      {
         if(param1 >= this.§-Y§ - this.§-v§ / 4 && param1 <= this.§-Y§ + this.§-v§ / 4 && param2 >= this.§%!;§ - this.§-v§ / 4 && this.§%!;§ <= this.§39§)
         {
            return this;
         }
         return null;
      }
      
      public function §9C§(param1:§8+§) : void
      {
         var _loc3_:§,1§ = null;
         var _loc4_:§0!7§ = null;
         param1.§true § = this.§-Y§;
         param1.§&J§ = this.§%!;§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§]<§.length)
         {
            _loc3_ = this.§]<§[_loc2_];
            (_loc4_ = new §0!7§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§=&§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §2I§() : void
      {
         while(this.§]<§.length > 0)
         {
            this.§0!;§(this.§]<§[0]);
         }
      }
      
      public function §1!'§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§]<§.length)
         {
            if(this.§]<§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§]<§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§-Y§ > param1.x && this.§-Y§ < param2.x && this.§%!;§ > param1.y && this.§%!;§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §7x§() : Array
      {
         return [this.§7j§,this.§6!A§];
      }
      
      public function §+;§(param1:String, param2:Number, param3:Number) : §,1§
      {
         var _loc4_:§,1§ = this.§-5§(param1,param2,param3);
         this.§8T§();
         return _loc4_;
      }
      
      public function §,!;§() : Number
      {
         return this.§]<§.length;
      }
   }
}
