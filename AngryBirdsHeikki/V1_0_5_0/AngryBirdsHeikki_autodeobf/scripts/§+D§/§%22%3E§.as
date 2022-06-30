package §+D§
{
   import § !9§.Texture;
   import §,!3§.b2Vec2;
   import §1!K§.§]h§;
   import §8!I§.§0!^§;
   import §8!I§.§4A§;
   import §8!I§.§=]§;
   import §9!T§.§;!"§;
   import §[=§.§@!#§;
   import §[=§.Sprite;
   import §`!H§.§3!c§;
   import §`!H§.§5f§;
   
   public class §">§
   {
      
      public static const §=A§:String = "ChannelSlingshot";
      
      public static const §3!a§:Number = 900;
      
      public static const §&#§:Number = 200;
      
      public static const §%x§:Number = 200;
      
      public static const §`!N§:Number = 1500;
      
      public static const §7!;§:Number = 5000;
      
      public static const §36§:Number = 1000;
      
      public static const §8!N§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §<O§:Number;
      
      protected var §92§:Number;
      
      protected var §[q§:Number;
      
      protected var §3>§:Number;
      
      private var §6K§:§4A§;
      
      protected var §>1§:Number;
      
      protected var §[F§:Number = 1;
      
      private var §%@§:Sprite;
      
      protected var §9!S§:§3!c§;
      
      private var §;b§:§@!#§;
      
      protected var §=%§:§5@§;
      
      private var §<!<§:Number;
      
      private var §@H§:Boolean = false;
      
      private var §<!G§:Boolean = false;
      
      protected var § m§:Boolean = false;
      
      private var §]!;§:Number;
      
      private var §@5§:Number = 0;
      
      private var §91§:Number = 0;
      
      private var §6_§:Number = 0;
      
      private var §2!Y§:Number = 1000;
      
      private var §6!1§:Number;
      
      private var §%1§:Number;
      
      private var §=I§:int;
      
      private var §'K§:Number = 0;
      
      protected var §[8§:Number;
      
      protected var §^9§:Number;
      
      private var §9j§:Number = 1;
      
      private var §3"§:Number = 0;
      
      private var §!9§:b2Vec2;
      
      private var §!!4§:Number = 1;
      
      public function §">§(param1:§5@§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§=%§ = param1;
         this.§%@§ = param2;
         this.mName = param3;
         this.§6K§ = §=]§.§^]§(this.mName).§ !N§;
         this.§<O§ = param4;
         this.§92§ = param5;
         this.§[q§ = param4;
         this.§3>§ = param5;
         this.§>1§ = 0;
         this.§@H§ = false;
         this.§<!G§ = false;
         this.§@5§ = 0;
         this.§<3§();
         this.§[8§ = 0;
      }
      
      public function §,w§() : void
      {
         this.§@H§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§%@§)
         {
            this.§%@§.dispose();
            this.§%@§ = null;
         }
      }
      
      public function §'J§(param1:Number) : void
      {
         if(!this.§<!G§ || this.§@H§)
         {
            return;
         }
         if(this.§[F§ != 0)
         {
            this.§6_§ = 0;
            this.§'K§ = 0;
            this.§>1§ = 0;
            this.§%1§ = 0;
            this.§[F§ = 0;
         }
         param1 = Math.min(param1,this.§]!;§);
         this.§<O§ += param1 * (this.§=%§.§<O§ - this.§<O§) / this.§]!;§;
         this.§92§ += param1 * (this.§=%§.§92§ - this.§92§) / this.§]!;§;
         this.§92§ -= param1 / 50 * (this.§]!;§ / §3!a§);
         this.§>1§ += param1 * (360 - this.§>1§) / this.§]!;§;
         this.§]!;§ -= param1;
         if(this.§]!;§ <= 0)
         {
            this.§<O§ = this.§=%§.§<O§;
            this.§92§ = this.§=%§.§92§;
            this.§<!G§ = false;
            this.§@H§ = true;
            this.§>1§ = 0;
         }
         this.§8<§();
      }
      
      public function §+!b§() : void
      {
         this.§<!G§ = true;
         this.§]!;§ = §3!a§;
         this.§'!S§(§4A§.§8!-§);
         if(this.§'K§ != 0)
         {
            this.§92§ += this.§'K§;
            this.§'K§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§@H§ && this.§[8§ >= 0)
         {
            if(this.§^9§ > this.§=%§.§^!4§.§0r§.§6E§)
            {
               this.applyGravity(this.§=%§.§^!4§.§0r§.§6E§ - this.§^9§);
               this.§[8§ = -1;
            }
            this.§[8§ -= param1;
            if(this.§[8§ <= 0)
            {
               if(this.§6_§ > 0)
               {
                  this.§[8§ = this.§6_§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§^9§))
               {
                  _loc2_ = this.§=%§.§^!4§.objects.§,@§(this.§<O§,this.§^9§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§[8§ = -1;
                  }
                  else
                  {
                     this.§[8§ = 0;
                  }
               }
               else if(!this.§=%§.§^!4§.objects.§,!+§(_loc2_).§5!!§)
               {
                  this.§ m§ = false;
                  this.§[8§ = -1;
               }
               else if(this.§=%§.§^!4§.objects.§,!+§(_loc2_).§?!Q§())
               {
                  this.§ m§ = false;
                  this.§[8§ = 2000;
               }
               else
               {
                  this.§[8§ = 500;
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§92§ += param1;
         this.§^9§ += param1;
         if(this.§^9§ > this.§=%§.§^!4§.§0r§.§6E§)
         {
            param1 = this.§^9§ - this.§=%§.§^!4§.§0r§.§6E§;
            this.§92§ -= param1;
            this.§^9§ -= param1;
            this.§8<§();
            return true;
         }
         this.§8<§();
         return false;
      }
      
      public function §<3§() : void
      {
         var _loc1_:§0!^§ = §=]§.§^]§(this.mName).shape;
         if(_loc1_.§'m§() == §0!^§.§>!,§)
         {
            this.§!9§ = _loc1_.§'%§()[0];
            this.§<!<§ = _loc1_.§,d§;
         }
         else if(_loc1_.§'m§() == §0!^§.§-!J§)
         {
            this.§!9§ = new b2Vec2(0,0);
            this.§<!<§ = 1.5;
         }
         this.§9!S§ = this.§=%§.§^!4§.§]!%§.§3![§(this.mName);
         if(!this.§9!S§)
         {
            this.setPivotTexture(null);
         }
         else
         {
            this.setPivotTexture(this.§9!S§.getFrame(0));
         }
      }
      
      public function setPivotTexture(param1:§5f§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§=%§.§"!d§.textureManager.§%!W§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§;b§ == null)
         {
            this.§;b§ = new §@!#§(_loc2_);
            this.§%@§.addChild(this.§;b§);
         }
         else
         {
            this.§;b§.texture = _loc2_;
         }
         if(param1)
         {
            this.§;b§.x = -param1.pivotX - this.§!9§.x / §5!P§.§>M§;
            this.§;b§.y = -param1.pivotY - this.§!9§.y / §5!P§.§>M§;
         }
         else
         {
            this.§;b§.x = -this.§;b§.width / 2;
            this.§;b§.y = -this.§;b§.height / 2;
         }
         this.§;b§.scaleX = _loc3_;
         this.§;b§.scaleY = _loc3_;
         this.§8<§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§<!G§)
         {
            this.§6_§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§'5§(param1);
            this.§&!§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§,+§(param1,param2);
            }
         }
      }
      
      public function §'5§(param1:Number) : void
      {
         if(this.§@5§ > 0)
         {
            this.§@5§ -= param1;
            if(this.§@5§ <= 0)
            {
               this.§"t§();
            }
         }
         else if(this.§91§ <= 0 && Math.random() * §`!N§ < param1 && this.§=%§.mSlingShotState)
         {
            this.§;N§();
         }
      }
      
      public function §"t§() : void
      {
         this.§@5§ = 0;
         this.setPivotTexture(this.§9!S§.getFrame(0));
      }
      
      public function §;N§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§@5§ = §&#§;
         this.setPivotTexture(this.§9!S§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §&!§(param1:Number) : void
      {
         if(this.§91§ > 0)
         {
            this.§91§ -= param1;
            if(this.§91§ <= 0)
            {
               this.§-M§();
            }
         }
         else if(this.§@5§ <= 0 && Math.random() * §7!;§ < param1)
         {
            this.§'!S§();
         }
      }
      
      public function §-M§() : void
      {
         this.§91§ = 0;
         this.setPivotTexture(this.§9!S§.getFrame(0));
      }
      
      public function §'!S§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§91§ > 0)
         {
            this.§-M§();
         }
         if(this.§@5§ > 0)
         {
            this.§"t§();
         }
         if(param1 < 0)
         {
            param1 = §4A§.§`!S§;
         }
         this.§91§ = §%x§;
         this.setPivotTexture(this.§9!S§.getSubAnimation("yell").getFrame(0));
         if(this.§@H§ || this.§<!G§ || param2)
         {
            §;!"§.§,^§(param1,this.§6K§);
         }
         else
         {
            §;!"§.§,^§(param1,this.§6K§,§=A§);
         }
      }
      
      public function §,+§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§6_§ > 0)
         {
            this.§6_§ -= param1;
            if(this.§6_§ <= 0)
            {
               ++this.§=I§;
               this.§%1§ *= 0.4;
               if(!this.§@H§ && this.§=I§ < 2)
               {
                  if(this.§=I§ > 1 && this.§%1§ < -1)
                  {
                     this.§%1§ = -1;
                  }
                  this.§6!1§ = this.§%1§;
                  this.§6_§ = §8!N§;
                  this.§6_§ *= Math.abs(this.§6!1§) / 2;
                  this.§2!Y§ = this.§6_§;
                  this.§>1§ = 0;
                  this.§[F§ = 0;
               }
               else if(!this.§@H§ && param2)
               {
                  this.§[J§(2.25);
               }
               else
               {
                  this.§6_§ = 0;
                  this.§'K§ = 0;
                  this.§>1§ = 0;
                  this.§%1§ = 0;
               }
            }
            else
            {
               if(this.§6_§ >= this.§2!Y§ / 2)
               {
                  _loc3_ = (this.§2!Y§ - this.§6_§) / (this.§2!Y§ / 2);
                  _loc3_ = §]h§.§47§(_loc3_);
                  this.§'K§ = _loc3_ * this.§6!1§;
               }
               else
               {
                  _loc3_ = (this.§2!Y§ / 2 - this.§6_§) / (this.§2!Y§ / 2);
                  _loc3_ = §]h§.§47§(_loc3_,false);
                  this.§'K§ = this.§6!1§ + _loc3_ * -this.§6!1§;
               }
               this.§>1§ = 360 * §]h§.§47§((this.§2!Y§ - this.§6_§) / this.§2!Y§) * this.§[F§;
            }
            this.§8<§();
         }
         else if(Math.random() * §36§ < param1 && !this.§@H§ && !this.§<!G§ && !this.§ m§)
         {
            this.§[J§();
         }
      }
      
      public function §[J§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§=I§ = 0;
         this.§6_§ = §8!N§;
         this.§'K§ = 0;
         this.§6!1§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§%1§ = this.§6!1§;
         this.§6_§ *= Math.abs(this.§6!1§) / 3;
         this.§2!Y§ = this.§6_§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§[F§ = 0;
         }
         else if(this.§6_§ < 350)
         {
            this.§[F§ = 0;
         }
         else
         {
            this.§[F§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§[F§ = Math.random() > 0.5 ? Number(this.§[F§) : Number(0);
         }
      }
      
      public function §8<§() : void
      {
         this.§%@§.x = this.§<O§ / §5!P§.§>M§;
         this.§%@§.y = (this.§92§ + this.§'K§) / §5!P§.§>M§;
         this.§%@§.rotation = this.§>1§ / 180 * Math.PI;
      }
      
      public function §=!U§() : void
      {
         this.§ m§ = true;
         this.§@H§ = false;
         this.§<!G§ = false;
         this.§=I§ = 0;
         this.§[8§ = 0;
         this.§6_§ = 0;
         this.§6_§ = 0;
         this.§'K§ = 0;
         this.§>1§ = 0;
         this.§%1§ = 0;
         this.§[F§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§<O§) * (param1 - this.§<O§) + (param2 - this.§92§) * (param2 - this.§92§));
         if(_loc3_ <= this.§<!<§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§<O§ >= param3 && this.§<O§ <= param4 && this.§92§ >= param1 && this.§92§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§<O§ != param1 || this.§92§ != param2)
         {
            _loc3_ = true;
         }
         this.§<O§ = param1;
         this.§92§ = param2;
         this.§[8§ = 100;
         this.§8<§();
         if(_loc3_)
         {
            this.§=%§.§&!V§();
         }
      }
      
      public function §&!E§() : §@!#§
      {
         return this.§;b§;
      }
      
      public function get §<! §() : Number
      {
         return this.§6_§;
      }
      
      public function get §0p§() : Number
      {
         return this.§[8§;
      }
      
      public function set §0p§(param1:Number) : void
      {
         this.§[8§ = param1;
      }
      
      public function get §>F§() : Number
      {
         return this.§9j§;
      }
      
      public function get §8!S§() : Boolean
      {
         return this.§@H§;
      }
      
      public function get radius() : Number
      {
         return this.§<!<§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§%@§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §>F§(param1:Number) : void
      {
         this.§9j§ = param1;
      }
      
      public function get §;Z§() : Number
      {
         return this.§3"§;
      }
      
      public function set §;Z§(param1:Number) : void
      {
         this.§3"§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§!!4§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§!!4§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§<O§;
      }
      
      public function get y() : Number
      {
         return this.§92§;
      }
      
      public function get §9!Z§() : Number
      {
         return this.§[q§;
      }
      
      public function get §7!]§() : Number
      {
         return this.§3>§;
      }
   }
}
