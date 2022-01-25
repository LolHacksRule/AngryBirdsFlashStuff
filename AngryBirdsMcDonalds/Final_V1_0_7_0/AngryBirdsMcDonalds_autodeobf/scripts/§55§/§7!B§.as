package §55§
{
   import §&!9§.Texture;
   import §'!`§.§%!H§;
   import §0@§.§1]§;
   import §0@§.Sprite;
   import §0i§.§[e§;
   import §3G§.§-s§;
   import §3G§.§9! §;
   import §3G§.§9!g§;
   import §7! §.§%!h§;
   import §7! §.§;!7§;
   import §^!%§.b2Vec2;
   
   public class §7!B§
   {
      
      public static const §-!C§:String = "ChannelSlingshot";
      
      public static const §2$§:Number = 900;
      
      public static const §2!a§:Number = 200;
      
      public static const §5Y§:Number = 200;
      
      public static const §+!3§:Number = 1500;
      
      public static const §8R§:Number = 5000;
      
      public static const §4!$§:Number = 1000;
      
      public static const §'p§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §=!=§:Number;
      
      protected var §[!;§:Number;
      
      protected var §`!@§:Number;
      
      protected var §9!j§:Number;
      
      private var §7!U§:§9! §;
      
      protected var §?!g§:Number;
      
      protected var §#G§:Number = 1;
      
      private var §#Y§:Sprite;
      
      protected var §"y§:§;!7§;
      
      private var §+!B§:§1]§;
      
      protected var §;!q§:§"!P§;
      
      private var §7!Z§:Number;
      
      private var §>3§:Boolean = false;
      
      private var §^!4§:Boolean = false;
      
      protected var §<5§:Boolean = false;
      
      private var §0Z§:Number;
      
      private var §1O§:Number = 0;
      
      private var §1!i§:Number = 0;
      
      private var §<X§:Number = 0;
      
      private var §0f§:Number = 1000;
      
      private var §3!9§:Number;
      
      private var § 6§:Number;
      
      private var §-!5§:int;
      
      private var §-!c§:Number = 0;
      
      protected var §&d§:Number;
      
      protected var §6!p§:Number;
      
      private var §-A§:Number = 1;
      
      private var § !0§:Number = 0;
      
      private var §+!,§:b2Vec2;
      
      private var §9n§:Number = 1;
      
      public function §7!B§(param1:§"!P§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§;!q§ = param1;
         this.§#Y§ = param2;
         this.mName = param3;
         this.§7!U§ = §-s§.§[!G§(this.mName).§[u§;
         this.§=!=§ = param4;
         this.§[!;§ = param5;
         this.§`!@§ = param4;
         this.§9!j§ = param5;
         this.§?!g§ = 0;
         this.§>3§ = false;
         this.§^!4§ = false;
         this.§1O§ = 0;
         this.§2j§();
         this.§&d§ = 0;
      }
      
      public function §-]§() : void
      {
         this.§>3§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§#Y§)
         {
            this.§#Y§.dispose();
            this.§#Y§ = null;
         }
      }
      
      public function §<#§(param1:Number) : void
      {
         if(!this.§^!4§ || this.§>3§)
         {
            return;
         }
         if(this.§#G§ != 0)
         {
            this.§<X§ = 0;
            this.§-!c§ = 0;
            this.§?!g§ = 0;
            this.§ 6§ = 0;
            this.§#G§ = 0;
         }
         param1 = Math.min(param1,this.§0Z§);
         this.§=!=§ += param1 * (this.§;!q§.§=!=§ - this.§=!=§) / this.§0Z§;
         this.§[!;§ += param1 * (this.§;!q§.§[!;§ - this.§[!;§) / this.§0Z§;
         this.§[!;§ -= param1 / 50 * (this.§0Z§ / §2$§);
         this.§?!g§ += param1 * (360 - this.§?!g§) / this.§0Z§;
         this.§0Z§ -= param1;
         if(this.§0Z§ <= 0)
         {
            this.§=!=§ = this.§;!q§.§=!=§;
            this.§[!;§ = this.§;!q§.§[!;§;
            this.§^!4§ = false;
            this.§>3§ = true;
            this.§?!g§ = 0;
         }
         this.§75§();
      }
      
      public function §6l§() : void
      {
         this.§^!4§ = true;
         this.§0Z§ = §2$§;
         this.§>!?§(§9! §.§"O§);
         if(this.§-!c§ != 0)
         {
            this.§[!;§ += this.§-!c§;
            this.§-!c§ = 0;
         }
      }
      
      public function §!L§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§>3§ && this.§&d§ >= 0)
         {
            if(this.§6!p§ > this.§;!q§.mLevelMain.§<+§.§,!Y§)
            {
               this.§'S§(this.§;!q§.mLevelMain.§<+§.§,!Y§ - this.§6!p§);
               this.§&d§ = -1;
            }
            this.§&d§ -= param1;
            if(this.§&d§ <= 0)
            {
               if(this.§<X§ > 0)
               {
                  this.§&d§ = this.§<X§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§6!p§))
               {
                  _loc2_ = this.§;!q§.mLevelMain.objects.§89§(this.§=!=§,this.§6!p§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§'S§(param1 / 100))
                  {
                     this.§&d§ = -1;
                  }
                  else
                  {
                     this.§&d§ = 0;
                  }
               }
               else if(!this.§;!q§.mLevelMain.objects.§3$§(_loc2_).§'!8§)
               {
                  this.§<5§ = false;
                  this.§&d§ = -1;
               }
               else if(this.§;!q§.mLevelMain.objects.§3$§(_loc2_).§1-§())
               {
                  this.§<5§ = false;
                  this.§&d§ = 2000;
               }
               else
               {
                  this.§&d§ = 500;
               }
            }
         }
      }
      
      public function §'S§(param1:Number) : Boolean
      {
         this.§[!;§ += param1;
         this.§6!p§ += param1;
         if(this.§6!p§ > this.§;!q§.mLevelMain.§<+§.§,!Y§)
         {
            param1 = this.§6!p§ - this.§;!q§.mLevelMain.§<+§.§,!Y§;
            this.§[!;§ -= param1;
            this.§6!p§ -= param1;
            this.§75§();
            return true;
         }
         this.§75§();
         return false;
      }
      
      public function §2j§() : void
      {
         var _loc1_:§9!g§ = §-s§.§[!G§(this.mName).shape;
         if(_loc1_.§4E§() == §9!g§.§]!6§)
         {
            this.§+!,§ = _loc1_.§'!2§()[0];
            this.§7!Z§ = _loc1_.§"§;
         }
         else if(_loc1_.§4E§() == §9!g§.§,d§)
         {
            this.§+!,§ = new b2Vec2(0,0);
            this.§7!Z§ = 1.5;
         }
         this.§"y§ = this.§;!q§.mLevelMain.animationManager.getAnimation(this.mName);
         if(!this.§"y§)
         {
            this.§3%§(null);
         }
         else
         {
            this.§3%§(this.§"y§.getFrame(0));
         }
      }
      
      public function §3%§(param1:§%!h§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§;!q§.§]!5§.textureManager.§9Q§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§+!B§ == null)
         {
            this.§+!B§ = new §1]§(_loc2_);
            this.§#Y§.addChild(this.§+!B§);
         }
         else
         {
            this.§+!B§.texture = _loc2_;
         }
         if(param1)
         {
            this.§+!B§.x = -param1.pivotX - this.§+!,§.x / §>![§.§%!k§;
            this.§+!B§.y = -param1.pivotY - this.§+!,§.y / §>![§.§%!k§;
         }
         else
         {
            this.§+!B§.x = -this.§+!B§.width / 2;
            this.§+!B§.y = -this.§+!B§.height / 2;
         }
         this.§+!B§.scaleX = _loc3_;
         this.§+!B§.scaleY = _loc3_;
         this.§75§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§!L§(param1);
         if(this.§^!4§)
         {
            this.§<X§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§,s§(param1);
            this.§5E§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§"J§(param1,param2);
            }
         }
      }
      
      public function §,s§(param1:Number) : void
      {
         if(this.§1O§ > 0)
         {
            this.§1O§ -= param1;
            if(this.§1O§ <= 0)
            {
               this.§;7§();
            }
         }
         else if(this.§1!i§ <= 0 && Math.random() * §+!3§ < param1 && this.§;!q§.mSlingShotState)
         {
            this.§-P§();
         }
      }
      
      public function §;7§() : void
      {
         this.§1O§ = 0;
         this.§3%§(this.§"y§.getFrame(0));
      }
      
      public function §-P§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§1O§ = §2!a§;
         this.§3%§(this.§"y§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §5E§(param1:Number) : void
      {
         if(this.§1!i§ > 0)
         {
            this.§1!i§ -= param1;
            if(this.§1!i§ <= 0)
            {
               this.§!!o§();
            }
         }
         else if(this.§1O§ <= 0 && Math.random() * §8R§ < param1)
         {
            this.§>!?§();
         }
      }
      
      public function §!!o§() : void
      {
         this.§1!i§ = 0;
         this.§3%§(this.§"y§.getFrame(0));
      }
      
      public function §>!?§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§1!i§ > 0)
         {
            this.§!!o§();
         }
         if(this.§1O§ > 0)
         {
            this.§;7§();
         }
         if(param1 < 0)
         {
            param1 = §9! §.§!%§;
         }
         this.§1!i§ = §5Y§;
         this.§3%§(this.§"y§.getSubAnimation("yell").getFrame(0));
         if(this.§>3§ || this.§^!4§ || param2)
         {
            §%!H§.§>!J§(param1,this.§7!U§);
         }
         else
         {
            §%!H§.§>!J§(param1,this.§7!U§,§-!C§);
         }
      }
      
      public function §"J§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§<X§ > 0)
         {
            this.§<X§ -= param1;
            if(this.§<X§ <= 0)
            {
               ++this.§-!5§;
               this.§ 6§ *= 0.4;
               if(!this.§>3§ && this.§-!5§ < 2)
               {
                  if(this.§-!5§ > 1 && this.§ 6§ < -1)
                  {
                     this.§ 6§ = -1;
                  }
                  this.§3!9§ = this.§ 6§;
                  this.§<X§ = §'p§;
                  this.§<X§ *= Math.abs(this.§3!9§) / 2;
                  this.§0f§ = this.§<X§;
                  this.§?!g§ = 0;
                  this.§#G§ = 0;
               }
               else if(!this.§>3§ && param2)
               {
                  this.§^!1§(2.25);
               }
               else
               {
                  this.§<X§ = 0;
                  this.§-!c§ = 0;
                  this.§?!g§ = 0;
                  this.§ 6§ = 0;
               }
            }
            else
            {
               if(this.§<X§ >= this.§0f§ / 2)
               {
                  _loc3_ = (this.§0f§ - this.§<X§) / (this.§0f§ / 2);
                  _loc3_ = §[e§.§"T§(_loc3_);
                  this.§-!c§ = _loc3_ * this.§3!9§;
               }
               else
               {
                  _loc3_ = (this.§0f§ / 2 - this.§<X§) / (this.§0f§ / 2);
                  _loc3_ = §[e§.§"T§(_loc3_,false);
                  this.§-!c§ = this.§3!9§ + _loc3_ * -this.§3!9§;
               }
               this.§?!g§ = 360 * §[e§.§"T§((this.§0f§ - this.§<X§) / this.§0f§) * this.§#G§;
            }
            this.§75§();
         }
         else if(Math.random() * §4!$§ < param1 && !this.§>3§ && !this.§^!4§ && !this.§<5§)
         {
            this.§^!1§();
         }
      }
      
      public function §^!1§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§-!5§ = 0;
         this.§<X§ = §'p§;
         this.§-!c§ = 0;
         this.§3!9§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§ 6§ = this.§3!9§;
         this.§<X§ *= Math.abs(this.§3!9§) / 3;
         this.§0f§ = this.§<X§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§#G§ = 0;
         }
         else if(this.§<X§ < 350)
         {
            this.§#G§ = 0;
         }
         else
         {
            this.§#G§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§#G§ = Math.random() > 0.5 ? Number(this.§#G§) : Number(0);
         }
      }
      
      public function §75§() : void
      {
         this.§#Y§.x = this.§=!=§ / §>![§.§%!k§;
         this.§#Y§.y = (this.§[!;§ + this.§-!c§) / §>![§.§%!k§;
         this.§#Y§.rotation = this.§?!g§ / 180 * Math.PI;
      }
      
      public function §!!;§() : void
      {
         this.§<5§ = true;
         this.§>3§ = false;
         this.§^!4§ = false;
         this.§-!5§ = 0;
         this.§&d§ = 0;
         this.§<X§ = 0;
         this.§<X§ = 0;
         this.§-!c§ = 0;
         this.§?!g§ = 0;
         this.§ 6§ = 0;
         this.§#G§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§=!=§) * (param1 - this.§=!=§) + (param2 - this.§[!;§) * (param2 - this.§[!;§));
         if(_loc3_ <= this.§7!Z§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§=!=§ >= param3 && this.§=!=§ <= param4 && this.§[!;§ >= param1 && this.§[!;§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§=!=§ != param1 || this.§[!;§ != param2)
         {
            _loc3_ = true;
         }
         this.§=!=§ = param1;
         this.§[!;§ = param2;
         this.§&d§ = 100;
         this.§75§();
         if(_loc3_)
         {
            this.§;!q§.§9!@§();
         }
      }
      
      public function §2!i§() : §1]§
      {
         return this.§+!B§;
      }
      
      public function get §'4§() : Number
      {
         return this.§<X§;
      }
      
      public function get §"-§() : Number
      {
         return this.§&d§;
      }
      
      public function set §"-§(param1:Number) : void
      {
         this.§&d§ = param1;
      }
      
      public function get §80§() : Number
      {
         return this.§-A§;
      }
      
      public function get §7+§() : Boolean
      {
         return this.§>3§;
      }
      
      public function get radius() : Number
      {
         return this.§7!Z§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§#Y§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §80§(param1:Number) : void
      {
         this.§-A§ = param1;
      }
      
      public function get §6!j§() : Number
      {
         return this.§ !0§;
      }
      
      public function set §6!j§(param1:Number) : void
      {
         this.§ !0§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§9n§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§9n§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§=!=§;
      }
      
      public function get y() : Number
      {
         return this.§[!;§;
      }
      
      public function get §5'§() : Number
      {
         return this.§`!@§;
      }
      
      public function get §'!X§() : Number
      {
         return this.§9!j§;
      }
   }
}
