package §6v§
{
   public class §0R§
   {
      
      private static const §]d§:String = "RIGHT";
      
      private static const §&@§:String = "LEFT";
      
      private static const §6!>§:String = "TOP";
      
      private static const §>b§:String = "BOTTOM";
      
      private static const §1W§:String = "CENTER";
      
      private static const §!!%§:String = "NORMAL";
      
      private static const §7!2§:String = "SQRT";
      
      private static const §9k§:String = "SQR";
       
      
      private var §[!?§:Number = 0.0;
      
      private var §,!8§:Number = 0.0;
      
      private var §5O§:Number = 1.0;
      
      private var §2z§:Number = 1.0;
      
      private var §'!§:Number = 1.0;
      
      private var §#!@§:Number = 1.0;
      
      private var §<s§:String = "LEFT";
      
      private var §]a§:String = "TOP";
      
      private var §2T§:Boolean = false;
      
      private var §9l§:Boolean = false;
      
      private var §6j§:Boolean = false;
      
      private var §]f§:Boolean = false;
      
      private var §!!#§:Boolean = false;
      
      private var §=<§:Boolean = false;
      
      private var §?_§:String = "NORMAL";
      
      private var §]%§:Number = 1.0;
      
      private var §`!8§:Number = 1.0;
      
      private var § !5§:Number = 1.0;
      
      private var §,a§:Number = 1.0;
      
      private var §1>§:Number = 1.0;
      
      private var §#g§:Number = 1.0;
      
      private var §]!B§:Number = 0.0;
      
      private var §5G§:Number = 0.0;
      
      private var §[2§:Number = 1.0;
      
      private var §-$§:Number = 1.0;
      
      public function §0R§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§[!?§ = param1;
         this.§,!8§ = param2;
         this.§]!B§ = param1;
         this.§5G§ = param2;
         this.§5O§ = param3;
         this.§2z§ = param4;
         this.§'!§ = param5;
         this.§#!@§ = param6;
         this.§[2§ = param5;
         this.§-$§ = param6;
         this.§0!Q§(param7);
         this.§+%§(param8);
         this.§`!M§(param9);
         this.§<o§(param10);
         this.§>B§(param11);
         this.§0A§(param12);
         this.§?_§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§]!B§;
      }
      
      public function get y() : Number
      {
         return this.§5G§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§[!?§ = this.§;"§(param1,this.§[2§,this.§'!§,this.§<s§,this.§2T§,this.§9l§,this.§]%§,this.§ !5§,this.§1>§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§,!8§ = this.§;"§(param1,this.§-$§,this.§#!@§,this.§]a§,this.§6j§,this.§]f§,this.§`!8§,this.§,a§,this.§#g§);
      }
      
      public function get scaleX() : Number
      {
         return this.§5O§ * this.§]!;§;
      }
      
      public function get scaleY() : Number
      {
         return this.§2z§ * this.§9!5§;
      }
      
      private function get §]!;§() : Number
      {
         if(this.§2T§ || this.§9l§)
         {
            return this.§]%§;
         }
         return 1;
      }
      
      private function get §9!5§() : Number
      {
         if(this.§6j§ || this.§]f§)
         {
            return this.§`!8§;
         }
         return 1;
      }
      
      private function §0!Q§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §]d§ || param1 == §1W§)
            {
               this.§<s§ = param1;
            }
         }
      }
      
      private function §+%§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §>b§ || param1 == §1W§)
            {
               this.§]a§ = param1;
            }
         }
      }
      
      private function §`!M§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§2T§ = true;
               this.§9l§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§2T§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§9l§ = true;
            }
         }
      }
      
      private function §<o§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§6j§ = true;
               this.§]f§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§6j§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§]f§ = true;
            }
         }
      }
      
      private function §0A§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §7!2§)
            {
               this.§?_§ = §7!2§;
            }
            else if(param1.toUpperCase() == §9k§)
            {
               this.§?_§ = §9k§;
            }
         }
      }
      
      private function §>B§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§!!#§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§!!#§ = true;
               this.§=<§ = true;
            }
         }
      }
      
      private function § ! §() : void
      {
         if(this.§!!#§)
         {
            if(this.§]%§ < this.§`!8§)
            {
               if(!this.§=<§)
               {
                  this.§`!8§ = this.§]%§;
               }
               else
               {
                  this.§]%§ = this.§`!8§;
               }
            }
            else if(!this.§=<§)
            {
               this.§]%§ = this.§`!8§;
            }
            else
            {
               this.§`!8§ = this.§]%§;
            }
         }
      }
      
      private function §8q§() : void
      {
         if(!this.§9l§ && this.§]%§ > 1)
         {
            this.§]%§ = 1;
         }
         else if(!this.§2T§ && this.§]%§ < 1)
         {
            this.§]%§ = 1;
         }
         if(!this.§]f§ && this.§`!8§ > 1)
         {
            this.§`!8§ = 1;
         }
         else if(!this.§6j§ && this.§`!8§ < 1)
         {
            this.§`!8§ = 1;
         }
      }
      
      private function §-v§() : void
      {
         if(this.§?_§ == §7!2§)
         {
            this.§]%§ = Math.sqrt(this.§]%§);
            this.§`!8§ = Math.sqrt(this.§`!8§);
         }
         else if(this.§?_§ == §9k§)
         {
            this.§]%§ *= this.§]%§;
            this.§`!8§ *= this.§`!8§;
         }
      }
      
      private function §;"§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §&@§ || param4 == §6!>§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §]d§ || param4 == §>b§)
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
         else if(param4 == §1W§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§!!#§)
               {
                  if(!this.§=<§)
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
      
      private function §8!8§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §&@§ || param4 == §6!>§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §]d§ || param4 == §>b§)
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
         else if(param4 == §1W§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§!!#§)
               {
                  if(!this.§=<§)
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
      
      public function § q§(param1:Number, param2:Number) : void
      {
         this.§[2§ = param1;
         this.§-$§ = param2;
         this.§]%§ = param1 / this.§'!§;
         this.§`!8§ = param2 / this.§#!@§;
         this.§ !5§ = this.§]%§;
         this.§,a§ = this.§`!8§;
         this.§ ! §();
         this.§8q§();
         this.§1>§ = this.§]%§;
         this.§#g§ = this.§`!8§;
         this.§-v§();
         this.§]!B§ = this.§8!8§(this.§[!?§,param1,this.§'!§,this.§<s§,this.§2T§,this.§9l§,this.§]%§,this.§ !5§,this.§1>§);
         this.§5G§ = this.§8!8§(this.§,!8§,param2,this.§#!@§,this.§]a§,this.§6j§,this.§]f§,this.§`!8§,this.§,a§,this.§#g§);
      }
   }
}
