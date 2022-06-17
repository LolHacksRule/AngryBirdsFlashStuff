package §4!n§
{
   public class §>!O§
   {
      
      private static const §>"^§:String = "RIGHT";
      
      private static const §2"C§:String = "LEFT";
      
      private static const §#_§:String = "TOP";
      
      private static const §7!b§:String = "BOTTOM";
      
      private static const §8!<§:String = "CENTER";
      
      private static const §5"K§:String = "NORMAL";
      
      private static const §?s§:String = "SQRT";
      
      private static const §3"0§:String = "SQR";
      
      private static const §"$!§:String = "NORMAL_SQRT";
       
      
      private var §;##§:Number = 0.0;
      
      private var § get§:Number = 0.0;
      
      private var §+"-§:Number = 1.0;
      
      private var §7L§:Number = 1.0;
      
      private var §!!r§:Number = 1.0;
      
      private var §1#J§:Number = 1.0;
      
      private var §'V§:String = "LEFT";
      
      private var § ,§:String = "TOP";
      
      private var §@$%§:Boolean = false;
      
      private var §=#4§:Boolean = false;
      
      private var §-![§:Boolean = false;
      
      private var §1"g§:Boolean = false;
      
      private var §>R§:Boolean = false;
      
      private var §@!V§:Boolean = false;
      
      private var §[P§:Boolean = false;
      
      private var §9"N§:String = "NORMAL";
      
      private var §<$2§:Number = 1.0;
      
      private var §8"7§:Number = 1.0;
      
      private var §-"%§:Number = 1.0;
      
      private var §'+§:Number = 1.0;
      
      private var §%!S§:Number = 1.0;
      
      private var §%,§:Number = 1.0;
      
      private var §-##§:Number = 0.0;
      
      private var §0#[§:Number = 0.0;
      
      private var §="G§:Number = 1.0;
      
      private var §7!@§:Number = 1.0;
      
      public function §>!O§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§;##§ = param1;
         this.§ get§ = param2;
         this.§-##§ = param1;
         this.§0#[§ = param2;
         this.§+"-§ = param3;
         this.§7L§ = param4;
         this.§!!r§ = param5;
         this.§1#J§ = param6;
         this.§="G§ = param5;
         this.§7!@§ = param6;
         this.§!"Y§(param7);
         this.§="8§(param8);
         this.§>$6§(param9);
         this.§ f§(param10);
         this.§+!"§(param11);
         this.§64§(param12);
      }
      
      public function get x() : Number
      {
         return this.§-##§;
      }
      
      public function get y() : Number
      {
         return this.§0#[§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§;##§ = this.§"!,§(param1,this.§="G§,this.§!!r§,this.§'V§,this.§@$%§,this.§=#4§,this.§<$2§,this.§-"%§,this.§%!S§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§ get§ = this.§"!,§(param1,this.§7!@§,this.§1#J§,this.§ ,§,this.§-![§,this.§1"g§,this.§8"7§,this.§'+§,this.§%,§);
      }
      
      public function get scaleX() : Number
      {
         return this.§+"-§ * this.§%#%§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§+"-§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§7L§ * this.§;!j§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§7L§ = param1;
      }
      
      private function get §%#%§() : Number
      {
         if(this.§@$%§ || this.§=#4§)
         {
            return this.§<$2§;
         }
         return 1;
      }
      
      private function get §;!j§() : Number
      {
         if(this.§-![§ || this.§1"g§)
         {
            return this.§8"7§;
         }
         return 1;
      }
      
      private function §!"Y§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §>"^§ || param1 == §8!<§)
            {
               this.§'V§ = param1;
            }
         }
      }
      
      private function §="8§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §7!b§ || param1 == §8!<§)
            {
               this.§ ,§ = param1;
            }
         }
      }
      
      private function §>$6§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§@$%§ = true;
               this.§=#4§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§@$%§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§=#4§ = true;
            }
         }
      }
      
      private function § f§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§-![§ = true;
               this.§1"g§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§-![§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§1"g§ = true;
            }
         }
      }
      
      private function §64§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §?s§)
            {
               this.§9"N§ = §?s§;
            }
            else if(param1.toUpperCase() == §3"0§)
            {
               this.§9"N§ = §3"0§;
            }
            else if(param1.toUpperCase() == §"$!§)
            {
               this.§9"N§ = §"$!§;
            }
         }
      }
      
      private function §+!"§(param1:String) : void
      {
         if(param1)
         {
            switch(param1.toUpperCase())
            {
               case "TRUE":
                  this.§>R§ = true;
                  break;
               case "UP":
                  this.§>R§ = true;
                  this.§@!V§ = true;
                  break;
               case "PRODUCT":
                  this.§>R§ = true;
                  this.§[P§ = true;
            }
         }
      }
      
      private function §[9§() : void
      {
         if(this.§>R§)
         {
            if(this.§[P§)
            {
               this.§<$2§ = Math.sqrt(this.§<$2§ * this.§8"7§);
               this.§8"7§ = this.§<$2§;
            }
            else if(this.§<$2§ < this.§8"7§)
            {
               if(!this.§@!V§)
               {
                  this.§8"7§ = this.§<$2§;
               }
               else
               {
                  this.§<$2§ = this.§8"7§;
               }
            }
            else if(!this.§@!V§)
            {
               this.§<$2§ = this.§8"7§;
            }
            else
            {
               this.§8"7§ = this.§<$2§;
            }
         }
      }
      
      private function §2"L§() : void
      {
         if(!this.§=#4§ && this.§<$2§ > 1)
         {
            this.§<$2§ = 1;
         }
         else if(!this.§@$%§ && this.§<$2§ < 1)
         {
            this.§<$2§ = 1;
         }
         if(!this.§1"g§ && this.§8"7§ > 1)
         {
            this.§8"7§ = 1;
         }
         else if(!this.§-![§ && this.§8"7§ < 1)
         {
            this.§8"7§ = 1;
         }
      }
      
      private function §7"e§() : void
      {
         if(this.§9"N§ == §?s§)
         {
            this.§<$2§ = Math.sqrt(this.§<$2§);
            this.§8"7§ = Math.sqrt(this.§8"7§);
         }
         else if(this.§9"N§ == §3"0§)
         {
            this.§<$2§ *= this.§<$2§;
            this.§8"7§ *= this.§8"7§;
         }
         else if(this.§9"N§ == §"$!§)
         {
            if(this.§<$2§ > 1)
            {
               this.§<$2§ = Math.sqrt(this.§<$2§);
            }
            if(this.§8"7§ > 1)
            {
               this.§8"7§ = Math.sqrt(this.§8"7§);
            }
         }
      }
      
      private function §"!,§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §2"C§ || param4 == §#_§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §>"^§ || param4 == §7!b§)
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
         else if(param4 == §8!<§)
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
      
      private function §!#V§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number) : Number
      {
         var _loc8_:Number = param1;
         if(param4 == §2"C§ || param4 == §#_§)
         {
            if(param5 || param6)
            {
               _loc8_ = param1 * param7;
            }
         }
         else if(param4 == §>"^§ || param4 == §7!b§)
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
         else if(param4 == §8!<§)
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
      
      public function §""F§(param1:Number, param2:Number) : void
      {
         this.§="G§ = param1;
         this.§7!@§ = param2;
         this.§<$2§ = param1 / this.§!!r§;
         this.§8"7§ = param2 / this.§1#J§;
         this.§-"%§ = this.§<$2§;
         this.§'+§ = this.§8"7§;
         this.§[9§();
         this.§2"L§();
         this.§%!S§ = this.§<$2§;
         this.§%,§ = this.§8"7§;
         this.§7"e§();
         this.§-##§ = this.§!#V§(this.§;##§,param1,this.§!!r§,this.§'V§,this.§@$%§,this.§=#4§,this.§<$2§);
         this.§0#[§ = this.§!#V§(this.§ get§,param2,this.§1#J§,this.§ ,§,this.§-![§,this.§1"g§,this.§8"7§);
      }
   }
}
