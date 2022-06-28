package §`!0§
{
   public class §2+§
   {
      
      private static const §7!$§:String = "RIGHT";
      
      private static const §`B§:String = "LEFT";
      
      private static const §^E§:String = "TOP";
      
      private static const §,R§:String = "BOTTOM";
      
      private static const §@!;§:String = "CENTER";
      
      private static const §9M§:String = "NORMAL";
      
      private static const §4[§:String = "SQRT";
      
      private static const §[!D§:String = "SQR";
       
      
      private var §]!@§:Number = 0.0;
      
      private var §=!!§:Number = 0.0;
      
      private var §8!D§:Number = 1.0;
      
      private var §%I§:Number = 1.0;
      
      private var §`i§:Number = 1.0;
      
      private var §!j§:Number = 1.0;
      
      private var §3!B§:String = "LEFT";
      
      private var §-Q§:String = "TOP";
      
      private var §]P§:Boolean = false;
      
      private var §>a§:Boolean = false;
      
      private var §-=§:Boolean = false;
      
      private var §,v§:Boolean = false;
      
      private var §[6§:Boolean = false;
      
      private var § if§:Boolean = false;
      
      private var §3!@§:String = "NORMAL";
      
      private var §+=§:Number = 1.0;
      
      private var §#b§:Number = 1.0;
      
      private var §3^§:Number = 1.0;
      
      private var §7_§:Number = 1.0;
      
      private var §!i§:Number = 1.0;
      
      private var §%K§:Number = 1.0;
      
      private var §^C§:Number = 0.0;
      
      private var §0§:Number = 0.0;
      
      private var §'G§:Number = 1.0;
      
      private var §8w§:Number = 1.0;
      
      public function §2+§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§]!@§ = param1;
         this.§=!!§ = param2;
         this.§^C§ = param1;
         this.§0§ = param2;
         this.§'G§ = param3;
         this.§8w§ = param4;
         this.§8!D§ = param5;
         this.§%I§ = param6;
         this.§`i§ = param5;
         this.§!j§ = param6;
         this.§[9§(param7);
         this.§"!"§(param8);
         this.§]n§(param9);
         this.§1Y§(param10);
         this.§=?§(param11);
         this.§+E§(param12);
         this.§3!@§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§^C§;
      }
      
      public function get y() : Number
      {
         return this.§0§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§]!@§ = this.§#Z§(param1,this.§`i§,this.§8!D§,this.§3!B§,this.§]P§,this.§>a§,this.§+=§,this.§3^§,this.§!i§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§=!!§ = this.§#Z§(param1,this.§!j§,this.§%I§,this.§-Q§,this.§-=§,this.§,v§,this.§#b§,this.§7_§,this.§%K§);
      }
      
      public function get scaleX() : Number
      {
         return this.§'G§ * this.§9!I§;
      }
      
      public function get scaleY() : Number
      {
         return this.§8w§ * this.§`Q§;
      }
      
      private function get §9!I§() : Number
      {
         if(this.§]P§ || this.§>a§)
         {
            return this.§+=§;
         }
         return 1;
      }
      
      private function get §`Q§() : Number
      {
         if(this.§-=§ || this.§,v§)
         {
            return this.§#b§;
         }
         return 1;
      }
      
      private function §[9§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §7!$§ || param1 == §@!;§)
            {
               this.§3!B§ = param1;
            }
         }
      }
      
      private function §"!"§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §,R§ || param1 == §@!;§)
            {
               this.§-Q§ = param1;
            }
         }
      }
      
      private function §]n§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§]P§ = true;
               this.§>a§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§]P§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§>a§ = true;
            }
         }
      }
      
      private function §1Y§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§-=§ = true;
               this.§,v§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§-=§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§,v§ = true;
            }
         }
      }
      
      private function §+E§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §4[§)
            {
               this.§3!@§ = §4[§;
            }
            else if(param1.toUpperCase() == §[!D§)
            {
               this.§3!@§ = §[!D§;
            }
         }
      }
      
      private function §=?§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§[6§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§[6§ = true;
               this.§ if§ = true;
            }
         }
      }
      
      private function §;A§() : void
      {
         if(this.§[6§)
         {
            if(this.§+=§ < this.§#b§)
            {
               if(!this.§ if§)
               {
                  this.§#b§ = this.§+=§;
               }
               else
               {
                  this.§+=§ = this.§#b§;
               }
            }
            else if(!this.§ if§)
            {
               this.§+=§ = this.§#b§;
            }
            else
            {
               this.§#b§ = this.§+=§;
            }
         }
      }
      
      private function §9! §() : void
      {
         if(!this.§>a§ && this.§+=§ > 1)
         {
            this.§+=§ = 1;
         }
         else if(this.§>a§ && !this.§]P§ && this.§+=§ < 1)
         {
            this.§+=§ = 1;
         }
         if(!this.§,v§ && this.§#b§ > 1)
         {
            this.§#b§ = 1;
         }
         else if(this.§,v§ && !this.§-=§ && this.§#b§ < 1)
         {
            this.§#b§ = 1;
         }
      }
      
      private function §=A§() : void
      {
         if(this.§3!@§ == §4[§)
         {
            this.§+=§ = Math.sqrt(this.§+=§);
            this.§#b§ = Math.sqrt(this.§#b§);
         }
         else if(this.§3!@§ == §[!D§)
         {
            this.§+=§ *= this.§+=§;
            this.§#b§ *= this.§#b§;
         }
      }
      
      private function §#Z§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §`B§ || param4 == §^E§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §7!$§ || param4 == §,R§)
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
         else if(param4 == §@!;§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§[6§)
               {
                  if(!this.§ if§)
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
      
      private function §6!?§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §`B§ || param4 == §^E§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §7!$§ || param4 == §,R§)
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
         else if(param4 == §@!;§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§[6§)
               {
                  if(!this.§ if§)
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
      
      public function §3!3§(param1:Number, param2:Number) : void
      {
         this.§`i§ = param1;
         this.§!j§ = param2;
         this.§+=§ = param1 / this.§8!D§;
         this.§#b§ = param2 / this.§%I§;
         this.§3^§ = this.§+=§;
         this.§7_§ = this.§#b§;
         this.§;A§();
         this.§9! §();
         this.§!i§ = this.§+=§;
         this.§%K§ = this.§#b§;
         this.§=A§();
         this.§^C§ = this.§6!?§(this.§]!@§,param1,this.§8!D§,this.§3!B§,this.§]P§,this.§>a§,this.§+=§,this.§3^§,this.§!i§);
         this.§0§ = this.§6!?§(this.§=!!§,param2,this.§%I§,this.§-Q§,this.§-=§,this.§,v§,this.§#b§,this.§7_§,this.§%K§);
      }
   }
}
