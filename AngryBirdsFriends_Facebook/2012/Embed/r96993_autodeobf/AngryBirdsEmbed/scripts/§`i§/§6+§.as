package §`i§
{
   import §#!1§.§4!,§;
   import §3v§.§4,§;
   import §6u§.§!B§;
   import §6u§.§@h§;
   import §<!<§.§2!@§;
   import §<!<§.§6t§;
   import §<!<§.§>'§;
   import §>u§.Texture;
   import §]!6§.§>T§;
   import §]!6§.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §6+§
   {
      
      public static const §=!%§:String = "ChannelSlingshot";
      
      public static const §=N§:Number = 900;
      
      public static const §6!8§:Number = 200;
      
      public static const §0#§:Number = 200;
      
      public static const §?$§:Number = 1500;
      
      public static const §@;§:Number = 5000;
      
      public static const §^i§:Number = 1000;
      
      public static const §4%§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §4F§:Number;
      
      protected var §1v§:Number;
      
      protected var § h§:Number;
      
      protected var §4[§:Number;
      
      private var §5!B§:§>'§;
      
      protected var §;z§:Number;
      
      protected var §6p§:Number = 1;
      
      private var §^!>§:Sprite;
      
      protected var §2!?§:§@h§;
      
      private var §@q§:§>T§;
      
      protected var §6!;§:§while§;
      
      private var §="§:Number;
      
      private var §7!F§:Boolean = false;
      
      private var §<!A§:Boolean = false;
      
      protected var §^F§:Boolean = false;
      
      private var §;!5§:Number;
      
      private var §`!5§:Number = 0;
      
      private var §-!2§:Number = 0;
      
      private var §@x§:Number = 0;
      
      private var §3o§:Number = 1000;
      
      private var §!L§:Number;
      
      private var §`!#§:Number;
      
      private var §0!5§:int;
      
      private var §%$§:Number = 0;
      
      protected var §<!$§:Number;
      
      protected var §">§:Number;
      
      private var §'[§:Number = 1;
      
      private var §!!+§:Number = 0;
      
      private var §?!>§:b2Vec2;
      
      private var §[2§:Number = 1;
      
      public function §6+§(param1:§while§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§6!;§ = param1;
         this.§^!>§ = param2;
         this.mName = param3;
         this.§5!B§ = §6t§.§5,§(this.mName).§]!,§;
         this.§4F§ = param4;
         this.§1v§ = param5;
         this.§ h§ = param4;
         this.§4[§ = param5;
         this.§;z§ = 0;
         this.§7!F§ = false;
         this.§<!A§ = false;
         this.§`!5§ = 0;
         this.§,P§();
         this.§<!$§ = 0;
      }
      
      public function §64§() : void
      {
         this.§7!F§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§^!>§)
         {
            this.§^!>§.dispose();
            this.§^!>§ = null;
         }
      }
      
      public function §`!2§(param1:Number) : void
      {
         if(!this.§<!A§ || this.§7!F§)
         {
            return;
         }
         if(this.§6p§ != 0)
         {
            this.§@x§ = 0;
            this.§%$§ = 0;
            this.§;z§ = 0;
            this.§`!#§ = 0;
            this.§6p§ = 0;
         }
         param1 = Math.min(param1,this.§;!5§);
         this.§4F§ += param1 * (this.§6!;§.§4F§ - this.§4F§) / this.§;!5§;
         this.§1v§ += param1 * (this.§6!;§.§1v§ - this.§1v§) / this.§;!5§;
         this.§1v§ -= param1 / 50 * (this.§;!5§ / §=N§);
         this.§;z§ += param1 * (360 - this.§;z§) / this.§;!5§;
         this.§;!5§ -= param1;
         if(this.§;!5§ <= 0)
         {
            this.§4F§ = this.§6!;§.§4F§;
            this.§1v§ = this.§6!;§.§1v§;
            this.§<!A§ = false;
            this.§7!F§ = true;
            this.§;z§ = 0;
         }
         this.§]a§();
      }
      
      public function §+7§() : void
      {
         this.§<!A§ = true;
         this.§;!5§ = §=N§;
         this.§;3§(§>'§.§return§);
         if(this.§%$§ != 0)
         {
            this.§1v§ += this.§%$§;
            this.§%$§ = 0;
         }
      }
      
      public function §,'§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§7!F§ && this.§<!$§ >= 0)
         {
            if(this.§">§ > this.§6!;§.§"8§.§&x§.§2B§)
            {
               this.§3T§(this.§6!;§.§"8§.§&x§.§2B§ - this.§">§);
               this.§<!$§ = -1;
            }
            this.§<!$§ -= param1;
            if(this.§<!$§ <= 0)
            {
               if(this.§@x§ > 0)
               {
                  this.§<!$§ = this.§@x§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§">§))
               {
                  _loc2_ = this.§6!;§.§"8§.objects.§&o§(this.§4F§,this.§">§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§3T§(param1 / 100))
                  {
                     this.§<!$§ = -1;
                  }
                  else
                  {
                     this.§<!$§ = 0;
                  }
               }
               else if(!this.§6!;§.§"8§.objects.§#!§(_loc2_).§0R§)
               {
                  this.§^F§ = false;
                  this.§<!$§ = -1;
               }
               else if(this.§6!;§.§"8§.objects.§#!§(_loc2_).§&!"§())
               {
                  this.§^F§ = false;
                  this.§<!$§ = 2000;
               }
               else
               {
                  this.§<!$§ = 500;
               }
            }
         }
      }
      
      public function §3T§(param1:Number) : Boolean
      {
         this.§1v§ += param1;
         this.§">§ += param1;
         if(this.§">§ > this.§6!;§.§"8§.§&x§.§2B§)
         {
            param1 = this.§">§ - this.§6!;§.§"8§.§&x§.§2B§;
            this.§1v§ -= param1;
            this.§">§ -= param1;
            this.§]a§();
            return true;
         }
         this.§]a§();
         return false;
      }
      
      public function §,P§() : void
      {
         var _loc1_:§2!@§ = §6t§.§5,§(this.mName).shape;
         if(_loc1_.§3!A§() == §2!@§.§=$§)
         {
            this.§?!>§ = _loc1_.§`_§()[0];
            this.§="§ = _loc1_.§-!6§;
         }
         else if(_loc1_.§3!A§() == §2!@§.§%W§)
         {
            this.§?!>§ = new b2Vec2(0,0);
            this.§="§ = 1.5;
         }
         this.§2!?§ = this.§6!;§.§"8§.§9V§.§`Y§(this.mName);
         if(!this.§2!?§)
         {
            this.§`;§(null);
         }
         else
         {
            this.§`;§(this.§2!?§.getFrame(0));
         }
      }
      
      public function §`;§(param1:§!B§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§6!;§.§7A§.textureManager.§9h§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§@q§ == null)
         {
            this.§@q§ = new §>T§(_loc2_);
            this.§^!>§.addChild(this.§@q§);
         }
         else
         {
            this.§@q§.texture = _loc2_;
         }
         if(param1)
         {
            this.§@q§.x = -param1.pivotX - this.§?!>§.x / §2W§.§0;§;
            this.§@q§.y = -param1.pivotY - this.§?!>§.y / §2W§.§0;§;
         }
         else
         {
            this.§@q§.x = -this.§@q§.width / 2;
            this.§@q§.y = -this.§@q§.height / 2;
         }
         this.§@q§.scaleX = _loc3_;
         this.§@q§.scaleY = _loc3_;
         this.§]a§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§,'§(param1);
         if(this.§<!A§)
         {
            this.§@x§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§%w§(param1);
            this.§;C§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§,+§(param1,param2);
            }
         }
      }
      
      public function §%w§(param1:Number) : void
      {
         if(this.§`!5§ > 0)
         {
            this.§`!5§ -= param1;
            if(this.§`!5§ <= 0)
            {
               this.§%`§();
            }
         }
         else if(this.§-!2§ <= 0 && Math.random() * §?$§ < param1 && this.§6!;§.mSlingShotState)
         {
            this.§"n§();
         }
      }
      
      public function §%`§() : void
      {
         this.§`!5§ = 0;
         this.§`;§(this.§2!?§.getFrame(0));
      }
      
      public function §"n§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§`!5§ = §6!8§;
         this.§`;§(this.§2!?§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §;C§(param1:Number) : void
      {
         if(this.§-!2§ > 0)
         {
            this.§-!2§ -= param1;
            if(this.§-!2§ <= 0)
            {
               this.§@!F§();
            }
         }
         else if(this.§`!5§ <= 0 && Math.random() * §@;§ < param1)
         {
            this.§;3§();
         }
      }
      
      public function §@!F§() : void
      {
         this.§-!2§ = 0;
         this.§`;§(this.§2!?§.getFrame(0));
      }
      
      public function §;3§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§-!2§ > 0)
         {
            this.§@!F§();
         }
         if(this.§`!5§ > 0)
         {
            this.§%`§();
         }
         if(param1 < 0)
         {
            param1 = §>'§.§^!E§;
         }
         this.§-!2§ = §0#§;
         this.§`;§(this.§2!?§.getSubAnimation("yell").getFrame(0));
         if(this.§7!F§ || this.§<!A§ || param2)
         {
            §4!,§.§%]§(param1,this.§5!B§);
         }
         else
         {
            §4!,§.§%]§(param1,this.§5!B§,§=!%§);
         }
      }
      
      public function §,+§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§@x§ > 0)
         {
            this.§@x§ -= param1;
            if(this.§@x§ <= 0)
            {
               ++this.§0!5§;
               this.§`!#§ *= 0.4;
               if(!this.§7!F§ && this.§0!5§ < 2)
               {
                  if(this.§0!5§ > 1 && this.§`!#§ < -1)
                  {
                     this.§`!#§ = -1;
                  }
                  this.§!L§ = this.§`!#§;
                  this.§@x§ = §4%§;
                  this.§@x§ *= Math.abs(this.§!L§) / 2;
                  this.§3o§ = this.§@x§;
                  this.§;z§ = 0;
                  this.§6p§ = 0;
               }
               else if(!this.§7!F§ && param2)
               {
                  this.§@U§(2.25);
               }
               else
               {
                  this.§@x§ = 0;
                  this.§%$§ = 0;
                  this.§;z§ = 0;
                  this.§`!#§ = 0;
               }
            }
            else
            {
               if(this.§@x§ >= this.§3o§ / 2)
               {
                  _loc3_ = (this.§3o§ - this.§@x§) / (this.§3o§ / 2);
                  _loc3_ = §4,§.§^S§(_loc3_);
                  this.§%$§ = _loc3_ * this.§!L§;
               }
               else
               {
                  _loc3_ = (this.§3o§ / 2 - this.§@x§) / (this.§3o§ / 2);
                  _loc3_ = §4,§.§^S§(_loc3_,false);
                  this.§%$§ = this.§!L§ + _loc3_ * -this.§!L§;
               }
               this.§;z§ = 360 * §4,§.§^S§((this.§3o§ - this.§@x§) / this.§3o§) * this.§6p§;
            }
            this.§]a§();
         }
         else if(Math.random() * §^i§ < param1 && !this.§7!F§ && !this.§<!A§ && !this.§^F§)
         {
            this.§@U§();
         }
      }
      
      public function §@U§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§0!5§ = 0;
         this.§@x§ = §4%§;
         this.§%$§ = 0;
         this.§!L§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§`!#§ = this.§!L§;
         this.§@x§ *= Math.abs(this.§!L§) / 3;
         this.§3o§ = this.§@x§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§6p§ = 0;
         }
         else if(this.§@x§ < 350)
         {
            this.§6p§ = 0;
         }
         else
         {
            this.§6p§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§6p§ = Math.random() > 0.5 ? Number(this.§6p§) : Number(0);
         }
      }
      
      public function §]a§() : void
      {
         this.§^!>§.x = this.§4F§ / §2W§.§0;§;
         this.§^!>§.y = (this.§1v§ + this.§%$§) / §2W§.§0;§;
         this.§^!>§.rotation = this.§;z§ / 180 * Math.PI;
      }
      
      public function §6b§() : void
      {
         this.§^F§ = true;
         this.§7!F§ = false;
         this.§<!A§ = false;
         this.§0!5§ = 0;
         this.§<!$§ = 0;
         this.§@x§ = 0;
         this.§@x§ = 0;
         this.§%$§ = 0;
         this.§;z§ = 0;
         this.§`!#§ = 0;
         this.§6p§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§4F§) * (param1 - this.§4F§) + (param2 - this.§1v§) * (param2 - this.§1v§));
         if(_loc3_ <= this.§="§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§4F§ >= param3 && this.§4F§ <= param4 && this.§1v§ >= param1 && this.§1v§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§4F§ != param1 || this.§1v§ != param2)
         {
            _loc3_ = true;
         }
         this.§4F§ = param1;
         this.§1v§ = param2;
         this.§<!$§ = 100;
         this.§]a§();
         if(_loc3_)
         {
            this.§6!;§.§=!D§();
         }
      }
      
      public function §^q§() : §>T§
      {
         return this.§@q§;
      }
      
      public function get §<O§() : Number
      {
         return this.§@x§;
      }
      
      public function get §1&§() : Number
      {
         return this.§<!$§;
      }
      
      public function set §1&§(param1:Number) : void
      {
         this.§<!$§ = param1;
      }
      
      public function get §3#§() : Number
      {
         return this.§'[§;
      }
      
      public function get §+P§() : Boolean
      {
         return this.§7!F§;
      }
      
      public function get radius() : Number
      {
         return this.§="§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§^!>§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §3#§(param1:Number) : void
      {
         this.§'[§ = param1;
      }
      
      public function get §&?§() : Number
      {
         return this.§!!+§;
      }
      
      public function set §&?§(param1:Number) : void
      {
         this.§!!+§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§[2§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§[2§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§4F§;
      }
      
      public function get y() : Number
      {
         return this.§1v§;
      }
      
      public function get §>+§() : Number
      {
         return this.§ h§;
      }
      
      public function get §4`§() : Number
      {
         return this.§4[§;
      }
   }
}
