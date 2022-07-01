package §1!v§
{
   import § ""§.§%,§;
   import §+L§.b2Vec2;
   import §1!Y§.§8C§;
   import §1!Y§.Sprite;
   import §8q§.§!g§;
   import §8q§.§+P§;
   import §8q§.§@§;
   import §;X§.§1!R§;
   import §[_§.§'!N§;
   import §[_§.§+!P§;
   import §^i§.Texture;
   
   public class §!,§
   {
      
      public static const §;"0§:String = "ChannelSlingshot";
      
      public static const §!!X§:Number = 900;
      
      public static const §+Q§:Number = 200;
      
      public static const §7a§:Number = 200;
      
      public static const §"!8§:Number = 1500;
      
      public static const §'!Z§:Number = 5000;
      
      public static const §!d§:Number = 1000;
      
      public static const §=A§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var mX:Number;
      
      protected var mY:Number;
      
      protected var §3!k§:Number;
      
      protected var §46§:Number;
      
      private var §1!I§:§+P§;
      
      protected var §-U§:Number;
      
      protected var §"6§:Number = 1;
      
      private var § "5§:Sprite;
      
      protected var §5O§:§+!P§;
      
      private var §&!T§:§8C§;
      
      protected var §&!N§:§>"!§;
      
      private var §0J§:Number;
      
      private var §"!#§:Boolean = false;
      
      private var §3'§:Boolean = false;
      
      protected var §>!=§:Boolean = false;
      
      private var §,V§:Number;
      
      private var §#§:Number = 0;
      
      private var §&Q§:Number = 0;
      
      private var §+l§:Number = 0;
      
      private var §^!h§:Number = 1000;
      
      private var §-&§:Number;
      
      private var §'"#§:Number;
      
      private var §?P§:int;
      
      private var §;"9§:Number = 0;
      
      protected var § j§:Number;
      
      protected var §5I§:Number;
      
      private var §!y§:Number = 1;
      
      private var §""&§:Number = 0;
      
      private var §3N§:b2Vec2;
      
      private var §"!f§:Number = 1;
      
      public function §!,§(param1:§>"!§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§&!N§ = param1;
         this.§ "5§ = param2;
         this.mName = param3;
         this.§1!I§ = §@§.§4"#§(this.mName).§2!_§;
         this.mX = param4;
         this.mY = param5;
         this.§3!k§ = param4;
         this.§46§ = param5;
         this.§-U§ = 0;
         this.§"!#§ = false;
         this.§3'§ = false;
         this.§#§ = 0;
         this.§#"$§();
         this.§ j§ = 0;
      }
      
      public function §7Q§() : void
      {
         this.§"!#§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§ "5§)
         {
            this.§ "5§.dispose();
            this.§ "5§ = null;
         }
      }
      
      public function §-!&§(param1:Number) : void
      {
         if(!this.§3'§ || this.§"!#§)
         {
            return;
         }
         if(this.§"6§ != 0)
         {
            this.§+l§ = 0;
            this.§;"9§ = 0;
            this.§-U§ = 0;
            this.§'"#§ = 0;
            this.§"6§ = 0;
         }
         param1 = Math.min(param1,this.§,V§);
         this.mX += param1 * (this.§&!N§.mX - this.mX) / this.§,V§;
         this.mY += param1 * (this.§&!N§.mY - this.mY) / this.§,V§;
         this.mY -= param1 / 50 * (this.§,V§ / §!!X§);
         this.§-U§ += param1 * (360 - this.§-U§) / this.§,V§;
         this.§,V§ -= param1;
         if(this.§,V§ <= 0)
         {
            this.mX = this.§&!N§.mX;
            this.mY = this.§&!N§.mY;
            this.§3'§ = false;
            this.§"!#§ = true;
            this.§-U§ = 0;
         }
         this.§"!N§();
      }
      
      public function §[!,§() : void
      {
         this.§3'§ = true;
         this.§,V§ = §!!X§;
         this.§+!C§(§+P§.§8;§);
         if(this.§;"9§ != 0)
         {
            this.mY += this.§;"9§;
            this.§;"9§ = 0;
         }
      }
      
      public function §'"&§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§"!#§ && this.§ j§ >= 0)
         {
            if(this.§5I§ > this.§&!N§.§]Z§.borders.mBorderGround_B2)
            {
               this.§#"9§(this.§&!N§.§]Z§.borders.mBorderGround_B2 - this.§5I§);
               this.§ j§ = -1;
            }
            this.§ j§ -= param1;
            if(this.§ j§ <= 0)
            {
               if(this.§+l§ > 0)
               {
                  this.§ j§ = this.§+l§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§5I§))
               {
                  _loc2_ = this.§&!N§.§]Z§.objects.§6",§(this.mX,this.§5I§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§#"9§(param1 / 100))
                  {
                     this.§ j§ = -1;
                  }
                  else
                  {
                     this.§ j§ = 0;
                  }
               }
               else if(!this.§&!N§.§]Z§.objects.getObject(_loc2_).§&k§)
               {
                  this.§>!=§ = false;
                  this.§ j§ = -1;
               }
               else if(this.§&!N§.§]Z§.objects.getObject(_loc2_).§!!Q§())
               {
                  this.§>!=§ = false;
                  this.§ j§ = 2000;
               }
               else
               {
                  this.§ j§ = 500;
               }
            }
         }
      }
      
      public function §#"9§(param1:Number) : Boolean
      {
         this.mY += param1;
         this.§5I§ += param1;
         if(this.§5I§ > this.§&!N§.§]Z§.borders.mBorderGround_B2)
         {
            param1 = this.§5I§ - this.§&!N§.§]Z§.borders.mBorderGround_B2;
            this.mY -= param1;
            this.§5I§ -= param1;
            this.§"!N§();
            return true;
         }
         this.§"!N§();
         return false;
      }
      
      public function §#"$§() : void
      {
         var _loc1_:§!g§ = §@§.§4"#§(this.mName).shape;
         if(_loc1_.§&r§() == §!g§.§&!U§)
         {
            this.§3N§ = _loc1_.§<&§()[0];
            this.§0J§ = _loc1_.§1§;
         }
         else if(_loc1_.§&r§() == §!g§.§<!t§)
         {
            this.§3N§ = new b2Vec2(0,0);
            this.§0J§ = 1.5;
         }
         this.§5O§ = this.§&!N§.§]Z§.§%w§.§5m§(this.mName);
         if(!this.§5O§)
         {
            this.§6!b§(null);
         }
         else
         {
            this.§6!b§(this.§5O§.getFrame(0));
         }
      }
      
      public function §6!b§(param1:§'!N§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§&!N§.§'4§.§while§.§?!4§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§&!T§ == null)
         {
            this.§&!T§ = new §8C§(_loc2_);
            this.§ "5§.addChild(this.§&!T§);
         }
         else
         {
            this.§&!T§.texture = _loc2_;
         }
         if(param1)
         {
            this.§&!T§.x = -param1.pivotX - this.§3N§.x / §@%§.§?k§;
            this.§&!T§.y = -param1.pivotY - this.§3N§.y / §@%§.§?k§;
         }
         else
         {
            this.§&!T§.x = -this.§&!T§.width / 2;
            this.§&!T§.y = -this.§&!T§.height / 2;
         }
         this.§&!T§.scaleX = _loc3_;
         this.§&!T§.scaleY = _loc3_;
         this.§"!N§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§'"&§(param1);
         if(this.§3'§)
         {
            this.§+l§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§0!v§(param1);
            this.§"0§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§6m§(param1,param2);
            }
         }
      }
      
      public function §0!v§(param1:Number) : void
      {
         if(this.§#§ > 0)
         {
            this.§#§ -= param1;
            if(this.§#§ <= 0)
            {
               this.§=!§();
            }
         }
         else if(this.§&Q§ <= 0 && Math.random() * §"!8§ < param1 && this.§&!N§.mSlingShotState)
         {
            this.§14§();
         }
      }
      
      public function §=!§() : void
      {
         this.§#§ = 0;
         this.§6!b§(this.§5O§.getFrame(0));
      }
      
      public function §14§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§#§ = §+Q§;
         this.§6!b§(this.§5O§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §"0§(param1:Number) : void
      {
         if(this.§&Q§ > 0)
         {
            this.§&Q§ -= param1;
            if(this.§&Q§ <= 0)
            {
               this.§]!]§();
            }
         }
         else if(this.§#§ <= 0 && Math.random() * §'!Z§ < param1)
         {
            this.§+!C§();
         }
      }
      
      public function §]!]§() : void
      {
         this.§&Q§ = 0;
         this.§6!b§(this.§5O§.getFrame(0));
      }
      
      public function §+!C§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§&Q§ > 0)
         {
            this.§]!]§();
         }
         if(this.§#§ > 0)
         {
            this.§=!§();
         }
         if(param1 < 0)
         {
            param1 = §+P§.§7"+§;
         }
         this.§&Q§ = §7a§;
         this.§6!b§(this.§5O§.getSubAnimation("yell").getFrame(0));
         if(this.§"!#§ || this.§3'§ || param2)
         {
            §%,§.§8b§(param1,this.§1!I§);
         }
         else
         {
            §%,§.§8b§(param1,this.§1!I§,§;"0§);
         }
      }
      
      public function §6m§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§+l§ > 0)
         {
            this.§+l§ -= param1;
            if(this.§+l§ <= 0)
            {
               ++this.§?P§;
               this.§'"#§ *= 0.4;
               if(!this.§"!#§ && this.§?P§ < 2)
               {
                  if(this.§?P§ > 1 && this.§'"#§ < -1)
                  {
                     this.§'"#§ = -1;
                  }
                  this.§-&§ = this.§'"#§;
                  this.§+l§ = §=A§;
                  this.§+l§ *= Math.abs(this.§-&§) / 2;
                  this.§^!h§ = this.§+l§;
                  this.§-U§ = 0;
                  this.§"6§ = 0;
               }
               else if(!this.§"!#§ && param2)
               {
                  this.§!!p§(2.25);
               }
               else
               {
                  this.§+l§ = 0;
                  this.§;"9§ = 0;
                  this.§-U§ = 0;
                  this.§'"#§ = 0;
               }
            }
            else
            {
               if(this.§+l§ >= this.§^!h§ / 2)
               {
                  _loc3_ = (this.§^!h§ - this.§+l§) / (this.§^!h§ / 2);
                  _loc3_ = §1!R§.§+!m§(_loc3_);
                  this.§;"9§ = _loc3_ * this.§-&§;
               }
               else
               {
                  _loc3_ = (this.§^!h§ / 2 - this.§+l§) / (this.§^!h§ / 2);
                  _loc3_ = §1!R§.§+!m§(_loc3_,false);
                  this.§;"9§ = this.§-&§ + _loc3_ * -this.§-&§;
               }
               this.§-U§ = 360 * §1!R§.§+!m§((this.§^!h§ - this.§+l§) / this.§^!h§) * this.§"6§;
            }
            this.§"!N§();
         }
         else if(Math.random() * §!d§ < param1 && !this.§"!#§ && !this.§3'§ && !this.§>!=§)
         {
            this.§!!p§();
         }
      }
      
      public function §!!p§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§?P§ = 0;
         this.§+l§ = §=A§;
         this.§;"9§ = 0;
         this.§-&§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§'"#§ = this.§-&§;
         this.§+l§ *= Math.abs(this.§-&§) / 3;
         this.§^!h§ = this.§+l§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§"6§ = 0;
         }
         else if(this.§+l§ < 350)
         {
            this.§"6§ = 0;
         }
         else
         {
            this.§"6§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§"6§ = Math.random() > 0.5 ? Number(this.§"6§) : Number(0);
         }
      }
      
      public function §"!N§() : void
      {
         this.§ "5§.x = this.mX / §@%§.§?k§;
         this.§ "5§.y = (this.mY + this.§;"9§) / §@%§.§?k§;
         this.§ "5§.rotation = this.§-U§ / 180 * Math.PI;
      }
      
      public function §5!C§() : void
      {
         this.§>!=§ = true;
         this.§"!#§ = false;
         this.§3'§ = false;
         this.§?P§ = 0;
         this.§ j§ = 0;
         this.§+l§ = 0;
         this.§+l§ = 0;
         this.§;"9§ = 0;
         this.§-U§ = 0;
         this.§'"#§ = 0;
         this.§"6§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.mX) * (param1 - this.mX) + (param2 - this.mY) * (param2 - this.mY));
         if(_loc3_ <= this.§0J§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.mX >= param3 && this.mX <= param4 && this.mY >= param1 && this.mY <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.mX != param1 || this.mY != param2)
         {
            _loc3_ = true;
         }
         this.mX = param1;
         this.mY = param2;
         this.§ j§ = 100;
         this.§"!N§();
         if(_loc3_)
         {
            this.§&!N§.§1"0§();
         }
      }
      
      public function §[1§() : §8C§
      {
         return this.§&!T§;
      }
      
      public function get §?!n§() : Number
      {
         return this.§+l§;
      }
      
      public function get §`!z§() : Number
      {
         return this.§ j§;
      }
      
      public function set §`!z§(param1:Number) : void
      {
         this.§ j§ = param1;
      }
      
      public function get §]B§() : Number
      {
         return this.§!y§;
      }
      
      public function get §2!3§() : Boolean
      {
         return this.§"!#§;
      }
      
      public function get radius() : Number
      {
         return this.§0J§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§ "5§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §]B§(param1:Number) : void
      {
         this.§!y§ = param1;
      }
      
      public function get §'!P§() : Number
      {
         return this.§""&§;
      }
      
      public function set §'!P§(param1:Number) : void
      {
         this.§""&§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§"!f§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§"!f§ = param1;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function get §&+§() : Number
      {
         return this.§3!k§;
      }
      
      public function get §6"7§() : Number
      {
         return this.§46§;
      }
   }
}
