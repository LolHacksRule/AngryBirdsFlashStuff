package §;!0§
{
   public class §]c§
   {
      
      private static const § ^§:String = "RIGHT";
      
      private static const §'a§:String = "LEFT";
      
      private static const §7;§:String = "TOP";
      
      private static const §8A§:String = "BOTTOM";
      
      private static const §2@§:String = "CENTER";
      
      private static const §1!M§:String = "NORMAL";
      
      private static const §37§:String = "SQRT";
      
      private static const §>!§:String = "SQR";
       
      
      private var §69§:Number = 0.0;
      
      private var §]!2§:Number = 0.0;
      
      private var §^!]§:Number = 1.0;
      
      private var §!!$§:Number = 1.0;
      
      private var §&!%§:Number = 1.0;
      
      private var §-!I§:Number = 1.0;
      
      private var §!!c§:String = "LEFT";
      
      private var §>t§:String = "TOP";
      
      private var §!M§:Boolean = false;
      
      private var §,j§:Boolean = false;
      
      private var §^!6§:Boolean = false;
      
      private var §<!=§:Boolean = false;
      
      private var §0!C§:Boolean = false;
      
      private var §!U§:Boolean = false;
      
      private var §?%§:String = "NORMAL";
      
      private var §%!X§:Number = 1.0;
      
      private var §=H§:Number = 1.0;
      
      private var §5c§:Number = 1.0;
      
      private var §^5§:Number = 1.0;
      
      private var §2j§:Number = 1.0;
      
      private var §<!H§:Number = 1.0;
      
      private var §[!#§:Number = 0.0;
      
      private var §?=§:Number = 0.0;
      
      private var §4A§:Number = 1.0;
      
      private var §[X§:Number = 1.0;
      
      public function §]c§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§69§ = param1;
         this.§]!2§ = param2;
         this.§[!#§ = param1;
         this.§?=§ = param2;
         this.§^!]§ = param3;
         this.§!!$§ = param4;
         this.§&!%§ = param5;
         this.§-!I§ = param6;
         this.§4A§ = param5;
         this.§[X§ = param6;
         this.§@!R§(param7);
         this.§;U§(param8);
         this.§,;§(param9);
         this.§+%§(param10);
         this.§[!Y§(param11);
         this.§7!2§(param12);
         this.§?%§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§[!#§;
      }
      
      public function get y() : Number
      {
         return this.§?=§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§69§ = this.§2!5§(param1,this.§4A§,this.§&!%§,this.§!!c§,this.§!M§,this.§,j§,this.§%!X§,this.§5c§,this.§2j§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§]!2§ = this.§2!5§(param1,this.§[X§,this.§-!I§,this.§>t§,this.§^!6§,this.§<!=§,this.§=H§,this.§^5§,this.§<!H§);
      }
      
      public function get scaleX() : Number
      {
         return this.§^!]§ * this.§8!T§;
      }
      
      public function get scaleY() : Number
      {
         return this.§!!$§ * this.§^!=§;
      }
      
      private function get §8!T§() : Number
      {
         if(this.§!M§ || this.§,j§)
         {
            return this.§%!X§;
         }
         return 1;
      }
      
      private function get §^!=§() : Number
      {
         if(this.§^!6§ || this.§<!=§)
         {
            return this.§=H§;
         }
         return 1;
      }
      
      private function §@!R§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == § ^§ || param1 == §2@§)
            {
               this.§!!c§ = param1;
            }
         }
      }
      
      private function §;U§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §8A§ || param1 == §2@§)
            {
               this.§>t§ = param1;
            }
         }
      }
      
      private function §,;§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§!M§ = true;
               this.§,j§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§!M§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§,j§ = true;
            }
         }
      }
      
      private function §+%§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§^!6§ = true;
               this.§<!=§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§^!6§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§<!=§ = true;
            }
         }
      }
      
      private function §7!2§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §37§)
            {
               this.§?%§ = §37§;
            }
            else if(param1.toUpperCase() == §>!§)
            {
               this.§?%§ = §>!§;
            }
         }
      }
      
      private function §[!Y§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§0!C§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§0!C§ = true;
               this.§!U§ = true;
            }
         }
      }
      
      private function §0!_§() : void
      {
         if(this.§0!C§)
         {
            if(this.§%!X§ < this.§=H§)
            {
               if(!this.§!U§)
               {
                  this.§=H§ = this.§%!X§;
               }
               else
               {
                  this.§%!X§ = this.§=H§;
               }
            }
            else if(!this.§!U§)
            {
               this.§%!X§ = this.§=H§;
            }
            else
            {
               this.§=H§ = this.§%!X§;
            }
         }
      }
      
      private function §[x§() : void
      {
         if(!this.§,j§ && this.§%!X§ > 1)
         {
            this.§%!X§ = 1;
         }
         else if(!this.§!M§ && this.§%!X§ < 1)
         {
            this.§%!X§ = 1;
         }
         if(!this.§<!=§ && this.§=H§ > 1)
         {
            this.§=H§ = 1;
         }
         else if(!this.§^!6§ && this.§=H§ < 1)
         {
            this.§=H§ = 1;
         }
      }
      
      private function §=X§() : void
      {
         if(this.§?%§ == §37§)
         {
            this.§%!X§ = Math.sqrt(this.§%!X§);
            this.§=H§ = Math.sqrt(this.§=H§);
         }
         else if(this.§?%§ == §>!§)
         {
            this.§%!X§ *= this.§%!X§;
            this.§=H§ *= this.§=H§;
         }
      }
      
      private function §2!5§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §'a§ || param4 == §7;§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == § ^§ || param4 == §8A§)
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
         else if(param4 == §2@§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§0!C§)
               {
                  if(!this.§!U§)
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
      
      private function §-!E§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §'a§ || param4 == §7;§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == § ^§ || param4 == §8A§)
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
         else if(param4 == §2@§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§0!C§)
               {
                  if(!this.§!U§)
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
      
      public function §>N§(param1:Number, param2:Number) : void
      {
         this.§4A§ = param1;
         this.§[X§ = param2;
         this.§%!X§ = param1 / this.§&!%§;
         this.§=H§ = param2 / this.§-!I§;
         this.§5c§ = this.§%!X§;
         this.§^5§ = this.§=H§;
         this.§0!_§();
         this.§[x§();
         this.§2j§ = this.§%!X§;
         this.§<!H§ = this.§=H§;
         this.§=X§();
         this.§[!#§ = this.§-!E§(this.§69§,param1,this.§&!%§,this.§!!c§,this.§!M§,this.§,j§,this.§%!X§,this.§5c§,this.§2j§);
         this.§?=§ = this.§-!E§(this.§]!2§,param2,this.§-!I§,this.§>t§,this.§^!6§,this.§<!=§,this.§=H§,this.§^5§,this.§<!H§);
      }
   }
}
