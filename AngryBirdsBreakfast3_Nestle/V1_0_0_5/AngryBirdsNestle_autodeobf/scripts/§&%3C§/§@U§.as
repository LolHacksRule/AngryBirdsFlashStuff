package §&<§
{
   public class §@U§
   {
      
      private static const §&!,§:String = "RIGHT";
      
      private static const §?d§:String = "LEFT";
      
      private static const §&!c§:String = "TOP";
      
      private static const §]!j§:String = "BOTTOM";
      
      private static const §4!p§:String = "CENTER";
      
      private static const §9!@§:String = "NORMAL";
      
      private static const §8+§:String = "SQRT";
      
      private static const §1!9§:String = "SQR";
      
      private static const §]!?§:String = "NORMAL_SQRT";
       
      
      private var §"L§:Number = 0.0;
      
      private var §2!v§:Number = 0.0;
      
      private var §9!k§:Number = 1.0;
      
      private var §0!G§:Number = 1.0;
      
      private var §^m§:Number = 1.0;
      
      private var §]!<§:Number = 1.0;
      
      private var §-!E§:String = "LEFT";
      
      private var §?F§:String = "TOP";
      
      private var § L§:Boolean = false;
      
      private var §!W§:Boolean = false;
      
      private var §&!Y§:Boolean = false;
      
      private var §6Z§:Boolean = false;
      
      private var § !0§:Boolean = false;
      
      private var §!Y§:Boolean = false;
      
      private var §'!_§:Boolean = false;
      
      private var § !2§:String = "NORMAL";
      
      private var §3A§:Number = 1.0;
      
      private var §,!Z§:Number = 1.0;
      
      private var §4v§:Number = 1.0;
      
      private var §%!1§:Number = 1.0;
      
      private var §`!^§:Number = 1.0;
      
      private var §`<§:Number = 1.0;
      
      private var §@S§:Number = 0.0;
      
      private var §#B§:Number = 0.0;
      
      private var §;!;§:Number = 1.0;
      
      private var §36§:Number = 1.0;
      
      public function §@U§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§"L§ = param1;
         this.§2!v§ = param2;
         this.§@S§ = param1;
         this.§#B§ = param2;
         this.§9!k§ = param3;
         this.§0!G§ = param4;
         this.§^m§ = param5;
         this.§]!<§ = param6;
         this.§;!;§ = param5;
         this.§36§ = param6;
         this.§"!#§(param7);
         this.§%!0§(param8);
         this.§<!>§(param9);
         this.§5!d§(param10);
         this.§?-§(param11);
         this.§=!7§(param12);
         this.§ !2§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§@S§;
      }
      
      public function get y() : Number
      {
         return this.§#B§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§"L§ = this.§ `§(param1,this.§;!;§,this.§^m§,this.§-!E§,this.§ L§,this.§!W§,this.§3A§,this.§4v§,this.§`!^§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§2!v§ = this.§ `§(param1,this.§36§,this.§]!<§,this.§?F§,this.§&!Y§,this.§6Z§,this.§,!Z§,this.§%!1§,this.§`<§);
      }
      
      public function get scaleX() : Number
      {
         return this.§9!k§ * this.§4"!§;
      }
      
      public function get scaleY() : Number
      {
         return this.§0!G§ * this.§!p§;
      }
      
      private function get §4"!§() : Number
      {
         if(this.§ L§ || this.§!W§)
         {
            return this.§3A§;
         }
         return 1;
      }
      
      private function get §!p§() : Number
      {
         if(this.§&!Y§ || this.§6Z§)
         {
            return this.§,!Z§;
         }
         return 1;
      }
      
      private function §"!#§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §&!,§ || param1 == §4!p§)
            {
               this.§-!E§ = param1;
            }
         }
      }
      
      private function §%!0§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §]!j§ || param1 == §4!p§)
            {
               this.§?F§ = param1;
            }
         }
      }
      
      private function §<!>§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§ L§ = true;
               this.§!W§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§ L§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§!W§ = true;
            }
         }
      }
      
      private function §5!d§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§&!Y§ = true;
               this.§6Z§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§&!Y§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§6Z§ = true;
            }
         }
      }
      
      private function §=!7§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §8+§)
            {
               this.§ !2§ = §8+§;
            }
            else if(param1.toUpperCase() == §1!9§)
            {
               this.§ !2§ = §1!9§;
            }
            else if(param1.toUpperCase() == §]!?§)
            {
               this.§ !2§ = §]!?§;
            }
         }
      }
      
      private function §?-§(param1:String) : void
      {
         if(param1)
         {
            switch(param1.toUpperCase())
            {
               case "TRUE":
                  this.§ !0§ = true;
                  break;
               case "UP":
                  this.§ !0§ = true;
                  this.§!Y§ = true;
                  break;
               case "UPDOWN":
                  this.§ !0§ = true;
                  this.§'!_§ = true;
            }
         }
      }
      
      private function §,"+§() : void
      {
         if(this.§ !0§)
         {
            if(this.§3A§ < this.§,!Z§)
            {
               if(!this.§!Y§)
               {
                  this.§,!Z§ = this.§3A§;
               }
               else
               {
                  this.§3A§ = this.§,!Z§;
               }
            }
            else if(!this.§!Y§)
            {
               this.§3A§ = this.§,!Z§;
            }
            else
            {
               this.§,!Z§ = this.§3A§;
            }
         }
      }
      
      private function §;"5§() : void
      {
         if(!this.§!W§ && this.§3A§ > 1)
         {
            this.§3A§ = 1;
         }
         else if(!this.§ L§ && this.§3A§ < 1)
         {
            this.§3A§ = 1;
         }
         if(!this.§6Z§ && this.§,!Z§ > 1)
         {
            this.§,!Z§ = 1;
         }
         else if(!this.§&!Y§ && this.§,!Z§ < 1)
         {
            this.§,!Z§ = 1;
         }
      }
      
      private function §5!-§() : void
      {
         if(this.§ !2§ == §8+§)
         {
            this.§3A§ = Math.sqrt(this.§3A§);
            this.§,!Z§ = Math.sqrt(this.§,!Z§);
         }
         else if(this.§ !2§ == §1!9§)
         {
            this.§3A§ *= this.§3A§;
            this.§,!Z§ *= this.§,!Z§;
         }
         else if(this.§ !2§ == §]!?§)
         {
            if(this.§3A§ > 1)
            {
               this.§3A§ = Math.sqrt(this.§3A§);
            }
            if(this.§,!Z§ > 1)
            {
               this.§,!Z§ = Math.sqrt(this.§,!Z§);
            }
         }
      }
      
      private function § `§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §?d§ || param4 == §&!c§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §&!,§ || param4 == §]!j§)
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
         else if(param4 == §4!p§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§ !0§)
               {
                  if(!this.§!Y§)
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
      
      private function §7!`§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §?d§ || param4 == §&!c§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §&!,§ || param4 == §]!j§)
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
         else if(param4 == §4!p§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§ !0§)
               {
                  if(!this.§!Y§ && !this.§'!_§)
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
      
      public function §?+§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§;!;§ = param1;
         this.§36§ = param2;
         this.§3A§ = param1 / this.§^m§;
         if(!this.§'!_§)
         {
            this.§3A§ = param1 / this.§^m§;
            this.§,!Z§ = param2 / this.§]!<§;
         }
         else
         {
            _loc3_ = this.§3A§ = param2 / this.§]!<§;
            _loc4_ = this.§,!Z§ = this.§3A§;
         }
         this.§4v§ = this.§3A§;
         this.§%!1§ = this.§,!Z§;
         this.§,"+§();
         this.§;"5§();
         this.§`!^§ = this.§3A§;
         this.§`<§ = this.§,!Z§;
         if(this.§'!_§)
         {
            this.§3A§ = param1 / this.§^m§;
            this.§,!Z§ = param2 / this.§]!<§;
         }
         this.§5!-§();
         this.§@S§ = this.§7!`§(this.§"L§,param1,this.§^m§,this.§-!E§,this.§ L§,this.§!W§,this.§3A§,this.§4v§,this.§`!^§);
         this.§#B§ = this.§7!`§(this.§2!v§,param2,this.§]!<§,this.§?F§,this.§&!Y§,this.§6Z§,this.§,!Z§,this.§%!1§,this.§`<§);
         if(this.§'!_§)
         {
            this.§3A§ = _loc3_;
            this.§,!Z§ = _loc4_;
         }
      }
   }
}
