package §5!V§
{
   import §&"5§.§+2§;
   import §&"5§.§6!L§;
   import §+!o§.§]"5§;
   import §,a§.§+"&§;
   import §,a§.§<!m§;
   import §,a§.§^7§;
   import §2"=§.b2Vec2;
   import §7R§.Texture;
   import §=!M§.§-!4§;
   import §default§.§=!Z§;
   import §default§.Sprite;
   
   public class §>n§
   {
      
      public static const §]=§:String = "ChannelSlingshot";
      
      public static const §`!6§:Number = 900;
      
      public static const §?!§:Number = 200;
      
      public static const §-Q§:Number = 200;
      
      public static const §9U§:Number = 1500;
      
      public static const §!0§:Number = 5000;
      
      public static const §#!f§:Number = 1000;
      
      public static const §!G§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var mX:Number;
      
      protected var mY:Number;
      
      protected var §%!e§:Number;
      
      protected var §5!d§:Number;
      
      private var §#!,§:§+"&§;
      
      protected var §]$§:Number;
      
      protected var §]"9§:Number = 1;
      
      private var §!&§:Sprite;
      
      protected var §<!1§:§+2§;
      
      private var §2u§:§=!Z§;
      
      protected var §9!i§:§[!6§;
      
      private var §@!j§:Number;
      
      private var §,y§:Boolean = false;
      
      private var §6r§:Boolean = false;
      
      protected var §#@§:Boolean = false;
      
      private var §4B§:Number;
      
      private var §4C§:Number = 0;
      
      private var §;H§:Number = 0;
      
      private var §4R§:Number = 0;
      
      private var §+_§:Number = 1000;
      
      private var §&!C§:Number;
      
      private var § !S§:Number;
      
      private var §^"5§:int;
      
      private var §';§:Number = 0;
      
      protected var §+%§:Number;
      
      protected var §@p§:Number;
      
      private var § !R§:Number = 1;
      
      private var §8'§:Number = 0;
      
      private var §<!<§:b2Vec2;
      
      private var §?a§:Number = 1;
      
      public function §>n§(param1:§[!6§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§9!i§ = param1;
         this.§!&§ = param2;
         this.mName = param3;
         this.§#!,§ = §<!m§.§"!F§(this.mName).§3k§;
         this.mX = param4;
         this.mY = param5;
         this.§%!e§ = param4;
         this.§5!d§ = param5;
         this.§]$§ = 0;
         this.§,y§ = false;
         this.§6r§ = false;
         this.§4C§ = 0;
         this.§!!?§();
         this.§+%§ = 0;
      }
      
      public function §<"4§() : void
      {
         this.§,y§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§!&§)
         {
            this.§!&§.dispose();
            this.§!&§ = null;
         }
      }
      
      public function §'"7§(param1:Number) : void
      {
         if(!this.§6r§ || this.§,y§)
         {
            return;
         }
         if(this.§]"9§ != 0)
         {
            this.§4R§ = 0;
            this.§';§ = 0;
            this.§]$§ = 0;
            this.§ !S§ = 0;
            this.§]"9§ = 0;
         }
         param1 = Math.min(param1,this.§4B§);
         this.mX += param1 * (this.§9!i§.mX - this.mX) / this.§4B§;
         this.mY += param1 * (this.§9!i§.mY - this.mY) / this.§4B§;
         this.mY -= param1 / 50 * (this.§4B§ / §`!6§);
         this.§]$§ += param1 * (360 - this.§]$§) / this.§4B§;
         this.§4B§ -= param1;
         if(this.§4B§ <= 0)
         {
            this.mX = this.§9!i§.mX;
            this.mY = this.§9!i§.mY;
            this.§6r§ = false;
            this.§,y§ = true;
            this.§]$§ = 0;
         }
         this.§@O§();
      }
      
      public function §7f§() : void
      {
         this.§6r§ = true;
         this.§4B§ = §`!6§;
         this.§+i§(§+"&§.§[U§);
         if(this.§';§ != 0)
         {
            this.mY += this.§';§;
            this.§';§ = 0;
         }
      }
      
      public function §'N§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§,y§ && this.§+%§ >= 0)
         {
            if(this.§@p§ > this.§9!i§.§9q§.borders.mBorderGround_B2)
            {
               this.§`@§(this.§9!i§.§9q§.borders.mBorderGround_B2 - this.§@p§);
               this.§+%§ = -1;
            }
            this.§+%§ -= param1;
            if(this.§+%§ <= 0)
            {
               if(this.§4R§ > 0)
               {
                  this.§+%§ = this.§4R§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§@p§))
               {
                  _loc2_ = this.§9!i§.§9q§.objects.§%! §(this.mX,this.§@p§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§`@§(param1 / 100))
                  {
                     this.§+%§ = -1;
                  }
                  else
                  {
                     this.§+%§ = 0;
                  }
               }
               else if(!this.§9!i§.§9q§.objects.getObject(_loc2_).§4" §)
               {
                  this.§#@§ = false;
                  this.§+%§ = -1;
               }
               else if(this.§9!i§.§9q§.objects.getObject(_loc2_).§#";§())
               {
                  this.§#@§ = false;
                  this.§+%§ = 2000;
               }
               else
               {
                  this.§+%§ = 500;
               }
            }
         }
      }
      
      public function §`@§(param1:Number) : Boolean
      {
         this.mY += param1;
         this.§@p§ += param1;
         if(this.§@p§ > this.§9!i§.§9q§.borders.mBorderGround_B2)
         {
            param1 = this.§@p§ - this.§9!i§.§9q§.borders.mBorderGround_B2;
            this.mY -= param1;
            this.§@p§ -= param1;
            this.§@O§();
            return true;
         }
         this.§@O§();
         return false;
      }
      
      public function §!!?§() : void
      {
         var _loc1_:§^7§ = §<!m§.§"!F§(this.mName).shape;
         if(_loc1_.§7!U§() == §^7§.§+!h§)
         {
            this.§<!<§ = _loc1_.§#!g§()[0];
            this.§@!j§ = _loc1_.§7!T§;
         }
         else if(_loc1_.§7!U§() == §^7§.§<!g§)
         {
            this.§<!<§ = new b2Vec2(0,0);
            this.§@!j§ = 1.5;
         }
         this.§<!1§ = this.§9!i§.§9q§.§<"%§.§@7§(this.mName);
         if(!this.§<!1§)
         {
            this.§?"9§(null);
         }
         else
         {
            this.§?"9§(this.§<!1§.getFrame(0));
         }
      }
      
      public function §?"9§(param1:§6!L§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§9!i§.§4+§.§7!J§.§4!A§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§2u§ == null)
         {
            this.§2u§ = new §=!Z§(_loc2_);
            this.§!&§.addChild(this.§2u§);
         }
         else
         {
            this.§2u§.texture = _loc2_;
         }
         if(param1)
         {
            this.§2u§.x = -param1.pivotX - this.§<!<§.x / §!w§.§4!-§;
            this.§2u§.y = -param1.pivotY - this.§<!<§.y / §!w§.§4!-§;
         }
         else
         {
            this.§2u§.x = -this.§2u§.width / 2;
            this.§2u§.y = -this.§2u§.height / 2;
         }
         this.§2u§.scaleX = _loc3_;
         this.§2u§.scaleY = _loc3_;
         this.§@O§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§'N§(param1);
         if(this.§6r§)
         {
            this.§4R§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§;!H§(param1);
            this.§4"§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§`J§(param1,param2);
            }
         }
      }
      
      public function §;!H§(param1:Number) : void
      {
         if(this.§4C§ > 0)
         {
            this.§4C§ -= param1;
            if(this.§4C§ <= 0)
            {
               this.§5!w§();
            }
         }
         else if(this.§;H§ <= 0 && Math.random() * §9U§ < param1 && this.§9!i§.mSlingShotState)
         {
            this.§-"$§();
         }
      }
      
      public function §5!w§() : void
      {
         this.§4C§ = 0;
         this.§?"9§(this.§<!1§.getFrame(0));
      }
      
      public function §-"$§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§4C§ = §?!§;
         this.§?"9§(this.§<!1§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §4"§(param1:Number) : void
      {
         if(this.§;H§ > 0)
         {
            this.§;H§ -= param1;
            if(this.§;H§ <= 0)
            {
               this.§["9§();
            }
         }
         else if(this.§4C§ <= 0 && Math.random() * §!0§ < param1)
         {
            this.§+i§();
         }
      }
      
      public function §["9§() : void
      {
         this.§;H§ = 0;
         this.§?"9§(this.§<!1§.getFrame(0));
      }
      
      public function §+i§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§;H§ > 0)
         {
            this.§["9§();
         }
         if(this.§4C§ > 0)
         {
            this.§5!w§();
         }
         if(param1 < 0)
         {
            param1 = §+"&§.§6!z§;
         }
         this.§;H§ = §-Q§;
         this.§?"9§(this.§<!1§.getSubAnimation("yell").getFrame(0));
         if(this.§,y§ || this.§6r§ || param2)
         {
            §]"5§.§1!%§(param1,this.§#!,§);
         }
         else
         {
            §]"5§.§1!%§(param1,this.§#!,§,§]=§);
         }
      }
      
      public function §`J§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§4R§ > 0)
         {
            this.§4R§ -= param1;
            if(this.§4R§ <= 0)
            {
               ++this.§^"5§;
               this.§ !S§ *= 0.4;
               if(!this.§,y§ && this.§^"5§ < 2)
               {
                  if(this.§^"5§ > 1 && this.§ !S§ < -1)
                  {
                     this.§ !S§ = -1;
                  }
                  this.§&!C§ = this.§ !S§;
                  this.§4R§ = §!G§;
                  this.§4R§ *= Math.abs(this.§&!C§) / 2;
                  this.§+_§ = this.§4R§;
                  this.§]$§ = 0;
                  this.§]"9§ = 0;
               }
               else if(!this.§,y§ && param2)
               {
                  this.§01§(2.25);
               }
               else
               {
                  this.§4R§ = 0;
                  this.§';§ = 0;
                  this.§]$§ = 0;
                  this.§ !S§ = 0;
               }
            }
            else
            {
               if(this.§4R§ >= this.§+_§ / 2)
               {
                  _loc3_ = (this.§+_§ - this.§4R§) / (this.§+_§ / 2);
                  _loc3_ = §-!4§.§66§(_loc3_);
                  this.§';§ = _loc3_ * this.§&!C§;
               }
               else
               {
                  _loc3_ = (this.§+_§ / 2 - this.§4R§) / (this.§+_§ / 2);
                  _loc3_ = §-!4§.§66§(_loc3_,false);
                  this.§';§ = this.§&!C§ + _loc3_ * -this.§&!C§;
               }
               this.§]$§ = 360 * §-!4§.§66§((this.§+_§ - this.§4R§) / this.§+_§) * this.§]"9§;
            }
            this.§@O§();
         }
         else if(Math.random() * §#!f§ < param1 && !this.§,y§ && !this.§6r§ && !this.§#@§)
         {
            this.§01§();
         }
      }
      
      public function §01§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§^"5§ = 0;
         this.§4R§ = §!G§;
         this.§';§ = 0;
         this.§&!C§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§ !S§ = this.§&!C§;
         this.§4R§ *= Math.abs(this.§&!C§) / 3;
         this.§+_§ = this.§4R§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§]"9§ = 0;
         }
         else if(this.§4R§ < 350)
         {
            this.§]"9§ = 0;
         }
         else
         {
            this.§]"9§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§]"9§ = Math.random() > 0.5 ? Number(this.§]"9§) : Number(0);
         }
      }
      
      public function §@O§() : void
      {
         this.§!&§.x = this.mX / §!w§.§4!-§;
         this.§!&§.y = (this.mY + this.§';§) / §!w§.§4!-§;
         this.§!&§.rotation = this.§]$§ / 180 * Math.PI;
      }
      
      public function §%"?§() : void
      {
         this.§#@§ = true;
         this.§,y§ = false;
         this.§6r§ = false;
         this.§^"5§ = 0;
         this.§+%§ = 0;
         this.§4R§ = 0;
         this.§4R§ = 0;
         this.§';§ = 0;
         this.§]$§ = 0;
         this.§ !S§ = 0;
         this.§]"9§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.mX) * (param1 - this.mX) + (param2 - this.mY) * (param2 - this.mY));
         if(_loc3_ <= this.§@!j§ * 1.1)
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
         this.§+%§ = 100;
         this.§@O§();
         if(_loc3_)
         {
            this.§9!i§.§&8§();
         }
      }
      
      public function §'!x§() : §=!Z§
      {
         return this.§2u§;
      }
      
      public function get §<t§() : Number
      {
         return this.§4R§;
      }
      
      public function get §<]§() : Number
      {
         return this.§+%§;
      }
      
      public function set §<]§(param1:Number) : void
      {
         this.§+%§ = param1;
      }
      
      public function get §<"$§() : Number
      {
         return this.§ !R§;
      }
      
      public function get §"_§() : Boolean
      {
         return this.§,y§;
      }
      
      public function get radius() : Number
      {
         return this.§@!j§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§!&§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §<"$§(param1:Number) : void
      {
         this.§ !R§ = param1;
      }
      
      public function get §[1§() : Number
      {
         return this.§8'§;
      }
      
      public function set §[1§(param1:Number) : void
      {
         this.§8'§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§?a§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§?a§ = param1;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function get §0E§() : Number
      {
         return this.§%!e§;
      }
      
      public function get §1z§() : Number
      {
         return this.§5!d§;
      }
   }
}
