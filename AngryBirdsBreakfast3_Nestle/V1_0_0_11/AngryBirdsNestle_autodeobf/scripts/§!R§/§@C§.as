package §!R§
{
   public class §@C§
   {
      
      private static const §4m§:String = "RIGHT";
      
      private static const §`F§:String = "LEFT";
      
      private static const §2P§:String = "TOP";
      
      private static const §@!Q§:String = "BOTTOM";
      
      private static const §="&§:String = "CENTER";
      
      private static const §-!I§:String = "NORMAL";
      
      private static const §2!Q§:String = "SQRT";
      
      private static const §0!`§:String = "SQR";
      
      private static const §>!r§:String = "NORMAL_SQRT";
       
      
      private var §&",§:Number = 0.0;
      
      private var §7!0§:Number = 0.0;
      
      private var §4!J§:Number = 1.0;
      
      private var §^!e§:Number = 1.0;
      
      private var §4![§:Number = 1.0;
      
      private var §,!Y§:Number = 1.0;
      
      private var §=s§:String = "LEFT";
      
      private var §-!l§:String = "TOP";
      
      private var §""8§:Boolean = false;
      
      private var §]!x§:Boolean = false;
      
      private var §?a§:Boolean = false;
      
      private var §2!0§:Boolean = false;
      
      private var §3"§:Boolean = false;
      
      private var §7!E§:Boolean = false;
      
      private var §6!M§:Boolean = false;
      
      private var §83§:String = "NORMAL";
      
      private var §,A§:Number = 1.0;
      
      private var §[!0§:Number = 1.0;
      
      private var §;L§:Number = 1.0;
      
      private var §2!K§:Number = 1.0;
      
      private var §@"§:Number = 1.0;
      
      private var §58§:Number = 1.0;
      
      private var §0O§:Number = 0.0;
      
      private var §=!v§:Number = 0.0;
      
      private var §;!j§:Number = 1.0;
      
      private var §#u§:Number = 1.0;
      
      public function §@C§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§&",§ = param1;
         this.§7!0§ = param2;
         this.§0O§ = param1;
         this.§=!v§ = param2;
         this.§4!J§ = param3;
         this.§^!e§ = param4;
         this.§4![§ = param5;
         this.§,!Y§ = param6;
         this.§;!j§ = param5;
         this.§#u§ = param6;
         this.§7!W§(param7);
         this.§;+§(param8);
         this.§!Y§(param9);
         this.§&!D§(param10);
         this.§2"5§(param11);
         this.§%!i§(param12);
         this.§83§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§0O§;
      }
      
      public function get y() : Number
      {
         return this.§=!v§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§&",§ = this.§each §(param1,this.§;!j§,this.§4![§,this.§=s§,this.§""8§,this.§]!x§,this.§,A§,this.§;L§,this.§@"§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§7!0§ = this.§each §(param1,this.§#u§,this.§,!Y§,this.§-!l§,this.§?a§,this.§2!0§,this.§[!0§,this.§2!K§,this.§58§);
      }
      
      public function get scaleX() : Number
      {
         return this.§4!J§ * this.§!!S§;
      }
      
      public function get scaleY() : Number
      {
         return this.§^!e§ * this.§<R§;
      }
      
      private function get §!!S§() : Number
      {
         if(this.§""8§ || this.§]!x§)
         {
            return this.§,A§;
         }
         return 1;
      }
      
      private function get §<R§() : Number
      {
         if(this.§?a§ || this.§2!0§)
         {
            return this.§[!0§;
         }
         return 1;
      }
      
      private function §7!W§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §4m§ || param1 == §="&§)
            {
               this.§=s§ = param1;
            }
         }
      }
      
      private function §;+§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §@!Q§ || param1 == §="&§)
            {
               this.§-!l§ = param1;
            }
         }
      }
      
      private function §!Y§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§""8§ = true;
               this.§]!x§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§""8§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§]!x§ = true;
            }
         }
      }
      
      private function §&!D§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§?a§ = true;
               this.§2!0§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§?a§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§2!0§ = true;
            }
         }
      }
      
      private function §%!i§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §2!Q§)
            {
               this.§83§ = §2!Q§;
            }
            else if(param1.toUpperCase() == §0!`§)
            {
               this.§83§ = §0!`§;
            }
            else if(param1.toUpperCase() == §>!r§)
            {
               this.§83§ = §>!r§;
            }
         }
      }
      
      private function §2"5§(param1:String) : void
      {
         if(param1)
         {
            switch(param1.toUpperCase())
            {
               case "TRUE":
                  this.§3"§ = true;
                  break;
               case "UP":
                  this.§3"§ = true;
                  this.§7!E§ = true;
                  break;
               case "UPDOWN":
                  this.§3"§ = true;
                  this.§6!M§ = true;
            }
         }
      }
      
      private function §5,§() : void
      {
         if(this.§3"§)
         {
            if(this.§,A§ < this.§[!0§)
            {
               if(!this.§7!E§)
               {
                  this.§[!0§ = this.§,A§;
               }
               else
               {
                  this.§,A§ = this.§[!0§;
               }
            }
            else if(!this.§7!E§)
            {
               this.§,A§ = this.§[!0§;
            }
            else
            {
               this.§[!0§ = this.§,A§;
            }
         }
      }
      
      private function §=X§() : void
      {
         if(!this.§]!x§ && this.§,A§ > 1)
         {
            this.§,A§ = 1;
         }
         else if(!this.§""8§ && this.§,A§ < 1)
         {
            this.§,A§ = 1;
         }
         if(!this.§2!0§ && this.§[!0§ > 1)
         {
            this.§[!0§ = 1;
         }
         else if(!this.§?a§ && this.§[!0§ < 1)
         {
            this.§[!0§ = 1;
         }
      }
      
      private function §9!A§() : void
      {
         if(this.§83§ == §2!Q§)
         {
            this.§,A§ = Math.sqrt(this.§,A§);
            this.§[!0§ = Math.sqrt(this.§[!0§);
         }
         else if(this.§83§ == §0!`§)
         {
            this.§,A§ *= this.§,A§;
            this.§[!0§ *= this.§[!0§;
         }
         else if(this.§83§ == §>!r§)
         {
            if(this.§,A§ > 1)
            {
               this.§,A§ = Math.sqrt(this.§,A§);
            }
            if(this.§[!0§ > 1)
            {
               this.§[!0§ = Math.sqrt(this.§[!0§);
            }
         }
      }
      
      private function §each §(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §`F§ || param4 == §2P§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §4m§ || param4 == §@!Q§)
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
         else if(param4 == §="&§)
         {
            if(param5 || param6)
            {
               _loc10_ = (param1 - param2 / 2) / param7 + param3 / 2;
            }
            else
            {
               _loc10_ = param1 - param2 / 2 + param3 / 2;
            }
         }
         return _loc10_;
      }
      
      private function §2"0§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number) : Number
      {
         var _loc8_:Number = param1;
         if(param4 == §`F§ || param4 == §2P§)
         {
            if(param5 || param6)
            {
               _loc8_ = param1 * param7;
            }
         }
         else if(param4 == §4m§ || param4 == §@!Q§)
         {
            if(param5 || param6)
            {
               _loc8_ = param2 - (param3 - param1) * param7;
            }
            else
            {
               _loc8_ = param2 - (param3 - param1);
            }
         }
         else if(param4 == §="&§)
         {
            if(param5 || param6)
            {
               _loc8_ = param2 / 2 + (param1 - param3 / 2) * param7;
            }
            else
            {
               _loc8_ = param2 / 2 + (param1 - param3 / 2);
            }
         }
         return _loc8_;
      }
      
      public function §%!&§(param1:Number, param2:Number) : void
      {
         this.§;!j§ = param1;
         this.§#u§ = param2;
         this.§,A§ = param1 / this.§4![§;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         if(this.§6!M§)
         {
            _loc3_ = this.§,A§ = param2 / this.§,!Y§;
            _loc4_ = this.§[!0§ = this.§,A§;
         }
         else
         {
            this.§,A§ = param1 / this.§4![§;
            this.§[!0§ = param2 / this.§,!Y§;
         }
         this.§;L§ = this.§,A§;
         this.§2!K§ = this.§[!0§;
         this.§5,§();
         this.§=X§();
         this.§@"§ = this.§,A§;
         this.§58§ = this.§[!0§;
         if(this.§6!M§)
         {
            this.§,A§ = param1 / this.§4![§;
            this.§[!0§ = param2 / this.§,!Y§;
         }
         this.§9!A§();
         this.§0O§ = this.§2"0§(this.§&",§,param1,this.§4![§,this.§=s§,this.§""8§,this.§]!x§,this.§,A§);
         this.§=!v§ = this.§2"0§(this.§7!0§,param2,this.§,!Y§,this.§-!l§,this.§?a§,this.§2!0§,this.§[!0§);
         if(this.§6!M§)
         {
            this.§,A§ = _loc3_;
            this.§[!0§ = _loc4_;
         }
      }
   }
}
