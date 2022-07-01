package §<!<§
{
   import § !r§.§<!V§;
   import §-!`§.§7!J§;
   import §-!`§.Sprite;
   import §0!-§.Texture;
   import §<!B§.b2Vec2;
   import §=U§.§;P§;
   import §=U§.§>?§;
   import §>!'§.§<!3§;
   import §?!6§.§"!0§;
   import §?!6§.§1!!§;
   import §?!6§.§@T§;
   
   public class §]K§
   {
      
      public static const §=!t§:String = "ChannelSlingshot";
      
      public static const §%!"§:Number = 900;
      
      public static const §>!7§:Number = 200;
      
      public static const §7!X§:Number = 200;
      
      public static const §<R§:Number = 1500;
      
      public static const §2!3§:Number = 5000;
      
      public static const §"!t§:Number = 1000;
      
      public static const §`!]§:Number = 1000;
       
      
      private var mName:String;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §+<§:Number;
      
      public var §6!n§:Number;
      
      private var §-5§:§@T§;
      
      protected var §;i§:Number;
      
      protected var §&!M§:Number = 1;
      
      private var §>E§:Sprite;
      
      private var §#!M§:§;P§;
      
      private var §,!^§:§7!J§;
      
      protected var §[6§:§;§;
      
      private var §%!+§:Number;
      
      private var §6!v§:Boolean = false;
      
      private var §]§:Boolean = false;
      
      protected var §<'§:Boolean = false;
      
      private var §8!2§:Number;
      
      private var §5F§:Number = 0;
      
      private var §^!?§:Number = 0;
      
      private var §"!a§:Number = 0;
      
      private var §=Z§:Number = 1000;
      
      private var §?!m§:Number;
      
      private var §`!^§:Number;
      
      private var §6!X§:int;
      
      private var §"! §:Number = 0;
      
      protected var §""§:Number;
      
      protected var §;!F§:Number;
      
      protected var §=!-§:Number = 0;
      
      private var §^3§:Number = 1;
      
      private var § !a§:Number = 0;
      
      private var §6o§:b2Vec2;
      
      private var §7P§:Number = 1;
      
      public function §]K§(param1:§;§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§[6§ = param1;
         this.§>E§ = param2;
         this.mName = param3;
         this.§-5§ = §1!!§.§#P§(this.mName).§1!B§;
         this.mX = param4;
         this.mY = param5;
         this.§+<§ = param4;
         this.§6!n§ = param5;
         this.§;i§ = 0;
         this.§6!v§ = false;
         this.§]§ = false;
         this.§5F§ = 0;
         this.§3!F§();
         this.§""§ = 0;
      }
      
      public function §;!C§() : void
      {
         this.§6!v§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§>E§)
         {
            this.§>E§.dispose();
            this.§>E§ = null;
         }
      }
      
      public function §#w§(param1:Number) : void
      {
         if(!this.§]§ || this.§6!v§)
         {
            return;
         }
         if(this.§&!M§ != 0)
         {
            this.§"!a§ = 0;
            this.§"! § = 0;
            this.§;i§ = 0;
            this.§`!^§ = 0;
            this.§&!M§ = 0;
         }
         param1 = Math.min(param1,this.§8!2§);
         this.mX += param1 * (this.§[6§.mX - this.mX) / this.§8!2§;
         this.mY += param1 * (this.§[6§.mY - this.mY) / this.§8!2§;
         this.mY -= param1 / 50 * (this.§8!2§ / §%!"§);
         this.§;i§ += param1 * (360 - this.§;i§) / this.§8!2§;
         this.§8!2§ -= param1;
         if(this.§8!2§ <= 0)
         {
            this.mX = this.§[6§.mX;
            this.mY = this.§[6§.mY;
            this.§]§ = false;
            this.§6!v§ = true;
            this.§;i§ = 0;
         }
         this.§3G§();
      }
      
      public function §;!H§() : void
      {
         this.§]§ = true;
         this.§8!2§ = §%!"§;
         this.§&K§(§@T§.§@c§);
         if(this.§"! § != 0)
         {
            this.mY += this.§"! §;
            this.§"! § = 0;
         }
      }
      
      public function §"E§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§6!v§ && this.§""§ >= 0)
         {
            if(this.§;!F§ > this.§[6§.§-n§.borders.mBorderGround_B2)
            {
               this.§"8§(this.§[6§.§-n§.borders.mBorderGround_B2 - this.§;!F§);
               this.§""§ = -1;
            }
            this.§""§ -= param1;
            if(this.§""§ <= 0)
            {
               if(this.§"!a§ > 0)
               {
                  this.§""§ = this.§"!a§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§;!F§))
               {
                  _loc2_ = this.§[6§.§-n§.objects.§^!!§(this.mX,this.§;!F§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§"8§(param1 / 100))
                  {
                     this.§""§ = -1;
                  }
                  else
                  {
                     this.§""§ = 0;
                  }
               }
               else if(!this.§[6§.§-n§.objects.getObject(_loc2_).§7T§)
               {
                  this.§<'§ = false;
                  this.§""§ = -1;
               }
               else if(this.§[6§.§-n§.objects.getObject(_loc2_).§^!%§())
               {
                  this.§<'§ = false;
                  this.§""§ = 2000;
               }
               else
               {
                  this.§""§ = 500;
               }
            }
         }
      }
      
      public function §"8§(param1:Number) : Boolean
      {
         this.mY += param1;
         this.§;!F§ += param1;
         if(this.§;!F§ > this.§[6§.§-n§.borders.mBorderGround_B2)
         {
            param1 = this.§;!F§ - this.§[6§.§-n§.borders.mBorderGround_B2;
            this.mY -= param1;
            this.§;!F§ -= param1;
            this.§3G§();
            return true;
         }
         this.§3G§();
         return false;
      }
      
      public function §3!F§() : void
      {
         var _loc1_:§"!0§ = §1!!§.§#P§(this.mName).shape;
         if(_loc1_.§?p§() == §"!0§.§3I§)
         {
            this.§6o§ = _loc1_.§#5§()[0];
            this.§%!+§ = _loc1_.§4!L§;
         }
         else if(_loc1_.§?p§() == §"!0§.§`C§)
         {
            this.§6o§ = new b2Vec2(0,0);
            this.§%!+§ = 1.5;
         }
         this.§#!M§ = this.§[6§.§-n§.§@!o§.§`!!§(this.mName);
         if(!this.§#!M§)
         {
            this.§%!C§(null);
         }
         else
         {
            this.§%!C§(this.§#!M§.getFrame(0));
         }
      }
      
      public function §%!C§(param1:§>?§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§[6§.§<q§.textureManager.§8r§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§,!^§ == null)
         {
            this.§,!^§ = new §7!J§(_loc2_);
            this.§>E§.addChild(this.§,!^§);
         }
         else
         {
            this.§,!^§.texture = _loc2_;
         }
         if(param1)
         {
            this.§,!^§.x = -param1.pivotX - this.§6o§.x / §7E§.§8!'§;
            this.§,!^§.y = -param1.pivotY - this.§6o§.y / §7E§.§8!'§;
         }
         else
         {
            this.§,!^§.x = -this.§,!^§.width / 2;
            this.§,!^§.y = -this.§,!^§.height / 2;
         }
         this.§,!^§.scaleX = _loc3_;
         this.§,!^§.scaleY = _loc3_;
         this.§3G§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§"E§(param1);
         if(this.§]§)
         {
            this.§"!a§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§2I§(param1);
            this.§6!B§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§'8§(param1,param2);
            }
         }
      }
      
      public function §2I§(param1:Number) : void
      {
         if(this.§5F§ > 0)
         {
            this.§5F§ -= param1;
            if(this.§5F§ <= 0)
            {
               this.§5!T§();
            }
         }
         else if(this.§^!?§ <= 0 && Math.random() * §<R§ < param1 && this.§[6§.mSlingShotState)
         {
            this.§?S§();
         }
      }
      
      public function §5!T§() : void
      {
         this.§5F§ = 0;
         this.§%!C§(this.§#!M§.getFrame(0));
      }
      
      public function §?S§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§5F§ = §>!7§;
         this.§%!C§(this.§#!M§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §6!B§(param1:Number) : void
      {
         if(this.§^!?§ > 0)
         {
            this.§^!?§ -= param1;
            if(this.§^!?§ <= 0)
            {
               this.§^Q§();
            }
         }
         else if(this.§5F§ <= 0 && Math.random() * §2!3§ < param1)
         {
            this.§&K§();
         }
      }
      
      public function §^Q§() : void
      {
         this.§^!?§ = 0;
         this.§%!C§(this.§#!M§.getFrame(0));
      }
      
      public function §&K§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§^!?§ > 0)
         {
            this.§^Q§();
         }
         if(this.§5F§ > 0)
         {
            this.§5!T§();
         }
         if(param1 < 0)
         {
            param1 = §@T§.§`u§;
         }
         this.§^!?§ = §7!X§;
         this.§%!C§(this.§#!M§.getSubAnimation("yell").getFrame(0));
         if(this.§6!v§ || this.§]§ || param2)
         {
            §<!3§.§1a§(param1,this.§-5§);
         }
         else
         {
            §<!3§.§1a§(param1,this.§-5§,§=!t§);
         }
      }
      
      public function §'8§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§"!a§ > 0)
         {
            this.§"!a§ -= param1;
            if(this.§"!a§ <= 0)
            {
               ++this.§6!X§;
               this.§`!^§ *= 0.4;
               if(!this.§6!v§ && this.§6!X§ < 2)
               {
                  if(this.§6!X§ > 1 && this.§`!^§ < -1)
                  {
                     this.§`!^§ = -1;
                  }
                  this.§?!m§ = this.§`!^§;
                  this.§"!a§ = §`!]§;
                  this.§"!a§ *= Math.abs(this.§?!m§) / 2;
                  this.§=Z§ = this.§"!a§;
                  this.§;i§ = 0;
                  this.§&!M§ = 0;
               }
               else if(!this.§6!v§ && param2)
               {
                  this.§`&§(2.25);
               }
               else
               {
                  this.§"!a§ = 0;
                  this.§"! § = 0;
                  this.§;i§ = 0;
                  this.§`!^§ = 0;
               }
            }
            else
            {
               if(this.§"!a§ >= this.§=Z§ / 2)
               {
                  _loc3_ = (this.§=Z§ - this.§"!a§) / (this.§=Z§ / 2);
                  _loc3_ = §<!V§.§;]§(_loc3_);
                  this.§"! § = _loc3_ * this.§?!m§;
               }
               else
               {
                  _loc3_ = (this.§=Z§ / 2 - this.§"!a§) / (this.§=Z§ / 2);
                  _loc3_ = §<!V§.§;]§(_loc3_,false);
                  this.§"! § = this.§?!m§ + _loc3_ * -this.§?!m§;
               }
               this.§;i§ = 360 * §<!V§.§;]§((this.§=Z§ - this.§"!a§) / this.§=Z§) * this.§&!M§;
            }
            this.§3G§();
         }
         else if(Math.random() * §"!t§ < param1 && !this.§6!v§ && !this.§]§ && !this.§<'§)
         {
            this.§`&§();
         }
      }
      
      public function §`&§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§6!X§ = 0;
         this.§"!a§ = §`!]§;
         this.§"! § = 0;
         this.§?!m§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§`!^§ = this.§?!m§;
         this.§"!a§ *= Math.abs(this.§?!m§) / 3;
         this.§=Z§ = this.§"!a§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§&!M§ = 0;
         }
         else if(this.§"!a§ < 350)
         {
            this.§&!M§ = 0;
         }
         else
         {
            this.§&!M§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§&!M§ = Math.random() > 0.5 ? Number(this.§&!M§) : Number(0);
         }
      }
      
      public function §3G§() : void
      {
         this.§>E§.x = this.mX / §7E§.§8!'§;
         this.§>E§.y = (this.mY + this.§"! §) / §7E§.§8!'§;
         this.§>E§.rotation = this.§;i§ / 180 * Math.PI;
      }
      
      public function §'!J§() : void
      {
         this.§<'§ = true;
         this.§6!v§ = false;
         this.§]§ = false;
         this.§6!X§ = 0;
         this.§""§ = 0;
         this.§"!a§ = 0;
         this.§;!F§ = this.mY + this.§=!-§ + this.radius;
         this.§"!a§ = 0;
         this.§"! § = 0;
         this.§;i§ = 0;
         this.§`!^§ = 0;
         this.§&!M§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.mX) * (param1 - this.mX) + (param2 - this.mY) * (param2 - this.mY));
         if(_loc3_ <= this.§%!+§ * 1.1)
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
         this.§;!F§ = this.mY + this.§=!-§;
         this.§""§ = 100;
         this.§3G§();
         if(_loc3_)
         {
            this.§[6§.§!!=§();
         }
      }
      
      public function §+!V§() : §7!J§
      {
         return this.§,!^§;
      }
      
      public function get § !7§() : Number
      {
         return this.§"!a§;
      }
      
      public function get § !w§() : Number
      {
         return this.§""§;
      }
      
      public function set § !w§(param1:Number) : void
      {
         this.§""§ = param1;
      }
      
      public function get §]f§() : Number
      {
         return this.§^3§;
      }
      
      public function get §`!i§() : Boolean
      {
         return this.§6!v§;
      }
      
      public function get radius() : Number
      {
         return this.§%!+§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§>E§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §]f§(param1:Number) : void
      {
         this.§^3§ = param1;
      }
      
      public function get §2!@§() : Number
      {
         return this.§ !a§;
      }
      
      public function set §2!@§(param1:Number) : void
      {
         this.§ !a§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§7P§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§7P§ = param1;
      }
   }
}
