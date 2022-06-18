package §7J§
{
   public class §=F§
   {
      
      private static const §]!N§:String = "RIGHT";
      
      private static const §1!#§:String = "LEFT";
      
      private static const §[w§:String = "TOP";
      
      private static const §-I§:String = "BOTTOM";
      
      private static const §<Z§:String = "CENTER";
      
      private static const §'f§:String = "NORMAL";
      
      private static const §'!#§:String = "SQRT";
      
      private static const §6c§:String = "SQR";
       
      
      private var §?!;§:Number = 0.0;
      
      private var §"@§:Number = 0.0;
      
      private var § !1§:Number = 1.0;
      
      private var §try§:Number = 1.0;
      
      private var §5F§:Number = 1.0;
      
      private var §=$§:Number = 1.0;
      
      private var §[!'§:String = "LEFT";
      
      private var §-!I§:String = "TOP";
      
      private var §"!#§:Boolean = false;
      
      private var § o§:Boolean = false;
      
      private var §=Z§:Boolean = false;
      
      private var §?§:Boolean = false;
      
      private var §&`§:Boolean = false;
      
      private var §8%§:Boolean = false;
      
      private var §'k§:String = "NORMAL";
      
      private var §<c§:Number = 1.0;
      
      private var §?!L§:Number = 1.0;
      
      private var §7@§:Number = 1.0;
      
      private var §`@§:Number = 1.0;
      
      private var § !4§:Number = 1.0;
      
      private var §5X§:Number = 1.0;
      
      private var §3y§:Number = 0.0;
      
      private var §6@§:Number = 0.0;
      
      private var §9C§:Number = 1.0;
      
      private var §6X§:Number = 1.0;
      
      public function §=F§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§?!;§ = param1;
         this.§"@§ = param2;
         this.§3y§ = param1;
         this.§6@§ = param2;
         this.§ !1§ = param3;
         this.§try§ = param4;
         this.§5F§ = param5;
         this.§=$§ = param6;
         this.§9C§ = param5;
         this.§6X§ = param6;
         this.§?!'§(param7);
         this.§#W§(param8);
         this.§5G§(param9);
         this.§0!?§(param10);
         this.§+]§(param11);
         this.§%0§(param12);
         this.§'k§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§3y§;
      }
      
      public function get y() : Number
      {
         return this.§6@§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§?!;§ = this.§-H§(param1,this.§9C§,this.§5F§,this.§[!'§,this.§"!#§,this.§ o§,this.§<c§,this.§7@§,this.§ !4§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§"@§ = this.§-H§(param1,this.§6X§,this.§=$§,this.§-!I§,this.§=Z§,this.§?§,this.§?!L§,this.§`@§,this.§5X§);
      }
      
      public function get scaleX() : Number
      {
         return this.§ !1§ * this.§^`§;
      }
      
      public function get scaleY() : Number
      {
         return this.§try§ * this.§1"§;
      }
      
      private function get §^`§() : Number
      {
         if(this.§"!#§ || this.§ o§)
         {
            return this.§<c§;
         }
         return 1;
      }
      
      private function get §1"§() : Number
      {
         if(this.§=Z§ || this.§?§)
         {
            return this.§?!L§;
         }
         return 1;
      }
      
      private function §?!'§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §]!N§ || param1 == §<Z§)
            {
               this.§[!'§ = param1;
            }
         }
      }
      
      private function §#W§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §-I§ || param1 == §<Z§)
            {
               this.§-!I§ = param1;
            }
         }
      }
      
      private function §5G§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§"!#§ = true;
               this.§ o§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§"!#§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§ o§ = true;
            }
         }
      }
      
      private function §0!?§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§=Z§ = true;
               this.§?§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§=Z§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§?§ = true;
            }
         }
      }
      
      private function §%0§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §'!#§)
            {
               this.§'k§ = §'!#§;
            }
            else if(param1.toUpperCase() == §6c§)
            {
               this.§'k§ = §6c§;
            }
         }
      }
      
      private function §+]§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§&`§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§&`§ = true;
               this.§8%§ = true;
            }
         }
      }
      
      private function §%_§() : void
      {
         if(this.§&`§)
         {
            if(this.§<c§ < this.§?!L§)
            {
               if(!this.§8%§)
               {
                  this.§?!L§ = this.§<c§;
               }
               else
               {
                  this.§<c§ = this.§?!L§;
               }
            }
            else if(!this.§8%§)
            {
               this.§<c§ = this.§?!L§;
            }
            else
            {
               this.§?!L§ = this.§<c§;
            }
         }
      }
      
      private function §6T§() : void
      {
         if(!this.§ o§ && this.§<c§ > 1)
         {
            this.§<c§ = 1;
         }
         else if(!this.§"!#§ && this.§<c§ < 1)
         {
            this.§<c§ = 1;
         }
         if(!this.§?§ && this.§?!L§ > 1)
         {
            this.§?!L§ = 1;
         }
         else if(!this.§=Z§ && this.§?!L§ < 1)
         {
            this.§?!L§ = 1;
         }
      }
      
      private function §+!N§() : void
      {
         if(this.§'k§ == §'!#§)
         {
            this.§<c§ = Math.sqrt(this.§<c§);
            this.§?!L§ = Math.sqrt(this.§?!L§);
         }
         else if(this.§'k§ == §6c§)
         {
            this.§<c§ *= this.§<c§;
            this.§?!L§ *= this.§?!L§;
         }
      }
      
      private function §-H§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §1!#§ || param4 == §[w§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §]!N§ || param4 == §-I§)
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
         else if(param4 == §<Z§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§&`§)
               {
                  if(!this.§8%§)
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
      
      private function §>$§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §1!#§ || param4 == §[w§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §]!N§ || param4 == §-I§)
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
         else if(param4 == §<Z§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§&`§)
               {
                  if(!this.§8%§)
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
      
      public function §+!G§(param1:Number, param2:Number) : void
      {
         this.§9C§ = param1;
         this.§6X§ = param2;
         this.§<c§ = param1 / this.§5F§;
         this.§?!L§ = param2 / this.§=$§;
         this.§7@§ = this.§<c§;
         this.§`@§ = this.§?!L§;
         this.§%_§();
         this.§6T§();
         this.§ !4§ = this.§<c§;
         this.§5X§ = this.§?!L§;
         this.§+!N§();
         this.§3y§ = this.§>$§(this.§?!;§,param1,this.§5F§,this.§[!'§,this.§"!#§,this.§ o§,this.§<c§,this.§7@§,this.§ !4§);
         this.§6@§ = this.§>$§(this.§"@§,param2,this.§=$§,this.§-!I§,this.§=Z§,this.§?§,this.§?!L§,this.§`@§,this.§5X§);
      }
   }
}
