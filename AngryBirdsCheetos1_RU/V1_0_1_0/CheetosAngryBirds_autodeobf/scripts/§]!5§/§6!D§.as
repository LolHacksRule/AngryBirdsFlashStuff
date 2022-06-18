package §]!5§
{
   public class §6!D§
   {
      
      private static const §3d§:String = "RIGHT";
      
      private static const §`K§:String = "LEFT";
      
      private static const §?>§:String = "TOP";
      
      private static const §2!!§:String = "BOTTOM";
      
      private static const §'$§:String = "CENTER";
      
      private static const §34§:String = "NORMAL";
      
      private static const §8!C§:String = "SQRT";
      
      private static const §]!I§:String = "SQR";
       
      
      private var §-a§:Number = 0.0;
      
      private var §-`§:Number = 0.0;
      
      private var §-l§:Number = 1.0;
      
      private var §7W§:Number = 1.0;
      
      private var §1!<§:Number = 1.0;
      
      private var §;!'§:Number = 1.0;
      
      private var §-w§:String = "LEFT";
      
      private var §[G§:String = "TOP";
      
      private var §]n§:Boolean = false;
      
      private var §!!K§:Boolean = false;
      
      private var §#!+§:Boolean = false;
      
      private var §"J§:Boolean = false;
      
      private var §8^§:Boolean = false;
      
      private var §%!$§:Boolean = false;
      
      private var § Z§:String = "NORMAL";
      
      private var §?D§:Number = 1.0;
      
      private var §2!S§:Number = 1.0;
      
      private var §9!`§:Number = 1.0;
      
      private var §&!M§:Number = 1.0;
      
      private var §<Z§:Number = 1.0;
      
      private var §1N§:Number = 1.0;
      
      private var § !2§:Number = 0.0;
      
      private var §'!F§:Number = 0.0;
      
      private var §!y§:Number = 1.0;
      
      private var §9!A§:Number = 1.0;
      
      public function §6!D§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§-a§ = param1;
         this.§-`§ = param2;
         this.§ !2§ = param1;
         this.§'!F§ = param2;
         this.§!y§ = param3;
         this.§9!A§ = param4;
         this.§-l§ = param5;
         this.§7W§ = param6;
         this.§1!<§ = param5;
         this.§;!'§ = param6;
         this.§>C§(param7);
         this.§!!=§(param8);
         this.§^h§(param9);
         this.§>!`§(param10);
         this.§"s§(param11);
         this.§=!_§(param12);
         this.§ Z§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§ !2§;
      }
      
      public function get y() : Number
      {
         return this.§'!F§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§-a§ = this.§+D§(param1,this.§1!<§,this.§-l§,this.§-w§,this.§]n§,this.§!!K§,this.§?D§,this.§9!`§,this.§<Z§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§-`§ = this.§+D§(param1,this.§;!'§,this.§7W§,this.§[G§,this.§#!+§,this.§"J§,this.§2!S§,this.§&!M§,this.§1N§);
      }
      
      public function get scaleX() : Number
      {
         return this.§!y§ * this.§#d§;
      }
      
      public function get scaleY() : Number
      {
         return this.§9!A§ * this.§#!#§;
      }
      
      private function get §#d§() : Number
      {
         if(this.§]n§ || this.§!!K§)
         {
            return this.§?D§;
         }
         return 1;
      }
      
      private function get §#!#§() : Number
      {
         if(this.§#!+§ || this.§"J§)
         {
            return this.§2!S§;
         }
         return 1;
      }
      
      private function §>C§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §3d§ || param1 == §'$§)
            {
               this.§-w§ = param1;
            }
         }
      }
      
      private function §!!=§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §2!!§ || param1 == §'$§)
            {
               this.§[G§ = param1;
            }
         }
      }
      
      private function §^h§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§]n§ = true;
               this.§!!K§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§]n§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§!!K§ = true;
            }
         }
      }
      
      private function §>!`§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§#!+§ = true;
               this.§"J§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§#!+§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§"J§ = true;
            }
         }
      }
      
      private function §=!_§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §8!C§)
            {
               this.§ Z§ = §8!C§;
            }
            else if(param1.toUpperCase() == §]!I§)
            {
               this.§ Z§ = §]!I§;
            }
         }
      }
      
      private function §"s§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§8^§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§8^§ = true;
               this.§%!$§ = true;
            }
         }
      }
      
      private function §5'§() : void
      {
         if(this.§8^§)
         {
            if(this.§?D§ < this.§2!S§)
            {
               if(!this.§%!$§)
               {
                  this.§2!S§ = this.§?D§;
               }
               else
               {
                  this.§?D§ = this.§2!S§;
               }
            }
            else if(!this.§%!$§)
            {
               this.§?D§ = this.§2!S§;
            }
            else
            {
               this.§2!S§ = this.§?D§;
            }
         }
      }
      
      private function §0Y§() : void
      {
         if(!this.§!!K§ && this.§?D§ > 1)
         {
            this.§?D§ = 1;
         }
         else if(this.§!!K§ && !this.§]n§ && this.§?D§ < 1)
         {
            this.§?D§ = 1;
         }
         if(!this.§"J§ && this.§2!S§ > 1)
         {
            this.§2!S§ = 1;
         }
         else if(this.§"J§ && !this.§#!+§ && this.§2!S§ < 1)
         {
            this.§2!S§ = 1;
         }
      }
      
      private function §>9§() : void
      {
         if(this.§ Z§ == §8!C§)
         {
            this.§?D§ = Math.sqrt(this.§?D§);
            this.§2!S§ = Math.sqrt(this.§2!S§);
         }
         else if(this.§ Z§ == §]!I§)
         {
            this.§?D§ *= this.§?D§;
            this.§2!S§ *= this.§2!S§;
         }
      }
      
      private function §+D§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §`K§ || param4 == §?>§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §3d§ || param4 == §2!!§)
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
         else if(param4 == §'$§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§8^§)
               {
                  if(!this.§%!$§)
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
      
      private function §'4§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §`K§ || param4 == §?>§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §3d§ || param4 == §2!!§)
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
         else if(param4 == §'$§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§8^§)
               {
                  if(!this.§%!$§)
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
      
      public function §8a§(param1:Number, param2:Number) : void
      {
         this.§1!<§ = param1;
         this.§;!'§ = param2;
         this.§?D§ = param1 / this.§-l§;
         this.§2!S§ = param2 / this.§7W§;
         this.§9!`§ = this.§?D§;
         this.§&!M§ = this.§2!S§;
         this.§5'§();
         this.§0Y§();
         this.§<Z§ = this.§?D§;
         this.§1N§ = this.§2!S§;
         this.§>9§();
         this.§ !2§ = this.§'4§(this.§-a§,param1,this.§-l§,this.§-w§,this.§]n§,this.§!!K§,this.§?D§,this.§9!`§,this.§<Z§);
         this.§'!F§ = this.§'4§(this.§-`§,param2,this.§7W§,this.§[G§,this.§#!+§,this.§"J§,this.§2!S§,this.§&!M§,this.§1N§);
      }
   }
}
