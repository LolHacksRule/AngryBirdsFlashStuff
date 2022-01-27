package §,§
{
   import §!r§.§"B§;
   import §!r§.§2k§;
   import §!r§.§3!!§;
   import §&!8§.§[g§;
   import §6!H§.b2Vec2;
   import §9t§.§"h§;
   import §9t§.§35§;
   import §>^§.§"z§;
   import §]!a§.Texture;
   import §^a§.§6p§;
   import §^a§.Sprite;
   
   public class § 3§
   {
      
      public static const §@N§:String = "ChannelSlingshot";
      
      public static const §#!2§:Number = 900;
      
      public static const §7I§:Number = 200;
      
      public static const §'!T§:Number = 200;
      
      public static const §8u§:Number = 1500;
      
      public static const §!3§:Number = 5000;
      
      public static const §^^§:Number = 1000;
      
      public static const §;q§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §7F§:Number;
      
      protected var §6_§:Number;
      
      protected var §0^§:Number;
      
      protected var § Z§:Number;
      
      private var §2s§:§"B§;
      
      protected var §!!&§:Number;
      
      protected var §9!P§:Number = 1;
      
      private var §8!2§:Sprite;
      
      protected var §,!2§:§"h§;
      
      private var §#P§:§6p§;
      
      protected var §<!<§:§7!N§;
      
      private var §?"§:Number;
      
      private var §&C§:Boolean = false;
      
      private var §[!N§:Boolean = false;
      
      protected var §@!`§:Boolean = false;
      
      private var §`!>§:Number;
      
      private var §2§:Number = 0;
      
      private var §-F§:Number = 0;
      
      private var §3L§:Number = 0;
      
      private var §%!F§:Number = 1000;
      
      private var §2!Z§:Number;
      
      private var §"!5§:Number;
      
      private var §=z§:int;
      
      private var §&%§:Number = 0;
      
      protected var §56§:Number;
      
      protected var §]!U§:Number;
      
      private var §8C§:Number = 1;
      
      private var §+?§:Number = 0;
      
      private var §!j§:b2Vec2;
      
      private var §#![§:Number = 1;
      
      public function § 3§(param1:§7!N§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§<!<§ = param1;
         this.§8!2§ = param2;
         this.mName = param3;
         this.§2s§ = §3!!§.§^!-§(this.mName).§7=§;
         this.§7F§ = param4;
         this.§6_§ = param5;
         this.§0^§ = param4;
         this.§ Z§ = param5;
         this.§!!&§ = 0;
         this.§&C§ = false;
         this.§[!N§ = false;
         this.§2§ = 0;
         this.§+!3§();
         this.§56§ = 0;
      }
      
      public function §`!h§() : void
      {
         this.§&C§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§8!2§)
         {
            this.§8!2§.dispose();
            this.§8!2§ = null;
         }
      }
      
      public function §[x§(param1:Number) : void
      {
         if(!this.§[!N§ || this.§&C§)
         {
            return;
         }
         if(this.§9!P§ != 0)
         {
            this.§3L§ = 0;
            this.§&%§ = 0;
            this.§!!&§ = 0;
            this.§"!5§ = 0;
            this.§9!P§ = 0;
         }
         param1 = Math.min(param1,this.§`!>§);
         this.§7F§ += param1 * (this.§<!<§.§7F§ - this.§7F§) / this.§`!>§;
         this.§6_§ += param1 * (this.§<!<§.§6_§ - this.§6_§) / this.§`!>§;
         this.§6_§ -= param1 / 50 * (this.§`!>§ / §#!2§);
         this.§!!&§ += param1 * (360 - this.§!!&§) / this.§`!>§;
         this.§`!>§ -= param1;
         if(this.§`!>§ <= 0)
         {
            this.§7F§ = this.§<!<§.§7F§;
            this.§6_§ = this.§<!<§.§6_§;
            this.§[!N§ = false;
            this.§&C§ = true;
            this.§!!&§ = 0;
         }
         this.§3u§();
      }
      
      public function §?C§() : void
      {
         this.§[!N§ = true;
         this.§`!>§ = §#!2§;
         this.§>!%§(§"B§.§2b§);
         if(this.§&%§ != 0)
         {
            this.§6_§ += this.§&%§;
            this.§&%§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§&C§ && this.§56§ >= 0)
         {
            if(this.§]!U§ > this.§<!<§.§^!I§.§@2§.§-S§)
            {
               this.applyGravity(this.§<!<§.§^!I§.§@2§.§-S§ - this.§]!U§);
               this.§56§ = -1;
            }
            this.§56§ -= param1;
            if(this.§56§ <= 0)
            {
               if(this.§3L§ > 0)
               {
                  this.§56§ = this.§3L§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§]!U§))
               {
                  _loc2_ = this.§<!<§.§^!I§.objects.§0P§(this.§7F§,this.§]!U§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§56§ = -1;
                  }
                  else
                  {
                     this.§56§ = 0;
                  }
               }
               else if(!this.§<!<§.§^!I§.objects.§0;§(_loc2_).§>![§)
               {
                  this.§@!`§ = false;
                  this.§56§ = -1;
               }
               else if(this.§<!<§.§^!I§.objects.§0;§(_loc2_).§>!<§())
               {
                  this.§@!`§ = false;
                  this.§56§ = 2000;
               }
               else
               {
                  this.§56§ = 500;
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§6_§ += param1;
         this.§]!U§ += param1;
         if(this.§]!U§ > this.§<!<§.§^!I§.§@2§.§-S§)
         {
            param1 = this.§]!U§ - this.§<!<§.§^!I§.§@2§.§-S§;
            this.§6_§ -= param1;
            this.§]!U§ -= param1;
            this.§3u§();
            return true;
         }
         this.§3u§();
         return false;
      }
      
      public function §+!3§() : void
      {
         var _loc1_:§2k§ = §3!!§.§^!-§(this.mName).shape;
         if(_loc1_.§'!3§() == §2k§.§#N§)
         {
            this.§!j§ = _loc1_.§&!B§()[0];
            this.§?"§ = _loc1_.§]>§;
         }
         else if(_loc1_.§'!3§() == §2k§.§<!"§)
         {
            this.§!j§ = new b2Vec2(0,0);
            this.§?"§ = 1.5;
         }
         this.§,!2§ = this.§<!<§.§^!I§.§#U§.§;5§(this.mName);
         if(!this.§,!2§)
         {
            this.§function§(null);
         }
         else
         {
            this.§function§(this.§,!2§.getFrame(0));
         }
      }
      
      public function §function§(param1:§35§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§<!<§.§,!Z§.§],§.§93§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§#P§ == null)
         {
            this.§#P§ = new §6p§(_loc2_);
            this.§8!2§.addChild(this.§#P§);
         }
         else
         {
            this.§#P§.texture = _loc2_;
         }
         if(param1)
         {
            this.§#P§.x = -param1.pivotX - this.§!j§.x / § p§.§]!E§;
            this.§#P§.y = -param1.pivotY - this.§!j§.y / § p§.§]!E§;
         }
         else
         {
            this.§#P§.x = -this.§#P§.width / 2;
            this.§#P§.y = -this.§#P§.height / 2;
         }
         this.§#P§.scaleX = _loc3_;
         this.§#P§.scaleY = _loc3_;
         this.§3u§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§[!N§)
         {
            this.§3L§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§`!_§(param1);
            this.§1I§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§#!§(param1,param2);
            }
         }
      }
      
      public function §`!_§(param1:Number) : void
      {
         if(this.§2§ > 0)
         {
            this.§2§ -= param1;
            if(this.§2§ <= 0)
            {
               this.§^!F§();
            }
         }
         else if(this.§-F§ <= 0 && Math.random() * §8u§ < param1 && this.§<!<§.mSlingShotState)
         {
            this.§[!d§();
         }
      }
      
      public function §^!F§() : void
      {
         this.§2§ = 0;
         this.§function§(this.§,!2§.getFrame(0));
      }
      
      public function §[!d§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§2§ = §7I§;
         this.§function§(this.§,!2§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §1I§(param1:Number) : void
      {
         if(this.§-F§ > 0)
         {
            this.§-F§ -= param1;
            if(this.§-F§ <= 0)
            {
               this.§`S§();
            }
         }
         else if(this.§2§ <= 0 && Math.random() * §!3§ < param1)
         {
            this.§>!%§();
         }
      }
      
      public function §`S§() : void
      {
         this.§-F§ = 0;
         this.§function§(this.§,!2§.getFrame(0));
      }
      
      public function §>!%§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§-F§ > 0)
         {
            this.§`S§();
         }
         if(this.§2§ > 0)
         {
            this.§^!F§();
         }
         if(param1 < 0)
         {
            param1 = §"B§.§+!d§;
         }
         this.§-F§ = §'!T§;
         this.§function§(this.§,!2§.getSubAnimation("yell").getFrame(0));
         if(this.§&C§ || this.§[!N§ || param2)
         {
            §[g§.§,D§(param1,this.§2s§);
         }
         else
         {
            §[g§.§,D§(param1,this.§2s§,§@N§);
         }
      }
      
      public function §#!§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§3L§ > 0)
         {
            this.§3L§ -= param1;
            if(this.§3L§ <= 0)
            {
               ++this.§=z§;
               this.§"!5§ *= 0.4;
               if(!this.§&C§ && this.§=z§ < 2)
               {
                  if(this.§=z§ > 1 && this.§"!5§ < -1)
                  {
                     this.§"!5§ = -1;
                  }
                  this.§2!Z§ = this.§"!5§;
                  this.§3L§ = §;q§;
                  this.§3L§ *= Math.abs(this.§2!Z§) / 2;
                  this.§%!F§ = this.§3L§;
                  this.§!!&§ = 0;
                  this.§9!P§ = 0;
               }
               else if(!this.§&C§ && param2)
               {
                  this.§88§(2.25);
               }
               else
               {
                  this.§3L§ = 0;
                  this.§&%§ = 0;
                  this.§!!&§ = 0;
                  this.§"!5§ = 0;
               }
            }
            else
            {
               if(this.§3L§ >= this.§%!F§ / 2)
               {
                  _loc3_ = (this.§%!F§ - this.§3L§) / (this.§%!F§ / 2);
                  _loc3_ = §"z§.§,j§(_loc3_);
                  this.§&%§ = _loc3_ * this.§2!Z§;
               }
               else
               {
                  _loc3_ = (this.§%!F§ / 2 - this.§3L§) / (this.§%!F§ / 2);
                  _loc3_ = §"z§.§,j§(_loc3_,false);
                  this.§&%§ = this.§2!Z§ + _loc3_ * -this.§2!Z§;
               }
               this.§!!&§ = 360 * §"z§.§,j§((this.§%!F§ - this.§3L§) / this.§%!F§) * this.§9!P§;
            }
            this.§3u§();
         }
         else if(Math.random() * §^^§ < param1 && !this.§&C§ && !this.§[!N§ && !this.§@!`§)
         {
            this.§88§();
         }
      }
      
      public function §88§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§=z§ = 0;
         this.§3L§ = §;q§;
         this.§&%§ = 0;
         this.§2!Z§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§"!5§ = this.§2!Z§;
         this.§3L§ *= Math.abs(this.§2!Z§) / 3;
         this.§%!F§ = this.§3L§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§9!P§ = 0;
         }
         else if(this.§3L§ < 350)
         {
            this.§9!P§ = 0;
         }
         else
         {
            this.§9!P§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§9!P§ = Math.random() > 0.5 ? Number(this.§9!P§) : Number(0);
         }
      }
      
      public function §3u§() : void
      {
         this.§8!2§.x = this.§7F§ / § p§.§]!E§;
         this.§8!2§.y = (this.§6_§ + this.§&%§) / § p§.§]!E§;
         this.§8!2§.rotation = this.§!!&§ / 180 * Math.PI;
      }
      
      public function §42§() : void
      {
         this.§@!`§ = true;
         this.§&C§ = false;
         this.§[!N§ = false;
         this.§=z§ = 0;
         this.§56§ = 0;
         this.§3L§ = 0;
         this.§3L§ = 0;
         this.§&%§ = 0;
         this.§!!&§ = 0;
         this.§"!5§ = 0;
         this.§9!P§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§7F§) * (param1 - this.§7F§) + (param2 - this.§6_§) * (param2 - this.§6_§));
         if(_loc3_ <= this.§?"§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§7F§ >= param3 && this.§7F§ <= param4 && this.§6_§ >= param1 && this.§6_§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§7F§ != param1 || this.§6_§ != param2)
         {
            _loc3_ = true;
         }
         this.§7F§ = param1;
         this.§6_§ = param2;
         this.§56§ = 100;
         this.§3u§();
         if(_loc3_)
         {
            this.§<!<§.§6$§();
         }
      }
      
      public function §?7§() : §6p§
      {
         return this.§#P§;
      }
      
      public function get §-!_§() : Number
      {
         return this.§3L§;
      }
      
      public function get §';§() : Number
      {
         return this.§56§;
      }
      
      public function set §';§(param1:Number) : void
      {
         this.§56§ = param1;
      }
      
      public function get §<!J§() : Number
      {
         return this.§8C§;
      }
      
      public function get §1!S§() : Boolean
      {
         return this.§&C§;
      }
      
      public function get radius() : Number
      {
         return this.§?"§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§8!2§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §<!J§(param1:Number) : void
      {
         this.§8C§ = param1;
      }
      
      public function get §8M§() : Number
      {
         return this.§+?§;
      }
      
      public function set §8M§(param1:Number) : void
      {
         this.§+?§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§#![§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§#![§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§7F§;
      }
      
      public function get y() : Number
      {
         return this.§6_§;
      }
      
      public function get §04§() : Number
      {
         return this.§0^§;
      }
      
      public function get §-@§() : Number
      {
         return this.§ Z§;
      }
      
      public function §1!!§() : Boolean
      {
         return this.§@!`§;
      }
   }
}
