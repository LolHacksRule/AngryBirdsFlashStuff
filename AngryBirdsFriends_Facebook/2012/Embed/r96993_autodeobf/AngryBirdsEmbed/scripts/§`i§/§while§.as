package §`i§
{
   import §'N§.§^]§;
   import §-!C§.§3!H§;
   import §0!D§.§+r§;
   import §3v§.§1a§;
   import §6u§.§!B§;
   import §6u§.§@h§;
   import §<!<§.§6t§;
   import §<!<§.§>'§;
   import §>u§.Texture;
   import §]!6§.§8D§;
   import §]!6§.§>T§;
   import §]!6§.Sprite;
   import §]"§.§4!F§;
   import §]"§.§=j§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §while§
   {
      
      public static const §<$§:int = 0;
      
      public static const §#4§:int = 1;
      
      public static const §"F§:int = 2;
      
      public static const §,?§:int = 3;
      
      public static const §^K§:int = 5;
      
      public static const § null§:int = 3151368;
      
      protected static const §>8§:int = 8;
      
      protected static const §2V§:int = 0;
      
      public static const §"5§:Number = 46.25;
      
      public static const §@A§:Number = 52.5;
      
      protected static const §"!-§:Number = -0.7;
      
      protected static const §"C§:Number = 0;
      
      protected static var §8G§:Texture;
      
      public static const §;!A§:Number = 0.4;
       
      
      public var §"8§:§2W§;
      
      public var §4F§:Number;
      
      public var §1v§:Number;
      
      public var §">§:Number;
      
      protected var §break§:Number;
      
      protected var §[k§:Number;
      
      protected var §@b§:Number;
      
      protected var §5z§:Number;
      
      public var §>s§:Number;
      
      public var §^!0§:Boolean = false;
      
      protected var §"!8§:Number;
      
      public var §"D§:Vector.<§6+§>;
      
      public var §`!'§:int;
      
      public var §package§:int;
      
      public var §&V§:Number;
      
      public var §%e§:Sprite;
      
      public var §?u§:int = 0;
      
      public var §+T§:Number = 0;
      
      public var §^!@§:Array;
      
      public var §'&§:Array;
      
      public var mSlingShotState:int;
      
      public var §41§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §"v§:Boolean = false;
      
      public var §<!$§:Number;
      
      protected var §^!>§:Sprite;
      
      protected var § y§:§8D§;
      
      protected var §,D§:§8D§;
      
      protected var § d§:Sprite;
      
      protected var §0Z§:Sprite;
      
      protected var §,j§:Sprite;
      
      protected var §5W§:§>T§;
      
      protected var §8§:§>T§;
      
      private var §5k§:Number = 0;
      
      private var §7-§:int = 0;
      
      protected var §;O§:Number = -0.7;
      
      protected var §92§:Number = 0;
      
      public function §while§(param1:§2W§, param2:§3!H§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§+r§ = null;
         this.§"D§ = new Vector.<§6+§>();
         super();
         this.§"8§ = param1;
         this.§^!>§ = param3;
         if(param2)
         {
            this.setPosition(param2.§;E§,param2.§=@§);
            this.§`7§();
            _loc4_ = 0;
            while(_loc4_ < param2.§5%§)
            {
               _loc5_ = param2.§=o§(_loc4_);
               this.§^`§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§7-§ = this.§8!<§();
            this.§`!'§ = 0;
            if(this.§"D§.length <= 0)
            {
               §1a§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§4F§ + " " + this.§1v§);
               this.§^!;§(§,?§);
            }
            else
            {
               this.§^!;§(§<$§);
            }
         }
         else
         {
            §1a§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§^!;§(§,?§);
         }
         this.§<!$§ = 0;
         this.§=!D§();
         this.update(0,true);
         this.§<§();
         this.§^"§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§^!>§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§5k§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§`!'§ < this.§"D§.length;
      }
      
      public function dispose() : void
      {
         while(this.§"D§.length > 0)
         {
            this.§31§(0);
         }
         this.§"D§ = null;
         if(this.§^!>§)
         {
            this.§^!>§.dispose();
            this.§^!>§ = null;
         }
         this.§%e§ = null;
         this.§^!@§ = null;
         this.§'&§ = null;
      }
      
      public function §&!+§(param1:String, param2:Number, param3:Number, param4:int = -1) : §6+§
      {
         var _loc5_:§6+§;
         (_loc5_ = this.§^`§(param1,param2,param3,param4)).§64§();
         return _loc5_;
      }
      
      protected function §^`§(param1:String, param2:Number, param3:Number, param4:int = -1) : §6+§
      {
         var _loc5_:§6+§ = new §6+§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§"D§.push(_loc5_);
         }
         else
         {
            this.§"D§.splice(param4,0,_loc5_);
         }
         this.§%e§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §^!;§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §<$§)
         {
            this.§6w§();
            this.§&V§ = 1000;
         }
         else if(this.mSlingShotState == §#4§)
         {
            this.§6w§();
            this.§&V§ = 0;
         }
         else if(this.mSlingShotState == §"F§)
         {
            this.§&V§ = 10000;
            this.§"v§ = false;
            this.§6w§();
         }
         else if(this.mSlingShotState == §,?§)
         {
            this.§6w§();
            this.§&V§ = 2000;
         }
         else if(this.mSlingShotState == §^K§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§"v§ = false;
               this.§6w§();
               this.§"D§[this.§`!'§].setPosition(this.§@b§ - this.§"D§[this.§`!'§].radius * Math.cos(this.§+T§ / (180 / Math.PI)),this.§5z§ + this.§"D§[this.§`!'§].radius * Math.sin(this.§+T§ / (180 / Math.PI)));
            }
            else
            {
               this.§6w§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §7A§() : §2W§
      {
         return this.§"8§;
      }
      
      public function §5e§() : Boolean
      {
         return this.mSlingShotState == §,?§ && this.§&V§ <= 0;
      }
      
      private function §`7§() : void
      {
         var _loc1_:§@h§ = this.§"8§.§9V§.§`Y§("SLINGSHOT");
         var _loc2_:§!B§ = _loc1_.getFrame(0);
         var _loc3_:§!B§ = _loc1_.getFrame(1);
         this.§5W§ = new §>T§(_loc2_.texture);
         this.§5W§.scaleX = _loc2_.scale;
         this.§5W§.scaleY = _loc2_.scale;
         this.§8§ = new §>T§(_loc3_.texture);
         this.§8§.scaleX = _loc3_.scale;
         this.§8§.scaleY = _loc3_.scale;
         this.§%!&§();
         this.§!=§();
         this.§%e§ = new Sprite();
         this.§^!>§.addChild(this.§5W§);
         this.§^!>§.addChild(this.§ d§);
         this.§^!>§.addChild(this.§%e§);
         this.§^!>§.addChild(this.§,j§);
         this.§^!>§.addChild(this.§0Z§);
         this.§^!>§.addChild(this.§8§);
         this.§">§ = this.§1v§ + 8.5;
      }
      
      public function §%!&§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§break§ = this.§4F§;
         this.§[k§ = this.§1v§;
         this.§"!8§ = §+3§.§?5§;
         _loc1_ = null;
      }
      
      protected function §!=§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§8G§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §8G§ = this.§"8§.textureManager.§=_§(_loc2_);
         }
         this.§,j§ = new Sprite();
         var _loc1_:§>T§ = new §>T§(§8G§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§,j§.addChild(_loc1_);
         this.§ d§ = new Sprite();
         this.§ y§ = new §8D§(2,2,§ null§);
         this.§ d§.addChild(this.§ y§);
         this.§0Z§ = new Sprite();
         this.§,D§ = new §8D§(2,2,§ null§);
         this.§0Z§.addChild(this.§,D§);
      }
      
      public function §^"§(param1:Number) : void
      {
         var _loc2_:Number = this.§5z§ / §2W§.§0;§;
         var _loc3_:Number = this.§@b§ / §2W§.§0;§;
         var _loc4_:Number = 3.5 + 8 * ((this.§"!8§ - this.§>s§) / this.§"!8§);
         this.§,j§.x = _loc3_;
         this.§,j§.y = _loc2_;
         this.§,j§.rotation = -this.§+T§ / (180 / Math.PI);
         this.§5W§.x = this.§4F§ / §2W§.§0;§ - 3;
         this.§5W§.y = this.§1v§ / §2W§.§0;§ - 30;
         this.§8§.x = this.§4F§ / §2W§.§0;§ - 30;
         this.§8§.y = this.§1v§ / §2W§.§0;§ - 30;
         this.§0Z§.x = this.§4F§ / §2W§.§0;§ - 17;
         this.§0Z§.y = this.§1v§ / §2W§.§0;§ + 5;
         this.§0Z§.rotation = Math.atan2(_loc2_ - this.§0Z§.y,_loc3_ - this.§0Z§.x);
         this.§ d§.x = this.§4F§ / §2W§.§0;§ + 22;
         this.§ d§.y = this.§1v§ / §2W§.§0;§;
         this.§ d§.rotation = Math.atan2(_loc2_ - this.§ d§.y,_loc3_ - this.§ d§.x);
         this.§,D§.width = Math.sqrt(Math.pow(_loc3_ - this.§0Z§.x,2) + Math.pow(_loc2_ - this.§0Z§.y,2));
         this.§ y§.width = Math.sqrt(Math.pow(_loc3_ - this.§ d§.x,2) + Math.pow(_loc2_ - this.§ d§.y,2));
         this.§,D§.height = this.§ y§.height = _loc4_ * 2;
         this.§,D§.y = -this.§,D§.height / 2;
         this.§ y§.y = -this.§ y§.height / 2;
         this.§41§ = false;
      }
      
      public function §"@§() : void
      {
         while(this.§"D§.length > 0)
         {
            this.§31§(0,true);
         }
         this.§?&§();
         this.§^`§("BIRD_SARDINE",this.§4F§,this.§1v§);
         this.§^!;§(§"F§);
      }
      
      protected function §?&§() : void
      {
         §^]§.§1g§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§^!;§(§^K§);
      }
      
      public function §6w§() : void
      {
         this.setNewCoordinatesForRubber(this.§break§,this.§[k§ + this.§"!8§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§@b§ == param1 && this.§5z§ == param2)
         {
            return true;
         }
         this.§>s§ = Math.sqrt((param2 - this.§[k§) * (param2 - this.§[k§) + (param1 - this.§break§) * (param1 - this.§break§));
         if(this.§>s§ > this.§"!8§)
         {
            if(param3)
            {
               this.§>s§ = Math.sqrt((this.§5z§ - this.§[k§) * (this.§5z§ - this.§[k§) + (this.§@b§ - this.§break§) * (this.§@b§ - this.§break§));
               return false;
            }
            param1 = this.§break§ + this.§"!8§ * (param1 - this.§break§) / this.§>s§;
            param2 = this.§[k§ + this.§"!8§ * (param2 - this.§[k§) / this.§>s§;
            this.§>s§ = this.§"!8§;
         }
         this.§@b§ = param1;
         this.§5z§ = param2;
         this.§+T§ = Math.atan2(-(this.§5z§ - this.§[k§),this.§@b§ - this.§break§);
         this.§+T§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§@b§ = param1 + this.§;O§;
            this.§5z§ = param2 + this.§92§;
            this.§+T§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§"!8§ / 2;
         if(this.§>s§ > _loc7_ && this.§+T§ > -90 - _loc4_ + _loc5_ && this.§+T§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§break§ + _loc7_ * (param1 - this.§break§) / this.§>s§;
            param2 = this.§[k§ + _loc7_ * (param2 - this.§[k§) / this.§>s§;
            this.§>s§ = _loc7_;
            this.§@b§ = param1;
            this.§5z§ = param2;
         }
         else if(this.§>s§ > _loc7_ && this.§+T§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§+T§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§"!8§ - _loc7_) * (Math.abs(this.§+T§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§break§ + _loc8_ * (param1 - this.§break§) / this.§>s§;
            param2 = this.§[k§ + _loc8_ * (param2 - this.§[k§) / this.§>s§;
            this.§>s§ = _loc8_;
            this.§@b§ = param1;
            this.§5z§ = param2;
         }
         if(this.§>s§ <= this.§"!8§ * 0.45)
         {
            this.§^!0§ = true;
         }
         else if(this.§^!0§ && this.§>s§ >= this.§"!8§ * 0.8)
         {
            this.§01§();
            this.§^!0§ = false;
         }
         this.§41§ = true;
         return true;
      }
      
      protected function §01§() : void
      {
         §^]§.§1g§("SlingshotStreched");
      }
      
      public function §3T§(param1:Number) : void
      {
         this.setPosition(this.§4F§,this.§1v§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§4F§;
         this.§4F§ = param1;
         var _loc5_:Number = param2 - this.§1v§;
         this.§1v§ = param2;
         this.§">§ += _loc5_;
         this.§[k§ += _loc5_;
         this.§5z§ += _loc5_;
         this.§break§ += _loc4_;
         this.§@b§ += _loc4_;
         if(param3)
         {
            this.§^"§(0);
         }
         this.§41§ = true;
      }
      
      public function §8n§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§6+§ = null;
         _loc2_ = this.§"D§[this.§`!'§];
         var _loc3_:Number = this.§>s§ / this.§"!8§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§while§.§@A§) : Number(§while§.§"5§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §]h§() : Point
      {
         var _loc1_:§6+§ = null;
         if(this.§"D§.length > this.§`!'§)
         {
            _loc1_ = this.§"D§[this.§`!'§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §try §() : Point
      {
         return new Point(this.§break§,this.§[k§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§6+§ = null;
         this.§,'§(param1);
         if(this.§41§)
         {
            this.§^"§(param1);
         }
         this.§&V§ -= param1;
         if(this.§&V§ < 0)
         {
            this.§&V§ = 0;
         }
         if(this.mSlingShotState != §,?§)
         {
            this.§<!8§(param1,param2);
            _loc3_ = null;
            if(this.§"D§.length > 0)
            {
               _loc3_ = this.§"D§[this.§`!'§];
            }
            if(_loc3_)
            {
               _loc3_.§`!2§(param1);
            }
            if(!_loc3_)
            {
               this.§^!;§(§,?§);
            }
            else if(this.mSlingShotState == §<$§)
            {
               if(this.§&V§ <= 0)
               {
                  this.§^!;§(§#4§);
                  _loc3_.§+7§();
               }
            }
            else if(this.mSlingShotState == §#4§)
            {
               if(_loc3_.§+P§)
               {
                  this.§^!;§(§"F§);
               }
            }
            else if(this.mSlingShotState == §"F§)
            {
               _loc3_.setPosition(this.§@b§ - _loc3_.radius * Math.cos(this.§+T§ / (180 / Math.PI)),this.§5z§ + _loc3_.radius * Math.sin(this.§+T§ / (180 / Math.PI)));
               if(this.§"v§)
               {
                  this.§7!@§(this.§>s§ / this.§"!8§,this.§+T§);
               }
            }
         }
      }
      
      public function §"G§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§6+§ = null;
         if(this.§"D§.length > 0)
         {
            _loc5_ = this.§"D§[this.§`!'§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§7!@§(param3,param4);
      }
      
      protected function §7!@§(param1:Number, param2:Number) : void
      {
         var _loc3_:§6+§ = null;
         this.§;O§ = §"!-§;
         this.§92§ = §"C§;
         if(this.§"D§.length > 0)
         {
            _loc3_ = this.§"D§[this.§`!'§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§"v§ = false;
         this.§5k§ = new Date().time;
         this.§"8§.§!<§(_loc3_,param1,param2);
         this.§31§(this.§`!'§,_loc3_.§&?§ > 0);
         this.§#!%§();
         if(this.§`!'§ >= this.§"D§.length)
         {
            this.§^!;§(§,?§);
         }
         else
         {
            this.§^!;§(§<$§);
         }
      }
      
      protected function §#!%§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §^]§.§1g§("BirdShot" + _loc1_);
      }
      
      public function §<!8§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§`!'§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§"D§.length)
         {
            if(this.mSlingShotState == §^K§)
            {
               this.§"D§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§"D§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§6+§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§6w§();
         if(this.§package§ >= this.§"D§.length)
         {
            return false;
         }
         _loc1_ = this.§"D§[this.§package§];
         _loc2_ = §6t§.§5,§(_loc1_.name).score;
         this.§"8§.addScore(_loc2_,§;9§.§9D§,true,_loc1_.x,_loc1_.y - 3,§4!F§.§&q§(_loc1_.name));
         _loc1_.§;3§(-1,true);
         ++this.§package§;
         return true;
      }
      
      public function §8!<§() : int
      {
         var _loc2_:§6+§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§"D§)
         {
            _loc1_ += §6t§.§5,§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §9#§() : int
      {
         return this.§7-§;
      }
      
      public function §,'§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§<!$§ >= 0)
         {
            this.§<!$§ -= param1;
            if(this.§<!$§ <= 0)
            {
               _loc2_ = this.§"8§.objects.§&o§(this.§break§,this.§">§);
               if(_loc2_ < 0)
               {
                  this.§3T§(0.1);
                  this.§<!$§ = 0;
               }
               else if(!this.§"8§.objects.§#!§(_loc2_).§0R§)
               {
                  this.§<!$§ = -1;
               }
               else if(this.§"8§.objects.§#!§(_loc2_).§&!"§())
               {
                  this.§<!$§ = 2000;
               }
               else
               {
                  this.§<!$§ = 500;
               }
            }
         }
      }
      
      public function §<§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§"8§.objects.§&o§(this.§break§,this.§">§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§3T§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§<!$§ = -1;
      }
      
      public function §3k§(param1:Number, param2:Number) : void
      {
         this.§^!>§.x = -param1;
         this.§^!>§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §"F§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §"F§ && this.§>s§ > this.§"!8§ * §;!A§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§^!;§(§"F§);
         var _loc1_:§6+§ = this.§"D§[this.§`!'§];
         _loc1_.§;3§(§>'§.§-!<§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§6+§ = this.§"D§[this.§`!'§];
         _loc1_.§;3§(§>'§.§]X§);
      }
      
      public function shoot() : void
      {
         this.§"v§ = true;
      }
      
      protected function §31§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§6+§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§"D§[param1])
         {
            _loc3_ = this.§"D§[param1];
            this.§%e§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§?i§(this.§"D§[param1]);
            }
            _loc3_.dispose();
            this.§"D§[param1] = null;
         }
         this.§"D§.splice(param1,1);
      }
      
      public function §?i§(param1:§6+§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §2W§.§0;§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §2W§.§0;§) + Math.random() * -_loc8_ * 2;
            this.§"8§.particles.§#!B§(§4!F§.§=w§,§=j§.§[m§,§4!F§.§1E§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§4!F§.§9-§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§"8§.particles.§#!B§(§4!F§.§#$§,§=j§.§[m§,§4!F§.§1E§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §1!7§(param1:§6+§) : void
      {
         this.§31§(this.§"D§.indexOf(param1));
      }
      
      public function §=!D§() : void
      {
         var _loc2_:§6+§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§6+§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§"D§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§4F§ - this.§"D§[_loc1_].x) * (this.§4F§ - this.§"D§[_loc1_].x) + (this.§1v§ - this.§"D§[_loc1_].y) * (this.§1v§ - this.§"D§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§4F§ - this.§"D§[_loc1_ + 1].x) * (this.§4F§ - this.§"D§[_loc1_ + 1].x) + (this.§1v§ - this.§"D§[_loc1_ + 1].y) * (this.§1v§ - this.§"D§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§"D§[_loc1_];
               this.§"D§.splice(_loc1_,1);
               this.§"D§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§%e§.numChildren > 0)
         {
            this.§%e§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§"D§.length)
         {
            _loc2_ = this.§"D§[_loc1_];
            this.§%e§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §&#§(param1:Number, param2:Number) : §6+§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§"D§.length)
         {
            if(this.§"D§[_loc3_])
            {
               if(this.§"D§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§"D§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §6h§(param1:Number, param2:Number) : §while§
      {
         if(param1 >= this.§4F§ - this.§"!8§ / 4 && param1 <= this.§4F§ + this.§"!8§ / 4 && param2 >= this.§1v§ - this.§"!8§ / 4 && this.§1v§ <= this.§">§)
         {
            return this;
         }
         return null;
      }
      
      public function §&h§(param1:§3!H§) : void
      {
         var _loc3_:§6+§ = null;
         var _loc4_:§+r§ = null;
         param1.§;E§ = this.§4F§;
         param1.§=@§ = this.§1v§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§"D§.length)
         {
            _loc3_ = this.§"D§[_loc2_];
            (_loc4_ = new §+r§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§03§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §<o§() : void
      {
         while(this.§"D§.length > 0)
         {
            this.§1!7§(this.§"D§[0]);
         }
      }
      
      public function §?P§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§"D§.length)
         {
            if(this.§"D§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§"D§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§4F§ > param1.x && this.§4F§ < param2.x && this.§1v§ > param1.y && this.§1v§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §4n§() : Array
      {
         return [this.§8§,this.§5W§];
      }
      
      public function §]%§(param1:String, param2:Number, param3:Number) : §6+§
      {
         var _loc4_:§6+§ = this.§^`§(param1,param2,param3);
         this.§=!D§();
         return _loc4_;
      }
      
      public function §;?§() : Number
      {
         return this.§"D§.length;
      }
   }
}
