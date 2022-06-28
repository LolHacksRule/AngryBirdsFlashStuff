package §>!<§
{
   public class §&U§
   {
      
      private static const §"!%§:String = "RIGHT";
      
      private static const §-!6§:String = "LEFT";
      
      private static const §7s§:String = "TOP";
      
      private static const §+f§:String = "BOTTOM";
      
      private static const §9P§:String = "CENTER";
      
      private static const §&f§:String = "NORMAL";
      
      private static const §?!N§:String = "SQRT";
      
      private static const §8!W§:String = "SQR";
       
      
      private var §-U§:Number = 0.0;
      
      private var §"1§:Number = 0.0;
      
      private var §;E§:Number = 1.0;
      
      private var §8q§:Number = 1.0;
      
      private var §-]§:Number = 1.0;
      
      private var §42§:Number = 1.0;
      
      private var §5L§:String = "LEFT";
      
      private var §7w§:String = "TOP";
      
      private var § <§:Boolean = false;
      
      private var §>!_§:Boolean = false;
      
      private var §`=§:Boolean = false;
      
      private var §-!P§:Boolean = false;
      
      private var §`O§:Boolean = false;
      
      private var §=d§:Boolean = false;
      
      private var §0!c§:String = "NORMAL";
      
      private var §?N§:Number = 1.0;
      
      private var §;!9§:Number = 1.0;
      
      private var §3!G§:Number = 1.0;
      
      private var §0!R§:Number = 1.0;
      
      private var §>!^§:Number = 1.0;
      
      private var §^!C§:Number = 1.0;
      
      private var §`!Z§:Number = 0.0;
      
      private var §[§:Number = 0.0;
      
      private var §,!,§:Number = 1.0;
      
      private var § !+§:Number = 1.0;
      
      public function §&U§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§-U§ = param1;
         this.§"1§ = param2;
         this.§`!Z§ = param1;
         this.§[§ = param2;
         this.§,!,§ = param3;
         this.§ !+§ = param4;
         this.§;E§ = param5;
         this.§8q§ = param6;
         this.§-]§ = param5;
         this.§42§ = param6;
         this.§<!^§(param7);
         this.§-!M§(param8);
         this.§#B§(param9);
         this.§'s§(param10);
         this.§#2§(param11);
         this.§]!>§(param12);
         this.§0!c§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§`!Z§;
      }
      
      public function get y() : Number
      {
         return this.§[§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§-U§ = this.§+p§(param1,this.§-]§,this.§;E§,this.§5L§,this.§ <§,this.§>!_§,this.§?N§,this.§3!G§,this.§>!^§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§"1§ = this.§+p§(param1,this.§42§,this.§8q§,this.§7w§,this.§`=§,this.§-!P§,this.§;!9§,this.§0!R§,this.§^!C§);
      }
      
      public function get scaleX() : Number
      {
         return this.§,!,§ * this.§-9§;
      }
      
      public function get scaleY() : Number
      {
         return this.§ !+§ * this.§8+§;
      }
      
      private function get §-9§() : Number
      {
         if(this.§ <§ || this.§>!_§)
         {
            return this.§?N§;
         }
         return 1;
      }
      
      private function get §8+§() : Number
      {
         if(this.§`=§ || this.§-!P§)
         {
            return this.§;!9§;
         }
         return 1;
      }
      
      private function §<!^§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §"!%§ || param1 == §9P§)
            {
               this.§5L§ = param1;
            }
         }
      }
      
      private function §-!M§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §+f§ || param1 == §9P§)
            {
               this.§7w§ = param1;
            }
         }
      }
      
      private function §#B§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§ <§ = true;
               this.§>!_§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§ <§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§>!_§ = true;
            }
         }
      }
      
      private function §'s§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§`=§ = true;
               this.§-!P§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§`=§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§-!P§ = true;
            }
         }
      }
      
      private function §]!>§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §?!N§)
            {
               this.§0!c§ = §?!N§;
            }
            else if(param1.toUpperCase() == §8!W§)
            {
               this.§0!c§ = §8!W§;
            }
         }
      }
      
      private function §#2§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§`O§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§`O§ = true;
               this.§=d§ = true;
            }
         }
      }
      
      private function §9b§() : void
      {
         if(this.§`O§)
         {
            if(this.§?N§ < this.§;!9§)
            {
               if(!this.§=d§)
               {
                  this.§;!9§ = this.§?N§;
               }
               else
               {
                  this.§?N§ = this.§;!9§;
               }
            }
            else if(!this.§=d§)
            {
               this.§?N§ = this.§;!9§;
            }
            else
            {
               this.§;!9§ = this.§?N§;
            }
         }
      }
      
      private function §="§() : void
      {
         if(!this.§>!_§ && this.§?N§ > 1)
         {
            this.§?N§ = 1;
         }
         else if(this.§>!_§ && !this.§ <§ && this.§?N§ < 1)
         {
            this.§?N§ = 1;
         }
         if(!this.§-!P§ && this.§;!9§ > 1)
         {
            this.§;!9§ = 1;
         }
         else if(this.§-!P§ && !this.§`=§ && this.§;!9§ < 1)
         {
            this.§;!9§ = 1;
         }
      }
      
      private function §%i§() : void
      {
         if(this.§0!c§ == §?!N§)
         {
            this.§?N§ = Math.sqrt(this.§?N§);
            this.§;!9§ = Math.sqrt(this.§;!9§);
         }
         else if(this.§0!c§ == §8!W§)
         {
            this.§?N§ *= this.§?N§;
            this.§;!9§ *= this.§;!9§;
         }
      }
      
      private function §+p§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §-!6§ || param4 == §7s§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §"!%§ || param4 == §+f§)
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
         else if(param4 == §9P§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§`O§)
               {
                  if(!this.§=d§)
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
      
      private function §0!I§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §-!6§ || param4 == §7s§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §"!%§ || param4 == §+f§)
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
         else if(param4 == §9P§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§`O§)
               {
                  if(!this.§=d§)
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
      
      public function §8r§(param1:Number, param2:Number) : void
      {
         this.§-]§ = param1;
         this.§42§ = param2;
         this.§?N§ = param1 / this.§;E§;
         this.§;!9§ = param2 / this.§8q§;
         this.§3!G§ = this.§?N§;
         this.§0!R§ = this.§;!9§;
         this.§9b§();
         this.§="§();
         this.§>!^§ = this.§?N§;
         this.§^!C§ = this.§;!9§;
         this.§%i§();
         this.§`!Z§ = this.§0!I§(this.§-U§,param1,this.§;E§,this.§5L§,this.§ <§,this.§>!_§,this.§?N§,this.§3!G§,this.§>!^§);
         this.§[§ = this.§0!I§(this.§"1§,param2,this.§8q§,this.§7w§,this.§`=§,this.§-!P§,this.§;!9§,this.§0!R§,this.§^!C§);
      }
   }
}
