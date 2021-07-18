package §;"Y§
{
   public class §["I§
   {
      
      private static const §^"S§:String = "RIGHT";
      
      private static const §7"@§:String = "LEFT";
      
      private static const §&0§:String = "TOP";
      
      private static const §%P§:String = "BOTTOM";
      
      private static const §'"$§:String = "CENTER";
      
      private static const §+R§:String = "NORMAL";
      
      private static const §-#S§:String = "SQRT";
      
      private static const § "G§:String = "SQR";
      
      private static const §""q§:String = "NORMAL_SQRT";
       
      
      private var §8"T§:Number = 0.0;
      
      private var §?!Q§:Number = 0.0;
      
      private var §@"9§:Number = 1.0;
      
      private var §`M§:Number = 1.0;
      
      private var §1%§:Number = 1.0;
      
      private var §9!?§:Number = 1.0;
      
      private var § "[§:String = "LEFT";
      
      private var §>;§:String = "TOP";
      
      private var §>P§:Boolean = false;
      
      private var §`!F§:Boolean = false;
      
      private var §"'§:Boolean = false;
      
      private var §-"G§:Boolean = false;
      
      private var §>"t§:Boolean = false;
      
      private var §@"2§:Boolean = false;
      
      private var §1Q§:Boolean = false;
      
      private var §@?§:String = "NORMAL";
      
      private var §7'§:Number = 1.0;
      
      private var §4"g§:Number = 1.0;
      
      private var §]4§:Number = 1.0;
      
      private var §6"+§:Number = 1.0;
      
      private var §+"?§:Number = 1.0;
      
      private var §6"f§:Number = 1.0;
      
      private var §8!+§:Number = 0.0;
      
      private var §=!Z§:Number = 0.0;
      
      private var §+"p§:Number = 1.0;
      
      private var §?!"§:Number = 1.0;
      
      public function §["I§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§8"T§ = param1;
         this.§?!Q§ = param2;
         this.§8!+§ = param1;
         this.§=!Z§ = param2;
         this.§@"9§ = param3;
         this.§`M§ = param4;
         this.§1%§ = param5;
         this.§9!?§ = param6;
         this.§+"p§ = param5;
         this.§?!"§ = param6;
         this.§#"L§(param7);
         this.§,#$§(param8);
         this.§#"k§(param9);
         this.§case§(param10);
         this.§&!t§(param11);
         this.§#!v§(param12);
      }
      
      public function get x() : Number
      {
         return this.§8!+§;
      }
      
      public function get y() : Number
      {
         return this.§=!Z§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§8"T§ = this.§&";§(param1,this.§+"p§,this.§1%§,this.§ "[§,this.§>P§,this.§`!F§,this.§7'§,this.§]4§,this.§+"?§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§?!Q§ = this.§&";§(param1,this.§?!"§,this.§9!?§,this.§>;§,this.§"'§,this.§-"G§,this.§4"g§,this.§6"+§,this.§6"f§);
      }
      
      public function get scaleX() : Number
      {
         return this.§@"9§ * this.§'c§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§@"9§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§`M§ * this.§@"x§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§`M§ = param1;
      }
      
      private function get §'c§() : Number
      {
         if(this.§>P§ || this.§`!F§)
         {
            return this.§7'§;
         }
         return 1;
      }
      
      private function get §@"x§() : Number
      {
         if(this.§"'§ || this.§-"G§)
         {
            return this.§4"g§;
         }
         return 1;
      }
      
      private function §#"L§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §^"S§ || param1 == §'"$§)
            {
               this.§ "[§ = param1;
            }
         }
      }
      
      private function §,#$§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §%P§ || param1 == §'"$§)
            {
               this.§>;§ = param1;
            }
         }
      }
      
      private function §#"k§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§>P§ = true;
               this.§`!F§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§>P§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§`!F§ = true;
            }
         }
      }
      
      private function §case§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§"'§ = true;
               this.§-"G§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§"'§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§-"G§ = true;
            }
         }
      }
      
      private function §#!v§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §-#S§)
            {
               this.§@?§ = §-#S§;
            }
            else if(param1.toUpperCase() == § "G§)
            {
               this.§@?§ = § "G§;
            }
            else if(param1.toUpperCase() == §""q§)
            {
               this.§@?§ = §""q§;
            }
         }
      }
      
      private function §&!t§(param1:String) : void
      {
         if(param1)
         {
            switch(param1.toUpperCase())
            {
               case "TRUE":
                  this.§>"t§ = true;
                  break;
               case "UP":
                  this.§>"t§ = true;
                  this.§@"2§ = true;
                  break;
               case "PRODUCT":
                  this.§>"t§ = true;
                  this.§1Q§ = true;
            }
         }
      }
      
      private function §7"$§() : void
      {
         if(this.§>"t§)
         {
            if(this.§1Q§)
            {
               this.§7'§ = Math.sqrt(this.§7'§ * this.§4"g§);
               this.§4"g§ = this.§7'§;
            }
            else if(this.§7'§ < this.§4"g§)
            {
               if(!this.§@"2§)
               {
                  this.§4"g§ = this.§7'§;
               }
               else
               {
                  this.§7'§ = this.§4"g§;
               }
            }
            else if(!this.§@"2§)
            {
               this.§7'§ = this.§4"g§;
            }
            else
            {
               this.§4"g§ = this.§7'§;
            }
         }
      }
      
      private function § !=§() : void
      {
         if(!this.§`!F§ && this.§7'§ > 1)
         {
            this.§7'§ = 1;
         }
         else if(!this.§>P§ && this.§7'§ < 1)
         {
            this.§7'§ = 1;
         }
         if(!this.§-"G§ && this.§4"g§ > 1)
         {
            this.§4"g§ = 1;
         }
         else if(!this.§"'§ && this.§4"g§ < 1)
         {
            this.§4"g§ = 1;
         }
      }
      
      private function §["v§() : void
      {
         if(this.§@?§ == §-#S§)
         {
            this.§7'§ = Math.sqrt(this.§7'§);
            this.§4"g§ = Math.sqrt(this.§4"g§);
         }
         else if(this.§@?§ == § "G§)
         {
            this.§7'§ *= this.§7'§;
            this.§4"g§ *= this.§4"g§;
         }
         else if(this.§@?§ == §""q§)
         {
            if(this.§7'§ > 1)
            {
               this.§7'§ = Math.sqrt(this.§7'§);
            }
            if(this.§4"g§ > 1)
            {
               this.§4"g§ = Math.sqrt(this.§4"g§);
            }
         }
      }
      
      private function §&";§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §7"@§ || param4 == §&0§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §^"S§ || param4 == §%P§)
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
         else if(param4 == §'"$§)
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
      
      private function §<#G§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number) : Number
      {
         var _loc8_:Number = param1;
         if(param4 == §7"@§ || param4 == §&0§)
         {
            if(param5 || param6)
            {
               _loc8_ = param1 * param7;
            }
         }
         else if(param4 == §^"S§ || param4 == §%P§)
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
         else if(param4 == §'"$§)
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
      
      public function §^v§(param1:Number, param2:Number) : void
      {
         this.§+"p§ = param1;
         this.§?!"§ = param2;
         this.§7'§ = param1 / this.§1%§;
         this.§4"g§ = param2 / this.§9!?§;
         this.§]4§ = this.§7'§;
         this.§6"+§ = this.§4"g§;
         this.§7"$§();
         this.§ !=§();
         this.§+"?§ = this.§7'§;
         this.§6"f§ = this.§4"g§;
         this.§["v§();
         this.§8!+§ = this.§<#G§(this.§8"T§,param1,this.§1%§,this.§ "[§,this.§>P§,this.§`!F§,this.§7'§);
         this.§=!Z§ = this.§<#G§(this.§?!Q§,param2,this.§9!?§,this.§>;§,this.§"'§,this.§-"G§,this.§4"g§);
      }
   }
}
