package §<s§
{
   public class §7e§
   {
      
      private static const §2r§:String = "RIGHT";
      
      private static const §@!M§:String = "LEFT";
      
      private static const §8;§:String = "TOP";
      
      private static const §]!'§:String = "BOTTOM";
      
      private static const §>c§:String = "CENTER";
      
      private static const §%>§:String = "NORMAL";
      
      private static const §0!-§:String = "SQRT";
      
      private static const § 7§:String = "SQR";
       
      
      private var §3W§:Number = 0.0;
      
      private var §2F§:Number = 0.0;
      
      private var §2n§:Number = 1.0;
      
      private var §%4§:Number = 1.0;
      
      private var §?J§:Number = 1.0;
      
      private var §]H§:Number = 1.0;
      
      private var §;Q§:String = "LEFT";
      
      private var §+4§:String = "TOP";
      
      private var §-$§:Boolean = false;
      
      private var §,c§:Boolean = false;
      
      private var §%H§:Boolean = false;
      
      private var §2%§:Boolean = false;
      
      private var §5V§:Boolean = false;
      
      private var §2!9§:Boolean = false;
      
      private var §=J§:String = "NORMAL";
      
      private var §,%§:Number = 1.0;
      
      private var §,!I§:Number = 1.0;
      
      private var §=M§:Number = 1.0;
      
      private var §7!U§:Number = 1.0;
      
      private var §=m§:Number = 1.0;
      
      private var §'O§:Number = 1.0;
      
      private var §+!L§:Number = 0.0;
      
      private var §!;§:Number = 0.0;
      
      private var §+H§:Number = 1.0;
      
      private var §@!H§:Number = 1.0;
      
      public function §7e§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§3W§ = param1;
         this.§2F§ = param2;
         this.§+!L§ = param1;
         this.§!;§ = param2;
         this.§+H§ = param3;
         this.§@!H§ = param4;
         this.§2n§ = param5;
         this.§%4§ = param6;
         this.§?J§ = param5;
         this.§]H§ = param6;
         this.§"K§(param7);
         this.§0a§(param8);
         this.§+R§(param9);
         this.§]1§(param10);
         this.§43§(param11);
         this.§]U§(param12);
         this.§=J§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§+!L§;
      }
      
      public function get y() : Number
      {
         return this.§!;§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§3W§ = this.§`]§(param1,this.§?J§,this.§2n§,this.§;Q§,this.§-$§,this.§,c§,this.§,%§,this.§=M§,this.§=m§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§2F§ = this.§`]§(param1,this.§]H§,this.§%4§,this.§+4§,this.§%H§,this.§2%§,this.§,!I§,this.§7!U§,this.§'O§);
      }
      
      public function get scaleX() : Number
      {
         return this.§+H§ * this.§0!1§;
      }
      
      public function get scaleY() : Number
      {
         return this.§@!H§ * this.§>d§;
      }
      
      private function get §0!1§() : Number
      {
         if(this.§-$§ || this.§,c§)
         {
            return this.§,%§;
         }
         return 1;
      }
      
      private function get §>d§() : Number
      {
         if(this.§%H§ || this.§2%§)
         {
            return this.§,!I§;
         }
         return 1;
      }
      
      private function §"K§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §2r§ || param1 == §>c§)
            {
               this.§;Q§ = param1;
            }
         }
      }
      
      private function §0a§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §]!'§ || param1 == §>c§)
            {
               this.§+4§ = param1;
            }
         }
      }
      
      private function §+R§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§-$§ = true;
               this.§,c§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§-$§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§,c§ = true;
            }
         }
      }
      
      private function §]1§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§%H§ = true;
               this.§2%§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§%H§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§2%§ = true;
            }
         }
      }
      
      private function §]U§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §0!-§)
            {
               this.§=J§ = §0!-§;
            }
            else if(param1.toUpperCase() == § 7§)
            {
               this.§=J§ = § 7§;
            }
         }
      }
      
      private function §43§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§5V§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§5V§ = true;
               this.§2!9§ = true;
            }
         }
      }
      
      private function §0=§() : void
      {
         if(this.§5V§)
         {
            if(this.§,%§ < this.§,!I§)
            {
               if(!this.§2!9§)
               {
                  this.§,!I§ = this.§,%§;
               }
               else
               {
                  this.§,%§ = this.§,!I§;
               }
            }
            else if(!this.§2!9§)
            {
               this.§,%§ = this.§,!I§;
            }
            else
            {
               this.§,!I§ = this.§,%§;
            }
         }
      }
      
      private function §&C§() : void
      {
         if(!this.§,c§ && this.§,%§ > 1)
         {
            this.§,%§ = 1;
         }
         else if(this.§,c§ && !this.§-$§ && this.§,%§ < 1)
         {
            this.§,%§ = 1;
         }
         if(!this.§2%§ && this.§,!I§ > 1)
         {
            this.§,!I§ = 1;
         }
         else if(this.§2%§ && !this.§%H§ && this.§,!I§ < 1)
         {
            this.§,!I§ = 1;
         }
      }
      
      private function §3B§() : void
      {
         if(this.§=J§ == §0!-§)
         {
            this.§,%§ = Math.sqrt(this.§,%§);
            this.§,!I§ = Math.sqrt(this.§,!I§);
         }
         else if(this.§=J§ == § 7§)
         {
            this.§,%§ *= this.§,%§;
            this.§,!I§ *= this.§,!I§;
         }
      }
      
      private function §`]§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §@!M§ || param4 == §8;§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §2r§ || param4 == §]!'§)
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
         else if(param4 == §>c§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§5V§)
               {
                  if(!this.§2!9§)
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
      
      private function §[[§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §@!M§ || param4 == §8;§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §2r§ || param4 == §]!'§)
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
         else if(param4 == §>c§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§5V§)
               {
                  if(!this.§2!9§)
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
      
      public function §<d§(param1:Number, param2:Number) : void
      {
         this.§?J§ = param1;
         this.§]H§ = param2;
         this.§,%§ = param1 / this.§2n§;
         this.§,!I§ = param2 / this.§%4§;
         this.§=M§ = this.§,%§;
         this.§7!U§ = this.§,!I§;
         this.§0=§();
         this.§&C§();
         this.§=m§ = this.§,%§;
         this.§'O§ = this.§,!I§;
         this.§3B§();
         this.§+!L§ = this.§[[§(this.§3W§,param1,this.§2n§,this.§;Q§,this.§-$§,this.§,c§,this.§,%§,this.§=M§,this.§=m§);
         this.§!;§ = this.§[[§(this.§2F§,param2,this.§%4§,this.§+4§,this.§%H§,this.§2%§,this.§,!I§,this.§7!U§,this.§'O§);
      }
   }
}
