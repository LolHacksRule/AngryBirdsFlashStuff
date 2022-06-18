package §<"1§
{
   public class §2![§
   {
      
      private static const §;#K§:String = "RIGHT";
      
      private static const §@!'§:String = "LEFT";
      
      private static const § s§:String = "TOP";
      
      private static const §^!P§:String = "BOTTOM";
      
      private static const § var§:String = "CENTER";
      
      private static const §=!L§:String = "NORMAL";
      
      private static const §4B§:String = "SQRT";
      
      private static const §[$-§:String = "SQR";
      
      private static const § #,§:String = "NORMAL_SQRT";
       
      
      private var §1"Z§:Number = 0.0;
      
      private var §@!D§:Number = 0.0;
      
      private var §@#S§:Number = 1.0;
      
      private var §^!j§:Number = 1.0;
      
      private var §+$>§:Number = 1.0;
      
      private var §^#x§:Number = 1.0;
      
      private var §?"T§:String = "LEFT";
      
      private var §!$<§:String = "TOP";
      
      private var §-"6§:Boolean = false;
      
      private var §8##§:Boolean = false;
      
      private var §?!1§:Boolean = false;
      
      private var §#&§:Boolean = false;
      
      private var §4X§:Boolean = false;
      
      private var §3!G§:Boolean = false;
      
      private var §'#K§:Boolean = false;
      
      private var §98§:String = "NORMAL";
      
      private var §<#1§:Number = 1.0;
      
      private var §6l§:Number = 1.0;
      
      private var §-!f§:Number = 1.0;
      
      private var §%!n§:Number = 1.0;
      
      private var §+#g§:Number = 1.0;
      
      private var §]!B§:Number = 1.0;
      
      private var §?!l§:Number = 0.0;
      
      private var §`"T§:Number = 0.0;
      
      private var §0?§:Number = 1.0;
      
      private var §,#k§:Number = 1.0;
      
      public function §2![§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§1"Z§ = param1;
         this.§@!D§ = param2;
         this.§?!l§ = param1;
         this.§`"T§ = param2;
         this.§@#S§ = param3;
         this.§^!j§ = param4;
         this.§+$>§ = param5;
         this.§^#x§ = param6;
         this.§0?§ = param5;
         this.§,#k§ = param6;
         this.§?!'§(param7);
         this.§<k§(param8);
         this.§8!7§(param9);
         this.§2#^§(param10);
         this.§"#>§(param11);
         this.§2U§(param12);
      }
      
      public function get x() : Number
      {
         return this.§?!l§;
      }
      
      public function get y() : Number
      {
         return this.§`"T§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§1"Z§ = this.§]!h§(param1,this.§0?§,this.§+$>§,this.§?"T§,this.§-"6§,this.§8##§,this.§<#1§,this.§-!f§,this.§+#g§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§@!D§ = this.§]!h§(param1,this.§,#k§,this.§^#x§,this.§!$<§,this.§?!1§,this.§#&§,this.§6l§,this.§%!n§,this.§]!B§);
      }
      
      public function get scaleX() : Number
      {
         return this.§@#S§ * this.§-!1§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§@#S§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§^!j§ * this.§`#1§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§^!j§ = param1;
      }
      
      private function get §-!1§() : Number
      {
         if(this.§-"6§ || this.§8##§)
         {
            return this.§<#1§;
         }
         return 1;
      }
      
      private function get §`#1§() : Number
      {
         if(this.§?!1§ || this.§#&§)
         {
            return this.§6l§;
         }
         return 1;
      }
      
      private function §?!'§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §;#K§ || param1 == § var§)
            {
               this.§?"T§ = param1;
            }
         }
      }
      
      private function §<k§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §^!P§ || param1 == § var§)
            {
               this.§!$<§ = param1;
            }
         }
      }
      
      private function §8!7§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§-"6§ = true;
               this.§8##§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§-"6§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§8##§ = true;
            }
         }
      }
      
      private function §2#^§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§?!1§ = true;
               this.§#&§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§?!1§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§#&§ = true;
            }
         }
      }
      
      private function §2U§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §4B§)
            {
               this.§98§ = §4B§;
            }
            else if(param1.toUpperCase() == §[$-§)
            {
               this.§98§ = §[$-§;
            }
            else if(param1.toUpperCase() == § #,§)
            {
               this.§98§ = § #,§;
            }
         }
      }
      
      private function §"#>§(param1:String) : void
      {
         if(param1)
         {
            switch(param1.toUpperCase())
            {
               case "TRUE":
                  this.§4X§ = true;
                  break;
               case "UP":
                  this.§4X§ = true;
                  this.§3!G§ = true;
                  break;
               case "PRODUCT":
                  this.§4X§ = true;
                  this.§'#K§ = true;
            }
         }
      }
      
      private function §>!1§() : void
      {
         if(this.§4X§)
         {
            if(this.§'#K§)
            {
               this.§<#1§ = Math.sqrt(this.§<#1§ * this.§6l§);
               this.§6l§ = this.§<#1§;
            }
            else if(this.§<#1§ < this.§6l§)
            {
               if(!this.§3!G§)
               {
                  this.§6l§ = this.§<#1§;
               }
               else
               {
                  this.§<#1§ = this.§6l§;
               }
            }
            else if(!this.§3!G§)
            {
               this.§<#1§ = this.§6l§;
            }
            else
            {
               this.§6l§ = this.§<#1§;
            }
         }
      }
      
      private function §1z§() : void
      {
         if(!this.§8##§ && this.§<#1§ > 1)
         {
            this.§<#1§ = 1;
         }
         else if(!this.§-"6§ && this.§<#1§ < 1)
         {
            this.§<#1§ = 1;
         }
         if(!this.§#&§ && this.§6l§ > 1)
         {
            this.§6l§ = 1;
         }
         else if(!this.§?!1§ && this.§6l§ < 1)
         {
            this.§6l§ = 1;
         }
      }
      
      private function §7"o§() : void
      {
         if(this.§98§ == §4B§)
         {
            this.§<#1§ = Math.sqrt(this.§<#1§);
            this.§6l§ = Math.sqrt(this.§6l§);
         }
         else if(this.§98§ == §[$-§)
         {
            this.§<#1§ *= this.§<#1§;
            this.§6l§ *= this.§6l§;
         }
         else if(this.§98§ == § #,§)
         {
            if(this.§<#1§ > 1)
            {
               this.§<#1§ = Math.sqrt(this.§<#1§);
            }
            if(this.§6l§ > 1)
            {
               this.§6l§ = Math.sqrt(this.§6l§);
            }
         }
      }
      
      private function §]!h§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §@!'§ || param4 == § s§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §;#K§ || param4 == §^!P§)
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
         else if(param4 == § var§)
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
      
      private function §<#V§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number) : Number
      {
         var _loc8_:Number = param1;
         if(param4 == §@!'§ || param4 == § s§)
         {
            if(param5 || param6)
            {
               _loc8_ = param1 * param7;
            }
         }
         else if(param4 == §;#K§ || param4 == §^!P§)
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
         else if(param4 == § var§)
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
      
      public function §["2§(param1:Number, param2:Number) : void
      {
         this.§0?§ = param1;
         this.§,#k§ = param2;
         this.§<#1§ = param1 / this.§+$>§;
         this.§6l§ = param2 / this.§^#x§;
         this.§-!f§ = this.§<#1§;
         this.§%!n§ = this.§6l§;
         this.§>!1§();
         this.§1z§();
         this.§+#g§ = this.§<#1§;
         this.§]!B§ = this.§6l§;
         this.§7"o§();
         this.§?!l§ = this.§<#V§(this.§1"Z§,param1,this.§+$>§,this.§?"T§,this.§-"6§,this.§8##§,this.§<#1§);
         this.§`"T§ = this.§<#V§(this.§@!D§,param2,this.§^#x§,this.§!$<§,this.§?!1§,this.§#&§,this.§6l§);
      }
   }
}
