package §@!b§
{
   import §!!e§.§5!%§;
   import §!!e§.§<!S§;
   import §!!e§.§]!S§;
   import §!R§.b2Vec2;
   import §&[§.§'!$§;
   import §&[§.§,!"§;
   import §2!g§.§<7§;
   import §2!g§.Sprite;
   import §5!G§.§6!Y§;
   import §@j§.Texture;
   import §`!W§.§=,§;
   
   public class §^j§
   {
      
      public static const §36§:String = "ChannelSlingshot";
      
      public static const §08§:Number = 900;
      
      public static const §?!`§:Number = 200;
      
      public static const §?A§:Number = 200;
      
      public static const §,w§:Number = 1500;
      
      public static const §1Y§:Number = 5000;
      
      public static const §0!n§:Number = 1000;
      
      public static const §]!I§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §;b§:Number;
      
      protected var §[!5§:Number;
      
      protected var §1!4§:Number;
      
      protected var §]?§:Number;
      
      private var §@H§:§]!S§;
      
      protected var §^!$§:Number;
      
      protected var §56§:Number = 1;
      
      private var §[8§:Sprite;
      
      protected var §2!6§:§'!$§;
      
      private var §76§:§<7§;
      
      protected var §-!I§:§%!'§;
      
      private var §[_§:Number;
      
      private var §80§:Boolean = false;
      
      private var §'d§:Boolean = false;
      
      protected var §5x§:Boolean = false;
      
      private var §?n§:Number;
      
      private var §[! §:Number = 0;
      
      private var §;!%§:Number = 0;
      
      private var §@!a§:Number = 0;
      
      private var § !R§:Number = 1000;
      
      private var §#!T§:Number;
      
      private var § !X§:Number;
      
      private var §3!N§:int;
      
      private var §=!=§:Number = 0;
      
      protected var §;!R§:Number;
      
      protected var §&!j§:Number;
      
      private var §6z§:Number = 1;
      
      private var §<!Y§:Number = 0;
      
      private var §7+§:b2Vec2;
      
      private var §&!U§:Number = 1;
      
      public function §^j§(param1:§%!'§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§-!I§ = param1;
         this.§[8§ = param2;
         this.mName = param3;
         this.§@H§ = §<!S§.§<!l§(this.mName).§1!h§;
         this.§;b§ = param4;
         this.§[!5§ = param5;
         this.§1!4§ = param4;
         this.§]?§ = param5;
         this.§^!$§ = 0;
         this.§80§ = false;
         this.§'d§ = false;
         this.§[! § = 0;
         this.§>q§();
         this.§;!R§ = 0;
      }
      
      public function §#!Y§() : void
      {
         this.§80§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§[8§)
         {
            this.§[8§.dispose();
            this.§[8§ = null;
         }
      }
      
      public function §&`§(param1:Number) : void
      {
         if(!this.§'d§ || this.§80§)
         {
            return;
         }
         if(this.§56§ != 0)
         {
            this.§@!a§ = 0;
            this.§=!=§ = 0;
            this.§^!$§ = 0;
            this.§ !X§ = 0;
            this.§56§ = 0;
         }
         param1 = Math.min(param1,this.§?n§);
         this.§;b§ += param1 * (this.§-!I§.§;b§ - this.§;b§) / this.§?n§;
         this.§[!5§ += param1 * (this.§-!I§.§[!5§ - this.§[!5§) / this.§?n§;
         this.§[!5§ -= param1 / 50 * (this.§?n§ / §08§);
         this.§^!$§ += param1 * (360 - this.§^!$§) / this.§?n§;
         this.§?n§ -= param1;
         if(this.§?n§ <= 0)
         {
            this.§;b§ = this.§-!I§.§;b§;
            this.§[!5§ = this.§-!I§.§[!5§;
            this.§'d§ = false;
            this.§80§ = true;
            this.§^!$§ = 0;
         }
         this.§-!+§();
      }
      
      public function §?D§() : void
      {
         this.§'d§ = true;
         this.§?n§ = §08§;
         this.§;?§(§]!S§.§+![§);
         if(this.§=!=§ != 0)
         {
            this.§[!5§ += this.§=!=§;
            this.§=!=§ = 0;
         }
      }
      
      public function §0q§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§80§ && this.§;!R§ >= 0)
         {
            if(this.§&!j§ > this.§-!I§.mLevelMain.§5H§.§4R§)
            {
               this.§+'§(this.§-!I§.mLevelMain.§5H§.§4R§ - this.§&!j§);
               this.§;!R§ = -1;
            }
            this.§;!R§ -= param1;
            if(this.§;!R§ <= 0)
            {
               if(this.§@!a§ > 0)
               {
                  this.§;!R§ = this.§@!a§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§&!j§))
               {
                  _loc2_ = this.§-!I§.mLevelMain.objects.§;d§(this.§;b§,this.§&!j§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§+'§(param1 / 100))
                  {
                     this.§;!R§ = -1;
                  }
                  else
                  {
                     this.§;!R§ = 0;
                  }
               }
               else if(!this.§-!I§.mLevelMain.objects.§'r§(_loc2_).§?Y§)
               {
                  this.§5x§ = false;
                  this.§;!R§ = -1;
               }
               else if(this.§-!I§.mLevelMain.objects.§'r§(_loc2_).§`=§())
               {
                  this.§5x§ = false;
                  this.§;!R§ = 2000;
               }
               else
               {
                  this.§;!R§ = 500;
               }
            }
         }
      }
      
      public function §+'§(param1:Number) : Boolean
      {
         this.§[!5§ += param1;
         this.§&!j§ += param1;
         if(this.§&!j§ > this.§-!I§.mLevelMain.§5H§.§4R§)
         {
            param1 = this.§&!j§ - this.§-!I§.mLevelMain.§5H§.§4R§;
            this.§[!5§ -= param1;
            this.§&!j§ -= param1;
            this.§-!+§();
            return true;
         }
         this.§-!+§();
         return false;
      }
      
      public function §>q§() : void
      {
         var _loc1_:§5!%§ = §<!S§.§<!l§(this.mName).shape;
         if(_loc1_.§;!&§() == §5!%§.§6!X§)
         {
            this.§7+§ = _loc1_.§3!k§()[0];
            this.§[_§ = _loc1_.§0F§;
         }
         else if(_loc1_.§;!&§() == §5!%§.§;!8§)
         {
            this.§7+§ = new b2Vec2(0,0);
            this.§[_§ = 1.5;
         }
         this.§2!6§ = this.§-!I§.mLevelMain.animationManager.getAnimation(this.mName);
         if(!this.§2!6§)
         {
            this.§7B§(null);
         }
         else
         {
            this.§7B§(this.§2!6§.getFrame(0));
         }
      }
      
      public function §7B§(param1:§,!"§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§-!I§.§'!^§.textureManager.§3!T§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§76§ == null)
         {
            this.§76§ = new §<7§(_loc2_);
            this.§[8§.addChild(this.§76§);
         }
         else
         {
            this.§76§.texture = _loc2_;
         }
         if(param1)
         {
            this.§76§.x = -param1.pivotX - this.§7+§.x / §@!k§.§2!J§;
            this.§76§.y = -param1.pivotY - this.§7+§.y / §@!k§.§2!J§;
         }
         else
         {
            this.§76§.x = -this.§76§.width / 2;
            this.§76§.y = -this.§76§.height / 2;
         }
         this.§76§.scaleX = _loc3_;
         this.§76§.scaleY = _loc3_;
         this.§-!+§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§0q§(param1);
         if(this.§'d§)
         {
            this.§@!a§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§"K§(param1);
            this.§]>§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§,A§(param1,param2);
            }
         }
      }
      
      public function §"K§(param1:Number) : void
      {
         if(this.§[! § > 0)
         {
            this.§[! § -= param1;
            if(this.§[! § <= 0)
            {
               this.§3!G§();
            }
         }
         else if(this.§;!%§ <= 0 && Math.random() * §,w§ < param1 && this.§-!I§.mSlingShotState)
         {
            this.§"=§();
         }
      }
      
      public function §3!G§() : void
      {
         this.§[! § = 0;
         this.§7B§(this.§2!6§.getFrame(0));
      }
      
      public function §"=§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§[! § = §?!`§;
         this.§7B§(this.§2!6§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §]>§(param1:Number) : void
      {
         if(this.§;!%§ > 0)
         {
            this.§;!%§ -= param1;
            if(this.§;!%§ <= 0)
            {
               this.§3!>§();
            }
         }
         else if(this.§[! § <= 0 && Math.random() * §1Y§ < param1)
         {
            this.§;?§();
         }
      }
      
      public function §3!>§() : void
      {
         this.§;!%§ = 0;
         this.§7B§(this.§2!6§.getFrame(0));
      }
      
      public function §;?§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§;!%§ > 0)
         {
            this.§3!>§();
         }
         if(this.§[! § > 0)
         {
            this.§3!G§();
         }
         if(param1 < 0)
         {
            param1 = §]!S§.§5s§;
         }
         this.§;!%§ = §?A§;
         this.§7B§(this.§2!6§.getSubAnimation("yell").getFrame(0));
         if(this.§80§ || this.§'d§ || param2)
         {
            §6!Y§.§ !n§(param1,this.§@H§);
         }
         else
         {
            §6!Y§.§ !n§(param1,this.§@H§,§36§);
         }
      }
      
      public function §,A§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§@!a§ > 0)
         {
            this.§@!a§ -= param1;
            if(this.§@!a§ <= 0)
            {
               ++this.§3!N§;
               this.§ !X§ *= 0.4;
               if(!this.§80§ && this.§3!N§ < 2)
               {
                  if(this.§3!N§ > 1 && this.§ !X§ < -1)
                  {
                     this.§ !X§ = -1;
                  }
                  this.§#!T§ = this.§ !X§;
                  this.§@!a§ = §]!I§;
                  this.§@!a§ *= Math.abs(this.§#!T§) / 2;
                  this.§ !R§ = this.§@!a§;
                  this.§^!$§ = 0;
                  this.§56§ = 0;
               }
               else if(!this.§80§ && param2)
               {
                  this.§`w§(2.25);
               }
               else
               {
                  this.§@!a§ = 0;
                  this.§=!=§ = 0;
                  this.§^!$§ = 0;
                  this.§ !X§ = 0;
               }
            }
            else
            {
               if(this.§@!a§ >= this.§ !R§ / 2)
               {
                  _loc3_ = (this.§ !R§ - this.§@!a§) / (this.§ !R§ / 2);
                  _loc3_ = §=,§.§!!6§(_loc3_);
                  this.§=!=§ = _loc3_ * this.§#!T§;
               }
               else
               {
                  _loc3_ = (this.§ !R§ / 2 - this.§@!a§) / (this.§ !R§ / 2);
                  _loc3_ = §=,§.§!!6§(_loc3_,false);
                  this.§=!=§ = this.§#!T§ + _loc3_ * -this.§#!T§;
               }
               this.§^!$§ = 360 * §=,§.§!!6§((this.§ !R§ - this.§@!a§) / this.§ !R§) * this.§56§;
            }
            this.§-!+§();
         }
         else if(Math.random() * §0!n§ < param1 && !this.§80§ && !this.§'d§ && !this.§5x§)
         {
            this.§`w§();
         }
      }
      
      public function §`w§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§3!N§ = 0;
         this.§@!a§ = §]!I§;
         this.§=!=§ = 0;
         this.§#!T§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§ !X§ = this.§#!T§;
         this.§@!a§ *= Math.abs(this.§#!T§) / 3;
         this.§ !R§ = this.§@!a§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§56§ = 0;
         }
         else if(this.§@!a§ < 350)
         {
            this.§56§ = 0;
         }
         else
         {
            this.§56§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§56§ = Math.random() > 0.5 ? Number(this.§56§) : Number(0);
         }
      }
      
      public function §-!+§() : void
      {
         this.§[8§.x = this.§;b§ / §@!k§.§2!J§;
         this.§[8§.y = (this.§[!5§ + this.§=!=§) / §@!k§.§2!J§;
         this.§[8§.rotation = this.§^!$§ / 180 * Math.PI;
      }
      
      public function §9[§() : void
      {
         this.§5x§ = true;
         this.§80§ = false;
         this.§'d§ = false;
         this.§3!N§ = 0;
         this.§;!R§ = 0;
         this.§@!a§ = 0;
         this.§@!a§ = 0;
         this.§=!=§ = 0;
         this.§^!$§ = 0;
         this.§ !X§ = 0;
         this.§56§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§;b§) * (param1 - this.§;b§) + (param2 - this.§[!5§) * (param2 - this.§[!5§));
         if(_loc3_ <= this.§[_§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§;b§ >= param3 && this.§;b§ <= param4 && this.§[!5§ >= param1 && this.§[!5§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§;b§ != param1 || this.§[!5§ != param2)
         {
            _loc3_ = true;
         }
         this.§;b§ = param1;
         this.§[!5§ = param2;
         this.§;!R§ = 100;
         this.§-!+§();
         if(_loc3_)
         {
            this.§-!I§.§0!#§();
         }
      }
      
      public function §#!Z§() : §<7§
      {
         return this.§76§;
      }
      
      public function get §3X§() : Number
      {
         return this.§@!a§;
      }
      
      public function get §,!8§() : Number
      {
         return this.§;!R§;
      }
      
      public function set §,!8§(param1:Number) : void
      {
         this.§;!R§ = param1;
      }
      
      public function get §6x§() : Number
      {
         return this.§6z§;
      }
      
      public function get §4,§() : Boolean
      {
         return this.§80§;
      }
      
      public function get radius() : Number
      {
         return this.§[_§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§[8§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §6x§(param1:Number) : void
      {
         this.§6z§ = param1;
      }
      
      public function get §+O§() : Number
      {
         return this.§<!Y§;
      }
      
      public function set §+O§(param1:Number) : void
      {
         this.§<!Y§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§&!U§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§&!U§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§;b§;
      }
      
      public function get y() : Number
      {
         return this.§[!5§;
      }
      
      public function get § G§() : Number
      {
         return this.§1!4§;
      }
      
      public function get §`!`§() : Number
      {
         return this.§]?§;
      }
   }
}
