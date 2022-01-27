package §>2§
{
   import § !N§.§6!§;
   import § !N§.§=_§;
   import §+!N§.§-!H§;
   import §+!N§.§1[§;
   import §+!N§.§=!2§;
   import §-!5§.§3!I§;
   import §0l§.Texture;
   import §3F§.§2!3§;
   import §3H§.Sprite;
   import §3H§.§`!@§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §#!<§
   {
      
      public static const §2!H§:String = "ChannelSlingshot";
      
      public static const §%W§:Number = 900;
      
      public static const §2O§:Number = 200;
      
      public static const §"W§:Number = 200;
      
      public static const §`C§:Number = 1500;
      
      public static const §3!§:Number = 5000;
      
      public static const §[k§:Number = 1000;
      
      public static const §5!?§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §,R§:Number;
      
      protected var §=! §:Number;
      
      protected var §?! §:Number;
      
      protected var §-o§:Number;
      
      private var §6t§:§=!2§;
      
      protected var §%3§:Number;
      
      protected var §0C§:Number = 1;
      
      private var §5+§:Sprite;
      
      protected var §3A§:§=_§;
      
      private var §3q§:§`!@§;
      
      protected var §@!5§:§+!E§;
      
      private var §[!=§:Number;
      
      private var §-]§:Boolean = false;
      
      private var §>'§:Boolean = false;
      
      protected var §!v§:Boolean = false;
      
      private var §5!9§:Number;
      
      private var §[g§:Number = 0;
      
      private var §-j§:Number = 0;
      
      private var §1"§:Number = 0;
      
      private var §]C§:Number = 1000;
      
      private var §'A§:Number;
      
      private var §?!#§:Number;
      
      private var §"!3§:int;
      
      private var §'!;§:Number = 0;
      
      protected var §@v§:Number;
      
      protected var §%!§:Number;
      
      private var §=!'§:Number = 1;
      
      private var §>d§:Number = 0;
      
      private var §0"§:b2Vec2;
      
      private var §&;§:Number = 1;
      
      public function §#!<§(param1:§+!E§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§@!5§ = param1;
         this.§5+§ = param2;
         this.mName = param3;
         this.§6t§ = §1[§.§[Y§(this.mName).§3!O§;
         this.§,R§ = param4;
         this.§=! § = param5;
         this.§?! § = param4;
         this.§-o§ = param5;
         this.§%3§ = 0;
         this.§-]§ = false;
         this.§>'§ = false;
         this.§[g§ = 0;
         this.§,H§();
         this.§@v§ = 0;
      }
      
      public function §"6§() : void
      {
         this.§-]§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§5+§)
         {
            this.§5+§.dispose();
            this.§5+§ = null;
         }
      }
      
      public function §]D§(param1:Number) : void
      {
         if(!this.§>'§ || this.§-]§)
         {
            return;
         }
         if(this.§0C§ != 0)
         {
            this.§1"§ = 0;
            this.§'!;§ = 0;
            this.§%3§ = 0;
            this.§?!#§ = 0;
            this.§0C§ = 0;
         }
         param1 = Math.min(param1,this.§5!9§);
         this.§,R§ += param1 * (this.§@!5§.§,R§ - this.§,R§) / this.§5!9§;
         this.§=! § += param1 * (this.§@!5§.§=! § - this.§=! §) / this.§5!9§;
         this.§=! § -= param1 / 50 * (this.§5!9§ / §%W§);
         this.§%3§ += param1 * (360 - this.§%3§) / this.§5!9§;
         this.§5!9§ -= param1;
         if(this.§5!9§ <= 0)
         {
            this.§,R§ = this.§@!5§.§,R§;
            this.§=! § = this.§@!5§.§=! §;
            this.§>'§ = false;
            this.§-]§ = true;
            this.§%3§ = 0;
         }
         this.§]!0§();
      }
      
      public function §3!#§() : void
      {
         this.§>'§ = true;
         this.§5!9§ = §%W§;
         this.§=D§(§=!2§.§,M§);
         if(this.§'!;§ != 0)
         {
            this.§=! § += this.§'!;§;
            this.§'!;§ = 0;
         }
      }
      
      public function §3m§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§-]§ && this.§@v§ >= 0)
         {
            if(this.§%!§ > this.§@!5§.§@k§.§ !9§.§ h§)
            {
               this.§&!B§(this.§@!5§.§@k§.§ !9§.§ h§ - this.§%!§);
               this.§@v§ = -1;
            }
            this.§@v§ -= param1;
            if(this.§@v§ <= 0)
            {
               if(this.§1"§ > 0)
               {
                  this.§@v§ = this.§1"§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§%!§))
               {
                  _loc2_ = this.§@!5§.§@k§.objects.§,+§(this.§,R§,this.§%!§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§&!B§(param1 / 100))
                  {
                     this.§@v§ = -1;
                  }
                  else
                  {
                     this.§@v§ = 0;
                  }
               }
               else if(!this.§@!5§.§@k§.objects.§8!F§(_loc2_).§]!;§)
               {
                  this.§!v§ = false;
                  this.§@v§ = -1;
               }
               else if(this.§@!5§.§@k§.objects.§8!F§(_loc2_).§88§())
               {
                  this.§!v§ = false;
                  this.§@v§ = 2000;
               }
               else
               {
                  this.§@v§ = 500;
               }
            }
         }
      }
      
      public function §&!B§(param1:Number) : Boolean
      {
         this.§=! § += param1;
         this.§%!§ += param1;
         if(this.§%!§ > this.§@!5§.§@k§.§ !9§.§ h§)
         {
            param1 = this.§%!§ - this.§@!5§.§@k§.§ !9§.§ h§;
            this.§=! § -= param1;
            this.§%!§ -= param1;
            this.§]!0§();
            return true;
         }
         this.§]!0§();
         return false;
      }
      
      public function §,H§() : void
      {
         var _loc1_:§-!H§ = §1[§.§[Y§(this.mName).shape;
         if(_loc1_.§?x§() == §-!H§.§;!2§)
         {
            this.§0"§ = _loc1_.§ S§()[0];
            this.§[!=§ = _loc1_.§#!6§;
         }
         else if(_loc1_.§?x§() == §-!H§.§&!$§)
         {
            this.§0"§ = new b2Vec2(0,0);
            this.§[!=§ = 1.5;
         }
         this.§3A§ = this.§@!5§.§@k§.§4!C§.getAnimation(this.mName);
         if(!this.§3A§)
         {
            this.§0!#§(null);
         }
         else
         {
            this.§0!#§(this.§3A§.getFrame(0));
         }
      }
      
      public function §0!#§(param1:§6!§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§@!5§.§+t§.textureManager.§5!0§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§3q§ == null)
         {
            this.§3q§ = new §`!@§(_loc2_);
            this.§5+§.addChild(this.§3q§);
         }
         else
         {
            this.§3q§.texture = _loc2_;
         }
         if(param1)
         {
            this.§3q§.x = -param1.pivotX - this.§0"§.x / §4h§.§-9§;
            this.§3q§.y = -param1.pivotY - this.§0"§.y / §4h§.§-9§;
         }
         else
         {
            this.§3q§.x = -this.§3q§.width / 2;
            this.§3q§.y = -this.§3q§.height / 2;
         }
         this.§3q§.scaleX = _loc3_;
         this.§3q§.scaleY = _loc3_;
         this.§]!0§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§3m§(param1);
         if(this.§>'§)
         {
            this.§1"§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§false§(param1);
            this.§7a§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§ ]§(param1,param2);
            }
         }
      }
      
      public function §false§(param1:Number) : void
      {
         if(this.§[g§ > 0)
         {
            this.§[g§ -= param1;
            if(this.§[g§ <= 0)
            {
               this.§%!?§();
            }
         }
         else if(this.§-j§ <= 0 && Math.random() * §`C§ < param1 && this.§@!5§.mSlingShotState)
         {
            this.§@r§();
         }
      }
      
      public function §%!?§() : void
      {
         this.§[g§ = 0;
         this.§0!#§(this.§3A§.getFrame(0));
      }
      
      public function §@r§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§[g§ = §2O§;
         this.§0!#§(this.§3A§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §7a§(param1:Number) : void
      {
         if(this.§-j§ > 0)
         {
            this.§-j§ -= param1;
            if(this.§-j§ <= 0)
            {
               this.§^;§();
            }
         }
         else if(this.§[g§ <= 0 && Math.random() * §3!§ < param1)
         {
            this.§=D§();
         }
      }
      
      public function §^;§() : void
      {
         this.§-j§ = 0;
         this.§0!#§(this.§3A§.getFrame(0));
      }
      
      public function §=D§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§-j§ > 0)
         {
            this.§^;§();
         }
         if(this.§[g§ > 0)
         {
            this.§%!?§();
         }
         if(param1 < 0)
         {
            param1 = §=!2§.§`d§;
         }
         this.§-j§ = §"W§;
         this.§0!#§(this.§3A§.getSubAnimation("yell").getFrame(0));
         if(this.§-]§ || this.§>'§ || param2)
         {
            §2!3§.§@_§(param1,this.§6t§);
         }
         else
         {
            §2!3§.§@_§(param1,this.§6t§,§2!H§);
         }
      }
      
      public function § ]§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§1"§ > 0)
         {
            this.§1"§ -= param1;
            if(this.§1"§ <= 0)
            {
               ++this.§"!3§;
               this.§?!#§ *= 0.4;
               if(!this.§-]§ && this.§"!3§ < 2)
               {
                  if(this.§"!3§ > 1 && this.§?!#§ < -1)
                  {
                     this.§?!#§ = -1;
                  }
                  this.§'A§ = this.§?!#§;
                  this.§1"§ = §5!?§;
                  this.§1"§ *= Math.abs(this.§'A§) / 2;
                  this.§]C§ = this.§1"§;
                  this.§%3§ = 0;
                  this.§0C§ = 0;
               }
               else if(!this.§-]§ && param2)
               {
                  this.§6!+§(2.25);
               }
               else
               {
                  this.§1"§ = 0;
                  this.§'!;§ = 0;
                  this.§%3§ = 0;
                  this.§?!#§ = 0;
               }
            }
            else
            {
               if(this.§1"§ >= this.§]C§ / 2)
               {
                  _loc3_ = (this.§]C§ - this.§1"§) / (this.§]C§ / 2);
                  _loc3_ = §3!I§.§>P§(_loc3_);
                  this.§'!;§ = _loc3_ * this.§'A§;
               }
               else
               {
                  _loc3_ = (this.§]C§ / 2 - this.§1"§) / (this.§]C§ / 2);
                  _loc3_ = §3!I§.§>P§(_loc3_,false);
                  this.§'!;§ = this.§'A§ + _loc3_ * -this.§'A§;
               }
               this.§%3§ = 360 * §3!I§.§>P§((this.§]C§ - this.§1"§) / this.§]C§) * this.§0C§;
            }
            this.§]!0§();
         }
         else if(Math.random() * §[k§ < param1 && !this.§-]§ && !this.§>'§ && !this.§!v§)
         {
            this.§6!+§();
         }
      }
      
      public function §6!+§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§"!3§ = 0;
         this.§1"§ = §5!?§;
         this.§'!;§ = 0;
         this.§'A§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§?!#§ = this.§'A§;
         this.§1"§ *= Math.abs(this.§'A§) / 3;
         this.§]C§ = this.§1"§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§0C§ = 0;
         }
         else if(this.§1"§ < 350)
         {
            this.§0C§ = 0;
         }
         else
         {
            this.§0C§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§0C§ = Math.random() > 0.5 ? Number(this.§0C§) : Number(0);
         }
      }
      
      public function §]!0§() : void
      {
         this.§5+§.x = this.§,R§ / §4h§.§-9§;
         this.§5+§.y = (this.§=! § + this.§'!;§) / §4h§.§-9§;
         this.§5+§.rotation = this.§%3§ / 180 * Math.PI;
      }
      
      public function §0!<§() : void
      {
         this.§!v§ = true;
         this.§-]§ = false;
         this.§>'§ = false;
         this.§"!3§ = 0;
         this.§@v§ = 0;
         this.§1"§ = 0;
         this.§1"§ = 0;
         this.§'!;§ = 0;
         this.§%3§ = 0;
         this.§?!#§ = 0;
         this.§0C§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§,R§) * (param1 - this.§,R§) + (param2 - this.§=! §) * (param2 - this.§=! §));
         if(_loc3_ <= this.§[!=§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§,R§ >= param3 && this.§,R§ <= param4 && this.§=! § >= param1 && this.§=! § <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§,R§ != param1 || this.§=! § != param2)
         {
            _loc3_ = true;
         }
         this.§,R§ = param1;
         this.§=! § = param2;
         this.§@v§ = 100;
         this.§]!0§();
         if(_loc3_)
         {
            this.§@!5§.§;7§();
         }
      }
      
      public function §%C§() : §`!@§
      {
         return this.§3q§;
      }
      
      public function get §]!§() : Number
      {
         return this.§1"§;
      }
      
      public function get §`-§() : Number
      {
         return this.§@v§;
      }
      
      public function set §`-§(param1:Number) : void
      {
         this.§@v§ = param1;
      }
      
      public function get §3!7§() : Number
      {
         return this.§=!'§;
      }
      
      public function get §!a§() : Boolean
      {
         return this.§-]§;
      }
      
      public function get radius() : Number
      {
         return this.§[!=§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§5+§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §3!7§(param1:Number) : void
      {
         this.§=!'§ = param1;
      }
      
      public function get §4!B§() : Number
      {
         return this.§>d§;
      }
      
      public function set §4!B§(param1:Number) : void
      {
         this.§>d§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§&;§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§&;§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§,R§;
      }
      
      public function get y() : Number
      {
         return this.§=! §;
      }
      
      public function get §6!B§() : Number
      {
         return this.§?! §;
      }
      
      public function get §]R§() : Number
      {
         return this.§-o§;
      }
   }
}
