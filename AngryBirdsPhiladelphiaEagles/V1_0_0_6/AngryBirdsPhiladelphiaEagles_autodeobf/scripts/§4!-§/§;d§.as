package §4!-§
{
   import §3!O§.§?O§;
   import §4!0§.§#^§;
   import §4!0§.§#v§;
   import §86§.§?5§;
   import §86§.Sprite;
   import §<Z§.§ P§;
   import §<Z§.§ l§;
   import §<Z§.§5!G§;
   import §>Y§.§#o§;
   import §[!A§.Texture;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §;d§
   {
      
      public static const §["§:String = "ChannelSlingshot";
      
      public static const §&!M§:Number = 900;
      
      public static const §1s§:Number = 200;
      
      public static const §?C§:Number = 200;
      
      public static const §&!0§:Number = 1500;
      
      public static const §@!+§:Number = 5000;
      
      public static const §-T§:Number = 1000;
      
      public static const §%!>§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §#$§:Number;
      
      protected var §do§:Number;
      
      protected var §5w§:Number;
      
      protected var §,k§:Number;
      
      private var §]4§:§5!G§;
      
      protected var §>;§:Number;
      
      protected var § !D§:Number = 1;
      
      private var §+!N§:Sprite;
      
      protected var §"h§:§#v§;
      
      private var §+`§:§?5§;
      
      protected var §,[§:§2s§;
      
      private var §1&§:Number;
      
      private var §set §:Boolean = false;
      
      private var §;!J§:Boolean = false;
      
      protected var §1Z§:Boolean = false;
      
      private var §2A§:Number;
      
      private var §+=§:Number = 0;
      
      private var §,!O§:Number = 0;
      
      private var §3I§:Number = 0;
      
      private var §%!P§:Number = 1000;
      
      private var §7,§:Number;
      
      private var §2d§:Number;
      
      private var §9!3§:int;
      
      private var §7!%§:Number = 0;
      
      protected var §=H§:Number;
      
      protected var §>l§:Number;
      
      private var §7!G§:Number = 1;
      
      private var §^0§:Number = 0;
      
      private var §@!C§:b2Vec2;
      
      private var §"[§:Number = 1;
      
      public function §;d§(param1:§2s§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§,[§ = param1;
         this.§+!N§ = param2;
         this.mName = param3;
         this.§]4§ = § l§.§"<§(this.mName).§<M§;
         this.§#$§ = param4;
         this.§do§ = param5;
         this.§5w§ = param4;
         this.§,k§ = param5;
         this.§>;§ = 0;
         this.§set § = false;
         this.§;!J§ = false;
         this.§+=§ = 0;
         this.§5!6§();
         this.§=H§ = 0;
      }
      
      public function §'S§() : void
      {
         this.§set § = true;
      }
      
      public function dispose() : void
      {
         if(this.§+!N§)
         {
            this.§+!N§.dispose();
            this.§+!N§ = null;
         }
      }
      
      public function § V§(param1:Number) : void
      {
         if(!this.§;!J§ || this.§set §)
         {
            return;
         }
         if(this.§ !D§ != 0)
         {
            this.§3I§ = 0;
            this.§7!%§ = 0;
            this.§>;§ = 0;
            this.§2d§ = 0;
            this.§ !D§ = 0;
         }
         param1 = Math.min(param1,this.§2A§);
         this.§#$§ += param1 * (this.§,[§.§#$§ - this.§#$§) / this.§2A§;
         this.§do§ += param1 * (this.§,[§.§do§ - this.§do§) / this.§2A§;
         this.§do§ -= param1 / 50 * (this.§2A§ / §&!M§);
         this.§>;§ += param1 * (360 - this.§>;§) / this.§2A§;
         this.§2A§ -= param1;
         if(this.§2A§ <= 0)
         {
            this.§#$§ = this.§,[§.§#$§;
            this.§do§ = this.§,[§.§do§;
            this.§;!J§ = false;
            this.§set § = true;
            this.§>;§ = 0;
         }
         this.§`@§();
      }
      
      public function §#!G§() : void
      {
         this.§;!J§ = true;
         this.§2A§ = §&!M§;
         this.§<>§(§5!G§.§2!G§);
         if(this.§7!%§ != 0)
         {
            this.§do§ += this.§7!%§;
            this.§7!%§ = 0;
         }
      }
      
      public function §+v§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§set § && this.§=H§ >= 0)
         {
            if(this.§>l§ > this.§,[§.§'!8§.§=!#§.§,!2§)
            {
               this.§3<§(this.§,[§.§'!8§.§=!#§.§,!2§ - this.§>l§);
               this.§=H§ = -1;
            }
            this.§=H§ -= param1;
            if(this.§=H§ <= 0)
            {
               if(this.§3I§ > 0)
               {
                  this.§=H§ = this.§3I§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§>l§))
               {
                  _loc2_ = this.§,[§.§'!8§.objects.§>O§(this.§#$§,this.§>l§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§3<§(param1 / 100))
                  {
                     this.§=H§ = -1;
                  }
                  else
                  {
                     this.§=H§ = 0;
                  }
               }
               else if(!this.§,[§.§'!8§.objects.§1!1§(_loc2_).§?>§)
               {
                  this.§1Z§ = false;
                  this.§=H§ = -1;
               }
               else if(this.§,[§.§'!8§.objects.§1!1§(_loc2_).§9!2§())
               {
                  this.§1Z§ = false;
                  this.§=H§ = 2000;
               }
               else
               {
                  this.§=H§ = 500;
               }
            }
         }
      }
      
      public function §3<§(param1:Number) : Boolean
      {
         this.§do§ += param1;
         this.§>l§ += param1;
         if(this.§>l§ > this.§,[§.§'!8§.§=!#§.§,!2§)
         {
            param1 = this.§>l§ - this.§,[§.§'!8§.§=!#§.§,!2§;
            this.§do§ -= param1;
            this.§>l§ -= param1;
            this.§`@§();
            return true;
         }
         this.§`@§();
         return false;
      }
      
      public function §5!6§() : void
      {
         var _loc1_:§ P§ = § l§.§"<§(this.mName).shape;
         if(_loc1_.§!j§() == § P§.§0!+§)
         {
            this.§@!C§ = _loc1_.§3%§()[0];
            this.§1&§ = _loc1_.§]!E§;
         }
         else if(_loc1_.§!j§() == § P§.§3-§)
         {
            this.§@!C§ = new b2Vec2(0,0);
            this.§1&§ = 1.5;
         }
         this.§"h§ = this.§,[§.§'!8§.§>"§.getAnimation(this.mName);
         if(!this.§"h§)
         {
            this.§5!,§(null);
         }
         else
         {
            this.§5!,§(this.§"h§.getFrame(0));
         }
      }
      
      public function §5!,§(param1:§#^§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§,[§.§ S§.textureManager.§`c§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§+`§ == null)
         {
            this.§+`§ = new §?5§(_loc2_);
            this.§+!N§.addChild(this.§+`§);
         }
         else
         {
            this.§+`§.texture = _loc2_;
         }
         if(param1)
         {
            this.§+`§.x = -param1.pivotX - this.§@!C§.x / §%o§.§]!?§;
            this.§+`§.y = -param1.pivotY - this.§@!C§.y / §%o§.§]!?§;
         }
         else
         {
            this.§+`§.x = -this.§+`§.width / 2;
            this.§+`§.y = -this.§+`§.height / 2;
         }
         this.§+`§.scaleX = _loc3_;
         this.§+`§.scaleY = _loc3_;
         this.§`@§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§+v§(param1);
         if(this.§;!J§)
         {
            this.§3I§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§!'§(param1);
            this.§>V§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§#z§(param1,param2);
            }
         }
      }
      
      public function §!'§(param1:Number) : void
      {
         if(this.§+=§ > 0)
         {
            this.§+=§ -= param1;
            if(this.§+=§ <= 0)
            {
               this.§,+§();
            }
         }
         else if(this.§,!O§ <= 0 && Math.random() * §&!0§ < param1 && this.§,[§.mSlingShotState)
         {
            this.§3!H§();
         }
      }
      
      public function §,+§() : void
      {
         this.§+=§ = 0;
         this.§5!,§(this.§"h§.getFrame(0));
      }
      
      public function §3!H§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§+=§ = §1s§;
         this.§5!,§(this.§"h§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §>V§(param1:Number) : void
      {
         if(this.§,!O§ > 0)
         {
            this.§,!O§ -= param1;
            if(this.§,!O§ <= 0)
            {
               this.§7i§();
            }
         }
         else if(this.§+=§ <= 0 && Math.random() * §@!+§ < param1)
         {
            this.§<>§();
         }
      }
      
      public function §7i§() : void
      {
         this.§,!O§ = 0;
         this.§5!,§(this.§"h§.getFrame(0));
      }
      
      public function §<>§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§,!O§ > 0)
         {
            this.§7i§();
         }
         if(this.§+=§ > 0)
         {
            this.§,+§();
         }
         if(param1 < 0)
         {
            param1 = §5!G§.§"Y§;
         }
         this.§,!O§ = §?C§;
         this.§5!,§(this.§"h§.getSubAnimation("yell").getFrame(0));
         if(this.§set § || this.§;!J§ || param2)
         {
            §#o§.§'#§(param1,this.§]4§);
         }
         else
         {
            §#o§.§'#§(param1,this.§]4§,§["§);
         }
      }
      
      public function §#z§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§3I§ > 0)
         {
            this.§3I§ -= param1;
            if(this.§3I§ <= 0)
            {
               ++this.§9!3§;
               this.§2d§ *= 0.4;
               if(!this.§set § && this.§9!3§ < 2)
               {
                  if(this.§9!3§ > 1 && this.§2d§ < -1)
                  {
                     this.§2d§ = -1;
                  }
                  this.§7,§ = this.§2d§;
                  this.§3I§ = §%!>§;
                  this.§3I§ *= Math.abs(this.§7,§) / 2;
                  this.§%!P§ = this.§3I§;
                  this.§>;§ = 0;
                  this.§ !D§ = 0;
               }
               else if(!this.§set § && param2)
               {
                  this.§0;§(2.25);
               }
               else
               {
                  this.§3I§ = 0;
                  this.§7!%§ = 0;
                  this.§>;§ = 0;
                  this.§2d§ = 0;
               }
            }
            else
            {
               if(this.§3I§ >= this.§%!P§ / 2)
               {
                  _loc3_ = (this.§%!P§ - this.§3I§) / (this.§%!P§ / 2);
                  _loc3_ = §?O§.§8h§(_loc3_);
                  this.§7!%§ = _loc3_ * this.§7,§;
               }
               else
               {
                  _loc3_ = (this.§%!P§ / 2 - this.§3I§) / (this.§%!P§ / 2);
                  _loc3_ = §?O§.§8h§(_loc3_,false);
                  this.§7!%§ = this.§7,§ + _loc3_ * -this.§7,§;
               }
               this.§>;§ = 360 * §?O§.§8h§((this.§%!P§ - this.§3I§) / this.§%!P§) * this.§ !D§;
            }
            this.§`@§();
         }
         else if(Math.random() * §-T§ < param1 && !this.§set § && !this.§;!J§ && !this.§1Z§)
         {
            this.§0;§();
         }
      }
      
      public function §0;§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§9!3§ = 0;
         this.§3I§ = §%!>§;
         this.§7!%§ = 0;
         this.§7,§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§2d§ = this.§7,§;
         this.§3I§ *= Math.abs(this.§7,§) / 3;
         this.§%!P§ = this.§3I§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§ !D§ = 0;
         }
         else if(this.§3I§ < 350)
         {
            this.§ !D§ = 0;
         }
         else
         {
            this.§ !D§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§ !D§ = Math.random() > 0.5 ? Number(this.§ !D§) : Number(0);
         }
      }
      
      public function §`@§() : void
      {
         this.§+!N§.x = this.§#$§ / §%o§.§]!?§;
         this.§+!N§.y = (this.§do§ + this.§7!%§) / §%o§.§]!?§;
         this.§+!N§.rotation = this.§>;§ / 180 * Math.PI;
      }
      
      public function § =§() : void
      {
         this.§1Z§ = true;
         this.§set § = false;
         this.§;!J§ = false;
         this.§9!3§ = 0;
         this.§=H§ = 0;
         this.§3I§ = 0;
         this.§3I§ = 0;
         this.§7!%§ = 0;
         this.§>;§ = 0;
         this.§2d§ = 0;
         this.§ !D§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§#$§) * (param1 - this.§#$§) + (param2 - this.§do§) * (param2 - this.§do§));
         if(_loc3_ <= this.§1&§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§#$§ >= param3 && this.§#$§ <= param4 && this.§do§ >= param1 && this.§do§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§#$§ != param1 || this.§do§ != param2)
         {
            _loc3_ = true;
         }
         this.§#$§ = param1;
         this.§do§ = param2;
         this.§=H§ = 100;
         this.§`@§();
         if(_loc3_)
         {
            this.§,[§.§>_§();
         }
      }
      
      public function §5,§() : §?5§
      {
         return this.§+`§;
      }
      
      public function get §%!,§() : Number
      {
         return this.§3I§;
      }
      
      public function get §[U§() : Number
      {
         return this.§=H§;
      }
      
      public function set §[U§(param1:Number) : void
      {
         this.§=H§ = param1;
      }
      
      public function get §5k§() : Number
      {
         return this.§7!G§;
      }
      
      public function get §4P§() : Boolean
      {
         return this.§set §;
      }
      
      public function get radius() : Number
      {
         return this.§1&§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§+!N§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §5k§(param1:Number) : void
      {
         this.§7!G§ = param1;
      }
      
      public function get §'!F§() : Number
      {
         return this.§^0§;
      }
      
      public function set §'!F§(param1:Number) : void
      {
         this.§^0§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§"[§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§"[§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§#$§;
      }
      
      public function get y() : Number
      {
         return this.§do§;
      }
      
      public function get §0!0§() : Number
      {
         return this.§5w§;
      }
      
      public function get §#!I§() : Number
      {
         return this.§,k§;
      }
   }
}
