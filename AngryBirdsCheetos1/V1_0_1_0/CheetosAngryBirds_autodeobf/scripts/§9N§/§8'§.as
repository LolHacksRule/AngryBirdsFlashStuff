package §9N§
{
   import §-!7§.§@m§;
   import §2!-§.Texture;
   import §4W§.§2f§;
   import §4W§.§>c§;
   import §9"§.b2Vec2;
   import §?7§.§!S§;
   import §?7§.§&!5§;
   import §?7§.§=!5§;
   import §@,§.§%,§;
   import §`a§.§>?§;
   import §`a§.Sprite;
   
   public class §8'§
   {
      
      public static const §;F§:String = "ChannelSlingshot";
      
      public static const §>!G§:Number = 900;
      
      public static const §@x§:Number = 200;
      
      public static const § B§:Number = 200;
      
      public static const §]!4§:Number = 1500;
      
      public static const §1!"§:Number = 5000;
      
      public static const §8I§:Number = 1000;
      
      public static const §74§:Number = 1000;
       
      
      private var mName:String;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §8!Z§:Number;
      
      public var §<!?§:Number;
      
      private var §&!;§:§=!5§;
      
      private var §,E§:Number;
      
      protected var §=!<§:Number = 1;
      
      private var §9!A§:Sprite;
      
      private var §]3§:§2f§;
      
      private var §<^§:§>?§;
      
      private var §-J§:§;c§;
      
      private var §"!I§:Number;
      
      private var §8W§:Boolean = false;
      
      private var §]! §:Boolean = false;
      
      private var §0!5§:Boolean = false;
      
      private var §]!#§:Number;
      
      private var §3S§:Number = 0;
      
      private var §'!%§:Number = 0;
      
      private var §#5§:Number = 0;
      
      private var §<#§:Number = 1000;
      
      private var §>!K§:Number;
      
      private var §[!?§:Number;
      
      private var §;'§:int;
      
      private var §!P§:Number = 0;
      
      private var §;!W§:Number;
      
      private var §=j§:Number;
      
      private var §&§:Number = 0;
      
      private var §"6§:Number = 1;
      
      private var §%§:Number = 0;
      
      private var §+!8§:b2Vec2;
      
      private var §7<§:Number = 1;
      
      public function §8'§(param1:§;c§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§-J§ = param1;
         this.§9!A§ = param2;
         this.mName = param3;
         this.§&!;§ = §&!5§.§;@§(this.mName).§2#§;
         this.mX = param4;
         this.mY = param5;
         this.§8!Z§ = param4;
         this.§<!?§ = param5;
         this.§,E§ = 0;
         this.§8W§ = false;
         this.§]! § = false;
         this.§3S§ = 0;
         this.§#?§();
         this.§;!W§ = 0;
      }
      
      public function §[D§() : void
      {
         this.§8W§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§9!A§)
         {
            this.§9!A§.dispose();
            this.§9!A§ = null;
         }
      }
      
      public function §>'§(param1:Number) : void
      {
         if(!this.§]! § || this.§8W§)
         {
            return;
         }
         if(this.§=!<§ != 0)
         {
            this.§#5§ = 0;
            this.§!P§ = 0;
            this.§,E§ = 0;
            this.§[!?§ = 0;
            this.§=!<§ = 0;
         }
         param1 = Math.min(param1,this.§]!#§);
         this.mX += param1 * (this.§-J§.mX - this.mX) / this.§]!#§;
         this.mY += param1 * (this.§-J§.mY - this.mY) / this.§]!#§;
         this.mY -= param1 / 50 * (this.§]!#§ / §>!G§);
         this.§,E§ += param1 * (360 - this.§,E§) / this.§]!#§;
         this.§]!#§ -= param1;
         if(this.§]!#§ <= 0)
         {
            this.mX = this.§-J§.mX;
            this.mY = this.§-J§.mY;
            this.§]! § = false;
            this.§8W§ = true;
            this.§,E§ = 0;
         }
         this.§[6§();
      }
      
      public function §&!?§() : void
      {
         this.§]! § = true;
         this.§]!#§ = §>!G§;
         this.§+^§(§=!5§.§"w§);
         if(this.§!P§ != 0)
         {
            this.mY += this.§!P§;
            this.§!P§ = 0;
         }
      }
      
      public function §'!Y§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§8W§ && this.§;!W§ >= 0)
         {
            if(this.§=j§ > this.§-J§.§8@§.§null §.§;U§)
            {
               this.§ #§(this.§-J§.§8@§.§null §.§;U§ - this.§=j§);
               this.§;!W§ = -1;
            }
            this.§;!W§ -= param1;
            if(this.§;!W§ <= 0)
            {
               if(this.§#5§ > 0)
               {
                  this.§;!W§ = this.§#5§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§=j§))
               {
                  _loc2_ = this.§-J§.§8@§.objects.§+m§(this.mX,this.§=j§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§ #§(param1 / 100))
                  {
                     this.§;!W§ = -1;
                  }
                  else
                  {
                     this.§;!W§ = 0;
                  }
               }
               else if(!this.§-J§.§8@§.objects.§'!P§(_loc2_).§2!X§)
               {
                  this.§0!5§ = false;
                  this.§;!W§ = -1;
               }
               else if(this.§-J§.§8@§.objects.§'!P§(_loc2_).§5!@§())
               {
                  this.§0!5§ = false;
                  this.§;!W§ = 2000;
               }
               else
               {
                  this.§;!W§ = 500;
               }
            }
         }
      }
      
      public function § #§(param1:Number) : Boolean
      {
         this.mY += param1;
         this.§=j§ += param1;
         if(this.§=j§ > this.§-J§.§8@§.§null §.§;U§)
         {
            param1 = this.§=j§ - this.§-J§.§8@§.§null §.§;U§;
            this.mY -= param1;
            this.§=j§ -= param1;
            this.§[6§();
            return true;
         }
         this.§[6§();
         return false;
      }
      
      public function §#?§() : void
      {
         var _loc1_:§!S§ = §&!5§.§;@§(this.mName).shape;
         if(_loc1_.§^6§() == §!S§.§=§)
         {
            this.§+!8§ = _loc1_.§-w§()[0];
            this.§"!I§ = _loc1_.§?l§;
         }
         else if(_loc1_.§^6§() == §!S§.§1F§)
         {
            this.§+!8§ = new b2Vec2(0,0);
            this.§"!I§ = 1.5;
         }
         this.§]3§ = this.§-J§.§8@§.§"B§.§2!'§(this.mName);
         if(!this.§]3§)
         {
            this.§2`§(null);
         }
         else
         {
            this.§2`§(this.§]3§.getFrame(0));
         }
      }
      
      public function §2`§(param1:§>c§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§-J§.§5q§.§#G§.§83§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§<^§ == null)
         {
            this.§<^§ = new §>?§(_loc2_);
            this.§9!A§.addChild(this.§<^§);
         }
         else
         {
            this.§<^§.texture = _loc2_;
         }
         if(param1)
         {
            this.§<^§.x = -param1.pivotX - this.§+!8§.x / §9!%§.§catch§;
            this.§<^§.y = -param1.pivotY - this.§+!8§.y / §9!%§.§catch§;
         }
         else
         {
            this.§<^§.x = -this.§<^§.width / 2;
            this.§<^§.y = -this.§<^§.height / 2;
         }
         this.§<^§.scaleX = _loc3_;
         this.§<^§.scaleY = _loc3_;
         this.§[6§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§'!Y§(param1);
         if(this.§]! §)
         {
            this.§#5§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§,!-§(param1);
            this.§0p§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§-!Y§(param1,param2);
            }
         }
      }
      
      public function §,!-§(param1:Number) : void
      {
         if(this.§3S§ > 0)
         {
            this.§3S§ -= param1;
            if(this.§3S§ <= 0)
            {
               this.§+!;§();
            }
         }
         else if(this.§'!%§ <= 0 && Math.random() * §]!4§ < param1 && this.§-J§.mSlingShotState)
         {
            this.§@$§();
         }
      }
      
      public function §+!;§() : void
      {
         this.§3S§ = 0;
         this.§2`§(this.§]3§.getFrame(0));
      }
      
      public function §@$§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§3S§ = §@x§;
         this.§2`§(this.§]3§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §0p§(param1:Number) : void
      {
         if(this.§'!%§ > 0)
         {
            this.§'!%§ -= param1;
            if(this.§'!%§ <= 0)
            {
               this.§3?§();
            }
         }
         else if(this.§3S§ <= 0 && Math.random() * §1!"§ < param1)
         {
            this.§+^§();
         }
      }
      
      public function §3?§() : void
      {
         this.§'!%§ = 0;
         this.§2`§(this.§]3§.getFrame(0));
      }
      
      public function §+^§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§'!%§ > 0)
         {
            this.§3?§();
         }
         if(this.§3S§ > 0)
         {
            this.§+!;§();
         }
         if(param1 < 0)
         {
            param1 = §=!5§.§]w§;
         }
         this.§'!%§ = § B§;
         this.§2`§(this.§]3§.getSubAnimation("yell").getFrame(0));
         if(this.§8W§ || this.§]! § || param2)
         {
            §@m§.§??§(param1,this.§&!;§);
         }
         else
         {
            §@m§.§??§(param1,this.§&!;§,§;F§);
         }
      }
      
      public function §-!Y§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§#5§ > 0)
         {
            this.§#5§ -= param1;
            if(this.§#5§ <= 0)
            {
               ++this.§;'§;
               this.§[!?§ *= 0.4;
               if(!this.§8W§ && this.§;'§ < 2)
               {
                  if(this.§;'§ > 1 && this.§[!?§ < -1)
                  {
                     this.§[!?§ = -1;
                  }
                  this.§>!K§ = this.§[!?§;
                  this.§#5§ = §74§;
                  this.§#5§ *= Math.abs(this.§>!K§) / 2;
                  this.§<#§ = this.§#5§;
                  this.§,E§ = 0;
                  this.§=!<§ = 0;
               }
               else if(!this.§8W§ && param2)
               {
                  this.§>a§(2.25);
               }
               else
               {
                  this.§#5§ = 0;
                  this.§!P§ = 0;
                  this.§,E§ = 0;
                  this.§[!?§ = 0;
               }
            }
            else
            {
               if(this.§#5§ >= this.§<#§ / 2)
               {
                  _loc3_ = (this.§<#§ - this.§#5§) / (this.§<#§ / 2);
                  _loc3_ = §%,§.§#8§(_loc3_);
                  this.§!P§ = _loc3_ * this.§>!K§;
               }
               else
               {
                  _loc3_ = (this.§<#§ / 2 - this.§#5§) / (this.§<#§ / 2);
                  _loc3_ = §%,§.§#8§(_loc3_,false);
                  this.§!P§ = this.§>!K§ + _loc3_ * -this.§>!K§;
               }
               this.§,E§ = 360 * §%,§.§#8§((this.§<#§ - this.§#5§) / this.§<#§) * this.§=!<§;
            }
            this.§[6§();
         }
         else if(Math.random() * §8I§ < param1 && !this.§8W§ && !this.§]! § && !this.§0!5§)
         {
            this.§>a§();
         }
      }
      
      public function §>a§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§;'§ = 0;
         this.§#5§ = §74§;
         this.§!P§ = 0;
         this.§>!K§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§[!?§ = this.§>!K§;
         this.§#5§ *= Math.abs(this.§>!K§) / 3;
         this.§<#§ = this.§#5§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§=!<§ = 0;
         }
         else if(this.§#5§ < 350)
         {
            this.§=!<§ = 0;
         }
         else
         {
            this.§=!<§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§=!<§ = Math.random() > 0.5 ? Number(this.§=!<§) : Number(0);
         }
      }
      
      public function §[6§() : void
      {
         this.§9!A§.x = this.mX / §9!%§.§catch§;
         this.§9!A§.y = (this.mY + this.§!P§) / §9!%§.§catch§;
         this.§9!A§.rotation = this.§,E§ / 180 * Math.PI;
      }
      
      public function §7c§() : void
      {
         this.§0!5§ = true;
         this.§8W§ = false;
         this.§]! § = false;
         this.§;'§ = 0;
         this.§;!W§ = 0;
         this.§#5§ = 0;
         this.§=j§ = this.mY + this.§&§ + this.radius;
         this.§#5§ = 0;
         this.§!P§ = 0;
         this.§,E§ = 0;
         this.§[!?§ = 0;
         this.§=!<§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.mX) * (param1 - this.mX) + (param2 - this.mY) * (param2 - this.mY));
         if(_loc3_ <= this.§"!I§ * 1.1)
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
         this.§=j§ = this.mY + this.§&§;
         this.§;!W§ = 100;
         this.§[6§();
         if(_loc3_)
         {
            this.§-J§.§;M§();
         }
      }
      
      public function §7`§() : §>?§
      {
         return this.§<^§;
      }
      
      public function get §2G§() : Number
      {
         return this.§#5§;
      }
      
      public function get §!y§() : Number
      {
         return this.§;!W§;
      }
      
      public function set §!y§(param1:Number) : void
      {
         this.§;!W§ = param1;
      }
      
      public function get §^I§() : Number
      {
         return this.§"6§;
      }
      
      public function get §6A§() : Boolean
      {
         return this.§8W§;
      }
      
      public function get radius() : Number
      {
         return this.§"!I§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§9!A§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §^I§(param1:Number) : void
      {
         this.§"6§ = param1;
      }
      
      public function get §1;§() : Number
      {
         return this.§%§;
      }
      
      public function set §1;§(param1:Number) : void
      {
         this.§%§ = param1;
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
