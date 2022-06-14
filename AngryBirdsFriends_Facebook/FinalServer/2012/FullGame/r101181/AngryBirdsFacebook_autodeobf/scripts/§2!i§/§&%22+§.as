package §2!i§
{
   public class §&"+§
   {
      
      private static const §7!g§:String = "RIGHT";
      
      private static const §0Z§:String = "LEFT";
      
      private static const §9!p§:String = "TOP";
      
      private static const §3!0§:String = "BOTTOM";
      
      private static const §"$§:String = "CENTER";
      
      private static const § !5§:String = "NORMAL";
      
      private static const §-!M§:String = "SQRT";
      
      private static const §5!4§:String = "SQR";
       
      
      private var §%O§:Number = 0.0;
      
      private var §@!>§:Number = 0.0;
      
      private var §@"4§:Number = 1.0;
      
      private var §`"C§:Number = 1.0;
      
      private var §!!8§:Number = 1.0;
      
      private var §"!S§:Number = 1.0;
      
      private var §1!c§:String = "LEFT";
      
      private var § x§:String = "TOP";
      
      private var §>'§:Boolean = false;
      
      private var §+"§:Boolean = false;
      
      private var §0!S§:Boolean = false;
      
      private var §[?§:Boolean = false;
      
      private var §-M§:Boolean = false;
      
      private var §@G§:Boolean = false;
      
      private var §8!D§:String = "NORMAL";
      
      private var §?!K§:Number = 1.0;
      
      private var §4`§:Number = 1.0;
      
      private var §^"2§:Number = 1.0;
      
      private var §^!R§:Number = 1.0;
      
      private var §1!U§:Number = 1.0;
      
      private var §@f§:Number = 1.0;
      
      private var §,!k§:Number = 0.0;
      
      private var §!Q§:Number = 0.0;
      
      private var §+"D§:Number = 1.0;
      
      private var §[8§:Number = 1.0;
      
      public function §&"+§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§%O§ = param1;
         this.§@!>§ = param2;
         this.§,!k§ = param1;
         this.§!Q§ = param2;
         this.§@"4§ = param3;
         this.§`"C§ = param4;
         this.§!!8§ = param5;
         this.§"!S§ = param6;
         this.§+"D§ = param5;
         this.§[8§ = param6;
         this.§2!#§(param7);
         this.§%"#§(param8);
         this.§!W§(param9);
         this.§9!G§(param10);
         this.§""+§(param11);
         this.§'!&§(param12);
         this.§8!D§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§,!k§;
      }
      
      public function get y() : Number
      {
         return this.§!Q§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§%O§ = this.§["+§(param1,this.§+"D§,this.§!!8§,this.§1!c§,this.§>'§,this.§+"§,this.§?!K§,this.§^"2§,this.§1!U§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§@!>§ = this.§["+§(param1,this.§[8§,this.§"!S§,this.§ x§,this.§0!S§,this.§[?§,this.§4`§,this.§^!R§,this.§@f§);
      }
      
      public function get scaleX() : Number
      {
         return this.§@"4§ * this.§8!7§;
      }
      
      public function get scaleY() : Number
      {
         return this.§`"C§ * this.§7!+§;
      }
      
      private function get §8!7§() : Number
      {
         if(this.§>'§ || this.§+"§)
         {
            return this.§?!K§;
         }
         return 1;
      }
      
      private function get §7!+§() : Number
      {
         if(this.§0!S§ || this.§[?§)
         {
            return this.§4`§;
         }
         return 1;
      }
      
      private function §2!#§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §7!g§ || param1 == §"$§)
            {
               this.§1!c§ = param1;
            }
         }
      }
      
      private function §%"#§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §3!0§ || param1 == §"$§)
            {
               this.§ x§ = param1;
            }
         }
      }
      
      private function §!W§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§>'§ = true;
               this.§+"§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§>'§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§+"§ = true;
            }
         }
      }
      
      private function §9!G§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§0!S§ = true;
               this.§[?§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§0!S§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§[?§ = true;
            }
         }
      }
      
      private function §'!&§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §-!M§)
            {
               this.§8!D§ = §-!M§;
            }
            else if(param1.toUpperCase() == §5!4§)
            {
               this.§8!D§ = §5!4§;
            }
         }
      }
      
      private function §""+§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§-M§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§-M§ = true;
               this.§@G§ = true;
            }
         }
      }
      
      private function §,%§() : void
      {
         if(this.§-M§)
         {
            if(this.§?!K§ < this.§4`§)
            {
               if(!this.§@G§)
               {
                  this.§4`§ = this.§?!K§;
               }
               else
               {
                  this.§?!K§ = this.§4`§;
               }
            }
            else if(!this.§@G§)
            {
               this.§?!K§ = this.§4`§;
            }
            else
            {
               this.§4`§ = this.§?!K§;
            }
         }
      }
      
      private function §>!Q§() : void
      {
         if(!this.§+"§ && this.§?!K§ > 1)
         {
            this.§?!K§ = 1;
         }
         else if(!this.§>'§ && this.§?!K§ < 1)
         {
            this.§?!K§ = 1;
         }
         if(!this.§[?§ && this.§4`§ > 1)
         {
            this.§4`§ = 1;
         }
         else if(!this.§0!S§ && this.§4`§ < 1)
         {
            this.§4`§ = 1;
         }
      }
      
      private function §;!A§() : void
      {
         if(this.§8!D§ == §-!M§)
         {
            this.§?!K§ = Math.sqrt(this.§?!K§);
            this.§4`§ = Math.sqrt(this.§4`§);
         }
         else if(this.§8!D§ == §5!4§)
         {
            this.§?!K§ *= this.§?!K§;
            this.§4`§ *= this.§4`§;
         }
      }
      
      private function §["+§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §0Z§ || param4 == §9!p§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §7!g§ || param4 == §3!0§)
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
         else if(param4 == §"$§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§-M§)
               {
                  if(!this.§@G§)
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
      
      private function §,!`§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §0Z§ || param4 == §9!p§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §7!g§ || param4 == §3!0§)
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
         else if(param4 == §"$§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§-M§)
               {
                  if(!this.§@G§)
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
      
      public function §8!A§(param1:Number, param2:Number) : void
      {
         this.§+"D§ = param1;
         this.§[8§ = param2;
         this.§?!K§ = param1 / this.§!!8§;
         this.§4`§ = param2 / this.§"!S§;
         this.§^"2§ = this.§?!K§;
         this.§^!R§ = this.§4`§;
         this.§,%§();
         this.§>!Q§();
         this.§1!U§ = this.§?!K§;
         this.§@f§ = this.§4`§;
         this.§;!A§();
         this.§,!k§ = this.§,!`§(this.§%O§,param1,this.§!!8§,this.§1!c§,this.§>'§,this.§+"§,this.§?!K§,this.§^"2§,this.§1!U§);
         this.§!Q§ = this.§,!`§(this.§@!>§,param2,this.§"!S§,this.§ x§,this.§0!S§,this.§[?§,this.§4`§,this.§^!R§,this.§@f§);
      }
   }
}
