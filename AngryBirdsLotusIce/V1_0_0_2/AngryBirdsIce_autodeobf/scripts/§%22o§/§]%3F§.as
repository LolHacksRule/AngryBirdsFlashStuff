package §"o§
{
   import §%?§.Texture;
   import §&V§.§,_§;
   import §&V§.§;Q§;
   import §'m§.§%N§;
   import §2!"§.§4!%§;
   import §2!"§.§8y§;
   import §2!"§.§;,§;
   import §@!=§.§"S§;
   import §@!=§.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import §finally§.§%!7§;
   
   public class §]?§
   {
      
      public static const §!%§:String = "ChannelSlingshot";
      
      public static const §&+§:Number = 900;
      
      public static const §+"§:Number = 200;
      
      public static const §<0§:Number = 200;
      
      public static const § +§:Number = 1500;
      
      public static const §7m§:Number = 5000;
      
      public static const §^@§:Number = 1000;
      
      public static const §&!"§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §2!2§:Number;
      
      protected var §9!3§:Number;
      
      protected var §8r§:Number;
      
      protected var §%y§:Number;
      
      private var §%E§:§8y§;
      
      protected var §@k§:Number;
      
      protected var §]!8§:Number = 1;
      
      private var §+x§:Sprite;
      
      protected var §6!E§:§,_§;
      
      private var §,6§:§"S§;
      
      protected var §40§:§<+§;
      
      private var §>[§:Number;
      
      private var §#P§:Boolean = false;
      
      private var §2&§:Boolean = false;
      
      protected var §&L§:Boolean = false;
      
      private var §,%§:Number;
      
      private var §=i§:Number = 0;
      
      private var §[!G§:Number = 0;
      
      private var §,2§:Number = 0;
      
      private var §5v§:Number = 1000;
      
      private var §^V§:Number;
      
      private var §3!5§:Number;
      
      private var §1!A§:int;
      
      private var §7;§:Number = 0;
      
      protected var §2Q§:Number;
      
      protected var §=!D§:Number;
      
      private var §!V§:Number = 1;
      
      private var §'q§:Number = 0;
      
      private var §38§:b2Vec2;
      
      private var §50§:Number = 1;
      
      public function §]?§(param1:§<+§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§40§ = param1;
         this.§+x§ = param2;
         this.mName = param3;
         this.§%E§ = §4!%§.§`!+§(this.mName).§]!2§;
         this.§2!2§ = param4;
         this.§9!3§ = param5;
         this.§8r§ = param4;
         this.§%y§ = param5;
         this.§@k§ = 0;
         this.§#P§ = false;
         this.§2&§ = false;
         this.§=i§ = 0;
         this.§4N§();
         this.§2Q§ = 0;
      }
      
      public function §<W§() : void
      {
         this.§#P§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§+x§)
         {
            this.§+x§.dispose();
            this.§+x§ = null;
         }
      }
      
      public function §>!9§(param1:Number) : void
      {
         if(!this.§2&§ || this.§#P§)
         {
            return;
         }
         if(this.§]!8§ != 0)
         {
            this.§,2§ = 0;
            this.§7;§ = 0;
            this.§@k§ = 0;
            this.§3!5§ = 0;
            this.§]!8§ = 0;
         }
         param1 = Math.min(param1,this.§,%§);
         this.§2!2§ += param1 * (this.§40§.§2!2§ - this.§2!2§) / this.§,%§;
         this.§9!3§ += param1 * (this.§40§.§9!3§ - this.§9!3§) / this.§,%§;
         this.§9!3§ -= param1 / 50 * (this.§,%§ / §&+§);
         this.§@k§ += param1 * (360 - this.§@k§) / this.§,%§;
         this.§,%§ -= param1;
         if(this.§,%§ <= 0)
         {
            this.§2!2§ = this.§40§.§2!2§;
            this.§9!3§ = this.§40§.§9!3§;
            this.§2&§ = false;
            this.§#P§ = true;
            this.§@k§ = 0;
         }
         this.§;r§();
      }
      
      public function §2!&§() : void
      {
         this.§2&§ = true;
         this.§,%§ = §&+§;
         this.§'"§(§8y§.§+!<§);
         if(this.§7;§ != 0)
         {
            this.§9!3§ += this.§7;§;
            this.§7;§ = 0;
         }
      }
      
      public function §4?§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§#P§ && this.§2Q§ >= 0)
         {
            if(this.§=!D§ > this.§40§.§ 6§.§2!§.§1n§)
            {
               this.§4O§(this.§40§.§ 6§.§2!§.§1n§ - this.§=!D§);
               this.§2Q§ = -1;
            }
            this.§2Q§ -= param1;
            if(this.§2Q§ <= 0)
            {
               if(this.§,2§ > 0)
               {
                  this.§2Q§ = this.§,2§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§=!D§))
               {
                  _loc2_ = this.§40§.§ 6§.objects.§3!%§(this.§2!2§,this.§=!D§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§4O§(param1 / 100))
                  {
                     this.§2Q§ = -1;
                  }
                  else
                  {
                     this.§2Q§ = 0;
                  }
               }
               else if(!this.§40§.§ 6§.objects.§ n§(_loc2_).§-I§)
               {
                  this.§&L§ = false;
                  this.§2Q§ = -1;
               }
               else if(this.§40§.§ 6§.objects.§ n§(_loc2_).§7!3§())
               {
                  this.§&L§ = false;
                  this.§2Q§ = 2000;
               }
               else
               {
                  this.§2Q§ = 500;
               }
            }
         }
      }
      
      public function §4O§(param1:Number) : Boolean
      {
         this.§9!3§ += param1;
         this.§=!D§ += param1;
         if(this.§=!D§ > this.§40§.§ 6§.§2!§.§1n§)
         {
            param1 = this.§=!D§ - this.§40§.§ 6§.§2!§.§1n§;
            this.§9!3§ -= param1;
            this.§=!D§ -= param1;
            this.§;r§();
            return true;
         }
         this.§;r§();
         return false;
      }
      
      public function §4N§() : void
      {
         var _loc1_:§;,§ = §4!%§.§`!+§(this.mName).shape;
         if(_loc1_.§28§() == §;,§.§,G§)
         {
            this.§38§ = _loc1_.§'!C§()[0];
            this.§>[§ = _loc1_.§6#§;
         }
         else if(_loc1_.§28§() == §;,§.§!k§)
         {
            this.§38§ = new b2Vec2(0,0);
            this.§>[§ = 1.5;
         }
         this.§6!E§ = this.§40§.§ 6§.§]P§.§!D§(this.mName);
         if(!this.§6!E§)
         {
            this.§#2§(null);
         }
         else
         {
            this.§#2§(this.§6!E§.getFrame(0));
         }
      }
      
      public function §#2§(param1:§;Q§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§40§.§=?§.textureManager.§#w§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§,6§ == null)
         {
            this.§,6§ = new §"S§(_loc2_);
            this.§+x§.addChild(this.§,6§);
         }
         else
         {
            this.§,6§.texture = _loc2_;
         }
         if(param1)
         {
            this.§,6§.x = -param1.pivotX - this.§38§.x / § M§.§%v§;
            this.§,6§.y = -param1.pivotY - this.§38§.y / § M§.§%v§;
         }
         else
         {
            this.§,6§.x = -this.§,6§.width / 2;
            this.§,6§.y = -this.§,6§.height / 2;
         }
         this.§,6§.scaleX = _loc3_;
         this.§,6§.scaleY = _loc3_;
         this.§;r§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§4?§(param1);
         if(this.§2&§)
         {
            this.§,2§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§ _§(param1);
            this.§9!1§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§>h§(param1,param2);
            }
         }
      }
      
      public function § _§(param1:Number) : void
      {
         if(this.§=i§ > 0)
         {
            this.§=i§ -= param1;
            if(this.§=i§ <= 0)
            {
               this.§-+§();
            }
         }
         else if(this.§[!G§ <= 0 && Math.random() * § +§ < param1 && this.§40§.mSlingShotState)
         {
            this.§1@§();
         }
      }
      
      public function §-+§() : void
      {
         this.§=i§ = 0;
         this.§#2§(this.§6!E§.getFrame(0));
      }
      
      public function §1@§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§=i§ = §+"§;
         this.§#2§(this.§6!E§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §9!1§(param1:Number) : void
      {
         if(this.§[!G§ > 0)
         {
            this.§[!G§ -= param1;
            if(this.§[!G§ <= 0)
            {
               this.§,t§();
            }
         }
         else if(this.§=i§ <= 0 && Math.random() * §7m§ < param1)
         {
            this.§'"§();
         }
      }
      
      public function §,t§() : void
      {
         this.§[!G§ = 0;
         this.§#2§(this.§6!E§.getFrame(0));
      }
      
      public function §'"§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§[!G§ > 0)
         {
            this.§,t§();
         }
         if(this.§=i§ > 0)
         {
            this.§-+§();
         }
         if(param1 < 0)
         {
            param1 = §8y§.§"!#§;
         }
         this.§[!G§ = §<0§;
         this.§#2§(this.§6!E§.getSubAnimation("yell").getFrame(0));
         if(this.§#P§ || this.§2&§ || param2)
         {
            §%!7§.§^!<§(param1,this.§%E§);
         }
         else
         {
            §%!7§.§^!<§(param1,this.§%E§,§!%§);
         }
      }
      
      public function §>h§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§,2§ > 0)
         {
            this.§,2§ -= param1;
            if(this.§,2§ <= 0)
            {
               ++this.§1!A§;
               this.§3!5§ *= 0.4;
               if(!this.§#P§ && this.§1!A§ < 2)
               {
                  if(this.§1!A§ > 1 && this.§3!5§ < -1)
                  {
                     this.§3!5§ = -1;
                  }
                  this.§^V§ = this.§3!5§;
                  this.§,2§ = §&!"§;
                  this.§,2§ *= Math.abs(this.§^V§) / 2;
                  this.§5v§ = this.§,2§;
                  this.§@k§ = 0;
                  this.§]!8§ = 0;
               }
               else if(!this.§#P§ && param2)
               {
                  this.§9!,§(2.25);
               }
               else
               {
                  this.§,2§ = 0;
                  this.§7;§ = 0;
                  this.§@k§ = 0;
                  this.§3!5§ = 0;
               }
            }
            else
            {
               if(this.§,2§ >= this.§5v§ / 2)
               {
                  _loc3_ = (this.§5v§ - this.§,2§) / (this.§5v§ / 2);
                  _loc3_ = §%N§.§6V§(_loc3_);
                  this.§7;§ = _loc3_ * this.§^V§;
               }
               else
               {
                  _loc3_ = (this.§5v§ / 2 - this.§,2§) / (this.§5v§ / 2);
                  _loc3_ = §%N§.§6V§(_loc3_,false);
                  this.§7;§ = this.§^V§ + _loc3_ * -this.§^V§;
               }
               this.§@k§ = 360 * §%N§.§6V§((this.§5v§ - this.§,2§) / this.§5v§) * this.§]!8§;
            }
            this.§;r§();
         }
         else if(Math.random() * §^@§ < param1 && !this.§#P§ && !this.§2&§ && !this.§&L§)
         {
            this.§9!,§();
         }
      }
      
      public function §9!,§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§1!A§ = 0;
         this.§,2§ = §&!"§;
         this.§7;§ = 0;
         this.§^V§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§3!5§ = this.§^V§;
         this.§,2§ *= Math.abs(this.§^V§) / 3;
         this.§5v§ = this.§,2§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§]!8§ = 0;
         }
         else if(this.§,2§ < 350)
         {
            this.§]!8§ = 0;
         }
         else
         {
            this.§]!8§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§]!8§ = Math.random() > 0.5 ? Number(this.§]!8§) : Number(0);
         }
      }
      
      public function §;r§() : void
      {
         this.§+x§.x = this.§2!2§ / § M§.§%v§;
         this.§+x§.y = (this.§9!3§ + this.§7;§) / § M§.§%v§;
         this.§+x§.rotation = this.§@k§ / 180 * Math.PI;
      }
      
      public function final() : void
      {
         this.§&L§ = true;
         this.§#P§ = false;
         this.§2&§ = false;
         this.§1!A§ = 0;
         this.§2Q§ = 0;
         this.§,2§ = 0;
         this.§,2§ = 0;
         this.§7;§ = 0;
         this.§@k§ = 0;
         this.§3!5§ = 0;
         this.§]!8§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§2!2§) * (param1 - this.§2!2§) + (param2 - this.§9!3§) * (param2 - this.§9!3§));
         if(_loc3_ <= this.§>[§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§2!2§ >= param3 && this.§2!2§ <= param4 && this.§9!3§ >= param1 && this.§9!3§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§2!2§ != param1 || this.§9!3§ != param2)
         {
            _loc3_ = true;
         }
         this.§2!2§ = param1;
         this.§9!3§ = param2;
         this.§2Q§ = 100;
         this.§;r§();
         if(_loc3_)
         {
            this.§40§.§5R§();
         }
      }
      
      public function §8=§() : §"S§
      {
         return this.§,6§;
      }
      
      public function get §8!9§() : Number
      {
         return this.§,2§;
      }
      
      public function get §<n§() : Number
      {
         return this.§2Q§;
      }
      
      public function set §<n§(param1:Number) : void
      {
         this.§2Q§ = param1;
      }
      
      public function get §@u§() : Number
      {
         return this.§!V§;
      }
      
      public function get §!!8§() : Boolean
      {
         return this.§#P§;
      }
      
      public function get radius() : Number
      {
         return this.§>[§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§+x§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §@u§(param1:Number) : void
      {
         this.§!V§ = param1;
      }
      
      public function get §&!D§() : Number
      {
         return this.§'q§;
      }
      
      public function set §&!D§(param1:Number) : void
      {
         this.§'q§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§50§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§50§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§2!2§;
      }
      
      public function get y() : Number
      {
         return this.§9!3§;
      }
      
      public function get §"q§() : Number
      {
         return this.§8r§;
      }
      
      public function get §]M§() : Number
      {
         return this.§%y§;
      }
   }
}
