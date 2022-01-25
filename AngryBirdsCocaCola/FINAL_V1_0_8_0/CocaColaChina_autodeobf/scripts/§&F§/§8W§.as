package §&F§
{
   import §%!a§.§ !R§;
   import §%!a§.§0m§;
   import §%!a§.§^!=§;
   import §&!9§.§,,§;
   import §&!9§.Sprite;
   import §48§.§6!Z§;
   import §48§.§8!'§;
   import §6!4§.Texture;
   import §6V§.b2Vec2;
   import §^!$§.§?![§;
   import §^=§.§5e§;
   
   public class §8W§
   {
      
      public static const §1N§:String = "ChannelSlingshot";
      
      public static const §&!X§:Number = 900;
      
      public static const §7!V§:Number = 200;
      
      public static const §?f§:Number = 200;
      
      public static const §4!A§:Number = 1500;
      
      public static const §2!V§:Number = 5000;
      
      public static const §]!L§:Number = 1000;
      
      public static const §8D§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §!f§:Number;
      
      protected var §@;§:Number;
      
      protected var §'l§:Number;
      
      protected var §`>§:Number;
      
      private var §%]§:§^!=§;
      
      protected var §%!H§:Number;
      
      protected var §]0§:Number = 1;
      
      private var §@!Y§:Sprite;
      
      protected var §4k§:§8!'§;
      
      private var §&J§:§,,§;
      
      protected var § in§:§2!4§;
      
      private var §-!;§:Number;
      
      private var §"e§:Boolean = false;
      
      private var §3!c§:Boolean = false;
      
      protected var §8R§:Boolean = false;
      
      private var §#§:Number;
      
      private var §6!8§:Number = 0;
      
      private var §8§:Number = 0;
      
      private var §0K§:Number = 0;
      
      private var §97§:Number = 1000;
      
      private var §@F§:Number;
      
      private var §9!Q§:Number;
      
      private var §;V§:int;
      
      private var § a§:Number = 0;
      
      protected var §%!>§:Number;
      
      protected var § case§:Number;
      
      private var §!w§:Number = 1;
      
      private var §`;§:Number = 0;
      
      private var §9N§:b2Vec2;
      
      private var § !@§:Number = 1;
      
      public function §8W§(param1:§2!4§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§ in§ = param1;
         this.§@!Y§ = param2;
         this.mName = param3;
         this.§%]§ = § !R§.§^L§(this.mName).§%!P§;
         this.§!f§ = param4;
         this.§@;§ = param5;
         this.§'l§ = param4;
         this.§`>§ = param5;
         this.§%!H§ = 0;
         this.§"e§ = false;
         this.§3!c§ = false;
         this.§6!8§ = 0;
         this.§8U§();
         this.§%!>§ = 0;
      }
      
      public function §=!K§() : void
      {
         this.§"e§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§@!Y§)
         {
            this.§@!Y§.dispose();
            this.§@!Y§ = null;
         }
      }
      
      public function §!!2§(param1:Number) : void
      {
         if(!this.§3!c§ || this.§"e§)
         {
            return;
         }
         if(this.§]0§ != 0)
         {
            this.§0K§ = 0;
            this.§ a§ = 0;
            this.§%!H§ = 0;
            this.§9!Q§ = 0;
            this.§]0§ = 0;
         }
         param1 = Math.min(param1,this.§#§);
         this.§!f§ += param1 * (this.§ in§.§!f§ - this.§!f§) / this.§#§;
         this.§@;§ += param1 * (this.§ in§.§@;§ - this.§@;§) / this.§#§;
         this.§@;§ -= param1 / 50 * (this.§#§ / §&!X§);
         this.§%!H§ += param1 * (360 - this.§%!H§) / this.§#§;
         this.§#§ -= param1;
         if(this.§#§ <= 0)
         {
            this.§!f§ = this.§ in§.§!f§;
            this.§@;§ = this.§ in§.§@;§;
            this.§3!c§ = false;
            this.§"e§ = true;
            this.§%!H§ = 0;
         }
         this.§1Q§();
      }
      
      public function §-!R§() : void
      {
         this.§3!c§ = true;
         this.§#§ = §&!X§;
         this.§"D§(§^!=§.§5x§);
         if(this.§ a§ != 0)
         {
            this.§@;§ += this.§ a§;
            this.§ a§ = 0;
         }
      }
      
      public function §+0§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§"e§ && this.§%!>§ >= 0)
         {
            if(this.§ case§ > this.§ in§.mLevelMain.§&!D§.§]![§)
            {
               this.§8I§(this.§ in§.mLevelMain.§&!D§.§]![§ - this.§ case§);
               this.§%!>§ = -1;
            }
            this.§%!>§ -= param1;
            if(this.§%!>§ <= 0)
            {
               if(this.§0K§ > 0)
               {
                  this.§%!>§ = this.§0K§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§ case§))
               {
                  _loc2_ = this.§ in§.mLevelMain.objects.§+o§(this.§!f§,this.§ case§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§8I§(param1 / 100))
                  {
                     this.§%!>§ = -1;
                  }
                  else
                  {
                     this.§%!>§ = 0;
                  }
               }
               else if(!this.§ in§.mLevelMain.objects.§#z§(_loc2_).§%!L§)
               {
                  this.§8R§ = false;
                  this.§%!>§ = -1;
               }
               else if(this.§ in§.mLevelMain.objects.§#z§(_loc2_).§^!S§())
               {
                  this.§8R§ = false;
                  this.§%!>§ = 2000;
               }
               else
               {
                  this.§%!>§ = 500;
               }
            }
         }
      }
      
      public function §8I§(param1:Number) : Boolean
      {
         this.§@;§ += param1;
         this.§ case§ += param1;
         if(this.§ case§ > this.§ in§.mLevelMain.§&!D§.§]![§)
         {
            param1 = this.§ case§ - this.§ in§.mLevelMain.§&!D§.§]![§;
            this.§@;§ -= param1;
            this.§ case§ -= param1;
            this.§1Q§();
            return true;
         }
         this.§1Q§();
         return false;
      }
      
      public function §8U§() : void
      {
         var _loc1_:§0m§ = § !R§.§^L§(this.mName).shape;
         if(_loc1_.§2!`§() == §0m§.§+!8§)
         {
            this.§9N§ = _loc1_.§[8§()[0];
            this.§-!;§ = _loc1_.§"!R§;
         }
         else if(_loc1_.§2!`§() == §0m§.§;U§)
         {
            this.§9N§ = new b2Vec2(0,0);
            this.§-!;§ = 1.5;
         }
         this.§4k§ = this.§ in§.mLevelMain.§59§.§@d§(this.mName);
         if(!this.§4k§)
         {
            this.§`'§(null);
         }
         else
         {
            this.§`'§(this.§4k§.getFrame(0));
         }
      }
      
      public function §`'§(param1:§6!Z§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§ in§.§=[§.textureManager.§9!X§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§&J§ == null)
         {
            this.§&J§ = new §,,§(_loc2_);
            this.§@!Y§.addChild(this.§&J§);
         }
         else
         {
            this.§&J§.texture = _loc2_;
         }
         if(param1)
         {
            this.§&J§.x = -param1.pivotX - this.§9N§.x / §>!2§.§9d§;
            this.§&J§.y = -param1.pivotY - this.§9N§.y / §>!2§.§9d§;
         }
         else
         {
            this.§&J§.x = -this.§&J§.width / 2;
            this.§&J§.y = -this.§&J§.height / 2;
         }
         this.§&J§.scaleX = _loc3_;
         this.§&J§.scaleY = _loc3_;
         this.§1Q§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§+0§(param1);
         if(this.§3!c§)
         {
            this.§0K§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§>]§(param1);
            this.§null §(param1);
            if(_loc4_ && param3 == true)
            {
               this.§[#§(param1,param2);
            }
         }
      }
      
      public function §>]§(param1:Number) : void
      {
         if(this.§6!8§ > 0)
         {
            this.§6!8§ -= param1;
            if(this.§6!8§ <= 0)
            {
               this.§&A§();
            }
         }
         else if(this.§8§ <= 0 && Math.random() * §4!A§ < param1 && this.§ in§.mSlingShotState)
         {
            this.§]! §();
         }
      }
      
      public function §&A§() : void
      {
         this.§6!8§ = 0;
         this.§`'§(this.§4k§.getFrame(0));
      }
      
      public function §]! §() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§6!8§ = §7!V§;
         this.§`'§(this.§4k§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §null §(param1:Number) : void
      {
         if(this.§8§ > 0)
         {
            this.§8§ -= param1;
            if(this.§8§ <= 0)
            {
               this.§62§();
            }
         }
         else if(this.§6!8§ <= 0 && Math.random() * §2!V§ < param1)
         {
            this.§"D§();
         }
      }
      
      public function §62§() : void
      {
         this.§8§ = 0;
         this.§`'§(this.§4k§.getFrame(0));
      }
      
      public function §"D§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§8§ > 0)
         {
            this.§62§();
         }
         if(this.§6!8§ > 0)
         {
            this.§&A§();
         }
         if(param1 < 0)
         {
            param1 = §^!=§.§7!'§;
         }
         this.§8§ = §?f§;
         this.§`'§(this.§4k§.getSubAnimation("yell").getFrame(0));
         if(this.§"e§ || this.§3!c§ || param2)
         {
            §?![§.§ var§(param1,this.§%]§);
         }
         else
         {
            §?![§.§ var§(param1,this.§%]§,§1N§);
         }
      }
      
      public function §[#§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§0K§ > 0)
         {
            this.§0K§ -= param1;
            if(this.§0K§ <= 0)
            {
               ++this.§;V§;
               this.§9!Q§ *= 0.4;
               if(!this.§"e§ && this.§;V§ < 2)
               {
                  if(this.§;V§ > 1 && this.§9!Q§ < -1)
                  {
                     this.§9!Q§ = -1;
                  }
                  this.§@F§ = this.§9!Q§;
                  this.§0K§ = §8D§;
                  this.§0K§ *= Math.abs(this.§@F§) / 2;
                  this.§97§ = this.§0K§;
                  this.§%!H§ = 0;
                  this.§]0§ = 0;
               }
               else if(!this.§"e§ && param2)
               {
                  this.§6!"§(2.25);
               }
               else
               {
                  this.§0K§ = 0;
                  this.§ a§ = 0;
                  this.§%!H§ = 0;
                  this.§9!Q§ = 0;
               }
            }
            else
            {
               if(this.§0K§ >= this.§97§ / 2)
               {
                  _loc3_ = (this.§97§ - this.§0K§) / (this.§97§ / 2);
                  _loc3_ = §5e§.§1f§(_loc3_);
                  this.§ a§ = _loc3_ * this.§@F§;
               }
               else
               {
                  _loc3_ = (this.§97§ / 2 - this.§0K§) / (this.§97§ / 2);
                  _loc3_ = §5e§.§1f§(_loc3_,false);
                  this.§ a§ = this.§@F§ + _loc3_ * -this.§@F§;
               }
               this.§%!H§ = 360 * §5e§.§1f§((this.§97§ - this.§0K§) / this.§97§) * this.§]0§;
            }
            this.§1Q§();
         }
         else if(Math.random() * §]!L§ < param1 && !this.§"e§ && !this.§3!c§ && !this.§8R§)
         {
            this.§6!"§();
         }
      }
      
      public function §6!"§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§;V§ = 0;
         this.§0K§ = §8D§;
         this.§ a§ = 0;
         this.§@F§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§9!Q§ = this.§@F§;
         this.§0K§ *= Math.abs(this.§@F§) / 3;
         this.§97§ = this.§0K§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§]0§ = 0;
         }
         else if(this.§0K§ < 350)
         {
            this.§]0§ = 0;
         }
         else
         {
            this.§]0§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§]0§ = Math.random() > 0.5 ? Number(this.§]0§) : Number(0);
         }
      }
      
      public function §1Q§() : void
      {
         this.§@!Y§.x = this.§!f§ / §>!2§.§9d§;
         this.§@!Y§.y = (this.§@;§ + this.§ a§) / §>!2§.§9d§;
         this.§@!Y§.rotation = this.§%!H§ / 180 * Math.PI;
      }
      
      public function §^P§() : void
      {
         this.§8R§ = true;
         this.§"e§ = false;
         this.§3!c§ = false;
         this.§;V§ = 0;
         this.§%!>§ = 0;
         this.§0K§ = 0;
         this.§0K§ = 0;
         this.§ a§ = 0;
         this.§%!H§ = 0;
         this.§9!Q§ = 0;
         this.§]0§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§!f§) * (param1 - this.§!f§) + (param2 - this.§@;§) * (param2 - this.§@;§));
         if(_loc3_ <= this.§-!;§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§!f§ >= param3 && this.§!f§ <= param4 && this.§@;§ >= param1 && this.§@;§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§!f§ != param1 || this.§@;§ != param2)
         {
            _loc3_ = true;
         }
         this.§!f§ = param1;
         this.§@;§ = param2;
         this.§%!>§ = 100;
         this.§1Q§();
         if(_loc3_)
         {
            this.§ in§.§7!@§();
         }
      }
      
      public function §!0§() : §,,§
      {
         return this.§&J§;
      }
      
      public function get §2!5§() : Number
      {
         return this.§0K§;
      }
      
      public function get §1!F§() : Number
      {
         return this.§%!>§;
      }
      
      public function set §1!F§(param1:Number) : void
      {
         this.§%!>§ = param1;
      }
      
      public function get §[v§() : Number
      {
         return this.§!w§;
      }
      
      public function get §!o§() : Boolean
      {
         return this.§"e§;
      }
      
      public function get radius() : Number
      {
         return this.§-!;§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§@!Y§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §[v§(param1:Number) : void
      {
         this.§!w§ = param1;
      }
      
      public function get §"3§() : Number
      {
         return this.§`;§;
      }
      
      public function set §"3§(param1:Number) : void
      {
         this.§`;§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§ !@§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§ !@§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§!f§;
      }
      
      public function get y() : Number
      {
         return this.§@;§;
      }
      
      public function get §]!$§() : Number
      {
         return this.§'l§;
      }
      
      public function get §[!G§() : Number
      {
         return this.§`>§;
      }
   }
}
