package §6!K§
{
   public class §5!O§
   {
      
      private static const §3u§:String = "RIGHT";
      
      private static const §5s§:String = "LEFT";
      
      private static const §,!"§:String = "TOP";
      
      private static const §8!3§:String = "BOTTOM";
      
      private static const §6!?§:String = "CENTER";
      
      private static const §0!C§:String = "NORMAL";
      
      private static const §#!@§:String = "SQRT";
      
      private static const §>!<§:String = "SQR";
       
      
      private var §`l§:Number = 0.0;
      
      private var §2l§:Number = 0.0;
      
      private var §4!^§:Number = 1.0;
      
      private var §2!§:Number = 1.0;
      
      private var §[Y§:Number = 1.0;
      
      private var §`K§:Number = 1.0;
      
      private var §?j§:String = "LEFT";
      
      private var §,`§:String = "TOP";
      
      private var §!H§:Boolean = false;
      
      private var §"Z§:Boolean = false;
      
      private var §8!M§:Boolean = false;
      
      private var §!]§:Boolean = false;
      
      private var §@G§:Boolean = false;
      
      private var §6!I§:Boolean = false;
      
      private var §@[§:String = "NORMAL";
      
      private var §0X§:Number = 1.0;
      
      private var §5!,§:Number = 1.0;
      
      private var §true§:Number = 1.0;
      
      private var §!8§:Number = 1.0;
      
      private var §#!2§:Number = 1.0;
      
      private var §1m§:Number = 1.0;
      
      private var § W§:Number = 0.0;
      
      private var §9!9§:Number = 0.0;
      
      private var §1]§:Number = 1.0;
      
      private var §"j§:Number = 1.0;
      
      public function §5!O§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§`l§ = param1;
         this.§2l§ = param2;
         this.§ W§ = param1;
         this.§9!9§ = param2;
         this.§4!^§ = param3;
         this.§2!§ = param4;
         this.§[Y§ = param5;
         this.§`K§ = param6;
         this.§1]§ = param5;
         this.§"j§ = param6;
         this.§,!E§(param7);
         this.§7Y§(param8);
         this.§<!'§(param9);
         this.§,h§(param10);
         this.§%x§(param11);
         this.§5j§(param12);
         this.§@[§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§ W§;
      }
      
      public function get y() : Number
      {
         return this.§9!9§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§`l§ = this.§!!W§(param1,this.§1]§,this.§[Y§,this.§?j§,this.§!H§,this.§"Z§,this.§0X§,this.§true§,this.§#!2§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§2l§ = this.§!!W§(param1,this.§"j§,this.§`K§,this.§,`§,this.§8!M§,this.§!]§,this.§5!,§,this.§!8§,this.§1m§);
      }
      
      public function get scaleX() : Number
      {
         return this.§4!^§ * this.§!!3§;
      }
      
      public function get scaleY() : Number
      {
         return this.§2!§ * this.§-!§;
      }
      
      private function get §!!3§() : Number
      {
         if(this.§!H§ || this.§"Z§)
         {
            return this.§0X§;
         }
         return 1;
      }
      
      private function get §-!§() : Number
      {
         if(this.§8!M§ || this.§!]§)
         {
            return this.§5!,§;
         }
         return 1;
      }
      
      private function §,!E§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §3u§ || param1 == §6!?§)
            {
               this.§?j§ = param1;
            }
         }
      }
      
      private function §7Y§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §8!3§ || param1 == §6!?§)
            {
               this.§,`§ = param1;
            }
         }
      }
      
      private function §<!'§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§!H§ = true;
               this.§"Z§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§!H§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§"Z§ = true;
            }
         }
      }
      
      private function §,h§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§8!M§ = true;
               this.§!]§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§8!M§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§!]§ = true;
            }
         }
      }
      
      private function §5j§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §#!@§)
            {
               this.§@[§ = §#!@§;
            }
            else if(param1.toUpperCase() == §>!<§)
            {
               this.§@[§ = §>!<§;
            }
         }
      }
      
      private function §%x§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§@G§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§@G§ = true;
               this.§6!I§ = true;
            }
         }
      }
      
      private function §^"§() : void
      {
         if(this.§@G§)
         {
            if(this.§0X§ < this.§5!,§)
            {
               if(!this.§6!I§)
               {
                  this.§5!,§ = this.§0X§;
               }
               else
               {
                  this.§0X§ = this.§5!,§;
               }
            }
            else if(!this.§6!I§)
            {
               this.§0X§ = this.§5!,§;
            }
            else
            {
               this.§5!,§ = this.§0X§;
            }
         }
      }
      
      private function §3!B§() : void
      {
         if(!this.§"Z§ && this.§0X§ > 1)
         {
            this.§0X§ = 1;
         }
         else if(!this.§!H§ && this.§0X§ < 1)
         {
            this.§0X§ = 1;
         }
         if(!this.§!]§ && this.§5!,§ > 1)
         {
            this.§5!,§ = 1;
         }
         else if(!this.§8!M§ && this.§5!,§ < 1)
         {
            this.§5!,§ = 1;
         }
      }
      
      private function §#!5§() : void
      {
         if(this.§@[§ == §#!@§)
         {
            this.§0X§ = Math.sqrt(this.§0X§);
            this.§5!,§ = Math.sqrt(this.§5!,§);
         }
         else if(this.§@[§ == §>!<§)
         {
            this.§0X§ *= this.§0X§;
            this.§5!,§ *= this.§5!,§;
         }
      }
      
      private function §!!W§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §5s§ || param4 == §,!"§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §3u§ || param4 == §8!3§)
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
         else if(param4 == §6!?§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§@G§)
               {
                  if(!this.§6!I§)
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
      
      private function §[u§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §5s§ || param4 == §,!"§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §3u§ || param4 == §8!3§)
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
         else if(param4 == §6!?§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§@G§)
               {
                  if(!this.§6!I§)
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
      
      public function §!g§(param1:Number, param2:Number) : void
      {
         this.§1]§ = param1;
         this.§"j§ = param2;
         this.§0X§ = param1 / this.§[Y§;
         this.§5!,§ = param2 / this.§`K§;
         this.§true§ = this.§0X§;
         this.§!8§ = this.§5!,§;
         this.§^"§();
         this.§3!B§();
         this.§#!2§ = this.§0X§;
         this.§1m§ = this.§5!,§;
         this.§#!5§();
         this.§ W§ = this.§[u§(this.§`l§,param1,this.§[Y§,this.§?j§,this.§!H§,this.§"Z§,this.§0X§,this.§true§,this.§#!2§);
         this.§9!9§ = this.§[u§(this.§2l§,param2,this.§`K§,this.§,`§,this.§8!M§,this.§!]§,this.§5!,§,this.§!8§,this.§1m§);
      }
   }
}
