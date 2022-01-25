package §&V§
{
   public class §-h§
   {
      
      private static const §#W§:String = "RIGHT";
      
      private static const §!W§:String = "LEFT";
      
      private static const §;!`§:String = "TOP";
      
      private static const §1m§:String = "BOTTOM";
      
      private static const §""§:String = "CENTER";
      
      private static const §7!G§:String = "NORMAL";
      
      private static const §'!;§:String = "SQRT";
      
      private static const §!!9§:String = "SQR";
       
      
      private var §@-§:Number = 0.0;
      
      private var §<w§:Number = 0.0;
      
      private var §[!1§:Number = 1.0;
      
      private var §%z§:Number = 1.0;
      
      private var §`$§:Number = 1.0;
      
      private var §5G§:Number = 1.0;
      
      private var §4!Z§:String = "LEFT";
      
      private var §>A§:String = "TOP";
      
      private var §[m§:Boolean = false;
      
      private var §,!<§:Boolean = false;
      
      private var §8E§:Boolean = false;
      
      private var §8!3§:Boolean = false;
      
      private var § c§:Boolean = false;
      
      private var §^!D§:Boolean = false;
      
      private var §=!"§:String = "NORMAL";
      
      private var §6! §:Number = 1.0;
      
      private var §%!c§:Number = 1.0;
      
      private var §>P§:Number = 1.0;
      
      private var § ![§:Number = 1.0;
      
      private var §'!4§:Number = 1.0;
      
      private var §%0§:Number = 1.0;
      
      private var §!f§:Number = 0.0;
      
      private var §@;§:Number = 0.0;
      
      private var §>!5§:Number = 1.0;
      
      private var §6!-§:Number = 1.0;
      
      public function §-h§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§@-§ = param1;
         this.§<w§ = param2;
         this.§!f§ = param1;
         this.§@;§ = param2;
         this.§>!5§ = param3;
         this.§6!-§ = param4;
         this.§[!1§ = param5;
         this.§%z§ = param6;
         this.§`$§ = param5;
         this.§5G§ = param6;
         this.§,l§(param7);
         this.§%!X§(param8);
         this.§`!%§(param9);
         this.§^]§(param10);
         this.§;G§(param11);
         this.§-!0§(param12);
         this.§=!"§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§!f§;
      }
      
      public function get y() : Number
      {
         return this.§@;§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§@-§ = this.§2N§(param1,this.§`$§,this.§[!1§,this.§4!Z§,this.§[m§,this.§,!<§,this.§6! §,this.§>P§,this.§'!4§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§<w§ = this.§2N§(param1,this.§5G§,this.§%z§,this.§>A§,this.§8E§,this.§8!3§,this.§%!c§,this.§ ![§,this.§%0§);
      }
      
      public function get scaleX() : Number
      {
         return this.§>!5§ * this.§>!S§;
      }
      
      public function get scaleY() : Number
      {
         return this.§6!-§ * this.§ E§;
      }
      
      private function get §>!S§() : Number
      {
         if(this.§[m§ || this.§,!<§)
         {
            return this.§6! §;
         }
         return 1;
      }
      
      private function get § E§() : Number
      {
         if(this.§8E§ || this.§8!3§)
         {
            return this.§%!c§;
         }
         return 1;
      }
      
      private function §,l§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §#W§ || param1 == §""§)
            {
               this.§4!Z§ = param1;
            }
         }
      }
      
      private function §%!X§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §1m§ || param1 == §""§)
            {
               this.§>A§ = param1;
            }
         }
      }
      
      private function §`!%§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§[m§ = true;
               this.§,!<§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§[m§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§,!<§ = true;
            }
         }
      }
      
      private function §^]§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§8E§ = true;
               this.§8!3§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§8E§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§8!3§ = true;
            }
         }
      }
      
      private function §-!0§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §'!;§)
            {
               this.§=!"§ = §'!;§;
            }
            else if(param1.toUpperCase() == §!!9§)
            {
               this.§=!"§ = §!!9§;
            }
         }
      }
      
      private function §;G§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§ c§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§ c§ = true;
               this.§^!D§ = true;
            }
         }
      }
      
      private function §>,§() : void
      {
         if(this.§ c§)
         {
            if(this.§6! § < this.§%!c§)
            {
               if(!this.§^!D§)
               {
                  this.§%!c§ = this.§6! §;
               }
               else
               {
                  this.§6! § = this.§%!c§;
               }
            }
            else if(!this.§^!D§)
            {
               this.§6! § = this.§%!c§;
            }
            else
            {
               this.§%!c§ = this.§6! §;
            }
         }
      }
      
      private function §1!@§() : void
      {
         if(!this.§,!<§ && this.§6! § > 1)
         {
            this.§6! § = 1;
         }
         else if(this.§,!<§ && !this.§[m§ && this.§6! § < 1)
         {
            this.§6! § = 1;
         }
         if(!this.§8!3§ && this.§%!c§ > 1)
         {
            this.§%!c§ = 1;
         }
         else if(this.§8!3§ && !this.§8E§ && this.§%!c§ < 1)
         {
            this.§%!c§ = 1;
         }
      }
      
      private function §6!P§() : void
      {
         if(this.§=!"§ == §'!;§)
         {
            this.§6! § = Math.sqrt(this.§6! §);
            this.§%!c§ = Math.sqrt(this.§%!c§);
         }
         else if(this.§=!"§ == §!!9§)
         {
            this.§6! § *= this.§6! §;
            this.§%!c§ *= this.§%!c§;
         }
      }
      
      private function §2N§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §!W§ || param4 == §;!`§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §#W§ || param4 == §1m§)
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
         else if(param4 == §""§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§ c§)
               {
                  if(!this.§^!D§)
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
      
      private function §[!H§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §!W§ || param4 == §;!`§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §#W§ || param4 == §1m§)
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
         else if(param4 == §""§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§ c§)
               {
                  if(!this.§^!D§)
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
      
      public function §;<§(param1:Number, param2:Number) : void
      {
         this.§`$§ = param1;
         this.§5G§ = param2;
         this.§6! § = param1 / this.§[!1§;
         this.§%!c§ = param2 / this.§%z§;
         this.§>P§ = this.§6! §;
         this.§ ![§ = this.§%!c§;
         this.§>,§();
         this.§1!@§();
         this.§'!4§ = this.§6! §;
         this.§%0§ = this.§%!c§;
         this.§6!P§();
         this.§!f§ = this.§[!H§(this.§@-§,param1,this.§[!1§,this.§4!Z§,this.§[m§,this.§,!<§,this.§6! §,this.§>P§,this.§'!4§);
         this.§@;§ = this.§[!H§(this.§<w§,param2,this.§%z§,this.§>A§,this.§8E§,this.§8!3§,this.§%!c§,this.§ ![§,this.§%0§);
      }
   }
}
