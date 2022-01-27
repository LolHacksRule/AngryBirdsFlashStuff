package §0!Q§
{
   public class §3%§
   {
      
      private static const §;! §:String = "RIGHT";
      
      private static const §-!@§:String = "LEFT";
      
      private static const §&!B§:String = "TOP";
      
      private static const §^!B§:String = "BOTTOM";
      
      private static const §=G§:String = "CENTER";
      
      private static const §<b§:String = "NORMAL";
      
      private static const §+m§:String = "SQRT";
      
      private static const §<!7§:String = "SQR";
       
      
      private var §"!S§:Number = 0.0;
      
      private var §=!Q§:Number = 0.0;
      
      private var §+z§:Number = 1.0;
      
      private var §-G§:Number = 1.0;
      
      private var §;!`§:Number = 1.0;
      
      private var §2§:Number = 1.0;
      
      private var §&2§:String = "LEFT";
      
      private var §[!+§:String = "TOP";
      
      private var §2o§:Boolean = false;
      
      private var §1e§:Boolean = false;
      
      private var §@?§:Boolean = false;
      
      private var §6!P§:Boolean = false;
      
      private var §0M§:Boolean = false;
      
      private var §+u§:Boolean = false;
      
      private var §'!d§:String = "NORMAL";
      
      private var §+O§:Number = 1.0;
      
      private var §#D§:Number = 1.0;
      
      private var §4D§:Number = 1.0;
      
      private var §`V§:Number = 1.0;
      
      private var §8m§:Number = 1.0;
      
      private var §-k§:Number = 1.0;
      
      private var §1X§:Number = 0.0;
      
      private var §`J§:Number = 0.0;
      
      private var §#!e§:Number = 1.0;
      
      private var §,;§:Number = 1.0;
      
      public function §3%§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§"!S§ = param1;
         this.§=!Q§ = param2;
         this.§1X§ = param1;
         this.§`J§ = param2;
         this.§#!e§ = param3;
         this.§,;§ = param4;
         this.§+z§ = param5;
         this.§-G§ = param6;
         this.§;!`§ = param5;
         this.§2§ = param6;
         this.§^,§(param7);
         this.§^J§(param8);
         this.§%V§(param9);
         this.§3!?§(param10);
         this.§"!h§(param11);
         this.§'=§(param12);
         this.§'!d§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§1X§;
      }
      
      public function get y() : Number
      {
         return this.§`J§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§"!S§ = this.§^!I§(param1,this.§;!`§,this.§+z§,this.§&2§,this.§2o§,this.§1e§,this.§+O§,this.§4D§,this.§8m§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§=!Q§ = this.§^!I§(param1,this.§2§,this.§-G§,this.§[!+§,this.§@?§,this.§6!P§,this.§#D§,this.§`V§,this.§-k§);
      }
      
      public function get scaleX() : Number
      {
         return this.§#!e§ * this.§0D§;
      }
      
      public function get scaleY() : Number
      {
         return this.§,;§ * this.§ q§;
      }
      
      private function get §0D§() : Number
      {
         if(this.§2o§ || this.§1e§)
         {
            return this.§+O§;
         }
         return 1;
      }
      
      private function get § q§() : Number
      {
         if(this.§@?§ || this.§6!P§)
         {
            return this.§#D§;
         }
         return 1;
      }
      
      private function §^,§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §;! § || param1 == §=G§)
            {
               this.§&2§ = param1;
            }
         }
      }
      
      private function §^J§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §^!B§ || param1 == §=G§)
            {
               this.§[!+§ = param1;
            }
         }
      }
      
      private function §%V§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§2o§ = true;
               this.§1e§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§2o§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§1e§ = true;
            }
         }
      }
      
      private function §3!?§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§@?§ = true;
               this.§6!P§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§@?§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§6!P§ = true;
            }
         }
      }
      
      private function §'=§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §+m§)
            {
               this.§'!d§ = §+m§;
            }
            else if(param1.toUpperCase() == §<!7§)
            {
               this.§'!d§ = §<!7§;
            }
         }
      }
      
      private function §"!h§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§0M§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§0M§ = true;
               this.§+u§ = true;
            }
         }
      }
      
      private function §^!U§() : void
      {
         if(this.§0M§)
         {
            if(this.§+O§ < this.§#D§)
            {
               if(!this.§+u§)
               {
                  this.§#D§ = this.§+O§;
               }
               else
               {
                  this.§+O§ = this.§#D§;
               }
            }
            else if(!this.§+u§)
            {
               this.§+O§ = this.§#D§;
            }
            else
            {
               this.§#D§ = this.§+O§;
            }
         }
      }
      
      private function §0z§() : void
      {
         if(!this.§1e§ && this.§+O§ > 1)
         {
            this.§+O§ = 1;
         }
         else if(this.§1e§ && !this.§2o§ && this.§+O§ < 1)
         {
            this.§+O§ = 1;
         }
         if(!this.§6!P§ && this.§#D§ > 1)
         {
            this.§#D§ = 1;
         }
         else if(this.§6!P§ && !this.§@?§ && this.§#D§ < 1)
         {
            this.§#D§ = 1;
         }
      }
      
      private function §`u§() : void
      {
         if(this.§'!d§ == §+m§)
         {
            this.§+O§ = Math.sqrt(this.§+O§);
            this.§#D§ = Math.sqrt(this.§#D§);
         }
         else if(this.§'!d§ == §<!7§)
         {
            this.§+O§ *= this.§+O§;
            this.§#D§ *= this.§#D§;
         }
      }
      
      private function §^!I§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §-!@§ || param4 == §&!B§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §;! § || param4 == §^!B§)
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
         else if(param4 == §=G§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§0M§)
               {
                  if(!this.§+u§)
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
      
      private function §&x§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §-!@§ || param4 == §&!B§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §;! § || param4 == §^!B§)
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
         else if(param4 == §=G§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§0M§)
               {
                  if(!this.§+u§)
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
      
      public function §#!<§(param1:Number, param2:Number) : void
      {
         this.§;!`§ = param1;
         this.§2§ = param2;
         this.§+O§ = param1 / this.§+z§;
         this.§#D§ = param2 / this.§-G§;
         this.§4D§ = this.§+O§;
         this.§`V§ = this.§#D§;
         this.§^!U§();
         this.§0z§();
         this.§8m§ = this.§+O§;
         this.§-k§ = this.§#D§;
         this.§`u§();
         this.§1X§ = this.§&x§(this.§"!S§,param1,this.§+z§,this.§&2§,this.§2o§,this.§1e§,this.§+O§,this.§4D§,this.§8m§);
         this.§`J§ = this.§&x§(this.§=!Q§,param2,this.§-G§,this.§[!+§,this.§@?§,this.§6!P§,this.§#D§,this.§`V§,this.§-k§);
      }
   }
}
