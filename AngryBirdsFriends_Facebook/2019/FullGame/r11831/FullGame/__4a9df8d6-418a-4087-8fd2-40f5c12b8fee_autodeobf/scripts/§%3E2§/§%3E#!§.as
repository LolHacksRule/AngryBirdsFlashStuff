package §>2§
{
   import §'G§.§;D§;
   import §1#v§.§%_§;
   import §6!3§.§;!U§;
   import §6#H§.DisplayObject;
   import §6#H§.Sprite;
   import §8#K§.§3Z§;
   import §?!C§.b2Vec2;
   import §?$<§.§'!s§;
   import §?$<§.§4"F§;
   import §?$<§.§9!V§;
   import §?$<§.§?$>§;
   
   public class §>#!§
   {
      
      public static const §7#f§:String = "ChannelSlingshot";
      
      public static const §1!V§:Number = 900;
      
      public static const §3M§:Number = 200;
      
      public static const §,#w§:Number = 200;
      
      public static const §7#b§:Number = 1500;
      
      public static const §7![§:Number = 5000;
      
      public static const §4"=§:Number = 1000;
      
      public static const §&k§:Number = 1000;
      
      public static const §&"R§:Number = 46.25;
      
      public static const §`>§:Number = 55.5;
      
      private static const §?]§:Array = ["bird_misc_a1","bird_misc_a2","bird_misc_a3","bird_misc_a4","bird_misc_a5","bird_misc_a6","bird_misc_a7","bird_misc_a8","bird_misc_a9","bird_misc_a10","bird_misc_a11","bird_misc_a12"];
       
      
      protected var §!I§:String;
      
      protected var §["d§:Number;
      
      protected var §%#z§:Number;
      
      protected var §+R§:Number;
      
      protected var §=#q§:Number;
      
      protected var §%"B§:Number;
      
      protected var §1#c§:Number;
      
      private var §6#d§:§9!V§;
      
      protected var §'$5§:Number;
      
      protected var §?";§:Number = 1;
      
      private var §'#f§:Sprite;
      
      private var §!#H§:Sprite;
      
      protected var §&#N§:§;D§;
      
      private var §,#_§:DisplayObject;
      
      protected var §]#-§:§6#t§;
      
      private var §-!c§:Number;
      
      protected var §^"p§:Boolean = false;
      
      private var §6"t§:Boolean = false;
      
      protected var §]"b§:Boolean = false;
      
      private var §<$0§:Number;
      
      private var §;$A§:Number = 0;
      
      private var §=$2§:Number = 0;
      
      private var §5"z§:Number = 0;
      
      private var §^"h§:Number = 1000;
      
      private var §?#"§:Number;
      
      private var §^#=§:Number;
      
      private var § B§:int;
      
      private var §<#"§:Number = 0;
      
      protected var §%#=§:Number;
      
      protected var §'"q§:Number;
      
      private var §>"-§:Object;
      
      private var §-!>§:Object;
      
      private var §%!>§:Number = 0;
      
      private var §&! §:b2Vec2;
      
      private var §5>§:Number = 1;
      
      private var §9!3§:§4"F§;
      
      protected var §"#6§:§?$>§;
      
      protected var §3c§:Boolean = true;
      
      private var §'"`§:int;
      
      protected var yOffset:Number = 0;
      
      protected var xOffset:Number = 0;
      
      public var scoreCounted:Boolean;
      
      protected var §1#m§:Boolean;
      
      public function §>#!§(param1:§6#t§, param2:Sprite, param3:String, param4:§?$>§, param5:Number, param6:Number, param7:Number, param8:int)
      {
         super();
         this.§"#6§ = param4;
         this.§'"`§ = param8;
         this.§]#-§ = param1;
         this.§'#f§ = param2;
         this.§!I§ = param3;
         this.§9!3§ = param4.shape;
         this.§6#d§ = param4.soundResource;
         this.§["d§ = param5;
         this.§%#z§ = param6;
         this.§+R§ = param7 / Math.PI * 180;
         this.§1#c§ = this.§+R§;
         this.§=#q§ = param5;
         this.§%"B§ = param6;
         this.§^"p§ = false;
         this.§6"t§ = false;
         this.§'$5§ = 0;
         this.§;$A§ = 0;
         this.§%#=§ = 0;
         this.§=!Q§();
         this.§`"^§();
         this.§&!-§ = true;
      }
      
      public static function §&#i§() : Number
      {
         return §`>§ / §&"R§;
      }
      
      public function get launchIndex() : int
      {
         return this.§'"`§;
      }
      
      public function set launchIndex(param1:int) : void
      {
         this.§'"`§ = param1;
      }
      
      public function get backgroundSprite() : Sprite
      {
         return this.§!#H§;
      }
      
      public function dispose() : void
      {
         if(this.§'#f§)
         {
            this.§'#f§.dispose();
            this.§'#f§ = null;
         }
         if(this.§!#H§)
         {
            this.§!#H§.dispose();
            this.§!#H§ = null;
         }
      }
      
      public function §@"u§() : void
      {
         if(!this.§!#H§)
         {
            this.§!#H§ = new Sprite();
            this.backgroundSprite.x = this.§'#f§.x;
            this.backgroundSprite.y = this.§'#f§.y;
            this.backgroundSprite.rotation = this.§'#f§.rotation;
         }
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§,#_§)
         {
            this.§,#_§.color = param1;
         }
      }
      
      public function get levelItem() : §?$>§
      {
         return this.§"#6§;
      }
      
      public function §8"]§(param1:Boolean) : void
      {
         this.§^"p§ = param1;
         if(!this.§0"x§)
         {
            this.§["d§ = this.§=#q§;
            this.§%#z§ = this.§%"B§;
            this.§'$5§ = this.§+R§;
            this.updateRenderer();
         }
      }
      
      public function set animationsEnabled(param1:Boolean) : void
      {
         this.§3c§ = param1;
      }
      
      public function get §0" §() : Number
      {
         if(this.name.toUpperCase() == "BIRD_GREEN")
         {
            return §`>§;
         }
         return §&"R§;
      }
      
      public function approachSlingshot(param1:Number) : void
      {
         if(!this.§6"t§ || this.§^"p§)
         {
            return;
         }
         if(this.§?";§ != 0)
         {
            this.§5"z§ = 0;
            this.§<#"§ = 0;
            this.§'$5§ = 0;
            this.§^#=§ = 0;
            this.§?";§ = 0;
         }
         param1 = Math.min(param1,this.§<$0§);
         this.§["d§ += param1 * (this.§]#-§.x - this.§["d§ + this.xOffset) / this.§<$0§;
         this.§%#z§ += param1 * (this.§]#-§.y - this.§%#z§ + this.yOffset) / this.§<$0§;
         this.§%#z§ -= param1 / 50 * (this.§<$0§ / §1!V§);
         this.§'$5§ += param1 * (360 - this.§'$5§) / this.§<$0§;
         this.§<$0§ -= param1;
         if(this.§<$0§ <= 0)
         {
            this.§["d§ = this.§]#-§.x;
            this.§%#z§ = this.§]#-§.y;
            this.§6"t§ = false;
            this.§8"]§(true);
            this.§'$5§ = 0;
            this.§+R§ = this.§]#-§.angle / Math.PI * 180;
         }
         this.updateRenderer();
      }
      
      public function §<#4§() : void
      {
         this.§6"t§ = true;
         this.§<$0§ = §1!V§;
         §3Z§.playSound(this.§6#d§.§`!y§(),this.§6#d§.channelName);
         if(this.§<#"§ != 0)
         {
            this.§%#z§ += this.§<#"§;
            this.§<#"§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§;!U§ = null;
         if(!this.§^"p§ && this.§%#=§ >= 0)
         {
            if(this.§'"q§ > this.§]#-§.§1$'§.§;$5§.ground)
            {
               this.applyGravity(this.§]#-§.§1$'§.§;$5§.ground - this.§'"q§);
               this.§%#=§ = -1;
            }
            this.§%#=§ -= param1;
            if(this.§%#=§ <= 0)
            {
               if(this.§5"z§ > 0)
               {
                  this.§%#=§ = this.§5"z§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§'"q§))
               {
                  _loc2_ = this.§]#-§.§1$'§.objects.§-?§(this.§["d§,this.§'"q§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§%#=§ = -1;
                  }
                  else
                  {
                     this.§%#=§ = 0;
                  }
               }
               else
               {
                  _loc3_ = this.§]#-§.§1$'§.objects.getObject(_loc2_) as §;!U§;
                  if(_loc3_ && _loc3_.§0"w§)
                  {
                     this.§]"b§ = false;
                     this.§%#=§ = -1;
                  }
                  else if(_loc3_ && _loc3_.§>"@§())
                  {
                     this.§]"b§ = false;
                     this.§%#=§ = 2000;
                  }
                  else
                  {
                     this.§%#=§ = 500;
                  }
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§%#z§ += param1;
         this.§'"q§ += param1;
         if(this.§'"q§ > this.§]#-§.§1$'§.§;$5§.ground)
         {
            param1 = this.§'"q§ - this.§]#-§.§1$'§.§;$5§.ground;
            this.§%#z§ -= param1;
            this.§'"q§ -= param1;
            this.updateRenderer();
            return true;
         }
         this.updateRenderer();
         return false;
      }
      
      protected function §=!Q§() : void
      {
         var _loc1_:§'!s§ = null;
         if(this.§9!3§ is §'!s§)
         {
            _loc1_ = §'!s§(this.§9!3§);
            this.§&! § = new b2Vec2(_loc1_.pivot.x,_loc1_.pivot.y);
            this.§-!c§ = _loc1_.radius;
         }
         else
         {
            this.§&! § = new b2Vec2(0,0);
            this.§-!c§ = 1.5;
         }
      }
      
      protected function §`"^§() : void
      {
         this.§&#N§ = this.§]#-§.§1$'§.animationManager.getAnimation(this.§!I§);
         if(!this.§&#N§)
         {
            this.§<"2§(null);
         }
         else
         {
            this.§'"B§();
         }
      }
      
      public function §<"2§(param1:DisplayObject) : void
      {
         this.§,#_§ = param1;
         if(this.§,#_§ && this.§,#_§.parent != this.§'#f§)
         {
            this.§'#f§.addChild(this.§,#_§);
         }
         if(this.§,#_§)
         {
            this.§,#_§.pivotX -= this.§&! §.x / §!6§.§[#v§;
            this.§,#_§.pivotY -= this.§&! §.y / §!6§.§[#v§;
         }
         this.updateRenderer();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§6"t§)
         {
            this.§5"z§ = 0;
            _loc4_ = false;
         }
         if(this.§3c§)
         {
            this.§51§(param1);
            this.§'$1§(param1);
            if(_loc4_ && param3)
            {
               this.§0§(param1,param2);
            }
         }
      }
      
      public function §51§(param1:Number) : void
      {
         if(this.§;$A§ > 0)
         {
            this.§;$A§ -= param1;
            if(this.§;$A§ <= 0)
            {
               this.§6!`§();
            }
         }
         else if(this.§=$2§ <= 0 && Math.random() * §7#b§ < param1 && this.§]#-§.mSlingShotState)
         {
            this.§'!=§();
         }
      }
      
      public function §6!`§() : void
      {
         this.§;$A§ = 0;
         this.§'"B§();
      }
      
      public function §'!=§() : void
      {
         if(!this.§3c§)
         {
            return;
         }
         this.§;$A§ = §3M§;
         this.§4K§();
      }
      
      protected function §4K§() : void
      {
         this.§<"2§(this.§&#N§.getSubAnimation("blink").getFrame(0,this.§,#_§));
      }
      
      public function §'$1§(param1:Number) : void
      {
         if(this.§=$2§ > 0)
         {
            this.§=$2§ -= param1;
            if(this.§=$2§ <= 0)
            {
               this.§+a§();
            }
         }
         else if(this.§;$A§ <= 0 && Math.random() * §7![§ < param1)
         {
            this.§5#B§();
         }
      }
      
      public function §+a§() : void
      {
         this.§=$2§ = 0;
         this.§'"B§();
      }
      
      protected function §'"B§() : void
      {
         this.§<"2§(this.§&#N§.getFrame(0,this.§,#_§));
      }
      
      public function §5#B§(param1:Boolean = false) : void
      {
         if(!this.§3c§)
         {
            return;
         }
         if(this.§=$2§ > 0)
         {
            this.§+a§();
         }
         if(this.§;$A§ > 0)
         {
            this.§6!`§();
         }
         this.§=$2§ = §,#w§;
         this.§,!@§();
         var _loc2_:String = this.§6#d§.getIdleSounds();
         if(!_loc2_)
         {
            _loc2_ = §?]§[int(Math.random() * §?]§.length)];
         }
         if(this.§^"p§ || this.§6"t§ || param1)
         {
            §3Z§.playSound(_loc2_,this.§6#d§.channelName);
         }
         else
         {
            §3Z§.playSound(_loc2_,§7#f§);
         }
      }
      
      protected function §,!@§() : void
      {
         this.§<"2§(this.§&#N§.getSubAnimation("yell").getFrame(0,this.§,#_§));
      }
      
      public function §0§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§5"z§ > 0)
         {
            this.§5"z§ -= param1;
            if(this.§5"z§ <= 0)
            {
               ++this.§ B§;
               this.§^#=§ *= 0.4;
               if(!this.§^"p§ && this.§ B§ < 2)
               {
                  if(this.§ B§ > 1 && this.§^#=§ < -1)
                  {
                     this.§^#=§ = -1;
                  }
                  this.§?#"§ = this.§^#=§;
                  this.§5"z§ = §&k§;
                  this.§5"z§ *= Math.abs(this.§?#"§) / 2;
                  this.§^"h§ = this.§5"z§;
                  this.§'$5§ = 0;
                  this.§?";§ = 0;
               }
               else if(!this.§^"p§ && param2)
               {
                  this.§3!U§(1.5);
               }
               else
               {
                  this.§5"z§ = 0;
                  this.§<#"§ = 0;
                  this.§'$5§ = 0;
                  this.§^#=§ = 0;
               }
            }
            else
            {
               if(this.§5"z§ >= this.§^"h§ / 2)
               {
                  _loc3_ = (this.§^"h§ - this.§5"z§) / (this.§^"h§ / 2);
                  _loc3_ = §%_§.§30§(_loc3_);
                  this.§<#"§ = _loc3_ * this.§?#"§;
               }
               else
               {
                  _loc3_ = (this.§^"h§ / 2 - this.§5"z§) / (this.§^"h§ / 2);
                  _loc3_ = §%_§.§30§(_loc3_,false);
                  this.§<#"§ = this.§?#"§ + _loc3_ * -this.§?#"§;
               }
               this.§'$5§ = 360 * §%_§.§30§((this.§^"h§ - this.§5"z§) / this.§^"h§) * this.§?";§;
            }
            this.updateRenderer();
         }
         else if(Math.random() * §4"=§ < param1 && !this.§^"p§ && !this.§6"t§ && !this.§]"b§)
         {
            this.§3!U§();
         }
      }
      
      public function §3!U§(param1:Number = 1) : void
      {
         if(!this.§3c§)
         {
            return;
         }
         this.§ B§ = 0;
         this.§5"z§ = §&k§;
         this.§<#"§ = 0;
         this.§?#"§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§^#=§ = this.§?#"§;
         this.§5"z§ *= Math.abs(this.§?#"§) / 3;
         this.§^"h§ = this.§5"z§;
         if(this.§!I§ == "BIRD_WHITE" || this.§!I§ == "BIRD_BLACK" || this.§!I§ == "RED_BIG")
         {
            this.§?";§ = 0;
         }
         else if(this.§5"z§ < 350)
         {
            this.§?";§ = 0;
         }
         else
         {
            this.§?";§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§?";§ = Math.random() > 0.5 ? Number(this.§?";§) : Number(0);
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§]#-§.§<"n§)
         {
            this.§'#f§.x = this.§["d§ / §!6§.§[#v§;
            this.§'#f§.y = (this.§%#z§ + this.§<#"§) / §!6§.§[#v§;
         }
         else
         {
            this.§'#f§.x = (this.§["d§ + this.§<#"§ * Math.cos((this.§+R§ + 90) / 180 * Math.PI)) / §!6§.§[#v§;
            this.§'#f§.y = (this.§%#z§ + this.§<#"§ * Math.sin((this.§+R§ + 90) / 180 * Math.PI)) / §!6§.§[#v§;
         }
         if(this.§]#-§.§2"+§)
         {
            this.§'#f§.rotation = (this.§'$5§ + this.§+R§) / 180 * Math.PI;
         }
         if(this.backgroundSprite)
         {
            this.backgroundSprite.x = this.§'#f§.x;
            this.backgroundSprite.y = this.§'#f§.y;
            this.backgroundSprite.rotation = this.§'#f§.rotation;
         }
      }
      
      public function §1'§() : void
      {
         this.§]"b§ = true;
         this.§^"p§ = false;
         this.§6"t§ = false;
         this.§ B§ = 0;
         this.§%#=§ = 0;
         this.§5"z§ = 0;
         this.§5"z§ = 0;
         this.§<#"§ = 0;
         this.§'$5§ = 0;
         this.§^#=§ = 0;
         this.§?";§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§["d§) * (param1 - this.§["d§) + (param2 - this.§%#z§) * (param2 - this.§%#z§));
         if(_loc3_ <= this.§-!c§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§["d§ >= param3 && this.§["d§ <= param4 && this.§%#z§ >= param1 && this.§%#z§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         if(this.§["d§ != param1 || this.§%#z§ != param2)
         {
            _loc4_ = true;
         }
         this.§["d§ = param1;
         this.§%#z§ = param2;
         this.§'$5§ = param3;
         this.§%#=§ = 100;
         this.updateRenderer();
         if(_loc4_)
         {
            this.§]#-§.sortBirds();
         }
      }
      
      public function get §0#j§() : Number
      {
         return this.§5"z§;
      }
      
      public function get §9"f§() : Number
      {
         return this.§%#=§;
      }
      
      public function set §9"f§(param1:Number) : void
      {
         this.§%#=§ = param1;
      }
      
      public function get §]!q§() : Object
      {
         return this.§>"-§;
      }
      
      public function get §+#?§() : Object
      {
         return this.§-!>§;
      }
      
      public function get §0"x§() : Boolean
      {
         return this.§^"p§;
      }
      
      public function get radius() : Number
      {
         return this.§-!c§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§'#f§;
      }
      
      public function set name(param1:String) : void
      {
         this.§!I§ = param1;
      }
      
      public function get name() : String
      {
         return this.§!I§;
      }
      
      public function set §]!q§(param1:Object) : void
      {
         this.§>"-§ = param1;
      }
      
      public function set §+#?§(param1:Object) : void
      {
         this.§-!>§ = param1;
      }
      
      public function get §<!+§() : Number
      {
         return this.§%!>§;
      }
      
      public function set §<!+§(param1:Number) : void
      {
         this.§%!>§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§5>§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§5>§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§["d§;
      }
      
      public function get y() : Number
      {
         return this.§%#z§;
      }
      
      public function get originalX() : Number
      {
         return this.§=#q§;
      }
      
      public function get originalY() : Number
      {
         return this.§%"B§;
      }
      
      public function get §&!-§() : Boolean
      {
         return this.§1#m§;
      }
      
      public function set §&!-§(param1:Boolean) : void
      {
         this.§1#m§ = param1;
      }
   }
}
