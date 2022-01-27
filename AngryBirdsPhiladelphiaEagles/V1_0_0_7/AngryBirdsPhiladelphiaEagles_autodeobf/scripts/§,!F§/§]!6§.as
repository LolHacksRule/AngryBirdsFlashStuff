package §,!F§
{
   import §!6§.§4n§;
   import §"`§.Texture;
   import §'d§.§,_§;
   import §'d§.§>N§;
   import §'d§.§?+§;
   import §+f§.§0Q§;
   import §+f§.§=3§;
   import §4G§.Sprite;
   import §4G§.§`l§;
   import §8x§.§8C§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §]!6§
   {
      
      public static const §`B§:String = "ChannelSlingshot";
      
      public static const §<M§:Number = 900;
      
      public static const §3H§:Number = 200;
      
      public static const §[D§:Number = 200;
      
      public static const §<W§:Number = 1500;
      
      public static const §>!N§:Number = 5000;
      
      public static const §8!§:Number = 1000;
      
      public static const §^!+§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §#+§:Number;
      
      protected var §+9§:Number;
      
      protected var §@! §:Number;
      
      protected var §@W§:Number;
      
      private var §+N§:§>N§;
      
      protected var §0!@§:Number;
      
      protected var §@!#§:Number = 1;
      
      private var §!!+§:Sprite;
      
      protected var §0+§:§0Q§;
      
      private var §&4§:§`l§;
      
      protected var §?!4§:§,!7§;
      
      private var §@2§:Number;
      
      private var §;N§:Boolean = false;
      
      private var §6!O§:Boolean = false;
      
      protected var §5,§:Boolean = false;
      
      private var §3!D§:Number;
      
      private var §#?§:Number = 0;
      
      private var §^!>§:Number = 0;
      
      private var §"!+§:Number = 0;
      
      private var §+6§:Number = 1000;
      
      private var §##§:Number;
      
      private var §6S§:Number;
      
      private var §==§:int;
      
      private var §'D§:Number = 0;
      
      protected var §?g§:Number;
      
      protected var §2J§:Number;
      
      private var § t§:Number = 1;
      
      private var §"%§:Number = 0;
      
      private var §'!3§:b2Vec2;
      
      private var §`Z§:Number = 1;
      
      public function §]!6§(param1:§,!7§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§?!4§ = param1;
         this.§!!+§ = param2;
         this.mName = param3;
         this.§+N§ = §,_§.§89§(this.mName).§"!0§;
         this.§#+§ = param4;
         this.§+9§ = param5;
         this.§@! § = param4;
         this.§@W§ = param5;
         this.§0!@§ = 0;
         this.§;N§ = false;
         this.§6!O§ = false;
         this.§#?§ = 0;
         this.§+!1§();
         this.§?g§ = 0;
      }
      
      public function §@n§() : void
      {
         this.§;N§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§!!+§)
         {
            this.§!!+§.dispose();
            this.§!!+§ = null;
         }
      }
      
      public function §&e§(param1:Number) : void
      {
         if(!this.§6!O§ || this.§;N§)
         {
            return;
         }
         if(this.§@!#§ != 0)
         {
            this.§"!+§ = 0;
            this.§'D§ = 0;
            this.§0!@§ = 0;
            this.§6S§ = 0;
            this.§@!#§ = 0;
         }
         param1 = Math.min(param1,this.§3!D§);
         this.§#+§ += param1 * (this.§?!4§.§#+§ - this.§#+§) / this.§3!D§;
         this.§+9§ += param1 * (this.§?!4§.§+9§ - this.§+9§) / this.§3!D§;
         this.§+9§ -= param1 / 50 * (this.§3!D§ / §<M§);
         this.§0!@§ += param1 * (360 - this.§0!@§) / this.§3!D§;
         this.§3!D§ -= param1;
         if(this.§3!D§ <= 0)
         {
            this.§#+§ = this.§?!4§.§#+§;
            this.§+9§ = this.§?!4§.§+9§;
            this.§6!O§ = false;
            this.§;N§ = true;
            this.§0!@§ = 0;
         }
         this.§6P§();
      }
      
      public function §7k§() : void
      {
         this.§6!O§ = true;
         this.§3!D§ = §<M§;
         this.§>p§(§>N§.§8r§);
         if(this.§'D§ != 0)
         {
            this.§+9§ += this.§'D§;
            this.§'D§ = 0;
         }
      }
      
      public function §=r§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§;N§ && this.§?g§ >= 0)
         {
            if(this.§2J§ > this.§?!4§.§&§.§6!2§.§-u§)
            {
               this.§;#§(this.§?!4§.§&§.§6!2§.§-u§ - this.§2J§);
               this.§?g§ = -1;
            }
            this.§?g§ -= param1;
            if(this.§?g§ <= 0)
            {
               if(this.§"!+§ > 0)
               {
                  this.§?g§ = this.§"!+§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§2J§))
               {
                  _loc2_ = this.§?!4§.§&§.objects.§-<§(this.§#+§,this.§2J§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§;#§(param1 / 100))
                  {
                     this.§?g§ = -1;
                  }
                  else
                  {
                     this.§?g§ = 0;
                  }
               }
               else if(!this.§?!4§.§&§.objects.§7r§(_loc2_).§=d§)
               {
                  this.§5,§ = false;
                  this.§?g§ = -1;
               }
               else if(this.§?!4§.§&§.objects.§7r§(_loc2_).§4!&§())
               {
                  this.§5,§ = false;
                  this.§?g§ = 2000;
               }
               else
               {
                  this.§?g§ = 500;
               }
            }
         }
      }
      
      public function §;#§(param1:Number) : Boolean
      {
         this.§+9§ += param1;
         this.§2J§ += param1;
         if(this.§2J§ > this.§?!4§.§&§.§6!2§.§-u§)
         {
            param1 = this.§2J§ - this.§?!4§.§&§.§6!2§.§-u§;
            this.§+9§ -= param1;
            this.§2J§ -= param1;
            this.§6P§();
            return true;
         }
         this.§6P§();
         return false;
      }
      
      public function §+!1§() : void
      {
         var _loc1_:§?+§ = §,_§.§89§(this.mName).shape;
         if(_loc1_.§%3§() == §?+§.§null §)
         {
            this.§'!3§ = _loc1_.§7H§()[0];
            this.§@2§ = _loc1_.§@k§;
         }
         else if(_loc1_.§%3§() == §?+§.§3G§)
         {
            this.§'!3§ = new b2Vec2(0,0);
            this.§@2§ = 1.5;
         }
         this.§0+§ = this.§?!4§.§&§.§94§.getAnimation(this.mName);
         if(!this.§0+§)
         {
            this.§`!2§(null);
         }
         else
         {
            this.§`!2§(this.§0+§.getFrame(0));
         }
      }
      
      public function §`!2§(param1:§=3§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§?!4§.§]!N§.textureManager.§^!C§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§&4§ == null)
         {
            this.§&4§ = new §`l§(_loc2_);
            this.§!!+§.addChild(this.§&4§);
         }
         else
         {
            this.§&4§.texture = _loc2_;
         }
         if(param1)
         {
            this.§&4§.x = -param1.pivotX - this.§'!3§.x / §#§.§67§;
            this.§&4§.y = -param1.pivotY - this.§'!3§.y / §#§.§67§;
         }
         else
         {
            this.§&4§.x = -this.§&4§.width / 2;
            this.§&4§.y = -this.§&4§.height / 2;
         }
         this.§&4§.scaleX = _loc3_;
         this.§&4§.scaleY = _loc3_;
         this.§6P§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§=r§(param1);
         if(this.§6!O§)
         {
            this.§"!+§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§4!F§(param1);
            this.§#!F§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§4p§(param1,param2);
            }
         }
      }
      
      public function §4!F§(param1:Number) : void
      {
         if(this.§#?§ > 0)
         {
            this.§#?§ -= param1;
            if(this.§#?§ <= 0)
            {
               this.§,!B§();
            }
         }
         else if(this.§^!>§ <= 0 && Math.random() * §<W§ < param1 && this.§?!4§.mSlingShotState)
         {
            this.§"?§();
         }
      }
      
      public function §,!B§() : void
      {
         this.§#?§ = 0;
         this.§`!2§(this.§0+§.getFrame(0));
      }
      
      public function §"?§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§#?§ = §3H§;
         this.§`!2§(this.§0+§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §#!F§(param1:Number) : void
      {
         if(this.§^!>§ > 0)
         {
            this.§^!>§ -= param1;
            if(this.§^!>§ <= 0)
            {
               this.§0_§();
            }
         }
         else if(this.§#?§ <= 0 && Math.random() * §>!N§ < param1)
         {
            this.§>p§();
         }
      }
      
      public function §0_§() : void
      {
         this.§^!>§ = 0;
         this.§`!2§(this.§0+§.getFrame(0));
      }
      
      public function §>p§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§^!>§ > 0)
         {
            this.§0_§();
         }
         if(this.§#?§ > 0)
         {
            this.§,!B§();
         }
         if(param1 < 0)
         {
            param1 = §>N§.§&M§;
         }
         this.§^!>§ = §[D§;
         this.§`!2§(this.§0+§.getSubAnimation("yell").getFrame(0));
         if(this.§;N§ || this.§6!O§ || param2)
         {
            §8C§.§8_§(param1,this.§+N§);
         }
         else
         {
            §8C§.§8_§(param1,this.§+N§,§`B§);
         }
      }
      
      public function §4p§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§"!+§ > 0)
         {
            this.§"!+§ -= param1;
            if(this.§"!+§ <= 0)
            {
               ++this.§==§;
               this.§6S§ *= 0.4;
               if(!this.§;N§ && this.§==§ < 2)
               {
                  if(this.§==§ > 1 && this.§6S§ < -1)
                  {
                     this.§6S§ = -1;
                  }
                  this.§##§ = this.§6S§;
                  this.§"!+§ = §^!+§;
                  this.§"!+§ *= Math.abs(this.§##§) / 2;
                  this.§+6§ = this.§"!+§;
                  this.§0!@§ = 0;
                  this.§@!#§ = 0;
               }
               else if(!this.§;N§ && param2)
               {
                  this.§?$§(2.25);
               }
               else
               {
                  this.§"!+§ = 0;
                  this.§'D§ = 0;
                  this.§0!@§ = 0;
                  this.§6S§ = 0;
               }
            }
            else
            {
               if(this.§"!+§ >= this.§+6§ / 2)
               {
                  _loc3_ = (this.§+6§ - this.§"!+§) / (this.§+6§ / 2);
                  _loc3_ = §4n§.§3,§(_loc3_);
                  this.§'D§ = _loc3_ * this.§##§;
               }
               else
               {
                  _loc3_ = (this.§+6§ / 2 - this.§"!+§) / (this.§+6§ / 2);
                  _loc3_ = §4n§.§3,§(_loc3_,false);
                  this.§'D§ = this.§##§ + _loc3_ * -this.§##§;
               }
               this.§0!@§ = 360 * §4n§.§3,§((this.§+6§ - this.§"!+§) / this.§+6§) * this.§@!#§;
            }
            this.§6P§();
         }
         else if(Math.random() * §8!§ < param1 && !this.§;N§ && !this.§6!O§ && !this.§5,§)
         {
            this.§?$§();
         }
      }
      
      public function §?$§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§==§ = 0;
         this.§"!+§ = §^!+§;
         this.§'D§ = 0;
         this.§##§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§6S§ = this.§##§;
         this.§"!+§ *= Math.abs(this.§##§) / 3;
         this.§+6§ = this.§"!+§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§@!#§ = 0;
         }
         else if(this.§"!+§ < 350)
         {
            this.§@!#§ = 0;
         }
         else
         {
            this.§@!#§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§@!#§ = Math.random() > 0.5 ? Number(this.§@!#§) : Number(0);
         }
      }
      
      public function §6P§() : void
      {
         this.§!!+§.x = this.§#+§ / §#§.§67§;
         this.§!!+§.y = (this.§+9§ + this.§'D§) / §#§.§67§;
         this.§!!+§.rotation = this.§0!@§ / 180 * Math.PI;
      }
      
      public function §%[§() : void
      {
         this.§5,§ = true;
         this.§;N§ = false;
         this.§6!O§ = false;
         this.§==§ = 0;
         this.§?g§ = 0;
         this.§"!+§ = 0;
         this.§"!+§ = 0;
         this.§'D§ = 0;
         this.§0!@§ = 0;
         this.§6S§ = 0;
         this.§@!#§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§#+§) * (param1 - this.§#+§) + (param2 - this.§+9§) * (param2 - this.§+9§));
         if(_loc3_ <= this.§@2§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§#+§ >= param3 && this.§#+§ <= param4 && this.§+9§ >= param1 && this.§+9§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§#+§ != param1 || this.§+9§ != param2)
         {
            _loc3_ = true;
         }
         this.§#+§ = param1;
         this.§+9§ = param2;
         this.§?g§ = 100;
         this.§6P§();
         if(_loc3_)
         {
            this.§?!4§.§?G§();
         }
      }
      
      public function §^!"§() : §`l§
      {
         return this.§&4§;
      }
      
      public function get §8V§() : Number
      {
         return this.§"!+§;
      }
      
      public function get §`!K§() : Number
      {
         return this.§?g§;
      }
      
      public function set §`!K§(param1:Number) : void
      {
         this.§?g§ = param1;
      }
      
      public function get §?_§() : Number
      {
         return this.§ t§;
      }
      
      public function get §=1§() : Boolean
      {
         return this.§;N§;
      }
      
      public function get radius() : Number
      {
         return this.§@2§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§!!+§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §?_§(param1:Number) : void
      {
         this.§ t§ = param1;
      }
      
      public function get §+!>§() : Number
      {
         return this.§"%§;
      }
      
      public function set §+!>§(param1:Number) : void
      {
         this.§"%§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§`Z§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§`Z§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§#+§;
      }
      
      public function get y() : Number
      {
         return this.§+9§;
      }
      
      public function get §;u§() : Number
      {
         return this.§@! §;
      }
      
      public function get §,5§() : Number
      {
         return this.§@W§;
      }
   }
}
