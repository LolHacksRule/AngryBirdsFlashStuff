package §;n§
{
   public class §,!A§
   {
      
      private static const §4!5§:String = "RIGHT";
      
      private static const §+"0§:String = "LEFT";
      
      private static const §6!Y§:String = "TOP";
      
      private static const §7!2§:String = "BOTTOM";
      
      private static const §^`§:String = "CENTER";
      
      private static const §,!7§:String = "NORMAL";
      
      private static const §6!L§:String = "SQRT";
      
      private static const §1!!§:String = "SQR";
       
      
      private var §>_§:Number = 0.0;
      
      private var §?y§:Number = 0.0;
      
      private var §!@§:Number = 1.0;
      
      private var §#!W§:Number = 1.0;
      
      private var §&"@§:Number = 1.0;
      
      private var §-!N§:Number = 1.0;
      
      private var §`!V§:String = "LEFT";
      
      private var §#A§:String = "TOP";
      
      private var each:Boolean = false;
      
      private var §,!p§:Boolean = false;
      
      private var §null §:Boolean = false;
      
      private var §;!S§:Boolean = false;
      
      private var §&6§:Boolean = false;
      
      private var §!!!§:Boolean = false;
      
      private var §[o§:String = "NORMAL";
      
      private var §2!#§:Number = 1.0;
      
      private var §@!§:Number = 1.0;
      
      private var §8!7§:Number = 1.0;
      
      private var §2!g§:Number = 1.0;
      
      private var § 2§:Number = 1.0;
      
      private var §;!T§:Number = 1.0;
      
      private var §"""§:Number = 0.0;
      
      private var §5!J§:Number = 0.0;
      
      private var §8!4§:Number = 1.0;
      
      private var §`P§:Number = 1.0;
      
      public function §,!A§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§>_§ = param1;
         this.§?y§ = param2;
         this.§"""§ = param1;
         this.§5!J§ = param2;
         this.§!@§ = param3;
         this.§#!W§ = param4;
         this.§&"@§ = param5;
         this.§-!N§ = param6;
         this.§8!4§ = param5;
         this.§`P§ = param6;
         this.§6>§(param7);
         this.§28§(param8);
         this.§,P§(param9);
         this.§`y§(param10);
         this.§^^§(param11);
         this.§["#§(param12);
         this.§[o§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§"""§;
      }
      
      public function get y() : Number
      {
         return this.§5!J§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§>_§ = this.§;!s§(param1,this.§8!4§,this.§&"@§,this.§`!V§,this.each,this.§,!p§,this.§2!#§,this.§8!7§,this.§ 2§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§?y§ = this.§;!s§(param1,this.§`P§,this.§-!N§,this.§#A§,this.§null §,this.§;!S§,this.§@!§,this.§2!g§,this.§;!T§);
      }
      
      public function get scaleX() : Number
      {
         return this.§!@§ * this.§5!1§;
      }
      
      public function get scaleY() : Number
      {
         return this.§#!W§ * this.§51§;
      }
      
      private function get §5!1§() : Number
      {
         if(this.each || this.§,!p§)
         {
            return this.§2!#§;
         }
         return 1;
      }
      
      private function get §51§() : Number
      {
         if(this.§null § || this.§;!S§)
         {
            return this.§@!§;
         }
         return 1;
      }
      
      private function §6>§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §4!5§ || param1 == §^`§)
            {
               this.§`!V§ = param1;
            }
         }
      }
      
      private function §28§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §7!2§ || param1 == §^`§)
            {
               this.§#A§ = param1;
            }
         }
      }
      
      private function §,P§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.each = true;
               this.§,!p§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.each = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§,!p§ = true;
            }
         }
      }
      
      private function §`y§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§null § = true;
               this.§;!S§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§null § = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§;!S§ = true;
            }
         }
      }
      
      private function §["#§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §6!L§)
            {
               this.§[o§ = §6!L§;
            }
            else if(param1.toUpperCase() == §1!!§)
            {
               this.§[o§ = §1!!§;
            }
         }
      }
      
      private function §^^§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§&6§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§&6§ = true;
               this.§!!!§ = true;
            }
         }
      }
      
      private function §^",§() : void
      {
         if(this.§&6§)
         {
            if(this.§2!#§ < this.§@!§)
            {
               if(!this.§!!!§)
               {
                  this.§@!§ = this.§2!#§;
               }
               else
               {
                  this.§2!#§ = this.§@!§;
               }
            }
            else if(!this.§!!!§)
            {
               this.§2!#§ = this.§@!§;
            }
            else
            {
               this.§@!§ = this.§2!#§;
            }
         }
      }
      
      private function §^8§() : void
      {
         if(!this.§,!p§ && this.§2!#§ > 1)
         {
            this.§2!#§ = 1;
         }
         else if(!this.each && this.§2!#§ < 1)
         {
            this.§2!#§ = 1;
         }
         if(!this.§;!S§ && this.§@!§ > 1)
         {
            this.§@!§ = 1;
         }
         else if(!this.§null § && this.§@!§ < 1)
         {
            this.§@!§ = 1;
         }
      }
      
      private function §"^§() : void
      {
         if(this.§[o§ == §6!L§)
         {
            this.§2!#§ = Math.sqrt(this.§2!#§);
            this.§@!§ = Math.sqrt(this.§@!§);
         }
         else if(this.§[o§ == §1!!§)
         {
            this.§2!#§ *= this.§2!#§;
            this.§@!§ *= this.§@!§;
         }
      }
      
      private function §;!s§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §+"0§ || param4 == §6!Y§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §4!5§ || param4 == §7!2§)
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
         else if(param4 == §^`§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§&6§)
               {
                  if(!this.§!!!§)
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
      
      private function §6!D§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §+"0§ || param4 == §6!Y§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §4!5§ || param4 == §7!2§)
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
         else if(param4 == §^`§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§&6§)
               {
                  if(!this.§!!!§)
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
      
      public function §7,§(param1:Number, param2:Number) : void
      {
         this.§8!4§ = param1;
         this.§`P§ = param2;
         this.§2!#§ = param1 / this.§&"@§;
         this.§@!§ = param2 / this.§-!N§;
         this.§8!7§ = this.§2!#§;
         this.§2!g§ = this.§@!§;
         this.§^",§();
         this.§^8§();
         this.§ 2§ = this.§2!#§;
         this.§;!T§ = this.§@!§;
         this.§"^§();
         this.§"""§ = this.§6!D§(this.§>_§,param1,this.§&"@§,this.§`!V§,this.each,this.§,!p§,this.§2!#§,this.§8!7§,this.§ 2§);
         this.§5!J§ = this.§6!D§(this.§?y§,param2,this.§-!N§,this.§#A§,this.§null §,this.§;!S§,this.§@!§,this.§2!g§,this.§;!T§);
      }
   }
}
