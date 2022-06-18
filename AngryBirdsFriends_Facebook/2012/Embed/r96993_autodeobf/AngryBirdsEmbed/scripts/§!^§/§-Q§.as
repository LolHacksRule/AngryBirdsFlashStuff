package §!^§
{
   public class §-Q§
   {
      
      private static const §2!D§:String = "RIGHT";
      
      private static const §#!F§:String = "LEFT";
      
      private static const §;!8§:String = "TOP";
      
      private static const §,S§:String = "BOTTOM";
      
      private static const §?J§:String = "CENTER";
      
      private static const §9_§:String = "NORMAL";
      
      private static const §;Z§:String = "SQRT";
      
      private static const §[#§:String = "SQR";
       
      
      private var §@!"§:Number = 0.0;
      
      private var §2Q§:Number = 0.0;
      
      private var §6!<§:Number = 1.0;
      
      private var §"_§:Number = 1.0;
      
      private var §++§:Number = 1.0;
      
      private var §5!A§:Number = 1.0;
      
      private var §;s§:String = "LEFT";
      
      private var §-Y§:String = "TOP";
      
      private var §3z§:Boolean = false;
      
      private var §3K§:Boolean = false;
      
      private var §[G§:Boolean = false;
      
      private var §1l§:Boolean = false;
      
      private var §>c§:Boolean = false;
      
      private var §#y§:Boolean = false;
      
      private var §[,§:String = "NORMAL";
      
      private var §"l§:Number = 1.0;
      
      private var §+1§:Number = 1.0;
      
      private var §7'§:Number = 1.0;
      
      private var §[T§:Number = 1.0;
      
      private var §"$§:Number = 1.0;
      
      private var §0L§:Number = 1.0;
      
      private var §4F§:Number = 0.0;
      
      private var §1v§:Number = 0.0;
      
      private var §%!B§:Number = 1.0;
      
      private var §98§:Number = 1.0;
      
      public function §-Q§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§@!"§ = param1;
         this.§2Q§ = param2;
         this.§4F§ = param1;
         this.§1v§ = param2;
         this.§%!B§ = param3;
         this.§98§ = param4;
         this.§6!<§ = param5;
         this.§"_§ = param6;
         this.§++§ = param5;
         this.§5!A§ = param6;
         this.§-S§(param7);
         this.§<a§(param8);
         this.§?_§(param9);
         this.§`!7§(param10);
         this.§@B§(param11);
         this.§#!?§(param12);
         this.§[,§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§4F§;
      }
      
      public function get y() : Number
      {
         return this.§1v§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§@!"§ = this.§;S§(param1,this.§++§,this.§6!<§,this.§;s§,this.§3z§,this.§3K§,this.§"l§,this.§7'§,this.§"$§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§2Q§ = this.§;S§(param1,this.§5!A§,this.§"_§,this.§-Y§,this.§[G§,this.§1l§,this.§+1§,this.§[T§,this.§0L§);
      }
      
      public function get scaleX() : Number
      {
         return this.§%!B§ * this.§<Q§;
      }
      
      public function get scaleY() : Number
      {
         return this.§98§ * this.§#!-§;
      }
      
      private function get §<Q§() : Number
      {
         if(this.§3z§ || this.§3K§)
         {
            return this.§"l§;
         }
         return 1;
      }
      
      private function get §#!-§() : Number
      {
         if(this.§[G§ || this.§1l§)
         {
            return this.§+1§;
         }
         return 1;
      }
      
      private function §-S§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §2!D§ || param1 == §?J§)
            {
               this.§;s§ = param1;
            }
         }
      }
      
      private function §<a§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §,S§ || param1 == §?J§)
            {
               this.§-Y§ = param1;
            }
         }
      }
      
      private function §?_§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§3z§ = true;
               this.§3K§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§3z§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§3K§ = true;
            }
         }
      }
      
      private function §`!7§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§[G§ = true;
               this.§1l§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§[G§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§1l§ = true;
            }
         }
      }
      
      private function §#!?§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §;Z§)
            {
               this.§[,§ = §;Z§;
            }
            else if(param1.toUpperCase() == §[#§)
            {
               this.§[,§ = §[#§;
            }
         }
      }
      
      private function §@B§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§>c§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§>c§ = true;
               this.§#y§ = true;
            }
         }
      }
      
      private function §?!=§() : void
      {
         if(this.§>c§)
         {
            if(this.§"l§ < this.§+1§)
            {
               if(!this.§#y§)
               {
                  this.§+1§ = this.§"l§;
               }
               else
               {
                  this.§"l§ = this.§+1§;
               }
            }
            else if(!this.§#y§)
            {
               this.§"l§ = this.§+1§;
            }
            else
            {
               this.§+1§ = this.§"l§;
            }
         }
      }
      
      private function §4!2§() : void
      {
         if(!this.§3K§ && this.§"l§ > 1)
         {
            this.§"l§ = 1;
         }
         else if(this.§3K§ && !this.§3z§ && this.§"l§ < 1)
         {
            this.§"l§ = 1;
         }
         if(!this.§1l§ && this.§+1§ > 1)
         {
            this.§+1§ = 1;
         }
         else if(this.§1l§ && !this.§[G§ && this.§+1§ < 1)
         {
            this.§+1§ = 1;
         }
      }
      
      private function §@Q§() : void
      {
         if(this.§[,§ == §;Z§)
         {
            this.§"l§ = Math.sqrt(this.§"l§);
            this.§+1§ = Math.sqrt(this.§+1§);
         }
         else if(this.§[,§ == §[#§)
         {
            this.§"l§ *= this.§"l§;
            this.§+1§ *= this.§+1§;
         }
      }
      
      private function §;S§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §#!F§ || param4 == §;!8§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §2!D§ || param4 == §,S§)
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
         else if(param4 == §?J§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§>c§)
               {
                  if(!this.§#y§)
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
      
      private function §-!G§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §#!F§ || param4 == §;!8§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §2!D§ || param4 == §,S§)
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
         else if(param4 == §?J§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§>c§)
               {
                  if(!this.§#y§)
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
      
      public function §=!F§(param1:Number, param2:Number) : void
      {
         this.§++§ = param1;
         this.§5!A§ = param2;
         this.§"l§ = param1 / this.§6!<§;
         this.§+1§ = param2 / this.§"_§;
         this.§7'§ = this.§"l§;
         this.§[T§ = this.§+1§;
         this.§?!=§();
         this.§4!2§();
         this.§"$§ = this.§"l§;
         this.§0L§ = this.§+1§;
         this.§@Q§();
         this.§4F§ = this.§-!G§(this.§@!"§,param1,this.§6!<§,this.§;s§,this.§3z§,this.§3K§,this.§"l§,this.§7'§,this.§"$§);
         this.§1v§ = this.§-!G§(this.§2Q§,param2,this.§"_§,this.§-Y§,this.§[G§,this.§1l§,this.§+1§,this.§[T§,this.§0L§);
      }
   }
}
