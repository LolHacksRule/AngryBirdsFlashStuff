package §6A§
{
   import §&o§.§?T§;
   import §&o§.Sprite;
   import §0! §.Texture;
   import §3a§.§7P§;
   import §9K§.§!?§;
   import §9K§.§,z§;
   import §^!A§.§;!%§;
   import §^!L§.§"c§;
   import §^!L§.§%h§;
   import §^!L§.§6<§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §!!'§
   {
      
      public static const §#1§:String = "ChannelSlingshot";
      
      public static const §[L§:Number = 900;
      
      public static const §4!-§:Number = 200;
      
      public static const §8D§:Number = 200;
      
      public static const §;!8§:Number = 1500;
      
      public static const §"§:Number = 5000;
      
      public static const §'7§:Number = 1000;
      
      public static const §88§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §-`§:Number;
      
      protected var §4J§:Number;
      
      protected var §-x§:Number;
      
      protected var §=f§:Number;
      
      private var §8"§:§%h§;
      
      protected var §&k§:Number;
      
      protected var §,k§:Number = 1;
      
      private var §,!7§:Sprite;
      
      protected var §>!%§:§!?§;
      
      private var §+J§:§?T§;
      
      protected var §8i§:§4!C§;
      
      private var §8!7§:Number;
      
      private var §=!2§:Boolean = false;
      
      private var §6z§:Boolean = false;
      
      protected var §%!I§:Boolean = false;
      
      private var §=1§:Number;
      
      private var §>'§:Number = 0;
      
      private var §@b§:Number = 0;
      
      private var §;G§:Number = 0;
      
      private var §5J§:Number = 1000;
      
      private var §#'§:Number;
      
      private var §4!0§:Number;
      
      private var §']§:int;
      
      private var §,>§:Number = 0;
      
      protected var §3!,§:Number;
      
      protected var §%!4§:Number;
      
      private var §4Y§:Number = 1;
      
      private var §2V§:Number = 0;
      
      private var §8!D§:b2Vec2;
      
      private var §-_§:Number = 1;
      
      public function §!!'§(param1:§4!C§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§8i§ = param1;
         this.§,!7§ = param2;
         this.mName = param3;
         this.§8"§ = §6<§.§6H§(this.mName).§2;§;
         this.§-`§ = param4;
         this.§4J§ = param5;
         this.§-x§ = param4;
         this.§=f§ = param5;
         this.§&k§ = 0;
         this.§=!2§ = false;
         this.§6z§ = false;
         this.§>'§ = 0;
         this.§1R§();
         this.§3!,§ = 0;
      }
      
      public function §4!K§() : void
      {
         this.§=!2§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§,!7§)
         {
            this.§,!7§.dispose();
            this.§,!7§ = null;
         }
      }
      
      public function §>]§(param1:Number) : void
      {
         if(!this.§6z§ || this.§=!2§)
         {
            return;
         }
         if(this.§,k§ != 0)
         {
            this.§;G§ = 0;
            this.§,>§ = 0;
            this.§&k§ = 0;
            this.§4!0§ = 0;
            this.§,k§ = 0;
         }
         param1 = Math.min(param1,this.§=1§);
         this.§-`§ += param1 * (this.§8i§.§-`§ - this.§-`§) / this.§=1§;
         this.§4J§ += param1 * (this.§8i§.§4J§ - this.§4J§) / this.§=1§;
         this.§4J§ -= param1 / 50 * (this.§=1§ / §[L§);
         this.§&k§ += param1 * (360 - this.§&k§) / this.§=1§;
         this.§=1§ -= param1;
         if(this.§=1§ <= 0)
         {
            this.§-`§ = this.§8i§.§-`§;
            this.§4J§ = this.§8i§.§4J§;
            this.§6z§ = false;
            this.§=!2§ = true;
            this.§&k§ = 0;
         }
         this.§+>§();
      }
      
      public function §?!0§() : void
      {
         this.§6z§ = true;
         this.§=1§ = §[L§;
         this.§`q§(§%h§.§^w§);
         if(this.§,>§ != 0)
         {
            this.§4J§ += this.§,>§;
            this.§,>§ = 0;
         }
      }
      
      public function §`!<§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§=!2§ && this.§3!,§ >= 0)
         {
            if(this.§%!4§ > this.§8i§.§?V§.§%>§.§,j§)
            {
               this.§1!>§(this.§8i§.§?V§.§%>§.§,j§ - this.§%!4§);
               this.§3!,§ = -1;
            }
            this.§3!,§ -= param1;
            if(this.§3!,§ <= 0)
            {
               if(this.§;G§ > 0)
               {
                  this.§3!,§ = this.§;G§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§%!4§))
               {
                  _loc2_ = this.§8i§.§?V§.objects.§@,§(this.§-`§,this.§%!4§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§1!>§(param1 / 100))
                  {
                     this.§3!,§ = -1;
                  }
                  else
                  {
                     this.§3!,§ = 0;
                  }
               }
               else if(!this.§8i§.§?V§.objects.§1F§(_loc2_).§1k§)
               {
                  this.§%!I§ = false;
                  this.§3!,§ = -1;
               }
               else if(this.§8i§.§?V§.objects.§1F§(_loc2_).§switch§())
               {
                  this.§%!I§ = false;
                  this.§3!,§ = 2000;
               }
               else
               {
                  this.§3!,§ = 500;
               }
            }
         }
      }
      
      public function §1!>§(param1:Number) : Boolean
      {
         this.§4J§ += param1;
         this.§%!4§ += param1;
         if(this.§%!4§ > this.§8i§.§?V§.§%>§.§,j§)
         {
            param1 = this.§%!4§ - this.§8i§.§?V§.§%>§.§,j§;
            this.§4J§ -= param1;
            this.§%!4§ -= param1;
            this.§+>§();
            return true;
         }
         this.§+>§();
         return false;
      }
      
      public function §1R§() : void
      {
         var _loc1_:§"c§ = §6<§.§6H§(this.mName).shape;
         if(_loc1_.§3@§() == §"c§.§,p§)
         {
            this.§8!D§ = _loc1_.§&v§()[0];
            this.§8!7§ = _loc1_.§[s§;
         }
         else if(_loc1_.§3@§() == §"c§.§"!K§)
         {
            this.§8!D§ = new b2Vec2(0,0);
            this.§8!7§ = 1.5;
         }
         this.§>!%§ = this.§8i§.§?V§.§;!L§.§8!0§(this.mName);
         if(!this.§>!%§)
         {
            this.§&N§(null);
         }
         else
         {
            this.§&N§(this.§>!%§.getFrame(0));
         }
      }
      
      public function §&N§(param1:§,z§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§8i§.§;s§.textureManager.§=^§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§+J§ == null)
         {
            this.§+J§ = new §?T§(_loc2_);
            this.§,!7§.addChild(this.§+J§);
         }
         else
         {
            this.§+J§.texture = _loc2_;
         }
         if(param1)
         {
            this.§+J§.x = -param1.pivotX - this.§8!D§.x / § !§.§`J§;
            this.§+J§.y = -param1.pivotY - this.§8!D§.y / § !§.§`J§;
         }
         else
         {
            this.§+J§.x = -this.§+J§.width / 2;
            this.§+J§.y = -this.§+J§.height / 2;
         }
         this.§+J§.scaleX = _loc3_;
         this.§+J§.scaleY = _loc3_;
         this.§+>§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§`!<§(param1);
         if(this.§6z§)
         {
            this.§;G§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§5!J§(param1);
            this.§"3§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§7J§(param1,param2);
            }
         }
      }
      
      public function §5!J§(param1:Number) : void
      {
         if(this.§>'§ > 0)
         {
            this.§>'§ -= param1;
            if(this.§>'§ <= 0)
            {
               this.§^I§();
            }
         }
         else if(this.§@b§ <= 0 && Math.random() * §;!8§ < param1 && this.§8i§.mSlingShotState)
         {
            this.§'W§();
         }
      }
      
      public function §^I§() : void
      {
         this.§>'§ = 0;
         this.§&N§(this.§>!%§.getFrame(0));
      }
      
      public function §'W§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§>'§ = §4!-§;
         this.§&N§(this.§>!%§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §"3§(param1:Number) : void
      {
         if(this.§@b§ > 0)
         {
            this.§@b§ -= param1;
            if(this.§@b§ <= 0)
            {
               this.§!0§();
            }
         }
         else if(this.§>'§ <= 0 && Math.random() * §"§ < param1)
         {
            this.§`q§();
         }
      }
      
      public function §!0§() : void
      {
         this.§@b§ = 0;
         this.§&N§(this.§>!%§.getFrame(0));
      }
      
      public function §`q§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§@b§ > 0)
         {
            this.§!0§();
         }
         if(this.§>'§ > 0)
         {
            this.§^I§();
         }
         if(param1 < 0)
         {
            param1 = §%h§.§"!B§;
         }
         this.§@b§ = §8D§;
         this.§&N§(this.§>!%§.getSubAnimation("yell").getFrame(0));
         if(this.§=!2§ || this.§6z§ || param2)
         {
            §;!%§.§6!&§(param1,this.§8"§);
         }
         else
         {
            §;!%§.§6!&§(param1,this.§8"§,§#1§);
         }
      }
      
      public function §7J§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§;G§ > 0)
         {
            this.§;G§ -= param1;
            if(this.§;G§ <= 0)
            {
               ++this.§']§;
               this.§4!0§ *= 0.4;
               if(!this.§=!2§ && this.§']§ < 2)
               {
                  if(this.§']§ > 1 && this.§4!0§ < -1)
                  {
                     this.§4!0§ = -1;
                  }
                  this.§#'§ = this.§4!0§;
                  this.§;G§ = §88§;
                  this.§;G§ *= Math.abs(this.§#'§) / 2;
                  this.§5J§ = this.§;G§;
                  this.§&k§ = 0;
                  this.§,k§ = 0;
               }
               else if(!this.§=!2§ && param2)
               {
                  this.§!v§(2.25);
               }
               else
               {
                  this.§;G§ = 0;
                  this.§,>§ = 0;
                  this.§&k§ = 0;
                  this.§4!0§ = 0;
               }
            }
            else
            {
               if(this.§;G§ >= this.§5J§ / 2)
               {
                  _loc3_ = (this.§5J§ - this.§;G§) / (this.§5J§ / 2);
                  _loc3_ = §7P§.§2!A§(_loc3_);
                  this.§,>§ = _loc3_ * this.§#'§;
               }
               else
               {
                  _loc3_ = (this.§5J§ / 2 - this.§;G§) / (this.§5J§ / 2);
                  _loc3_ = §7P§.§2!A§(_loc3_,false);
                  this.§,>§ = this.§#'§ + _loc3_ * -this.§#'§;
               }
               this.§&k§ = 360 * §7P§.§2!A§((this.§5J§ - this.§;G§) / this.§5J§) * this.§,k§;
            }
            this.§+>§();
         }
         else if(Math.random() * §'7§ < param1 && !this.§=!2§ && !this.§6z§ && !this.§%!I§)
         {
            this.§!v§();
         }
      }
      
      public function §!v§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§']§ = 0;
         this.§;G§ = §88§;
         this.§,>§ = 0;
         this.§#'§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§4!0§ = this.§#'§;
         this.§;G§ *= Math.abs(this.§#'§) / 3;
         this.§5J§ = this.§;G§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§,k§ = 0;
         }
         else if(this.§;G§ < 350)
         {
            this.§,k§ = 0;
         }
         else
         {
            this.§,k§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§,k§ = Math.random() > 0.5 ? Number(this.§,k§) : Number(0);
         }
      }
      
      public function §+>§() : void
      {
         this.§,!7§.x = this.§-`§ / § !§.§`J§;
         this.§,!7§.y = (this.§4J§ + this.§,>§) / § !§.§`J§;
         this.§,!7§.rotation = this.§&k§ / 180 * Math.PI;
      }
      
      public function §5S§() : void
      {
         this.§%!I§ = true;
         this.§=!2§ = false;
         this.§6z§ = false;
         this.§']§ = 0;
         this.§3!,§ = 0;
         this.§;G§ = 0;
         this.§;G§ = 0;
         this.§,>§ = 0;
         this.§&k§ = 0;
         this.§4!0§ = 0;
         this.§,k§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§-`§) * (param1 - this.§-`§) + (param2 - this.§4J§) * (param2 - this.§4J§));
         if(_loc3_ <= this.§8!7§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§-`§ >= param3 && this.§-`§ <= param4 && this.§4J§ >= param1 && this.§4J§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§-`§ != param1 || this.§4J§ != param2)
         {
            _loc3_ = true;
         }
         this.§-`§ = param1;
         this.§4J§ = param2;
         this.§3!,§ = 100;
         this.§+>§();
         if(_loc3_)
         {
            this.§8i§.§5B§();
         }
      }
      
      public function §'!4§() : §?T§
      {
         return this.§+J§;
      }
      
      public function get §3A§() : Number
      {
         return this.§;G§;
      }
      
      public function get §>%§() : Number
      {
         return this.§3!,§;
      }
      
      public function set §>%§(param1:Number) : void
      {
         this.§3!,§ = param1;
      }
      
      public function get §]k§() : Number
      {
         return this.§4Y§;
      }
      
      public function get §%K§() : Boolean
      {
         return this.§=!2§;
      }
      
      public function get radius() : Number
      {
         return this.§8!7§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§,!7§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §]k§(param1:Number) : void
      {
         this.§4Y§ = param1;
      }
      
      public function get §4b§() : Number
      {
         return this.§2V§;
      }
      
      public function set §4b§(param1:Number) : void
      {
         this.§2V§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§-_§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§-_§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§-`§;
      }
      
      public function get y() : Number
      {
         return this.§4J§;
      }
      
      public function get §#K§() : Number
      {
         return this.§-x§;
      }
      
      public function get §;q§() : Number
      {
         return this.§=f§;
      }
      
      public function §5!&§() : Boolean
      {
         return this.§%!I§;
      }
   }
}
