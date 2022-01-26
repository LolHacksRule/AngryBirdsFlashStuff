package §?'§
{
   import §!!R§.§#q§;
   import §!!R§.Sprite;
   import §#v§.;
   import §&!W§.§&!$§;
   import §&!W§.§+=§;
   import §&N§.§[$§;
   import §,B§.§1F§;
   import §,B§.§;V§;
   import §,B§.§?7§;
   import §2k§.Texture;
   import §=E§.b2Vec2;
   
   public class §[!N§
   {
      
      public static const §1;§:String = "ChannelSlingshot";
      
      public static const §;F§:Number = 900;
      
      public static const §>!G§:Number = 200;
      
      public static const §@x§:Number = 200;
      
      public static const § B§:Number = 1500;
      
      public static const §]!4§:Number = 5000;
      
      public static const §1!"§:Number = 1000;
      
      public static const §8I§:Number = 1000;
       
      
      private var mName:String;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §8'§:Number;
      
      public var §8!Z§:Number;
      
      private var §<!?§:§1F§;
      
      private var §&!;§:Number;
      
      protected var §,E§:Number = 1;
      
      private var §=!<§:Sprite;
      
      private var §9!A§:§+=§;
      
      private var §]3§:§#q§;
      
      private var §<^§:§'L§;
      
      private var §-J§:Number;
      
      private var §"!I§:Boolean = false;
      
      private var §8W§:Boolean = false;
      
      private var §]! §:Boolean = false;
      
      private var §0!5§:Number;
      
      private var §]!#§:Number = 0;
      
      private var §3S§:Number = 0;
      
      private var §'!%§:Number = 0;
      
      private var §#5§:Number = 1000;
      
      private var §<#§:Number;
      
      private var §>!K§:Number;
      
      private var §[!?§:int;
      
      private var §;'§:Number = 0;
      
      private var §!P§:Number;
      
      private var §;!W§:Number;
      
      private var §=j§:Number = 0;
      
      private var §&§:Number = 1;
      
      private var §"6§:Number = 0;
      
      private var §%§:b2Vec2;
      
      private var §7<§:Number = 1;
      
      public function §[!N§(param1:§'L§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§<^§ = param1;
         this.§=!<§ = param2;
         this.mName = param3;
         this.§<!?§ = §?7§.§`1§(this.mName).§%b§;
         this.mX = param4;
         this.mY = param5;
         this.§8'§ = param4;
         this.§8!Z§ = param5;
         this.§&!;§ = 0;
         this.§"!I§ = false;
         this.§8W§ = false;
         this.§]!#§ = 0;
         this.§ #§();
         this.§!P§ = 0;
      }
      
      public function §+!8§() : void
      {
         this.§"!I§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§=!<§)
         {
            this.§=!<§.dispose();
            this.§=!<§ = null;
         }
      }
      
      public function §[D§(param1:Number) : void
      {
         if(!this.§8W§ || this.§"!I§)
         {
            return;
         }
         if(this.§,E§ != 0)
         {
            this.§'!%§ = 0;
            this.§;'§ = 0;
            this.§&!;§ = 0;
            this.§>!K§ = 0;
            this.§,E§ = 0;
         }
         param1 = Math.min(param1,this.§0!5§);
         this.mX += param1 * (this.§<^§.mX - this.mX) / this.§0!5§;
         this.mY += param1 * (this.§<^§.mY - this.mY) / this.§0!5§;
         this.mY -= param1 / 50 * (this.§0!5§ / §;F§);
         this.§&!;§ += param1 * (360 - this.§&!;§) / this.§0!5§;
         this.§0!5§ -= param1;
         if(this.§0!5§ <= 0)
         {
            this.mX = this.§<^§.mX;
            this.mY = this.§<^§.mY;
            this.§8W§ = false;
            this.§"!I§ = true;
            this.§&!;§ = 0;
         }
         this.§>a§();
      }
      
      public function §>'§() : void
      {
         this.§8W§ = true;
         this.§0!5§ = §;F§;
         this.§3?§(§1F§.§^!X§);
         if(this.§;'§ != 0)
         {
            this.mY += this.§;'§;
            this.§;'§ = 0;
         }
      }
      
      public function §&!?§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§"!I§ && this.§!P§ >= 0)
         {
            if(this.§;!W§ > this.§<^§.§;c§.§#G§.§@y§)
            {
               this.§'!Y§(this.§<^§.§;c§.§#G§.§@y§ - this.§;!W§);
               this.§!P§ = -1;
            }
            this.§!P§ -= param1;
            if(this.§!P§ <= 0)
            {
               if(this.§'!%§ > 0)
               {
                  this.§!P§ = this.§'!%§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§;!W§))
               {
                  _loc2_ = this.§<^§.§;c§.objects.§#P§(this.mX,this.§;!W§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§'!Y§(param1 / 100))
                  {
                     this.§!P§ = -1;
                  }
                  else
                  {
                     this.§!P§ = 0;
                  }
               }
               else if(!this.§<^§.§;c§.objects.§+m§(_loc2_).§8!Q§)
               {
                  this.§]! § = false;
                  this.§!P§ = -1;
               }
               else if(this.§<^§.§;c§.objects.§+m§(_loc2_).§`9§())
               {
                  this.§]! § = false;
                  this.§!P§ = 2000;
               }
               else
               {
                  this.§!P§ = 500;
               }
            }
         }
      }
      
      public function §'!Y§(param1:Number) : Boolean
      {
         this.mY += param1;
         this.§;!W§ += param1;
         if(this.§;!W§ > this.§<^§.§;c§.§#G§.§@y§)
         {
            param1 = this.§;!W§ - this.§<^§.§;c§.§#G§.§@y§;
            this.mY -= param1;
            this.§;!W§ -= param1;
            this.§>a§();
            return true;
         }
         this.§>a§();
         return false;
      }
      
      public function § #§() : void
      {
         var _loc1_:§;V§ = §?7§.§`1§(this.mName).shape;
         if(_loc1_.§^@§() == §;V§.§;A§)
         {
            this.§%§ = _loc1_.§5G§()[0];
            this.§-J§ = _loc1_.§6!>§;
         }
         else if(_loc1_.§^@§() == §;V§.§=§)
         {
            this.§%§ = new b2Vec2(0,0);
            this.§-J§ = 1.5;
         }
         this.§9!A§ = this.§<^§.§;c§.§+S§.§3Z§(this.mName);
         if(!this.§9!A§)
         {
            this.§#?§(null);
         }
         else
         {
            this.§#?§(this.§9!A§.getFrame(0));
         }
      }
      
      public function §#?§(param1:§&!$§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§<^§.§&O§.§"B§.§=r§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§]3§ == null)
         {
            this.§]3§ = new §#q§(_loc2_);
            this.§=!<§.addChild(this.§]3§);
         }
         else
         {
            this.§]3§.texture = _loc2_;
         }
         if(param1)
         {
            this.§]3§.x = -param1.pivotX - this.§%§.x / §9N§.§8!5§;
            this.§]3§.y = -param1.pivotY - this.§%§.y / §9N§.§8!5§;
         }
         else
         {
            this.§]3§.x = -this.§]3§.width / 2;
            this.§]3§.y = -this.§]3§.height / 2;
         }
         this.§]3§.scaleX = _loc3_;
         this.§]3§.scaleY = _loc3_;
         this.§>a§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§&!?§(param1);
         if(this.§8W§)
         {
            this.§'!%§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§2`§(param1);
            this.§@$§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§+^§(param1,param2);
            }
         }
      }
      
      public function §2`§(param1:Number) : void
      {
         if(this.§]!#§ > 0)
         {
            this.§]!#§ -= param1;
            if(this.§]!#§ <= 0)
            {
               this.§,!-§();
            }
         }
         else if(this.§3S§ <= 0 && Math.random() * § B§ < param1 && this.§<^§.mSlingShotState)
         {
            this.§+!;§();
         }
      }
      
      public function §,!-§() : void
      {
         this.§]!#§ = 0;
         this.§#?§(this.§9!A§.getFrame(0));
      }
      
      public function §+!;§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§]!#§ = §>!G§;
         this.§#?§(this.§9!A§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §@$§(param1:Number) : void
      {
         if(this.§3S§ > 0)
         {
            this.§3S§ -= param1;
            if(this.§3S§ <= 0)
            {
               this.§0p§();
            }
         }
         else if(this.§]!#§ <= 0 && Math.random() * §]!4§ < param1)
         {
            this.§3?§();
         }
      }
      
      public function §0p§() : void
      {
         this.§3S§ = 0;
         this.§#?§(this.§9!A§.getFrame(0));
      }
      
      public function §3?§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§3S§ > 0)
         {
            this.§0p§();
         }
         if(this.§]!#§ > 0)
         {
            this.§,!-§();
         }
         if(param1 < 0)
         {
            param1 = §1F§.§`X§;
         }
         this.§3S§ = §@x§;
         this.§#?§(this.§9!A§.getSubAnimation("yell").getFrame(0));
         if(this.§"!I§ || this.§8W§ || param2)
         {
            §#3§.§ for§(param1,this.§<!?§);
         }
         else
         {
            §#3§.§ for§(param1,this.§<!?§,§1;§);
         }
      }
      
      public function §+^§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§'!%§ > 0)
         {
            this.§'!%§ -= param1;
            if(this.§'!%§ <= 0)
            {
               ++this.§[!?§;
               this.§>!K§ *= 0.4;
               if(!this.§"!I§ && this.§[!?§ < 2)
               {
                  if(this.§[!?§ > 1 && this.§>!K§ < -1)
                  {
                     this.§>!K§ = -1;
                  }
                  this.§<#§ = this.§>!K§;
                  this.§'!%§ = §8I§;
                  this.§'!%§ *= Math.abs(this.§<#§) / 2;
                  this.§#5§ = this.§'!%§;
                  this.§&!;§ = 0;
                  this.§,E§ = 0;
               }
               else if(!this.§"!I§ && param2)
               {
                  this.§-!Y§(2.25);
               }
               else
               {
                  this.§'!%§ = 0;
                  this.§;'§ = 0;
                  this.§&!;§ = 0;
                  this.§>!K§ = 0;
               }
            }
            else
            {
               if(this.§'!%§ >= this.§#5§ / 2)
               {
                  _loc3_ = (this.§#5§ - this.§'!%§) / (this.§#5§ / 2);
                  _loc3_ = §[$§.§%,§(_loc3_);
                  this.§;'§ = _loc3_ * this.§<#§;
               }
               else
               {
                  _loc3_ = (this.§#5§ / 2 - this.§'!%§) / (this.§#5§ / 2);
                  _loc3_ = §[$§.§%,§(_loc3_,false);
                  this.§;'§ = this.§<#§ + _loc3_ * -this.§<#§;
               }
               this.§&!;§ = 360 * §[$§.§%,§((this.§#5§ - this.§'!%§) / this.§#5§) * this.§,E§;
            }
            this.§>a§();
         }
         else if(Math.random() * §1!"§ < param1 && !this.§"!I§ && !this.§8W§ && !this.§]! §)
         {
            this.§-!Y§();
         }
      }
      
      public function §-!Y§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§[!?§ = 0;
         this.§'!%§ = §8I§;
         this.§;'§ = 0;
         this.§<#§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§>!K§ = this.§<#§;
         this.§'!%§ *= Math.abs(this.§<#§) / 3;
         this.§#5§ = this.§'!%§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§,E§ = 0;
         }
         else if(this.§'!%§ < 350)
         {
            this.§,E§ = 0;
         }
         else
         {
            this.§,E§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§,E§ = Math.random() > 0.5 ? Number(this.§,E§) : Number(0);
         }
      }
      
      public function §>a§() : void
      {
         this.§=!<§.x = this.mX / §9N§.§8!5§;
         this.§=!<§.y = (this.mY + this.§;'§) / §9N§.§8!5§;
         this.§=!<§.rotation = this.§&!;§ / 180 * Math.PI;
      }
      
      public function §[6§() : void
      {
         this.§]! § = true;
         this.§"!I§ = false;
         this.§8W§ = false;
         this.§[!?§ = 0;
         this.§!P§ = 0;
         this.§'!%§ = 0;
         this.§;!W§ = this.mY + this.§=j§ + this.radius;
         this.§'!%§ = 0;
         this.§;'§ = 0;
         this.§&!;§ = 0;
         this.§>!K§ = 0;
         this.§,E§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.mX) * (param1 - this.mX) + (param2 - this.mY) * (param2 - this.mY));
         if(_loc3_ <= this.§-J§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.mX >= param3 && this.mX <= param4 && this.mY >= param1 && this.mY <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.mX != param1 || this.mY != param2)
         {
            _loc3_ = true;
         }
         this.mX = param1;
         this.mY = param2;
         this.§;!W§ = this.mY + this.§=j§;
         this.§!P§ = 100;
         this.§>a§();
         if(_loc3_)
         {
            this.§<^§.§3!K§();
         }
      }
      
      public function §7c§() : §#q§
      {
         return this.§]3§;
      }
      
      public function get §7`§() : Number
      {
         return this.§'!%§;
      }
      
      public function get §2G§() : Number
      {
         return this.§!P§;
      }
      
      public function set §2G§(param1:Number) : void
      {
         this.§!P§ = param1;
      }
      
      public function get §!y§() : Number
      {
         return this.§&§;
      }
      
      public function get §^I§() : Boolean
      {
         return this.§"!I§;
      }
      
      public function get radius() : Number
      {
         return this.§-J§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§=!<§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §!y§(param1:Number) : void
      {
         this.§&§ = param1;
      }
      
      public function get §6A§() : Number
      {
         return this.§"6§;
      }
      
      public function set §6A§(param1:Number) : void
      {
         this.§"6§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§7<§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§7<§ = param1;
      }
   }
}
