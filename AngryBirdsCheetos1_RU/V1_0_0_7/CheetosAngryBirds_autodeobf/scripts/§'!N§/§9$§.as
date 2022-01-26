package §'!N§
{
   public class §9$§
   {
      
      private static const §8y§:String = "RIGHT";
      
      private static const §8%§:String = "LEFT";
      
      private static const set:String = "TOP";
      
      private static const §9N§:String = "BOTTOM";
      
      private static const §6m§:String = "CENTER";
      
      private static const §+t§:String = "NORMAL";
      
      private static const §[!^§:String = "SQRT";
      
      private static const §=!_§:String = "SQR";
       
      
      private var §1!P§:Number = 0.0;
      
      private var §0s§:Number = 0.0;
      
      private var §?T§:Number = 1.0;
      
      private var §1!0§:Number = 1.0;
      
      private var §#b§:Number = 1.0;
      
      private var §%h§:Number = 1.0;
      
      private var §6!T§:String = "LEFT";
      
      private var §,z§:String = "TOP";
      
      private var §-'§:Boolean = false;
      
      private var §#;§:Boolean = false;
      
      private var §,!=§:Boolean = false;
      
      private var §-!#§:Boolean = false;
      
      private var §3W§:Boolean = false;
      
      private var §9X§:Boolean = false;
      
      private var §]h§:String = "NORMAL";
      
      private var §-L§:Number = 1.0;
      
      private var §-l§:Number = 1.0;
      
      private var §5!W§:Number = 1.0;
      
      private var §-n§:Number = 1.0;
      
      private var §2!V§:Number = 1.0;
      
      private var §^k§:Number = 1.0;
      
      private var §"9§:Number = 0.0;
      
      private var §[g§:Number = 0.0;
      
      private var §4!9§:Number = 1.0;
      
      private var §[m§:Number = 1.0;
      
      public function §9$§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§1!P§ = param1;
         this.§0s§ = param2;
         this.§"9§ = param1;
         this.§[g§ = param2;
         this.§4!9§ = param3;
         this.§[m§ = param4;
         this.§?T§ = param5;
         this.§1!0§ = param6;
         this.§#b§ = param5;
         this.§%h§ = param6;
         this.§[!]§(param7);
         this.§4y§(param8);
         this.§?!A§(param9);
         this.§6e§(param10);
         this.§3o§(param11);
         this.§8[§(param12);
         this.§]h§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§"9§;
      }
      
      public function get y() : Number
      {
         return this.§[g§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§1!P§ = this.§6_§(param1,this.§#b§,this.§?T§,this.§6!T§,this.§-'§,this.§#;§,this.§-L§,this.§5!W§,this.§2!V§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§0s§ = this.§6_§(param1,this.§%h§,this.§1!0§,this.§,z§,this.§,!=§,this.§-!#§,this.§-l§,this.§-n§,this.§^k§);
      }
      
      public function get scaleX() : Number
      {
         return this.§4!9§ * this.§`!$§;
      }
      
      public function get scaleY() : Number
      {
         return this.§[m§ * this.§`!O§;
      }
      
      private function get §`!$§() : Number
      {
         if(this.§-'§ || this.§#;§)
         {
            return this.§-L§;
         }
         return 1;
      }
      
      private function get §`!O§() : Number
      {
         if(this.§,!=§ || this.§-!#§)
         {
            return this.§-l§;
         }
         return 1;
      }
      
      private function §[!]§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §8y§ || param1 == §6m§)
            {
               this.§6!T§ = param1;
            }
         }
      }
      
      private function §4y§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §9N§ || param1 == §6m§)
            {
               this.§,z§ = param1;
            }
         }
      }
      
      private function §?!A§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§-'§ = true;
               this.§#;§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§-'§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§#;§ = true;
            }
         }
      }
      
      private function §6e§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§,!=§ = true;
               this.§-!#§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§,!=§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§-!#§ = true;
            }
         }
      }
      
      private function §8[§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §[!^§)
            {
               this.§]h§ = §[!^§;
            }
            else if(param1.toUpperCase() == §=!_§)
            {
               this.§]h§ = §=!_§;
            }
         }
      }
      
      private function §3o§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§3W§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§3W§ = true;
               this.§9X§ = true;
            }
         }
      }
      
      private function §%3§() : void
      {
         if(this.§3W§)
         {
            if(this.§-L§ < this.§-l§)
            {
               if(!this.§9X§)
               {
                  this.§-l§ = this.§-L§;
               }
               else
               {
                  this.§-L§ = this.§-l§;
               }
            }
            else if(!this.§9X§)
            {
               this.§-L§ = this.§-l§;
            }
            else
            {
               this.§-l§ = this.§-L§;
            }
         }
      }
      
      private function §"@§() : void
      {
         if(!this.§#;§ && this.§-L§ > 1)
         {
            this.§-L§ = 1;
         }
         else if(this.§#;§ && !this.§-'§ && this.§-L§ < 1)
         {
            this.§-L§ = 1;
         }
         if(!this.§-!#§ && this.§-l§ > 1)
         {
            this.§-l§ = 1;
         }
         else if(this.§-!#§ && !this.§,!=§ && this.§-l§ < 1)
         {
            this.§-l§ = 1;
         }
      }
      
      private function §>!0§() : void
      {
         if(this.§]h§ == §[!^§)
         {
            this.§-L§ = Math.sqrt(this.§-L§);
            this.§-l§ = Math.sqrt(this.§-l§);
         }
         else if(this.§]h§ == §=!_§)
         {
            this.§-L§ *= this.§-L§;
            this.§-l§ *= this.§-l§;
         }
      }
      
      private function §6_§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §8%§ || param4 == set)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §8y§ || param4 == §9N§)
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
         else if(param4 == §6m§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§3W§)
               {
                  if(!this.§9X§)
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
      
      private function §6w§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §8%§ || param4 == set)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §8y§ || param4 == §9N§)
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
         else if(param4 == §6m§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§3W§)
               {
                  if(!this.§9X§)
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
      
      public function §9!_§(param1:Number, param2:Number) : void
      {
         this.§#b§ = param1;
         this.§%h§ = param2;
         this.§-L§ = param1 / this.§?T§;
         this.§-l§ = param2 / this.§1!0§;
         this.§5!W§ = this.§-L§;
         this.§-n§ = this.§-l§;
         this.§%3§();
         this.§"@§();
         this.§2!V§ = this.§-L§;
         this.§^k§ = this.§-l§;
         this.§>!0§();
         this.§"9§ = this.§6w§(this.§1!P§,param1,this.§?T§,this.§6!T§,this.§-'§,this.§#;§,this.§-L§,this.§5!W§,this.§2!V§);
         this.§[g§ = this.§6w§(this.§0s§,param2,this.§1!0§,this.§,z§,this.§,!=§,this.§-!#§,this.§-l§,this.§-n§,this.§^k§);
      }
   }
}
