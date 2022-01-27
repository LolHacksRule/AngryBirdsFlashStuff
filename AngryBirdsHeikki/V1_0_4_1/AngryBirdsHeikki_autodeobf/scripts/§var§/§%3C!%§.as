package §var§
{
   public class §<!%§
   {
      
      private static const §1!X§:String = "RIGHT";
      
      private static const §<S§:String = "LEFT";
      
      private static const §#!G§:String = "TOP";
      
      private static const §0!<§:String = "BOTTOM";
      
      private static const §-?§:String = "CENTER";
      
      private static const §<!0§:String = "NORMAL";
      
      private static const §=-§:String = "SQRT";
      
      private static const §=!G§:String = "SQR";
       
      
      private var §@r§:Number = 0.0;
      
      private var §,]§:Number = 0.0;
      
      private var § !I§:Number = 1.0;
      
      private var §'!H§:Number = 1.0;
      
      private var §]%§:Number = 1.0;
      
      private var §>h§:Number = 1.0;
      
      private var §7!M§:String = "LEFT";
      
      private var §[0§:String = "TOP";
      
      private var §2`§:Boolean = false;
      
      private var §`!C§:Boolean = false;
      
      private var §!!J§:Boolean = false;
      
      private var §"!%§:Boolean = false;
      
      private var §!D§:Boolean = false;
      
      private var §&f§:Boolean = false;
      
      private var §=!?§:String = "NORMAL";
      
      private var §[n§:Number = 1.0;
      
      private var §#M§:Number = 1.0;
      
      private var §;V§:Number = 1.0;
      
      private var § !!§:Number = 1.0;
      
      private var §;"§:Number = 1.0;
      
      private var §0?§:Number = 1.0;
      
      private var §-!c§:Number = 0.0;
      
      private var §3![§:Number = 0.0;
      
      private var §1_§:Number = 1.0;
      
      private var §3!c§:Number = 1.0;
      
      public function §<!%§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§@r§ = param1;
         this.§,]§ = param2;
         this.§-!c§ = param1;
         this.§3![§ = param2;
         this.§1_§ = param3;
         this.§3!c§ = param4;
         this.§ !I§ = param5;
         this.§'!H§ = param6;
         this.§]%§ = param5;
         this.§>h§ = param6;
         this.§%!L§(param7);
         this.§2!T§(param8);
         this.§3]§(param9);
         this.§3+§(param10);
         this.§[j§(param11);
         this.§8!c§(param12);
         this.§=!?§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§-!c§;
      }
      
      public function get y() : Number
      {
         return this.§3![§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§@r§ = this.§!!4§(param1,this.§]%§,this.§ !I§,this.§7!M§,this.§2`§,this.§`!C§,this.§[n§,this.§;V§,this.§;"§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§,]§ = this.§!!4§(param1,this.§>h§,this.§'!H§,this.§[0§,this.§!!J§,this.§"!%§,this.§#M§,this.§ !!§,this.§0?§);
      }
      
      public function get scaleX() : Number
      {
         return this.§1_§ * this.§0I§;
      }
      
      public function get scaleY() : Number
      {
         return this.§3!c§ * this.§#!A§;
      }
      
      private function get §0I§() : Number
      {
         if(this.§2`§ || this.§`!C§)
         {
            return this.§[n§;
         }
         return 1;
      }
      
      private function get §#!A§() : Number
      {
         if(this.§!!J§ || this.§"!%§)
         {
            return this.§#M§;
         }
         return 1;
      }
      
      private function §%!L§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §1!X§ || param1 == §-?§)
            {
               this.§7!M§ = param1;
            }
         }
      }
      
      private function §2!T§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §0!<§ || param1 == §-?§)
            {
               this.§[0§ = param1;
            }
         }
      }
      
      private function §3]§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§2`§ = true;
               this.§`!C§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§2`§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§`!C§ = true;
            }
         }
      }
      
      private function §3+§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§!!J§ = true;
               this.§"!%§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§!!J§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§"!%§ = true;
            }
         }
      }
      
      private function §8!c§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §=-§)
            {
               this.§=!?§ = §=-§;
            }
            else if(param1.toUpperCase() == §=!G§)
            {
               this.§=!?§ = §=!G§;
            }
         }
      }
      
      private function §[j§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§!D§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§!D§ = true;
               this.§&f§ = true;
            }
         }
      }
      
      private function §]9§() : void
      {
         if(this.§!D§)
         {
            if(this.§[n§ < this.§#M§)
            {
               if(!this.§&f§)
               {
                  this.§#M§ = this.§[n§;
               }
               else
               {
                  this.§[n§ = this.§#M§;
               }
            }
            else if(!this.§&f§)
            {
               this.§[n§ = this.§#M§;
            }
            else
            {
               this.§#M§ = this.§[n§;
            }
         }
      }
      
      private function §5m§() : void
      {
         if(!this.§`!C§ && this.§[n§ > 1)
         {
            this.§[n§ = 1;
         }
         else if(this.§`!C§ && !this.§2`§ && this.§[n§ < 1)
         {
            this.§[n§ = 1;
         }
         if(!this.§"!%§ && this.§#M§ > 1)
         {
            this.§#M§ = 1;
         }
         else if(this.§"!%§ && !this.§!!J§ && this.§#M§ < 1)
         {
            this.§#M§ = 1;
         }
      }
      
      private function §1s§() : void
      {
         if(this.§=!?§ == §=-§)
         {
            this.§[n§ = Math.sqrt(this.§[n§);
            this.§#M§ = Math.sqrt(this.§#M§);
         }
         else if(this.§=!?§ == §=!G§)
         {
            this.§[n§ *= this.§[n§;
            this.§#M§ *= this.§#M§;
         }
      }
      
      private function §!!4§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §<S§ || param4 == §#!G§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §1!X§ || param4 == §0!<§)
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
         else if(param4 == §-?§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§!D§)
               {
                  if(!this.§&f§)
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
      
      private function §9!K§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §<S§ || param4 == §#!G§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §1!X§ || param4 == §0!<§)
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
         else if(param4 == §-?§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§!D§)
               {
                  if(!this.§&f§)
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
      
      public function §+r§(param1:Number, param2:Number) : void
      {
         this.§]%§ = param1;
         this.§>h§ = param2;
         this.§[n§ = param1 / this.§ !I§;
         this.§#M§ = param2 / this.§'!H§;
         this.§;V§ = this.§[n§;
         this.§ !!§ = this.§#M§;
         this.§]9§();
         this.§5m§();
         this.§;"§ = this.§[n§;
         this.§0?§ = this.§#M§;
         this.§1s§();
         this.§-!c§ = this.§9!K§(this.§@r§,param1,this.§ !I§,this.§7!M§,this.§2`§,this.§`!C§,this.§[n§,this.§;V§,this.§;"§);
         this.§3![§ = this.§9!K§(this.§,]§,param2,this.§'!H§,this.§[0§,this.§!!J§,this.§"!%§,this.§#M§,this.§ !!§,this.§0?§);
      }
   }
}
