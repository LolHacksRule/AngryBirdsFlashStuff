package §%!0§
{
   import §&!P§.§``§;
   import §+!-§.§7"#§;
   import §+!-§.Sprite;
   import §0!%§.Texture;
   import §6]§.§=!1§;
   import §;"7§.§"!B§;
   import §;"7§.§+!I§;
   import §<!a§.b2Vec2;
   import §]";§.§!<§;
   import §]";§.§1Y§;
   import §]";§.§34§;
   
   public class §%Q§
   {
      
      public static const §`"5§:String = "ChannelSlingshot";
      
      public static const §^!&§:Number = 900;
      
      public static const §]!7§:Number = 200;
      
      public static const §+k§:Number = 200;
      
      public static const §6"?§:Number = 1500;
      
      public static const §?O§:Number = 5000;
      
      public static const §^m§:Number = 1000;
      
      public static const §8!s§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var mX:Number;
      
      protected var mY:Number;
      
      protected var §@b§:Number;
      
      protected var §0!7§:Number;
      
      private var §<"#§:§34§;
      
      protected var §0!>§:Number;
      
      protected var §6!d§:Number = 1;
      
      private var § D§:Sprite;
      
      protected var §,0§:§"!B§;
      
      private var §>i§:§7"#§;
      
      protected var §<!r§:§3"!§;
      
      private var §]!'§:Number;
      
      private var §3!x§:Boolean = false;
      
      private var §'G§:Boolean = false;
      
      protected var §;Y§:Boolean = false;
      
      private var §7Y§:Number;
      
      private var §88§:Number = 0;
      
      private var §^H§:Number = 0;
      
      private var §^!L§:Number = 0;
      
      private var §7<§:Number = 1000;
      
      private var §7!;§:Number;
      
      private var §;z§:Number;
      
      private var §-" §:int;
      
      private var §`!k§:Number = 0;
      
      protected var §?U§:Number;
      
      protected var §5"2§:Number;
      
      private var §9T§:Number = 1;
      
      private var §!!&§:Number = 0;
      
      private var §1"§:b2Vec2;
      
      private var §=9§:Number = 1;
      
      public function §%Q§(param1:§3"!§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§<!r§ = param1;
         this.§ D§ = param2;
         this.mName = param3;
         this.§<"#§ = §!<§.§[!@§(this.mName).§9Y§;
         this.mX = param4;
         this.mY = param5;
         this.§@b§ = param4;
         this.§0!7§ = param5;
         this.§0!>§ = 0;
         this.§3!x§ = false;
         this.§'G§ = false;
         this.§88§ = 0;
         this.§@N§();
         this.§?U§ = 0;
      }
      
      public function §=!h§() : void
      {
         this.§3!x§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§ D§)
         {
            this.§ D§.dispose();
            this.§ D§ = null;
         }
      }
      
      public function §"#§(param1:Number) : void
      {
         if(!this.§'G§ || this.§3!x§)
         {
            return;
         }
         if(this.§6!d§ != 0)
         {
            this.§^!L§ = 0;
            this.§`!k§ = 0;
            this.§0!>§ = 0;
            this.§;z§ = 0;
            this.§6!d§ = 0;
         }
         param1 = Math.min(param1,this.§7Y§);
         this.mX += param1 * (this.§<!r§.mX - this.mX) / this.§7Y§;
         this.mY += param1 * (this.§<!r§.mY - this.mY) / this.§7Y§;
         this.mY -= param1 / 50 * (this.§7Y§ / §^!&§);
         this.§0!>§ += param1 * (360 - this.§0!>§) / this.§7Y§;
         this.§7Y§ -= param1;
         if(this.§7Y§ <= 0)
         {
            this.mX = this.§<!r§.mX;
            this.mY = this.§<!r§.mY;
            this.§'G§ = false;
            this.§3!x§ = true;
            this.§0!>§ = 0;
         }
         this.§83§();
      }
      
      public function §`!Q§() : void
      {
         this.§'G§ = true;
         this.§7Y§ = §^!&§;
         this.§5"7§(§34§.§%s§);
         if(this.§`!k§ != 0)
         {
            this.mY += this.§`!k§;
            this.§`!k§ = 0;
         }
      }
      
      public function §3u§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§3!x§ && this.§?U§ >= 0)
         {
            if(this.§5"2§ > this.§<!r§.§`!G§.borders.mBorderGround_B2)
            {
               this.§1!?§(this.§<!r§.§`!G§.borders.mBorderGround_B2 - this.§5"2§);
               this.§?U§ = -1;
            }
            this.§?U§ -= param1;
            if(this.§?U§ <= 0)
            {
               if(this.§^!L§ > 0)
               {
                  this.§?U§ = this.§^!L§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§5"2§))
               {
                  _loc2_ = this.§<!r§.§`!G§.objects.§&A§(this.mX,this.§5"2§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§1!?§(param1 / 100))
                  {
                     this.§?U§ = -1;
                  }
                  else
                  {
                     this.§?U§ = 0;
                  }
               }
               else if(!this.§<!r§.§`!G§.objects.getObject(_loc2_).§5"$§)
               {
                  this.§;Y§ = false;
                  this.§?U§ = -1;
               }
               else if(this.§<!r§.§`!G§.objects.getObject(_loc2_).§+!>§())
               {
                  this.§;Y§ = false;
                  this.§?U§ = 2000;
               }
               else
               {
                  this.§?U§ = 500;
               }
            }
         }
      }
      
      public function §1!?§(param1:Number) : Boolean
      {
         this.mY += param1;
         this.§5"2§ += param1;
         if(this.§5"2§ > this.§<!r§.§`!G§.borders.mBorderGround_B2)
         {
            param1 = this.§5"2§ - this.§<!r§.§`!G§.borders.mBorderGround_B2;
            this.mY -= param1;
            this.§5"2§ -= param1;
            this.§83§();
            return true;
         }
         this.§83§();
         return false;
      }
      
      public function §@N§() : void
      {
         var _loc1_:§1Y§ = §!<§.§[!@§(this.mName).shape;
         if(_loc1_.§0! §() == §1Y§.§;&§)
         {
            this.§1"§ = _loc1_.§=`§()[0];
            this.§]!'§ = _loc1_.§",§;
         }
         else if(_loc1_.§0! §() == §1Y§.§0R§)
         {
            this.§1"§ = new b2Vec2(0,0);
            this.§]!'§ = 1.5;
         }
         this.§,0§ = this.§<!r§.§`!G§.§00§.§`" §(this.mName);
         if(!this.§,0§)
         {
            this.§;"9§(null);
         }
         else
         {
            this.§;"9§(this.§,0§.getFrame(0));
         }
      }
      
      public function §;"9§(param1:§+!I§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§<!r§.§0z§.§8=§.§-t§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§>i§ == null)
         {
            this.§>i§ = new §7"#§(_loc2_);
            this.§ D§.addChild(this.§>i§);
         }
         else
         {
            this.§>i§.texture = _loc2_;
         }
         if(param1)
         {
            this.§>i§.x = -param1.pivotX - this.§1"§.x / §,4§.§,^§;
            this.§>i§.y = -param1.pivotY - this.§1"§.y / §,4§.§,^§;
         }
         else
         {
            this.§>i§.x = -this.§>i§.width / 2;
            this.§>i§.y = -this.§>i§.height / 2;
         }
         this.§>i§.scaleX = _loc3_;
         this.§>i§.scaleY = _loc3_;
         this.§83§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§3u§(param1);
         if(this.§'G§)
         {
            this.§^!L§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§-h§(param1);
            this.§["6§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§^"4§(param1,param2);
            }
         }
      }
      
      public function §-h§(param1:Number) : void
      {
         if(this.§88§ > 0)
         {
            this.§88§ -= param1;
            if(this.§88§ <= 0)
            {
               this.§9"-§();
            }
         }
         else if(this.§^H§ <= 0 && Math.random() * §6"?§ < param1 && this.§<!r§.mSlingShotState)
         {
            this.§8,§();
         }
      }
      
      public function §9"-§() : void
      {
         this.§88§ = 0;
         this.§;"9§(this.§,0§.getFrame(0));
      }
      
      public function §8,§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§88§ = §]!7§;
         this.§;"9§(this.§,0§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §["6§(param1:Number) : void
      {
         if(this.§^H§ > 0)
         {
            this.§^H§ -= param1;
            if(this.§^H§ <= 0)
            {
               this.§6$§();
            }
         }
         else if(this.§88§ <= 0 && Math.random() * §?O§ < param1)
         {
            this.§5"7§();
         }
      }
      
      public function §6$§() : void
      {
         this.§^H§ = 0;
         this.§;"9§(this.§,0§.getFrame(0));
      }
      
      public function §5"7§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§^H§ > 0)
         {
            this.§6$§();
         }
         if(this.§88§ > 0)
         {
            this.§9"-§();
         }
         if(param1 < 0)
         {
            param1 = §34§.§"y§;
         }
         this.§^H§ = §+k§;
         this.§;"9§(this.§,0§.getSubAnimation("yell").getFrame(0));
         if(this.§3!x§ || this.§'G§ || param2)
         {
            §``§.§%!s§(param1,this.§<"#§);
         }
         else
         {
            §``§.§%!s§(param1,this.§<"#§,§`"5§);
         }
      }
      
      public function §^"4§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§^!L§ > 0)
         {
            this.§^!L§ -= param1;
            if(this.§^!L§ <= 0)
            {
               ++this.§-" §;
               this.§;z§ *= 0.4;
               if(!this.§3!x§ && this.§-" § < 2)
               {
                  if(this.§-" § > 1 && this.§;z§ < -1)
                  {
                     this.§;z§ = -1;
                  }
                  this.§7!;§ = this.§;z§;
                  this.§^!L§ = §8!s§;
                  this.§^!L§ *= Math.abs(this.§7!;§) / 2;
                  this.§7<§ = this.§^!L§;
                  this.§0!>§ = 0;
                  this.§6!d§ = 0;
               }
               else if(!this.§3!x§ && param2)
               {
                  this.§0!f§(2.25);
               }
               else
               {
                  this.§^!L§ = 0;
                  this.§`!k§ = 0;
                  this.§0!>§ = 0;
                  this.§;z§ = 0;
               }
            }
            else
            {
               if(this.§^!L§ >= this.§7<§ / 2)
               {
                  _loc3_ = (this.§7<§ - this.§^!L§) / (this.§7<§ / 2);
                  _loc3_ = §=!1§.§-!1§(_loc3_);
                  this.§`!k§ = _loc3_ * this.§7!;§;
               }
               else
               {
                  _loc3_ = (this.§7<§ / 2 - this.§^!L§) / (this.§7<§ / 2);
                  _loc3_ = §=!1§.§-!1§(_loc3_,false);
                  this.§`!k§ = this.§7!;§ + _loc3_ * -this.§7!;§;
               }
               this.§0!>§ = 360 * §=!1§.§-!1§((this.§7<§ - this.§^!L§) / this.§7<§) * this.§6!d§;
            }
            this.§83§();
         }
         else if(Math.random() * §^m§ < param1 && !this.§3!x§ && !this.§'G§ && !this.§;Y§)
         {
            this.§0!f§();
         }
      }
      
      public function §0!f§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§-" § = 0;
         this.§^!L§ = §8!s§;
         this.§`!k§ = 0;
         this.§7!;§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§;z§ = this.§7!;§;
         this.§^!L§ *= Math.abs(this.§7!;§) / 3;
         this.§7<§ = this.§^!L§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§6!d§ = 0;
         }
         else if(this.§^!L§ < 350)
         {
            this.§6!d§ = 0;
         }
         else
         {
            this.§6!d§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§6!d§ = Math.random() > 0.5 ? Number(this.§6!d§) : Number(0);
         }
      }
      
      public function §83§() : void
      {
         this.§ D§.x = this.mX / §,4§.§,^§;
         this.§ D§.y = (this.mY + this.§`!k§) / §,4§.§,^§;
         this.§ D§.rotation = this.§0!>§ / 180 * Math.PI;
      }
      
      public function §`[§() : void
      {
         this.§;Y§ = true;
         this.§3!x§ = false;
         this.§'G§ = false;
         this.§-" § = 0;
         this.§?U§ = 0;
         this.§^!L§ = 0;
         this.§^!L§ = 0;
         this.§`!k§ = 0;
         this.§0!>§ = 0;
         this.§;z§ = 0;
         this.§6!d§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.mX) * (param1 - this.mX) + (param2 - this.mY) * (param2 - this.mY));
         if(_loc3_ <= this.§]!'§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.mX >= param3 && this.mX <= param4 && this.mY >= param1 && this.mY <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.mX != param1 || this.mY != param2)
         {
            _loc3_ = true;
         }
         this.mX = param1;
         this.mY = param2;
         this.§?U§ = 100;
         this.§83§();
         if(_loc3_)
         {
            this.§<!r§.§2X§();
         }
      }
      
      public function §-W§() : §7"#§
      {
         return this.§>i§;
      }
      
      public function get §'!,§() : Number
      {
         return this.§^!L§;
      }
      
      public function get §5!F§() : Number
      {
         return this.§?U§;
      }
      
      public function set §5!F§(param1:Number) : void
      {
         this.§?U§ = param1;
      }
      
      public function get §=v§() : Number
      {
         return this.§9T§;
      }
      
      public function get §'&§() : Boolean
      {
         return this.§3!x§;
      }
      
      public function get radius() : Number
      {
         return this.§]!'§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§ D§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §=v§(param1:Number) : void
      {
         this.§9T§ = param1;
      }
      
      public function get §`#§() : Number
      {
         return this.§!!&§;
      }
      
      public function set §`#§(param1:Number) : void
      {
         this.§!!&§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§=9§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§=9§ = param1;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function get §3"1§() : Number
      {
         return this.§@b§;
      }
      
      public function get §7!m§() : Number
      {
         return this.§0!7§;
      }
   }
}
