package §6l§
{
   public class §2!V§
   {
      
      private static const §5!X§:String = "RIGHT";
      
      private static const §,§:String = "LEFT";
      
      private static const §;G§:String = "TOP";
      
      private static const §>!M§:String = "BOTTOM";
      
      private static const §>9§:String = "CENTER";
      
      private static const §^x§:String = "NORMAL";
      
      private static const §>b§:String = "SQRT";
      
      private static const §-!@§:String = "SQR";
       
      
      private var §&![§:Number = 0.0;
      
      private var §02§:Number = 0.0;
      
      private var §4J§:Number = 1.0;
      
      private var §8'§:Number = 1.0;
      
      private var §"h§:Number = 1.0;
      
      private var §%c§:Number = 1.0;
      
      private var §0!c§:String = "LEFT";
      
      private var §>§:String = "TOP";
      
      private var §&!Q§:Boolean = false;
      
      private var §`!T§:Boolean = false;
      
      private var §5E§:Boolean = false;
      
      private var §!D§:Boolean = false;
      
      private var §=u§:Boolean = false;
      
      private var §8"§:Boolean = false;
      
      private var §@§:String = "NORMAL";
      
      private var §@!9§:Number = 1.0;
      
      private var §#k§:Number = 1.0;
      
      private var §`D§:Number = 1.0;
      
      private var §2_§:Number = 1.0;
      
      private var §"!%§:Number = 1.0;
      
      private var §9v§:Number = 1.0;
      
      private var §?H§:Number = 0.0;
      
      private var §>!a§:Number = 0.0;
      
      private var §[!5§:Number = 1.0;
      
      private var §#!A§:Number = 1.0;
      
      public function §2!V§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§&![§ = param1;
         this.§02§ = param2;
         this.§?H§ = param1;
         this.§>!a§ = param2;
         this.§[!5§ = param3;
         this.§#!A§ = param4;
         this.§4J§ = param5;
         this.§8'§ = param6;
         this.§"h§ = param5;
         this.§%c§ = param6;
         this.§=3§(param7);
         this.§]!?§(param8);
         this.§+9§(param9);
         this.§]g§(param10);
         this.§ !E§(param11);
         this.§6v§(param12);
         this.§@§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§?H§;
      }
      
      public function get y() : Number
      {
         return this.§>!a§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§&![§ = this.§ !@§(param1,this.§"h§,this.§4J§,this.§0!c§,this.§&!Q§,this.§`!T§,this.§@!9§,this.§`D§,this.§"!%§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§02§ = this.§ !@§(param1,this.§%c§,this.§8'§,this.§>§,this.§5E§,this.§!D§,this.§#k§,this.§2_§,this.§9v§);
      }
      
      public function get scaleX() : Number
      {
         return this.§[!5§ * this.§<s§;
      }
      
      public function get scaleY() : Number
      {
         return this.§#!A§ * this.§+!_§;
      }
      
      private function get §<s§() : Number
      {
         if(this.§&!Q§ || this.§`!T§)
         {
            return this.§@!9§;
         }
         return 1;
      }
      
      private function get §+!_§() : Number
      {
         if(this.§5E§ || this.§!D§)
         {
            return this.§#k§;
         }
         return 1;
      }
      
      private function §=3§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §5!X§ || param1 == §>9§)
            {
               this.§0!c§ = param1;
            }
         }
      }
      
      private function §]!?§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §>!M§ || param1 == §>9§)
            {
               this.§>§ = param1;
            }
         }
      }
      
      private function §+9§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§&!Q§ = true;
               this.§`!T§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§&!Q§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§`!T§ = true;
            }
         }
      }
      
      private function §]g§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§5E§ = true;
               this.§!D§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§5E§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§!D§ = true;
            }
         }
      }
      
      private function §6v§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §>b§)
            {
               this.§@§ = §>b§;
            }
            else if(param1.toUpperCase() == §-!@§)
            {
               this.§@§ = §-!@§;
            }
         }
      }
      
      private function § !E§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§=u§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§=u§ = true;
               this.§8"§ = true;
            }
         }
      }
      
      private function §9!+§() : void
      {
         if(this.§=u§)
         {
            if(this.§@!9§ < this.§#k§)
            {
               if(!this.§8"§)
               {
                  this.§#k§ = this.§@!9§;
               }
               else
               {
                  this.§@!9§ = this.§#k§;
               }
            }
            else if(!this.§8"§)
            {
               this.§@!9§ = this.§#k§;
            }
            else
            {
               this.§#k§ = this.§@!9§;
            }
         }
      }
      
      private function §>K§() : void
      {
         if(!this.§`!T§ && this.§@!9§ > 1)
         {
            this.§@!9§ = 1;
         }
         else if(this.§`!T§ && !this.§&!Q§ && this.§@!9§ < 1)
         {
            this.§@!9§ = 1;
         }
         if(!this.§!D§ && this.§#k§ > 1)
         {
            this.§#k§ = 1;
         }
         else if(this.§!D§ && !this.§5E§ && this.§#k§ < 1)
         {
            this.§#k§ = 1;
         }
      }
      
      private function §@m§() : void
      {
         if(this.§@§ == §>b§)
         {
            this.§@!9§ = Math.sqrt(this.§@!9§);
            this.§#k§ = Math.sqrt(this.§#k§);
         }
         else if(this.§@§ == §-!@§)
         {
            this.§@!9§ *= this.§@!9§;
            this.§#k§ *= this.§#k§;
         }
      }
      
      private function § !@§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §,§ || param4 == §;G§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §5!X§ || param4 == §>!M§)
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
         else if(param4 == §>9§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§=u§)
               {
                  if(!this.§8"§)
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
      
      private function §&J§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §,§ || param4 == §;G§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §5!X§ || param4 == §>!M§)
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
         else if(param4 == §>9§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§=u§)
               {
                  if(!this.§8"§)
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
      
      public function §4[§(param1:Number, param2:Number) : void
      {
         this.§"h§ = param1;
         this.§%c§ = param2;
         this.§@!9§ = param1 / this.§4J§;
         this.§#k§ = param2 / this.§8'§;
         this.§`D§ = this.§@!9§;
         this.§2_§ = this.§#k§;
         this.§9!+§();
         this.§>K§();
         this.§"!%§ = this.§@!9§;
         this.§9v§ = this.§#k§;
         this.§@m§();
         this.§?H§ = this.§&J§(this.§&![§,param1,this.§4J§,this.§0!c§,this.§&!Q§,this.§`!T§,this.§@!9§,this.§`D§,this.§"!%§);
         this.§>!a§ = this.§&J§(this.§02§,param2,this.§8'§,this.§>§,this.§5E§,this.§!D§,this.§#k§,this.§2_§,this.§9v§);
      }
   }
}
