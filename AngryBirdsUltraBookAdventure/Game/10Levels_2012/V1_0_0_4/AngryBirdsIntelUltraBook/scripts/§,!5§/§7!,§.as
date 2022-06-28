package §,!5§
{
   import §%Q§.§`!<§;
   import §'!9§.§?!U§;
   import §'!9§.Sprite;
   import §-w§.§+W§;
   import §-w§.§1!;§;
   import §<!1§.§2!W§;
   import §<!1§.§<!R§;
   import §<!1§.§<F§;
   import §>H§.b2Vec2;
   import §^!+§.Texture;
   import §^_§.§3!q§;
   
   public class §7!,§
   {
      
      public static const §+0§:String = "ChannelSlingshot";
      
      public static const §4!I§:Number = 900;
      
      public static const §?r§:Number = 200;
      
      public static const §9!7§:Number = 200;
      
      public static const §<2§:Number = 1500;
      
      public static const §"!x§:Number = 5000;
      
      public static const §`<§:Number = 1000;
      
      public static const §[!2§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §,G§:Number;
      
      protected var §78§:Number;
      
      protected var §'A§:Number;
      
      protected var §^!M§:Number;
      
      private var §1!4§:§<!R§;
      
      protected var §-!n§:Number;
      
      protected var §8@§:Number = 1;
      
      private var §8X§:Sprite;
      
      protected var §8x§:§1!;§;
      
      private var §^!?§:§?!U§;
      
      protected var §&1§:§>!A§;
      
      private var §;!S§:Number;
      
      private var §3!N§:Boolean = false;
      
      private var §+&§:Boolean = false;
      
      protected var §@!x§:Boolean = false;
      
      private var §3!5§:Number;
      
      private var §extends§:Number = 0;
      
      private var §return§:Number = 0;
      
      private var §3!t§:Number = 0;
      
      private var §0l§:Number = 1000;
      
      private var §,!9§:Number;
      
      private var §-!c§:Number;
      
      private var §-y§:int;
      
      private var §4!P§:Number = 0;
      
      protected var §'!l§:Number;
      
      protected var §=!X§:Number;
      
      private var §]!G§:Number = 1;
      
      private var §^W§:Number = 0;
      
      private var §2;§:b2Vec2;
      
      private var §'8§:Number = 1;
      
      public function §7!,§(param1:§>!A§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§&1§ = param1;
         this.§8X§ = param2;
         this.mName = param3;
         this.§1!4§ = §<F§.§1]§(this.mName).§!9§;
         this.§,G§ = param4;
         this.§78§ = param5;
         this.§'A§ = param4;
         this.§^!M§ = param5;
         this.§-!n§ = 0;
         this.§3!N§ = false;
         this.§+&§ = false;
         this.§extends§ = 0;
         this.§%!]§();
         this.§'!l§ = 0;
      }
      
      public function §`!a§() : void
      {
         this.§3!N§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§8X§)
         {
            this.§8X§.dispose();
            this.§8X§ = null;
         }
      }
      
      public function §@s§(param1:Number) : void
      {
         if(!this.§+&§ || this.§3!N§)
         {
            return;
         }
         if(this.§8@§ != 0)
         {
            this.§3!t§ = 0;
            this.§4!P§ = 0;
            this.§-!n§ = 0;
            this.§-!c§ = 0;
            this.§8@§ = 0;
         }
         param1 = Math.min(param1,this.§3!5§);
         this.§,G§ += param1 * (this.§&1§.§,G§ - this.§,G§) / this.§3!5§;
         this.§78§ += param1 * (this.§&1§.§78§ - this.§78§) / this.§3!5§;
         this.§78§ -= param1 / 50 * (this.§3!5§ / §4!I§);
         this.§-!n§ += param1 * (360 - this.§-!n§) / this.§3!5§;
         this.§3!5§ -= param1;
         if(this.§3!5§ <= 0)
         {
            this.§,G§ = this.§&1§.§,G§;
            this.§78§ = this.§&1§.§78§;
            this.§+&§ = false;
            this.§3!N§ = true;
            this.§-!n§ = 0;
         }
         this.§'!k§();
      }
      
      public function §;j§() : void
      {
         this.§+&§ = true;
         this.§3!5§ = §4!I§;
         this.§8!n§(§<!R§.§#!_§);
         if(this.§4!P§ != 0)
         {
            this.§78§ += this.§4!P§;
            this.§4!P§ = 0;
         }
      }
      
      public function §!o§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§3!N§ && this.§'!l§ >= 0)
         {
            if(this.§=!X§ > this.§&1§.§?l§.§ !p§.§>6§)
            {
               this.§9S§(this.§&1§.§?l§.§ !p§.§>6§ - this.§=!X§);
               this.§'!l§ = -1;
            }
            this.§'!l§ -= param1;
            if(this.§'!l§ <= 0)
            {
               if(this.§3!t§ > 0)
               {
                  this.§'!l§ = this.§3!t§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§=!X§))
               {
                  _loc2_ = this.§&1§.§?l§.objects.§=V§(this.§,G§,this.§=!X§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§9S§(param1 / 100))
                  {
                     this.§'!l§ = -1;
                  }
                  else
                  {
                     this.§'!l§ = 0;
                  }
               }
               else if(!this.§&1§.§?l§.objects.§8!3§(_loc2_).§"'§)
               {
                  this.§@!x§ = false;
                  this.§'!l§ = -1;
               }
               else if(this.§&1§.§?l§.objects.§8!3§(_loc2_).§9!i§())
               {
                  this.§@!x§ = false;
                  this.§'!l§ = 2000;
               }
               else
               {
                  this.§'!l§ = 500;
               }
            }
         }
      }
      
      public function §9S§(param1:Number) : Boolean
      {
         this.§78§ += param1;
         this.§=!X§ += param1;
         if(this.§=!X§ > this.§&1§.§?l§.§ !p§.§>6§)
         {
            param1 = this.§=!X§ - this.§&1§.§?l§.§ !p§.§>6§;
            this.§78§ -= param1;
            this.§=!X§ -= param1;
            this.§'!k§();
            return true;
         }
         this.§'!k§();
         return false;
      }
      
      public function §%!]§() : void
      {
         var _loc1_:§2!W§ = §<F§.§1]§(this.mName).shape;
         if(_loc1_.§@!P§() == §2!W§.§=!i§)
         {
            this.§2;§ = _loc1_.§!M§()[0];
            this.§;!S§ = _loc1_.§'O§;
         }
         else if(_loc1_.§@!P§() == §2!W§.§"d§)
         {
            this.§2;§ = new b2Vec2(0,0);
            this.§;!S§ = 1.5;
         }
         this.§8x§ = this.§&1§.§?l§.animationManager.getAnimation(this.mName);
         if(!this.§8x§)
         {
            this.§#!]§(null);
         }
         else
         {
            this.§#!]§(this.§8x§.getFrame(0));
         }
      }
      
      public function §#!]§(param1:§+W§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§&1§.§3!w§.textureManager.§0y§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§^!?§ == null)
         {
            this.§^!?§ = new §?!U§(_loc2_);
            this.§8X§.addChild(this.§^!?§);
         }
         else
         {
            this.§^!?§.texture = _loc2_;
         }
         if(param1)
         {
            this.§^!?§.x = -param1.pivotX - this.§2;§.x / §^g§.§^!S§;
            this.§^!?§.y = -param1.pivotY - this.§2;§.y / §^g§.§^!S§;
         }
         else
         {
            this.§^!?§.x = -this.§^!?§.width / 2;
            this.§^!?§.y = -this.§^!?§.height / 2;
         }
         this.§^!?§.scaleX = _loc3_;
         this.§^!?§.scaleY = _loc3_;
         this.§'!k§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§!o§(param1);
         if(this.§+&§)
         {
            this.§3!t§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§98§(param1);
            this.§4Z§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§99§(param1,param2);
            }
         }
      }
      
      public function §98§(param1:Number) : void
      {
         if(this.§extends§ > 0)
         {
            this.§extends§ -= param1;
            if(this.§extends§ <= 0)
            {
               this.§'P§();
            }
         }
         else if(this.§return§ <= 0 && Math.random() * §<2§ < param1 && this.§&1§.mSlingShotState)
         {
            this.§%!+§();
         }
      }
      
      public function §'P§() : void
      {
         this.§extends§ = 0;
         this.§#!]§(this.§8x§.getFrame(0));
      }
      
      public function §%!+§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§extends§ = §?r§;
         this.§#!]§(this.§8x§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §4Z§(param1:Number) : void
      {
         if(this.§return§ > 0)
         {
            this.§return§ -= param1;
            if(this.§return§ <= 0)
            {
               this.§!x§();
            }
         }
         else if(this.§extends§ <= 0 && Math.random() * §"!x§ < param1)
         {
            this.§8!n§();
         }
      }
      
      public function §!x§() : void
      {
         this.§return§ = 0;
         this.§#!]§(this.§8x§.getFrame(0));
      }
      
      public function §8!n§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§return§ > 0)
         {
            this.§!x§();
         }
         if(this.§extends§ > 0)
         {
            this.§'P§();
         }
         if(param1 < 0)
         {
            param1 = §<!R§.§`!C§;
         }
         this.§return§ = §9!7§;
         this.§#!]§(this.§8x§.getSubAnimation("yell").getFrame(0));
         if(this.§3!N§ || this.§+&§ || param2)
         {
            §`!<§.§6!$§(param1,this.§1!4§);
         }
         else
         {
            §`!<§.§6!$§(param1,this.§1!4§,§+0§);
         }
      }
      
      public function §99§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§3!t§ > 0)
         {
            this.§3!t§ -= param1;
            if(this.§3!t§ <= 0)
            {
               ++this.§-y§;
               this.§-!c§ *= 0.4;
               if(!this.§3!N§ && this.§-y§ < 2)
               {
                  if(this.§-y§ > 1 && this.§-!c§ < -1)
                  {
                     this.§-!c§ = -1;
                  }
                  this.§,!9§ = this.§-!c§;
                  this.§3!t§ = §[!2§;
                  this.§3!t§ *= Math.abs(this.§,!9§) / 2;
                  this.§0l§ = this.§3!t§;
                  this.§-!n§ = 0;
                  this.§8@§ = 0;
               }
               else if(!this.§3!N§ && param2)
               {
                  this.§]h§(2.25);
               }
               else
               {
                  this.§3!t§ = 0;
                  this.§4!P§ = 0;
                  this.§-!n§ = 0;
                  this.§-!c§ = 0;
               }
            }
            else
            {
               if(this.§3!t§ >= this.§0l§ / 2)
               {
                  _loc3_ = (this.§0l§ - this.§3!t§) / (this.§0l§ / 2);
                  _loc3_ = §3!q§.§^s§(_loc3_);
                  this.§4!P§ = _loc3_ * this.§,!9§;
               }
               else
               {
                  _loc3_ = (this.§0l§ / 2 - this.§3!t§) / (this.§0l§ / 2);
                  _loc3_ = §3!q§.§^s§(_loc3_,false);
                  this.§4!P§ = this.§,!9§ + _loc3_ * -this.§,!9§;
               }
               this.§-!n§ = 360 * §3!q§.§^s§((this.§0l§ - this.§3!t§) / this.§0l§) * this.§8@§;
            }
            this.§'!k§();
         }
         else if(Math.random() * §`<§ < param1 && !this.§3!N§ && !this.§+&§ && !this.§@!x§)
         {
            this.§]h§();
         }
      }
      
      public function §]h§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§-y§ = 0;
         this.§3!t§ = §[!2§;
         this.§4!P§ = 0;
         this.§,!9§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§-!c§ = this.§,!9§;
         this.§3!t§ *= Math.abs(this.§,!9§) / 3;
         this.§0l§ = this.§3!t§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§8@§ = 0;
         }
         else if(this.§3!t§ < 350)
         {
            this.§8@§ = 0;
         }
         else
         {
            this.§8@§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§8@§ = Math.random() > 0.5 ? Number(this.§8@§) : Number(0);
         }
      }
      
      public function §'!k§() : void
      {
         this.§8X§.x = this.§,G§ / §^g§.§^!S§;
         this.§8X§.y = (this.§78§ + this.§4!P§) / §^g§.§^!S§;
         this.§8X§.rotation = this.§-!n§ / 180 * Math.PI;
      }
      
      public function §@!"§() : void
      {
         this.§@!x§ = true;
         this.§3!N§ = false;
         this.§+&§ = false;
         this.§-y§ = 0;
         this.§'!l§ = 0;
         this.§3!t§ = 0;
         this.§3!t§ = 0;
         this.§4!P§ = 0;
         this.§-!n§ = 0;
         this.§-!c§ = 0;
         this.§8@§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§,G§) * (param1 - this.§,G§) + (param2 - this.§78§) * (param2 - this.§78§));
         if(_loc3_ <= this.§;!S§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§,G§ >= param3 && this.§,G§ <= param4 && this.§78§ >= param1 && this.§78§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§,G§ != param1 || this.§78§ != param2)
         {
            _loc3_ = true;
         }
         this.§,G§ = param1;
         this.§78§ = param2;
         this.§'!l§ = 100;
         this.§'!k§();
         if(_loc3_)
         {
            this.§&1§.§`!P§();
         }
      }
      
      public function §1!k§() : §?!U§
      {
         return this.§^!?§;
      }
      
      public function get §=L§() : Number
      {
         return this.§3!t§;
      }
      
      public function get § Z§() : Number
      {
         return this.§'!l§;
      }
      
      public function set § Z§(param1:Number) : void
      {
         this.§'!l§ = param1;
      }
      
      public function get §%! §() : Number
      {
         return this.§]!G§;
      }
      
      public function get §5!p§() : Boolean
      {
         return this.§3!N§;
      }
      
      public function get radius() : Number
      {
         return this.§;!S§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§8X§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §%! §(param1:Number) : void
      {
         this.§]!G§ = param1;
      }
      
      public function get §5!6§() : Number
      {
         return this.§^W§;
      }
      
      public function set §5!6§(param1:Number) : void
      {
         this.§^W§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§'8§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§'8§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§,G§;
      }
      
      public function get y() : Number
      {
         return this.§78§;
      }
      
      public function get §5G§() : Number
      {
         return this.§'A§;
      }
      
      public function get §!G§() : Number
      {
         return this.§^!M§;
      }
   }
}
