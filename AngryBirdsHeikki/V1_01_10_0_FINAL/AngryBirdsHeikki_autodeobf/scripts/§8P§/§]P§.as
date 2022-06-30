package §8P§
{
   public class §]P§
   {
      
      private static const §4O§:String = "RIGHT";
      
      private static const §30§:String = "LEFT";
      
      private static const § %§:String = "TOP";
      
      private static const §3#§:String = "BOTTOM";
      
      private static const §@y§:String = "CENTER";
      
      private static const §;!8§:String = "NORMAL";
      
      private static const §;!,§:String = "SQRT";
      
      private static const §'!I§:String = "SQR";
       
      
      private var §5F§:Number = 0.0;
      
      private var §<q§:Number = 0.0;
      
      private var §9z§:Number = 1.0;
      
      private var §!!5§:Number = 1.0;
      
      private var §0!P§:Number = 1.0;
      
      private var §1!M§:Number = 1.0;
      
      private var § each§:String = "LEFT";
      
      private var §>!G§:String = "TOP";
      
      private var §0l§:Boolean = false;
      
      private var §5h§:Boolean = false;
      
      private var §-9§:Boolean = false;
      
      private var §3!d§:Boolean = false;
      
      private var §#!K§:Boolean = false;
      
      private var §%[§:Boolean = false;
      
      private var §[N§:String = "NORMAL";
      
      private var §!B§:Number = 1.0;
      
      private var §=m§:Number = 1.0;
      
      private var §&q§:Number = 1.0;
      
      private var §42§:Number = 1.0;
      
      private var §]!F§:Number = 1.0;
      
      private var §]!#§:Number = 1.0;
      
      private var §"!d§:Number = 0.0;
      
      private var §,!W§:Number = 0.0;
      
      private var §%D§:Number = 1.0;
      
      private var §0w§:Number = 1.0;
      
      public function §]P§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§5F§ = param1;
         this.§<q§ = param2;
         this.§"!d§ = param1;
         this.§,!W§ = param2;
         this.§9z§ = param3;
         this.§!!5§ = param4;
         this.§0!P§ = param5;
         this.§1!M§ = param6;
         this.§%D§ = param5;
         this.§0w§ = param6;
         this.§%y§(param7);
         this.§8!L§(param8);
         this.§#K§(param9);
         this.final(param10);
         this.§@Q§(param11);
         this.§4q§(param12);
         this.§[N§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§"!d§;
      }
      
      public function get y() : Number
      {
         return this.§,!W§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§5F§ = this.§5!8§(param1,this.§%D§,this.§0!P§,this.§ each§,this.§0l§,this.§5h§,this.§!B§,this.§&q§,this.§]!F§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§<q§ = this.§5!8§(param1,this.§0w§,this.§1!M§,this.§>!G§,this.§-9§,this.§3!d§,this.§=m§,this.§42§,this.§]!#§);
      }
      
      public function get scaleX() : Number
      {
         return this.§9z§ * this.§0F§;
      }
      
      public function get scaleY() : Number
      {
         return this.§!!5§ * this.§!Y§;
      }
      
      private function get §0F§() : Number
      {
         if(this.§0l§ || this.§5h§)
         {
            return this.§!B§;
         }
         return 1;
      }
      
      private function get §!Y§() : Number
      {
         if(this.§-9§ || this.§3!d§)
         {
            return this.§=m§;
         }
         return 1;
      }
      
      private function §%y§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §4O§ || param1 == §@y§)
            {
               this.§ each§ = param1;
            }
         }
      }
      
      private function §8!L§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §3#§ || param1 == §@y§)
            {
               this.§>!G§ = param1;
            }
         }
      }
      
      private function §#K§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§0l§ = true;
               this.§5h§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§0l§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§5h§ = true;
            }
         }
      }
      
      private function final(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§-9§ = true;
               this.§3!d§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§-9§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§3!d§ = true;
            }
         }
      }
      
      private function §4q§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §;!,§)
            {
               this.§[N§ = §;!,§;
            }
            else if(param1.toUpperCase() == §'!I§)
            {
               this.§[N§ = §'!I§;
            }
         }
      }
      
      private function §@Q§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§#!K§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§#!K§ = true;
               this.§%[§ = true;
            }
         }
      }
      
      private function §5!!§() : void
      {
         if(this.§#!K§)
         {
            if(this.§!B§ < this.§=m§)
            {
               if(!this.§%[§)
               {
                  this.§=m§ = this.§!B§;
               }
               else
               {
                  this.§!B§ = this.§=m§;
               }
            }
            else if(!this.§%[§)
            {
               this.§!B§ = this.§=m§;
            }
            else
            {
               this.§=m§ = this.§!B§;
            }
         }
      }
      
      private function §'6§() : void
      {
         if(!this.§5h§ && this.§!B§ > 1)
         {
            this.§!B§ = 1;
         }
         else if(!this.§0l§ && this.§!B§ < 1)
         {
            this.§!B§ = 1;
         }
         if(!this.§3!d§ && this.§=m§ > 1)
         {
            this.§=m§ = 1;
         }
         else if(!this.§-9§ && this.§=m§ < 1)
         {
            this.§=m§ = 1;
         }
      }
      
      private function §-I§() : void
      {
         if(this.§[N§ == §;!,§)
         {
            this.§!B§ = Math.sqrt(this.§!B§);
            this.§=m§ = Math.sqrt(this.§=m§);
         }
         else if(this.§[N§ == §'!I§)
         {
            this.§!B§ *= this.§!B§;
            this.§=m§ *= this.§=m§;
         }
      }
      
      private function §5!8§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §30§ || param4 == § %§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §4O§ || param4 == §3#§)
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
         else if(param4 == §@y§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§#!K§)
               {
                  if(!this.§%[§)
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
      
      private function §'!2§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §30§ || param4 == § %§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §4O§ || param4 == §3#§)
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
         else if(param4 == §@y§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§#!K§)
               {
                  if(!this.§%[§)
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
      
      public function § y§(param1:Number, param2:Number) : void
      {
         this.§%D§ = param1;
         this.§0w§ = param2;
         this.§!B§ = param1 / this.§0!P§;
         this.§=m§ = param2 / this.§1!M§;
         this.§&q§ = this.§!B§;
         this.§42§ = this.§=m§;
         this.§5!!§();
         this.§'6§();
         this.§]!F§ = this.§!B§;
         this.§]!#§ = this.§=m§;
         this.§-I§();
         this.§"!d§ = this.§'!2§(this.§5F§,param1,this.§0!P§,this.§ each§,this.§0l§,this.§5h§,this.§!B§,this.§&q§,this.§]!F§);
         this.§,!W§ = this.§'!2§(this.§<q§,param2,this.§1!M§,this.§>!G§,this.§-9§,this.§3!d§,this.§=m§,this.§42§,this.§]!#§);
      }
   }
}
