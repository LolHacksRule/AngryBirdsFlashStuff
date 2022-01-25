package §2!G§
{
   import §#B§.§ ]§;
   import §+N§.§%H§;
   import §+N§.§=!+§;
   import §,-§.§#o§;
   import §,-§.§'i§;
   import §,-§.§;!F§;
   import §;h§.b2Vec2;
   import §<!!§.§ G§;
   import §<!$§.Sprite;
   import §<!$§.§[!5§;
   import §@'§.Texture;
   
   public class §,!8§
   {
      
      public static const §=H§:String = "ChannelSlingshot";
      
      public static const §4!"§:Number = 900;
      
      public static const §;!A§:Number = 200;
      
      public static const §>!-§:Number = 200;
      
      public static const §5!F§:Number = 1500;
      
      public static const §!q§:Number = 5000;
      
      public static const §2e§:Number = 1000;
      
      public static const §^A§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §;i§:Number;
      
      protected var §%i§:Number;
      
      protected var §7;§:Number;
      
      protected var §9!§:Number;
      
      private var §0A§:§#o§;
      
      protected var §33§:Number;
      
      protected var §'!I§:Number = 1;
      
      private var §1!?§:Sprite;
      
      protected var §=r§:§%H§;
      
      private var §@K§:§[!5§;
      
      protected var §4^§:§ U§;
      
      private var §`!c§:Number;
      
      private var §[!T§:Boolean = false;
      
      private var §=!H§:Boolean = false;
      
      protected var §67§:Boolean = false;
      
      private var §8t§:Number;
      
      private var §"!]§:Number = 0;
      
      private var §-w§:Number = 0;
      
      private var §`I§:Number = 0;
      
      private var §>!#§:Number = 1000;
      
      private var §>!§:Number;
      
      private var §7!+§:Number;
      
      private var §&§:int;
      
      private var §`p§:Number = 0;
      
      protected var §`&§:Number;
      
      protected var §<!R§:Number;
      
      private var §'!V§:Number = 1;
      
      private var §!!9§:Number = 0;
      
      private var §58§:b2Vec2;
      
      private var §3!T§:Number = 1;
      
      public function §,!8§(param1:§ U§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§4^§ = param1;
         this.§1!?§ = param2;
         this.mName = param3;
         this.§0A§ = §'i§.§6!R§(this.mName).§-!1§;
         this.§;i§ = param4;
         this.§%i§ = param5;
         this.§7;§ = param4;
         this.§9!§ = param5;
         this.§33§ = 0;
         this.§[!T§ = false;
         this.§=!H§ = false;
         this.§"!]§ = 0;
         this.§!g§();
         this.§`&§ = 0;
      }
      
      public function §+!9§() : void
      {
         this.§[!T§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§1!?§)
         {
            this.§1!?§.dispose();
            this.§1!?§ = null;
         }
      }
      
      public function §<b§(param1:Number) : void
      {
         if(!this.§=!H§ || this.§[!T§)
         {
            return;
         }
         if(this.§'!I§ != 0)
         {
            this.§`I§ = 0;
            this.§`p§ = 0;
            this.§33§ = 0;
            this.§7!+§ = 0;
            this.§'!I§ = 0;
         }
         param1 = Math.min(param1,this.§8t§);
         this.§;i§ += param1 * (this.§4^§.§;i§ - this.§;i§) / this.§8t§;
         this.§%i§ += param1 * (this.§4^§.§%i§ - this.§%i§) / this.§8t§;
         this.§%i§ -= param1 / 50 * (this.§8t§ / §4!"§);
         this.§33§ += param1 * (360 - this.§33§) / this.§8t§;
         this.§8t§ -= param1;
         if(this.§8t§ <= 0)
         {
            this.§;i§ = this.§4^§.§;i§;
            this.§%i§ = this.§4^§.§%i§;
            this.§=!H§ = false;
            this.§[!T§ = true;
            this.§33§ = 0;
         }
         this.§'^§();
      }
      
      public function §#!d§() : void
      {
         this.§=!H§ = true;
         this.§8t§ = §4!"§;
         this.§2G§(§#o§.§98§);
         if(this.§`p§ != 0)
         {
            this.§%i§ += this.§`p§;
            this.§`p§ = 0;
         }
      }
      
      public function §!!'§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§[!T§ && this.§`&§ >= 0)
         {
            if(this.§<!R§ > this.§4^§.mLevelMain.§0D§.§6![§)
            {
               this.§[2§(this.§4^§.mLevelMain.§0D§.§6![§ - this.§<!R§);
               this.§`&§ = -1;
            }
            this.§`&§ -= param1;
            if(this.§`&§ <= 0)
            {
               if(this.§`I§ > 0)
               {
                  this.§`&§ = this.§`I§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§<!R§))
               {
                  _loc2_ = this.§4^§.mLevelMain.objects.§=!;§(this.§;i§,this.§<!R§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§[2§(param1 / 100))
                  {
                     this.§`&§ = -1;
                  }
                  else
                  {
                     this.§`&§ = 0;
                  }
               }
               else if(!this.§4^§.mLevelMain.objects.§]A§(_loc2_).§&;§)
               {
                  this.§67§ = false;
                  this.§`&§ = -1;
               }
               else if(this.§4^§.mLevelMain.objects.§]A§(_loc2_).§9!T§())
               {
                  this.§67§ = false;
                  this.§`&§ = 2000;
               }
               else
               {
                  this.§`&§ = 500;
               }
            }
         }
      }
      
      public function §[2§(param1:Number) : Boolean
      {
         this.§%i§ += param1;
         this.§<!R§ += param1;
         if(this.§<!R§ > this.§4^§.mLevelMain.§0D§.§6![§)
         {
            param1 = this.§<!R§ - this.§4^§.mLevelMain.§0D§.§6![§;
            this.§%i§ -= param1;
            this.§<!R§ -= param1;
            this.§'^§();
            return true;
         }
         this.§'^§();
         return false;
      }
      
      public function §!g§() : void
      {
         var _loc1_:§;!F§ = §'i§.§6!R§(this.mName).shape;
         if(_loc1_.§57§() == §;!F§.§"!"§)
         {
            this.§58§ = _loc1_.§7N§()[0];
            this.§`!c§ = _loc1_.§,E§;
         }
         else if(_loc1_.§57§() == §;!F§.§#s§)
         {
            this.§58§ = new b2Vec2(0,0);
            this.§`!c§ = 1.5;
         }
         this.§=r§ = this.§4^§.mLevelMain.§%S§.§<+§(this.mName);
         if(!this.§=r§)
         {
            this.§6W§(null);
         }
         else
         {
            this.§6W§(this.§=r§.getFrame(0));
         }
      }
      
      public function §6W§(param1:§=!+§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§4^§.§0!0§.textureManager.§-M§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§@K§ == null)
         {
            this.§@K§ = new §[!5§(_loc2_);
            this.§1!?§.addChild(this.§@K§);
         }
         else
         {
            this.§@K§.texture = _loc2_;
         }
         if(param1)
         {
            this.§@K§.x = -param1.pivotX - this.§58§.x / §2!V§.§-!3§;
            this.§@K§.y = -param1.pivotY - this.§58§.y / §2!V§.§-!3§;
         }
         else
         {
            this.§@K§.x = -this.§@K§.width / 2;
            this.§@K§.y = -this.§@K§.height / 2;
         }
         this.§@K§.scaleX = _loc3_;
         this.§@K§.scaleY = _loc3_;
         this.§'^§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§!!'§(param1);
         if(this.§=!H§)
         {
            this.§`I§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§4!M§(param1);
            this.§,!Y§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§^! §(param1,param2);
            }
         }
      }
      
      public function §4!M§(param1:Number) : void
      {
         if(this.§"!]§ > 0)
         {
            this.§"!]§ -= param1;
            if(this.§"!]§ <= 0)
            {
               this.§[@§();
            }
         }
         else if(this.§-w§ <= 0 && Math.random() * §5!F§ < param1 && this.§4^§.mSlingShotState)
         {
            this.§%_§();
         }
      }
      
      public function §[@§() : void
      {
         this.§"!]§ = 0;
         this.§6W§(this.§=r§.getFrame(0));
      }
      
      public function §%_§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§"!]§ = §;!A§;
         this.§6W§(this.§=r§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §,!Y§(param1:Number) : void
      {
         if(this.§-w§ > 0)
         {
            this.§-w§ -= param1;
            if(this.§-w§ <= 0)
            {
               this.§!!G§();
            }
         }
         else if(this.§"!]§ <= 0 && Math.random() * §!q§ < param1)
         {
            this.§2G§();
         }
      }
      
      public function §!!G§() : void
      {
         this.§-w§ = 0;
         this.§6W§(this.§=r§.getFrame(0));
      }
      
      public function §2G§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§-w§ > 0)
         {
            this.§!!G§();
         }
         if(this.§"!]§ > 0)
         {
            this.§[@§();
         }
         if(param1 < 0)
         {
            param1 = §#o§.§30§;
         }
         this.§-w§ = §>!-§;
         this.§6W§(this.§=r§.getSubAnimation("yell").getFrame(0));
         if(this.§[!T§ || this.§=!H§ || param2)
         {
            § ]§.§,I§(param1,this.§0A§);
         }
         else
         {
            § ]§.§,I§(param1,this.§0A§,§=H§);
         }
      }
      
      public function §^! §(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§`I§ > 0)
         {
            this.§`I§ -= param1;
            if(this.§`I§ <= 0)
            {
               ++this.§&§;
               this.§7!+§ *= 0.4;
               if(!this.§[!T§ && this.§&§ < 2)
               {
                  if(this.§&§ > 1 && this.§7!+§ < -1)
                  {
                     this.§7!+§ = -1;
                  }
                  this.§>!§ = this.§7!+§;
                  this.§`I§ = §^A§;
                  this.§`I§ *= Math.abs(this.§>!§) / 2;
                  this.§>!#§ = this.§`I§;
                  this.§33§ = 0;
                  this.§'!I§ = 0;
               }
               else if(!this.§[!T§ && param2)
               {
                  this.§;!2§(2.25);
               }
               else
               {
                  this.§`I§ = 0;
                  this.§`p§ = 0;
                  this.§33§ = 0;
                  this.§7!+§ = 0;
               }
            }
            else
            {
               if(this.§`I§ >= this.§>!#§ / 2)
               {
                  _loc3_ = (this.§>!#§ - this.§`I§) / (this.§>!#§ / 2);
                  _loc3_ = § G§.§'Q§(_loc3_);
                  this.§`p§ = _loc3_ * this.§>!§;
               }
               else
               {
                  _loc3_ = (this.§>!#§ / 2 - this.§`I§) / (this.§>!#§ / 2);
                  _loc3_ = § G§.§'Q§(_loc3_,false);
                  this.§`p§ = this.§>!§ + _loc3_ * -this.§>!§;
               }
               this.§33§ = 360 * § G§.§'Q§((this.§>!#§ - this.§`I§) / this.§>!#§) * this.§'!I§;
            }
            this.§'^§();
         }
         else if(Math.random() * §2e§ < param1 && !this.§[!T§ && !this.§=!H§ && !this.§67§)
         {
            this.§;!2§();
         }
      }
      
      public function §;!2§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§&§ = 0;
         this.§`I§ = §^A§;
         this.§`p§ = 0;
         this.§>!§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§7!+§ = this.§>!§;
         this.§`I§ *= Math.abs(this.§>!§) / 3;
         this.§>!#§ = this.§`I§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§'!I§ = 0;
         }
         else if(this.§`I§ < 350)
         {
            this.§'!I§ = 0;
         }
         else
         {
            this.§'!I§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§'!I§ = Math.random() > 0.5 ? Number(this.§'!I§) : Number(0);
         }
      }
      
      public function §'^§() : void
      {
         this.§1!?§.x = this.§;i§ / §2!V§.§-!3§;
         this.§1!?§.y = (this.§%i§ + this.§`p§) / §2!V§.§-!3§;
         this.§1!?§.rotation = this.§33§ / 180 * Math.PI;
      }
      
      public function §8!S§() : void
      {
         this.§67§ = true;
         this.§[!T§ = false;
         this.§=!H§ = false;
         this.§&§ = 0;
         this.§`&§ = 0;
         this.§`I§ = 0;
         this.§`I§ = 0;
         this.§`p§ = 0;
         this.§33§ = 0;
         this.§7!+§ = 0;
         this.§'!I§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§;i§) * (param1 - this.§;i§) + (param2 - this.§%i§) * (param2 - this.§%i§));
         if(_loc3_ <= this.§`!c§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§;i§ >= param3 && this.§;i§ <= param4 && this.§%i§ >= param1 && this.§%i§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§;i§ != param1 || this.§%i§ != param2)
         {
            _loc3_ = true;
         }
         this.§;i§ = param1;
         this.§%i§ = param2;
         this.§`&§ = 100;
         this.§'^§();
         if(_loc3_)
         {
            this.§4^§.§&[§();
         }
      }
      
      public function §00§() : §[!5§
      {
         return this.§@K§;
      }
      
      public function get §,!1§() : Number
      {
         return this.§`I§;
      }
      
      public function get §5$§() : Number
      {
         return this.§`&§;
      }
      
      public function set §5$§(param1:Number) : void
      {
         this.§`&§ = param1;
      }
      
      public function get §0!b§() : Number
      {
         return this.§'!V§;
      }
      
      public function get §"!$§() : Boolean
      {
         return this.§[!T§;
      }
      
      public function get radius() : Number
      {
         return this.§`!c§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§1!?§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §0!b§(param1:Number) : void
      {
         this.§'!V§ = param1;
      }
      
      public function get §;![§() : Number
      {
         return this.§!!9§;
      }
      
      public function set §;![§(param1:Number) : void
      {
         this.§!!9§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§3!T§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§3!T§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§;i§;
      }
      
      public function get y() : Number
      {
         return this.§%i§;
      }
      
      public function get §3X§() : Number
      {
         return this.§7;§;
      }
      
      public function get §&!<§() : Number
      {
         return this.§9!§;
      }
   }
}
