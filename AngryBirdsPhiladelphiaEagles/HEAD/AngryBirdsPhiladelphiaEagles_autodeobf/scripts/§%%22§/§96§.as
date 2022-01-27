package §%"§
{
   import §'R§.§&r§;
   import §<!N§.§&M§;
   import §<!N§.Sprite;
   import §@M§.Texture;
   import §@V§.§"1§;
   import §^'§.§!!M§;
   import §^'§.§,!2§;
   import §`=§.§"R§;
   import §`=§.§24§;
   import §`=§.§?!E§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §96§
   {
      
      public static const §@f§:String = "ChannelSlingshot";
      
      public static const § n§:Number = 900;
      
      public static const §&&§:Number = 200;
      
      public static const §&K§:Number = 200;
      
      public static const §'!<§:Number = 1500;
      
      public static const §`'§:Number = 5000;
      
      public static const §8I§:Number = 1000;
      
      public static const §-K§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §-o§:Number;
      
      protected var §2!9§:Number;
      
      protected var §-Q§:Number;
      
      protected var §%#§:Number;
      
      private var §?W§:§?!E§;
      
      protected var §-"§:Number;
      
      protected var § F§:Number = 1;
      
      private var §=!"§:Sprite;
      
      protected var §"-§:§,!2§;
      
      private var §!!;§:§&M§;
      
      protected var §package§:§7?§;
      
      private var §<U§:Number;
      
      private var §++§:Boolean = false;
      
      private var §&L§:Boolean = false;
      
      protected var § =§:Boolean = false;
      
      private var §9I§:Number;
      
      private var §?K§:Number = 0;
      
      private var §4!-§:Number = 0;
      
      private var §>=§:Number = 0;
      
      private var §^!%§:Number = 1000;
      
      private var §9J§:Number;
      
      private var §0J§:Number;
      
      private var §8R§:int;
      
      private var §,d§:Number = 0;
      
      protected var §'!G§:Number;
      
      protected var §7!2§:Number;
      
      private var §8!-§:Number = 1;
      
      private var §&H§:Number = 0;
      
      private var §%7§:b2Vec2;
      
      private var §"!3§:Number = 1;
      
      public function §96§(param1:§7?§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§package§ = param1;
         this.§=!"§ = param2;
         this.mName = param3;
         this.§?W§ = §"R§.§^!'§(this.mName).§1`§;
         this.§-o§ = param4;
         this.§2!9§ = param5;
         this.§-Q§ = param4;
         this.§%#§ = param5;
         this.§-"§ = 0;
         this.§++§ = false;
         this.§&L§ = false;
         this.§?K§ = 0;
         this.§3n§();
         this.§'!G§ = 0;
      }
      
      public function §0!+§() : void
      {
         this.§++§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§=!"§)
         {
            this.§=!"§.dispose();
            this.§=!"§ = null;
         }
      }
      
      public function §0j§(param1:Number) : void
      {
         if(!this.§&L§ || this.§++§)
         {
            return;
         }
         if(this.§ F§ != 0)
         {
            this.§>=§ = 0;
            this.§,d§ = 0;
            this.§-"§ = 0;
            this.§0J§ = 0;
            this.§ F§ = 0;
         }
         param1 = Math.min(param1,this.§9I§);
         this.§-o§ += param1 * (this.§package§.§-o§ - this.§-o§) / this.§9I§;
         this.§2!9§ += param1 * (this.§package§.§2!9§ - this.§2!9§) / this.§9I§;
         this.§2!9§ -= param1 / 50 * (this.§9I§ / § n§);
         this.§-"§ += param1 * (360 - this.§-"§) / this.§9I§;
         this.§9I§ -= param1;
         if(this.§9I§ <= 0)
         {
            this.§-o§ = this.§package§.§-o§;
            this.§2!9§ = this.§package§.§2!9§;
            this.§&L§ = false;
            this.§++§ = true;
            this.§-"§ = 0;
         }
         this.§;$§();
      }
      
      public function §]c§() : void
      {
         this.§&L§ = true;
         this.§9I§ = § n§;
         this.§ j§(§?!E§.§^Z§);
         if(this.§,d§ != 0)
         {
            this.§2!9§ += this.§,d§;
            this.§,d§ = 0;
         }
      }
      
      public function §4!B§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§++§ && this.§'!G§ >= 0)
         {
            if(this.§7!2§ > this.§package§.§-H§.§#z§.§=a§)
            {
               this.§,!E§(this.§package§.§-H§.§#z§.§=a§ - this.§7!2§);
               this.§'!G§ = -1;
            }
            this.§'!G§ -= param1;
            if(this.§'!G§ <= 0)
            {
               if(this.§>=§ > 0)
               {
                  this.§'!G§ = this.§>=§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§7!2§))
               {
                  _loc2_ = this.§package§.§-H§.objects.§[!D§(this.§-o§,this.§7!2§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§,!E§(param1 / 100))
                  {
                     this.§'!G§ = -1;
                  }
                  else
                  {
                     this.§'!G§ = 0;
                  }
               }
               else if(!this.§package§.§-H§.objects.§99§(_loc2_).§4! §)
               {
                  this.§ =§ = false;
                  this.§'!G§ = -1;
               }
               else if(this.§package§.§-H§.objects.§99§(_loc2_).§8@§())
               {
                  this.§ =§ = false;
                  this.§'!G§ = 2000;
               }
               else
               {
                  this.§'!G§ = 500;
               }
            }
         }
      }
      
      public function §,!E§(param1:Number) : Boolean
      {
         this.§2!9§ += param1;
         this.§7!2§ += param1;
         if(this.§7!2§ > this.§package§.§-H§.§#z§.§=a§)
         {
            param1 = this.§7!2§ - this.§package§.§-H§.§#z§.§=a§;
            this.§2!9§ -= param1;
            this.§7!2§ -= param1;
            this.§;$§();
            return true;
         }
         this.§;$§();
         return false;
      }
      
      public function §3n§() : void
      {
         var _loc1_:§24§ = §"R§.§^!'§(this.mName).shape;
         if(_loc1_.§8§() == §24§.§<<§)
         {
            this.§%7§ = _loc1_.§'U§()[0];
            this.§<U§ = _loc1_.§0!4§;
         }
         else if(_loc1_.§8§() == §24§.§9=§)
         {
            this.§%7§ = new b2Vec2(0,0);
            this.§<U§ = 1.5;
         }
         this.§"-§ = this.§package§.§-H§.§4i§.getAnimation(this.mName);
         if(!this.§"-§)
         {
            this.§>!=§(null);
         }
         else
         {
            this.§>!=§(this.§"-§.getFrame(0));
         }
      }
      
      public function §>!=§(param1:§!!M§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§package§.§`t§.textureManager.§;k§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§!!;§ == null)
         {
            this.§!!;§ = new §&M§(_loc2_);
            this.§=!"§.addChild(this.§!!;§);
         }
         else
         {
            this.§!!;§.texture = _loc2_;
         }
         if(param1)
         {
            this.§!!;§.x = -param1.pivotX - this.§%7§.x / § do§.§^!I§;
            this.§!!;§.y = -param1.pivotY - this.§%7§.y / § do§.§^!I§;
         }
         else
         {
            this.§!!;§.x = -this.§!!;§.width / 2;
            this.§!!;§.y = -this.§!!;§.height / 2;
         }
         this.§!!;§.scaleX = _loc3_;
         this.§!!;§.scaleY = _loc3_;
         this.§;$§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§4!B§(param1);
         if(this.§&L§)
         {
            this.§>=§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§@!P§(param1);
            this.§+!=§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§2!P§(param1,param2);
            }
         }
      }
      
      public function §@!P§(param1:Number) : void
      {
         if(this.§?K§ > 0)
         {
            this.§?K§ -= param1;
            if(this.§?K§ <= 0)
            {
               this.§]!?§();
            }
         }
         else if(this.§4!-§ <= 0 && Math.random() * §'!<§ < param1 && this.§package§.mSlingShotState)
         {
            this.§,!J§();
         }
      }
      
      public function §]!?§() : void
      {
         this.§?K§ = 0;
         this.§>!=§(this.§"-§.getFrame(0));
      }
      
      public function §,!J§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§?K§ = §&&§;
         this.§>!=§(this.§"-§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §+!=§(param1:Number) : void
      {
         if(this.§4!-§ > 0)
         {
            this.§4!-§ -= param1;
            if(this.§4!-§ <= 0)
            {
               this.§,[§();
            }
         }
         else if(this.§?K§ <= 0 && Math.random() * §`'§ < param1)
         {
            this.§ j§();
         }
      }
      
      public function §,[§() : void
      {
         this.§4!-§ = 0;
         this.§>!=§(this.§"-§.getFrame(0));
      }
      
      public function § j§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§4!-§ > 0)
         {
            this.§,[§();
         }
         if(this.§?K§ > 0)
         {
            this.§]!?§();
         }
         if(param1 < 0)
         {
            param1 = §?!E§.§?F§;
         }
         this.§4!-§ = §&K§;
         this.§>!=§(this.§"-§.getSubAnimation("yell").getFrame(0));
         if(this.§++§ || this.§&L§ || param2)
         {
            §&r§.§>h§(param1,this.§?W§);
         }
         else
         {
            §&r§.§>h§(param1,this.§?W§,§@f§);
         }
      }
      
      public function §2!P§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§>=§ > 0)
         {
            this.§>=§ -= param1;
            if(this.§>=§ <= 0)
            {
               ++this.§8R§;
               this.§0J§ *= 0.4;
               if(!this.§++§ && this.§8R§ < 2)
               {
                  if(this.§8R§ > 1 && this.§0J§ < -1)
                  {
                     this.§0J§ = -1;
                  }
                  this.§9J§ = this.§0J§;
                  this.§>=§ = §-K§;
                  this.§>=§ *= Math.abs(this.§9J§) / 2;
                  this.§^!%§ = this.§>=§;
                  this.§-"§ = 0;
                  this.§ F§ = 0;
               }
               else if(!this.§++§ && param2)
               {
                  this.§0;§(2.25);
               }
               else
               {
                  this.§>=§ = 0;
                  this.§,d§ = 0;
                  this.§-"§ = 0;
                  this.§0J§ = 0;
               }
            }
            else
            {
               if(this.§>=§ >= this.§^!%§ / 2)
               {
                  _loc3_ = (this.§^!%§ - this.§>=§) / (this.§^!%§ / 2);
                  _loc3_ = §"1§.§#[§(_loc3_);
                  this.§,d§ = _loc3_ * this.§9J§;
               }
               else
               {
                  _loc3_ = (this.§^!%§ / 2 - this.§>=§) / (this.§^!%§ / 2);
                  _loc3_ = §"1§.§#[§(_loc3_,false);
                  this.§,d§ = this.§9J§ + _loc3_ * -this.§9J§;
               }
               this.§-"§ = 360 * §"1§.§#[§((this.§^!%§ - this.§>=§) / this.§^!%§) * this.§ F§;
            }
            this.§;$§();
         }
         else if(Math.random() * §8I§ < param1 && !this.§++§ && !this.§&L§ && !this.§ =§)
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
         this.§8R§ = 0;
         this.§>=§ = §-K§;
         this.§,d§ = 0;
         this.§9J§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§0J§ = this.§9J§;
         this.§>=§ *= Math.abs(this.§9J§) / 3;
         this.§^!%§ = this.§>=§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§ F§ = 0;
         }
         else if(this.§>=§ < 350)
         {
            this.§ F§ = 0;
         }
         else
         {
            this.§ F§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§ F§ = Math.random() > 0.5 ? Number(this.§ F§) : Number(0);
         }
      }
      
      public function §;$§() : void
      {
         this.§=!"§.x = this.§-o§ / § do§.§^!I§;
         this.§=!"§.y = (this.§2!9§ + this.§,d§) / § do§.§^!I§;
         this.§=!"§.rotation = this.§-"§ / 180 * Math.PI;
      }
      
      public function §^!O§() : void
      {
         this.§ =§ = true;
         this.§++§ = false;
         this.§&L§ = false;
         this.§8R§ = 0;
         this.§'!G§ = 0;
         this.§>=§ = 0;
         this.§>=§ = 0;
         this.§,d§ = 0;
         this.§-"§ = 0;
         this.§0J§ = 0;
         this.§ F§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§-o§) * (param1 - this.§-o§) + (param2 - this.§2!9§) * (param2 - this.§2!9§));
         if(_loc3_ <= this.§<U§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§-o§ >= param3 && this.§-o§ <= param4 && this.§2!9§ >= param1 && this.§2!9§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§-o§ != param1 || this.§2!9§ != param2)
         {
            _loc3_ = true;
         }
         this.§-o§ = param1;
         this.§2!9§ = param2;
         this.§'!G§ = 100;
         this.§;$§();
         if(_loc3_)
         {
            this.§package§.§"!A§();
         }
      }
      
      public function §0!!§() : §&M§
      {
         return this.§!!;§;
      }
      
      public function get §case§() : Number
      {
         return this.§>=§;
      }
      
      public function get §^+§() : Number
      {
         return this.§'!G§;
      }
      
      public function set §^+§(param1:Number) : void
      {
         this.§'!G§ = param1;
      }
      
      public function get §%G§() : Number
      {
         return this.§8!-§;
      }
      
      public function get §[j§() : Boolean
      {
         return this.§++§;
      }
      
      public function get radius() : Number
      {
         return this.§<U§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§=!"§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §%G§(param1:Number) : void
      {
         this.§8!-§ = param1;
      }
      
      public function get §5&§() : Number
      {
         return this.§&H§;
      }
      
      public function set §5&§(param1:Number) : void
      {
         this.§&H§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§"!3§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§"!3§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§-o§;
      }
      
      public function get y() : Number
      {
         return this.§2!9§;
      }
      
      public function get §#!Q§() : Number
      {
         return this.§-Q§;
      }
      
      public function get §;D§() : Number
      {
         return this.§%#§;
      }
   }
}
