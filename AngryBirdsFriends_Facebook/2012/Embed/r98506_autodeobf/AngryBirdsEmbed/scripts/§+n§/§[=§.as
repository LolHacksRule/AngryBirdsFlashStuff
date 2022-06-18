package §+n§
{
   public class §[=§
   {
      
      private static const §[!6§:String = "RIGHT";
      
      private static const §4j§:String = "LEFT";
      
      private static const §-L§:String = "TOP";
      
      private static const §&]§:String = "BOTTOM";
      
      private static const §,f§:String = "CENTER";
      
      private static const §++§:String = "NORMAL";
      
      private static const §"!'§:String = "SQRT";
      
      private static const §1L§:String = "SQR";
       
      
      private var §&!5§:Number = 0.0;
      
      private var §6s§:Number = 0.0;
      
      private var §5!$§:Number = 1.0;
      
      private var § !B§:Number = 1.0;
      
      private var §!"§:Number = 1.0;
      
      private var §6!E§:Number = 1.0;
      
      private var §3!1§:String = "LEFT";
      
      private var §3X§:String = "TOP";
      
      private var §@b§:Boolean = false;
      
      private var §`1§:Boolean = false;
      
      private var §=Q§:Boolean = false;
      
      private var §"!+§:Boolean = false;
      
      private var §`x§:Boolean = false;
      
      private var §0$§:Boolean = false;
      
      private var §?L§:String = "NORMAL";
      
      private var §##§:Number = 1.0;
      
      private var §9[§:Number = 1.0;
      
      private var §8!6§:Number = 1.0;
      
      private var §#H§:Number = 1.0;
      
      private var §2!I§:Number = 1.0;
      
      private var §?P§:Number = 1.0;
      
      private var §9r§:Number = 0.0;
      
      private var §!0§:Number = 0.0;
      
      private var §]&§:Number = 1.0;
      
      private var §<;§:Number = 1.0;
      
      public function §[=§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§&!5§ = param1;
         this.§6s§ = param2;
         this.§9r§ = param1;
         this.§!0§ = param2;
         this.§]&§ = param3;
         this.§<;§ = param4;
         this.§5!$§ = param5;
         this.§ !B§ = param6;
         this.§!"§ = param5;
         this.§6!E§ = param6;
         this.§"7§(param7);
         this.§>!9§(param8);
         this.§'i§(param9);
         this.§5!?§(param10);
         this.§2w§(param11);
         this.§!e§(param12);
         this.§?L§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§9r§;
      }
      
      public function get y() : Number
      {
         return this.§!0§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§&!5§ = this.§;! §(param1,this.§!"§,this.§5!$§,this.§3!1§,this.§@b§,this.§`1§,this.§##§,this.§8!6§,this.§2!I§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§6s§ = this.§;! §(param1,this.§6!E§,this.§ !B§,this.§3X§,this.§=Q§,this.§"!+§,this.§9[§,this.§#H§,this.§?P§);
      }
      
      public function get scaleX() : Number
      {
         return this.§]&§ * this.§,G§;
      }
      
      public function get scaleY() : Number
      {
         return this.§<;§ * this.§<!=§;
      }
      
      private function get §,G§() : Number
      {
         if(this.§@b§ || this.§`1§)
         {
            return this.§##§;
         }
         return 1;
      }
      
      private function get §<!=§() : Number
      {
         if(this.§=Q§ || this.§"!+§)
         {
            return this.§9[§;
         }
         return 1;
      }
      
      private function §"7§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §[!6§ || param1 == §,f§)
            {
               this.§3!1§ = param1;
            }
         }
      }
      
      private function §>!9§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §&]§ || param1 == §,f§)
            {
               this.§3X§ = param1;
            }
         }
      }
      
      private function §'i§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§@b§ = true;
               this.§`1§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§@b§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§`1§ = true;
            }
         }
      }
      
      private function §5!?§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§=Q§ = true;
               this.§"!+§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§=Q§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§"!+§ = true;
            }
         }
      }
      
      private function §!e§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §"!'§)
            {
               this.§?L§ = §"!'§;
            }
            else if(param1.toUpperCase() == §1L§)
            {
               this.§?L§ = §1L§;
            }
         }
      }
      
      private function §2w§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§`x§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§`x§ = true;
               this.§0$§ = true;
            }
         }
      }
      
      private function §@L§() : void
      {
         if(this.§`x§)
         {
            if(this.§##§ < this.§9[§)
            {
               if(!this.§0$§)
               {
                  this.§9[§ = this.§##§;
               }
               else
               {
                  this.§##§ = this.§9[§;
               }
            }
            else if(!this.§0$§)
            {
               this.§##§ = this.§9[§;
            }
            else
            {
               this.§9[§ = this.§##§;
            }
         }
      }
      
      private function §^8§() : void
      {
         if(!this.§`1§ && this.§##§ > 1)
         {
            this.§##§ = 1;
         }
         else if(this.§`1§ && !this.§@b§ && this.§##§ < 1)
         {
            this.§##§ = 1;
         }
         if(!this.§"!+§ && this.§9[§ > 1)
         {
            this.§9[§ = 1;
         }
         else if(this.§"!+§ && !this.§=Q§ && this.§9[§ < 1)
         {
            this.§9[§ = 1;
         }
      }
      
      private function §9R§() : void
      {
         if(this.§?L§ == §"!'§)
         {
            this.§##§ = Math.sqrt(this.§##§);
            this.§9[§ = Math.sqrt(this.§9[§);
         }
         else if(this.§?L§ == §1L§)
         {
            this.§##§ *= this.§##§;
            this.§9[§ *= this.§9[§;
         }
      }
      
      private function §;! §(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §4j§ || param4 == §-L§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §[!6§ || param4 == §&]§)
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
         else if(param4 == §,f§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§`x§)
               {
                  if(!this.§0$§)
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
      
      private function §<t§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §4j§ || param4 == §-L§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §[!6§ || param4 == §&]§)
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
         else if(param4 == §,f§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§`x§)
               {
                  if(!this.§0$§)
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
      
      public function §&!>§(param1:Number, param2:Number) : void
      {
         this.§!"§ = param1;
         this.§6!E§ = param2;
         this.§##§ = param1 / this.§5!$§;
         this.§9[§ = param2 / this.§ !B§;
         this.§8!6§ = this.§##§;
         this.§#H§ = this.§9[§;
         this.§@L§();
         this.§^8§();
         this.§2!I§ = this.§##§;
         this.§?P§ = this.§9[§;
         this.§9R§();
         this.§9r§ = this.§<t§(this.§&!5§,param1,this.§5!$§,this.§3!1§,this.§@b§,this.§`1§,this.§##§,this.§8!6§,this.§2!I§);
         this.§!0§ = this.§<t§(this.§6s§,param2,this.§ !B§,this.§3X§,this.§=Q§,this.§"!+§,this.§9[§,this.§#H§,this.§?P§);
      }
   }
}
