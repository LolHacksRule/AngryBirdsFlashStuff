package §3!@§
{
   import § !%§.§0!U§;
   import § !%§.§>f§;
   import §%!n§.§"+§;
   import §%!n§.§%X§;
   import §%!n§.§,Y§;
   import §&Y§.Texture;
   import §&c§.§%!a§;
   import §&c§.Sprite;
   import §0,§.b2Vec2;
   import §5K§.§7!I§;
   import §?!§.§%o§;
   
   public class §^!c§
   {
      
      public static const § try§:String = "ChannelSlingshot";
      
      public static const §>!"§:Number = 900;
      
      public static const §<!+§:Number = 200;
      
      public static const §4-§:Number = 200;
      
      public static const §;U§:Number = 1500;
      
      public static const §"!H§:Number = 5000;
      
      public static const §#H§:Number = 1000;
      
      public static const §]1§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var § !^§:Number;
      
      protected var §0p§:Number;
      
      protected var §-!n§:Number;
      
      protected var §"y§:Number;
      
      private var §>6§:§,Y§;
      
      protected var §3!+§:Number;
      
      protected var §-!P§:Number = 1;
      
      private var §7U§:Sprite;
      
      protected var § !C§:§>f§;
      
      private var §&!j§:§%!a§;
      
      protected var §<?§:§49§;
      
      private var §%!]§:Number;
      
      private var §[8§:Boolean = false;
      
      private var §>i§:Boolean = false;
      
      protected var §;!n§:Boolean = false;
      
      private var §[!-§:Number;
      
      private var §<F§:Number = 0;
      
      private var §[p§:Number = 0;
      
      private var §+@§:Number = 0;
      
      private var §7!]§:Number = 1000;
      
      private var §+!#§:Number;
      
      private var §,D§:Number;
      
      private var § X§:int;
      
      private var § e§:Number = 0;
      
      protected var §^!7§:Number;
      
      protected var §7<§:Number;
      
      private var § !E§:Number = 1;
      
      private var §@A§:Number = 0;
      
      private var §;!-§:b2Vec2;
      
      private var §[2§:Number = 1;
      
      public function §^!c§(param1:§49§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§<?§ = param1;
         this.§7U§ = param2;
         this.mName = param3;
         this.§>6§ = §"+§.§9Q§(this.mName).§0$§;
         this.§ !^§ = param4;
         this.§0p§ = param5;
         this.§-!n§ = param4;
         this.§"y§ = param5;
         this.§3!+§ = 0;
         this.§[8§ = false;
         this.§>i§ = false;
         this.§<F§ = 0;
         this.§43§();
         this.§^!7§ = 0;
      }
      
      public function §^!J§() : void
      {
         this.§[8§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§7U§)
         {
            this.§7U§.dispose();
            this.§7U§ = null;
         }
      }
      
      public function §0o§(param1:Number) : void
      {
         if(!this.§>i§ || this.§[8§)
         {
            return;
         }
         if(this.§-!P§ != 0)
         {
            this.§+@§ = 0;
            this.§ e§ = 0;
            this.§3!+§ = 0;
            this.§,D§ = 0;
            this.§-!P§ = 0;
         }
         param1 = Math.min(param1,this.§[!-§);
         this.§ !^§ += param1 * (this.§<?§.§ !^§ - this.§ !^§) / this.§[!-§;
         this.§0p§ += param1 * (this.§<?§.§0p§ - this.§0p§) / this.§[!-§;
         this.§0p§ -= param1 / 50 * (this.§[!-§ / §>!"§);
         this.§3!+§ += param1 * (360 - this.§3!+§) / this.§[!-§;
         this.§[!-§ -= param1;
         if(this.§[!-§ <= 0)
         {
            this.§ !^§ = this.§<?§.§ !^§;
            this.§0p§ = this.§<?§.§0p§;
            this.§>i§ = false;
            this.§[8§ = true;
            this.§3!+§ = 0;
         }
         this.§>1§();
      }
      
      public function §4<§() : void
      {
         this.§>i§ = true;
         this.§[!-§ = §>!"§;
         this.§3e§(§,Y§.§ !7§);
         if(this.§ e§ != 0)
         {
            this.§0p§ += this.§ e§;
            this.§ e§ = 0;
         }
      }
      
      public function §]!4§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§[8§ && this.§^!7§ >= 0)
         {
            if(this.§7<§ > this.§<?§.mLevelMain.§1c§.§"Z§)
            {
               this.§?!$§(this.§<?§.mLevelMain.§1c§.§"Z§ - this.§7<§);
               this.§^!7§ = -1;
            }
            this.§^!7§ -= param1;
            if(this.§^!7§ <= 0)
            {
               if(this.§+@§ > 0)
               {
                  this.§^!7§ = this.§+@§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§7<§))
               {
                  _loc2_ = this.§<?§.mLevelMain.objects.§3!L§(this.§ !^§,this.§7<§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§?!$§(param1 / 100))
                  {
                     this.§^!7§ = -1;
                  }
                  else
                  {
                     this.§^!7§ = 0;
                  }
               }
               else if(!this.§<?§.mLevelMain.objects.§2h§(_loc2_).§6!'§)
               {
                  this.§;!n§ = false;
                  this.§^!7§ = -1;
               }
               else if(this.§<?§.mLevelMain.objects.§2h§(_loc2_).§-!m§())
               {
                  this.§;!n§ = false;
                  this.§^!7§ = 2000;
               }
               else
               {
                  this.§^!7§ = 500;
               }
            }
         }
      }
      
      public function §?!$§(param1:Number) : Boolean
      {
         this.§0p§ += param1;
         this.§7<§ += param1;
         if(this.§7<§ > this.§<?§.mLevelMain.§1c§.§"Z§)
         {
            param1 = this.§7<§ - this.§<?§.mLevelMain.§1c§.§"Z§;
            this.§0p§ -= param1;
            this.§7<§ -= param1;
            this.§>1§();
            return true;
         }
         this.§>1§();
         return false;
      }
      
      public function §43§() : void
      {
         var _loc1_:§%X§ = §"+§.§9Q§(this.mName).shape;
         if(_loc1_.§ !`§() == §%X§.§<!F§)
         {
            this.§;!-§ = _loc1_.§&!a§()[0];
            this.§%!]§ = _loc1_.§+![§;
         }
         else if(_loc1_.§ !`§() == §%X§.§@Q§)
         {
            this.§;!-§ = new b2Vec2(0,0);
            this.§%!]§ = 1.5;
         }
         this.§ !C§ = this.§<?§.mLevelMain.animationManager.getAnimation(this.mName);
         if(!this.§ !C§)
         {
            this.§`!e§(null);
         }
         else
         {
            this.§`!e§(this.§ !C§.getFrame(0));
         }
      }
      
      public function §`!e§(param1:§0!U§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§<?§.§'!Y§.textureManager.§[=§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§&!j§ == null)
         {
            this.§&!j§ = new §%!a§(_loc2_);
            this.§7U§.addChild(this.§&!j§);
         }
         else
         {
            this.§&!j§.texture = _loc2_;
         }
         if(param1)
         {
            this.§&!j§.x = -param1.pivotX - this.§;!-§.x / § s§.§<!h§;
            this.§&!j§.y = -param1.pivotY - this.§;!-§.y / § s§.§<!h§;
         }
         else
         {
            this.§&!j§.x = -this.§&!j§.width / 2;
            this.§&!j§.y = -this.§&!j§.height / 2;
         }
         this.§&!j§.scaleX = _loc3_;
         this.§&!j§.scaleY = _loc3_;
         this.§>1§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§]!4§(param1);
         if(this.§>i§)
         {
            this.§+@§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§%![§(param1);
            this.§>!Y§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§6e§(param1,param2);
            }
         }
      }
      
      public function §%![§(param1:Number) : void
      {
         if(this.§<F§ > 0)
         {
            this.§<F§ -= param1;
            if(this.§<F§ <= 0)
            {
               this.§`b§();
            }
         }
         else if(this.§[p§ <= 0 && Math.random() * §;U§ < param1 && this.§<?§.mSlingShotState)
         {
            this.§2M§();
         }
      }
      
      public function §`b§() : void
      {
         this.§<F§ = 0;
         this.§`!e§(this.§ !C§.getFrame(0));
      }
      
      public function §2M§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§<F§ = §<!+§;
         this.§`!e§(this.§ !C§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §>!Y§(param1:Number) : void
      {
         if(this.§[p§ > 0)
         {
            this.§[p§ -= param1;
            if(this.§[p§ <= 0)
            {
               this.§6-§();
            }
         }
         else if(this.§<F§ <= 0 && Math.random() * §"!H§ < param1)
         {
            this.§3e§();
         }
      }
      
      public function §6-§() : void
      {
         this.§[p§ = 0;
         this.§`!e§(this.§ !C§.getFrame(0));
      }
      
      public function §3e§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§[p§ > 0)
         {
            this.§6-§();
         }
         if(this.§<F§ > 0)
         {
            this.§`b§();
         }
         if(param1 < 0)
         {
            param1 = §,Y§.§<!R§;
         }
         this.§[p§ = §4-§;
         this.§`!e§(this.§ !C§.getSubAnimation("yell").getFrame(0));
         if(this.§[8§ || this.§>i§ || param2)
         {
            §%o§.§7!e§(param1,this.§>6§);
         }
         else
         {
            §%o§.§7!e§(param1,this.§>6§,§ try§);
         }
      }
      
      public function §6e§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§+@§ > 0)
         {
            this.§+@§ -= param1;
            if(this.§+@§ <= 0)
            {
               ++this.§ X§;
               this.§,D§ *= 0.4;
               if(!this.§[8§ && this.§ X§ < 2)
               {
                  if(this.§ X§ > 1 && this.§,D§ < -1)
                  {
                     this.§,D§ = -1;
                  }
                  this.§+!#§ = this.§,D§;
                  this.§+@§ = §]1§;
                  this.§+@§ *= Math.abs(this.§+!#§) / 2;
                  this.§7!]§ = this.§+@§;
                  this.§3!+§ = 0;
                  this.§-!P§ = 0;
               }
               else if(!this.§[8§ && param2)
               {
                  this.§]!T§(2.25);
               }
               else
               {
                  this.§+@§ = 0;
                  this.§ e§ = 0;
                  this.§3!+§ = 0;
                  this.§,D§ = 0;
               }
            }
            else
            {
               if(this.§+@§ >= this.§7!]§ / 2)
               {
                  _loc3_ = (this.§7!]§ - this.§+@§) / (this.§7!]§ / 2);
                  _loc3_ = §7!I§.§8D§(_loc3_);
                  this.§ e§ = _loc3_ * this.§+!#§;
               }
               else
               {
                  _loc3_ = (this.§7!]§ / 2 - this.§+@§) / (this.§7!]§ / 2);
                  _loc3_ = §7!I§.§8D§(_loc3_,false);
                  this.§ e§ = this.§+!#§ + _loc3_ * -this.§+!#§;
               }
               this.§3!+§ = 360 * §7!I§.§8D§((this.§7!]§ - this.§+@§) / this.§7!]§) * this.§-!P§;
            }
            this.§>1§();
         }
         else if(Math.random() * §#H§ < param1 && !this.§[8§ && !this.§>i§ && !this.§;!n§)
         {
            this.§]!T§();
         }
      }
      
      public function §]!T§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§ X§ = 0;
         this.§+@§ = §]1§;
         this.§ e§ = 0;
         this.§+!#§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§,D§ = this.§+!#§;
         this.§+@§ *= Math.abs(this.§+!#§) / 3;
         this.§7!]§ = this.§+@§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§-!P§ = 0;
         }
         else if(this.§+@§ < 350)
         {
            this.§-!P§ = 0;
         }
         else
         {
            this.§-!P§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§-!P§ = Math.random() > 0.5 ? Number(this.§-!P§) : Number(0);
         }
      }
      
      public function §>1§() : void
      {
         this.§7U§.x = this.§ !^§ / § s§.§<!h§;
         this.§7U§.y = (this.§0p§ + this.§ e§) / § s§.§<!h§;
         this.§7U§.rotation = this.§3!+§ / 180 * Math.PI;
      }
      
      public function §7!M§() : void
      {
         this.§;!n§ = true;
         this.§[8§ = false;
         this.§>i§ = false;
         this.§ X§ = 0;
         this.§^!7§ = 0;
         this.§+@§ = 0;
         this.§+@§ = 0;
         this.§ e§ = 0;
         this.§3!+§ = 0;
         this.§,D§ = 0;
         this.§-!P§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§ !^§) * (param1 - this.§ !^§) + (param2 - this.§0p§) * (param2 - this.§0p§));
         if(_loc3_ <= this.§%!]§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§ !^§ >= param3 && this.§ !^§ <= param4 && this.§0p§ >= param1 && this.§0p§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§ !^§ != param1 || this.§0p§ != param2)
         {
            _loc3_ = true;
         }
         this.§ !^§ = param1;
         this.§0p§ = param2;
         this.§^!7§ = 100;
         this.§>1§();
         if(_loc3_)
         {
            this.§<?§.§'t§();
         }
      }
      
      public function §+V§() : §%!a§
      {
         return this.§&!j§;
      }
      
      public function get §-j§() : Number
      {
         return this.§+@§;
      }
      
      public function get §+3§() : Number
      {
         return this.§^!7§;
      }
      
      public function set §+3§(param1:Number) : void
      {
         this.§^!7§ = param1;
      }
      
      public function get §'!@§() : Number
      {
         return this.§ !E§;
      }
      
      public function get §5r§() : Boolean
      {
         return this.§[8§;
      }
      
      public function get radius() : Number
      {
         return this.§%!]§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§7U§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §'!@§(param1:Number) : void
      {
         this.§ !E§ = param1;
      }
      
      public function get §'N§() : Number
      {
         return this.§@A§;
      }
      
      public function set §'N§(param1:Number) : void
      {
         this.§@A§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§[2§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§[2§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§ !^§;
      }
      
      public function get y() : Number
      {
         return this.§0p§;
      }
      
      public function get §9v§() : Number
      {
         return this.§-!n§;
      }
      
      public function get §2Z§() : Number
      {
         return this.§"y§;
      }
   }
}
