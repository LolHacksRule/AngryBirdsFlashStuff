package §9"!§
{
   import §#]§.b2Vec2;
   import §%Q§.§6G§;
   import §%Q§.§;!y§;
   import §%Q§.§@d§;
   import §0!R§.Texture;
   import §1!$§.§0!N§;
   import §1!$§.Sprite;
   import §6!D§.§"A§;
   import §6!D§.§3!K§;
   import §6o§.§>L§;
   import §9"%§.§&!r§;
   
   public class §;!M§
   {
      
      public static const §"M§:String = "ChannelSlingshot";
      
      public static const §3!$§:Number = 900;
      
      public static const § !'§:Number = 200;
      
      public static const §`,§:Number = 200;
      
      public static const §?!c§:Number = 1500;
      
      public static const §4!Y§:Number = 5000;
      
      public static const §%+§:Number = 1000;
      
      public static const § !u§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §,!k§:Number;
      
      protected var §!Q§:Number;
      
      protected var §1!E§:Number;
      
      protected var §2!o§:Number;
      
      private var §?"E§:§;!y§;
      
      protected var §@P§:Number;
      
      protected var §#!m§:Number = 1;
      
      private var §3^§:Sprite;
      
      protected var §,s§:§"A§;
      
      private var §#!5§:§0!N§;
      
      protected var §,!-§:§2a§;
      
      private var §^'§:Number;
      
      private var § M§:Boolean = false;
      
      private var §?! §:Boolean = false;
      
      protected var §]!b§:Boolean = false;
      
      private var §]<§:Number;
      
      private var §"t§:Number = 0;
      
      private var §^! §:Number = 0;
      
      private var §'"<§:Number = 0;
      
      private var §var§:Number = 1000;
      
      private var § G§:Number;
      
      private var §6"+§:Number;
      
      private var §?"%§:int;
      
      private var §="5§:Number = 0;
      
      protected var §'V§:Number;
      
      protected var §`!j§:Number;
      
      private var §'2§:Number = 1;
      
      private var §6""§:Number = 0;
      
      private var §^!y§:b2Vec2;
      
      private var §[!q§:Number = 1;
      
      public function §;!M§(param1:§2a§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§,!-§ = param1;
         this.§3^§ = param2;
         this.mName = param3;
         this.§?"E§ = §6G§.§1!P§(this.mName).§2+§;
         this.§,!k§ = param4;
         this.§!Q§ = param5;
         this.§1!E§ = param4;
         this.§2!o§ = param5;
         this.§@P§ = 0;
         this.§ M§ = false;
         this.§?! § = false;
         this.§"t§ = 0;
         this.§4§();
         this.§'V§ = 0;
      }
      
      public function §#!S§() : void
      {
         this.§ M§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§3^§)
         {
            this.§3^§.dispose();
            this.§3^§ = null;
         }
      }
      
      public function §9O§(param1:Number) : void
      {
         if(!this.§?! § || this.§ M§)
         {
            return;
         }
         if(this.§#!m§ != 0)
         {
            this.§'"<§ = 0;
            this.§="5§ = 0;
            this.§@P§ = 0;
            this.§6"+§ = 0;
            this.§#!m§ = 0;
         }
         param1 = Math.min(param1,this.§]<§);
         this.§,!k§ += param1 * (this.§,!-§.§,!k§ - this.§,!k§) / this.§]<§;
         this.§!Q§ += param1 * (this.§,!-§.§!Q§ - this.§!Q§) / this.§]<§;
         this.§!Q§ -= param1 / 50 * (this.§]<§ / §3!$§);
         this.§@P§ += param1 * (360 - this.§@P§) / this.§]<§;
         this.§]<§ -= param1;
         if(this.§]<§ <= 0)
         {
            this.§,!k§ = this.§,!-§.§,!k§;
            this.§!Q§ = this.§,!-§.§!Q§;
            this.§?! § = false;
            this.§ M§ = true;
            this.§@P§ = 0;
         }
         this.§,!7§();
      }
      
      public function §5"F§() : void
      {
         this.§?! § = true;
         this.§]<§ = §3!$§;
         this.§4!§(§;!y§.§#j§);
         if(this.§="5§ != 0)
         {
            this.§!Q§ += this.§="5§;
            this.§="5§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§ M§ && this.§'V§ >= 0)
         {
            if(this.§`!j§ > this.§,!-§.§@O§.§?l§.§'I§)
            {
               this.applyGravity(this.§,!-§.§@O§.§?l§.§'I§ - this.§`!j§);
               this.§'V§ = -1;
            }
            this.§'V§ -= param1;
            if(this.§'V§ <= 0)
            {
               if(this.§'"<§ > 0)
               {
                  this.§'V§ = this.§'"<§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§`!j§))
               {
                  _loc2_ = this.§,!-§.§@O§.objects.§!"F§(this.§,!k§,this.§`!j§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§'V§ = -1;
                  }
                  else
                  {
                     this.§'V§ = 0;
                  }
               }
               else if(!this.§,!-§.§@O§.objects.§!!A§(_loc2_).§##§)
               {
                  this.§]!b§ = false;
                  this.§'V§ = -1;
               }
               else if(this.§,!-§.§@O§.objects.§!!A§(_loc2_).§>"?§())
               {
                  this.§]!b§ = false;
                  this.§'V§ = 2000;
               }
               else
               {
                  this.§'V§ = 500;
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§!Q§ += param1;
         this.§`!j§ += param1;
         if(this.§`!j§ > this.§,!-§.§@O§.§?l§.§'I§)
         {
            param1 = this.§`!j§ - this.§,!-§.§@O§.§?l§.§'I§;
            this.§!Q§ -= param1;
            this.§`!j§ -= param1;
            this.§,!7§();
            return true;
         }
         this.§,!7§();
         return false;
      }
      
      public function §4§() : void
      {
         var _loc1_:§@d§ = §6G§.§1!P§(this.mName).shape;
         if(_loc1_.§4"1§() == §@d§.§88§)
         {
            this.§^!y§ = _loc1_.§'!;§()[0];
            this.§^'§ = _loc1_.§`w§;
         }
         else if(_loc1_.§4"1§() == §@d§.§4"B§)
         {
            this.§^!y§ = new b2Vec2(0,0);
            this.§^'§ = 1.5;
         }
         this.§,s§ = this.§,!-§.§@O§.animationManager.getAnimation(this.mName);
         if(!this.§,s§)
         {
            this.§2!8§(null);
         }
         else
         {
            this.§2!8§(this.§,s§.getFrame(0));
         }
      }
      
      public function §2!8§(param1:§3!K§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§,!-§.§8i§.textureManager.§2M§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§#!5§ == null)
         {
            this.§#!5§ = new §0!N§(_loc2_);
            this.§3^§.addChild(this.§#!5§);
         }
         else
         {
            this.§#!5§.texture = _loc2_;
         }
         if(param1)
         {
            this.§#!5§.x = -param1.pivotX - this.§^!y§.x / §9"3§.§'"F§;
            this.§#!5§.y = -param1.pivotY - this.§^!y§.y / §9"3§.§'"F§;
         }
         else
         {
            this.§#!5§.x = -this.§#!5§.width / 2;
            this.§#!5§.y = -this.§#!5§.height / 2;
         }
         this.§#!5§.scaleX = _loc3_;
         this.§#!5§.scaleY = _loc3_;
         this.§,!7§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§?! §)
         {
            this.§'"<§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§"'§(param1);
            this.§&F§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§1l§(param1,param2);
            }
         }
      }
      
      public function §"'§(param1:Number) : void
      {
         if(this.§"t§ > 0)
         {
            this.§"t§ -= param1;
            if(this.§"t§ <= 0)
            {
               this.§%!<§();
            }
         }
         else if(this.§^! § <= 0 && Math.random() * §?!c§ < param1 && this.§,!-§.mSlingShotState)
         {
            this.§-7§();
         }
      }
      
      public function §%!<§() : void
      {
         this.§"t§ = 0;
         this.§2!8§(this.§,s§.getFrame(0));
      }
      
      public function §-7§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§"t§ = § !'§;
         this.§2!8§(this.§,s§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §&F§(param1:Number) : void
      {
         if(this.§^! § > 0)
         {
            this.§^! § -= param1;
            if(this.§^! § <= 0)
            {
               this.§]s§();
            }
         }
         else if(this.§"t§ <= 0 && Math.random() * §4!Y§ < param1)
         {
            this.§4!§();
         }
      }
      
      public function §]s§() : void
      {
         this.§^! § = 0;
         this.§2!8§(this.§,s§.getFrame(0));
      }
      
      public function §4!§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§^! § > 0)
         {
            this.§]s§();
         }
         if(this.§"t§ > 0)
         {
            this.§%!<§();
         }
         if(param1 < 0)
         {
            param1 = §;!y§.§<x§;
         }
         this.§^! § = §`,§;
         this.§2!8§(this.§,s§.getSubAnimation("yell").getFrame(0));
         if(this.§ M§ || this.§?! § || param2)
         {
            §&!r§.§#"§(param1,this.§?"E§);
         }
         else
         {
            §&!r§.§#"§(param1,this.§?"E§,§"M§);
         }
      }
      
      public function §1l§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§'"<§ > 0)
         {
            this.§'"<§ -= param1;
            if(this.§'"<§ <= 0)
            {
               ++this.§?"%§;
               this.§6"+§ *= 0.4;
               if(!this.§ M§ && this.§?"%§ < 2)
               {
                  if(this.§?"%§ > 1 && this.§6"+§ < -1)
                  {
                     this.§6"+§ = -1;
                  }
                  this.§ G§ = this.§6"+§;
                  this.§'"<§ = § !u§;
                  this.§'"<§ *= Math.abs(this.§ G§) / 2;
                  this.§var§ = this.§'"<§;
                  this.§@P§ = 0;
                  this.§#!m§ = 0;
               }
               else if(!this.§ M§ && param2)
               {
                  this.§%!r§(2.25);
               }
               else
               {
                  this.§'"<§ = 0;
                  this.§="5§ = 0;
                  this.§@P§ = 0;
                  this.§6"+§ = 0;
               }
            }
            else
            {
               if(this.§'"<§ >= this.§var§ / 2)
               {
                  _loc3_ = (this.§var§ - this.§'"<§) / (this.§var§ / 2);
                  _loc3_ = §>L§.§"1§(_loc3_);
                  this.§="5§ = _loc3_ * this.§ G§;
               }
               else
               {
                  _loc3_ = (this.§var§ / 2 - this.§'"<§) / (this.§var§ / 2);
                  _loc3_ = §>L§.§"1§(_loc3_,false);
                  this.§="5§ = this.§ G§ + _loc3_ * -this.§ G§;
               }
               this.§@P§ = 360 * §>L§.§"1§((this.§var§ - this.§'"<§) / this.§var§) * this.§#!m§;
            }
            this.§,!7§();
         }
         else if(Math.random() * §%+§ < param1 && !this.§ M§ && !this.§?! § && !this.§]!b§)
         {
            this.§%!r§();
         }
      }
      
      public function §%!r§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§?"%§ = 0;
         this.§'"<§ = § !u§;
         this.§="5§ = 0;
         this.§ G§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§6"+§ = this.§ G§;
         this.§'"<§ *= Math.abs(this.§ G§) / 3;
         this.§var§ = this.§'"<§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§#!m§ = 0;
         }
         else if(this.§'"<§ < 350)
         {
            this.§#!m§ = 0;
         }
         else
         {
            this.§#!m§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§#!m§ = Math.random() > 0.5 ? Number(this.§#!m§) : Number(0);
         }
      }
      
      public function §,!7§() : void
      {
         this.§3^§.x = this.§,!k§ / §9"3§.§'"F§;
         this.§3^§.y = (this.§!Q§ + this.§="5§) / §9"3§.§'"F§;
         this.§3^§.rotation = this.§@P§ / 180 * Math.PI;
      }
      
      public function §'!5§() : void
      {
         this.§]!b§ = true;
         this.§ M§ = false;
         this.§?! § = false;
         this.§?"%§ = 0;
         this.§'V§ = 0;
         this.§'"<§ = 0;
         this.§'"<§ = 0;
         this.§="5§ = 0;
         this.§@P§ = 0;
         this.§6"+§ = 0;
         this.§#!m§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§,!k§) * (param1 - this.§,!k§) + (param2 - this.§!Q§) * (param2 - this.§!Q§));
         if(_loc3_ <= this.§^'§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§,!k§ >= param3 && this.§,!k§ <= param4 && this.§!Q§ >= param1 && this.§!Q§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§,!k§ != param1 || this.§!Q§ != param2)
         {
            _loc3_ = true;
         }
         this.§,!k§ = param1;
         this.§!Q§ = param2;
         this.§'V§ = 100;
         this.§,!7§();
         if(_loc3_)
         {
            this.§,!-§.§?!O§();
         }
      }
      
      public function §]"'§() : §0!N§
      {
         return this.§#!5§;
      }
      
      public function get §?""§() : Number
      {
         return this.§'"<§;
      }
      
      public function get §2$§() : Number
      {
         return this.§'V§;
      }
      
      public function set §2$§(param1:Number) : void
      {
         this.§'V§ = param1;
      }
      
      public function get §>! §() : Number
      {
         return this.§'2§;
      }
      
      public function get §15§() : Boolean
      {
         return this.§ M§;
      }
      
      public function get radius() : Number
      {
         return this.§^'§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§3^§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §>! §(param1:Number) : void
      {
         this.§'2§ = param1;
      }
      
      public function get §&!v§() : Number
      {
         return this.§6""§;
      }
      
      public function set §&!v§(param1:Number) : void
      {
         this.§6""§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§[!q§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§[!q§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§,!k§;
      }
      
      public function get y() : Number
      {
         return this.§!Q§;
      }
      
      public function get §1!s§() : Number
      {
         return this.§1!E§;
      }
      
      public function get §@!v§() : Number
      {
         return this.§2!o§;
      }
   }
}
