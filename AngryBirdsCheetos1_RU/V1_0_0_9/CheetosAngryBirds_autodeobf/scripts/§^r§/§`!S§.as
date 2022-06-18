package §^r§
{
   public class §`!S§
   {
      
      private static const §+!=§:String = "RIGHT";
      
      private static const §2N§:String = "LEFT";
      
      private static const §5!X§:String = "TOP";
      
      private static const § !V§:String = "BOTTOM";
      
      private static const §[F§:String = "CENTER";
      
      private static const §0y§:String = "NORMAL";
      
      private static const §6i§:String = "SQRT";
      
      private static const §&,§:String = "SQR";
       
      
      private var §#7§:Number = 0.0;
      
      private var §&[§:Number = 0.0;
      
      private var §0R§:Number = 1.0;
      
      private var §]f§:Number = 1.0;
      
      private var §,!R§:Number = 1.0;
      
      private var §^!]§:Number = 1.0;
      
      private var §;R§:String = "LEFT";
      
      private var §[j§:String = "TOP";
      
      private var §?l§:Boolean = false;
      
      private var §'!`§:Boolean = false;
      
      private var §7!7§:Boolean = false;
      
      private var §`6§:Boolean = false;
      
      private var §2e§:Boolean = false;
      
      private var § var§:Boolean = false;
      
      private var §6§:String = "NORMAL";
      
      private var §2@§:Number = 1.0;
      
      private var §,-§:Number = 1.0;
      
      private var §^!I§:Number = 1.0;
      
      private var §6!=§:Number = 1.0;
      
      private var §'7§:Number = 1.0;
      
      private var §8!?§:Number = 1.0;
      
      private var §,G§:Number = 0.0;
      
      private var §-+§:Number = 0.0;
      
      private var §6!;§:Number = 1.0;
      
      private var §,Z§:Number = 1.0;
      
      public function §`!S§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§#7§ = param1;
         this.§&[§ = param2;
         this.§,G§ = param1;
         this.§-+§ = param2;
         this.§6!;§ = param3;
         this.§,Z§ = param4;
         this.§0R§ = param5;
         this.§]f§ = param6;
         this.§,!R§ = param5;
         this.§^!]§ = param6;
         this.§`!!§(param7);
         this.§7!4§(param8);
         this.§5!6§(param9);
         this.§const§(param10);
         this.§`s§(param11);
         this.§;J§(param12);
         this.§6§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§,G§;
      }
      
      public function get y() : Number
      {
         return this.§-+§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§#7§ = this.§1!X§(param1,this.§,!R§,this.§0R§,this.§;R§,this.§?l§,this.§'!`§,this.§2@§,this.§^!I§,this.§'7§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§&[§ = this.§1!X§(param1,this.§^!]§,this.§]f§,this.§[j§,this.§7!7§,this.§`6§,this.§,-§,this.§6!=§,this.§8!?§);
      }
      
      public function get scaleX() : Number
      {
         return this.§6!;§ * this.§&J§;
      }
      
      public function get scaleY() : Number
      {
         return this.§,Z§ * this.§+]§;
      }
      
      private function get §&J§() : Number
      {
         if(this.§?l§ || this.§'!`§)
         {
            return this.§2@§;
         }
         return 1;
      }
      
      private function get §+]§() : Number
      {
         if(this.§7!7§ || this.§`6§)
         {
            return this.§,-§;
         }
         return 1;
      }
      
      private function §`!!§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §+!=§ || param1 == §[F§)
            {
               this.§;R§ = param1;
            }
         }
      }
      
      private function §7!4§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == § !V§ || param1 == §[F§)
            {
               this.§[j§ = param1;
            }
         }
      }
      
      private function §5!6§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§?l§ = true;
               this.§'!`§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§?l§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§'!`§ = true;
            }
         }
      }
      
      private function §const§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§7!7§ = true;
               this.§`6§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§7!7§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§`6§ = true;
            }
         }
      }
      
      private function §;J§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §6i§)
            {
               this.§6§ = §6i§;
            }
            else if(param1.toUpperCase() == §&,§)
            {
               this.§6§ = §&,§;
            }
         }
      }
      
      private function §`s§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§2e§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§2e§ = true;
               this.§ var§ = true;
            }
         }
      }
      
      private function §extends§() : void
      {
         if(this.§2e§)
         {
            if(this.§2@§ < this.§,-§)
            {
               if(!this.§ var§)
               {
                  this.§,-§ = this.§2@§;
               }
               else
               {
                  this.§2@§ = this.§,-§;
               }
            }
            else if(!this.§ var§)
            {
               this.§2@§ = this.§,-§;
            }
            else
            {
               this.§,-§ = this.§2@§;
            }
         }
      }
      
      private function §^!=§() : void
      {
         if(!this.§'!`§ && this.§2@§ > 1)
         {
            this.§2@§ = 1;
         }
         else if(this.§'!`§ && !this.§?l§ && this.§2@§ < 1)
         {
            this.§2@§ = 1;
         }
         if(!this.§`6§ && this.§,-§ > 1)
         {
            this.§,-§ = 1;
         }
         else if(this.§`6§ && !this.§7!7§ && this.§,-§ < 1)
         {
            this.§,-§ = 1;
         }
      }
      
      private function §%!7§() : void
      {
         if(this.§6§ == §6i§)
         {
            this.§2@§ = Math.sqrt(this.§2@§);
            this.§,-§ = Math.sqrt(this.§,-§);
         }
         else if(this.§6§ == §&,§)
         {
            this.§2@§ *= this.§2@§;
            this.§,-§ *= this.§,-§;
         }
      }
      
      private function §1!X§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §2N§ || param4 == §5!X§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §+!=§ || param4 == § !V§)
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
         else if(param4 == §[F§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§2e§)
               {
                  if(!this.§ var§)
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
         if(param4 == §2N§ || param4 == §5!X§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §+!=§ || param4 == § !V§)
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
         else if(param4 == §[F§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§2e§)
               {
                  if(!this.§ var§)
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
      
      public function §!!9§(param1:Number, param2:Number) : void
      {
         this.§,!R§ = param1;
         this.§^!]§ = param2;
         this.§2@§ = param1 / this.§0R§;
         this.§,-§ = param2 / this.§]f§;
         this.§^!I§ = this.§2@§;
         this.§6!=§ = this.§,-§;
         this.§extends§();
         this.§^!=§();
         this.§'7§ = this.§2@§;
         this.§8!?§ = this.§,-§;
         this.§%!7§();
         this.§,G§ = this.§>$§(this.§#7§,param1,this.§0R§,this.§;R§,this.§?l§,this.§'!`§,this.§2@§,this.§^!I§,this.§'7§);
         this.§-+§ = this.§>$§(this.§&[§,param2,this.§]f§,this.§[j§,this.§7!7§,this.§`6§,this.§,-§,this.§6!=§,this.§8!?§);
      }
   }
}
