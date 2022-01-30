package §>P§
{
   public class §@!F§
   {
      
      private static const §-!_§:String = "RIGHT";
      
      private static const each:String = "LEFT";
      
      private static const §7C§:String = "TOP";
      
      private static const §9!V§:String = "BOTTOM";
      
      private static const §5!3§:String = "CENTER";
      
      private static const §!l§:String = "NORMAL";
      
      private static const §[!c§:String = "SQRT";
      
      private static const §#!%§:String = "SQR";
      
      private static const §'"7§:String = "NORMAL_SQRT";
       
      
      private var §]!j§:Number = 0.0;
      
      private var §41§:Number = 0.0;
      
      private var §9%§:Number = 1.0;
      
      private var §1!J§:Number = 1.0;
      
      private var §+!0§:Number = 1.0;
      
      private var §<!g§:Number = 1.0;
      
      private var §""-§:String = "LEFT";
      
      private var §0U§:String = "TOP";
      
      private var §`s§:Boolean = false;
      
      private var §5!M§:Boolean = false;
      
      private var §!!$§:Boolean = false;
      
      private var §,",§:Boolean = false;
      
      private var § !Q§:Boolean = false;
      
      private var §;i§:Boolean = false;
      
      private var §9"+§:Boolean = false;
      
      private var §0" §:String = "NORMAL";
      
      private var § try§:Number = 1.0;
      
      private var §2!<§:Number = 1.0;
      
      private var §`!v§:Number = 1.0;
      
      private var §6!g§:Number = 1.0;
      
      private var §'`§:Number = 1.0;
      
      private var §[!F§:Number = 1.0;
      
      private var §@!-§:Number = 0.0;
      
      private var §'!0§:Number = 0.0;
      
      private var §'"+§:Number = 1.0;
      
      private var §,!T§:Number = 1.0;
      
      public function §@!F§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§]!j§ = param1;
         this.§41§ = param2;
         this.§@!-§ = param1;
         this.§'!0§ = param2;
         this.§9%§ = param3;
         this.§1!J§ = param4;
         this.§+!0§ = param5;
         this.§<!g§ = param6;
         this.§'"+§ = param5;
         this.§,!T§ = param6;
         this.§6"0§(param7);
         this.§3D§(param8);
         this.§'!A§(param9);
         this.§8"%§(param10);
         this.§=V§(param11);
         this.§`L§(param12);
         this.§0" § = param12;
      }
      
      public function get x() : Number
      {
         return this.§@!-§;
      }
      
      public function get y() : Number
      {
         return this.§'!0§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§]!j§ = this.§=H§(param1,this.§'"+§,this.§+!0§,this.§""-§,this.§`s§,this.§5!M§,this.§ try§,this.§`!v§,this.§'`§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§41§ = this.§=H§(param1,this.§,!T§,this.§<!g§,this.§0U§,this.§!!$§,this.§,",§,this.§2!<§,this.§6!g§,this.§[!F§);
      }
      
      public function get scaleX() : Number
      {
         return this.§9%§ * this.§=! §;
      }
      
      public function get scaleY() : Number
      {
         return this.§1!J§ * this.§`"-§;
      }
      
      private function get §=! §() : Number
      {
         if(this.§`s§ || this.§5!M§)
         {
            return this.§ try§;
         }
         return 1;
      }
      
      private function get §`"-§() : Number
      {
         if(this.§!!$§ || this.§,",§)
         {
            return this.§2!<§;
         }
         return 1;
      }
      
      private function §6"0§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §-!_§ || param1 == §5!3§)
            {
               this.§""-§ = param1;
            }
         }
      }
      
      private function §3D§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §9!V§ || param1 == §5!3§)
            {
               this.§0U§ = param1;
            }
         }
      }
      
      private function §'!A§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§`s§ = true;
               this.§5!M§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§`s§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§5!M§ = true;
            }
         }
      }
      
      private function §8"%§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§!!$§ = true;
               this.§,",§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§!!$§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§,",§ = true;
            }
         }
      }
      
      private function §`L§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §[!c§)
            {
               this.§0" § = §[!c§;
            }
            else if(param1.toUpperCase() == §#!%§)
            {
               this.§0" § = §#!%§;
            }
            else if(param1.toUpperCase() == §'"7§)
            {
               this.§0" § = §'"7§;
            }
         }
      }
      
      private function §=V§(param1:String) : void
      {
         if(param1)
         {
            switch(param1.toUpperCase())
            {
               case "TRUE":
                  this.§ !Q§ = true;
                  break;
               case "UP":
                  this.§ !Q§ = true;
                  this.§;i§ = true;
                  break;
               case "UPDOWN":
                  this.§ !Q§ = true;
                  this.§9"+§ = true;
            }
         }
      }
      
      private function §?!"§() : void
      {
         if(this.§ !Q§)
         {
            if(this.§ try§ < this.§2!<§)
            {
               if(!this.§;i§)
               {
                  this.§2!<§ = this.§ try§;
               }
               else
               {
                  this.§ try§ = this.§2!<§;
               }
            }
            else if(!this.§;i§)
            {
               this.§ try§ = this.§2!<§;
            }
            else
            {
               this.§2!<§ = this.§ try§;
            }
         }
      }
      
      private function §4!,§() : void
      {
         if(!this.§5!M§ && this.§ try§ > 1)
         {
            this.§ try§ = 1;
         }
         else if(!this.§`s§ && this.§ try§ < 1)
         {
            this.§ try§ = 1;
         }
         if(!this.§,",§ && this.§2!<§ > 1)
         {
            this.§2!<§ = 1;
         }
         else if(!this.§!!$§ && this.§2!<§ < 1)
         {
            this.§2!<§ = 1;
         }
      }
      
      private function §@R§() : void
      {
         if(this.§0" § == §[!c§)
         {
            this.§ try§ = Math.sqrt(this.§ try§);
            this.§2!<§ = Math.sqrt(this.§2!<§);
         }
         else if(this.§0" § == §#!%§)
         {
            this.§ try§ *= this.§ try§;
            this.§2!<§ *= this.§2!<§;
         }
         else if(this.§0" § == §'"7§)
         {
            if(this.§ try§ > 1)
            {
               this.§ try§ = Math.sqrt(this.§ try§);
            }
            if(this.§2!<§ > 1)
            {
               this.§2!<§ = Math.sqrt(this.§2!<§);
            }
         }
      }
      
      private function §=H§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == each || param4 == §7C§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §-!_§ || param4 == §9!V§)
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
         else if(param4 == §5!3§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§ !Q§)
               {
                  if(!this.§;i§)
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
      
      private function §;!F§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == each || param4 == §7C§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §-!_§ || param4 == §9!V§)
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
         else if(param4 == §5!3§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§ !Q§)
               {
                  if(!this.§;i§ && !this.§9"+§)
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
      
      public function §#>§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§'"+§ = param1;
         this.§,!T§ = param2;
         this.§ try§ = param1 / this.§+!0§;
         if(!this.§9"+§)
         {
            this.§ try§ = param1 / this.§+!0§;
            this.§2!<§ = param2 / this.§<!g§;
         }
         else
         {
            _loc3_ = this.§ try§ = param2 / this.§<!g§;
            _loc4_ = this.§2!<§ = this.§ try§;
         }
         this.§`!v§ = this.§ try§;
         this.§6!g§ = this.§2!<§;
         this.§?!"§();
         this.§4!,§();
         this.§'`§ = this.§ try§;
         this.§[!F§ = this.§2!<§;
         if(this.§9"+§)
         {
            this.§ try§ = param1 / this.§+!0§;
            this.§2!<§ = param2 / this.§<!g§;
         }
         this.§@R§();
         this.§@!-§ = this.§;!F§(this.§]!j§,param1,this.§+!0§,this.§""-§,this.§`s§,this.§5!M§,this.§ try§,this.§`!v§,this.§'`§);
         this.§'!0§ = this.§;!F§(this.§41§,param2,this.§<!g§,this.§0U§,this.§!!$§,this.§,",§,this.§2!<§,this.§6!g§,this.§[!F§);
         if(this.§9"+§)
         {
            this.§ try§ = _loc3_;
            this.§2!<§ = _loc4_;
         }
      }
   }
}
