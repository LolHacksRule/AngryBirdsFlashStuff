package §!!S§
{
   public class §4q§
   {
      
      private static const §!J§:String = "RIGHT";
      
      private static const §;$§:String = "LEFT";
      
      private static const §+1§:String = "TOP";
      
      private static const §+9§:String = "BOTTOM";
      
      private static const §!2§:String = "CENTER";
      
      private static const §-F§:String = "NORMAL";
      
      private static const §`v§:String = "SQRT";
      
      private static const §00§:String = "SQR";
       
      
      private var §>!3§:Number = 0.0;
      
      private var § 0§:Number = 0.0;
      
      private var §#<§:Number = 1.0;
      
      private var §"C§:Number = 1.0;
      
      private var §!?§:Number = 1.0;
      
      private var §7!J§:Number = 1.0;
      
      private var §&!W§:String = "LEFT";
      
      private var §?L§:String = "TOP";
      
      private var §^_§:Boolean = false;
      
      private var §'6§:Boolean = false;
      
      private var §&!M§:Boolean = false;
      
      private var §#s§:Boolean = false;
      
      private var §<F§:Boolean = false;
      
      private var §1,§:Boolean = false;
      
      private var §`!B§:String = "NORMAL";
      
      private var §;!'§:Number = 1.0;
      
      private var §'!6§:Number = 1.0;
      
      private var §<,§:Number = 1.0;
      
      private var §1l§:Number = 1.0;
      
      private var §4! §:Number = 1.0;
      
      private var §'3§:Number = 1.0;
      
      private var §6!Z§:Number = 0.0;
      
      private var §,!A§:Number = 0.0;
      
      private var §+_§:Number = 1.0;
      
      private var §4&§:Number = 1.0;
      
      public function §4q§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§>!3§ = param1;
         this.§ 0§ = param2;
         this.§6!Z§ = param1;
         this.§,!A§ = param2;
         this.§+_§ = param3;
         this.§4&§ = param4;
         this.§#<§ = param5;
         this.§"C§ = param6;
         this.§!?§ = param5;
         this.§7!J§ = param6;
         this.§9r§(param7);
         this.§3M§(param8);
         this.§6H§(param9);
         this.§[!V§(param10);
         this.§8!<§(param11);
         this.§`F§(param12);
         this.§`!B§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§6!Z§;
      }
      
      public function get y() : Number
      {
         return this.§,!A§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§>!3§ = this.§&Y§(param1,this.§!?§,this.§#<§,this.§&!W§,this.§^_§,this.§'6§,this.§;!'§,this.§<,§,this.§4! §);
      }
      
      public function set y(param1:Number) : void
      {
         this.§ 0§ = this.§&Y§(param1,this.§7!J§,this.§"C§,this.§?L§,this.§&!M§,this.§#s§,this.§'!6§,this.§1l§,this.§'3§);
      }
      
      public function get scaleX() : Number
      {
         return this.§+_§ * this.§86§;
      }
      
      public function get scaleY() : Number
      {
         return this.§4&§ * this.§^k§;
      }
      
      private function get §86§() : Number
      {
         if(this.§^_§ || this.§'6§)
         {
            return this.§;!'§;
         }
         return 1;
      }
      
      private function get §^k§() : Number
      {
         if(this.§&!M§ || this.§#s§)
         {
            return this.§'!6§;
         }
         return 1;
      }
      
      private function §9r§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §!J§ || param1 == §!2§)
            {
               this.§&!W§ = param1;
            }
         }
      }
      
      private function §3M§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §+9§ || param1 == §!2§)
            {
               this.§?L§ = param1;
            }
         }
      }
      
      private function §6H§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§^_§ = true;
               this.§'6§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§^_§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§'6§ = true;
            }
         }
      }
      
      private function §[!V§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§&!M§ = true;
               this.§#s§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§&!M§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§#s§ = true;
            }
         }
      }
      
      private function §`F§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §`v§)
            {
               this.§`!B§ = §`v§;
            }
            else if(param1.toUpperCase() == §00§)
            {
               this.§`!B§ = §00§;
            }
         }
      }
      
      private function §8!<§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§<F§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§<F§ = true;
               this.§1,§ = true;
            }
         }
      }
      
      private function §'!P§() : void
      {
         if(this.§<F§)
         {
            if(this.§;!'§ < this.§'!6§)
            {
               if(!this.§1,§)
               {
                  this.§'!6§ = this.§;!'§;
               }
               else
               {
                  this.§;!'§ = this.§'!6§;
               }
            }
            else if(!this.§1,§)
            {
               this.§;!'§ = this.§'!6§;
            }
            else
            {
               this.§'!6§ = this.§;!'§;
            }
         }
      }
      
      private function §?!X§() : void
      {
         if(!this.§'6§ && this.§;!'§ > 1)
         {
            this.§;!'§ = 1;
         }
         else if(this.§'6§ && !this.§^_§ && this.§;!'§ < 1)
         {
            this.§;!'§ = 1;
         }
         if(!this.§#s§ && this.§'!6§ > 1)
         {
            this.§'!6§ = 1;
         }
         else if(this.§#s§ && !this.§&!M§ && this.§'!6§ < 1)
         {
            this.§'!6§ = 1;
         }
      }
      
      private function §?!4§() : void
      {
         if(this.§`!B§ == §`v§)
         {
            this.§;!'§ = Math.sqrt(this.§;!'§);
            this.§'!6§ = Math.sqrt(this.§'!6§);
         }
         else if(this.§`!B§ == §00§)
         {
            this.§;!'§ *= this.§;!'§;
            this.§'!6§ *= this.§'!6§;
         }
      }
      
      private function §&Y§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §;$§ || param4 == §+1§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §!J§ || param4 == §+9§)
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
         else if(param4 == §!2§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§<F§)
               {
                  if(!this.§1,§)
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
      
      private function §,!"§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §;$§ || param4 == §+1§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §!J§ || param4 == §+9§)
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
         else if(param4 == §!2§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§<F§)
               {
                  if(!this.§1,§)
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
      
      public function §9,§(param1:Number, param2:Number) : void
      {
         this.§!?§ = param1;
         this.§7!J§ = param2;
         this.§;!'§ = param1 / this.§#<§;
         this.§'!6§ = param2 / this.§"C§;
         this.§<,§ = this.§;!'§;
         this.§1l§ = this.§'!6§;
         this.§'!P§();
         this.§?!X§();
         this.§4! § = this.§;!'§;
         this.§'3§ = this.§'!6§;
         this.§?!4§();
         this.§6!Z§ = this.§,!"§(this.§>!3§,param1,this.§#<§,this.§&!W§,this.§^_§,this.§'6§,this.§;!'§,this.§<,§,this.§4! §);
         this.§,!A§ = this.§,!"§(this.§ 0§,param2,this.§"C§,this.§?L§,this.§&!M§,this.§#s§,this.§'!6§,this.§1l§,this.§'3§);
      }
   }
}
