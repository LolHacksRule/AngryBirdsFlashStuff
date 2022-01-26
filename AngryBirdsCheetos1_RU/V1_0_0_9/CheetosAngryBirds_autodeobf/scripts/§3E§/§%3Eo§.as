package §3E§
{
   import §#!P§.§2!W§;
   import §#!`§.Texture;
   import §-!6§.§%=§;
   import §7u§.§&!C§;
   import §7u§.Sprite;
   import §9!%§.§0!B§;
   import §9!%§.§<!L§;
   import §9!%§.§=A§;
   import §;U§.b2Vec2;
   import §`!B§.§2j§;
   import §`!B§.§4!I§;
   
   public class §>o§
   {
      
      public static const §?!8§:String = "ChannelSlingshot";
      
      public static const §%!^§:Number = 900;
      
      public static const §^_§:Number = 200;
      
      public static const §2I§:Number = 200;
      
      public static const §2M§:Number = 1500;
      
      public static const §2=§:Number = 5000;
      
      public static const §&!Q§:Number = 1000;
      
      public static const §%!0§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §,G§:Number;
      
      protected var §-+§:Number;
      
      protected var §1`§:Number;
      
      protected var §9"§:Number;
      
      private var §'h§:§=A§;
      
      protected var §<n§:Number;
      
      protected var §#!1§:Number = 1;
      
      private var §3!F§:Sprite;
      
      protected var §@q§:§2j§;
      
      private var §#!+§:§&!C§;
      
      protected var §5!Z§:§]Y§;
      
      private var §7o§:Number;
      
      private var §'%§:Boolean = false;
      
      private var § !<§:Boolean = false;
      
      protected var §>]§:Boolean = false;
      
      private var §6!Z§:Number;
      
      private var §7J§:Number = 0;
      
      private var §-!Y§:Number = 0;
      
      private var §=C§:Number = 0;
      
      private var §`!J§:Number = 1000;
      
      private var §5T§:Number;
      
      private var §03§:Number;
      
      private var §0!a§:int;
      
      private var §>!_§:Number = 0;
      
      protected var §"&§:Number;
      
      protected var §?#§:Number;
      
      private var §-!]§:Number = 1;
      
      private var §=6§:Number = 0;
      
      private var §5U§:b2Vec2;
      
      private var §#l§:Number = 1;
      
      public function §>o§(param1:§]Y§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§5!Z§ = param1;
         this.§3!F§ = param2;
         this.mName = param3;
         this.§'h§ = §<!L§.§]z§(this.mName).§#-§;
         this.§,G§ = param4;
         this.§-+§ = param5;
         this.§1`§ = param4;
         this.§9"§ = param5;
         this.§<n§ = 0;
         this.§'%§ = false;
         this.§ !<§ = false;
         this.§7J§ = 0;
         this.§%!C§();
         this.§"&§ = 0;
      }
      
      public function §!u§() : void
      {
         this.§'%§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§3!F§)
         {
            this.§3!F§.dispose();
            this.§3!F§ = null;
         }
      }
      
      public function §<!S§(param1:Number) : void
      {
         if(!this.§ !<§ || this.§'%§)
         {
            return;
         }
         if(this.§#!1§ != 0)
         {
            this.§=C§ = 0;
            this.§>!_§ = 0;
            this.§<n§ = 0;
            this.§03§ = 0;
            this.§#!1§ = 0;
         }
         param1 = Math.min(param1,this.§6!Z§);
         this.§,G§ += param1 * (this.§5!Z§.§,G§ - this.§,G§) / this.§6!Z§;
         this.§-+§ += param1 * (this.§5!Z§.§-+§ - this.§-+§) / this.§6!Z§;
         this.§-+§ -= param1 / 50 * (this.§6!Z§ / §%!^§);
         this.§<n§ += param1 * (360 - this.§<n§) / this.§6!Z§;
         this.§6!Z§ -= param1;
         if(this.§6!Z§ <= 0)
         {
            this.§,G§ = this.§5!Z§.§,G§;
            this.§-+§ = this.§5!Z§.§-+§;
            this.§ !<§ = false;
            this.§'%§ = true;
            this.§<n§ = 0;
         }
         this.§%P§();
      }
      
      public function §+%§() : void
      {
         this.§ !<§ = true;
         this.§6!Z§ = §%!^§;
         this.§"F§(§=A§.§=r§);
         if(this.§>!_§ != 0)
         {
            this.§-+§ += this.§>!_§;
            this.§>!_§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§'%§ && this.§"&§ >= 0)
         {
            if(this.§?#§ > this.§5!Z§.§]v§.§[2§.§@I§)
            {
               this.applyGravity(this.§5!Z§.§]v§.§[2§.§@I§ - this.§?#§);
               this.§"&§ = -1;
            }
            this.§"&§ -= param1;
            if(this.§"&§ <= 0)
            {
               if(this.§=C§ > 0)
               {
                  this.§"&§ = this.§=C§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§?#§))
               {
                  _loc2_ = this.§5!Z§.§]v§.objects.§!!%§(this.§,G§,this.§?#§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§"&§ = -1;
                  }
                  else
                  {
                     this.§"&§ = 0;
                  }
               }
               else if(!this.§5!Z§.§]v§.objects.§4!K§(_loc2_).§4!M§)
               {
                  this.§>]§ = false;
                  this.§"&§ = -1;
               }
               else if(this.§5!Z§.§]v§.objects.§4!K§(_loc2_).§@w§())
               {
                  this.§>]§ = false;
                  this.§"&§ = 2000;
               }
               else
               {
                  this.§"&§ = 500;
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§-+§ += param1;
         this.§?#§ += param1;
         if(this.§?#§ > this.§5!Z§.§]v§.§[2§.§@I§)
         {
            param1 = this.§?#§ - this.§5!Z§.§]v§.§[2§.§@I§;
            this.§-+§ -= param1;
            this.§?#§ -= param1;
            this.§%P§();
            return true;
         }
         this.§%P§();
         return false;
      }
      
      public function §%!C§() : void
      {
         var _loc1_:§0!B§ = §<!L§.§]z§(this.mName).shape;
         if(_loc1_.§^9§() == §0!B§.§3$§)
         {
            this.§5U§ = _loc1_.§@!-§()[0];
            this.§7o§ = _loc1_.§5I§;
         }
         else if(_loc1_.§^9§() == §0!B§.§?!>§)
         {
            this.§5U§ = new b2Vec2(0,0);
            this.§7o§ = 1.5;
         }
         this.§@q§ = this.§5!Z§.§]v§.§]q§.§;!!§(this.mName);
         if(!this.§@q§)
         {
            this.§+!_§(null);
         }
         else
         {
            this.§+!_§(this.§@q§.getFrame(0));
         }
      }
      
      public function §+!_§(param1:§4!I§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§5!Z§.§6#§.§59§.§2t§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§#!+§ == null)
         {
            this.§#!+§ = new §&!C§(_loc2_);
            this.§3!F§.addChild(this.§#!+§);
         }
         else
         {
            this.§#!+§.texture = _loc2_;
         }
         if(param1)
         {
            this.§#!+§.x = -param1.pivotX - this.§5U§.x / §6w§.§?!^§;
            this.§#!+§.y = -param1.pivotY - this.§5U§.y / §6w§.§?!^§;
         }
         else
         {
            this.§#!+§.x = -this.§#!+§.width / 2;
            this.§#!+§.y = -this.§#!+§.height / 2;
         }
         this.§#!+§.scaleX = _loc3_;
         this.§#!+§.scaleY = _loc3_;
         this.§%P§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§ !<§)
         {
            this.§=C§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§`!M§(param1);
            this.§!!I§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§["§(param1,param2);
            }
         }
      }
      
      public function §`!M§(param1:Number) : void
      {
         if(this.§7J§ > 0)
         {
            this.§7J§ -= param1;
            if(this.§7J§ <= 0)
            {
               this.§2g§();
            }
         }
         else if(this.§-!Y§ <= 0 && Math.random() * §2M§ < param1 && this.§5!Z§.mSlingShotState)
         {
            this.§0>§();
         }
      }
      
      public function §2g§() : void
      {
         this.§7J§ = 0;
         this.§+!_§(this.§@q§.getFrame(0));
      }
      
      public function §0>§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§7J§ = §^_§;
         this.§+!_§(this.§@q§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §!!I§(param1:Number) : void
      {
         if(this.§-!Y§ > 0)
         {
            this.§-!Y§ -= param1;
            if(this.§-!Y§ <= 0)
            {
               this.§!!R§();
            }
         }
         else if(this.§7J§ <= 0 && Math.random() * §2=§ < param1)
         {
            this.§"F§();
         }
      }
      
      public function §!!R§() : void
      {
         this.§-!Y§ = 0;
         this.§+!_§(this.§@q§.getFrame(0));
      }
      
      public function §"F§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§-!Y§ > 0)
         {
            this.§!!R§();
         }
         if(this.§7J§ > 0)
         {
            this.§2g§();
         }
         if(param1 < 0)
         {
            param1 = §=A§.§%8§;
         }
         this.§-!Y§ = §2I§;
         this.§+!_§(this.§@q§.getSubAnimation("yell").getFrame(0));
         if(this.§'%§ || this.§ !<§ || param2)
         {
            §2!W§.§5!<§(param1,this.§'h§);
         }
         else
         {
            §2!W§.§5!<§(param1,this.§'h§,§?!8§);
         }
      }
      
      public function §["§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§=C§ > 0)
         {
            this.§=C§ -= param1;
            if(this.§=C§ <= 0)
            {
               ++this.§0!a§;
               this.§03§ *= 0.4;
               if(!this.§'%§ && this.§0!a§ < 2)
               {
                  if(this.§0!a§ > 1 && this.§03§ < -1)
                  {
                     this.§03§ = -1;
                  }
                  this.§5T§ = this.§03§;
                  this.§=C§ = §%!0§;
                  this.§=C§ *= Math.abs(this.§5T§) / 2;
                  this.§`!J§ = this.§=C§;
                  this.§<n§ = 0;
                  this.§#!1§ = 0;
               }
               else if(!this.§'%§ && param2)
               {
                  this.§1l§(2.25);
               }
               else
               {
                  this.§=C§ = 0;
                  this.§>!_§ = 0;
                  this.§<n§ = 0;
                  this.§03§ = 0;
               }
            }
            else
            {
               if(this.§=C§ >= this.§`!J§ / 2)
               {
                  _loc3_ = (this.§`!J§ - this.§=C§) / (this.§`!J§ / 2);
                  _loc3_ = §%=§.§&K§(_loc3_);
                  this.§>!_§ = _loc3_ * this.§5T§;
               }
               else
               {
                  _loc3_ = (this.§`!J§ / 2 - this.§=C§) / (this.§`!J§ / 2);
                  _loc3_ = §%=§.§&K§(_loc3_,false);
                  this.§>!_§ = this.§5T§ + _loc3_ * -this.§5T§;
               }
               this.§<n§ = 360 * §%=§.§&K§((this.§`!J§ - this.§=C§) / this.§`!J§) * this.§#!1§;
            }
            this.§%P§();
         }
         else if(Math.random() * §&!Q§ < param1 && !this.§'%§ && !this.§ !<§ && !this.§>]§)
         {
            this.§1l§();
         }
      }
      
      public function §1l§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§0!a§ = 0;
         this.§=C§ = §%!0§;
         this.§>!_§ = 0;
         this.§5T§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§03§ = this.§5T§;
         this.§=C§ *= Math.abs(this.§5T§) / 3;
         this.§`!J§ = this.§=C§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§#!1§ = 0;
         }
         else if(this.§=C§ < 350)
         {
            this.§#!1§ = 0;
         }
         else
         {
            this.§#!1§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§#!1§ = Math.random() > 0.5 ? Number(this.§#!1§) : Number(0);
         }
      }
      
      public function §%P§() : void
      {
         this.§3!F§.x = this.§,G§ / §6w§.§?!^§;
         this.§3!F§.y = (this.§-+§ + this.§>!_§) / §6w§.§?!^§;
         this.§3!F§.rotation = this.§<n§ / 180 * Math.PI;
      }
      
      public function §5j§() : void
      {
         this.§>]§ = true;
         this.§'%§ = false;
         this.§ !<§ = false;
         this.§0!a§ = 0;
         this.§"&§ = 0;
         this.§=C§ = 0;
         this.§=C§ = 0;
         this.§>!_§ = 0;
         this.§<n§ = 0;
         this.§03§ = 0;
         this.§#!1§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§,G§) * (param1 - this.§,G§) + (param2 - this.§-+§) * (param2 - this.§-+§));
         if(_loc3_ <= this.§7o§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§,G§ >= param3 && this.§,G§ <= param4 && this.§-+§ >= param1 && this.§-+§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§,G§ != param1 || this.§-+§ != param2)
         {
            _loc3_ = true;
         }
         this.§,G§ = param1;
         this.§-+§ = param2;
         this.§"&§ = 100;
         this.§%P§();
         if(_loc3_)
         {
            this.§5!Z§.§2!2§();
         }
      }
      
      public function §'D§() : §&!C§
      {
         return this.§#!+§;
      }
      
      public function get §7G§() : Number
      {
         return this.§=C§;
      }
      
      public function get §%y§() : Number
      {
         return this.§"&§;
      }
      
      public function set §%y§(param1:Number) : void
      {
         this.§"&§ = param1;
      }
      
      public function get §&!Z§() : Number
      {
         return this.§-!]§;
      }
      
      public function get §+p§() : Boolean
      {
         return this.§'%§;
      }
      
      public function get radius() : Number
      {
         return this.§7o§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§3!F§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §&!Z§(param1:Number) : void
      {
         this.§-!]§ = param1;
      }
      
      public function get §1c§() : Number
      {
         return this.§=6§;
      }
      
      public function set §1c§(param1:Number) : void
      {
         this.§=6§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§#l§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§#l§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§,G§;
      }
      
      public function get y() : Number
      {
         return this.§-+§;
      }
      
      public function get §@!$§() : Number
      {
         return this.§1`§;
      }
      
      public function get §=^§() : Number
      {
         return this.§9"§;
      }
   }
}
