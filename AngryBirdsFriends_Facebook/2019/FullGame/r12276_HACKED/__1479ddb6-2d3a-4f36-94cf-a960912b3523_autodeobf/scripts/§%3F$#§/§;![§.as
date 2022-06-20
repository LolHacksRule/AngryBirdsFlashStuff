package §?$#§
{
   import § "v§.§4$4§;
   import §#"3§.§@"t§;
   import §#Z§.DisplayObject;
   import §#Z§.Sprite;
   import §-!j§.§%!a§;
   import §-!j§.§&!@§;
   import §-!j§.§,#V§;
   import §-!j§.§-"8§;
   import §6!R§.b2Vec2;
   import §9#M§.§,`§;
   import §^0§.§=Q§;
   
   public class §;![§
   {
      
      public static const §?#P§:String = "ChannelSlingshot";
      
      public static const §8>§:Number = 900;
      
      public static const §5r§:Number = 200;
      
      public static const §"#u§:Number = 200;
      
      public static const §0p§:Number = 1500;
      
      public static const §5E§:Number = 5000;
      
      public static const §5!d§:Number = 1000;
      
      public static const §4!d§:Number = 1000;
      
      public static const §^",§:Number = 46.25;
      
      public static const §"#C§:Number = 55.5;
      
      private static const §7"g§:Array = ["bird_misc_a1","bird_misc_a2","bird_misc_a3","bird_misc_a4","bird_misc_a5","bird_misc_a6","bird_misc_a7","bird_misc_a8","bird_misc_a9","bird_misc_a10","bird_misc_a11","bird_misc_a12"];
       
      
      protected var §-#3§:String;
      
      protected var §0k§:Number;
      
      protected var §@_§:Number;
      
      protected var §[$D§:Number;
      
      protected var §]D§:Number;
      
      protected var §&b§:Number;
      
      protected var §8!+§:Number;
      
      private var §^!c§:§&!@§;
      
      protected var §^I§:Number;
      
      protected var §<x§:Number = 1;
      
      private var §]#+§:Sprite;
      
      private var §6u§:Sprite;
      
      protected var §&"J§:§,`§;
      
      private var §6" §:DisplayObject;
      
      protected var §[0§:§2!"§;
      
      private var §"!'§:Number;
      
      protected var § #m§:Boolean = false;
      
      private var §!!N§:Boolean = false;
      
      protected var §?!U§:Boolean = false;
      
      private var §<i§:Number;
      
      private var §9#>§:Number = 0;
      
      private var §9"$§:Number = 0;
      
      private var § r§:Number = 0;
      
      private var §%"+§:Number = 1000;
      
      private var §&"7§:Number;
      
      private var §%#<§:Number;
      
      private var §+S§:int;
      
      private var §2!n§:Number = 0;
      
      protected var §1#u§:Number;
      
      protected var §&#@§:Number;
      
      private var §5#@§:Object;
      
      private var §#!-§:Object;
      
      private var §%o§:Number = 0;
      
      private var §;"[§:b2Vec2;
      
      private var §6#q§:Number = 1;
      
      private var §[!h§:§%!a§;
      
      protected var §8!'§:§-"8§;
      
      protected var §-"W§:Boolean = true;
      
      private var §;!G§:int;
      
      protected var yOffset:Number = 0;
      
      protected var xOffset:Number = 0;
      
      public var scoreCounted:Boolean;
      
      protected var §?$%§:Boolean;
      
      public function §;![§(param1:§2!"§, param2:Sprite, param3:String, param4:§-"8§, param5:Number, param6:Number, param7:Number, param8:int)
      {
         super();
         this.§8!'§ = param4;
         this.§;!G§ = param8;
         this.§[0§ = param1;
         this.§]#+§ = param2;
         this.§-#3§ = param3;
         this.§[!h§ = param4.shape;
         this.§^!c§ = param4.soundResource;
         this.§0k§ = param5;
         this.§@_§ = param6;
         this.§[$D§ = param7 / Math.PI * 180;
         this.§8!+§ = this.§[$D§;
         this.§]D§ = param5;
         this.§&b§ = param6;
         this.§ #m§ = false;
         this.§!!N§ = false;
         this.§^I§ = 0;
         this.§9#>§ = 0;
         this.§1#u§ = 0;
         this.§+#v§();
         this.§^"N§();
         this.§5"_§ = true;
      }
      
      public static function §%$D§() : Number
      {
         return §"#C§ / §^",§;
      }
      
      public function get launchIndex() : int
      {
         return this.§;!G§;
      }
      
      public function set launchIndex(param1:int) : void
      {
         this.§;!G§ = param1;
      }
      
      public function get backgroundSprite() : Sprite
      {
         return this.§6u§;
      }
      
      public function dispose() : void
      {
         if(this.§]#+§)
         {
            this.§]#+§.dispose();
            this.§]#+§ = null;
         }
         if(this.§6u§)
         {
            this.§6u§.dispose();
            this.§6u§ = null;
         }
      }
      
      public function §;"q§() : void
      {
         if(!this.§6u§)
         {
            this.§6u§ = new Sprite();
            this.backgroundSprite.x = this.§]#+§.x;
            this.backgroundSprite.y = this.§]#+§.y;
            this.backgroundSprite.rotation = this.§]#+§.rotation;
         }
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§6" §)
         {
            this.§6" §.color = param1;
         }
      }
      
      public function get levelItem() : §-"8§
      {
         return this.§8!'§;
      }
      
      public function §`"L§(param1:Boolean) : void
      {
         this.§ #m§ = param1;
         if(!this.§'1§)
         {
            this.§0k§ = this.§]D§;
            this.§@_§ = this.§&b§;
            this.§^I§ = this.§[$D§;
            this.updateRenderer();
         }
      }
      
      public function set animationsEnabled(param1:Boolean) : void
      {
         this.§-"W§ = param1;
      }
      
      public function get §7z§() : Number
      {
         if(this.name.toUpperCase() == "BIRD_GREEN")
         {
            return §"#C§;
         }
         return §^",§;
      }
      
      public function approachSlingshot(param1:Number) : void
      {
         if(!this.§!!N§ || this.§ #m§)
         {
            return;
         }
         if(this.§<x§ != 0)
         {
            this.§ r§ = 0;
            this.§2!n§ = 0;
            this.§^I§ = 0;
            this.§%#<§ = 0;
            this.§<x§ = 0;
         }
         param1 = Math.min(param1,this.§<i§);
         this.§0k§ += param1 * (this.§[0§.x - this.§0k§ + this.xOffset) / this.§<i§;
         this.§@_§ += param1 * (this.§[0§.y - this.§@_§ + this.yOffset) / this.§<i§;
         this.§@_§ -= param1 / 50 * (this.§<i§ / §8>§);
         this.§^I§ += param1 * (360 - this.§^I§) / this.§<i§;
         this.§<i§ -= param1;
         if(this.§<i§ <= 0)
         {
            this.§0k§ = this.§[0§.x;
            this.§@_§ = this.§[0§.y;
            this.§!!N§ = false;
            this.§`"L§(true);
            this.§^I§ = 0;
            this.§[$D§ = this.§[0§.angle / Math.PI * 180;
         }
         this.updateRenderer();
      }
      
      public function §#I§() : void
      {
         this.§!!N§ = true;
         this.§<i§ = §8>§;
         §4$4§.playSound(this.§^!c§.§[! §(),this.§^!c§.channelName);
         if(this.§2!n§ != 0)
         {
            this.§@_§ += this.§2!n§;
            this.§2!n§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§=Q§ = null;
         if(!this.§ #m§ && this.§1#u§ >= 0)
         {
            if(this.§&#@§ > this.§[0§.§'"&§.§%?§.ground)
            {
               this.applyGravity(this.§[0§.§'"&§.§%?§.ground - this.§&#@§);
               this.§1#u§ = -1;
            }
            this.§1#u§ -= param1;
            if(this.§1#u§ <= 0)
            {
               if(this.§ r§ > 0)
               {
                  this.§1#u§ = this.§ r§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§&#@§))
               {
                  _loc2_ = this.§[0§.§'"&§.objects.§@"q§(this.§0k§,this.§&#@§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§1#u§ = -1;
                  }
                  else
                  {
                     this.§1#u§ = 0;
                  }
               }
               else
               {
                  _loc3_ = this.§[0§.§'"&§.objects.getObject(_loc2_) as §=Q§;
                  if(_loc3_ && _loc3_.§>"W§)
                  {
                     this.§?!U§ = false;
                     this.§1#u§ = -1;
                  }
                  else if(_loc3_ && _loc3_.§ A§())
                  {
                     this.§?!U§ = false;
                     this.§1#u§ = 2000;
                  }
                  else
                  {
                     this.§1#u§ = 500;
                  }
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§@_§ += param1;
         this.§&#@§ += param1;
         if(this.§&#@§ > this.§[0§.§'"&§.§%?§.ground)
         {
            param1 = this.§&#@§ - this.§[0§.§'"&§.§%?§.ground;
            this.§@_§ -= param1;
            this.§&#@§ -= param1;
            this.updateRenderer();
            return true;
         }
         this.updateRenderer();
         return false;
      }
      
      protected function §+#v§() : void
      {
         var _loc1_:§,#V§ = null;
         if(this.§[!h§ is §,#V§)
         {
            _loc1_ = §,#V§(this.§[!h§);
            this.§;"[§ = new b2Vec2(_loc1_.pivot.x,_loc1_.pivot.y);
            this.§"!'§ = _loc1_.radius;
         }
         else
         {
            this.§;"[§ = new b2Vec2(0,0);
            this.§"!'§ = 1.5;
         }
      }
      
      protected function §^"N§() : void
      {
         this.§&"J§ = this.§[0§.§'"&§.animationManager.getAnimation(this.§-#3§);
         if(!this.§&"J§)
         {
            this.§%"j§(null);
         }
         else
         {
            this.§>$#§();
         }
      }
      
      public function §%"j§(param1:DisplayObject) : void
      {
         this.§6" § = param1;
         if(this.§6" § && this.§6" §.parent != this.§]#+§)
         {
            this.§]#+§.addChild(this.§6" §);
         }
         if(this.§6" §)
         {
            this.§6" §.pivotX -= this.§;"[§.x / §<d§.§6@§;
            this.§6" §.pivotY -= this.§;"[§.y / §<d§.§6@§;
         }
         this.updateRenderer();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§!!N§)
         {
            this.§ r§ = 0;
            _loc4_ = false;
         }
         if(this.§-"W§)
         {
            this.§+#S§(param1);
            this.§#"%§(param1);
            if(_loc4_ && param3)
            {
               this.§""<§(param1,param2);
            }
         }
      }
      
      public function §+#S§(param1:Number) : void
      {
         if(this.§9#>§ > 0)
         {
            this.§9#>§ -= param1;
            if(this.§9#>§ <= 0)
            {
               this.§8!-§();
            }
         }
         else if(this.§9"$§ <= 0 && Math.random() * §0p§ < param1 && this.§[0§.mSlingShotState)
         {
            this.§`"+§();
         }
      }
      
      public function §8!-§() : void
      {
         this.§9#>§ = 0;
         this.§>$#§();
      }
      
      public function §`"+§() : void
      {
         if(!this.§-"W§)
         {
            return;
         }
         this.§9#>§ = §5r§;
         this.§9"3§();
      }
      
      protected function §9"3§() : void
      {
         this.§%"j§(this.§&"J§.getSubAnimation("blink").getFrame(0,this.§6" §));
      }
      
      public function §#"%§(param1:Number) : void
      {
         if(this.§9"$§ > 0)
         {
            this.§9"$§ -= param1;
            if(this.§9"$§ <= 0)
            {
               this.§%9§();
            }
         }
         else if(this.§9#>§ <= 0 && Math.random() * §5E§ < param1)
         {
            this.§'5§();
         }
      }
      
      public function §%9§() : void
      {
         this.§9"$§ = 0;
         this.§>$#§();
      }
      
      protected function §>$#§() : void
      {
         this.§%"j§(this.§&"J§.getFrame(0,this.§6" §));
      }
      
      public function §'5§(param1:Boolean = false) : void
      {
         if(!this.§-"W§)
         {
            return;
         }
         if(this.§9"$§ > 0)
         {
            this.§%9§();
         }
         if(this.§9#>§ > 0)
         {
            this.§8!-§();
         }
         this.§9"$§ = §"#u§;
         this.§=#'§();
         var _loc2_:String = this.§^!c§.getIdleSounds();
         if(!_loc2_)
         {
            _loc2_ = §7"g§[int(Math.random() * §7"g§.length)];
         }
         if(this.§ #m§ || this.§!!N§ || param1)
         {
            §4$4§.playSound(_loc2_,this.§^!c§.channelName);
         }
         else
         {
            §4$4§.playSound(_loc2_,§?#P§);
         }
      }
      
      protected function §=#'§() : void
      {
         this.§%"j§(this.§&"J§.getSubAnimation("yell").getFrame(0,this.§6" §));
      }
      
      public function §""<§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§ r§ > 0)
         {
            this.§ r§ -= param1;
            if(this.§ r§ <= 0)
            {
               ++this.§+S§;
               this.§%#<§ *= 0.4;
               if(!this.§ #m§ && this.§+S§ < 2)
               {
                  if(this.§+S§ > 1 && this.§%#<§ < -1)
                  {
                     this.§%#<§ = -1;
                  }
                  this.§&"7§ = this.§%#<§;
                  this.§ r§ = §4!d§;
                  this.§ r§ *= Math.abs(this.§&"7§) / 2;
                  this.§%"+§ = this.§ r§;
                  this.§^I§ = 0;
                  this.§<x§ = 0;
               }
               else if(!this.§ #m§ && param2)
               {
                  this.§1b§(1.5);
               }
               else
               {
                  this.§ r§ = 0;
                  this.§2!n§ = 0;
                  this.§^I§ = 0;
                  this.§%#<§ = 0;
               }
            }
            else
            {
               if(this.§ r§ >= this.§%"+§ / 2)
               {
                  _loc3_ = (this.§%"+§ - this.§ r§) / (this.§%"+§ / 2);
                  _loc3_ = §@"t§.§;"T§(_loc3_);
                  this.§2!n§ = _loc3_ * this.§&"7§;
               }
               else
               {
                  _loc3_ = (this.§%"+§ / 2 - this.§ r§) / (this.§%"+§ / 2);
                  _loc3_ = §@"t§.§;"T§(_loc3_,false);
                  this.§2!n§ = this.§&"7§ + _loc3_ * -this.§&"7§;
               }
               this.§^I§ = 360 * §@"t§.§;"T§((this.§%"+§ - this.§ r§) / this.§%"+§) * this.§<x§;
            }
            this.updateRenderer();
         }
         else if(Math.random() * §5!d§ < param1 && !this.§ #m§ && !this.§!!N§ && !this.§?!U§)
         {
            this.§1b§();
         }
      }
      
      public function §1b§(param1:Number = 1) : void
      {
         if(!this.§-"W§)
         {
            return;
         }
         this.§+S§ = 0;
         this.§ r§ = §4!d§;
         this.§2!n§ = 0;
         this.§&"7§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§%#<§ = this.§&"7§;
         this.§ r§ *= Math.abs(this.§&"7§) / 3;
         this.§%"+§ = this.§ r§;
         if(this.§-#3§ == "BIRD_WHITE" || this.§-#3§ == "BIRD_BLACK" || this.§-#3§ == "RED_BIG")
         {
            this.§<x§ = 0;
         }
         else if(this.§ r§ < 350)
         {
            this.§<x§ = 0;
         }
         else
         {
            this.§<x§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§<x§ = Math.random() > 0.5 ? Number(this.§<x§) : Number(0);
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§[0§.§"#4§)
         {
            this.§]#+§.x = this.§0k§ / §<d§.§6@§;
            this.§]#+§.y = (this.§@_§ + this.§2!n§) / §<d§.§6@§;
         }
         else
         {
            this.§]#+§.x = (this.§0k§ + this.§2!n§ * Math.cos((this.§[$D§ + 90) / 180 * Math.PI)) / §<d§.§6@§;
            this.§]#+§.y = (this.§@_§ + this.§2!n§ * Math.sin((this.§[$D§ + 90) / 180 * Math.PI)) / §<d§.§6@§;
         }
         if(this.§[0§.§4#[§)
         {
            this.§]#+§.rotation = (this.§^I§ + this.§[$D§) / 180 * Math.PI;
         }
         if(this.backgroundSprite)
         {
            this.backgroundSprite.x = this.§]#+§.x;
            this.backgroundSprite.y = this.§]#+§.y;
            this.backgroundSprite.rotation = this.§]#+§.rotation;
         }
      }
      
      public function §'P§() : void
      {
         this.§?!U§ = true;
         this.§ #m§ = false;
         this.§!!N§ = false;
         this.§+S§ = 0;
         this.§1#u§ = 0;
         this.§ r§ = 0;
         this.§ r§ = 0;
         this.§2!n§ = 0;
         this.§^I§ = 0;
         this.§%#<§ = 0;
         this.§<x§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§0k§) * (param1 - this.§0k§) + (param2 - this.§@_§) * (param2 - this.§@_§));
         if(_loc3_ <= this.§"!'§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§0k§ >= param3 && this.§0k§ <= param4 && this.§@_§ >= param1 && this.§@_§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         if(this.§0k§ != param1 || this.§@_§ != param2)
         {
            _loc4_ = true;
         }
         this.§0k§ = param1;
         this.§@_§ = param2;
         this.§^I§ = param3;
         this.§1#u§ = 100;
         this.updateRenderer();
         if(_loc4_)
         {
            this.§[0§.sortBirds();
         }
      }
      
      public function get §#"k§() : Number
      {
         return this.§ r§;
      }
      
      public function get §!! §() : Number
      {
         return this.§1#u§;
      }
      
      public function set §!! §(param1:Number) : void
      {
         this.§1#u§ = param1;
      }
      
      public function get §&3§() : Object
      {
         return this.§5#@§;
      }
      
      public function get §!$&§() : Object
      {
         return this.§#!-§;
      }
      
      public function get §'1§() : Boolean
      {
         return this.§ #m§;
      }
      
      public function get radius() : Number
      {
         return this.§"!'§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§]#+§;
      }
      
      public function set name(param1:String) : void
      {
         this.§-#3§ = param1;
      }
      
      public function get name() : String
      {
         return this.§-#3§;
      }
      
      public function set §&3§(param1:Object) : void
      {
         this.§5#@§ = param1;
      }
      
      public function set §!$&§(param1:Object) : void
      {
         this.§#!-§ = param1;
      }
      
      public function get §7g§() : Number
      {
         return this.§%o§;
      }
      
      public function set §7g§(param1:Number) : void
      {
         this.§%o§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§6#q§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§6#q§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§0k§;
      }
      
      public function get y() : Number
      {
         return this.§@_§;
      }
      
      public function get originalX() : Number
      {
         return this.§]D§;
      }
      
      public function get originalY() : Number
      {
         return this.§&b§;
      }
      
      public function get §5"_§() : Boolean
      {
         return this.§?$%§;
      }
      
      public function set §5"_§(param1:Boolean) : void
      {
         this.§?$%§ = param1;
      }
   }
}
