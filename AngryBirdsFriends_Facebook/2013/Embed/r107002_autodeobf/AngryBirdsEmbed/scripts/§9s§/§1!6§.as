package §9s§
{
   import §!!,§.§`Q§;
   import §#!@§.§0V§;
   import §#!@§.Sprite;
   import §1#§.Texture;
   import §;!'§.§'_§;
   import §;!'§.§4&§;
   import §;!'§.§=j§;
   import §@!;§.§`J§;
   import §[v§.§'P§;
   import §[v§.§03§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §1!6§
   {
      
      public static const §1!5§:String = "ChannelSlingshot";
      
      public static const §2p§:Number = 900;
      
      public static const §"!B§:Number = 200;
      
      public static const §,d§:Number = 200;
      
      public static const §4f§:Number = 1500;
      
      public static const §'!2§:Number = 5000;
      
      public static const §]!'§:Number = 1000;
      
      public static const §!'§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §3y§:Number;
      
      protected var §6@§:Number;
      
      protected var §!;§:Number;
      
      protected var §7!E§:Number;
      
      private var §?!H§:§4&§;
      
      protected var §4!5§:Number;
      
      protected var §;A§:Number = 1;
      
      private var §;e§:Sprite;
      
      protected var §%!-§:§03§;
      
      private var §62§:§0V§;
      
      protected var §<j§:§[!?§;
      
      private var §1t§:Number;
      
      private var §[!%§:Boolean = false;
      
      private var native:Boolean = false;
      
      protected var §"r§:Boolean = false;
      
      private var §>d§:Number;
      
      private var §;;§:Number = 0;
      
      private var §5#§:Number = 0;
      
      private var §@=§:Number = 0;
      
      private var §>M§:Number = 1000;
      
      private var §`b§:Number;
      
      private var §8!5§:Number;
      
      private var §!!B§:int;
      
      private var §=!§:Number = 0;
      
      protected var §4! §:Number;
      
      protected var §`5§:Number;
      
      private var §`!7§:Number = 1;
      
      private var §8x§:Number = 0;
      
      private var §4!0§:b2Vec2;
      
      private var §%g§:Number = 1;
      
      public function §1!6§(param1:§[!?§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§<j§ = param1;
         this.§;e§ = param2;
         this.mName = param3;
         this.§?!H§ = §=j§.§=c§(this.mName).§[i§;
         this.§3y§ = param4;
         this.§6@§ = param5;
         this.§!;§ = param4;
         this.§7!E§ = param5;
         this.§4!5§ = 0;
         this.§[!%§ = false;
         this.native = false;
         this.§;;§ = 0;
         this.§!i§();
         this.§4! § = 0;
      }
      
      public function §!N§() : void
      {
         this.§[!%§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§;e§)
         {
            this.§;e§.dispose();
            this.§;e§ = null;
         }
      }
      
      public function §!C§(param1:Number) : void
      {
         if(!this.native || this.§[!%§)
         {
            return;
         }
         if(this.§;A§ != 0)
         {
            this.§@=§ = 0;
            this.§=!§ = 0;
            this.§4!5§ = 0;
            this.§8!5§ = 0;
            this.§;A§ = 0;
         }
         param1 = Math.min(param1,this.§>d§);
         this.§3y§ += param1 * (this.§<j§.§3y§ - this.§3y§) / this.§>d§;
         this.§6@§ += param1 * (this.§<j§.§6@§ - this.§6@§) / this.§>d§;
         this.§6@§ -= param1 / 50 * (this.§>d§ / §2p§);
         this.§4!5§ += param1 * (360 - this.§4!5§) / this.§>d§;
         this.§>d§ -= param1;
         if(this.§>d§ <= 0)
         {
            this.§3y§ = this.§<j§.§3y§;
            this.§6@§ = this.§<j§.§6@§;
            this.native = false;
            this.§[!%§ = true;
            this.§4!5§ = 0;
         }
         this.§?!C§();
      }
      
      public function §6K§() : void
      {
         this.native = true;
         this.§>d§ = §2p§;
         this.§9<§(§4&§.§0O§);
         if(this.§=!§ != 0)
         {
            this.§6@§ += this.§=!§;
            this.§=!§ = 0;
         }
      }
      
      public function §9U§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§[!%§ && this.§4! § >= 0)
         {
            if(this.§`5§ > this.§<j§.§4!I§.§5!=§.§]!7§)
            {
               this.§]!H§(this.§<j§.§4!I§.§5!=§.§]!7§ - this.§`5§);
               this.§4! § = -1;
            }
            this.§4! § -= param1;
            if(this.§4! § <= 0)
            {
               if(this.§@=§ > 0)
               {
                  this.§4! § = this.§@=§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§`5§))
               {
                  _loc2_ = this.§<j§.§4!I§.objects.§3!,§(this.§3y§,this.§`5§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§]!H§(param1 / 100))
                  {
                     this.§4! § = -1;
                  }
                  else
                  {
                     this.§4! § = 0;
                  }
               }
               else if(!this.§<j§.§4!I§.objects.§]!G§(_loc2_).§]n§)
               {
                  this.§"r§ = false;
                  this.§4! § = -1;
               }
               else if(this.§<j§.§4!I§.objects.§]!G§(_loc2_).§;!"§())
               {
                  this.§"r§ = false;
                  this.§4! § = 2000;
               }
               else
               {
                  this.§4! § = 500;
               }
            }
         }
      }
      
      public function §]!H§(param1:Number) : Boolean
      {
         this.§6@§ += param1;
         this.§`5§ += param1;
         if(this.§`5§ > this.§<j§.§4!I§.§5!=§.§]!7§)
         {
            param1 = this.§`5§ - this.§<j§.§4!I§.§5!=§.§]!7§;
            this.§6@§ -= param1;
            this.§`5§ -= param1;
            this.§?!C§();
            return true;
         }
         this.§?!C§();
         return false;
      }
      
      public function §!i§() : void
      {
         var _loc1_:§'_§ = §=j§.§=c§(this.mName).shape;
         if(_loc1_.§4r§() == §'_§.§]!"§)
         {
            this.§4!0§ = _loc1_.§1p§()[0];
            this.§1t§ = _loc1_.§'o§;
         }
         else if(_loc1_.§4r§() == §'_§.§use §)
         {
            this.§4!0§ = new b2Vec2(0,0);
            this.§1t§ = 1.5;
         }
         this.§%!-§ = this.§<j§.§4!I§.§%F§.§ +§(this.mName);
         if(!this.§%!-§)
         {
            this.§4!>§(null);
         }
         else
         {
            this.§4!>§(this.§%!-§.getFrame(0));
         }
      }
      
      public function §4!>§(param1:§'P§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§<j§.§79§.textureManager.§&z§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§62§ == null)
         {
            this.§62§ = new §0V§(_loc2_);
            this.§;e§.addChild(this.§62§);
         }
         else
         {
            this.§62§.texture = _loc2_;
         }
         if(param1)
         {
            this.§62§.x = -param1.pivotX - this.§4!0§.x / §^9§.§5T§;
            this.§62§.y = -param1.pivotY - this.§4!0§.y / §^9§.§5T§;
         }
         else
         {
            this.§62§.x = -this.§62§.width / 2;
            this.§62§.y = -this.§62§.height / 2;
         }
         this.§62§.scaleX = _loc3_;
         this.§62§.scaleY = _loc3_;
         this.§?!C§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§9U§(param1);
         if(this.native)
         {
            this.§@=§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§"&§(param1);
            this.§#$§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§8L§(param1,param2);
            }
         }
      }
      
      public function §"&§(param1:Number) : void
      {
         if(this.§;;§ > 0)
         {
            this.§;;§ -= param1;
            if(this.§;;§ <= 0)
            {
               this.§4c§();
            }
         }
         else if(this.§5#§ <= 0 && Math.random() * §4f§ < param1 && this.§<j§.mSlingShotState)
         {
            this.§+!!§();
         }
      }
      
      public function §4c§() : void
      {
         this.§;;§ = 0;
         this.§4!>§(this.§%!-§.getFrame(0));
      }
      
      public function §+!!§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§;;§ = §"!B§;
         this.§4!>§(this.§%!-§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §#$§(param1:Number) : void
      {
         if(this.§5#§ > 0)
         {
            this.§5#§ -= param1;
            if(this.§5#§ <= 0)
            {
               this.§?-§();
            }
         }
         else if(this.§;;§ <= 0 && Math.random() * §'!2§ < param1)
         {
            this.§9<§();
         }
      }
      
      public function §?-§() : void
      {
         this.§5#§ = 0;
         this.§4!>§(this.§%!-§.getFrame(0));
      }
      
      public function §9<§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§5#§ > 0)
         {
            this.§?-§();
         }
         if(this.§;;§ > 0)
         {
            this.§4c§();
         }
         if(param1 < 0)
         {
            param1 = §4&§.§]m§;
         }
         this.§5#§ = §,d§;
         this.§4!>§(this.§%!-§.getSubAnimation("yell").getFrame(0));
         if(this.§[!%§ || this.native || param2)
         {
            §`Q§.§+!0§(param1,this.§?!H§);
         }
         else
         {
            §`Q§.§+!0§(param1,this.§?!H§,§1!5§);
         }
      }
      
      public function §8L§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§@=§ > 0)
         {
            this.§@=§ -= param1;
            if(this.§@=§ <= 0)
            {
               ++this.§!!B§;
               this.§8!5§ *= 0.4;
               if(!this.§[!%§ && this.§!!B§ < 2)
               {
                  if(this.§!!B§ > 1 && this.§8!5§ < -1)
                  {
                     this.§8!5§ = -1;
                  }
                  this.§`b§ = this.§8!5§;
                  this.§@=§ = §!'§;
                  this.§@=§ *= Math.abs(this.§`b§) / 2;
                  this.§>M§ = this.§@=§;
                  this.§4!5§ = 0;
                  this.§;A§ = 0;
               }
               else if(!this.§[!%§ && param2)
               {
                  this.§8!J§(2.25);
               }
               else
               {
                  this.§@=§ = 0;
                  this.§=!§ = 0;
                  this.§4!5§ = 0;
                  this.§8!5§ = 0;
               }
            }
            else
            {
               if(this.§@=§ >= this.§>M§ / 2)
               {
                  _loc3_ = (this.§>M§ - this.§@=§) / (this.§>M§ / 2);
                  _loc3_ = §`J§.§8G§(_loc3_);
                  this.§=!§ = _loc3_ * this.§`b§;
               }
               else
               {
                  _loc3_ = (this.§>M§ / 2 - this.§@=§) / (this.§>M§ / 2);
                  _loc3_ = §`J§.§8G§(_loc3_,false);
                  this.§=!§ = this.§`b§ + _loc3_ * -this.§`b§;
               }
               this.§4!5§ = 360 * §`J§.§8G§((this.§>M§ - this.§@=§) / this.§>M§) * this.§;A§;
            }
            this.§?!C§();
         }
         else if(Math.random() * §]!'§ < param1 && !this.§[!%§ && !this.native && !this.§"r§)
         {
            this.§8!J§();
         }
      }
      
      public function §8!J§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§!!B§ = 0;
         this.§@=§ = §!'§;
         this.§=!§ = 0;
         this.§`b§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§8!5§ = this.§`b§;
         this.§@=§ *= Math.abs(this.§`b§) / 3;
         this.§>M§ = this.§@=§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§;A§ = 0;
         }
         else if(this.§@=§ < 350)
         {
            this.§;A§ = 0;
         }
         else
         {
            this.§;A§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§;A§ = Math.random() > 0.5 ? Number(this.§;A§) : Number(0);
         }
      }
      
      public function §?!C§() : void
      {
         this.§;e§.x = this.§3y§ / §^9§.§5T§;
         this.§;e§.y = (this.§6@§ + this.§=!§) / §^9§.§5T§;
         this.§;e§.rotation = this.§4!5§ / 180 * Math.PI;
      }
      
      public function §0-§() : void
      {
         this.§"r§ = true;
         this.§[!%§ = false;
         this.native = false;
         this.§!!B§ = 0;
         this.§4! § = 0;
         this.§@=§ = 0;
         this.§@=§ = 0;
         this.§=!§ = 0;
         this.§4!5§ = 0;
         this.§8!5§ = 0;
         this.§;A§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§3y§) * (param1 - this.§3y§) + (param2 - this.§6@§) * (param2 - this.§6@§));
         if(_loc3_ <= this.§1t§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§3y§ >= param3 && this.§3y§ <= param4 && this.§6@§ >= param1 && this.§6@§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§3y§ != param1 || this.§6@§ != param2)
         {
            _loc3_ = true;
         }
         this.§3y§ = param1;
         this.§6@§ = param2;
         this.§4! § = 100;
         this.§?!C§();
         if(_loc3_)
         {
            this.§<j§.§9,§();
         }
      }
      
      public function §,?§() : §0V§
      {
         return this.§62§;
      }
      
      public function get §=X§() : Number
      {
         return this.§@=§;
      }
      
      public function get §6!4§() : Number
      {
         return this.§4! §;
      }
      
      public function set §6!4§(param1:Number) : void
      {
         this.§4! § = param1;
      }
      
      public function get §^!%§() : Number
      {
         return this.§`!7§;
      }
      
      public function get §0!<§() : Boolean
      {
         return this.§[!%§;
      }
      
      public function get radius() : Number
      {
         return this.§1t§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§;e§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §^!%§(param1:Number) : void
      {
         this.§`!7§ = param1;
      }
      
      public function get §48§() : Number
      {
         return this.§8x§;
      }
      
      public function set §48§(param1:Number) : void
      {
         this.§8x§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§%g§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§%g§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§3y§;
      }
      
      public function get y() : Number
      {
         return this.§6@§;
      }
      
      public function get §="§() : Number
      {
         return this.§!;§;
      }
      
      public function get §,o§() : Number
      {
         return this.§7!E§;
      }
      
      public function §?!F§() : Boolean
      {
         return this.§"r§;
      }
   }
}
