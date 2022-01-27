package §2z§
{
   import § !3§.§>k§;
   import §#!6§.Texture;
   import §+!#§.§9!5§;
   import §0!=§.b2Vec2;
   import §4!e§.§ !0§;
   import §4!e§.§+!Y§;
   import §4!e§.§[l§;
   import §=!E§.Sprite;
   import §=!E§.§try§;
   import §]!C§.§'!!§;
   import §]!C§.§<!c§;
   
   public class §]'§
   {
      
      public static const §3!M§:String = "ChannelSlingshot";
      
      public static const §?!b§:Number = 900;
      
      public static const §-h§:Number = 200;
      
      public static const §?!]§:Number = 200;
      
      public static const §%!5§:Number = 1500;
      
      public static const §catch§:Number = 5000;
      
      public static const §1!c§:Number = 1000;
      
      public static const §''§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §[!#§:Number;
      
      protected var §?=§:Number;
      
      protected var §-_§:Number;
      
      protected var §^!2§:Number;
      
      private var §]w§:§ !0§;
      
      protected var §7!,§:Number;
      
      protected var §,J§:Number = 1;
      
      private var §"!B§:Sprite;
      
      protected var §?!F§:§<!c§;
      
      private var §9!!§:§try§;
      
      protected var §&!F§:§@!N§;
      
      private var §#!§:Number;
      
      private var §0!#§:Boolean = false;
      
      private var § !e§:Boolean = false;
      
      protected var §5!]§:Boolean = false;
      
      private var §!!Z§:Number;
      
      private var §,@§:Number = 0;
      
      private var §`"§:Number = 0;
      
      private var §4>§:Number = 0;
      
      private var §7>§:Number = 1000;
      
      private var §21§:Number;
      
      private var §,!>§:Number;
      
      private var §[#§:int;
      
      private var §+9§:Number = 0;
      
      protected var §,!f§:Number;
      
      protected var §@!1§:Number;
      
      private var §!V§:Number = 1;
      
      private var §+!"§:Number = 0;
      
      private var §%![§:b2Vec2;
      
      private var §35§:Number = 1;
      
      public function §]'§(param1:§@!N§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§&!F§ = param1;
         this.§"!B§ = param2;
         this.mName = param3;
         this.§]w§ = §+!Y§.§#o§(this.mName).§ var§;
         this.§[!#§ = param4;
         this.§?=§ = param5;
         this.§-_§ = param4;
         this.§^!2§ = param5;
         this.§7!,§ = 0;
         this.§0!#§ = false;
         this.§ !e§ = false;
         this.§,@§ = 0;
         this.§#!c§();
         this.§,!f§ = 0;
      }
      
      public function §"!A§() : void
      {
         this.§0!#§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§"!B§)
         {
            this.§"!B§.dispose();
            this.§"!B§ = null;
         }
      }
      
      public function §case§(param1:Number) : void
      {
         if(!this.§ !e§ || this.§0!#§)
         {
            return;
         }
         if(this.§,J§ != 0)
         {
            this.§4>§ = 0;
            this.§+9§ = 0;
            this.§7!,§ = 0;
            this.§,!>§ = 0;
            this.§,J§ = 0;
         }
         param1 = Math.min(param1,this.§!!Z§);
         this.§[!#§ += param1 * (this.§&!F§.§[!#§ - this.§[!#§) / this.§!!Z§;
         this.§?=§ += param1 * (this.§&!F§.§?=§ - this.§?=§) / this.§!!Z§;
         this.§?=§ -= param1 / 50 * (this.§!!Z§ / §?!b§);
         this.§7!,§ += param1 * (360 - this.§7!,§) / this.§!!Z§;
         this.§!!Z§ -= param1;
         if(this.§!!Z§ <= 0)
         {
            this.§[!#§ = this.§&!F§.§[!#§;
            this.§?=§ = this.§&!F§.§?=§;
            this.§ !e§ = false;
            this.§0!#§ = true;
            this.§7!,§ = 0;
         }
         this.§2!e§();
      }
      
      public function § !$§() : void
      {
         this.§ !e§ = true;
         this.§!!Z§ = §?!b§;
         this.§2+§(§ !0§.§90§);
         if(this.§+9§ != 0)
         {
            this.§?=§ += this.§+9§;
            this.§+9§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§0!#§ && this.§,!f§ >= 0)
         {
            if(this.§@!1§ > this.§&!F§.§7o§.§@!a§.§<k§)
            {
               this.applyGravity(this.§&!F§.§7o§.§@!a§.§<k§ - this.§@!1§);
               this.§,!f§ = -1;
            }
            this.§,!f§ -= param1;
            if(this.§,!f§ <= 0)
            {
               if(this.§4>§ > 0)
               {
                  this.§,!f§ = this.§4>§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§@!1§))
               {
                  _loc2_ = this.§&!F§.§7o§.objects.§^M§(this.§[!#§,this.§@!1§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§,!f§ = -1;
                  }
                  else
                  {
                     this.§,!f§ = 0;
                  }
               }
               else if(!this.§&!F§.§7o§.objects.§?j§(_loc2_).§[!P§)
               {
                  this.§5!]§ = false;
                  this.§,!f§ = -1;
               }
               else if(this.§&!F§.§7o§.objects.§?j§(_loc2_).§1!'§())
               {
                  this.§5!]§ = false;
                  this.§,!f§ = 2000;
               }
               else
               {
                  this.§,!f§ = 500;
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§?=§ += param1;
         this.§@!1§ += param1;
         if(this.§@!1§ > this.§&!F§.§7o§.§@!a§.§<k§)
         {
            param1 = this.§@!1§ - this.§&!F§.§7o§.§@!a§.§<k§;
            this.§?=§ -= param1;
            this.§@!1§ -= param1;
            this.§2!e§();
            return true;
         }
         this.§2!e§();
         return false;
      }
      
      public function §#!c§() : void
      {
         var _loc1_:§[l§ = §+!Y§.§#o§(this.mName).shape;
         if(_loc1_.§81§() == §[l§.§[!U§)
         {
            this.§%![§ = _loc1_.§+!A§()[0];
            this.§#!§ = _loc1_.§+L§;
         }
         else if(_loc1_.§81§() == §[l§.§#M§)
         {
            this.§%![§ = new b2Vec2(0,0);
            this.§#!§ = 1.5;
         }
         this.§?!F§ = this.§&!F§.§7o§.§=_§.§7!0§(this.mName);
         if(!this.§?!F§)
         {
            this.setPivotTexture(null);
         }
         else
         {
            this.setPivotTexture(this.§?!F§.getFrame(0));
         }
      }
      
      public function setPivotTexture(param1:§'!!§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§&!F§.§,B§.textureManager.§do §();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§9!!§ == null)
         {
            this.§9!!§ = new §try§(_loc2_);
            this.§"!B§.addChild(this.§9!!§);
         }
         else
         {
            this.§9!!§.texture = _loc2_;
         }
         if(param1)
         {
            this.§9!!§.x = -param1.pivotX - this.§%![§.x / §2!U§.§&%§;
            this.§9!!§.y = -param1.pivotY - this.§%![§.y / §2!U§.§&%§;
         }
         else
         {
            this.§9!!§.x = -this.§9!!§.width / 2;
            this.§9!!§.y = -this.§9!!§.height / 2;
         }
         this.§9!!§.scaleX = _loc3_;
         this.§9!!§.scaleY = _loc3_;
         this.§2!e§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§ !e§)
         {
            this.§4>§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§7a§(param1);
            this.§3!K§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§@J§(param1,param2);
            }
         }
      }
      
      public function §7a§(param1:Number) : void
      {
         if(this.§,@§ > 0)
         {
            this.§,@§ -= param1;
            if(this.§,@§ <= 0)
            {
               this.§7!9§();
            }
         }
         else if(this.§`"§ <= 0 && Math.random() * §%!5§ < param1 && this.§&!F§.mSlingShotState)
         {
            this.§!w§();
         }
      }
      
      public function §7!9§() : void
      {
         this.§,@§ = 0;
         this.setPivotTexture(this.§?!F§.getFrame(0));
      }
      
      public function §!w§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§,@§ = §-h§;
         this.setPivotTexture(this.§?!F§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §3!K§(param1:Number) : void
      {
         if(this.§`"§ > 0)
         {
            this.§`"§ -= param1;
            if(this.§`"§ <= 0)
            {
               this.§@h§();
            }
         }
         else if(this.§,@§ <= 0 && Math.random() * §catch§ < param1)
         {
            this.§2+§();
         }
      }
      
      public function §@h§() : void
      {
         this.§`"§ = 0;
         this.setPivotTexture(this.§?!F§.getFrame(0));
      }
      
      public function §2+§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§`"§ > 0)
         {
            this.§@h§();
         }
         if(this.§,@§ > 0)
         {
            this.§7!9§();
         }
         if(param1 < 0)
         {
            param1 = § !0§.§'!Y§;
         }
         this.§`"§ = §?!]§;
         this.setPivotTexture(this.§?!F§.getSubAnimation("yell").getFrame(0));
         if(this.§0!#§ || this.§ !e§ || param2)
         {
            §9!5§.§"!'§(param1,this.§]w§);
         }
         else
         {
            §9!5§.§"!'§(param1,this.§]w§,§3!M§);
         }
      }
      
      public function §@J§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§4>§ > 0)
         {
            this.§4>§ -= param1;
            if(this.§4>§ <= 0)
            {
               ++this.§[#§;
               this.§,!>§ *= 0.4;
               if(!this.§0!#§ && this.§[#§ < 2)
               {
                  if(this.§[#§ > 1 && this.§,!>§ < -1)
                  {
                     this.§,!>§ = -1;
                  }
                  this.§21§ = this.§,!>§;
                  this.§4>§ = §''§;
                  this.§4>§ *= Math.abs(this.§21§) / 2;
                  this.§7>§ = this.§4>§;
                  this.§7!,§ = 0;
                  this.§,J§ = 0;
               }
               else if(!this.§0!#§ && param2)
               {
                  this.§2N§(2.25);
               }
               else
               {
                  this.§4>§ = 0;
                  this.§+9§ = 0;
                  this.§7!,§ = 0;
                  this.§,!>§ = 0;
               }
            }
            else
            {
               if(this.§4>§ >= this.§7>§ / 2)
               {
                  _loc3_ = (this.§7>§ - this.§4>§) / (this.§7>§ / 2);
                  _loc3_ = §>k§.§>_§(_loc3_);
                  this.§+9§ = _loc3_ * this.§21§;
               }
               else
               {
                  _loc3_ = (this.§7>§ / 2 - this.§4>§) / (this.§7>§ / 2);
                  _loc3_ = §>k§.§>_§(_loc3_,false);
                  this.§+9§ = this.§21§ + _loc3_ * -this.§21§;
               }
               this.§7!,§ = 360 * §>k§.§>_§((this.§7>§ - this.§4>§) / this.§7>§) * this.§,J§;
            }
            this.§2!e§();
         }
         else if(Math.random() * §1!c§ < param1 && !this.§0!#§ && !this.§ !e§ && !this.§5!]§)
         {
            this.§2N§();
         }
      }
      
      public function §2N§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§[#§ = 0;
         this.§4>§ = §''§;
         this.§+9§ = 0;
         this.§21§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§,!>§ = this.§21§;
         this.§4>§ *= Math.abs(this.§21§) / 3;
         this.§7>§ = this.§4>§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§,J§ = 0;
         }
         else if(this.§4>§ < 350)
         {
            this.§,J§ = 0;
         }
         else
         {
            this.§,J§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§,J§ = Math.random() > 0.5 ? Number(this.§,J§) : Number(0);
         }
      }
      
      public function §2!e§() : void
      {
         this.§"!B§.x = this.§[!#§ / §2!U§.§&%§;
         this.§"!B§.y = (this.§?=§ + this.§+9§) / §2!U§.§&%§;
         this.§"!B§.rotation = this.§7!,§ / 180 * Math.PI;
      }
      
      public function §'!2§() : void
      {
         this.§5!]§ = true;
         this.§0!#§ = false;
         this.§ !e§ = false;
         this.§[#§ = 0;
         this.§,!f§ = 0;
         this.§4>§ = 0;
         this.§4>§ = 0;
         this.§+9§ = 0;
         this.§7!,§ = 0;
         this.§,!>§ = 0;
         this.§,J§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§[!#§) * (param1 - this.§[!#§) + (param2 - this.§?=§) * (param2 - this.§?=§));
         if(_loc3_ <= this.§#!§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§[!#§ >= param3 && this.§[!#§ <= param4 && this.§?=§ >= param1 && this.§?=§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§[!#§ != param1 || this.§?=§ != param2)
         {
            _loc3_ = true;
         }
         this.§[!#§ = param1;
         this.§?=§ = param2;
         this.§,!f§ = 100;
         this.§2!e§();
         if(_loc3_)
         {
            this.§&!F§.§62§();
         }
      }
      
      public function §6s§() : §try§
      {
         return this.§9!!§;
      }
      
      public function get §!!a§() : Number
      {
         return this.§4>§;
      }
      
      public function get §',§() : Number
      {
         return this.§,!f§;
      }
      
      public function set §',§(param1:Number) : void
      {
         this.§,!f§ = param1;
      }
      
      public function get §1s§() : Number
      {
         return this.§!V§;
      }
      
      public function get §`^§() : Boolean
      {
         return this.§0!#§;
      }
      
      public function get radius() : Number
      {
         return this.§#!§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§"!B§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §1s§(param1:Number) : void
      {
         this.§!V§ = param1;
      }
      
      public function get §2!8§() : Number
      {
         return this.§+!"§;
      }
      
      public function set §2!8§(param1:Number) : void
      {
         this.§+!"§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§35§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§35§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§[!#§;
      }
      
      public function get y() : Number
      {
         return this.§?=§;
      }
      
      public function get §7!e§() : Number
      {
         return this.§-_§;
      }
      
      public function get §0V§() : Number
      {
         return this.§^!2§;
      }
   }
}
