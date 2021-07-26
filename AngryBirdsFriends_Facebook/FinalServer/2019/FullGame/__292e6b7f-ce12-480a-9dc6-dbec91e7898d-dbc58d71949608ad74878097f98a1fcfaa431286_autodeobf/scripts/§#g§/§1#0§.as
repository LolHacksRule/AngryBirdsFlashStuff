package §#g§
{
   import §,#e§.DisplayObject;
   import §,#e§.Sprite;
   import §04§.b2Vec2;
   import §3"V§.§ b§;
   import §6"p§.§6#F§;
   import §7"T§.§7b§;
   import §8#K§.§&2§;
   import §8#K§.§46§;
   import §8#K§.§8$-§;
   import §8#K§.§=$'§;
   import §;!=§.§>"G§;
   
   public class §1#0§
   {
      
      public static const § #s§:String = "ChannelSlingshot";
      
      public static const §@#F§:Number = 900;
      
      public static const §+J§:Number = 200;
      
      public static const §="t§:Number = 200;
      
      public static const §2z§:Number = 1500;
      
      public static const §#M§:Number = 5000;
      
      public static const §3;§:Number = 1000;
      
      public static const §8"j§:Number = 1000;
      
      public static const §5#d§:Number = 46.25;
      
      public static const §]$&§:Number = 55.5;
      
      private static const §6"$§:Array = ["bird_misc_a1","bird_misc_a2","bird_misc_a3","bird_misc_a4","bird_misc_a5","bird_misc_a6","bird_misc_a7","bird_misc_a8","bird_misc_a9","bird_misc_a10","bird_misc_a11","bird_misc_a12"];
       
      
      protected var §&$"§:String;
      
      protected var §&$'§:Number;
      
      protected var §<#-§:Number;
      
      protected var § !B§:Number;
      
      protected var § Y§:Number;
      
      protected var §1"U§:Number;
      
      protected var §-"Y§:Number;
      
      private var §;$7§:§8$-§;
      
      protected var §^]§:Number;
      
      protected var §39§:Number = 1;
      
      private var §&"h§:Sprite;
      
      private var §9"c§:Sprite;
      
      protected var §#"T§:§7b§;
      
      private var §3#F§:DisplayObject;
      
      protected var §;!U§:§^"R§;
      
      private var §`!"§:Number;
      
      protected var §return§:Boolean = false;
      
      private var §;$>§:Boolean = false;
      
      protected var §@!T§:Boolean = false;
      
      private var §,"`§:Number;
      
      private var §6"5§:Number = 0;
      
      private var §5K§:Number = 0;
      
      private var §4"m§:Number = 0;
      
      private var §=#7§:Number = 1000;
      
      private var §@N§:Number;
      
      private var §`"f§:Number;
      
      private var §0d§:int;
      
      private var §;"J§:Number = 0;
      
      protected var §+!%§:Number;
      
      protected var §%"M§:Number;
      
      private var §0"U§:Object;
      
      private var §="V§:Object;
      
      private var §;"u§:Number = 0;
      
      private var §]"^§:b2Vec2;
      
      private var §#!1§:Number = 1;
      
      private var §=q§:§46§;
      
      protected var §]h§:§&2§;
      
      protected var §-e§:Boolean = true;
      
      private var §0$2§:int;
      
      protected var yOffset:Number = 0;
      
      protected var xOffset:Number = 0;
      
      public var scoreCounted:Boolean;
      
      protected var §^"9§:Boolean;
      
      public function §1#0§(param1:§^"R§, param2:Sprite, param3:String, param4:§&2§, param5:Number, param6:Number, param7:Number, param8:int)
      {
         super();
         this.§]h§ = param4;
         this.§0$2§ = param8;
         this.§;!U§ = param1;
         this.§&"h§ = param2;
         this.§&$"§ = param3;
         this.§=q§ = param4.shape;
         this.§;$7§ = param4.soundResource;
         this.§&$'§ = param5;
         this.§<#-§ = param6;
         this.§ !B§ = param7 / Math.PI * 180;
         this.§-"Y§ = this.§ !B§;
         this.§ Y§ = param5;
         this.§1"U§ = param6;
         this.§return§ = false;
         this.§;$>§ = false;
         this.§^]§ = 0;
         this.§6"5§ = 0;
         this.§+!%§ = 0;
         this.§?"e§();
         this.§'#O§();
         this.§##7§ = true;
      }
      
      public static function §!!E§() : Number
      {
         return §]$&§ / §5#d§;
      }
      
      public function get launchIndex() : int
      {
         return this.§0$2§;
      }
      
      public function set launchIndex(param1:int) : void
      {
         this.§0$2§ = param1;
      }
      
      public function get backgroundSprite() : Sprite
      {
         return this.§9"c§;
      }
      
      public function dispose() : void
      {
         if(this.§&"h§)
         {
            this.§&"h§.dispose();
            this.§&"h§ = null;
         }
         if(this.§9"c§)
         {
            this.§9"c§.dispose();
            this.§9"c§ = null;
         }
      }
      
      public function §"<§() : void
      {
         if(!this.§9"c§)
         {
            this.§9"c§ = new Sprite();
            this.backgroundSprite.x = this.§&"h§.x;
            this.backgroundSprite.y = this.§&"h§.y;
            this.backgroundSprite.rotation = this.§&"h§.rotation;
         }
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§3#F§)
         {
            this.§3#F§.color = param1;
         }
      }
      
      public function get levelItem() : §&2§
      {
         return this.§]h§;
      }
      
      public function §8! §(param1:Boolean) : void
      {
         this.§return§ = param1;
         if(!this.§,!p§)
         {
            this.§&$'§ = this.§ Y§;
            this.§<#-§ = this.§1"U§;
            this.§^]§ = this.§ !B§;
            this.updateRenderer();
         }
      }
      
      public function set animationsEnabled(param1:Boolean) : void
      {
         this.§-e§ = param1;
      }
      
      public function get §3$9§() : Number
      {
         if(this.name.toUpperCase() == "BIRD_GREEN")
         {
            return §]$&§;
         }
         return §5#d§;
      }
      
      public function approachSlingshot(param1:Number) : void
      {
         if(!this.§;$>§ || this.§return§)
         {
            return;
         }
         if(this.§39§ != 0)
         {
            this.§4"m§ = 0;
            this.§;"J§ = 0;
            this.§^]§ = 0;
            this.§`"f§ = 0;
            this.§39§ = 0;
         }
         param1 = Math.min(param1,this.§,"`§);
         this.§&$'§ += param1 * (this.§;!U§.x - this.§&$'§ + this.xOffset) / this.§,"`§;
         this.§<#-§ += param1 * (this.§;!U§.y - this.§<#-§ + this.yOffset) / this.§,"`§;
         this.§<#-§ -= param1 / 50 * (this.§,"`§ / §@#F§);
         this.§^]§ += param1 * (360 - this.§^]§) / this.§,"`§;
         this.§,"`§ -= param1;
         if(this.§,"`§ <= 0)
         {
            this.§&$'§ = this.§;!U§.x;
            this.§<#-§ = this.§;!U§.y;
            this.§;$>§ = false;
            this.§8! §(true);
            this.§^]§ = 0;
            this.§ !B§ = this.§;!U§.angle / Math.PI * 180;
         }
         this.updateRenderer();
      }
      
      public function §,X§() : void
      {
         this.§;$>§ = true;
         this.§,"`§ = §@#F§;
         § b§.playSound(this.§;$7§.§<!Z§(),this.§;$7§.channelName);
         if(this.§;"J§ != 0)
         {
            this.§<#-§ += this.§;"J§;
            this.§;"J§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§>"G§ = null;
         if(!this.§return§ && this.§+!%§ >= 0)
         {
            if(this.§%"M§ > this.§;!U§.§,!M§.§3"b§.ground)
            {
               this.applyGravity(this.§;!U§.§,!M§.§3"b§.ground - this.§%"M§);
               this.§+!%§ = -1;
            }
            this.§+!%§ -= param1;
            if(this.§+!%§ <= 0)
            {
               if(this.§4"m§ > 0)
               {
                  this.§+!%§ = this.§4"m§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§%"M§))
               {
                  _loc2_ = this.§;!U§.§,!M§.objects.§`#M§(this.§&$'§,this.§%"M§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§+!%§ = -1;
                  }
                  else
                  {
                     this.§+!%§ = 0;
                  }
               }
               else
               {
                  _loc3_ = this.§;!U§.§,!M§.objects.getObject(_loc2_) as §>"G§;
                  if(_loc3_ && _loc3_.§,y§)
                  {
                     this.§@!T§ = false;
                     this.§+!%§ = -1;
                  }
                  else if(_loc3_ && _loc3_.§4A§())
                  {
                     this.§@!T§ = false;
                     this.§+!%§ = 2000;
                  }
                  else
                  {
                     this.§+!%§ = 500;
                  }
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§<#-§ += param1;
         this.§%"M§ += param1;
         if(this.§%"M§ > this.§;!U§.§,!M§.§3"b§.ground)
         {
            param1 = this.§%"M§ - this.§;!U§.§,!M§.§3"b§.ground;
            this.§<#-§ -= param1;
            this.§%"M§ -= param1;
            this.updateRenderer();
            return true;
         }
         this.updateRenderer();
         return false;
      }
      
      protected function §?"e§() : void
      {
         var _loc1_:§=$'§ = null;
         if(this.§=q§ is §=$'§)
         {
            _loc1_ = §=$'§(this.§=q§);
            this.§]"^§ = new b2Vec2(_loc1_.pivot.x,_loc1_.pivot.y);
            this.§`!"§ = _loc1_.radius;
         }
         else
         {
            this.§]"^§ = new b2Vec2(0,0);
            this.§`!"§ = 1.5;
         }
      }
      
      protected function §'#O§() : void
      {
         this.§#"T§ = this.§;!U§.§,!M§.animationManager.getAnimation(this.§&$"§);
         if(!this.§#"T§)
         {
            this.§-#l§(null);
         }
         else
         {
            this.§;"?§();
         }
      }
      
      public function §-#l§(param1:DisplayObject) : void
      {
         this.§3#F§ = param1;
         if(this.§3#F§ && this.§3#F§.parent != this.§&"h§)
         {
            this.§&"h§.addChild(this.§3#F§);
         }
         if(this.§3#F§)
         {
            this.§3#F§.pivotX -= this.§]"^§.x / §8#3§.§2K§;
            this.§3#F§.pivotY -= this.§]"^§.y / §8#3§.§2K§;
         }
         this.updateRenderer();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§;$>§)
         {
            this.§4"m§ = 0;
            _loc4_ = false;
         }
         if(this.§-e§)
         {
            this.§^!;§(param1);
            this.§`!y§(param1);
            if(_loc4_ && param3)
            {
               this.§[!3§(param1,param2);
            }
         }
      }
      
      public function §^!;§(param1:Number) : void
      {
         if(this.§6"5§ > 0)
         {
            this.§6"5§ -= param1;
            if(this.§6"5§ <= 0)
            {
               this.§[">§();
            }
         }
         else if(this.§5K§ <= 0 && Math.random() * §2z§ < param1 && this.§;!U§.mSlingShotState)
         {
            this.§%!O§();
         }
      }
      
      public function §[">§() : void
      {
         this.§6"5§ = 0;
         this.§;"?§();
      }
      
      public function §%!O§() : void
      {
         if(!this.§-e§)
         {
            return;
         }
         this.§6"5§ = §+J§;
         this.§<i§();
      }
      
      protected function §<i§() : void
      {
         this.§-#l§(this.§#"T§.getSubAnimation("blink").getFrame(0,this.§3#F§));
      }
      
      public function §`!y§(param1:Number) : void
      {
         if(this.§5K§ > 0)
         {
            this.§5K§ -= param1;
            if(this.§5K§ <= 0)
            {
               this.§5H§();
            }
         }
         else if(this.§6"5§ <= 0 && Math.random() * §#M§ < param1)
         {
            this.§4#y§();
         }
      }
      
      public function §5H§() : void
      {
         this.§5K§ = 0;
         this.§;"?§();
      }
      
      protected function §;"?§() : void
      {
         this.§-#l§(this.§#"T§.getFrame(0,this.§3#F§));
      }
      
      public function §4#y§(param1:Boolean = false) : void
      {
         if(!this.§-e§)
         {
            return;
         }
         if(this.§5K§ > 0)
         {
            this.§5H§();
         }
         if(this.§6"5§ > 0)
         {
            this.§[">§();
         }
         this.§5K§ = §="t§;
         this.§4$3§();
         var _loc2_:String = this.§;$7§.getIdleSounds();
         if(!_loc2_)
         {
            _loc2_ = §6"$§[int(Math.random() * §6"$§.length)];
         }
         if(this.§return§ || this.§;$>§ || param1)
         {
            § b§.playSound(_loc2_,this.§;$7§.channelName);
         }
         else
         {
            § b§.playSound(_loc2_,§ #s§);
         }
      }
      
      protected function §4$3§() : void
      {
         this.§-#l§(this.§#"T§.getSubAnimation("yell").getFrame(0,this.§3#F§));
      }
      
      public function §[!3§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§4"m§ > 0)
         {
            this.§4"m§ -= param1;
            if(this.§4"m§ <= 0)
            {
               ++this.§0d§;
               this.§`"f§ *= 0.4;
               if(!this.§return§ && this.§0d§ < 2)
               {
                  if(this.§0d§ > 1 && this.§`"f§ < -1)
                  {
                     this.§`"f§ = -1;
                  }
                  this.§@N§ = this.§`"f§;
                  this.§4"m§ = §8"j§;
                  this.§4"m§ *= Math.abs(this.§@N§) / 2;
                  this.§=#7§ = this.§4"m§;
                  this.§^]§ = 0;
                  this.§39§ = 0;
               }
               else if(!this.§return§ && param2)
               {
                  this.§&f§(1.5);
               }
               else
               {
                  this.§4"m§ = 0;
                  this.§;"J§ = 0;
                  this.§^]§ = 0;
                  this.§`"f§ = 0;
               }
            }
            else
            {
               if(this.§4"m§ >= this.§=#7§ / 2)
               {
                  _loc3_ = (this.§=#7§ - this.§4"m§) / (this.§=#7§ / 2);
                  _loc3_ = §6#F§.§,"r§(_loc3_);
                  this.§;"J§ = _loc3_ * this.§@N§;
               }
               else
               {
                  _loc3_ = (this.§=#7§ / 2 - this.§4"m§) / (this.§=#7§ / 2);
                  _loc3_ = §6#F§.§,"r§(_loc3_,false);
                  this.§;"J§ = this.§@N§ + _loc3_ * -this.§@N§;
               }
               this.§^]§ = 360 * §6#F§.§,"r§((this.§=#7§ - this.§4"m§) / this.§=#7§) * this.§39§;
            }
            this.updateRenderer();
         }
         else if(Math.random() * §3;§ < param1 && !this.§return§ && !this.§;$>§ && !this.§@!T§)
         {
            this.§&f§();
         }
      }
      
      public function §&f§(param1:Number = 1) : void
      {
         if(!this.§-e§)
         {
            return;
         }
         this.§0d§ = 0;
         this.§4"m§ = §8"j§;
         this.§;"J§ = 0;
         this.§@N§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§`"f§ = this.§@N§;
         this.§4"m§ *= Math.abs(this.§@N§) / 3;
         this.§=#7§ = this.§4"m§;
         if(this.§&$"§ == "BIRD_WHITE" || this.§&$"§ == "BIRD_BLACK" || this.§&$"§ == "RED_BIG")
         {
            this.§39§ = 0;
         }
         else if(this.§4"m§ < 350)
         {
            this.§39§ = 0;
         }
         else
         {
            this.§39§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§39§ = Math.random() > 0.5 ? Number(this.§39§) : Number(0);
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§;!U§.§`"i§)
         {
            this.§&"h§.x = this.§&$'§ / §8#3§.§2K§;
            this.§&"h§.y = (this.§<#-§ + this.§;"J§) / §8#3§.§2K§;
         }
         else
         {
            this.§&"h§.x = (this.§&$'§ + this.§;"J§ * Math.cos((this.§ !B§ + 90) / 180 * Math.PI)) / §8#3§.§2K§;
            this.§&"h§.y = (this.§<#-§ + this.§;"J§ * Math.sin((this.§ !B§ + 90) / 180 * Math.PI)) / §8#3§.§2K§;
         }
         if(this.§;!U§.§2#J§)
         {
            this.§&"h§.rotation = (this.§^]§ + this.§ !B§) / 180 * Math.PI;
         }
         if(this.backgroundSprite)
         {
            this.backgroundSprite.x = this.§&"h§.x;
            this.backgroundSprite.y = this.§&"h§.y;
            this.backgroundSprite.rotation = this.§&"h§.rotation;
         }
      }
      
      public function §?"j§() : void
      {
         this.§@!T§ = true;
         this.§return§ = false;
         this.§;$>§ = false;
         this.§0d§ = 0;
         this.§+!%§ = 0;
         this.§4"m§ = 0;
         this.§4"m§ = 0;
         this.§;"J§ = 0;
         this.§^]§ = 0;
         this.§`"f§ = 0;
         this.§39§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§&$'§) * (param1 - this.§&$'§) + (param2 - this.§<#-§) * (param2 - this.§<#-§));
         if(_loc3_ <= this.§`!"§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§&$'§ >= param3 && this.§&$'§ <= param4 && this.§<#-§ >= param1 && this.§<#-§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         if(this.§&$'§ != param1 || this.§<#-§ != param2)
         {
            _loc4_ = true;
         }
         this.§&$'§ = param1;
         this.§<#-§ = param2;
         this.§^]§ = param3;
         this.§+!%§ = 100;
         this.updateRenderer();
         if(_loc4_)
         {
            this.§;!U§.sortBirds();
         }
      }
      
      public function get §18§() : Number
      {
         return this.§4"m§;
      }
      
      public function get §!"N§() : Number
      {
         return this.§+!%§;
      }
      
      public function set §!"N§(param1:Number) : void
      {
         this.§+!%§ = param1;
      }
      
      public function get §?"'§() : Object
      {
         return this.§0"U§;
      }
      
      public function get §0#1§() : Object
      {
         return this.§="V§;
      }
      
      public function get §,!p§() : Boolean
      {
         return this.§return§;
      }
      
      public function get radius() : Number
      {
         return this.§`!"§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§&"h§;
      }
      
      public function set name(param1:String) : void
      {
         this.§&$"§ = param1;
      }
      
      public function get name() : String
      {
         return this.§&$"§;
      }
      
      public function set §?"'§(param1:Object) : void
      {
         this.§0"U§ = param1;
      }
      
      public function set §0#1§(param1:Object) : void
      {
         this.§="V§ = param1;
      }
      
      public function get §8#T§() : Number
      {
         return this.§;"u§;
      }
      
      public function set §8#T§(param1:Number) : void
      {
         this.§;"u§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§#!1§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§#!1§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§&$'§;
      }
      
      public function get y() : Number
      {
         return this.§<#-§;
      }
      
      public function get originalX() : Number
      {
         return this.§ Y§;
      }
      
      public function get originalY() : Number
      {
         return this.§1"U§;
      }
      
      public function get §##7§() : Boolean
      {
         return this.§^"9§;
      }
      
      public function set §##7§(param1:Boolean) : void
      {
         this.§^"9§ = param1;
      }
   }
}
