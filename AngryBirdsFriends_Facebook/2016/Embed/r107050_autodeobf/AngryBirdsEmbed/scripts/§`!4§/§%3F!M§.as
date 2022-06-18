package §`!4§
{
   import §#?§.§7!A§;
   import §#?§.§^@§;
   import §'6§.§<"§;
   import §21§.Texture;
   import §2E§.§96§;
   import §2E§.§]B§;
   import §2E§.§`u§;
   import §90§.§8S§;
   import §90§.Sprite;
   import §?!8§.§]f§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §?!M§
   {
      
      public static const §[]§:String = "ChannelSlingshot";
      
      public static const §7!5§:Number = 900;
      
      public static const §"-§:Number = 200;
      
      public static const §>^§:Number = 200;
      
      public static const §@!M§:Number = 1500;
      
      public static const §<L§:Number = 5000;
      
      public static const §7!G§:Number = 1000;
      
      public static const §6!G§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §;!>§:Number;
      
      protected var §8<§:Number;
      
      protected var §3!8§:Number;
      
      protected var §+!K§:Number;
      
      private var §^!L§:§96§;
      
      protected var §;!D§:Number;
      
      protected var §]D§:Number = 1;
      
      private var §`8§:Sprite;
      
      protected var §>A§:§7!A§;
      
      private var §%^§:§8S§;
      
      protected var §3!9§:§^H§;
      
      private var §+Y§:Number;
      
      private var §0^§:Boolean = false;
      
      private var §>%§:Boolean = false;
      
      protected var §=6§:Boolean = false;
      
      private var §08§:Number;
      
      private var §<T§:Number = 0;
      
      private var §>q§:Number = 0;
      
      private var § b§:Number = 0;
      
      private var §^P§:Number = 1000;
      
      private var §do §:Number;
      
      private var §5!2§:Number;
      
      private var §=n§:int;
      
      private var §2r§:Number = 0;
      
      protected var §'!L§:Number;
      
      protected var §4!3§:Number;
      
      private var §>=§:Number = 1;
      
      private var § 7§:Number = 0;
      
      private var §!W§:b2Vec2;
      
      private var §,!F§:Number = 1;
      
      public function §?!M§(param1:§^H§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§3!9§ = param1;
         this.§`8§ = param2;
         this.mName = param3;
         this.§^!L§ = §]B§.§1l§(this.mName).§%d§;
         this.§;!>§ = param4;
         this.§8<§ = param5;
         this.§3!8§ = param4;
         this.§+!K§ = param5;
         this.§;!D§ = 0;
         this.§0^§ = false;
         this.§>%§ = false;
         this.§<T§ = 0;
         this.§>D§();
         this.§'!L§ = 0;
      }
      
      public function §8y§() : void
      {
         this.§0^§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§`8§)
         {
            this.§`8§.dispose();
            this.§`8§ = null;
         }
      }
      
      public function §^!5§(param1:Number) : void
      {
         if(!this.§>%§ || this.§0^§)
         {
            return;
         }
         if(this.§]D§ != 0)
         {
            this.§ b§ = 0;
            this.§2r§ = 0;
            this.§;!D§ = 0;
            this.§5!2§ = 0;
            this.§]D§ = 0;
         }
         param1 = Math.min(param1,this.§08§);
         this.§;!>§ += param1 * (this.§3!9§.§;!>§ - this.§;!>§) / this.§08§;
         this.§8<§ += param1 * (this.§3!9§.§8<§ - this.§8<§) / this.§08§;
         this.§8<§ -= param1 / 50 * (this.§08§ / §7!5§);
         this.§;!D§ += param1 * (360 - this.§;!D§) / this.§08§;
         this.§08§ -= param1;
         if(this.§08§ <= 0)
         {
            this.§;!>§ = this.§3!9§.§;!>§;
            this.§8<§ = this.§3!9§.§8<§;
            this.§>%§ = false;
            this.§0^§ = true;
            this.§;!D§ = 0;
         }
         this.§9!F§();
      }
      
      public function §?L§() : void
      {
         this.§>%§ = true;
         this.§08§ = §7!5§;
         this.§8!M§(§96§.§ @§);
         if(this.§2r§ != 0)
         {
            this.§8<§ += this.§2r§;
            this.§2r§ = 0;
         }
      }
      
      public function §,z§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§0^§ && this.§'!L§ >= 0)
         {
            if(this.§4!3§ > this.§3!9§.§#J§.§;f§.§%!1§)
            {
               this.§^J§(this.§3!9§.§#J§.§;f§.§%!1§ - this.§4!3§);
               this.§'!L§ = -1;
            }
            this.§'!L§ -= param1;
            if(this.§'!L§ <= 0)
            {
               if(this.§ b§ > 0)
               {
                  this.§'!L§ = this.§ b§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§4!3§))
               {
                  _loc2_ = this.§3!9§.§#J§.objects.§%y§(this.§;!>§,this.§4!3§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§^J§(param1 / 100))
                  {
                     this.§'!L§ = -1;
                  }
                  else
                  {
                     this.§'!L§ = 0;
                  }
               }
               else if(!this.§3!9§.§#J§.objects.§?!N§(_loc2_).§+4§)
               {
                  this.§=6§ = false;
                  this.§'!L§ = -1;
               }
               else if(this.§3!9§.§#J§.objects.§?!N§(_loc2_).§<!@§())
               {
                  this.§=6§ = false;
                  this.§'!L§ = 2000;
               }
               else
               {
                  this.§'!L§ = 500;
               }
            }
         }
      }
      
      public function §^J§(param1:Number) : Boolean
      {
         this.§8<§ += param1;
         this.§4!3§ += param1;
         if(this.§4!3§ > this.§3!9§.§#J§.§;f§.§%!1§)
         {
            param1 = this.§4!3§ - this.§3!9§.§#J§.§;f§.§%!1§;
            this.§8<§ -= param1;
            this.§4!3§ -= param1;
            this.§9!F§();
            return true;
         }
         this.§9!F§();
         return false;
      }
      
      public function §>D§() : void
      {
         var _loc1_:§`u§ = §]B§.§1l§(this.mName).shape;
         if(_loc1_.§@Y§() == §`u§.§ q§)
         {
            this.§!W§ = _loc1_.§##§()[0];
            this.§+Y§ = _loc1_.§?U§;
         }
         else if(_loc1_.§@Y§() == §`u§.§&!+§)
         {
            this.§!W§ = new b2Vec2(0,0);
            this.§+Y§ = 1.5;
         }
         this.§>A§ = this.§3!9§.§#J§.§7g§.§"!$§(this.mName);
         if(!this.§>A§)
         {
            this.§"!<§(null);
         }
         else
         {
            this.§"!<§(this.§>A§.getFrame(0));
         }
      }
      
      public function §"!<§(param1:§^@§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§3!9§.§@`§.textureManager.§9U§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§%^§ == null)
         {
            this.§%^§ = new §8S§(_loc2_);
            this.§`8§.addChild(this.§%^§);
         }
         else
         {
            this.§%^§.texture = _loc2_;
         }
         if(param1)
         {
            this.§%^§.x = -param1.pivotX - this.§!W§.x / §6l§.§%!<§;
            this.§%^§.y = -param1.pivotY - this.§!W§.y / §6l§.§%!<§;
         }
         else
         {
            this.§%^§.x = -this.§%^§.width / 2;
            this.§%^§.y = -this.§%^§.height / 2;
         }
         this.§%^§.scaleX = _loc3_;
         this.§%^§.scaleY = _loc3_;
         this.§9!F§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§,z§(param1);
         if(this.§>%§)
         {
            this.§ b§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§;j§(param1);
            this.§3! §(param1);
            if(_loc4_ && param3 == true)
            {
               this.§1! §(param1,param2);
            }
         }
      }
      
      public function §;j§(param1:Number) : void
      {
         if(this.§<T§ > 0)
         {
            this.§<T§ -= param1;
            if(this.§<T§ <= 0)
            {
               this.§!"§();
            }
         }
         else if(this.§>q§ <= 0 && Math.random() * §@!M§ < param1 && this.§3!9§.mSlingShotState)
         {
            this.§@!7§();
         }
      }
      
      public function §!"§() : void
      {
         this.§<T§ = 0;
         this.§"!<§(this.§>A§.getFrame(0));
      }
      
      public function §@!7§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§<T§ = §"-§;
         this.§"!<§(this.§>A§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §3! §(param1:Number) : void
      {
         if(this.§>q§ > 0)
         {
            this.§>q§ -= param1;
            if(this.§>q§ <= 0)
            {
               this.§8T§();
            }
         }
         else if(this.§<T§ <= 0 && Math.random() * §<L§ < param1)
         {
            this.§8!M§();
         }
      }
      
      public function §8T§() : void
      {
         this.§>q§ = 0;
         this.§"!<§(this.§>A§.getFrame(0));
      }
      
      public function §8!M§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§>q§ > 0)
         {
            this.§8T§();
         }
         if(this.§<T§ > 0)
         {
            this.§!"§();
         }
         if(param1 < 0)
         {
            param1 = §96§.§0!9§;
         }
         this.§>q§ = §>^§;
         this.§"!<§(this.§>A§.getSubAnimation("yell").getFrame(0));
         if(this.§0^§ || this.§>%§ || param2)
         {
            §]f§.§]X§(param1,this.§^!L§);
         }
         else
         {
            §]f§.§]X§(param1,this.§^!L§,§[]§);
         }
      }
      
      public function §1! §(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§ b§ > 0)
         {
            this.§ b§ -= param1;
            if(this.§ b§ <= 0)
            {
               ++this.§=n§;
               this.§5!2§ *= 0.4;
               if(!this.§0^§ && this.§=n§ < 2)
               {
                  if(this.§=n§ > 1 && this.§5!2§ < -1)
                  {
                     this.§5!2§ = -1;
                  }
                  this.§do § = this.§5!2§;
                  this.§ b§ = §6!G§;
                  this.§ b§ *= Math.abs(this.§do §) / 2;
                  this.§^P§ = this.§ b§;
                  this.§;!D§ = 0;
                  this.§]D§ = 0;
               }
               else if(!this.§0^§ && param2)
               {
                  this.§@E§(2.25);
               }
               else
               {
                  this.§ b§ = 0;
                  this.§2r§ = 0;
                  this.§;!D§ = 0;
                  this.§5!2§ = 0;
               }
            }
            else
            {
               if(this.§ b§ >= this.§^P§ / 2)
               {
                  _loc3_ = (this.§^P§ - this.§ b§) / (this.§^P§ / 2);
                  _loc3_ = §<"§.§#!M§(_loc3_);
                  this.§2r§ = _loc3_ * this.§do §;
               }
               else
               {
                  _loc3_ = (this.§^P§ / 2 - this.§ b§) / (this.§^P§ / 2);
                  _loc3_ = §<"§.§#!M§(_loc3_,false);
                  this.§2r§ = this.§do § + _loc3_ * -this.§do §;
               }
               this.§;!D§ = 360 * §<"§.§#!M§((this.§^P§ - this.§ b§) / this.§^P§) * this.§]D§;
            }
            this.§9!F§();
         }
         else if(Math.random() * §7!G§ < param1 && !this.§0^§ && !this.§>%§ && !this.§=6§)
         {
            this.§@E§();
         }
      }
      
      public function §@E§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§=n§ = 0;
         this.§ b§ = §6!G§;
         this.§2r§ = 0;
         this.§do § = -(0.75 + Math.random() * 1.5) * param1;
         this.§5!2§ = this.§do §;
         this.§ b§ *= Math.abs(this.§do §) / 3;
         this.§^P§ = this.§ b§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§]D§ = 0;
         }
         else if(this.§ b§ < 350)
         {
            this.§]D§ = 0;
         }
         else
         {
            this.§]D§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§]D§ = Math.random() > 0.5 ? Number(this.§]D§) : Number(0);
         }
      }
      
      public function §9!F§() : void
      {
         this.§`8§.x = this.§;!>§ / §6l§.§%!<§;
         this.§`8§.y = (this.§8<§ + this.§2r§) / §6l§.§%!<§;
         this.§`8§.rotation = this.§;!D§ / 180 * Math.PI;
      }
      
      public function §2!6§() : void
      {
         this.§=6§ = true;
         this.§0^§ = false;
         this.§>%§ = false;
         this.§=n§ = 0;
         this.§'!L§ = 0;
         this.§ b§ = 0;
         this.§ b§ = 0;
         this.§2r§ = 0;
         this.§;!D§ = 0;
         this.§5!2§ = 0;
         this.§]D§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§;!>§) * (param1 - this.§;!>§) + (param2 - this.§8<§) * (param2 - this.§8<§));
         if(_loc3_ <= this.§+Y§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§;!>§ >= param3 && this.§;!>§ <= param4 && this.§8<§ >= param1 && this.§8<§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§;!>§ != param1 || this.§8<§ != param2)
         {
            _loc3_ = true;
         }
         this.§;!>§ = param1;
         this.§8<§ = param2;
         this.§'!L§ = 100;
         this.§9!F§();
         if(_loc3_)
         {
            this.§3!9§.§!!;§();
         }
      }
      
      public function §!0§() : §8S§
      {
         return this.§%^§;
      }
      
      public function get §'f§() : Number
      {
         return this.§ b§;
      }
      
      public function get §^Z§() : Number
      {
         return this.§'!L§;
      }
      
      public function set §^Z§(param1:Number) : void
      {
         this.§'!L§ = param1;
      }
      
      public function get §3T§() : Number
      {
         return this.§>=§;
      }
      
      public function get §6H§() : Boolean
      {
         return this.§0^§;
      }
      
      public function get radius() : Number
      {
         return this.§+Y§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§`8§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §3T§(param1:Number) : void
      {
         this.§>=§ = param1;
      }
      
      public function get §1!3§() : Number
      {
         return this.§ 7§;
      }
      
      public function set §1!3§(param1:Number) : void
      {
         this.§ 7§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§,!F§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§,!F§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§;!>§;
      }
      
      public function get y() : Number
      {
         return this.§8<§;
      }
      
      public function get §=!7§() : Number
      {
         return this.§3!8§;
      }
      
      public function get §@^§() : Number
      {
         return this.§+!K§;
      }
      
      public function §>J§() : Boolean
      {
         return this.§=6§;
      }
   }
}
