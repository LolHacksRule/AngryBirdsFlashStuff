package §7L§
{
   public class §`7§
   {
      
      private static const §2f§:String = "RIGHT";
      
      private static const §5!H§:String = "LEFT";
      
      private static const §?H§:String = "TOP";
      
      private static const §5<§:String = "BOTTOM";
      
      private static const §8o§:String = "CENTER";
      
      private static const §^!N§:String = "NORMAL";
      
      private static const §6B§:String = "SQRT";
      
      private static const §]^§:String = "SQR";
       
      
      private var §=!G§:Number = 0.0;
      
      private var §58§:Number = 0.0;
      
      private var §?!G§:Number = 1.0;
      
      private var §!!%§:Number = 1.0;
      
      private var §,`§:Number = 1.0;
      
      private var §%I§:Number = 1.0;
      
      private var §[,§:String = "LEFT";
      
      private var §%O§:String = "TOP";
      
      private var §8!A§:Boolean = false;
      
      private var §@%§:Boolean = false;
      
      private var §!#§:Boolean = false;
      
      private var §>!_§:Boolean = false;
      
      private var §^0§:Boolean = false;
      
      private var §"m§:Boolean = false;
      
      private var §2^§:String = "NORMAL";
      
      private var §6!a§:Number = 1.0;
      
      private var §8!2§:Number = 1.0;
      
      private var §9!Q§:Number = 1.0;
      
      private var §[b§:Number = 1.0;
      
      private var §^V§:Number = 1.0;
      
      private var §2"§:Number = 1.0;
      
      private var §,!_§:Number = 0.0;
      
      private var §4b§:Number = 0.0;
      
      private var §%!V§:Number = 1.0;
      
      private var §'C§:Number = 1.0;
      
      public function §`7§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§=!G§ = param1;
         this.§58§ = param2;
         this.§,!_§ = param1;
         this.§4b§ = param2;
         this.§%!V§ = param3;
         this.§'C§ = param4;
         this.§?!G§ = param5;
         this.§!!%§ = param6;
         this.§,`§ = param5;
         this.§%I§ = param6;
         this.§ use§(param7);
         this.§[_§(param8);
         this.§0d§(param9);
         this.§ ,§(param10);
         this.§<$§(param11);
         this.§ !U§(param12);
         this.§2^§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§,!_§;
      }
      
      public function get y() : Number
      {
         return this.§4b§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§=!G§ = this.§'1§(param1,this.§,`§,this.§?!G§,this.§[,§,this.§8!A§,this.§@%§,this.§6!a§,this.§9!Q§,this.§^V§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§58§ = this.§'1§(param1,this.§%I§,this.§!!%§,this.§%O§,this.§!#§,this.§>!_§,this.§8!2§,this.§[b§,this.§2"§);
      }
      
      public function get scaleX() : Number
      {
         return this.§%!V§ * this.§+3§;
      }
      
      public function get scaleY() : Number
      {
         return this.§'C§ * this.§'!L§;
      }
      
      private function get §+3§() : Number
      {
         if(this.§8!A§ || this.§@%§)
         {
            return this.§6!a§;
         }
         return 1;
      }
      
      private function get §'!L§() : Number
      {
         if(this.§!#§ || this.§>!_§)
         {
            return this.§8!2§;
         }
         return 1;
      }
      
      private function § use§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §2f§ || param1 == §8o§)
            {
               this.§[,§ = param1;
            }
         }
      }
      
      private function §[_§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §5<§ || param1 == §8o§)
            {
               this.§%O§ = param1;
            }
         }
      }
      
      private function §0d§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§8!A§ = true;
               this.§@%§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§8!A§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§@%§ = true;
            }
         }
      }
      
      private function § ,§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§!#§ = true;
               this.§>!_§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§!#§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§>!_§ = true;
            }
         }
      }
      
      private function § !U§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §6B§)
            {
               this.§2^§ = §6B§;
            }
            else if(param1.toUpperCase() == §]^§)
            {
               this.§2^§ = §]^§;
            }
         }
      }
      
      private function §<$§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§^0§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§^0§ = true;
               this.§"m§ = true;
            }
         }
      }
      
      private function §-!#§() : void
      {
         if(this.§^0§)
         {
            if(this.§6!a§ < this.§8!2§)
            {
               if(!this.§"m§)
               {
                  this.§8!2§ = this.§6!a§;
               }
               else
               {
                  this.§6!a§ = this.§8!2§;
               }
            }
            else if(!this.§"m§)
            {
               this.§6!a§ = this.§8!2§;
            }
            else
            {
               this.§8!2§ = this.§6!a§;
            }
         }
      }
      
      private function §;5§() : void
      {
         if(!this.§@%§ && this.§6!a§ > 1)
         {
            this.§6!a§ = 1;
         }
         else if(this.§@%§ && !this.§8!A§ && this.§6!a§ < 1)
         {
            this.§6!a§ = 1;
         }
         if(!this.§>!_§ && this.§8!2§ > 1)
         {
            this.§8!2§ = 1;
         }
         else if(this.§>!_§ && !this.§!#§ && this.§8!2§ < 1)
         {
            this.§8!2§ = 1;
         }
      }
      
      private function § q§() : void
      {
         if(this.§2^§ == §6B§)
         {
            this.§6!a§ = Math.sqrt(this.§6!a§);
            this.§8!2§ = Math.sqrt(this.§8!2§);
         }
         else if(this.§2^§ == §]^§)
         {
            this.§6!a§ *= this.§6!a§;
            this.§8!2§ *= this.§8!2§;
         }
      }
      
      private function §'1§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §5!H§ || param4 == §?H§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §2f§ || param4 == §5<§)
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
         else if(param4 == §8o§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§^0§)
               {
                  if(!this.§"m§)
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
      
      private function §?$§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §5!H§ || param4 == §?H§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §2f§ || param4 == §5<§)
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
         else if(param4 == §8o§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§^0§)
               {
                  if(!this.§"m§)
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
      
      public function § c§(param1:Number, param2:Number) : void
      {
         this.§,`§ = param1;
         this.§%I§ = param2;
         this.§6!a§ = param1 / this.§?!G§;
         this.§8!2§ = param2 / this.§!!%§;
         this.§9!Q§ = this.§6!a§;
         this.§[b§ = this.§8!2§;
         this.§-!#§();
         this.§;5§();
         this.§^V§ = this.§6!a§;
         this.§2"§ = this.§8!2§;
         this.§ q§();
         this.§,!_§ = this.§?$§(this.§=!G§,param1,this.§?!G§,this.§[,§,this.§8!A§,this.§@%§,this.§6!a§,this.§9!Q§,this.§^V§);
         this.§4b§ = this.§?$§(this.§58§,param2,this.§!!%§,this.§%O§,this.§!#§,this.§>!_§,this.§8!2§,this.§[b§,this.§2"§);
      }
   }
}
