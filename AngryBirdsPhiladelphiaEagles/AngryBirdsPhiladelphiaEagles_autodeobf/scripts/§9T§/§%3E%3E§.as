package §9T§
{
   import § N§.§1!A§;
   import § N§.Sprite;
   import §#e§.§4^§;
   import §#e§.§`!9§;
   import §-!&§.§3!,§;
   import §2G§.§+b§;
   import §2G§.§0Z§;
   import §2G§.§>U§;
   import §8z§.Texture;
   import §`K§.§^F§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §>>§
   {
      
      public static const §true §:String = "ChannelSlingshot";
      
      public static const §04§:Number = 900;
      
      public static const §[R§:Number = 200;
      
      public static const §[!=§:Number = 200;
      
      public static const §&!>§:Number = 1500;
      
      public static const §?!;§:Number = 5000;
      
      public static const §]3§:Number = 1000;
      
      public static const §[l§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §]!B§:Number;
      
      protected var §5G§:Number;
      
      protected var §,&§:Number;
      
      protected var §60§:Number;
      
      private var §^!;§:§0Z§;
      
      protected var § !'§:Number;
      
      protected var §?!N§:Number = 1;
      
      private var §8A§:Sprite;
      
      protected var §3!Q§:§4^§;
      
      private var §<!8§:§1!A§;
      
      protected var §'Y§:§97§;
      
      private var §9!I§:Number;
      
      private var §?]§:Boolean = false;
      
      private var §?!D§:Boolean = false;
      
      protected var §;m§:Boolean = false;
      
      private var §=Q§:Number;
      
      private var §#<§:Number = 0;
      
      private var §1!?§:Number = 0;
      
      private var §`+§:Number = 0;
      
      private var §<D§:Number = 1000;
      
      private var §]I§:Number;
      
      private var §"E§:Number;
      
      private var §;l§:int;
      
      private var §2u§:Number = 0;
      
      protected var §7g§:Number;
      
      protected var §<;§:Number;
      
      private var §&!N§:Number = 1;
      
      private var §-F§:Number = 0;
      
      private var §8!J§:b2Vec2;
      
      private var §6-§:Number = 1;
      
      public function §>>§(param1:§97§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§'Y§ = param1;
         this.§8A§ = param2;
         this.mName = param3;
         this.§^!;§ = §>U§.§=v§(this.mName).§1h§;
         this.§]!B§ = param4;
         this.§5G§ = param5;
         this.§,&§ = param4;
         this.§60§ = param5;
         this.§ !'§ = 0;
         this.§?]§ = false;
         this.§?!D§ = false;
         this.§#<§ = 0;
         this.§[!B§();
         this.§7g§ = 0;
      }
      
      public function §4b§() : void
      {
         this.§?]§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§8A§)
         {
            this.§8A§.dispose();
            this.§8A§ = null;
         }
      }
      
      public function §%!@§(param1:Number) : void
      {
         if(!this.§?!D§ || this.§?]§)
         {
            return;
         }
         if(this.§?!N§ != 0)
         {
            this.§`+§ = 0;
            this.§2u§ = 0;
            this.§ !'§ = 0;
            this.§"E§ = 0;
            this.§?!N§ = 0;
         }
         param1 = Math.min(param1,this.§=Q§);
         this.§]!B§ += param1 * (this.§'Y§.§]!B§ - this.§]!B§) / this.§=Q§;
         this.§5G§ += param1 * (this.§'Y§.§5G§ - this.§5G§) / this.§=Q§;
         this.§5G§ -= param1 / 50 * (this.§=Q§ / §04§);
         this.§ !'§ += param1 * (360 - this.§ !'§) / this.§=Q§;
         this.§=Q§ -= param1;
         if(this.§=Q§ <= 0)
         {
            this.§]!B§ = this.§'Y§.§]!B§;
            this.§5G§ = this.§'Y§.§5G§;
            this.§?!D§ = false;
            this.§?]§ = true;
            this.§ !'§ = 0;
         }
         this.§%!8§();
      }
      
      public function §!!I§() : void
      {
         this.§?!D§ = true;
         this.§=Q§ = §04§;
         this.§^j§(§0Z§.§&;§);
         if(this.§2u§ != 0)
         {
            this.§5G§ += this.§2u§;
            this.§2u§ = 0;
         }
      }
      
      public function §'i§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§?]§ && this.§7g§ >= 0)
         {
            if(this.§<;§ > this.§'Y§.§;§.§9!>§.§^!O§)
            {
               this.§!#§(this.§'Y§.§;§.§9!>§.§^!O§ - this.§<;§);
               this.§7g§ = -1;
            }
            this.§7g§ -= param1;
            if(this.§7g§ <= 0)
            {
               if(this.§`+§ > 0)
               {
                  this.§7g§ = this.§`+§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§<;§))
               {
                  _loc2_ = this.§'Y§.§;§.objects.§'h§(this.§]!B§,this.§<;§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§!#§(param1 / 100))
                  {
                     this.§7g§ = -1;
                  }
                  else
                  {
                     this.§7g§ = 0;
                  }
               }
               else if(!this.§'Y§.§;§.objects.§ for§(_loc2_).§ [§)
               {
                  this.§;m§ = false;
                  this.§7g§ = -1;
               }
               else if(this.§'Y§.§;§.objects.§ for§(_loc2_).§6D§())
               {
                  this.§;m§ = false;
                  this.§7g§ = 2000;
               }
               else
               {
                  this.§7g§ = 500;
               }
            }
         }
      }
      
      public function §!#§(param1:Number) : Boolean
      {
         this.§5G§ += param1;
         this.§<;§ += param1;
         if(this.§<;§ > this.§'Y§.§;§.§9!>§.§^!O§)
         {
            param1 = this.§<;§ - this.§'Y§.§;§.§9!>§.§^!O§;
            this.§5G§ -= param1;
            this.§<;§ -= param1;
            this.§%!8§();
            return true;
         }
         this.§%!8§();
         return false;
      }
      
      public function §[!B§() : void
      {
         var _loc1_:§+b§ = §>U§.§=v§(this.mName).shape;
         if(_loc1_.§5L§() == §+b§.§%<§)
         {
            this.§8!J§ = _loc1_.§'! §()[0];
            this.§9!I§ = _loc1_.§6! §;
         }
         else if(_loc1_.§5L§() == §+b§.§'J§)
         {
            this.§8!J§ = new b2Vec2(0,0);
            this.§9!I§ = 1.5;
         }
         this.§3!Q§ = this.§'Y§.§;§.§<'§.getAnimation(this.mName);
         if(!this.§3!Q§)
         {
            this.§9!"§(null);
         }
         else
         {
            this.§9!"§(this.§3!Q§.getFrame(0));
         }
      }
      
      public function §9!"§(param1:§`!9§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§'Y§.§'k§.textureManager.§6K§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§<!8§ == null)
         {
            this.§<!8§ = new §1!A§(_loc2_);
            this.§8A§.addChild(this.§<!8§);
         }
         else
         {
            this.§<!8§.texture = _loc2_;
         }
         if(param1)
         {
            this.§<!8§.x = -param1.pivotX - this.§8!J§.x / §1r§.§[M§;
            this.§<!8§.y = -param1.pivotY - this.§8!J§.y / §1r§.§[M§;
         }
         else
         {
            this.§<!8§.x = -this.§<!8§.width / 2;
            this.§<!8§.y = -this.§<!8§.height / 2;
         }
         this.§<!8§.scaleX = _loc3_;
         this.§<!8§.scaleY = _loc3_;
         this.§%!8§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§'i§(param1);
         if(this.§?!D§)
         {
            this.§`+§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§7r§(param1);
            this.§>!'§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§-x§(param1,param2);
            }
         }
      }
      
      public function §7r§(param1:Number) : void
      {
         if(this.§#<§ > 0)
         {
            this.§#<§ -= param1;
            if(this.§#<§ <= 0)
            {
               this.§@I§();
            }
         }
         else if(this.§1!?§ <= 0 && Math.random() * §&!>§ < param1 && this.§'Y§.mSlingShotState)
         {
            this.§8-§();
         }
      }
      
      public function §@I§() : void
      {
         this.§#<§ = 0;
         this.§9!"§(this.§3!Q§.getFrame(0));
      }
      
      public function §8-§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§#<§ = §[R§;
         this.§9!"§(this.§3!Q§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §>!'§(param1:Number) : void
      {
         if(this.§1!?§ > 0)
         {
            this.§1!?§ -= param1;
            if(this.§1!?§ <= 0)
            {
               this.§&A§();
            }
         }
         else if(this.§#<§ <= 0 && Math.random() * §?!;§ < param1)
         {
            this.§^j§();
         }
      }
      
      public function §&A§() : void
      {
         this.§1!?§ = 0;
         this.§9!"§(this.§3!Q§.getFrame(0));
      }
      
      public function §^j§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§1!?§ > 0)
         {
            this.§&A§();
         }
         if(this.§#<§ > 0)
         {
            this.§@I§();
         }
         if(param1 < 0)
         {
            param1 = §0Z§.§+-§;
         }
         this.§1!?§ = §[!=§;
         this.§9!"§(this.§3!Q§.getSubAnimation("yell").getFrame(0));
         if(this.§?]§ || this.§?!D§ || param2)
         {
            §3!,§.§,!I§(param1,this.§^!;§);
         }
         else
         {
            §3!,§.§,!I§(param1,this.§^!;§,§true §);
         }
      }
      
      public function §-x§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§`+§ > 0)
         {
            this.§`+§ -= param1;
            if(this.§`+§ <= 0)
            {
               ++this.§;l§;
               this.§"E§ *= 0.4;
               if(!this.§?]§ && this.§;l§ < 2)
               {
                  if(this.§;l§ > 1 && this.§"E§ < -1)
                  {
                     this.§"E§ = -1;
                  }
                  this.§]I§ = this.§"E§;
                  this.§`+§ = §[l§;
                  this.§`+§ *= Math.abs(this.§]I§) / 2;
                  this.§<D§ = this.§`+§;
                  this.§ !'§ = 0;
                  this.§?!N§ = 0;
               }
               else if(!this.§?]§ && param2)
               {
                  this.§;!%§(2.25);
               }
               else
               {
                  this.§`+§ = 0;
                  this.§2u§ = 0;
                  this.§ !'§ = 0;
                  this.§"E§ = 0;
               }
            }
            else
            {
               if(this.§`+§ >= this.§<D§ / 2)
               {
                  _loc3_ = (this.§<D§ - this.§`+§) / (this.§<D§ / 2);
                  _loc3_ = §^F§.§1g§(_loc3_);
                  this.§2u§ = _loc3_ * this.§]I§;
               }
               else
               {
                  _loc3_ = (this.§<D§ / 2 - this.§`+§) / (this.§<D§ / 2);
                  _loc3_ = §^F§.§1g§(_loc3_,false);
                  this.§2u§ = this.§]I§ + _loc3_ * -this.§]I§;
               }
               this.§ !'§ = 360 * §^F§.§1g§((this.§<D§ - this.§`+§) / this.§<D§) * this.§?!N§;
            }
            this.§%!8§();
         }
         else if(Math.random() * §]3§ < param1 && !this.§?]§ && !this.§?!D§ && !this.§;m§)
         {
            this.§;!%§();
         }
      }
      
      public function §;!%§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§;l§ = 0;
         this.§`+§ = §[l§;
         this.§2u§ = 0;
         this.§]I§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§"E§ = this.§]I§;
         this.§`+§ *= Math.abs(this.§]I§) / 3;
         this.§<D§ = this.§`+§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§?!N§ = 0;
         }
         else if(this.§`+§ < 350)
         {
            this.§?!N§ = 0;
         }
         else
         {
            this.§?!N§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§?!N§ = Math.random() > 0.5 ? Number(this.§?!N§) : Number(0);
         }
      }
      
      public function §%!8§() : void
      {
         this.§8A§.x = this.§]!B§ / §1r§.§[M§;
         this.§8A§.y = (this.§5G§ + this.§2u§) / §1r§.§[M§;
         this.§8A§.rotation = this.§ !'§ / 180 * Math.PI;
      }
      
      public function §'!3§() : void
      {
         this.§;m§ = true;
         this.§?]§ = false;
         this.§?!D§ = false;
         this.§;l§ = 0;
         this.§7g§ = 0;
         this.§`+§ = 0;
         this.§`+§ = 0;
         this.§2u§ = 0;
         this.§ !'§ = 0;
         this.§"E§ = 0;
         this.§?!N§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§]!B§) * (param1 - this.§]!B§) + (param2 - this.§5G§) * (param2 - this.§5G§));
         if(_loc3_ <= this.§9!I§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§]!B§ >= param3 && this.§]!B§ <= param4 && this.§5G§ >= param1 && this.§5G§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§]!B§ != param1 || this.§5G§ != param2)
         {
            _loc3_ = true;
         }
         this.§]!B§ = param1;
         this.§5G§ = param2;
         this.§7g§ = 100;
         this.§%!8§();
         if(_loc3_)
         {
            this.§'Y§.§;!O§();
         }
      }
      
      public function §[c§() : §1!A§
      {
         return this.§<!8§;
      }
      
      public function get §%!G§() : Number
      {
         return this.§`+§;
      }
      
      public function get §?c§() : Number
      {
         return this.§7g§;
      }
      
      public function set §?c§(param1:Number) : void
      {
         this.§7g§ = param1;
      }
      
      public function get §<P§() : Number
      {
         return this.§&!N§;
      }
      
      public function get §8!'§() : Boolean
      {
         return this.§?]§;
      }
      
      public function get radius() : Number
      {
         return this.§9!I§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§8A§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §<P§(param1:Number) : void
      {
         this.§&!N§ = param1;
      }
      
      public function get §4!9§() : Number
      {
         return this.§-F§;
      }
      
      public function set §4!9§(param1:Number) : void
      {
         this.§-F§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§6-§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§6-§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§]!B§;
      }
      
      public function get y() : Number
      {
         return this.§5G§;
      }
      
      public function get §8!&§() : Number
      {
         return this.§,&§;
      }
      
      public function get §4%§() : Number
      {
         return this.§60§;
      }
   }
}
