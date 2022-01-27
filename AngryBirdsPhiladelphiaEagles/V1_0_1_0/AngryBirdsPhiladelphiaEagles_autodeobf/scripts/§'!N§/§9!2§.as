package §'!N§
{
   public class §9!2§
   {
      
      private static const §&z§:String = "RIGHT";
      
      private static const §`A§:String = "LEFT";
      
      private static const §`!C§:String = "TOP";
      
      private static const §7O§:String = "BOTTOM";
      
      private static const §89§:String = "CENTER";
      
      private static const §5!2§:String = "NORMAL";
      
      private static const §-`§:String = "SQRT";
      
      private static const §,!9§:String = "SQR";
       
      
      private var §+e§:Number = 0.0;
      
      private var § !%§:Number = 0.0;
      
      private var §8E§:Number = 1.0;
      
      private var §5q§:Number = 1.0;
      
      private var §^b§:Number = 1.0;
      
      private var §6d§:Number = 1.0;
      
      private var §>!&§:String = "LEFT";
      
      private var §@s§:String = "TOP";
      
      private var §5!+§:Boolean = false;
      
      private var §8L§:Boolean = false;
      
      private var §#!L§:Boolean = false;
      
      private var §!k§:Boolean = false;
      
      private var §@7§:Boolean = false;
      
      private var §@<§:Boolean = false;
      
      private var §3&§:String = "NORMAL";
      
      private var §='§:Number = 1.0;
      
      private var §-,§:Number = 1.0;
      
      private var §;!@§:Number = 1.0;
      
      private var §%!D§:Number = 1.0;
      
      private var §'L§:Number = 1.0;
      
      private var §=g§:Number = 1.0;
      
      private var §,R§:Number = 0.0;
      
      private var §=! §:Number = 0.0;
      
      private var §"n§:Number = 1.0;
      
      private var §%c§:Number = 1.0;
      
      public function §9!2§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§+e§ = param1;
         this.§ !%§ = param2;
         this.§,R§ = param1;
         this.§=! § = param2;
         this.§"n§ = param3;
         this.§%c§ = param4;
         this.§8E§ = param5;
         this.§5q§ = param6;
         this.§^b§ = param5;
         this.§6d§ = param6;
         this.§'f§(param7);
         this.§%&§(param8);
         this.§@!H§(param9);
         this.§5!>§(param10);
         this.§-Y§(param11);
         this.§0A§(param12);
         this.§3&§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§,R§;
      }
      
      public function get y() : Number
      {
         return this.§=! §;
      }
      
      public function set x(param1:Number) : void
      {
         this.§+e§ = this.§-5§(param1,this.§^b§,this.§8E§,this.§>!&§,this.§5!+§,this.§8L§,this.§='§,this.§;!@§,this.§'L§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§ !%§ = this.§-5§(param1,this.§6d§,this.§5q§,this.§@s§,this.§#!L§,this.§!k§,this.§-,§,this.§%!D§,this.§=g§);
      }
      
      public function get scaleX() : Number
      {
         return this.§"n§ * this.§9[§;
      }
      
      public function get scaleY() : Number
      {
         return this.§%c§ * this.§;,§;
      }
      
      private function get §9[§() : Number
      {
         if(this.§5!+§ || this.§8L§)
         {
            return this.§='§;
         }
         return 1;
      }
      
      private function get §;,§() : Number
      {
         if(this.§#!L§ || this.§!k§)
         {
            return this.§-,§;
         }
         return 1;
      }
      
      private function §'f§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §&z§ || param1 == §89§)
            {
               this.§>!&§ = param1;
            }
         }
      }
      
      private function §%&§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §7O§ || param1 == §89§)
            {
               this.§@s§ = param1;
            }
         }
      }
      
      private function §@!H§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§5!+§ = true;
               this.§8L§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§5!+§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§8L§ = true;
            }
         }
      }
      
      private function §5!>§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§#!L§ = true;
               this.§!k§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§#!L§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§!k§ = true;
            }
         }
      }
      
      private function §0A§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §-`§)
            {
               this.§3&§ = §-`§;
            }
            else if(param1.toUpperCase() == §,!9§)
            {
               this.§3&§ = §,!9§;
            }
         }
      }
      
      private function §-Y§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§@7§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§@7§ = true;
               this.§@<§ = true;
            }
         }
      }
      
      private function §7!5§() : void
      {
         if(this.§@7§)
         {
            if(this.§='§ < this.§-,§)
            {
               if(!this.§@<§)
               {
                  this.§-,§ = this.§='§;
               }
               else
               {
                  this.§='§ = this.§-,§;
               }
            }
            else if(!this.§@<§)
            {
               this.§='§ = this.§-,§;
            }
            else
            {
               this.§-,§ = this.§='§;
            }
         }
      }
      
      private function §`&§() : void
      {
         if(!this.§8L§ && this.§='§ > 1)
         {
            this.§='§ = 1;
         }
         else if(this.§8L§ && !this.§5!+§ && this.§='§ < 1)
         {
            this.§='§ = 1;
         }
         if(!this.§!k§ && this.§-,§ > 1)
         {
            this.§-,§ = 1;
         }
         else if(this.§!k§ && !this.§#!L§ && this.§-,§ < 1)
         {
            this.§-,§ = 1;
         }
      }
      
      private function §#l§() : void
      {
         if(this.§3&§ == §-`§)
         {
            this.§='§ = Math.sqrt(this.§='§);
            this.§-,§ = Math.sqrt(this.§-,§);
         }
         else if(this.§3&§ == §,!9§)
         {
            this.§='§ *= this.§='§;
            this.§-,§ *= this.§-,§;
         }
      }
      
      private function §-5§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §`A§ || param4 == §`!C§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §&z§ || param4 == §7O§)
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
         else if(param4 == §89§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§@7§)
               {
                  if(!this.§@<§)
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
      
      private function §6]§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §`A§ || param4 == §`!C§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §&z§ || param4 == §7O§)
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
         else if(param4 == §89§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§@7§)
               {
                  if(!this.§@<§)
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
      
      public function §^!=§(param1:Number, param2:Number) : void
      {
         this.§^b§ = param1;
         this.§6d§ = param2;
         this.§='§ = param1 / this.§8E§;
         this.§-,§ = param2 / this.§5q§;
         this.§;!@§ = this.§='§;
         this.§%!D§ = this.§-,§;
         this.§7!5§();
         this.§`&§();
         this.§'L§ = this.§='§;
         this.§=g§ = this.§-,§;
         this.§#l§();
         this.§,R§ = this.§6]§(this.§+e§,param1,this.§8E§,this.§>!&§,this.§5!+§,this.§8L§,this.§='§,this.§;!@§,this.§'L§);
         this.§=! § = this.§6]§(this.§ !%§,param2,this.§5q§,this.§@s§,this.§#!L§,this.§!k§,this.§-,§,this.§%!D§,this.§=g§);
      }
   }
}
