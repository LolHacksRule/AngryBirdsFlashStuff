package §0u§
{
   public class §6x§
   {
      
      private static const §-_§:String = "RIGHT";
      
      private static const §-h§:String = "LEFT";
      
      private static const §1!'§:String = "TOP";
      
      private static const §65§:String = "BOTTOM";
      
      private static const §1P§:String = "CENTER";
      
      private static const §^!§:String = "NORMAL";
      
      private static const §0!2§:String = "SQRT";
      
      private static const §]_§:String = "SQR";
       
      
      private var §>n§:Number = 0.0;
      
      private var §0S§:Number = 0.0;
      
      private var §[T§:Number = 1.0;
      
      private var §0!A§:Number = 1.0;
      
      private var §=;§:Number = 1.0;
      
      private var §8u§:Number = 1.0;
      
      private var §2!5§:String = "LEFT";
      
      private var §%Y§:String = "TOP";
      
      private var §"3§:Boolean = false;
      
      private var §?$§:Boolean = false;
      
      private var §``§:Boolean = false;
      
      private var §"!<§:Boolean = false;
      
      private var §'8§:Boolean = false;
      
      private var §2!;§:Boolean = false;
      
      private var §`+§:String = "NORMAL";
      
      private var §@[§:Number = 1.0;
      
      private var §8!;§:Number = 1.0;
      
      private var §;T§:Number = 1.0;
      
      private var §'!1§:Number = 1.0;
      
      private var §+Z§:Number = 1.0;
      
      private var §7!"§:Number = 1.0;
      
      private var mX:Number = 0.0;
      
      private var mY:Number = 0.0;
      
      private var §<!;§:Number = 1.0;
      
      private var §07§:Number = 1.0;
      
      public function §6x§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§>n§ = param1;
         this.§0S§ = param2;
         this.mX = param1;
         this.mY = param2;
         this.§<!;§ = param3;
         this.§07§ = param4;
         this.§[T§ = param5;
         this.§0!A§ = param6;
         this.§=;§ = param5;
         this.§8u§ = param6;
         this.§7C§(param7);
         this.§>!3§(param8);
         this.§4O§(param9);
         this.§?Q§(param10);
         this.§+_§(param11);
         this.§?!-§(param12);
         this.§`+§ = param12;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set x(param1:Number) : void
      {
         this.§>n§ = this.§ B§(param1,this.§=;§,this.§[T§,this.§2!5§,this.§"3§,this.§?$§,this.§@[§,this.§;T§,this.§+Z§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§0S§ = this.§ B§(param1,this.§8u§,this.§0!A§,this.§%Y§,this.§``§,this.§"!<§,this.§8!;§,this.§'!1§,this.§7!"§);
      }
      
      public function get scaleX() : Number
      {
         return this.§<!;§ * this.§1! §;
      }
      
      public function get scaleY() : Number
      {
         return this.§07§ * this.§@9§;
      }
      
      private function get §1! §() : Number
      {
         if(this.§"3§ || this.§?$§)
         {
            return this.§@[§;
         }
         return 1;
      }
      
      private function get §@9§() : Number
      {
         if(this.§``§ || this.§"!<§)
         {
            return this.§8!;§;
         }
         return 1;
      }
      
      private function §7C§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §-_§ || param1 == §1P§)
            {
               this.§2!5§ = param1;
            }
         }
      }
      
      private function §>!3§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §65§ || param1 == §1P§)
            {
               this.§%Y§ = param1;
            }
         }
      }
      
      private function §4O§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§"3§ = true;
               this.§?$§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§"3§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§?$§ = true;
            }
         }
      }
      
      private function §?Q§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§``§ = true;
               this.§"!<§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§``§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§"!<§ = true;
            }
         }
      }
      
      private function §?!-§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §0!2§)
            {
               this.§`+§ = §0!2§;
            }
            else if(param1.toUpperCase() == §]_§)
            {
               this.§`+§ = §]_§;
            }
         }
      }
      
      private function §+_§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§'8§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§'8§ = true;
               this.§2!;§ = true;
            }
         }
      }
      
      private function §@`§() : void
      {
         if(this.§'8§)
         {
            if(this.§@[§ < this.§8!;§)
            {
               if(!this.§2!;§)
               {
                  this.§8!;§ = this.§@[§;
               }
               else
               {
                  this.§@[§ = this.§8!;§;
               }
            }
            else if(!this.§2!;§)
            {
               this.§@[§ = this.§8!;§;
            }
            else
            {
               this.§8!;§ = this.§@[§;
            }
         }
      }
      
      private function §try §() : void
      {
         if(!this.§?$§ && this.§@[§ > 1)
         {
            this.§@[§ = 1;
         }
         else if(this.§?$§ && !this.§"3§ && this.§@[§ < 1)
         {
            this.§@[§ = 1;
         }
         if(!this.§"!<§ && this.§8!;§ > 1)
         {
            this.§8!;§ = 1;
         }
         else if(this.§"!<§ && !this.§``§ && this.§8!;§ < 1)
         {
            this.§8!;§ = 1;
         }
      }
      
      private function §4f§() : void
      {
         if(this.§`+§ == §0!2§)
         {
            this.§@[§ = Math.sqrt(this.§@[§);
            this.§8!;§ = Math.sqrt(this.§8!;§);
         }
         else if(this.§`+§ == §]_§)
         {
            this.§@[§ *= this.§@[§;
            this.§8!;§ *= this.§8!;§;
         }
      }
      
      private function § B§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §-h§ || param4 == §1!'§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §-_§ || param4 == §65§)
         {
            if(param5 || param6)
            {
               _loc10_ = param3 - (param2 - param1) / param7;
            }
            else
            {
               _loc10_ = param3 - (param2 - param1);
            }
         }
         else if(param4 == §1P§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§'8§)
               {
                  if(!this.§2!;§)
                  {
                     _loc10_ = (param1 - param3 / 2 * (param2 / param3 - param7)) / Math.min(param9,param2 / param3);
                  }
                  else
                  {
                     _loc10_ = (param1 - param3 / 2 * (param2 / param3 - param8)) / Math.min(param9,param2 / param3);
                  }
               }
            }
         }
         return _loc10_;
      }
      
      private function §3K§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §-h§ || param4 == §1!'§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §-_§ || param4 == §65§)
         {
            if(param5 || param6)
            {
               _loc10_ = param2 - (param3 - param1) * param7;
            }
            else
            {
               _loc10_ = param2 - (param3 - param1);
            }
         }
         else if(param4 == §1P§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§'8§)
               {
                  if(!this.§2!;§)
                  {
                     _loc10_ += param3 / 2 * (param2 / param3 - param7);
                  }
                  else
                  {
                     _loc10_ += param3 / 2 * (param2 / param3 - param8);
                  }
               }
            }
         }
         return _loc10_;
      }
      
      public function §&S§(param1:Number, param2:Number) : void
      {
         this.§=;§ = param1;
         this.§8u§ = param2;
         this.§@[§ = param1 / this.§[T§;
         this.§8!;§ = param2 / this.§0!A§;
         this.§;T§ = this.§@[§;
         this.§'!1§ = this.§8!;§;
         this.§@`§();
         this.§try §();
         this.§+Z§ = this.§@[§;
         this.§7!"§ = this.§8!;§;
         this.§4f§();
         this.mX = this.§3K§(this.§>n§,param1,this.§[T§,this.§2!5§,this.§"3§,this.§?$§,this.§@[§,this.§;T§,this.§+Z§);
         this.mY = this.§3K§(this.§0S§,param2,this.§0!A§,this.§%Y§,this.§``§,this.§"!<§,this.§8!;§,this.§'!1§,this.§7!"§);
      }
   }
}
