package §8!`§
{
   import §"!P§.§]s§;
   import §"k§.§5!7§;
   import §"k§.§;!Z§;
   import §%n§.§3!A§;
   import §%n§.§5!6§;
   import §'D§.§8e§;
   import §0H§.§0!&§;
   import §2>§.§?!1§;
   import §;!Q§.§%o§;
   import §;!Q§.§,r§;
   import §;!Q§.Sprite;
   import §]p§.Texture;
   import §`;§.§5i§;
   import §`;§.§[E§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §%t§
   {
      
      public static const §<=§:int = 0;
      
      public static const § w§:int = 1;
      
      public static const §-X§:int = 2;
      
      public static const §finally§:int = 3;
      
      public static const §use §:int = 5;
      
      public static const §8w§:int = 3151368;
      
      protected static const §"!D§:int = 8;
      
      protected static const §=d§:int = 0;
      
      public static const §7U§:Number = 46.25;
      
      public static const §=g§:Number = 52.5;
      
      protected static const § k§:Number = -0.7;
      
      protected static const §&V§:Number = 0;
      
      protected static var §+y§:Texture;
      
      public static const §;%§:Number = 0.4;
       
      
      public var §'N§:§4J§;
      
      public var §"9§:Number;
      
      public var §[g§:Number;
      
      public var §1!?§:Number;
      
      protected var §-"§:Number;
      
      protected var §=z§:Number;
      
      protected var §%5§:Number;
      
      protected var §!!Z§:Number;
      
      public var §"+§:Number;
      
      public var §`!_§:Boolean = false;
      
      protected var §9]§:Number;
      
      public var §%!4§:Vector.<§3!Q§>;
      
      public var §@+§:int;
      
      public var §?o§:int;
      
      public var §]`§:Number;
      
      public var §`r§:Sprite;
      
      public var §"]§:int = 0;
      
      public var §68§:Number = 0;
      
      public var §?;§:Array;
      
      public var §9F§:Array;
      
      public var mSlingShotState:int;
      
      public var §3E§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §`n§:Boolean = false;
      
      public var §'%§:Number;
      
      protected var §`K§:Sprite;
      
      protected var §;!U§:§,r§;
      
      protected var §-!]§:§,r§;
      
      protected var §@!V§:Sprite;
      
      protected var §"P§:Sprite;
      
      protected var §4!]§:Sprite;
      
      protected var §7w§:§%o§;
      
      protected var §6!&§:§%o§;
      
      private var §&!?§:Number = 0;
      
      private var §?_§:int = 0;
      
      protected var §7!@§:Number = -0.7;
      
      protected var §96§:Number = 0;
      
      public function §%t§(param1:§4J§, param2:§0!&§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§]s§ = null;
         this.§%!4§ = new Vector.<§3!Q§>();
         super();
         this.§'N§ = param1;
         this.§`K§ = param3;
         if(param2)
         {
            this.setPosition(param2.§#!X§,param2.§@h§);
            this.§8!S§();
            _loc4_ = 0;
            while(_loc4_ < param2.§;G§)
            {
               _loc5_ = param2.§8!"§(_loc4_);
               this.addSlingshotObject(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§?_§ = this.§=C§();
            this.§@+§ = 0;
            if(this.§%!4§.length <= 0)
            {
               §8e§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§"9§ + " " + this.§[g§);
               this.setSlingShotState(§finally§);
            }
            else
            {
               this.setSlingShotState(§<=§);
            }
         }
         else
         {
            §8e§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.setSlingShotState(§finally§);
         }
         this.§'%§ = 0;
         this.§'`§();
         this.update(0,true);
         this.§]B§();
         this.§with§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§`K§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§&!?§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§@+§ < this.§%!4§.length;
      }
      
      public function dispose() : void
      {
         while(this.§%!4§.length > 0)
         {
            this.§^F§(0);
         }
         this.§%!4§ = null;
         if(this.§`K§)
         {
            this.§`K§.dispose();
            this.§`K§ = null;
         }
         this.§`r§ = null;
         this.§?;§ = null;
         this.§9F§ = null;
      }
      
      public function §?M§(param1:String, param2:Number, param3:Number, param4:int = -1) : §3!Q§
      {
         var _loc5_:§3!Q§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,param4)).§1H§();
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §3!Q§
      {
         var _loc5_:§3!Q§ = new §3!Q§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§%!4§.push(_loc5_);
         }
         else
         {
            this.§%!4§.splice(param4,0,_loc5_);
         }
         this.§`r§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function setSlingShotState(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §<=§)
         {
            this.§+n§();
            this.§]`§ = 1000;
         }
         else if(this.mSlingShotState == § w§)
         {
            this.§+n§();
            this.§]`§ = 0;
         }
         else if(this.mSlingShotState == §-X§)
         {
            this.§]`§ = 10000;
            this.§`n§ = false;
            this.§+n§();
         }
         else if(this.mSlingShotState == §finally§)
         {
            this.§+n§();
            this.§]`§ = 2000;
         }
         else if(this.mSlingShotState == §use §)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§`n§ = false;
               this.§+n§();
               this.§%!4§[this.§@+§].setPosition(this.§%5§ - this.§%!4§[this.§@+§].radius * Math.cos(this.§68§ / (180 / Math.PI)),this.§!!Z§ + this.§%!4§[this.§@+§].radius * Math.sin(this.§68§ / (180 / Math.PI)));
            }
            else
            {
               this.§+n§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §48§() : §4J§
      {
         return this.§'N§;
      }
      
      public function §5n§() : Boolean
      {
         return this.mSlingShotState == §finally§ && this.§]`§ <= 0;
      }
      
      private function §8!S§() : void
      {
         var _loc1_:§;!Z§ = this.§,!<§();
         var _loc2_:§5!7§ = _loc1_.getFrame(0);
         var _loc3_:§5!7§ = _loc1_.getFrame(1);
         this.§7w§ = new §%o§(_loc2_.texture);
         this.§7w§.scaleX = _loc2_.scale;
         this.§7w§.scaleY = _loc2_.scale;
         this.§6!&§ = new §%o§(_loc3_.texture);
         this.§6!&§.scaleX = _loc3_.scale;
         this.§6!&§.scaleY = _loc3_.scale;
         this.§%Z§();
         this.§%6§();
         this.§`r§ = new Sprite();
         this.§`K§.addChild(this.§7w§);
         this.§`K§.addChild(this.§@!V§);
         this.§`K§.addChild(this.§`r§);
         this.§`K§.addChild(this.§4!]§);
         this.§`K§.addChild(this.§"P§);
         this.§`K§.addChild(this.§6!&§);
         this.§1!?§ = this.§[g§ + 8.5;
      }
      
      protected function §,!<§() : §;!Z§
      {
         return this.§'N§.§+!a§.§-!J§("SLINGSHOT");
      }
      
      public function §%Z§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§-"§ = this.§"9§;
         this.§=z§ = this.§[g§;
         this.§9]§ = §7I§.§"!I§;
         _loc1_ = null;
      }
      
      protected function §%6§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§+y§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §+y§ = this.§'N§.§>?§.§2!;§(_loc2_);
         }
         this.§4!]§ = new Sprite();
         var _loc1_:§%o§ = new §%o§(§+y§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§4!]§.addChild(_loc1_);
         this.§@!V§ = new Sprite();
         this.§;!U§ = new §,r§(2,2,§8w§);
         this.§@!V§.addChild(this.§;!U§);
         this.§"P§ = new Sprite();
         this.§-!]§ = new §,r§(2,2,§8w§);
         this.§"P§.addChild(this.§-!]§);
      }
      
      public function §with§(param1:Number) : void
      {
         var _loc2_:Number = this.§!!Z§ / §4J§.§<W§;
         var _loc3_:Number = this.§%5§ / §4J§.§<W§;
         var _loc4_:Number = 3.5 + 8 * ((this.§9]§ - this.§"+§) / this.§9]§);
         this.§4!]§.x = _loc3_;
         this.§4!]§.y = _loc2_;
         this.§4!]§.rotation = -this.§68§ / (180 / Math.PI);
         this.§7w§.x = this.§"9§ / §4J§.§<W§ - 3;
         this.§7w§.y = this.§[g§ / §4J§.§<W§ - 30;
         this.§6!&§.x = this.§"9§ / §4J§.§<W§ - 30;
         this.§6!&§.y = this.§[g§ / §4J§.§<W§ - 30;
         this.§"P§.x = this.§"9§ / §4J§.§<W§ - 17;
         this.§"P§.y = this.§[g§ / §4J§.§<W§ + 5;
         this.§"P§.rotation = Math.atan2(_loc2_ - this.§"P§.y,_loc3_ - this.§"P§.x);
         this.§@!V§.x = this.§"9§ / §4J§.§<W§ + 22;
         this.§@!V§.y = this.§[g§ / §4J§.§<W§;
         this.§@!V§.rotation = Math.atan2(_loc2_ - this.§@!V§.y,_loc3_ - this.§@!V§.x);
         this.§-!]§.width = Math.sqrt(Math.pow(_loc3_ - this.§"P§.x,2) + Math.pow(_loc2_ - this.§"P§.y,2));
         this.§;!U§.width = Math.sqrt(Math.pow(_loc3_ - this.§@!V§.x,2) + Math.pow(_loc2_ - this.§@!V§.y,2));
         this.§-!]§.height = this.§;!U§.height = _loc4_ * 2;
         this.§-!]§.y = -this.§-!]§.height / 2;
         this.§;!U§.y = -this.§;!U§.height / 2;
         this.§3E§ = false;
      }
      
      public function §9b§() : void
      {
         while(this.§%!4§.length > 0)
         {
            this.§^F§(0,true);
         }
         this.§3!-§();
         this.addSlingshotObject("BIRD_SARDINE",this.§"9§,this.§[g§);
         this.setSlingShotState(§-X§);
      }
      
      protected function §3!-§() : void
      {
         §?!1§.§0!O§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.setSlingShotState(§use §);
      }
      
      public function §+n§() : void
      {
         this.setNewCoordinatesForRubber(this.§-"§,this.§=z§ + this.§9]§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§%5§ == param1 && this.§!!Z§ == param2)
         {
            return true;
         }
         this.§"+§ = Math.sqrt((param2 - this.§=z§) * (param2 - this.§=z§) + (param1 - this.§-"§) * (param1 - this.§-"§));
         if(this.§"+§ > this.§9]§)
         {
            if(param3)
            {
               this.§"+§ = Math.sqrt((this.§!!Z§ - this.§=z§) * (this.§!!Z§ - this.§=z§) + (this.§%5§ - this.§-"§) * (this.§%5§ - this.§-"§));
               return false;
            }
            param1 = this.§-"§ + this.§9]§ * (param1 - this.§-"§) / this.§"+§;
            param2 = this.§=z§ + this.§9]§ * (param2 - this.§=z§) / this.§"+§;
            this.§"+§ = this.§9]§;
         }
         this.§%5§ = param1;
         this.§!!Z§ = param2;
         this.§68§ = Math.atan2(-(this.§!!Z§ - this.§=z§),this.§%5§ - this.§-"§);
         this.§68§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§%5§ = param1 + this.§7!@§;
            this.§!!Z§ = param2 + this.§96§;
            this.§68§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§9]§ / 2;
         if(this.§"+§ > _loc7_ && this.§68§ > -90 - _loc4_ + _loc5_ && this.§68§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§-"§ + _loc7_ * (param1 - this.§-"§) / this.§"+§;
            param2 = this.§=z§ + _loc7_ * (param2 - this.§=z§) / this.§"+§;
            this.§"+§ = _loc7_;
            this.§%5§ = param1;
            this.§!!Z§ = param2;
         }
         else if(this.§"+§ > _loc7_ && this.§68§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§68§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§9]§ - _loc7_) * (Math.abs(this.§68§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§-"§ + _loc8_ * (param1 - this.§-"§) / this.§"+§;
            param2 = this.§=z§ + _loc8_ * (param2 - this.§=z§) / this.§"+§;
            this.§"+§ = _loc8_;
            this.§%5§ = param1;
            this.§!!Z§ = param2;
         }
         if(this.§"+§ <= this.§9]§ * 0.45)
         {
            this.§`!_§ = true;
         }
         else if(this.§`!_§ && this.§"+§ >= this.§9]§ * 0.8)
         {
            this.§8!@§();
            this.§`!_§ = false;
         }
         this.§3E§ = true;
         return true;
      }
      
      protected function §8!@§() : void
      {
         §?!1§.§0!O§("SlingshotStreched");
      }
      
      public function applyGravity(param1:Number) : void
      {
         this.setPosition(this.§"9§,this.§[g§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§"9§;
         this.§"9§ = param1;
         var _loc5_:Number = param2 - this.§[g§;
         this.§[g§ = param2;
         this.§1!?§ += _loc5_;
         this.§=z§ += _loc5_;
         this.§!!Z§ += _loc5_;
         this.§-"§ += _loc4_;
         this.§%5§ += _loc4_;
         if(param3)
         {
            this.§with§(0);
         }
         this.§3E§ = true;
      }
      
      public function §^!]§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§3!Q§ = null;
         _loc2_ = this.§%!4§[this.§@+§];
         var _loc3_:Number = this.§"+§ / this.§9]§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§%t§.§=g§) : Number(§%t§.§7U§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §&X§() : Point
      {
         var _loc1_:§3!Q§ = null;
         if(this.§%!4§.length > this.§@+§)
         {
            _loc1_ = this.§%!4§[this.§@+§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §#=§() : Point
      {
         return new Point(this.§-"§,this.§=z§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§3!Q§ = null;
         this.updateGroundControl(param1);
         if(this.§3E§)
         {
            this.§with§(param1);
         }
         this.§]`§ -= param1;
         if(this.§]`§ < 0)
         {
            this.§]`§ = 0;
         }
         if(this.mSlingShotState != §finally§)
         {
            this.§,a§(param1,param2);
            _loc3_ = null;
            if(this.§%!4§.length > 0)
            {
               _loc3_ = this.§%!4§[this.§@+§];
            }
            if(_loc3_)
            {
               _loc3_.§6!#§(param1);
            }
            if(!_loc3_)
            {
               this.setSlingShotState(§finally§);
            }
            else if(this.mSlingShotState == §<=§)
            {
               if(this.§]`§ <= 0)
               {
                  this.setSlingShotState(§ w§);
                  _loc3_.§,!K§();
               }
            }
            else if(this.mSlingShotState == § w§)
            {
               if(_loc3_.§#+§)
               {
                  this.setSlingShotState(§-X§);
               }
            }
            else if(this.mSlingShotState == §-X§)
            {
               _loc3_.setPosition(this.§%5§ - _loc3_.radius * Math.cos(this.§68§ / (180 / Math.PI)),this.§!!Z§ + _loc3_.radius * Math.sin(this.§68§ / (180 / Math.PI)));
               if(this.§`n§)
               {
                  this.§>j§(this.§"+§ / this.§9]§,this.§68§);
               }
            }
         }
      }
      
      public function §=!!§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§3!Q§ = null;
         if(this.§%!4§.length > 0)
         {
            _loc5_ = this.§%!4§[this.§@+§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§>j§(param3,param4);
      }
      
      protected function §>j§(param1:Number, param2:Number) : void
      {
         var _loc3_:§3!Q§ = null;
         this.§7!@§ = § k§;
         this.§96§ = §&V§;
         if(this.§%!4§.length > 0)
         {
            _loc3_ = this.§%!4§[this.§@+§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§`n§ = false;
         this.§&!?§ = new Date().time;
         this.§'N§.§7L§(_loc3_,param1,param2);
         this.§^F§(this.§@+§,_loc3_.§,g§ > 0);
         this.§;!>§();
         if(this.§@+§ >= this.§%!4§.length)
         {
            this.setSlingShotState(§finally§);
         }
         else
         {
            this.setSlingShotState(§<=§);
         }
      }
      
      protected function §;!>§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §?!1§.§0!O§("BirdShot" + _loc1_);
      }
      
      public function §,a§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§@+§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§%!4§.length)
         {
            if(this.mSlingShotState == §use §)
            {
               this.§%!4§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§%!4§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§3!Q§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§+n§();
         if(this.§?o§ >= this.§%!4§.length)
         {
            return false;
         }
         _loc1_ = this.§%!4§[this.§?o§];
         _loc2_ = §5!6§.§,Q§(_loc1_.name).score;
         this.§'N§.addScore(_loc2_,§%G§.§<O§,true,_loc1_.x,_loc1_.y - 3,§[E§.§?!V§(_loc1_.name));
         _loc1_.§?!<§(-1,true);
         ++this.§?o§;
         return true;
      }
      
      public function §=C§() : int
      {
         var _loc2_:§3!Q§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§%!4§)
         {
            _loc1_ += §5!6§.§,Q§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §]^§() : int
      {
         return this.§?_§;
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§'%§ >= 0)
         {
            this.§'%§ -= param1;
            if(this.§'%§ <= 0)
            {
               _loc2_ = this.§'N§.objects.§#!?§(this.§-"§,this.§1!?§);
               if(_loc2_ < 0)
               {
                  this.applyGravity(0.1);
                  this.§'%§ = 0;
               }
               else if(!this.§'N§.objects.§,S§(_loc2_).§'i§)
               {
                  this.§'%§ = -1;
               }
               else if(this.§'N§.objects.§,S§(_loc2_).§>8§())
               {
                  this.§'%§ = 2000;
               }
               else
               {
                  this.§'%§ = 500;
               }
            }
         }
      }
      
      public function §]B§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§'N§.objects.§#!?§(this.§-"§,this.§1!?§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.applyGravity(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§'%§ = -1;
      }
      
      public function §<0§(param1:Number, param2:Number) : void
      {
         this.§`K§.x = -param1;
         this.§`K§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §-X§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §-X§ && this.§"+§ > this.§9]§ * §;%§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.setSlingShotState(§-X§);
         var _loc1_:§3!Q§ = this.§%!4§[this.§@+§];
         _loc1_.§?!<§(§3!A§.§94§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§3!Q§ = this.§%!4§[this.§@+§];
         _loc1_.§?!<§(§3!A§.§7!B§);
      }
      
      public function shoot() : void
      {
         this.§`n§ = true;
      }
      
      protected function §^F§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§3!Q§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§%!4§[param1])
         {
            _loc3_ = this.§%!4§[param1];
            this.§`r§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§"7§(this.§%!4§[param1]);
            }
            _loc3_.dispose();
            this.§%!4§[param1] = null;
         }
         this.§%!4§.splice(param1,1);
      }
      
      public function §"7§(param1:§3!Q§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §4J§.§<W§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §4J§.§<W§) + Math.random() * -_loc8_ * 2;
            this.§'N§.particles.addParticle(§[E§.§4!B§,§5i§.§-!D§,§[E§.§!`§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§[E§.§2!<§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§'N§.particles.addParticle(§[E§.§=F§,§5i§.§-!D§,§[E§.§!`§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §@!@§(param1:§3!Q§) : void
      {
         this.§^F§(this.§%!4§.indexOf(param1));
      }
      
      public function §'`§() : void
      {
         var _loc2_:§3!Q§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§3!Q§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§%!4§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§"9§ - this.§%!4§[_loc1_].x) * (this.§"9§ - this.§%!4§[_loc1_].x) + (this.§[g§ - this.§%!4§[_loc1_].y) * (this.§[g§ - this.§%!4§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§"9§ - this.§%!4§[_loc1_ + 1].x) * (this.§"9§ - this.§%!4§[_loc1_ + 1].x) + (this.§[g§ - this.§%!4§[_loc1_ + 1].y) * (this.§[g§ - this.§%!4§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§%!4§[_loc1_];
               this.§%!4§.splice(_loc1_,1);
               this.§%!4§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§`r§.numChildren > 0)
         {
            this.§`r§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§%!4§.length)
         {
            _loc2_ = this.§%!4§[_loc1_];
            this.§`r§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §+!F§(param1:Number, param2:Number) : §3!Q§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§%!4§.length)
         {
            if(this.§%!4§[_loc3_])
            {
               if(this.§%!4§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§%!4§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §22§(param1:Number, param2:Number) : §%t§
      {
         if(param1 >= this.§"9§ - this.§9]§ / 4 && param1 <= this.§"9§ + this.§9]§ / 4 && param2 >= this.§[g§ - this.§9]§ / 4 && this.§[g§ <= this.§1!?§)
         {
            return this;
         }
         return null;
      }
      
      public function §%K§(param1:§0!&§) : void
      {
         var _loc3_:§3!Q§ = null;
         var _loc4_:§]s§ = null;
         param1.§#!X§ = this.§"9§;
         param1.§@h§ = this.§[g§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§%!4§.length)
         {
            _loc3_ = this.§%!4§[_loc2_];
            (_loc4_ = new §]s§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§0D§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §@!D§() : void
      {
         while(this.§%!4§.length > 0)
         {
            this.§@!@§(this.§%!4§[0]);
         }
      }
      
      public function §-x§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§%!4§.length)
         {
            if(this.§%!4§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§%!4§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§"9§ > param1.x && this.§"9§ < param2.x && this.§[g§ > param1.y && this.§[g§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §?2§() : Array
      {
         return [this.§6!&§,this.§7w§];
      }
      
      public function §+N§(param1:String, param2:Number, param3:Number) : §3!Q§
      {
         var _loc4_:§3!Q§ = this.addSlingshotObject(param1,param2,param3);
         this.§'`§();
         return _loc4_;
      }
      
      public function §!V§() : Number
      {
         return this.§%!4§.length;
      }
   }
}
