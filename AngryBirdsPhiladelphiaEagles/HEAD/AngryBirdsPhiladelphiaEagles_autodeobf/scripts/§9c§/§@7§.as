package §9c§
{
   public class §@7§
   {
      
      private static const §^x§:String = "RIGHT";
      
      private static const §6L§:String = "LEFT";
      
      private static const §"C§:String = "TOP";
      
      private static const §#3§:String = "BOTTOM";
      
      private static const §"+§:String = "CENTER";
      
      private static const §7Z§:String = "NORMAL";
      
      private static const §#V§:String = "SQRT";
      
      private static const §2]§:String = "SQR";
       
      
      private var §`0§:Number = 0.0;
      
      private var §<s§:Number = 0.0;
      
      private var §7-§:Number = 1.0;
      
      private var §=x§:Number = 1.0;
      
      private var §@C§:Number = 1.0;
      
      private var §&!B§:Number = 1.0;
      
      private var §,Z§:String = "LEFT";
      
      private var §47§:String = "TOP";
      
      private var §^!P§:Boolean = false;
      
      private var §&8§:Boolean = false;
      
      private var §^Q§:Boolean = false;
      
      private var §?<§:Boolean = false;
      
      private var §#_§:Boolean = false;
      
      private var §]!C§:Boolean = false;
      
      private var §#o§:String = "NORMAL";
      
      private var §6!-§:Number = 1.0;
      
      private var §[!J§:Number = 1.0;
      
      private var §@!-§:Number = 1.0;
      
      private var §@!0§:Number = 1.0;
      
      private var §3!C§:Number = 1.0;
      
      private var §[%§:Number = 1.0;
      
      private var §-o§:Number = 0.0;
      
      private var §2!9§:Number = 0.0;
      
      private var §6U§:Number = 1.0;
      
      private var §&Z§:Number = 1.0;
      
      public function §@7§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§`0§ = param1;
         this.§<s§ = param2;
         this.§-o§ = param1;
         this.§2!9§ = param2;
         this.§6U§ = param3;
         this.§&Z§ = param4;
         this.§7-§ = param5;
         this.§=x§ = param6;
         this.§@C§ = param5;
         this.§&!B§ = param6;
         this.§ !?§(param7);
         this.§5N§(param8);
         this.§+=§(param9);
         this.§+!"§(param10);
         this.§;i§(param11);
         this.§5!P§(param12);
         this.§#o§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§-o§;
      }
      
      public function get y() : Number
      {
         return this.§2!9§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§`0§ = this.§!O§(param1,this.§@C§,this.§7-§,this.§,Z§,this.§^!P§,this.§&8§,this.§6!-§,this.§@!-§,this.§3!C§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§<s§ = this.§!O§(param1,this.§&!B§,this.§=x§,this.§47§,this.§^Q§,this.§?<§,this.§[!J§,this.§@!0§,this.§[%§);
      }
      
      public function get scaleX() : Number
      {
         return this.§6U§ * this.§"%§;
      }
      
      public function get scaleY() : Number
      {
         return this.§&Z§ * this.§]V§;
      }
      
      private function get §"%§() : Number
      {
         if(this.§^!P§ || this.§&8§)
         {
            return this.§6!-§;
         }
         return 1;
      }
      
      private function get §]V§() : Number
      {
         if(this.§^Q§ || this.§?<§)
         {
            return this.§[!J§;
         }
         return 1;
      }
      
      private function § !?§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §^x§ || param1 == §"+§)
            {
               this.§,Z§ = param1;
            }
         }
      }
      
      private function §5N§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §#3§ || param1 == §"+§)
            {
               this.§47§ = param1;
            }
         }
      }
      
      private function §+=§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§^!P§ = true;
               this.§&8§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§^!P§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§&8§ = true;
            }
         }
      }
      
      private function §+!"§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§^Q§ = true;
               this.§?<§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§^Q§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§?<§ = true;
            }
         }
      }
      
      private function §5!P§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §#V§)
            {
               this.§#o§ = §#V§;
            }
            else if(param1.toUpperCase() == §2]§)
            {
               this.§#o§ = §2]§;
            }
         }
      }
      
      private function §;i§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§#_§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§#_§ = true;
               this.§]!C§ = true;
            }
         }
      }
      
      private function §"!+§() : void
      {
         if(this.§#_§)
         {
            if(this.§6!-§ < this.§[!J§)
            {
               if(!this.§]!C§)
               {
                  this.§[!J§ = this.§6!-§;
               }
               else
               {
                  this.§6!-§ = this.§[!J§;
               }
            }
            else if(!this.§]!C§)
            {
               this.§6!-§ = this.§[!J§;
            }
            else
            {
               this.§[!J§ = this.§6!-§;
            }
         }
      }
      
      private function §2!@§() : void
      {
         if(!this.§&8§ && this.§6!-§ > 1)
         {
            this.§6!-§ = 1;
         }
         else if(this.§&8§ && !this.§^!P§ && this.§6!-§ < 1)
         {
            this.§6!-§ = 1;
         }
         if(!this.§?<§ && this.§[!J§ > 1)
         {
            this.§[!J§ = 1;
         }
         else if(this.§?<§ && !this.§^Q§ && this.§[!J§ < 1)
         {
            this.§[!J§ = 1;
         }
      }
      
      private function §+W§() : void
      {
         if(this.§#o§ == §#V§)
         {
            this.§6!-§ = Math.sqrt(this.§6!-§);
            this.§[!J§ = Math.sqrt(this.§[!J§);
         }
         else if(this.§#o§ == §2]§)
         {
            this.§6!-§ *= this.§6!-§;
            this.§[!J§ *= this.§[!J§;
         }
      }
      
      private function §!O§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §6L§ || param4 == §"C§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §^x§ || param4 == §#3§)
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
         else if(param4 == §"+§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§#_§)
               {
                  if(!this.§]!C§)
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
      
      private function § M§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §6L§ || param4 == §"C§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §^x§ || param4 == §#3§)
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
         else if(param4 == §"+§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§#_§)
               {
                  if(!this.§]!C§)
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
      
      public function §?A§(param1:Number, param2:Number) : void
      {
         this.§@C§ = param1;
         this.§&!B§ = param2;
         this.§6!-§ = param1 / this.§7-§;
         this.§[!J§ = param2 / this.§=x§;
         this.§@!-§ = this.§6!-§;
         this.§@!0§ = this.§[!J§;
         this.§"!+§();
         this.§2!@§();
         this.§3!C§ = this.§6!-§;
         this.§[%§ = this.§[!J§;
         this.§+W§();
         this.§-o§ = this.§ M§(this.§`0§,param1,this.§7-§,this.§,Z§,this.§^!P§,this.§&8§,this.§6!-§,this.§@!-§,this.§3!C§);
         this.§2!9§ = this.§ M§(this.§<s§,param2,this.§=x§,this.§47§,this.§^Q§,this.§?<§,this.§[!J§,this.§@!0§,this.§[%§);
      }
   }
}
