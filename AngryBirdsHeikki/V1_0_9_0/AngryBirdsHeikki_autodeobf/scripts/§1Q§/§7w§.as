package §1Q§
{
   public class §7w§
   {
      
      private static const §<i§:String = "RIGHT";
      
      private static const §@8§:String = "LEFT";
      
      private static const §#v§:String = "TOP";
      
      private static const §0K§:String = "BOTTOM";
      
      private static const §'M§:String = "CENTER";
      
      private static const §##§:String = "NORMAL";
      
      private static const §,!"§:String = "SQRT";
      
      private static const §?e§:String = "SQR";
       
      
      private var §+!9§:Number = 0.0;
      
      private var §!!c§:Number = 0.0;
      
      private var §[M§:Number = 1.0;
      
      private var §-Y§:Number = 1.0;
      
      private var §2!Z§:Number = 1.0;
      
      private var §"f§:Number = 1.0;
      
      private var §&e§:String = "LEFT";
      
      private var §#=§:String = "TOP";
      
      private var §2k§:Boolean = false;
      
      private var §?3§:Boolean = false;
      
      private var §0&§:Boolean = false;
      
      private var §^I§:Boolean = false;
      
      private var §7!1§:Boolean = false;
      
      private var §=a§:Boolean = false;
      
      private var §#!C§:String = "NORMAL";
      
      private var §14§:Number = 1.0;
      
      private var §5@§:Number = 1.0;
      
      private var §2O§:Number = 1.0;
      
      private var §@r§:Number = 1.0;
      
      private var §7!X§:Number = 1.0;
      
      private var §[U§:Number = 1.0;
      
      private var §`B§:Number = 0.0;
      
      private var §,!9§:Number = 0.0;
      
      private var §;!_§:Number = 1.0;
      
      private var §%M§:Number = 1.0;
      
      public function §7w§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§+!9§ = param1;
         this.§!!c§ = param2;
         this.§`B§ = param1;
         this.§,!9§ = param2;
         this.§[M§ = param3;
         this.§-Y§ = param4;
         this.§2!Z§ = param5;
         this.§"f§ = param6;
         this.§;!_§ = param5;
         this.§%M§ = param6;
         this.§;A§(param7);
         this.§1-§(param8);
         this.§]!c§(param9);
         this.§<!Q§(param10);
         this.§^O§(param11);
         this.§@!2§(param12);
         this.§#!C§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§`B§;
      }
      
      public function get y() : Number
      {
         return this.§,!9§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§+!9§ = this.§?!,§(param1,this.§;!_§,this.§2!Z§,this.§&e§,this.§2k§,this.§?3§,this.§14§,this.§2O§,this.§7!X§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§!!c§ = this.§?!,§(param1,this.§%M§,this.§"f§,this.§#=§,this.§0&§,this.§^I§,this.§5@§,this.§@r§,this.§[U§);
      }
      
      public function get scaleX() : Number
      {
         return this.§[M§ * this.§4!$§;
      }
      
      public function get scaleY() : Number
      {
         return this.§-Y§ * this.§1A§;
      }
      
      private function get §4!$§() : Number
      {
         if(this.§2k§ || this.§?3§)
         {
            return this.§14§;
         }
         return 1;
      }
      
      private function get §1A§() : Number
      {
         if(this.§0&§ || this.§^I§)
         {
            return this.§5@§;
         }
         return 1;
      }
      
      private function §;A§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §<i§ || param1 == §'M§)
            {
               this.§&e§ = param1;
            }
         }
      }
      
      private function §1-§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §0K§ || param1 == §'M§)
            {
               this.§#=§ = param1;
            }
         }
      }
      
      private function §]!c§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§2k§ = true;
               this.§?3§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§2k§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§?3§ = true;
            }
         }
      }
      
      private function §<!Q§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§0&§ = true;
               this.§^I§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§0&§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§^I§ = true;
            }
         }
      }
      
      private function §@!2§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §,!"§)
            {
               this.§#!C§ = §,!"§;
            }
            else if(param1.toUpperCase() == §?e§)
            {
               this.§#!C§ = §?e§;
            }
         }
      }
      
      private function §^O§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§7!1§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§7!1§ = true;
               this.§=a§ = true;
            }
         }
      }
      
      private function §,Q§() : void
      {
         if(this.§7!1§)
         {
            if(this.§14§ < this.§5@§)
            {
               if(!this.§=a§)
               {
                  this.§5@§ = this.§14§;
               }
               else
               {
                  this.§14§ = this.§5@§;
               }
            }
            else if(!this.§=a§)
            {
               this.§14§ = this.§5@§;
            }
            else
            {
               this.§5@§ = this.§14§;
            }
         }
      }
      
      private function §-!-§() : void
      {
         if(!this.§?3§ && this.§14§ > 1)
         {
            this.§14§ = 1;
         }
         else if(!this.§2k§ && this.§14§ < 1)
         {
            this.§14§ = 1;
         }
         if(!this.§^I§ && this.§5@§ > 1)
         {
            this.§5@§ = 1;
         }
         else if(!this.§0&§ && this.§5@§ < 1)
         {
            this.§5@§ = 1;
         }
      }
      
      private function §^w§() : void
      {
         if(this.§#!C§ == §,!"§)
         {
            this.§14§ = Math.sqrt(this.§14§);
            this.§5@§ = Math.sqrt(this.§5@§);
         }
         else if(this.§#!C§ == §?e§)
         {
            this.§14§ *= this.§14§;
            this.§5@§ *= this.§5@§;
         }
      }
      
      private function §?!,§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §@8§ || param4 == §#v§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §<i§ || param4 == §0K§)
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
         else if(param4 == §'M§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§7!1§)
               {
                  if(!this.§=a§)
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
      
      private function §&!e§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §@8§ || param4 == §#v§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §<i§ || param4 == §0K§)
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
         else if(param4 == §'M§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§7!1§)
               {
                  if(!this.§=a§)
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
      
      public function §6]§(param1:Number, param2:Number) : void
      {
         this.§;!_§ = param1;
         this.§%M§ = param2;
         this.§14§ = param1 / this.§2!Z§;
         this.§5@§ = param2 / this.§"f§;
         this.§2O§ = this.§14§;
         this.§@r§ = this.§5@§;
         this.§,Q§();
         this.§-!-§();
         this.§7!X§ = this.§14§;
         this.§[U§ = this.§5@§;
         this.§^w§();
         this.§`B§ = this.§&!e§(this.§+!9§,param1,this.§2!Z§,this.§&e§,this.§2k§,this.§?3§,this.§14§,this.§2O§,this.§7!X§);
         this.§,!9§ = this.§&!e§(this.§!!c§,param2,this.§"f§,this.§#=§,this.§0&§,this.§^I§,this.§5@§,this.§@r§,this.§[U§);
      }
   }
}
