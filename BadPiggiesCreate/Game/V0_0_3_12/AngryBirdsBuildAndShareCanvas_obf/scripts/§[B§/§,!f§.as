package §[B§
{
   import §"p§.§""?§;
   import §#?§.§%!O§;
   import §#?§.§+"5§;
   import §#?§.§?![§;
   import §3!t§.b2Vec2;
   import §4!#§.§60§;
   import §@!-§.§"K§;
   import §@!-§.§5A§;
   import §@!i§.§%Q§;
   import §@!i§.Sprite;
   import §^Q§.Texture;
   
   public class §,!f§
   {
      
      public static const §&Y§:String = "ChannelSlingshot";
      
      public static const §<+§:Number = 900;
      
      public static const §'"§:Number = 200;
      
      public static const §,"&§:Number = 200;
      
      public static const §>!]§:Number = 1500;
      
      public static const §@!A§:Number = 5000;
      
      public static const § ";§:Number = 1000;
      
      public static const §^!#§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var mX:Number;
      
      protected var mY:Number;
      
      protected var §<!d§:Number;
      
      protected var §8H§:Number;
      
      private var §["4§:§?![§;
      
      protected var §`f§:Number;
      
      protected var § "+§:Number = 1;
      
      private var §+;§:Sprite;
      
      protected var §+!Z§:§5A§;
      
      private var §#9§:§%Q§;
      
      protected var §4_§:§^W§;
      
      private var §>o§:Number;
      
      private var §@!T§:Boolean = false;
      
      private var §@!a§:Boolean = false;
      
      protected var §5!w§:Boolean = false;
      
      private var §@[§:Number;
      
      private var § !G§:Number = 0;
      
      private var §>! §:Number = 0;
      
      private var §0@§:Number = 0;
      
      private var §@e§:Number = 1000;
      
      private var §<"9§:Number;
      
      private var §=![§:Number;
      
      private var §57§:int;
      
      private var §5i§:Number = 0;
      
      protected var §0" §:Number;
      
      protected var §4H§:Number;
      
      private var §!!;§:Number = 1;
      
      private var §7B§:Number = 0;
      
      private var §3'§:b2Vec2;
      
      private var §2"§:Number = 1;
      
      public function §,!f§(param1:§^W§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§4_§ = param1;
         this.§+;§ = param2;
         this.mName = param3;
         this.§["4§ = §%!O§.§2<§(this.mName).§`_§;
         this.mX = param4;
         this.mY = param5;
         this.§<!d§ = param4;
         this.§8H§ = param5;
         this.§`f§ = 0;
         this.§@!T§ = false;
         this.§@!a§ = false;
         this.§ !G§ = 0;
         this.§=!^§();
         this.§0" § = 0;
      }
      
      public function §]x§() : void
      {
         this.§@!T§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§+;§)
         {
            this.§+;§.dispose();
            this.§+;§ = null;
         }
      }
      
      public function §7!K§(param1:Number) : void
      {
         if(!this.§@!a§ || this.§@!T§)
         {
            return;
         }
         if(this.§ "+§ != 0)
         {
            this.§0@§ = 0;
            this.§5i§ = 0;
            this.§`f§ = 0;
            this.§=![§ = 0;
            this.§ "+§ = 0;
         }
         param1 = Math.min(param1,this.§@[§);
         this.mX += param1 * (this.§4_§.mX - this.mX) / this.§@[§;
         this.mY += param1 * (this.§4_§.mY - this.mY) / this.§@[§;
         this.mY -= param1 / 50 * (this.§@[§ / §<+§);
         this.§`f§ += param1 * (360 - this.§`f§) / this.§@[§;
         this.§@[§ -= param1;
         if(this.§@[§ <= 0)
         {
            this.mX = this.§4_§.mX;
            this.mY = this.§4_§.mY;
            this.§@!a§ = false;
            this.§@!T§ = true;
            this.§`f§ = 0;
         }
         this.§'"#§();
      }
      
      public function §>"3§() : void
      {
         this.§@!a§ = true;
         this.§@[§ = §<+§;
         this.§[2§(§?![§.§;N§);
         if(this.§5i§ != 0)
         {
            this.mY += this.§5i§;
            this.§5i§ = 0;
         }
      }
      
      public function §;Q§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§@!T§ && this.§0" § >= 0)
         {
            if(this.§4H§ > this.§4_§.§]!3§.borders.mBorderGround_B2)
            {
               this.§@!Z§(this.§4_§.§]!3§.borders.mBorderGround_B2 - this.§4H§);
               this.§0" § = -1;
            }
            this.§0" § -= param1;
            if(this.§0" § <= 0)
            {
               if(this.§0@§ > 0)
               {
                  this.§0" § = this.§0@§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§4H§))
               {
                  _loc2_ = this.§4_§.§]!3§.objects.§>!9§(this.mX,this.§4H§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§@!Z§(param1 / 100))
                  {
                     this.§0" § = -1;
                  }
                  else
                  {
                     this.§0" § = 0;
                  }
               }
               else if(!this.§4_§.§]!3§.objects.getObject(_loc2_).§+3§)
               {
                  this.§5!w§ = false;
                  this.§0" § = -1;
               }
               else if(this.§4_§.§]!3§.objects.getObject(_loc2_).§5l§())
               {
                  this.§5!w§ = false;
                  this.§0" § = 2000;
               }
               else
               {
                  this.§0" § = 500;
               }
            }
         }
      }
      
      public function §@!Z§(param1:Number) : Boolean
      {
         this.mY += param1;
         this.§4H§ += param1;
         if(this.§4H§ > this.§4_§.§]!3§.borders.mBorderGround_B2)
         {
            param1 = this.§4H§ - this.§4_§.§]!3§.borders.mBorderGround_B2;
            this.mY -= param1;
            this.§4H§ -= param1;
            this.§'"#§();
            return true;
         }
         this.§'"#§();
         return false;
      }
      
      public function §=!^§() : void
      {
         var _loc1_:§+"5§ = §%!O§.§2<§(this.mName).shape;
         if(_loc1_.§4@§() == §+"5§.§%!I§)
         {
            this.§3'§ = _loc1_.§-7§()[0];
            this.§>o§ = _loc1_.§%w§;
         }
         else if(_loc1_.§4@§() == §+"5§.§<!^§)
         {
            this.§3'§ = new b2Vec2(0,0);
            this.§>o§ = 1.5;
         }
         this.§+!Z§ = this.§4_§.§]!3§.§]9§.§^e§(this.mName);
         if(!this.§+!Z§)
         {
            this.§[@§(null);
         }
         else
         {
            this.§[@§(this.§+!Z§.getFrame(0));
         }
      }
      
      public function §[@§(param1:§"K§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§4_§.§9!8§.§="!§.§4!i§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§#9§ == null)
         {
            this.§#9§ = new §%Q§(_loc2_);
            this.§+;§.addChild(this.§#9§);
         }
         else
         {
            this.§#9§.texture = _loc2_;
         }
         if(param1)
         {
            this.§#9§.x = -param1.pivotX - this.§3'§.x / §"d§.§2!]§;
            this.§#9§.y = -param1.pivotY - this.§3'§.y / §"d§.§2!]§;
         }
         else
         {
            this.§#9§.x = -this.§#9§.width / 2;
            this.§#9§.y = -this.§#9§.height / 2;
         }
         this.§#9§.scaleX = _loc3_;
         this.§#9§.scaleY = _loc3_;
         this.§'"#§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§;Q§(param1);
         if(this.§@!a§)
         {
            this.§0@§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§7^§(param1);
            this.§+<§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§+k§(param1,param2);
            }
         }
      }
      
      public function §7^§(param1:Number) : void
      {
         if(this.§ !G§ > 0)
         {
            this.§ !G§ -= param1;
            if(this.§ !G§ <= 0)
            {
               this.§+`§();
            }
         }
         else if(this.§>! § <= 0 && Math.random() * §>!]§ < param1 && this.§4_§.mSlingShotState)
         {
            this.§]0§();
         }
      }
      
      public function §+`§() : void
      {
         this.§ !G§ = 0;
         this.§[@§(this.§+!Z§.getFrame(0));
      }
      
      public function §]0§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§ !G§ = §'"§;
         this.§[@§(this.§+!Z§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §+<§(param1:Number) : void
      {
         if(this.§>! § > 0)
         {
            this.§>! § -= param1;
            if(this.§>! § <= 0)
            {
               this.§`!e§();
            }
         }
         else if(this.§ !G§ <= 0 && Math.random() * §@!A§ < param1)
         {
            this.§[2§();
         }
      }
      
      public function §`!e§() : void
      {
         this.§>! § = 0;
         this.§[@§(this.§+!Z§.getFrame(0));
      }
      
      public function §[2§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§>! § > 0)
         {
            this.§`!e§();
         }
         if(this.§ !G§ > 0)
         {
            this.§+`§();
         }
         if(param1 < 0)
         {
            param1 = §?![§.§1!6§;
         }
         this.§>! § = §,"&§;
         this.§[@§(this.§+!Z§.getSubAnimation("yell").getFrame(0));
         if(this.§@!T§ || this.§@!a§ || param2)
         {
            §60§.§^!E§(param1,this.§["4§);
         }
         else
         {
            §60§.§^!E§(param1,this.§["4§,§&Y§);
         }
      }
      
      public function §+k§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§0@§ > 0)
         {
            this.§0@§ -= param1;
            if(this.§0@§ <= 0)
            {
               ++this.§57§;
               this.§=![§ *= 0.4;
               if(!this.§@!T§ && this.§57§ < 2)
               {
                  if(this.§57§ > 1 && this.§=![§ < -1)
                  {
                     this.§=![§ = -1;
                  }
                  this.§<"9§ = this.§=![§;
                  this.§0@§ = §^!#§;
                  this.§0@§ *= Math.abs(this.§<"9§) / 2;
                  this.§@e§ = this.§0@§;
                  this.§`f§ = 0;
                  this.§ "+§ = 0;
               }
               else if(!this.§@!T§ && param2)
               {
                  this.§6"7§(2.25);
               }
               else
               {
                  this.§0@§ = 0;
                  this.§5i§ = 0;
                  this.§`f§ = 0;
                  this.§=![§ = 0;
               }
            }
            else
            {
               if(this.§0@§ >= this.§@e§ / 2)
               {
                  _loc3_ = (this.§@e§ - this.§0@§) / (this.§@e§ / 2);
                  _loc3_ = §""?§.§<H§(_loc3_);
                  this.§5i§ = _loc3_ * this.§<"9§;
               }
               else
               {
                  _loc3_ = (this.§@e§ / 2 - this.§0@§) / (this.§@e§ / 2);
                  _loc3_ = §""?§.§<H§(_loc3_,false);
                  this.§5i§ = this.§<"9§ + _loc3_ * -this.§<"9§;
               }
               this.§`f§ = 360 * §""?§.§<H§((this.§@e§ - this.§0@§) / this.§@e§) * this.§ "+§;
            }
            this.§'"#§();
         }
         else if(Math.random() * § ";§ < param1 && !this.§@!T§ && !this.§@!a§ && !this.§5!w§)
         {
            this.§6"7§();
         }
      }
      
      public function §6"7§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§57§ = 0;
         this.§0@§ = §^!#§;
         this.§5i§ = 0;
         this.§<"9§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§=![§ = this.§<"9§;
         this.§0@§ *= Math.abs(this.§<"9§) / 3;
         this.§@e§ = this.§0@§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§ "+§ = 0;
         }
         else if(this.§0@§ < 350)
         {
            this.§ "+§ = 0;
         }
         else
         {
            this.§ "+§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§ "+§ = Math.random() > 0.5 ? Number(this.§ "+§) : Number(0);
         }
      }
      
      public function §'"#§() : void
      {
         this.§+;§.x = this.mX / §"d§.§2!]§;
         this.§+;§.y = (this.mY + this.§5i§) / §"d§.§2!]§;
         this.§+;§.rotation = this.§`f§ / 180 * Math.PI;
      }
      
      public function §"!]§() : void
      {
         this.§5!w§ = true;
         this.§@!T§ = false;
         this.§@!a§ = false;
         this.§57§ = 0;
         this.§0" § = 0;
         this.§0@§ = 0;
         this.§0@§ = 0;
         this.§5i§ = 0;
         this.§`f§ = 0;
         this.§=![§ = 0;
         this.§ "+§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.mX) * (param1 - this.mX) + (param2 - this.mY) * (param2 - this.mY));
         if(_loc3_ <= this.§>o§ * 1.1)
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
         this.§0" § = 100;
         this.§'"#§();
         if(_loc3_)
         {
            this.§4_§.§+"0§();
         }
      }
      
      public function §=_§() : §%Q§
      {
         return this.§#9§;
      }
      
      public function get §3"&§() : Number
      {
         return this.§0@§;
      }
      
      public function get §=!$§() : Number
      {
         return this.§0" §;
      }
      
      public function set §=!$§(param1:Number) : void
      {
         this.§0" § = param1;
      }
      
      public function get §1R§() : Number
      {
         return this.§!!;§;
      }
      
      public function get §'!y§() : Boolean
      {
         return this.§@!T§;
      }
      
      public function get radius() : Number
      {
         return this.§>o§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§+;§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §1R§(param1:Number) : void
      {
         this.§!!;§ = param1;
      }
      
      public function get §]Y§() : Number
      {
         return this.§7B§;
      }
      
      public function set §]Y§(param1:Number) : void
      {
         this.§7B§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§2"§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§2"§ = param1;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function get §?D§() : Number
      {
         return this.§<!d§;
      }
      
      public function get § Q§() : Number
      {
         return this.§8H§;
      }
   }
}
