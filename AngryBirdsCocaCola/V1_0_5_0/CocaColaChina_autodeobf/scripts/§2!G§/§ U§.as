package §2!G§
{
   import § !b§.§-`§;
   import §+N§.§%H§;
   import §+N§.§=!+§;
   import §,-§.§#o§;
   import §,-§.§'i§;
   import §-V§.§&!^§;
   import §-V§.§]s§;
   import §3U§.§ !M§;
   import §<!!§.§-"§;
   import §<!$§.§6f§;
   import §<!$§.Sprite;
   import §<!$§.§[!5§;
   import §=L§.§@E§;
   import §@'§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § U§
   {
      
      public static const §3c§:int = 0;
      
      public static const §2!D§:int = 1;
      
      public static const §@F§:int = 2;
      
      public static const §2b§:int = 3;
      
      public static const §?!?§:int = 5;
      
      public static const §]n§:int = 3151368;
      
      protected static const §6!N§:int = 8;
      
      protected static const §"T§:int = 0;
      
      public static const §9!"§:Number = 46.25;
      
      public static const §8e§:Number = 52.5;
      
      protected static const §>!&§:Number = -0.7;
      
      protected static const §0^§:Number = 0;
      
      protected static var §[5§:Texture;
      
      public static const §`L§:Number = 0.4;
       
      
      public var mLevelMain:§2!V§;
      
      public var §;i§:Number;
      
      public var §%i§:Number;
      
      public var §<!R§:Number;
      
      protected var §?!+§:Number;
      
      protected var §!h§:Number;
      
      protected var §!!>§:Number;
      
      protected var §]!b§:Number;
      
      public var §,+§:Number;
      
      public var §&D§:Boolean = false;
      
      protected var §5!0§:Number;
      
      public var §<K§:Vector.<§,!8§>;
      
      public var §,!'§:int;
      
      public var §!]§:int;
      
      public var §8!C§:Number;
      
      public var §9!]§:Sprite;
      
      public var §+!§:int = 0;
      
      public var §"A§:Number = 0;
      
      public var §"B§:Array;
      
      public var §85§:Array;
      
      public var mSlingShotState:int;
      
      public var §=!W§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §3Z§:Boolean = false;
      
      public var §`&§:Number;
      
      protected var §1!?§:Sprite;
      
      protected var §,T§:§6f§;
      
      protected var §?!T§:§6f§;
      
      protected var §4!a§:Sprite;
      
      protected var §@!K§:Sprite;
      
      protected var §8A§:Sprite;
      
      protected var §'!]§:§[!5§;
      
      protected var §8M§:§[!5§;
      
      private var §@D§:Number = 0;
      
      private var §7Z§:int = 0;
      
      protected var § !7§:Number = -0.7;
      
      protected var §+S§:Number = 0;
      
      public function § U§(param1:§2!V§, param2:§ !M§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§-`§ = null;
         this.§<K§ = new Vector.<§,!8§>();
         super();
         this.mLevelMain = param1;
         this.§1!?§ = param3;
         if(param2)
         {
            this.setPosition(param2.§<5§,param2.§9!S§);
            this.§9!R§();
            _loc4_ = 0;
            while(_loc4_ < param2.§+!4§)
            {
               _loc5_ = param2.§@!c§(_loc4_);
               this.§0x§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§7Z§ = this.§package§();
            this.§,!'§ = 0;
            if(this.§<K§.length <= 0)
            {
               §-"§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§;i§ + " " + this.§%i§);
               this.§ l§(§2b§);
            }
            else
            {
               this.§ l§(§3c§);
            }
         }
         else
         {
            §-"§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§ l§(§2b§);
         }
         this.§`&§ = 0;
         this.§&[§();
         this.update(0,true);
         this.§>$§();
         this.§1?§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§1!?§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§@D§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§,!'§ < this.§<K§.length;
      }
      
      public function dispose() : void
      {
         while(this.§<K§.length > 0)
         {
            this.§+B§(0);
         }
         this.§<K§ = null;
         if(this.§1!?§)
         {
            this.§1!?§.dispose();
            this.§1!?§ = null;
         }
         this.§9!]§ = null;
         this.§"B§ = null;
         this.§85§ = null;
      }
      
      public function §8!T§(param1:String, param2:Number, param3:Number, param4:int = -1) : §,!8§
      {
         var _loc5_:§,!8§;
         (_loc5_ = this.§0x§(param1,param2,param3,param4)).§+!9§();
         return _loc5_;
      }
      
      protected function §0x§(param1:String, param2:Number, param3:Number, param4:int = -1) : §,!8§
      {
         var _loc5_:§,!8§ = new §,!8§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§<K§.push(_loc5_);
         }
         else
         {
            this.§<K§.splice(param4,0,_loc5_);
         }
         this.§9!]§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function § l§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §3c§)
         {
            this.§ !E§();
            this.§8!C§ = 1000;
         }
         else if(this.mSlingShotState == §2!D§)
         {
            this.§ !E§();
            this.§8!C§ = 0;
         }
         else if(this.mSlingShotState == §@F§)
         {
            this.§8!C§ = 10000;
            this.§3Z§ = false;
            this.§ !E§();
         }
         else if(this.mSlingShotState == §2b§)
         {
            this.§ !E§();
            this.§8!C§ = 2000;
         }
         else if(this.mSlingShotState == §?!?§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§3Z§ = false;
               this.§ !E§();
               this.§<K§[this.§,!'§].setPosition(this.§!!>§ - this.§<K§[this.§,!'§].radius * Math.cos(this.§"A§ / (180 / Math.PI)),this.§]!b§ + this.§<K§[this.§,!'§].radius * Math.sin(this.§"A§ / (180 / Math.PI)));
            }
            else
            {
               this.§ !E§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §0!0§() : §2!V§
      {
         return this.mLevelMain;
      }
      
      public function §0<§() : Boolean
      {
         return this.mSlingShotState == §2b§ && this.§8!C§ <= 0;
      }
      
      private function §9!R§() : void
      {
         var _loc1_:§%H§ = this.mLevelMain.§%S§.§<+§("SLINGSHOT");
         var _loc2_:§=!+§ = _loc1_.getFrame(0);
         var _loc3_:§=!+§ = _loc1_.getFrame(1);
         this.§'!]§ = new §[!5§(_loc2_.texture);
         this.§'!]§.scaleX = _loc2_.scale;
         this.§'!]§.scaleY = _loc2_.scale;
         this.§8M§ = new §[!5§(_loc3_.texture);
         this.§8M§.scaleX = _loc3_.scale;
         this.§8M§.scaleY = _loc3_.scale;
         this.§7^§();
         this.§#1§();
         this.§9!]§ = new Sprite();
         this.§1!?§.addChild(this.§'!]§);
         this.§1!?§.addChild(this.§4!a§);
         this.§1!?§.addChild(this.§9!]§);
         this.§1!?§.addChild(this.§8A§);
         this.§1!?§.addChild(this.§@!K§);
         this.§1!?§.addChild(this.§8M§);
         this.§<!R§ = this.§%i§ + 8.5;
      }
      
      public function §7^§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§?!+§ = this.§;i§;
         this.§!h§ = this.§%i§;
         this.§5!0§ = §+>§.§90§;
         _loc1_ = null;
      }
      
      protected function §#1§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§[5§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §[5§ = this.mLevelMain.textureManager.§&!`§(_loc2_);
         }
         this.§8A§ = new Sprite();
         var _loc1_:§[!5§ = new §[!5§(§[5§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§8A§.addChild(_loc1_);
         this.§4!a§ = new Sprite();
         this.§,T§ = new §6f§(2,2,§]n§);
         this.§4!a§.addChild(this.§,T§);
         this.§@!K§ = new Sprite();
         this.§?!T§ = new §6f§(2,2,§]n§);
         this.§@!K§.addChild(this.§?!T§);
      }
      
      public function §1?§(param1:Number) : void
      {
         var _loc2_:Number = this.§]!b§ / §2!V§.§-!3§;
         var _loc3_:Number = this.§!!>§ / §2!V§.§-!3§;
         var _loc4_:Number = 3.5 + 8 * ((this.§5!0§ - this.§,+§) / this.§5!0§);
         this.§8A§.x = _loc3_;
         this.§8A§.y = _loc2_;
         this.§8A§.rotation = -this.§"A§ / (180 / Math.PI);
         this.§'!]§.x = this.§;i§ / §2!V§.§-!3§ - 3;
         this.§'!]§.y = this.§%i§ / §2!V§.§-!3§ - 30;
         this.§8M§.x = this.§;i§ / §2!V§.§-!3§ - 30;
         this.§8M§.y = this.§%i§ / §2!V§.§-!3§ - 30;
         this.§@!K§.x = this.§;i§ / §2!V§.§-!3§ - 17;
         this.§@!K§.y = this.§%i§ / §2!V§.§-!3§ + 5;
         this.§@!K§.rotation = Math.atan2(_loc2_ - this.§@!K§.y,_loc3_ - this.§@!K§.x);
         this.§4!a§.x = this.§;i§ / §2!V§.§-!3§ + 22;
         this.§4!a§.y = this.§%i§ / §2!V§.§-!3§;
         this.§4!a§.rotation = Math.atan2(_loc2_ - this.§4!a§.y,_loc3_ - this.§4!a§.x);
         this.§?!T§.width = Math.sqrt(Math.pow(_loc3_ - this.§@!K§.x,2) + Math.pow(_loc2_ - this.§@!K§.y,2));
         this.§,T§.width = Math.sqrt(Math.pow(_loc3_ - this.§4!a§.x,2) + Math.pow(_loc2_ - this.§4!a§.y,2));
         this.§?!T§.height = this.§,T§.height = _loc4_ * 2;
         this.§?!T§.y = -this.§?!T§.height / 2;
         this.§,T§.y = -this.§,T§.height / 2;
         this.§=!W§ = false;
      }
      
      public function §3!R§() : void
      {
         while(this.§<K§.length > 0)
         {
            this.§+B§(0,true);
         }
         this.§@!Y§();
         this.§0x§("BIRD_SARDINE",this.§;i§,this.§%i§);
         this.§ l§(§@F§);
      }
      
      protected function §@!Y§() : void
      {
         §@E§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§ l§(§?!?§);
      }
      
      public function § !E§() : void
      {
         this.setNewCoordinatesForRubber(this.§?!+§,this.§!h§ + this.§5!0§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§!!>§ == param1 && this.§]!b§ == param2)
         {
            return true;
         }
         this.§,+§ = Math.sqrt((param2 - this.§!h§) * (param2 - this.§!h§) + (param1 - this.§?!+§) * (param1 - this.§?!+§));
         if(this.§,+§ > this.§5!0§)
         {
            if(param3)
            {
               this.§,+§ = Math.sqrt((this.§]!b§ - this.§!h§) * (this.§]!b§ - this.§!h§) + (this.§!!>§ - this.§?!+§) * (this.§!!>§ - this.§?!+§));
               return false;
            }
            param1 = this.§?!+§ + this.§5!0§ * (param1 - this.§?!+§) / this.§,+§;
            param2 = this.§!h§ + this.§5!0§ * (param2 - this.§!h§) / this.§,+§;
            this.§,+§ = this.§5!0§;
         }
         this.§!!>§ = param1;
         this.§]!b§ = param2;
         this.§"A§ = Math.atan2(-(this.§]!b§ - this.§!h§),this.§!!>§ - this.§?!+§);
         this.§"A§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§!!>§ = param1 + this.§ !7§;
            this.§]!b§ = param2 + this.§+S§;
            this.§"A§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§5!0§ / 2;
         if(this.§,+§ > _loc7_ && this.§"A§ > -90 - _loc4_ + _loc5_ && this.§"A§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§?!+§ + _loc7_ * (param1 - this.§?!+§) / this.§,+§;
            param2 = this.§!h§ + _loc7_ * (param2 - this.§!h§) / this.§,+§;
            this.§,+§ = _loc7_;
            this.§!!>§ = param1;
            this.§]!b§ = param2;
         }
         else if(this.§,+§ > _loc7_ && this.§"A§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§"A§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§5!0§ - _loc7_) * (Math.abs(this.§"A§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§?!+§ + _loc8_ * (param1 - this.§?!+§) / this.§,+§;
            param2 = this.§!h§ + _loc8_ * (param2 - this.§!h§) / this.§,+§;
            this.§,+§ = _loc8_;
            this.§!!>§ = param1;
            this.§]!b§ = param2;
         }
         if(this.§,+§ <= this.§5!0§ * 0.45)
         {
            this.§&D§ = true;
         }
         else if(this.§&D§ && this.§,+§ >= this.§5!0§ * 0.8)
         {
            this.§%E§();
            this.§&D§ = false;
         }
         this.§=!W§ = true;
         return true;
      }
      
      protected function §%E§() : void
      {
         §@E§.playSound("SlingshotStreched");
      }
      
      public function §[2§(param1:Number) : void
      {
         this.setPosition(this.§;i§,this.§%i§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§;i§;
         this.§;i§ = param1;
         var _loc5_:Number = param2 - this.§%i§;
         this.§%i§ = param2;
         this.§<!R§ += _loc5_;
         this.§!h§ += _loc5_;
         this.§]!b§ += _loc5_;
         this.§?!+§ += _loc4_;
         this.§!!>§ += _loc4_;
         if(param3)
         {
            this.§1?§(0);
         }
         this.§=!W§ = true;
      }
      
      public function §>!V§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§,!8§ = null;
         _loc2_ = this.§<K§[this.§,!'§];
         var _loc3_:Number = this.§,+§ / this.§5!0§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§ U§.§8e§) : Number(§ U§.§9!"§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §2a§() : Point
      {
         var _loc1_:§,!8§ = null;
         if(this.§<K§.length > this.§,!'§)
         {
            _loc1_ = this.§<K§[this.§,!'§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §2E§() : Point
      {
         return new Point(this.§?!+§,this.§!h§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§,!8§ = null;
         this.§!!'§(param1);
         if(this.§=!W§)
         {
            this.§1?§(param1);
         }
         this.§8!C§ -= param1;
         if(this.§8!C§ < 0)
         {
            this.§8!C§ = 0;
         }
         if(this.mSlingShotState != §2b§)
         {
            this.§1H§(param1,param2);
            _loc3_ = null;
            if(this.§<K§.length > 0)
            {
               _loc3_ = this.§<K§[this.§,!'§];
            }
            if(_loc3_)
            {
               _loc3_.§<b§(param1);
            }
            if(!_loc3_)
            {
               this.§ l§(§2b§);
            }
            else if(this.mSlingShotState == §3c§)
            {
               if(this.§8!C§ <= 0)
               {
                  this.§ l§(§2!D§);
                  _loc3_.§#!d§();
               }
            }
            else if(this.mSlingShotState == §2!D§)
            {
               if(_loc3_.§"!$§)
               {
                  this.§ l§(§@F§);
               }
            }
            else if(this.mSlingShotState == §@F§)
            {
               _loc3_.setPosition(this.§!!>§ - _loc3_.radius * Math.cos(this.§"A§ / (180 / Math.PI)),this.§]!b§ + _loc3_.radius * Math.sin(this.§"A§ / (180 / Math.PI)));
               if(this.§3Z§)
               {
                  this.§-!M§(this.§,+§ / this.§5!0§,this.§"A§);
               }
            }
         }
      }
      
      public function §,!I§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§,!8§ = null;
         if(this.§<K§.length > 0)
         {
            _loc5_ = this.§<K§[this.§,!'§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§-!M§(param3,param4);
      }
      
      protected function §-!M§(param1:Number, param2:Number) : void
      {
         var _loc3_:§,!8§ = null;
         this.§ !7§ = §>!&§;
         this.§+S§ = §0^§;
         if(this.§<K§.length > 0)
         {
            _loc3_ = this.§<K§[this.§,!'§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§3Z§ = false;
         this.§@D§ = new Date().time;
         this.mLevelMain.§9s§(_loc3_,param1,param2);
         this.§+B§(this.§,!'§,_loc3_.§;![§ > 0);
         this.§7h§();
         if(this.§,!'§ >= this.§<K§.length)
         {
            this.§ l§(§2b§);
         }
         else
         {
            this.§ l§(§3c§);
         }
      }
      
      protected function §7h§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §@E§.playSound("BirdShot" + _loc1_);
      }
      
      public function §1H§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§,!'§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§<K§.length)
         {
            if(this.mSlingShotState == §?!?§)
            {
               this.§<K§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§<K§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§,!8§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§ !E§();
         if(this.§!]§ >= this.§<K§.length)
         {
            return false;
         }
         _loc1_ = this.§<K§[this.§!]§];
         _loc2_ = §'i§.§6!R§(_loc1_.name).score;
         this.mLevelMain.addScore(_loc2_,§%!&§.§[!,§,true,_loc1_.x,_loc1_.y - 3,§&!^§.§+!F§(_loc1_.name));
         _loc1_.§2G§(-1,true);
         ++this.§!]§;
         return true;
      }
      
      public function §package§() : int
      {
         var _loc2_:§,!8§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§<K§)
         {
            _loc1_ += §'i§.§6!R§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §''§() : int
      {
         return this.§7Z§;
      }
      
      public function §!!'§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§`&§ >= 0)
         {
            this.§`&§ -= param1;
            if(this.§`&§ <= 0)
            {
               _loc2_ = this.mLevelMain.objects.§=!;§(this.§?!+§,this.§<!R§);
               if(_loc2_ < 0)
               {
                  this.§[2§(0.1);
                  this.§`&§ = 0;
               }
               else if(!this.mLevelMain.objects.§]A§(_loc2_).§&;§)
               {
                  this.§`&§ = -1;
               }
               else if(this.mLevelMain.objects.§]A§(_loc2_).§9!T§())
               {
                  this.§`&§ = 2000;
               }
               else
               {
                  this.§`&§ = 500;
               }
            }
         }
      }
      
      public function §>$§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.mLevelMain.objects.§=!;§(this.§?!+§,this.§<!R§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§[2§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§`&§ = -1;
      }
      
      public function §^!%§(param1:Number, param2:Number) : void
      {
         this.§1!?§.x = -param1;
         this.§1!?§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §@F§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §@F§ && this.§,+§ > this.§5!0§ * §`L§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§ l§(§@F§);
         var _loc1_:§,!8§ = this.§<K§[this.§,!'§];
         _loc1_.§2G§(§#o§.§6! §);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§,!8§ = this.§<K§[this.§,!'§];
         _loc1_.§2G§(§#o§.§-!!§);
      }
      
      public function shoot() : void
      {
         this.§3Z§ = true;
      }
      
      protected function §+B§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§,!8§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§<K§[param1])
         {
            _loc3_ = this.§<K§[param1];
            this.§9!]§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§!!B§(this.§<K§[param1]);
            }
            _loc3_.dispose();
            this.§<K§[param1] = null;
         }
         this.§<K§.splice(param1,1);
      }
      
      public function §!!B§(param1:§,!8§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §2!V§.§-!3§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §2!V§.§-!3§) + Math.random() * -_loc8_ * 2;
            this.mLevelMain.particles.§;!V§(§&!^§.§+Q§,§]s§.§0!E§,§&!^§.§7!L§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§&!^§.§5F§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.mLevelMain.particles.§;!V§(§&!^§.§!T§,§]s§.§0!E§,§&!^§.§7!L§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §1!E§(param1:§,!8§) : void
      {
         this.§+B§(this.§<K§.indexOf(param1));
      }
      
      public function §&[§() : void
      {
         var _loc2_:§,!8§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§,!8§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§<K§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§;i§ - this.§<K§[_loc1_].x) * (this.§;i§ - this.§<K§[_loc1_].x) + (this.§%i§ - this.§<K§[_loc1_].y) * (this.§%i§ - this.§<K§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§;i§ - this.§<K§[_loc1_ + 1].x) * (this.§;i§ - this.§<K§[_loc1_ + 1].x) + (this.§%i§ - this.§<K§[_loc1_ + 1].y) * (this.§%i§ - this.§<K§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§<K§[_loc1_];
               this.§<K§.splice(_loc1_,1);
               this.§<K§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§9!]§.numChildren > 0)
         {
            this.§9!]§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§<K§.length)
         {
            _loc2_ = this.§<K§[_loc1_];
            this.§9!]§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §!!X§(param1:Number, param2:Number) : §,!8§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§<K§.length)
         {
            if(this.§<K§[_loc3_])
            {
               if(this.§<K§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§<K§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §"!G§(param1:Number, param2:Number) : § U§
      {
         if(param1 >= this.§;i§ - this.§5!0§ / 4 && param1 <= this.§;i§ + this.§5!0§ / 4 && param2 >= this.§%i§ - this.§5!0§ / 4 && this.§%i§ <= this.§<!R§)
         {
            return this;
         }
         return null;
      }
      
      public function §[6§(param1:§ !M§) : void
      {
         var _loc3_:§,!8§ = null;
         var _loc4_:§-`§ = null;
         param1.§<5§ = this.§;i§;
         param1.§9!S§ = this.§%i§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§<K§.length)
         {
            _loc3_ = this.§<K§[_loc2_];
            (_loc4_ = new §-`§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§#!&§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §'!b§() : void
      {
         while(this.§<K§.length > 0)
         {
            this.§1!E§(this.§<K§[0]);
         }
      }
      
      public function §#!0§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§<K§.length)
         {
            if(this.§<K§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§<K§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§;i§ > param1.x && this.§;i§ < param2.x && this.§%i§ > param1.y && this.§%i§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §]!G§() : Array
      {
         return [this.§8M§,this.§'!]§];
      }
      
      public function §0!%§(param1:String, param2:Number, param3:Number) : §,!8§
      {
         var _loc4_:§,!8§ = this.§0x§(param1,param2,param3);
         this.§&[§();
         return _loc4_;
      }
      
      public function §"§() : Number
      {
         return this.§<K§.length;
      }
   }
}
