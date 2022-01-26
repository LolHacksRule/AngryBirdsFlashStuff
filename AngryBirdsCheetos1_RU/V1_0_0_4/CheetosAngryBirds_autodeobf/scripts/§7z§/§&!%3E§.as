package §7z§
{
   import § T§.§"!2§;
   import §1!A§.§;a§;
   import §1!A§.Sprite;
   import §5!K§.b2Vec2;
   import §5x§.§&o§;
   import §5x§.§]R§;
   import §5x§.override;
   import §8K§.§4i§;
   import §8K§.§9!S§;
   import §^!&§.§;A§;
   import §^n§.Texture;
   
   public class §&!>§
   {
      
      public static const §;!M§:String = "ChannelSlingshot";
      
      public static const §-b§:Number = 900;
      
      public static const §-!6§:Number = 200;
      
      public static const §2X§:Number = 200;
      
      public static const §!!J§:Number = 1500;
      
      public static const §?!M§:Number = 5000;
      
      public static const §[F§:Number = 1000;
      
      public static const §!9§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §6!Z§:Number;
      
      protected var §,!A§:Number;
      
      protected var §[?§:Number;
      
      protected var §^!<§:Number;
      
      private var §,N§:§&o§;
      
      protected var §3!`§:Number;
      
      protected var § G§:Number = 1;
      
      private var §0!5§:Sprite;
      
      protected var §'!G§:§4i§;
      
      private var §2!L§:§;a§;
      
      protected var §"D§:§0!D§;
      
      private var § ;§:Number;
      
      private var §=I§:Boolean = false;
      
      private var §<i§:Boolean = false;
      
      protected var §[m§:Boolean = false;
      
      private var §!>§:Number;
      
      private var §[2§:Number = 0;
      
      private var §2!+§:Number = 0;
      
      private var §6!I§:Number = 0;
      
      private var §#1§:Number = 1000;
      
      private var §'s§:Number;
      
      private var §+S§:Number;
      
      private var §1"§:int;
      
      private var §>S§:Number = 0;
      
      protected var §3B§:Number;
      
      protected var §9d§:Number;
      
      private var §9!B§:Number = 1;
      
      private var § q§:Number = 0;
      
      private var §&!7§:b2Vec2;
      
      private var §+o§:Number = 1;
      
      public function §&!>§(param1:§0!D§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§"D§ = param1;
         this.§0!5§ = param2;
         this.mName = param3;
         this.§,N§ = §]R§.§;!H§(this.mName).§8c§;
         this.§6!Z§ = param4;
         this.§,!A§ = param5;
         this.§[?§ = param4;
         this.§^!<§ = param5;
         this.§3!`§ = 0;
         this.§=I§ = false;
         this.§<i§ = false;
         this.§[2§ = 0;
         this.§'!&§();
         this.§3B§ = 0;
      }
      
      public function §+T§() : void
      {
         this.§=I§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§0!5§)
         {
            this.§0!5§.dispose();
            this.§0!5§ = null;
         }
      }
      
      public function §['§(param1:Number) : void
      {
         if(!this.§<i§ || this.§=I§)
         {
            return;
         }
         if(this.§ G§ != 0)
         {
            this.§6!I§ = 0;
            this.§>S§ = 0;
            this.§3!`§ = 0;
            this.§+S§ = 0;
            this.§ G§ = 0;
         }
         param1 = Math.min(param1,this.§!>§);
         this.§6!Z§ += param1 * (this.§"D§.§6!Z§ - this.§6!Z§) / this.§!>§;
         this.§,!A§ += param1 * (this.§"D§.§,!A§ - this.§,!A§) / this.§!>§;
         this.§,!A§ -= param1 / 50 * (this.§!>§ / §-b§);
         this.§3!`§ += param1 * (360 - this.§3!`§) / this.§!>§;
         this.§!>§ -= param1;
         if(this.§!>§ <= 0)
         {
            this.§6!Z§ = this.§"D§.§6!Z§;
            this.§,!A§ = this.§"D§.§,!A§;
            this.§<i§ = false;
            this.§=I§ = true;
            this.§3!`§ = 0;
         }
         this.§3!&§();
      }
      
      public function §1!M§() : void
      {
         this.§<i§ = true;
         this.§!>§ = §-b§;
         this.§9K§(§&o§.§3!3§);
         if(this.§>S§ != 0)
         {
            this.§,!A§ += this.§>S§;
            this.§>S§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§=I§ && this.§3B§ >= 0)
         {
            if(this.§9d§ > this.§"D§.§^'§.§7Y§.§-q§)
            {
               this.applyGravity(this.§"D§.§^'§.§7Y§.§-q§ - this.§9d§);
               this.§3B§ = -1;
            }
            this.§3B§ -= param1;
            if(this.§3B§ <= 0)
            {
               if(this.§6!I§ > 0)
               {
                  this.§3B§ = this.§6!I§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§9d§))
               {
                  _loc2_ = this.§"D§.§^'§.objects.§8!I§(this.§6!Z§,this.§9d§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§3B§ = -1;
                  }
                  else
                  {
                     this.§3B§ = 0;
                  }
               }
               else if(!this.§"D§.§^'§.objects.§7X§(_loc2_).§!X§)
               {
                  this.§[m§ = false;
                  this.§3B§ = -1;
               }
               else if(this.§"D§.§^'§.objects.§7X§(_loc2_).§2!H§())
               {
                  this.§[m§ = false;
                  this.§3B§ = 2000;
               }
               else
               {
                  this.§3B§ = 500;
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§,!A§ += param1;
         this.§9d§ += param1;
         if(this.§9d§ > this.§"D§.§^'§.§7Y§.§-q§)
         {
            param1 = this.§9d§ - this.§"D§.§^'§.§7Y§.§-q§;
            this.§,!A§ -= param1;
            this.§9d§ -= param1;
            this.§3!&§();
            return true;
         }
         this.§3!&§();
         return false;
      }
      
      public function §'!&§() : void
      {
         var _loc1_:override = §]R§.§;!H§(this.mName).shape;
         if(_loc1_.§,!S§() == override.§&d§)
         {
            this.§&!7§ = _loc1_.§26§()[0];
            this.§ ;§ = _loc1_.§^S§;
         }
         else if(_loc1_.§,!S§() == override.§[6§)
         {
            this.§&!7§ = new b2Vec2(0,0);
            this.§ ;§ = 1.5;
         }
         this.§'!G§ = this.§"D§.§^'§.§]]§.§<]§(this.mName);
         if(!this.§'!G§)
         {
            this.§;K§(null);
         }
         else
         {
            this.§;K§(this.§'!G§.getFrame(0));
         }
      }
      
      public function §;K§(param1:§9!S§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§"D§.§6J§.§^!"§.§,!^§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§2!L§ == null)
         {
            this.§2!L§ = new §;a§(_loc2_);
            this.§0!5§.addChild(this.§2!L§);
         }
         else
         {
            this.§2!L§.texture = _loc2_;
         }
         if(param1)
         {
            this.§2!L§.x = -param1.pivotX - this.§&!7§.x / §]!-§.§>C§;
            this.§2!L§.y = -param1.pivotY - this.§&!7§.y / §]!-§.§>C§;
         }
         else
         {
            this.§2!L§.x = -this.§2!L§.width / 2;
            this.§2!L§.y = -this.§2!L§.height / 2;
         }
         this.§2!L§.scaleX = _loc3_;
         this.§2!L§.scaleY = _loc3_;
         this.§3!&§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§<i§)
         {
            this.§6!I§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§>!%§(param1);
            this.§3!D§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§&![§(param1,param2);
            }
         }
      }
      
      public function §>!%§(param1:Number) : void
      {
         if(this.§[2§ > 0)
         {
            this.§[2§ -= param1;
            if(this.§[2§ <= 0)
            {
               this.§@4§();
            }
         }
         else if(this.§2!+§ <= 0 && Math.random() * §!!J§ < param1 && this.§"D§.mSlingShotState)
         {
            this.§8g§();
         }
      }
      
      public function §@4§() : void
      {
         this.§[2§ = 0;
         this.§;K§(this.§'!G§.getFrame(0));
      }
      
      public function §8g§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§[2§ = §-!6§;
         this.§;K§(this.§'!G§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §3!D§(param1:Number) : void
      {
         if(this.§2!+§ > 0)
         {
            this.§2!+§ -= param1;
            if(this.§2!+§ <= 0)
            {
               this.§!j§();
            }
         }
         else if(this.§[2§ <= 0 && Math.random() * §?!M§ < param1)
         {
            this.§9K§();
         }
      }
      
      public function §!j§() : void
      {
         this.§2!+§ = 0;
         this.§;K§(this.§'!G§.getFrame(0));
      }
      
      public function §9K§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§2!+§ > 0)
         {
            this.§!j§();
         }
         if(this.§[2§ > 0)
         {
            this.§@4§();
         }
         if(param1 < 0)
         {
            param1 = §&o§.§8!7§;
         }
         this.§2!+§ = §2X§;
         this.§;K§(this.§'!G§.getSubAnimation("yell").getFrame(0));
         if(this.§=I§ || this.§<i§ || param2)
         {
            §"!2§.§#b§(param1,this.§,N§);
         }
         else
         {
            §"!2§.§#b§(param1,this.§,N§,§;!M§);
         }
      }
      
      public function §&![§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§6!I§ > 0)
         {
            this.§6!I§ -= param1;
            if(this.§6!I§ <= 0)
            {
               ++this.§1"§;
               this.§+S§ *= 0.4;
               if(!this.§=I§ && this.§1"§ < 2)
               {
                  if(this.§1"§ > 1 && this.§+S§ < -1)
                  {
                     this.§+S§ = -1;
                  }
                  this.§'s§ = this.§+S§;
                  this.§6!I§ = §!9§;
                  this.§6!I§ *= Math.abs(this.§'s§) / 2;
                  this.§#1§ = this.§6!I§;
                  this.§3!`§ = 0;
                  this.§ G§ = 0;
               }
               else if(!this.§=I§ && param2)
               {
                  this.§,2§(2.25);
               }
               else
               {
                  this.§6!I§ = 0;
                  this.§>S§ = 0;
                  this.§3!`§ = 0;
                  this.§+S§ = 0;
               }
            }
            else
            {
               if(this.§6!I§ >= this.§#1§ / 2)
               {
                  _loc3_ = (this.§#1§ - this.§6!I§) / (this.§#1§ / 2);
                  _loc3_ = §;A§.§ +§(_loc3_);
                  this.§>S§ = _loc3_ * this.§'s§;
               }
               else
               {
                  _loc3_ = (this.§#1§ / 2 - this.§6!I§) / (this.§#1§ / 2);
                  _loc3_ = §;A§.§ +§(_loc3_,false);
                  this.§>S§ = this.§'s§ + _loc3_ * -this.§'s§;
               }
               this.§3!`§ = 360 * §;A§.§ +§((this.§#1§ - this.§6!I§) / this.§#1§) * this.§ G§;
            }
            this.§3!&§();
         }
         else if(Math.random() * §[F§ < param1 && !this.§=I§ && !this.§<i§ && !this.§[m§)
         {
            this.§,2§();
         }
      }
      
      public function §,2§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§1"§ = 0;
         this.§6!I§ = §!9§;
         this.§>S§ = 0;
         this.§'s§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§+S§ = this.§'s§;
         this.§6!I§ *= Math.abs(this.§'s§) / 3;
         this.§#1§ = this.§6!I§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§ G§ = 0;
         }
         else if(this.§6!I§ < 350)
         {
            this.§ G§ = 0;
         }
         else
         {
            this.§ G§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§ G§ = Math.random() > 0.5 ? Number(this.§ G§) : Number(0);
         }
      }
      
      public function §3!&§() : void
      {
         this.§0!5§.x = this.§6!Z§ / §]!-§.§>C§;
         this.§0!5§.y = (this.§,!A§ + this.§>S§) / §]!-§.§>C§;
         this.§0!5§.rotation = this.§3!`§ / 180 * Math.PI;
      }
      
      public function §`!4§() : void
      {
         this.§[m§ = true;
         this.§=I§ = false;
         this.§<i§ = false;
         this.§1"§ = 0;
         this.§3B§ = 0;
         this.§6!I§ = 0;
         this.§6!I§ = 0;
         this.§>S§ = 0;
         this.§3!`§ = 0;
         this.§+S§ = 0;
         this.§ G§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§6!Z§) * (param1 - this.§6!Z§) + (param2 - this.§,!A§) * (param2 - this.§,!A§));
         if(_loc3_ <= this.§ ;§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§6!Z§ >= param3 && this.§6!Z§ <= param4 && this.§,!A§ >= param1 && this.§,!A§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§6!Z§ != param1 || this.§,!A§ != param2)
         {
            _loc3_ = true;
         }
         this.§6!Z§ = param1;
         this.§,!A§ = param2;
         this.§3B§ = 100;
         this.§3!&§();
         if(_loc3_)
         {
            this.§"D§.§8h§();
         }
      }
      
      public function §[!O§() : §;a§
      {
         return this.§2!L§;
      }
      
      public function get §=!4§() : Number
      {
         return this.§6!I§;
      }
      
      public function get §-!<§() : Number
      {
         return this.§3B§;
      }
      
      public function set §-!<§(param1:Number) : void
      {
         this.§3B§ = param1;
      }
      
      public function get §4!T§() : Number
      {
         return this.§9!B§;
      }
      
      public function get §^!P§() : Boolean
      {
         return this.§=I§;
      }
      
      public function get radius() : Number
      {
         return this.§ ;§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§0!5§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §4!T§(param1:Number) : void
      {
         this.§9!B§ = param1;
      }
      
      public function get §-w§() : Number
      {
         return this.§ q§;
      }
      
      public function set §-w§(param1:Number) : void
      {
         this.§ q§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§+o§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§+o§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§6!Z§;
      }
      
      public function get y() : Number
      {
         return this.§,!A§;
      }
      
      public function get §%!F§() : Number
      {
         return this.§[?§;
      }
      
      public function get §@3§() : Number
      {
         return this.§^!<§;
      }
   }
}
