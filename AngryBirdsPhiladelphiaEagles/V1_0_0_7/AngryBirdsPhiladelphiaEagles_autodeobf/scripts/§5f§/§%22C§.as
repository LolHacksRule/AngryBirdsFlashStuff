package §5f§
{
   public class §"C§
   {
      
      private static const §3!#§:String = "RIGHT";
      
      private static const §]k§:String = "LEFT";
      
      private static const §0A§:String = "TOP";
      
      private static const §,i§:String = "BOTTOM";
      
      private static const §28§:String = "CENTER";
      
      private static const §]V§:String = "NORMAL";
      
      private static const §>V§:String = "SQRT";
      
      private static const §5D§:String = "SQR";
       
      
      private var § H§:Number = 0.0;
      
      private var §?!6§:Number = 0.0;
      
      private var §1V§:Number = 1.0;
      
      private var §get §:Number = 1.0;
      
      private var §+!M§:Number = 1.0;
      
      private var §9,§:Number = 1.0;
      
      private var §^!L§:String = "LEFT";
      
      private var §?!0§:String = "TOP";
      
      private var §0I§:Boolean = false;
      
      private var §[P§:Boolean = false;
      
      private var final:Boolean = false;
      
      private var §2!3§:Boolean = false;
      
      private var §,n§:Boolean = false;
      
      private var §><§:Boolean = false;
      
      private var §1I§:String = "NORMAL";
      
      private var §>l§:Number = 1.0;
      
      private var §7! §:Number = 1.0;
      
      private var §;!N§:Number = 1.0;
      
      private var § G§:Number = 1.0;
      
      private var §-! §:Number = 1.0;
      
      private var §7§:Number = 1.0;
      
      private var §#+§:Number = 0.0;
      
      private var §+9§:Number = 0.0;
      
      private var §<g§:Number = 1.0;
      
      private var §^!#§:Number = 1.0;
      
      public function §"C§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§ H§ = param1;
         this.§?!6§ = param2;
         this.§#+§ = param1;
         this.§+9§ = param2;
         this.§<g§ = param3;
         this.§^!#§ = param4;
         this.§1V§ = param5;
         this.§get § = param6;
         this.§+!M§ = param5;
         this.§9,§ = param6;
         this.§85§(param7);
         this.§^s§(param8);
         this.§3!J§(param9);
         this.§9T§(param10);
         this.§63§(param11);
         this.§8^§(param12);
         this.§1I§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§#+§;
      }
      
      public function get y() : Number
      {
         return this.§+9§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§ H§ = this.§8@§(param1,this.§+!M§,this.§1V§,this.§^!L§,this.§0I§,this.§[P§,this.§>l§,this.§;!N§,this.§-! §);
      }
      
      public function set y(param1:Number) : void
      {
         this.§?!6§ = this.§8@§(param1,this.§9,§,this.§get §,this.§?!0§,this.final,this.§2!3§,this.§7! §,this.§ G§,this.§7§);
      }
      
      public function get scaleX() : Number
      {
         return this.§<g§ * this.§,!-§;
      }
      
      public function get scaleY() : Number
      {
         return this.§^!#§ * this.§"a§;
      }
      
      private function get §,!-§() : Number
      {
         if(this.§0I§ || this.§[P§)
         {
            return this.§>l§;
         }
         return 1;
      }
      
      private function get §"a§() : Number
      {
         if(this.final || this.§2!3§)
         {
            return this.§7! §;
         }
         return 1;
      }
      
      private function §85§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §3!#§ || param1 == §28§)
            {
               this.§^!L§ = param1;
            }
         }
      }
      
      private function §^s§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §,i§ || param1 == §28§)
            {
               this.§?!0§ = param1;
            }
         }
      }
      
      private function §3!J§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§0I§ = true;
               this.§[P§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§0I§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§[P§ = true;
            }
         }
      }
      
      private function §9T§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.final = true;
               this.§2!3§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.final = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§2!3§ = true;
            }
         }
      }
      
      private function §8^§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §>V§)
            {
               this.§1I§ = §>V§;
            }
            else if(param1.toUpperCase() == §5D§)
            {
               this.§1I§ = §5D§;
            }
         }
      }
      
      private function §63§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§,n§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§,n§ = true;
               this.§><§ = true;
            }
         }
      }
      
      private function §+!§() : void
      {
         if(this.§,n§)
         {
            if(this.§>l§ < this.§7! §)
            {
               if(!this.§><§)
               {
                  this.§7! § = this.§>l§;
               }
               else
               {
                  this.§>l§ = this.§7! §;
               }
            }
            else if(!this.§><§)
            {
               this.§>l§ = this.§7! §;
            }
            else
            {
               this.§7! § = this.§>l§;
            }
         }
      }
      
      private function §7!F§() : void
      {
         if(!this.§[P§ && this.§>l§ > 1)
         {
            this.§>l§ = 1;
         }
         else if(this.§[P§ && !this.§0I§ && this.§>l§ < 1)
         {
            this.§>l§ = 1;
         }
         if(!this.§2!3§ && this.§7! § > 1)
         {
            this.§7! § = 1;
         }
         else if(this.§2!3§ && !this.final && this.§7! § < 1)
         {
            this.§7! § = 1;
         }
      }
      
      private function §&J§() : void
      {
         if(this.§1I§ == §>V§)
         {
            this.§>l§ = Math.sqrt(this.§>l§);
            this.§7! § = Math.sqrt(this.§7! §);
         }
         else if(this.§1I§ == §5D§)
         {
            this.§>l§ *= this.§>l§;
            this.§7! § *= this.§7! §;
         }
      }
      
      private function §8@§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §]k§ || param4 == §0A§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §3!#§ || param4 == §,i§)
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
         else if(param4 == §28§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§,n§)
               {
                  if(!this.§><§)
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
      
      private function §switch§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §]k§ || param4 == §0A§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §3!#§ || param4 == §,i§)
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
         else if(param4 == §28§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§,n§)
               {
                  if(!this.§><§)
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
      
      public function §0!?§(param1:Number, param2:Number) : void
      {
         this.§+!M§ = param1;
         this.§9,§ = param2;
         this.§>l§ = param1 / this.§1V§;
         this.§7! § = param2 / this.§get §;
         this.§;!N§ = this.§>l§;
         this.§ G§ = this.§7! §;
         this.§+!§();
         this.§7!F§();
         this.§-! § = this.§>l§;
         this.§7§ = this.§7! §;
         this.§&J§();
         this.§#+§ = this.§switch§(this.§ H§,param1,this.§1V§,this.§^!L§,this.§0I§,this.§[P§,this.§>l§,this.§;!N§,this.§-! §);
         this.§+9§ = this.§switch§(this.§?!6§,param2,this.§get §,this.§?!0§,this.final,this.§2!3§,this.§7! §,this.§ G§,this.§7§);
      }
   }
}
