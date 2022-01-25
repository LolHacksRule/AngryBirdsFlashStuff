package §4A§
{
   import §#m§.§3T§;
   import §#m§.§;N§;
   import §#m§.§`5§;
   import §+!S§.Texture;
   import §,!Q§.§%^§;
   import §,!Q§.Sprite;
   import §2l§.§4!Q§;
   import §2l§.§63§;
   import §9C§.§4!G§;
   import §<!8§.b2Vec2;
   import §?@§.§^k§;
   
   public class §>!=§
   {
      
      public static const §]W§:String = "ChannelSlingshot";
      
      public static const §,a§:Number = 900;
      
      public static const §3!M§:Number = 200;
      
      public static const §8!U§:Number = 200;
      
      public static const §?c§:Number = 1500;
      
      public static const §4L§:Number = 5000;
      
      public static const §0k§:Number = 1000;
      
      public static const §;!I§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §03§:Number;
      
      protected var §5,§:Number;
      
      protected var §8&§:Number;
      
      protected var §-A§:Number;
      
      private var §+=§:§`5§;
      
      protected var §1Q§:Number;
      
      protected var §"r§:Number = 1;
      
      private var §]!+§:Sprite;
      
      protected var §2!F§:§63§;
      
      private var §;5§:§%^§;
      
      protected var §"@§:§,!^§;
      
      private var §7!#§:Number;
      
      private var §,P§:Boolean = false;
      
      private var §%%§:Boolean = false;
      
      protected var §3!N§:Boolean = false;
      
      private var §2u§:Number;
      
      private var §9! §:Number = 0;
      
      private var §`M§:Number = 0;
      
      private var §6!0§:Number = 0;
      
      private var §<!§:Number = 1000;
      
      private var §0X§:Number;
      
      private var §35§:Number;
      
      private var §>+§:int;
      
      private var §`S§:Number = 0;
      
      protected var §;!5§:Number;
      
      protected var §%I§:Number;
      
      private var §`!H§:Number = 1;
      
      private var §!3§:Number = 0;
      
      private var §3g§:b2Vec2;
      
      private var §^!Y§:Number = 1;
      
      public function §>!=§(param1:§,!^§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§"@§ = param1;
         this.§]!+§ = param2;
         this.mName = param3;
         this.§+=§ = §3T§.§,!G§(this.mName).§?b§;
         this.§03§ = param4;
         this.§5,§ = param5;
         this.§8&§ = param4;
         this.§-A§ = param5;
         this.§1Q§ = 0;
         this.§,P§ = false;
         this.§%%§ = false;
         this.§9! § = 0;
         this.§?!H§();
         this.§;!5§ = 0;
      }
      
      public function §!!2§() : void
      {
         this.§,P§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§]!+§)
         {
            this.§]!+§.dispose();
            this.§]!+§ = null;
         }
      }
      
      public function §?x§(param1:Number) : void
      {
         if(!this.§%%§ || this.§,P§)
         {
            return;
         }
         if(this.§"r§ != 0)
         {
            this.§6!0§ = 0;
            this.§`S§ = 0;
            this.§1Q§ = 0;
            this.§35§ = 0;
            this.§"r§ = 0;
         }
         param1 = Math.min(param1,this.§2u§);
         this.§03§ += param1 * (this.§"@§.§03§ - this.§03§) / this.§2u§;
         this.§5,§ += param1 * (this.§"@§.§5,§ - this.§5,§) / this.§2u§;
         this.§5,§ -= param1 / 50 * (this.§2u§ / §,a§);
         this.§1Q§ += param1 * (360 - this.§1Q§) / this.§2u§;
         this.§2u§ -= param1;
         if(this.§2u§ <= 0)
         {
            this.§03§ = this.§"@§.§03§;
            this.§5,§ = this.§"@§.§5,§;
            this.§%%§ = false;
            this.§,P§ = true;
            this.§1Q§ = 0;
         }
         this.§]Z§();
      }
      
      public function §`4§() : void
      {
         this.§%%§ = true;
         this.§2u§ = §,a§;
         this.§'!2§(§`5§.§0u§);
         if(this.§`S§ != 0)
         {
            this.§5,§ += this.§`S§;
            this.§`S§ = 0;
         }
      }
      
      public function §^!N§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§,P§ && this.§;!5§ >= 0)
         {
            if(this.§%I§ > this.§"@§.mLevelMain.§@I§.§?!K§)
            {
               this.§2A§(this.§"@§.mLevelMain.§@I§.§?!K§ - this.§%I§);
               this.§;!5§ = -1;
            }
            this.§;!5§ -= param1;
            if(this.§;!5§ <= 0)
            {
               if(this.§6!0§ > 0)
               {
                  this.§;!5§ = this.§6!0§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§%I§))
               {
                  _loc2_ = this.§"@§.mLevelMain.objects.§%!+§(this.§03§,this.§%I§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§2A§(param1 / 100))
                  {
                     this.§;!5§ = -1;
                  }
                  else
                  {
                     this.§;!5§ = 0;
                  }
               }
               else if(!this.§"@§.mLevelMain.objects.§2!-§(_loc2_).§6!E§)
               {
                  this.§3!N§ = false;
                  this.§;!5§ = -1;
               }
               else if(this.§"@§.mLevelMain.objects.§2!-§(_loc2_).§]!<§())
               {
                  this.§3!N§ = false;
                  this.§;!5§ = 2000;
               }
               else
               {
                  this.§;!5§ = 500;
               }
            }
         }
      }
      
      public function §2A§(param1:Number) : Boolean
      {
         this.§5,§ += param1;
         this.§%I§ += param1;
         if(this.§%I§ > this.§"@§.mLevelMain.§@I§.§?!K§)
         {
            param1 = this.§%I§ - this.§"@§.mLevelMain.§@I§.§?!K§;
            this.§5,§ -= param1;
            this.§%I§ -= param1;
            this.§]Z§();
            return true;
         }
         this.§]Z§();
         return false;
      }
      
      public function §?!H§() : void
      {
         var _loc1_:§;N§ = §3T§.§,!G§(this.mName).shape;
         if(_loc1_.§<!>§() == §;N§.§,o§)
         {
            this.§3g§ = _loc1_.§+!!§()[0];
            this.§7!#§ = _loc1_.§8a§;
         }
         else if(_loc1_.§<!>§() == §;N§.§4!,§)
         {
            this.§3g§ = new b2Vec2(0,0);
            this.§7!#§ = 1.5;
         }
         this.§2!F§ = this.§"@§.mLevelMain.§0!+§.§set §(this.mName);
         if(!this.§2!F§)
         {
            this.§>!,§(null);
         }
         else
         {
            this.§>!,§(this.§2!F§.getFrame(0));
         }
      }
      
      public function §>!,§(param1:§4!Q§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§"@§.§'!B§.textureManager.§@!>§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§;5§ == null)
         {
            this.§;5§ = new §%^§(_loc2_);
            this.§]!+§.addChild(this.§;5§);
         }
         else
         {
            this.§;5§.texture = _loc2_;
         }
         if(param1)
         {
            this.§;5§.x = -param1.pivotX - this.§3g§.x / §&_§.§5-§;
            this.§;5§.y = -param1.pivotY - this.§3g§.y / §&_§.§5-§;
         }
         else
         {
            this.§;5§.x = -this.§;5§.width / 2;
            this.§;5§.y = -this.§;5§.height / 2;
         }
         this.§;5§.scaleX = _loc3_;
         this.§;5§.scaleY = _loc3_;
         this.§]Z§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§^!N§(param1);
         if(this.§%%§)
         {
            this.§6!0§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§&^§(param1);
            this.§%!^§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§1!,§(param1,param2);
            }
         }
      }
      
      public function §&^§(param1:Number) : void
      {
         if(this.§9! § > 0)
         {
            this.§9! § -= param1;
            if(this.§9! § <= 0)
            {
               this.§5'§();
            }
         }
         else if(this.§`M§ <= 0 && Math.random() * §?c§ < param1 && this.§"@§.mSlingShotState)
         {
            this.§6B§();
         }
      }
      
      public function §5'§() : void
      {
         this.§9! § = 0;
         this.§>!,§(this.§2!F§.getFrame(0));
      }
      
      public function §6B§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§9! § = §3!M§;
         this.§>!,§(this.§2!F§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §%!^§(param1:Number) : void
      {
         if(this.§`M§ > 0)
         {
            this.§`M§ -= param1;
            if(this.§`M§ <= 0)
            {
               this.§[8§();
            }
         }
         else if(this.§9! § <= 0 && Math.random() * §4L§ < param1)
         {
            this.§'!2§();
         }
      }
      
      public function §[8§() : void
      {
         this.§`M§ = 0;
         this.§>!,§(this.§2!F§.getFrame(0));
      }
      
      public function §'!2§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§`M§ > 0)
         {
            this.§[8§();
         }
         if(this.§9! § > 0)
         {
            this.§5'§();
         }
         if(param1 < 0)
         {
            param1 = §`5§.§3a§;
         }
         this.§`M§ = §8!U§;
         this.§>!,§(this.§2!F§.getSubAnimation("yell").getFrame(0));
         if(this.§,P§ || this.§%%§ || param2)
         {
            §4!G§.§14§(param1,this.§+=§);
         }
         else
         {
            §4!G§.§14§(param1,this.§+=§,§]W§);
         }
      }
      
      public function §1!,§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§6!0§ > 0)
         {
            this.§6!0§ -= param1;
            if(this.§6!0§ <= 0)
            {
               ++this.§>+§;
               this.§35§ *= 0.4;
               if(!this.§,P§ && this.§>+§ < 2)
               {
                  if(this.§>+§ > 1 && this.§35§ < -1)
                  {
                     this.§35§ = -1;
                  }
                  this.§0X§ = this.§35§;
                  this.§6!0§ = §;!I§;
                  this.§6!0§ *= Math.abs(this.§0X§) / 2;
                  this.§<!§ = this.§6!0§;
                  this.§1Q§ = 0;
                  this.§"r§ = 0;
               }
               else if(!this.§,P§ && param2)
               {
                  this.§"!_§(2.25);
               }
               else
               {
                  this.§6!0§ = 0;
                  this.§`S§ = 0;
                  this.§1Q§ = 0;
                  this.§35§ = 0;
               }
            }
            else
            {
               if(this.§6!0§ >= this.§<!§ / 2)
               {
                  _loc3_ = (this.§<!§ - this.§6!0§) / (this.§<!§ / 2);
                  _loc3_ = §^k§.§5V§(_loc3_);
                  this.§`S§ = _loc3_ * this.§0X§;
               }
               else
               {
                  _loc3_ = (this.§<!§ / 2 - this.§6!0§) / (this.§<!§ / 2);
                  _loc3_ = §^k§.§5V§(_loc3_,false);
                  this.§`S§ = this.§0X§ + _loc3_ * -this.§0X§;
               }
               this.§1Q§ = 360 * §^k§.§5V§((this.§<!§ - this.§6!0§) / this.§<!§) * this.§"r§;
            }
            this.§]Z§();
         }
         else if(Math.random() * §0k§ < param1 && !this.§,P§ && !this.§%%§ && !this.§3!N§)
         {
            this.§"!_§();
         }
      }
      
      public function §"!_§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§>+§ = 0;
         this.§6!0§ = §;!I§;
         this.§`S§ = 0;
         this.§0X§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§35§ = this.§0X§;
         this.§6!0§ *= Math.abs(this.§0X§) / 3;
         this.§<!§ = this.§6!0§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§"r§ = 0;
         }
         else if(this.§6!0§ < 350)
         {
            this.§"r§ = 0;
         }
         else
         {
            this.§"r§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§"r§ = Math.random() > 0.5 ? Number(this.§"r§) : Number(0);
         }
      }
      
      public function §]Z§() : void
      {
         this.§]!+§.x = this.§03§ / §&_§.§5-§;
         this.§]!+§.y = (this.§5,§ + this.§`S§) / §&_§.§5-§;
         this.§]!+§.rotation = this.§1Q§ / 180 * Math.PI;
      }
      
      public function §6!M§() : void
      {
         this.§3!N§ = true;
         this.§,P§ = false;
         this.§%%§ = false;
         this.§>+§ = 0;
         this.§;!5§ = 0;
         this.§6!0§ = 0;
         this.§6!0§ = 0;
         this.§`S§ = 0;
         this.§1Q§ = 0;
         this.§35§ = 0;
         this.§"r§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§03§) * (param1 - this.§03§) + (param2 - this.§5,§) * (param2 - this.§5,§));
         if(_loc3_ <= this.§7!#§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§03§ >= param3 && this.§03§ <= param4 && this.§5,§ >= param1 && this.§5,§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§03§ != param1 || this.§5,§ != param2)
         {
            _loc3_ = true;
         }
         this.§03§ = param1;
         this.§5,§ = param2;
         this.§;!5§ = 100;
         this.§]Z§();
         if(_loc3_)
         {
            this.§"@§.§@!%§();
         }
      }
      
      public function §@d§() : §%^§
      {
         return this.§;5§;
      }
      
      public function get §'G§() : Number
      {
         return this.§6!0§;
      }
      
      public function get §2E§() : Number
      {
         return this.§;!5§;
      }
      
      public function set §2E§(param1:Number) : void
      {
         this.§;!5§ = param1;
      }
      
      public function get §-;§() : Number
      {
         return this.§`!H§;
      }
      
      public function get §6M§() : Boolean
      {
         return this.§,P§;
      }
      
      public function get radius() : Number
      {
         return this.§7!#§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§]!+§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §-;§(param1:Number) : void
      {
         this.§`!H§ = param1;
      }
      
      public function get §<B§() : Number
      {
         return this.§!3§;
      }
      
      public function set §<B§(param1:Number) : void
      {
         this.§!3§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§^!Y§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§^!Y§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§03§;
      }
      
      public function get y() : Number
      {
         return this.§5,§;
      }
      
      public function get §;!S§() : Number
      {
         return this.§8&§;
      }
      
      public function get §]L§() : Number
      {
         return this.§-A§;
      }
   }
}
