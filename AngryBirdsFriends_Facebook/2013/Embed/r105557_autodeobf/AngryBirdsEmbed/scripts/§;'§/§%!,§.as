package §;'§
{
   import §"X§.Texture;
   import §4n§.§@!4§;
   import §9!#§.§+5§;
   import §9!#§.§5y§;
   import §9!#§.§8U§;
   import §;^§.§ @§;
   import §;^§.Sprite;
   import §=!K§.;
   import §=!K§.§@p§;
   import §?!8§.§&5§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §%!,§
   {
      
      public static const §2K§:String = "ChannelSlingshot";
      
      public static const §5!D§:Number = 900;
      
      public static const §^!§:Number = 200;
      
      public static const §4u§:Number = 200;
      
      public static const §2§:Number = 1500;
      
      public static const §<Y§:Number = 5000;
      
      public static const §,o§:Number = 1000;
      
      public static const §5!?§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var § H§:Number;
      
      protected var §=§:Number;
      
      protected var §;l§:Number;
      
      protected var §%m§:Number;
      
      private var §0<§:§+5§;
      
      protected var §+r§:Number;
      
      protected var §1!2§:Number = 1;
      
      private var §>@§:Sprite;
      
      protected var §44§:§#4§;
      
      private var §"U§:§ @§;
      
      protected var §[&§:§8!;§;
      
      private var §!x§:Number;
      
      private var § f§:Boolean = false;
      
      private var §'9§:Boolean = false;
      
      protected var § !<§:Boolean = false;
      
      private var §2X§:Number;
      
      private var §^+§:Number = 0;
      
      private var §'!2§:Number = 0;
      
      private var §<!,§:Number = 0;
      
      private var §1w§:Number = 1000;
      
      private var §[y§:Number;
      
      private var §71§:Number;
      
      private var §+X§:int;
      
      private var §]!#§:Number = 0;
      
      protected var §<!A§:Number;
      
      protected var §-^§:Number;
      
      private var §2!;§:Number = 1;
      
      private var §-!2§:Number = 0;
      
      private var §0§:b2Vec2;
      
      private var § W§:Number = 1;
      
      public function §%!,§(param1:§8!;§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§[&§ = param1;
         this.§>@§ = param2;
         this.mName = param3;
         this.§0<§ = §5y§.§6!%§(this.mName).§?x§;
         this.§ H§ = param4;
         this.§=§ = param5;
         this.§;l§ = param4;
         this.§%m§ = param5;
         this.§+r§ = 0;
         this.§ f§ = false;
         this.§'9§ = false;
         this.§^+§ = 0;
         this.§3!J§();
         this.§<!A§ = 0;
      }
      
      public function §%!G§() : void
      {
         this.§ f§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§>@§)
         {
            this.§>@§.dispose();
            this.§>@§ = null;
         }
      }
      
      public function §@w§(param1:Number) : void
      {
         if(!this.§'9§ || this.§ f§)
         {
            return;
         }
         if(this.§1!2§ != 0)
         {
            this.§<!,§ = 0;
            this.§]!#§ = 0;
            this.§+r§ = 0;
            this.§71§ = 0;
            this.§1!2§ = 0;
         }
         param1 = Math.min(param1,this.§2X§);
         this.§ H§ += param1 * (this.§[&§.§ H§ - this.§ H§) / this.§2X§;
         this.§=§ += param1 * (this.§[&§.§=§ - this.§=§) / this.§2X§;
         this.§=§ -= param1 / 50 * (this.§2X§ / §5!D§);
         this.§+r§ += param1 * (360 - this.§+r§) / this.§2X§;
         this.§2X§ -= param1;
         if(this.§2X§ <= 0)
         {
            this.§ H§ = this.§[&§.§ H§;
            this.§=§ = this.§[&§.§=§;
            this.§'9§ = false;
            this.§ f§ = true;
            this.§+r§ = 0;
         }
         this.§1!L§();
      }
      
      public function §`,§() : void
      {
         this.§'9§ = true;
         this.§2X§ = §5!D§;
         this.§3§(§+5§.§1<§);
         if(this.§]!#§ != 0)
         {
            this.§=§ += this.§]!#§;
            this.§]!#§ = 0;
         }
      }
      
      public function §<!+§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§ f§ && this.§<!A§ >= 0)
         {
            if(this.§-^§ > this.§[&§.§2I§.§-!>§.§-1§)
            {
               this.§`!%§(this.§[&§.§2I§.§-!>§.§-1§ - this.§-^§);
               this.§<!A§ = -1;
            }
            this.§<!A§ -= param1;
            if(this.§<!A§ <= 0)
            {
               if(this.§<!,§ > 0)
               {
                  this.§<!A§ = this.§<!,§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§-^§))
               {
                  _loc2_ = this.§[&§.§2I§.objects.§`!A§(this.§ H§,this.§-^§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§`!%§(param1 / 100))
                  {
                     this.§<!A§ = -1;
                  }
                  else
                  {
                     this.§<!A§ = 0;
                  }
               }
               else if(!this.§[&§.§2I§.objects.§,,§(_loc2_).§7b§)
               {
                  this.§ !<§ = false;
                  this.§<!A§ = -1;
               }
               else if(this.§[&§.§2I§.objects.§,,§(_loc2_).§@!5§())
               {
                  this.§ !<§ = false;
                  this.§<!A§ = 2000;
               }
               else
               {
                  this.§<!A§ = 500;
               }
            }
         }
      }
      
      public function §`!%§(param1:Number) : Boolean
      {
         this.§=§ += param1;
         this.§-^§ += param1;
         if(this.§-^§ > this.§[&§.§2I§.§-!>§.§-1§)
         {
            param1 = this.§-^§ - this.§[&§.§2I§.§-!>§.§-1§;
            this.§=§ -= param1;
            this.§-^§ -= param1;
            this.§1!L§();
            return true;
         }
         this.§1!L§();
         return false;
      }
      
      public function §3!J§() : void
      {
         var _loc1_:§8U§ = §5y§.§6!%§(this.mName).shape;
         if(_loc1_.§9!6§() == §8U§.§?!A§)
         {
            this.§0§ = _loc1_.§null §()[0];
            this.§!x§ = _loc1_.§<w§;
         }
         else if(_loc1_.§9!6§() == §8U§.§8!N§)
         {
            this.§0§ = new b2Vec2(0,0);
            this.§!x§ = 1.5;
         }
         this.§44§ = this.§[&§.§2I§.§6?§.§]C§(this.mName);
         if(!this.§44§)
         {
            this.§!h§(null);
         }
         else
         {
            this.§!h§(this.§44§.getFrame(0));
         }
      }
      
      public function §!h§(param1:§@p§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§[&§.§">§.textureManager.§4!M§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§"U§ == null)
         {
            this.§"U§ = new § @§(_loc2_);
            this.§>@§.addChild(this.§"U§);
         }
         else
         {
            this.§"U§.texture = _loc2_;
         }
         if(param1)
         {
            this.§"U§.x = -param1.pivotX - this.§0§.x / §?!D§.§@!I§;
            this.§"U§.y = -param1.pivotY - this.§0§.y / §?!D§.§@!I§;
         }
         else
         {
            this.§"U§.x = -this.§"U§.width / 2;
            this.§"U§.y = -this.§"U§.height / 2;
         }
         this.§"U§.scaleX = _loc3_;
         this.§"U§.scaleY = _loc3_;
         this.§1!L§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§<!+§(param1);
         if(this.§'9§)
         {
            this.§<!,§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§7+§(param1);
            this.§^$§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§7?§(param1,param2);
            }
         }
      }
      
      public function §7+§(param1:Number) : void
      {
         if(this.§^+§ > 0)
         {
            this.§^+§ -= param1;
            if(this.§^+§ <= 0)
            {
               this.§>_§();
            }
         }
         else if(this.§'!2§ <= 0 && Math.random() * §2§ < param1 && this.§[&§.mSlingShotState)
         {
            this.§[J§();
         }
      }
      
      public function §>_§() : void
      {
         this.§^+§ = 0;
         this.§!h§(this.§44§.getFrame(0));
      }
      
      public function §[J§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§^+§ = §^!§;
         this.§!h§(this.§44§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §^$§(param1:Number) : void
      {
         if(this.§'!2§ > 0)
         {
            this.§'!2§ -= param1;
            if(this.§'!2§ <= 0)
            {
               this.§<!B§();
            }
         }
         else if(this.§^+§ <= 0 && Math.random() * §<Y§ < param1)
         {
            this.§3§();
         }
      }
      
      public function §<!B§() : void
      {
         this.§'!2§ = 0;
         this.§!h§(this.§44§.getFrame(0));
      }
      
      public function §3§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§'!2§ > 0)
         {
            this.§<!B§();
         }
         if(this.§^+§ > 0)
         {
            this.§>_§();
         }
         if(param1 < 0)
         {
            param1 = §+5§.§+e§;
         }
         this.§'!2§ = §4u§;
         this.§!h§(this.§44§.getSubAnimation("yell").getFrame(0));
         if(this.§ f§ || this.§'9§ || param2)
         {
            §@!4§.§9m§(param1,this.§0<§);
         }
         else
         {
            §@!4§.§9m§(param1,this.§0<§,§2K§);
         }
      }
      
      public function §7?§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§<!,§ > 0)
         {
            this.§<!,§ -= param1;
            if(this.§<!,§ <= 0)
            {
               ++this.§+X§;
               this.§71§ *= 0.4;
               if(!this.§ f§ && this.§+X§ < 2)
               {
                  if(this.§+X§ > 1 && this.§71§ < -1)
                  {
                     this.§71§ = -1;
                  }
                  this.§[y§ = this.§71§;
                  this.§<!,§ = §5!?§;
                  this.§<!,§ *= Math.abs(this.§[y§) / 2;
                  this.§1w§ = this.§<!,§;
                  this.§+r§ = 0;
                  this.§1!2§ = 0;
               }
               else if(!this.§ f§ && param2)
               {
                  this.§]o§(2.25);
               }
               else
               {
                  this.§<!,§ = 0;
                  this.§]!#§ = 0;
                  this.§+r§ = 0;
                  this.§71§ = 0;
               }
            }
            else
            {
               if(this.§<!,§ >= this.§1w§ / 2)
               {
                  _loc3_ = (this.§1w§ - this.§<!,§) / (this.§1w§ / 2);
                  _loc3_ = §&5§.§'&§(_loc3_);
                  this.§]!#§ = _loc3_ * this.§[y§;
               }
               else
               {
                  _loc3_ = (this.§1w§ / 2 - this.§<!,§) / (this.§1w§ / 2);
                  _loc3_ = §&5§.§'&§(_loc3_,false);
                  this.§]!#§ = this.§[y§ + _loc3_ * -this.§[y§;
               }
               this.§+r§ = 360 * §&5§.§'&§((this.§1w§ - this.§<!,§) / this.§1w§) * this.§1!2§;
            }
            this.§1!L§();
         }
         else if(Math.random() * §,o§ < param1 && !this.§ f§ && !this.§'9§ && !this.§ !<§)
         {
            this.§]o§();
         }
      }
      
      public function §]o§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§+X§ = 0;
         this.§<!,§ = §5!?§;
         this.§]!#§ = 0;
         this.§[y§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§71§ = this.§[y§;
         this.§<!,§ *= Math.abs(this.§[y§) / 3;
         this.§1w§ = this.§<!,§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§1!2§ = 0;
         }
         else if(this.§<!,§ < 350)
         {
            this.§1!2§ = 0;
         }
         else
         {
            this.§1!2§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§1!2§ = Math.random() > 0.5 ? Number(this.§1!2§) : Number(0);
         }
      }
      
      public function §1!L§() : void
      {
         this.§>@§.x = this.§ H§ / §?!D§.§@!I§;
         this.§>@§.y = (this.§=§ + this.§]!#§) / §?!D§.§@!I§;
         this.§>@§.rotation = this.§+r§ / 180 * Math.PI;
      }
      
      public function §%T§() : void
      {
         this.§ !<§ = true;
         this.§ f§ = false;
         this.§'9§ = false;
         this.§+X§ = 0;
         this.§<!A§ = 0;
         this.§<!,§ = 0;
         this.§<!,§ = 0;
         this.§]!#§ = 0;
         this.§+r§ = 0;
         this.§71§ = 0;
         this.§1!2§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§ H§) * (param1 - this.§ H§) + (param2 - this.§=§) * (param2 - this.§=§));
         if(_loc3_ <= this.§!x§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§ H§ >= param3 && this.§ H§ <= param4 && this.§=§ >= param1 && this.§=§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§ H§ != param1 || this.§=§ != param2)
         {
            _loc3_ = true;
         }
         this.§ H§ = param1;
         this.§=§ = param2;
         this.§<!A§ = 100;
         this.§1!L§();
         if(_loc3_)
         {
            this.§[&§.§1m§();
         }
      }
      
      public function §[!,§() : § @§
      {
         return this.§"U§;
      }
      
      public function get §#m§() : Number
      {
         return this.§<!,§;
      }
      
      public function get §7g§() : Number
      {
         return this.§<!A§;
      }
      
      public function set §7g§(param1:Number) : void
      {
         this.§<!A§ = param1;
      }
      
      public function get §#v§() : Number
      {
         return this.§2!;§;
      }
      
      public function get §9u§() : Boolean
      {
         return this.§ f§;
      }
      
      public function get radius() : Number
      {
         return this.§!x§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§>@§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §#v§(param1:Number) : void
      {
         this.§2!;§ = param1;
      }
      
      public function get §&x§() : Number
      {
         return this.§-!2§;
      }
      
      public function set §&x§(param1:Number) : void
      {
         this.§-!2§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§ W§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§ W§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§ H§;
      }
      
      public function get y() : Number
      {
         return this.§=§;
      }
      
      public function get §%u§() : Number
      {
         return this.§;l§;
      }
      
      public function get §!T§() : Number
      {
         return this.§%m§;
      }
      
      public function §>!G§() : Boolean
      {
         return this.§ !<§;
      }
   }
}
