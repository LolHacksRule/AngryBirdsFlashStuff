package §8!E§
{
   import § ""§.§4!n§;
   import § ""§.§<9§;
   import § ""§.§["?§;
   import §&W§.§!!!§;
   import §1!z§.b2Vec2;
   import §?"&§.§"!q§;
   import §@!#§.Texture;
   import §`"2§.§%3§;
   import §`"2§.§>",§;
   import §`L§.§-;§;
   import §`L§.Sprite;
   
   public class §'4§
   {
      
      public static const §^>§:String = "ChannelSlingshot";
      
      public static const §#""§:Number = 900;
      
      public static const §,!l§:Number = 200;
      
      public static const §<;§:Number = 200;
      
      public static const §[!-§:Number = 1500;
      
      public static const §@o§:Number = 5000;
      
      public static const §<!I§:Number = 1000;
      
      public static const §]!0§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var mX:Number;
      
      protected var mY:Number;
      
      protected var §4"?§:Number;
      
      protected var §9!2§:Number;
      
      private var §3;§:§<9§;
      
      protected var §%B§:Number;
      
      protected var §?G§:Number = 1;
      
      private var §`B§:Sprite;
      
      protected var §&]§:§>",§;
      
      private var §8!T§:§-;§;
      
      protected var §'x§:§1!6§;
      
      private var §-e§:Number;
      
      private var §2P§:Boolean = false;
      
      private var §@!F§:Boolean = false;
      
      protected var §,!&§:Boolean = false;
      
      private var §9b§:Number;
      
      private var §+!I§:Number = 0;
      
      private var §!4§:Number = 0;
      
      private var §-!E§:Number = 0;
      
      private var §[2§:Number = 1000;
      
      private var §,p§:Number;
      
      private var §,!P§:Number;
      
      private var §,!+§:int;
      
      private var §]!,§:Number = 0;
      
      protected var §-W§:Number;
      
      protected var §1a§:Number;
      
      private var §]H§:Number = 1;
      
      private var §76§:Number = 0;
      
      private var §6H§:b2Vec2;
      
      private var §#"0§:Number = 1;
      
      public function §'4§(param1:§1!6§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§'x§ = param1;
         this.§`B§ = param2;
         this.mName = param3;
         this.§3;§ = §4!n§.§]4§(this.mName).§@X§;
         this.mX = param4;
         this.mY = param5;
         this.§4"?§ = param4;
         this.§9!2§ = param5;
         this.§%B§ = 0;
         this.§2P§ = false;
         this.§@!F§ = false;
         this.§+!I§ = 0;
         this.§#!W§();
         this.§-W§ = 0;
      }
      
      public function § p§() : void
      {
         this.§2P§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§`B§)
         {
            this.§`B§.dispose();
            this.§`B§ = null;
         }
      }
      
      public function §27§(param1:Number) : void
      {
         if(!this.§@!F§ || this.§2P§)
         {
            return;
         }
         if(this.§?G§ != 0)
         {
            this.§-!E§ = 0;
            this.§]!,§ = 0;
            this.§%B§ = 0;
            this.§,!P§ = 0;
            this.§?G§ = 0;
         }
         param1 = Math.min(param1,this.§9b§);
         this.mX += param1 * (this.§'x§.mX - this.mX) / this.§9b§;
         this.mY += param1 * (this.§'x§.mY - this.mY) / this.§9b§;
         this.mY -= param1 / 50 * (this.§9b§ / §#""§);
         this.§%B§ += param1 * (360 - this.§%B§) / this.§9b§;
         this.§9b§ -= param1;
         if(this.§9b§ <= 0)
         {
            this.mX = this.§'x§.mX;
            this.mY = this.§'x§.mY;
            this.§@!F§ = false;
            this.§2P§ = true;
            this.§%B§ = 0;
         }
         this.§[!C§();
      }
      
      public function §"!s§() : void
      {
         this.§@!F§ = true;
         this.§9b§ = §#""§;
         this.§2k§(§<9§.§>!i§);
         if(this.§]!,§ != 0)
         {
            this.mY += this.§]!,§;
            this.§]!,§ = 0;
         }
      }
      
      public function § !%§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§2P§ && this.§-W§ >= 0)
         {
            if(this.§1a§ > this.§'x§.§7!;§.borders.mBorderGround_B2)
            {
               this.§ get§(this.§'x§.§7!;§.borders.mBorderGround_B2 - this.§1a§);
               this.§-W§ = -1;
            }
            this.§-W§ -= param1;
            if(this.§-W§ <= 0)
            {
               if(this.§-!E§ > 0)
               {
                  this.§-W§ = this.§-!E§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§1a§))
               {
                  _loc2_ = this.§'x§.§7!;§.objects.§6!c§(this.mX,this.§1a§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§ get§(param1 / 100))
                  {
                     this.§-W§ = -1;
                  }
                  else
                  {
                     this.§-W§ = 0;
                  }
               }
               else if(!this.§'x§.§7!;§.objects.getObject(_loc2_).§=!E§)
               {
                  this.§,!&§ = false;
                  this.§-W§ = -1;
               }
               else if(this.§'x§.§7!;§.objects.getObject(_loc2_).§<!s§())
               {
                  this.§,!&§ = false;
                  this.§-W§ = 2000;
               }
               else
               {
                  this.§-W§ = 500;
               }
            }
         }
      }
      
      public function § get§(param1:Number) : Boolean
      {
         this.mY += param1;
         this.§1a§ += param1;
         if(this.§1a§ > this.§'x§.§7!;§.borders.mBorderGround_B2)
         {
            param1 = this.§1a§ - this.§'x§.§7!;§.borders.mBorderGround_B2;
            this.mY -= param1;
            this.§1a§ -= param1;
            this.§[!C§();
            return true;
         }
         this.§[!C§();
         return false;
      }
      
      public function §#!W§() : void
      {
         var _loc1_:§["?§ = §4!n§.§]4§(this.mName).shape;
         if(_loc1_.§%!N§() == §["?§.§2!`§)
         {
            this.§6H§ = _loc1_.§&%§()[0];
            this.§-e§ = _loc1_.§+!C§;
         }
         else if(_loc1_.§%!N§() == §["?§.§;E§)
         {
            this.§6H§ = new b2Vec2(0,0);
            this.§-e§ = 1.5;
         }
         this.§&]§ = this.§'x§.§7!;§.§1!,§.§ "1§(this.mName);
         if(!this.§&]§)
         {
            this.§+!9§(null);
         }
         else
         {
            this.§+!9§(this.§&]§.getFrame(0));
         }
      }
      
      public function §+!9§(param1:§%3§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§'x§.§9"&§.§4F§.§4v§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§8!T§ == null)
         {
            this.§8!T§ = new §-;§(_loc2_);
            this.§`B§.addChild(this.§8!T§);
         }
         else
         {
            this.§8!T§.texture = _loc2_;
         }
         if(param1)
         {
            this.§8!T§.x = -param1.pivotX - this.§6H§.x / §?!X§.§57§;
            this.§8!T§.y = -param1.pivotY - this.§6H§.y / §?!X§.§57§;
         }
         else
         {
            this.§8!T§.x = -this.§8!T§.width / 2;
            this.§8!T§.y = -this.§8!T§.height / 2;
         }
         this.§8!T§.scaleX = _loc3_;
         this.§8!T§.scaleY = _loc3_;
         this.§[!C§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§ !%§(param1);
         if(this.§@!F§)
         {
            this.§-!E§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§?9§(param1);
            this.§=!7§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§;'§(param1,param2);
            }
         }
      }
      
      public function §?9§(param1:Number) : void
      {
         if(this.§+!I§ > 0)
         {
            this.§+!I§ -= param1;
            if(this.§+!I§ <= 0)
            {
               this.§1!]§();
            }
         }
         else if(this.§!4§ <= 0 && Math.random() * §[!-§ < param1 && this.§'x§.mSlingShotState)
         {
            this.§ "4§();
         }
      }
      
      public function §1!]§() : void
      {
         this.§+!I§ = 0;
         this.§+!9§(this.§&]§.getFrame(0));
      }
      
      public function § "4§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§+!I§ = §,!l§;
         this.§+!9§(this.§&]§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §=!7§(param1:Number) : void
      {
         if(this.§!4§ > 0)
         {
            this.§!4§ -= param1;
            if(this.§!4§ <= 0)
            {
               this.§2y§();
            }
         }
         else if(this.§+!I§ <= 0 && Math.random() * §@o§ < param1)
         {
            this.§2k§();
         }
      }
      
      public function §2y§() : void
      {
         this.§!4§ = 0;
         this.§+!9§(this.§&]§.getFrame(0));
      }
      
      public function §2k§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§!4§ > 0)
         {
            this.§2y§();
         }
         if(this.§+!I§ > 0)
         {
            this.§1!]§();
         }
         if(param1 < 0)
         {
            param1 = §<9§.§try§;
         }
         this.§!4§ = §<;§;
         this.§+!9§(this.§&]§.getSubAnimation("yell").getFrame(0));
         if(this.§2P§ || this.§@!F§ || param2)
         {
            §"!q§.§2z§(param1,this.§3;§);
         }
         else
         {
            §"!q§.§2z§(param1,this.§3;§,§^>§);
         }
      }
      
      public function §;'§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§-!E§ > 0)
         {
            this.§-!E§ -= param1;
            if(this.§-!E§ <= 0)
            {
               ++this.§,!+§;
               this.§,!P§ *= 0.4;
               if(!this.§2P§ && this.§,!+§ < 2)
               {
                  if(this.§,!+§ > 1 && this.§,!P§ < -1)
                  {
                     this.§,!P§ = -1;
                  }
                  this.§,p§ = this.§,!P§;
                  this.§-!E§ = §]!0§;
                  this.§-!E§ *= Math.abs(this.§,p§) / 2;
                  this.§[2§ = this.§-!E§;
                  this.§%B§ = 0;
                  this.§?G§ = 0;
               }
               else if(!this.§2P§ && param2)
               {
                  this.§9!k§(2.25);
               }
               else
               {
                  this.§-!E§ = 0;
                  this.§]!,§ = 0;
                  this.§%B§ = 0;
                  this.§,!P§ = 0;
               }
            }
            else
            {
               if(this.§-!E§ >= this.§[2§ / 2)
               {
                  _loc3_ = (this.§[2§ - this.§-!E§) / (this.§[2§ / 2);
                  _loc3_ = §!!!§.§,1§(_loc3_);
                  this.§]!,§ = _loc3_ * this.§,p§;
               }
               else
               {
                  _loc3_ = (this.§[2§ / 2 - this.§-!E§) / (this.§[2§ / 2);
                  _loc3_ = §!!!§.§,1§(_loc3_,false);
                  this.§]!,§ = this.§,p§ + _loc3_ * -this.§,p§;
               }
               this.§%B§ = 360 * §!!!§.§,1§((this.§[2§ - this.§-!E§) / this.§[2§) * this.§?G§;
            }
            this.§[!C§();
         }
         else if(Math.random() * §<!I§ < param1 && !this.§2P§ && !this.§@!F§ && !this.§,!&§)
         {
            this.§9!k§();
         }
      }
      
      public function §9!k§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§,!+§ = 0;
         this.§-!E§ = §]!0§;
         this.§]!,§ = 0;
         this.§,p§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§,!P§ = this.§,p§;
         this.§-!E§ *= Math.abs(this.§,p§) / 3;
         this.§[2§ = this.§-!E§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§?G§ = 0;
         }
         else if(this.§-!E§ < 350)
         {
            this.§?G§ = 0;
         }
         else
         {
            this.§?G§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§?G§ = Math.random() > 0.5 ? Number(this.§?G§) : Number(0);
         }
      }
      
      public function §[!C§() : void
      {
         this.§`B§.x = this.mX / §?!X§.§57§;
         this.§`B§.y = (this.mY + this.§]!,§) / §?!X§.§57§;
         this.§`B§.rotation = this.§%B§ / 180 * Math.PI;
      }
      
      public function §,!A§() : void
      {
         this.§,!&§ = true;
         this.§2P§ = false;
         this.§@!F§ = false;
         this.§,!+§ = 0;
         this.§-W§ = 0;
         this.§-!E§ = 0;
         this.§-!E§ = 0;
         this.§]!,§ = 0;
         this.§%B§ = 0;
         this.§,!P§ = 0;
         this.§?G§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.mX) * (param1 - this.mX) + (param2 - this.mY) * (param2 - this.mY));
         if(_loc3_ <= this.§-e§ * 1.1)
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
         this.§-W§ = 100;
         this.§[!C§();
         if(_loc3_)
         {
            this.§'x§.§0d§();
         }
      }
      
      public function §7"7§() : §-;§
      {
         return this.§8!T§;
      }
      
      public function get §1"=§() : Number
      {
         return this.§-!E§;
      }
      
      public function get §9!V§() : Number
      {
         return this.§-W§;
      }
      
      public function set §9!V§(param1:Number) : void
      {
         this.§-W§ = param1;
      }
      
      public function get §^H§() : Number
      {
         return this.§]H§;
      }
      
      public function get §-!M§() : Boolean
      {
         return this.§2P§;
      }
      
      public function get radius() : Number
      {
         return this.§-e§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§`B§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §^H§(param1:Number) : void
      {
         this.§]H§ = param1;
      }
      
      public function get §&&§() : Number
      {
         return this.§76§;
      }
      
      public function set §&&§(param1:Number) : void
      {
         this.§76§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§#"0§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§#"0§ = param1;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function get §5" §() : Number
      {
         return this.§4"?§;
      }
      
      public function get §>D§() : Number
      {
         return this.§9!2§;
      }
   }
}
