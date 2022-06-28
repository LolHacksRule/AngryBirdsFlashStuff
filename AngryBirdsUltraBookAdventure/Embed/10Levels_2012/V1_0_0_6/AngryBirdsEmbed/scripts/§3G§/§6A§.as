package §3G§
{
   import §,!C§.§0v§;
   import §,!C§.§6m§;
   import §,!C§.§implements§;
   import §,_§.§4K§;
   import §,_§.Sprite;
   import §5`§.§%F§;
   import §5`§.§+R§;
   import §7!=§.Texture;
   import §8u§.§0r§;
   import §>K§.§+;§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §6A§
   {
      
      public static const §+Z§:String = "ChannelSlingshot";
      
      public static const §2!,§:Number = 900;
      
      public static const §8g§:Number = 200;
      
      public static const § %§:Number = 200;
      
      public static const §[3§:Number = 1500;
      
      public static const §+e§:Number = 5000;
      
      public static const §-!4§:Number = 1000;
      
      public static const §&e§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §^C§:Number;
      
      protected var §0§:Number;
      
      protected var §?q§:Number;
      
      protected var §#Y§:Number;
      
      private var §`v§:§implements§;
      
      protected var §@!$§:Number;
      
      protected var §'C§:Number = 1;
      
      private var §62§:Sprite;
      
      protected var §-!C§:§+R§;
      
      private var §^j§:§4K§;
      
      protected var §>!?§:§3X§;
      
      private var §`g§:Number;
      
      private var §3!D§:Boolean = false;
      
      private var §[%§:Boolean = false;
      
      protected var §"u§:Boolean = false;
      
      private var §[!6§:Number;
      
      private var § A§:Number = 0;
      
      private var §8!C§:Number = 0;
      
      private var §'!4§:Number = 0;
      
      private var §]z§:Number = 1000;
      
      private var §^k§:Number;
      
      private var §0i§:Number;
      
      private var §<A§:int;
      
      private var §3f§:Number = 0;
      
      protected var §>q§:Number;
      
      protected var §^5§:Number;
      
      private var §&1§:Number = 1;
      
      private var §=m§:Number = 0;
      
      private var §>E§:b2Vec2;
      
      private var §]H§:Number = 1;
      
      public function §6A§(param1:§3X§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§>!?§ = param1;
         this.§62§ = param2;
         this.mName = param3;
         this.§`v§ = §0v§.§&2§(this.mName).§#T§;
         this.§^C§ = param4;
         this.§0§ = param5;
         this.§?q§ = param4;
         this.§#Y§ = param5;
         this.§@!$§ = 0;
         this.§3!D§ = false;
         this.§[%§ = false;
         this.§ A§ = 0;
         this.§#!5§();
         this.§>q§ = 0;
      }
      
      public function §9!H§() : void
      {
         this.§3!D§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§62§)
         {
            this.§62§.dispose();
            this.§62§ = null;
         }
      }
      
      public function §,5§(param1:Number) : void
      {
         if(!this.§[%§ || this.§3!D§)
         {
            return;
         }
         if(this.§'C§ != 0)
         {
            this.§'!4§ = 0;
            this.§3f§ = 0;
            this.§@!$§ = 0;
            this.§0i§ = 0;
            this.§'C§ = 0;
         }
         param1 = Math.min(param1,this.§[!6§);
         this.§^C§ += param1 * (this.§>!?§.§^C§ - this.§^C§) / this.§[!6§;
         this.§0§ += param1 * (this.§>!?§.§0§ - this.§0§) / this.§[!6§;
         this.§0§ -= param1 / 50 * (this.§[!6§ / §2!,§);
         this.§@!$§ += param1 * (360 - this.§@!$§) / this.§[!6§;
         this.§[!6§ -= param1;
         if(this.§[!6§ <= 0)
         {
            this.§^C§ = this.§>!?§.§^C§;
            this.§0§ = this.§>!?§.§0§;
            this.§[%§ = false;
            this.§3!D§ = true;
            this.§@!$§ = 0;
         }
         this.§@!>§();
      }
      
      public function §=U§() : void
      {
         this.§[%§ = true;
         this.§[!6§ = §2!,§;
         this.§&6§(§implements§.§7l§);
         if(this.§3f§ != 0)
         {
            this.§0§ += this.§3f§;
            this.§3f§ = 0;
         }
      }
      
      public function §]o§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§3!D§ && this.§>q§ >= 0)
         {
            if(this.§^5§ > this.§>!?§.§33§.§0>§.§-F§)
            {
               this.§%B§(this.§>!?§.§33§.§0>§.§-F§ - this.§^5§);
               this.§>q§ = -1;
            }
            this.§>q§ -= param1;
            if(this.§>q§ <= 0)
            {
               if(this.§'!4§ > 0)
               {
                  this.§>q§ = this.§'!4§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§^5§))
               {
                  _loc2_ = this.§>!?§.§33§.objects.§@F§(this.§^C§,this.§^5§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§%B§(param1 / 100))
                  {
                     this.§>q§ = -1;
                  }
                  else
                  {
                     this.§>q§ = 0;
                  }
               }
               else if(!this.§>!?§.§33§.objects.§6!"§(_loc2_).§@!+§)
               {
                  this.§"u§ = false;
                  this.§>q§ = -1;
               }
               else if(this.§>!?§.§33§.objects.§6!"§(_loc2_).§-[§())
               {
                  this.§"u§ = false;
                  this.§>q§ = 2000;
               }
               else
               {
                  this.§>q§ = 500;
               }
            }
         }
      }
      
      public function §%B§(param1:Number) : Boolean
      {
         this.§0§ += param1;
         this.§^5§ += param1;
         if(this.§^5§ > this.§>!?§.§33§.§0>§.§-F§)
         {
            param1 = this.§^5§ - this.§>!?§.§33§.§0>§.§-F§;
            this.§0§ -= param1;
            this.§^5§ -= param1;
            this.§@!>§();
            return true;
         }
         this.§@!>§();
         return false;
      }
      
      public function §#!5§() : void
      {
         var _loc1_:§6m§ = §0v§.§&2§(this.mName).shape;
         if(_loc1_.§,W§() == §6m§.§#a§)
         {
            this.§>E§ = _loc1_.§&!-§()[0];
            this.§`g§ = _loc1_.§5;§;
         }
         else if(_loc1_.§,W§() == §6m§.§8-§)
         {
            this.§>E§ = new b2Vec2(0,0);
            this.§`g§ = 1.5;
         }
         this.§-!C§ = this.§>!?§.§33§.§ use§.§,!;§(this.mName);
         if(!this.§-!C§)
         {
            this.§^f§(null);
         }
         else
         {
            this.§^f§(this.§-!C§.getFrame(0));
         }
      }
      
      public function §^f§(param1:§%F§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§>!?§.§6u§.textureManager.§9!?§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§^j§ == null)
         {
            this.§^j§ = new §4K§(_loc2_);
            this.§62§.addChild(this.§^j§);
         }
         else
         {
            this.§^j§.texture = _loc2_;
         }
         if(param1)
         {
            this.§^j§.x = -param1.pivotX - this.§>E§.x / §!E§.§#N§;
            this.§^j§.y = -param1.pivotY - this.§>E§.y / §!E§.§#N§;
         }
         else
         {
            this.§^j§.x = -this.§^j§.width / 2;
            this.§^j§.y = -this.§^j§.height / 2;
         }
         this.§^j§.scaleX = _loc3_;
         this.§^j§.scaleY = _loc3_;
         this.§@!>§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§]o§(param1);
         if(this.§[%§)
         {
            this.§'!4§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§>i§(param1);
            this.§&&§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§0!?§(param1,param2);
            }
         }
      }
      
      public function §>i§(param1:Number) : void
      {
         if(this.§ A§ > 0)
         {
            this.§ A§ -= param1;
            if(this.§ A§ <= 0)
            {
               this.§<;§();
            }
         }
         else if(this.§8!C§ <= 0 && Math.random() * §[3§ < param1 && this.§>!?§.mSlingShotState)
         {
            this.§3!,§();
         }
      }
      
      public function §<;§() : void
      {
         this.§ A§ = 0;
         this.§^f§(this.§-!C§.getFrame(0));
      }
      
      public function §3!,§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§ A§ = §8g§;
         this.§^f§(this.§-!C§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §&&§(param1:Number) : void
      {
         if(this.§8!C§ > 0)
         {
            this.§8!C§ -= param1;
            if(this.§8!C§ <= 0)
            {
               this.§do §();
            }
         }
         else if(this.§ A§ <= 0 && Math.random() * §+e§ < param1)
         {
            this.§&6§();
         }
      }
      
      public function §do §() : void
      {
         this.§8!C§ = 0;
         this.§^f§(this.§-!C§.getFrame(0));
      }
      
      public function §&6§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§8!C§ > 0)
         {
            this.§do §();
         }
         if(this.§ A§ > 0)
         {
            this.§<;§();
         }
         if(param1 < 0)
         {
            param1 = §implements§.§^d§;
         }
         this.§8!C§ = § %§;
         this.§^f§(this.§-!C§.getSubAnimation("yell").getFrame(0));
         if(this.§3!D§ || this.§[%§ || param2)
         {
            §0r§.§>Y§(param1,this.§`v§);
         }
         else
         {
            §0r§.§>Y§(param1,this.§`v§,§+Z§);
         }
      }
      
      public function §0!?§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§'!4§ > 0)
         {
            this.§'!4§ -= param1;
            if(this.§'!4§ <= 0)
            {
               ++this.§<A§;
               this.§0i§ *= 0.4;
               if(!this.§3!D§ && this.§<A§ < 2)
               {
                  if(this.§<A§ > 1 && this.§0i§ < -1)
                  {
                     this.§0i§ = -1;
                  }
                  this.§^k§ = this.§0i§;
                  this.§'!4§ = §&e§;
                  this.§'!4§ *= Math.abs(this.§^k§) / 2;
                  this.§]z§ = this.§'!4§;
                  this.§@!$§ = 0;
                  this.§'C§ = 0;
               }
               else if(!this.§3!D§ && param2)
               {
                  this.§>&§(2.25);
               }
               else
               {
                  this.§'!4§ = 0;
                  this.§3f§ = 0;
                  this.§@!$§ = 0;
                  this.§0i§ = 0;
               }
            }
            else
            {
               if(this.§'!4§ >= this.§]z§ / 2)
               {
                  _loc3_ = (this.§]z§ - this.§'!4§) / (this.§]z§ / 2);
                  _loc3_ = §+;§.§=z§(_loc3_);
                  this.§3f§ = _loc3_ * this.§^k§;
               }
               else
               {
                  _loc3_ = (this.§]z§ / 2 - this.§'!4§) / (this.§]z§ / 2);
                  _loc3_ = §+;§.§=z§(_loc3_,false);
                  this.§3f§ = this.§^k§ + _loc3_ * -this.§^k§;
               }
               this.§@!$§ = 360 * §+;§.§=z§((this.§]z§ - this.§'!4§) / this.§]z§) * this.§'C§;
            }
            this.§@!>§();
         }
         else if(Math.random() * §-!4§ < param1 && !this.§3!D§ && !this.§[%§ && !this.§"u§)
         {
            this.§>&§();
         }
      }
      
      public function §>&§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§<A§ = 0;
         this.§'!4§ = §&e§;
         this.§3f§ = 0;
         this.§^k§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§0i§ = this.§^k§;
         this.§'!4§ *= Math.abs(this.§^k§) / 3;
         this.§]z§ = this.§'!4§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§'C§ = 0;
         }
         else if(this.§'!4§ < 350)
         {
            this.§'C§ = 0;
         }
         else
         {
            this.§'C§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§'C§ = Math.random() > 0.5 ? Number(this.§'C§) : Number(0);
         }
      }
      
      public function §@!>§() : void
      {
         this.§62§.x = this.§^C§ / §!E§.§#N§;
         this.§62§.y = (this.§0§ + this.§3f§) / §!E§.§#N§;
         this.§62§.rotation = this.§@!$§ / 180 * Math.PI;
      }
      
      public function §34§() : void
      {
         this.§"u§ = true;
         this.§3!D§ = false;
         this.§[%§ = false;
         this.§<A§ = 0;
         this.§>q§ = 0;
         this.§'!4§ = 0;
         this.§'!4§ = 0;
         this.§3f§ = 0;
         this.§@!$§ = 0;
         this.§0i§ = 0;
         this.§'C§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§^C§) * (param1 - this.§^C§) + (param2 - this.§0§) * (param2 - this.§0§));
         if(_loc3_ <= this.§`g§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§^C§ >= param3 && this.§^C§ <= param4 && this.§0§ >= param1 && this.§0§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§^C§ != param1 || this.§0§ != param2)
         {
            _loc3_ = true;
         }
         this.§^C§ = param1;
         this.§0§ = param2;
         this.§>q§ = 100;
         this.§@!>§();
         if(_loc3_)
         {
            this.§>!?§.§@-§();
         }
      }
      
      public function §!`§() : §4K§
      {
         return this.§^j§;
      }
      
      public function get §!!!§() : Number
      {
         return this.§'!4§;
      }
      
      public function get §51§() : Number
      {
         return this.§>q§;
      }
      
      public function set §51§(param1:Number) : void
      {
         this.§>q§ = param1;
      }
      
      public function get §0!=§() : Number
      {
         return this.§&1§;
      }
      
      public function get §4!%§() : Boolean
      {
         return this.§3!D§;
      }
      
      public function get radius() : Number
      {
         return this.§`g§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§62§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §0!=§(param1:Number) : void
      {
         this.§&1§ = param1;
      }
      
      public function get §"@§() : Number
      {
         return this.§=m§;
      }
      
      public function set §"@§(param1:Number) : void
      {
         this.§=m§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§]H§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§]H§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§^C§;
      }
      
      public function get y() : Number
      {
         return this.§0§;
      }
      
      public function get §]O§() : Number
      {
         return this.§?q§;
      }
      
      public function get §@'§() : Number
      {
         return this.§#Y§;
      }
   }
}
