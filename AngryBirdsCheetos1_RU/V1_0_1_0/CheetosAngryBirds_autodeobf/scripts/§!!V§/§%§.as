package §!!V§
{
   import §%t§.§>P§;
   import §&!5§.§'!$§;
   import §&!5§.Sprite;
   import §&!B§.b2Vec2;
   import §5!$§.§!`§;
   import §5!$§.§"!I§;
   import §5!$§.§1!8§;
   import §9!2§.§<j§;
   import §9!2§.§@!!§;
   import §]!+§.§";§;
   import §switch§.Texture;
   
   public class §%§
   {
      
      public static const §@G§:String = "ChannelSlingshot";
      
      public static const §7!Q§:Number = 900;
      
      public static const §]J§:Number = 200;
      
      public static const §0!3§:Number = 200;
      
      public static const §]H§:Number = 1500;
      
      public static const §2R§:Number = 5000;
      
      public static const §8!B§:Number = 1000;
      
      public static const §=V§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var § !2§:Number;
      
      protected var §'!F§:Number;
      
      protected var §<!C§:Number;
      
      protected var §3!8§:Number;
      
      private var each:§1!8§;
      
      protected var §>!]§:Number;
      
      protected var §&v§:Number = 1;
      
      private var §6`§:Sprite;
      
      protected var §^B§:§@!!§;
      
      private var §3!2§:§'!$§;
      
      protected var §+!I§:§<!>§;
      
      private var §"@§:Number;
      
      private var §!?§:Boolean = false;
      
      private var §`L§:Boolean = false;
      
      protected var §%!6§:Boolean = false;
      
      private var §#r§:Number;
      
      private var §`!8§:Number = 0;
      
      private var §#!]§:Number = 0;
      
      private var §#!>§:Number = 0;
      
      private var §[$§:Number = 1000;
      
      private var §>D§:Number;
      
      private var §'w§:Number;
      
      private var §,$§:int;
      
      private var §+d§:Number = 0;
      
      protected var §;!V§:Number;
      
      protected var §>!C§:Number;
      
      private var §#!N§:Number = 1;
      
      private var §!m§:Number = 0;
      
      private var §null §:b2Vec2;
      
      private var §4!S§:Number = 1;
      
      public function §%§(param1:§<!>§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§+!I§ = param1;
         this.§6`§ = param2;
         this.mName = param3;
         this.each = §"!I§.§&E§(this.mName).§=!#§;
         this.§ !2§ = param4;
         this.§'!F§ = param5;
         this.§<!C§ = param4;
         this.§3!8§ = param5;
         this.§>!]§ = 0;
         this.§!?§ = false;
         this.§`L§ = false;
         this.§`!8§ = 0;
         this.§8,§();
         this.§;!V§ = 0;
      }
      
      public function §3!J§() : void
      {
         this.§!?§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§6`§)
         {
            this.§6`§.dispose();
            this.§6`§ = null;
         }
      }
      
      public function § r§(param1:Number) : void
      {
         if(!this.§`L§ || this.§!?§)
         {
            return;
         }
         if(this.§&v§ != 0)
         {
            this.§#!>§ = 0;
            this.§+d§ = 0;
            this.§>!]§ = 0;
            this.§'w§ = 0;
            this.§&v§ = 0;
         }
         param1 = Math.min(param1,this.§#r§);
         this.§ !2§ += param1 * (this.§+!I§.§ !2§ - this.§ !2§) / this.§#r§;
         this.§'!F§ += param1 * (this.§+!I§.§'!F§ - this.§'!F§) / this.§#r§;
         this.§'!F§ -= param1 / 50 * (this.§#r§ / §7!Q§);
         this.§>!]§ += param1 * (360 - this.§>!]§) / this.§#r§;
         this.§#r§ -= param1;
         if(this.§#r§ <= 0)
         {
            this.§ !2§ = this.§+!I§.§ !2§;
            this.§'!F§ = this.§+!I§.§'!F§;
            this.§`L§ = false;
            this.§!?§ = true;
            this.§>!]§ = 0;
         }
         this.§9B§();
      }
      
      public function §@u§() : void
      {
         this.§`L§ = true;
         this.§#r§ = §7!Q§;
         this.§5!2§(§1!8§.§!9§);
         if(this.§+d§ != 0)
         {
            this.§'!F§ += this.§+d§;
            this.§+d§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§!?§ && this.§;!V§ >= 0)
         {
            if(this.§>!C§ > this.§+!I§.§%v§.§,Q§.§]!Z§)
            {
               this.applyGravity(this.§+!I§.§%v§.§,Q§.§]!Z§ - this.§>!C§);
               this.§;!V§ = -1;
            }
            this.§;!V§ -= param1;
            if(this.§;!V§ <= 0)
            {
               if(this.§#!>§ > 0)
               {
                  this.§;!V§ = this.§#!>§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§>!C§))
               {
                  _loc2_ = this.§+!I§.§%v§.objects.§[P§(this.§ !2§,this.§>!C§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§;!V§ = -1;
                  }
                  else
                  {
                     this.§;!V§ = 0;
                  }
               }
               else if(!this.§+!I§.§%v§.objects.§8v§(_loc2_).§?!8§)
               {
                  this.§%!6§ = false;
                  this.§;!V§ = -1;
               }
               else if(this.§+!I§.§%v§.objects.§8v§(_loc2_).§%e§())
               {
                  this.§%!6§ = false;
                  this.§;!V§ = 2000;
               }
               else
               {
                  this.§;!V§ = 500;
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§'!F§ += param1;
         this.§>!C§ += param1;
         if(this.§>!C§ > this.§+!I§.§%v§.§,Q§.§]!Z§)
         {
            param1 = this.§>!C§ - this.§+!I§.§%v§.§,Q§.§]!Z§;
            this.§'!F§ -= param1;
            this.§>!C§ -= param1;
            this.§9B§();
            return true;
         }
         this.§9B§();
         return false;
      }
      
      public function §8,§() : void
      {
         var _loc1_:§!`§ = §"!I§.§&E§(this.mName).shape;
         if(_loc1_.§4!0§() == §!`§.§7q§)
         {
            this.§null § = _loc1_.§^D§()[0];
            this.§"@§ = _loc1_.§'n§;
         }
         else if(_loc1_.§4!0§() == §!`§.§65§)
         {
            this.§null § = new b2Vec2(0,0);
            this.§"@§ = 1.5;
         }
         this.§^B§ = this.§+!I§.§%v§.§&"§.§@T§(this.mName);
         if(!this.§^B§)
         {
            this.§-!§(null);
         }
         else
         {
            this.§-!§(this.§^B§.getFrame(0));
         }
      }
      
      public function §-!§(param1:§<j§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§+!I§.§@q§.§2!#§.§1!!§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§3!2§ == null)
         {
            this.§3!2§ = new §'!$§(_loc2_);
            this.§6`§.addChild(this.§3!2§);
         }
         else
         {
            this.§3!2§.texture = _loc2_;
         }
         if(param1)
         {
            this.§3!2§.x = -param1.pivotX - this.§null §.x / §&I§.§]!H§;
            this.§3!2§.y = -param1.pivotY - this.§null §.y / §&I§.§]!H§;
         }
         else
         {
            this.§3!2§.x = -this.§3!2§.width / 2;
            this.§3!2§.y = -this.§3!2§.height / 2;
         }
         this.§3!2§.scaleX = _loc3_;
         this.§3!2§.scaleY = _loc3_;
         this.§9B§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§`L§)
         {
            this.§#!>§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§`!T§(param1);
            this.§^!B§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§[N§(param1,param2);
            }
         }
      }
      
      public function §`!T§(param1:Number) : void
      {
         if(this.§`!8§ > 0)
         {
            this.§`!8§ -= param1;
            if(this.§`!8§ <= 0)
            {
               this.§@1§();
            }
         }
         else if(this.§#!]§ <= 0 && Math.random() * §]H§ < param1 && this.§+!I§.mSlingShotState)
         {
            this.§?$§();
         }
      }
      
      public function §@1§() : void
      {
         this.§`!8§ = 0;
         this.§-!§(this.§^B§.getFrame(0));
      }
      
      public function §?$§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§`!8§ = §]J§;
         this.§-!§(this.§^B§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §^!B§(param1:Number) : void
      {
         if(this.§#!]§ > 0)
         {
            this.§#!]§ -= param1;
            if(this.§#!]§ <= 0)
            {
               this.§%y§();
            }
         }
         else if(this.§`!8§ <= 0 && Math.random() * §2R§ < param1)
         {
            this.§5!2§();
         }
      }
      
      public function §%y§() : void
      {
         this.§#!]§ = 0;
         this.§-!§(this.§^B§.getFrame(0));
      }
      
      public function §5!2§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§#!]§ > 0)
         {
            this.§%y§();
         }
         if(this.§`!8§ > 0)
         {
            this.§@1§();
         }
         if(param1 < 0)
         {
            param1 = §1!8§.§;!,§;
         }
         this.§#!]§ = §0!3§;
         this.§-!§(this.§^B§.getSubAnimation("yell").getFrame(0));
         if(this.§!?§ || this.§`L§ || param2)
         {
            §";§.§=f§(param1,this.each);
         }
         else
         {
            §";§.§=f§(param1,this.each,§@G§);
         }
      }
      
      public function §[N§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§#!>§ > 0)
         {
            this.§#!>§ -= param1;
            if(this.§#!>§ <= 0)
            {
               ++this.§,$§;
               this.§'w§ *= 0.4;
               if(!this.§!?§ && this.§,$§ < 2)
               {
                  if(this.§,$§ > 1 && this.§'w§ < -1)
                  {
                     this.§'w§ = -1;
                  }
                  this.§>D§ = this.§'w§;
                  this.§#!>§ = §=V§;
                  this.§#!>§ *= Math.abs(this.§>D§) / 2;
                  this.§[$§ = this.§#!>§;
                  this.§>!]§ = 0;
                  this.§&v§ = 0;
               }
               else if(!this.§!?§ && param2)
               {
                  this.§;%§(2.25);
               }
               else
               {
                  this.§#!>§ = 0;
                  this.§+d§ = 0;
                  this.§>!]§ = 0;
                  this.§'w§ = 0;
               }
            }
            else
            {
               if(this.§#!>§ >= this.§[$§ / 2)
               {
                  _loc3_ = (this.§[$§ - this.§#!>§) / (this.§[$§ / 2);
                  _loc3_ = §>P§.§-"§(_loc3_);
                  this.§+d§ = _loc3_ * this.§>D§;
               }
               else
               {
                  _loc3_ = (this.§[$§ / 2 - this.§#!>§) / (this.§[$§ / 2);
                  _loc3_ = §>P§.§-"§(_loc3_,false);
                  this.§+d§ = this.§>D§ + _loc3_ * -this.§>D§;
               }
               this.§>!]§ = 360 * §>P§.§-"§((this.§[$§ - this.§#!>§) / this.§[$§) * this.§&v§;
            }
            this.§9B§();
         }
         else if(Math.random() * §8!B§ < param1 && !this.§!?§ && !this.§`L§ && !this.§%!6§)
         {
            this.§;%§();
         }
      }
      
      public function §;%§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§,$§ = 0;
         this.§#!>§ = §=V§;
         this.§+d§ = 0;
         this.§>D§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§'w§ = this.§>D§;
         this.§#!>§ *= Math.abs(this.§>D§) / 3;
         this.§[$§ = this.§#!>§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§&v§ = 0;
         }
         else if(this.§#!>§ < 350)
         {
            this.§&v§ = 0;
         }
         else
         {
            this.§&v§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§&v§ = Math.random() > 0.5 ? Number(this.§&v§) : Number(0);
         }
      }
      
      public function §9B§() : void
      {
         this.§6`§.x = this.§ !2§ / §&I§.§]!H§;
         this.§6`§.y = (this.§'!F§ + this.§+d§) / §&I§.§]!H§;
         this.§6`§.rotation = this.§>!]§ / 180 * Math.PI;
      }
      
      public function §@;§() : void
      {
         this.§%!6§ = true;
         this.§!?§ = false;
         this.§`L§ = false;
         this.§,$§ = 0;
         this.§;!V§ = 0;
         this.§#!>§ = 0;
         this.§#!>§ = 0;
         this.§+d§ = 0;
         this.§>!]§ = 0;
         this.§'w§ = 0;
         this.§&v§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§ !2§) * (param1 - this.§ !2§) + (param2 - this.§'!F§) * (param2 - this.§'!F§));
         if(_loc3_ <= this.§"@§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§ !2§ >= param3 && this.§ !2§ <= param4 && this.§'!F§ >= param1 && this.§'!F§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§ !2§ != param1 || this.§'!F§ != param2)
         {
            _loc3_ = true;
         }
         this.§ !2§ = param1;
         this.§'!F§ = param2;
         this.§;!V§ = 100;
         this.§9B§();
         if(_loc3_)
         {
            this.§+!I§.§use§();
         }
      }
      
      public function §2!;§() : §'!$§
      {
         return this.§3!2§;
      }
      
      public function get §=!]§() : Number
      {
         return this.§#!>§;
      }
      
      public function get §,!<§() : Number
      {
         return this.§;!V§;
      }
      
      public function set §,!<§(param1:Number) : void
      {
         this.§;!V§ = param1;
      }
      
      public function get §@8§() : Number
      {
         return this.§#!N§;
      }
      
      public function get §0!_§() : Boolean
      {
         return this.§!?§;
      }
      
      public function get radius() : Number
      {
         return this.§"@§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§6`§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §@8§(param1:Number) : void
      {
         this.§#!N§ = param1;
      }
      
      public function get §6H§() : Number
      {
         return this.§!m§;
      }
      
      public function set §6H§(param1:Number) : void
      {
         this.§!m§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§4!S§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§4!S§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§ !2§;
      }
      
      public function get y() : Number
      {
         return this.§'!F§;
      }
      
      public function get §5!W§() : Number
      {
         return this.§<!C§;
      }
      
      public function get §#!"§() : Number
      {
         return this.§3!8§;
      }
   }
}
