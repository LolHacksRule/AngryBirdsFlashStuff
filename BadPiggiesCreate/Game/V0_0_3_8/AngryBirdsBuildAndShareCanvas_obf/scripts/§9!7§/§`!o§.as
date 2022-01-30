package §9!7§
{
   public class §`!o§
   {
      
      private static const §8!F§:String = "RIGHT";
      
      private static const §-Z§:String = "LEFT";
      
      private static const §9"0§:String = "TOP";
      
      private static const §<!d§:String = "BOTTOM";
      
      private static const §0G§:String = "CENTER";
      
      private static const §0!M§:String = "NORMAL";
      
      private static const §?!k§:String = "SQRT";
      
      private static const §-?§:String = "SQR";
       
      
      private var §8!7§:Number = 0.0;
      
      private var § !5§:Number = 0.0;
      
      private var §?x§:Number = 1.0;
      
      private var §^s§:Number = 1.0;
      
      private var §%!7§:Number = 1.0;
      
      private var §]"&§:Number = 1.0;
      
      private var §?!c§:String = "LEFT";
      
      private var §3!C§:String = "TOP";
      
      private var §-!J§:Boolean = false;
      
      private var §5r§:Boolean = false;
      
      private var §3?§:Boolean = false;
      
      private var §0z§:Boolean = false;
      
      private var §1!Q§:Boolean = false;
      
      private var §0!P§:Boolean = false;
      
      private var §1w§:String = "NORMAL";
      
      private var §%w§:Number = 1.0;
      
      private var §%@§:Number = 1.0;
      
      private var §#!=§:Number = 1.0;
      
      private var §"R§:Number = 1.0;
      
      private var §'`§:Number = 1.0;
      
      private var §3"5§:Number = 1.0;
      
      private var mX:Number = 0.0;
      
      private var mY:Number = 0.0;
      
      private var §!!]§:Number = 1.0;
      
      private var §8B§:Number = 1.0;
      
      public function §`!o§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§8!7§ = param1;
         this.§ !5§ = param2;
         this.mX = param1;
         this.mY = param2;
         this.§?x§ = param3;
         this.§^s§ = param4;
         this.§%!7§ = param5;
         this.§]"&§ = param6;
         this.§!!]§ = param5;
         this.§8B§ = param6;
         this.§8!R§(param7);
         this.§5!S§(param8);
         this.§'Z§(param9);
         this.§-S§(param10);
         this.§+"1§(param11);
         this.§!^§(param12);
         this.§1w§ = param12;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set x(param1:Number) : void
      {
         this.§8!7§ = this.§<"'§(param1,this.§!!]§,this.§%!7§,this.§?!c§,this.§-!J§,this.§5r§,this.§%w§,this.§#!=§,this.§'`§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§ !5§ = this.§<"'§(param1,this.§8B§,this.§]"&§,this.§3!C§,this.§3?§,this.§0z§,this.§%@§,this.§"R§,this.§3"5§);
      }
      
      public function get scaleX() : Number
      {
         return this.§?x§ * this.§^!S§;
      }
      
      public function get scaleY() : Number
      {
         return this.§^s§ * this.§]!A§;
      }
      
      private function get §^!S§() : Number
      {
         if(this.§-!J§ || this.§5r§)
         {
            return this.§%w§;
         }
         return 1;
      }
      
      private function get §]!A§() : Number
      {
         if(this.§3?§ || this.§0z§)
         {
            return this.§%@§;
         }
         return 1;
      }
      
      private function §8!R§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §8!F§ || param1 == §0G§)
            {
               this.§?!c§ = param1;
            }
         }
      }
      
      private function §5!S§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §<!d§ || param1 == §0G§)
            {
               this.§3!C§ = param1;
            }
         }
      }
      
      private function §'Z§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§-!J§ = true;
               this.§5r§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§-!J§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§5r§ = true;
            }
         }
      }
      
      private function §-S§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§3?§ = true;
               this.§0z§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§3?§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§0z§ = true;
            }
         }
      }
      
      private function §!^§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §?!k§)
            {
               this.§1w§ = §?!k§;
            }
            else if(param1.toUpperCase() == §-?§)
            {
               this.§1w§ = §-?§;
            }
         }
      }
      
      private function §+"1§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§1!Q§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§1!Q§ = true;
               this.§0!P§ = true;
            }
         }
      }
      
      private function §4q§() : void
      {
         if(this.§1!Q§)
         {
            if(this.§%w§ < this.§%@§)
            {
               if(!this.§0!P§)
               {
                  this.§%@§ = this.§%w§;
               }
               else
               {
                  this.§%w§ = this.§%@§;
               }
            }
            else if(!this.§0!P§)
            {
               this.§%w§ = this.§%@§;
            }
            else
            {
               this.§%@§ = this.§%w§;
            }
         }
      }
      
      private function §<9§() : void
      {
         if(!this.§5r§ && this.§%w§ > 1)
         {
            this.§%w§ = 1;
         }
         else if(!this.§-!J§ && this.§%w§ < 1)
         {
            this.§%w§ = 1;
         }
         if(!this.§0z§ && this.§%@§ > 1)
         {
            this.§%@§ = 1;
         }
         else if(!this.§3?§ && this.§%@§ < 1)
         {
            this.§%@§ = 1;
         }
      }
      
      private function §'"§() : void
      {
         if(this.§1w§ == §?!k§)
         {
            this.§%w§ = Math.sqrt(this.§%w§);
            this.§%@§ = Math.sqrt(this.§%@§);
         }
         else if(this.§1w§ == §-?§)
         {
            this.§%w§ *= this.§%w§;
            this.§%@§ *= this.§%@§;
         }
      }
      
      private function §<"'§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §-Z§ || param4 == §9"0§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §8!F§ || param4 == §<!d§)
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
         else if(param4 == §0G§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§1!Q§)
               {
                  if(!this.§0!P§)
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
      
      private function §'!A§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §-Z§ || param4 == §9"0§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §8!F§ || param4 == §<!d§)
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
         else if(param4 == §0G§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§1!Q§)
               {
                  if(!this.§0!P§)
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
      
      public function §@! §(param1:Number, param2:Number) : void
      {
         this.§!!]§ = param1;
         this.§8B§ = param2;
         this.§%w§ = param1 / this.§%!7§;
         this.§%@§ = param2 / this.§]"&§;
         this.§#!=§ = this.§%w§;
         this.§"R§ = this.§%@§;
         this.§4q§();
         this.§<9§();
         this.§'`§ = this.§%w§;
         this.§3"5§ = this.§%@§;
         this.§'"§();
         this.mX = this.§'!A§(this.§8!7§,param1,this.§%!7§,this.§?!c§,this.§-!J§,this.§5r§,this.§%w§,this.§#!=§,this.§'`§);
         this.mY = this.§'!A§(this.§ !5§,param2,this.§]"&§,this.§3!C§,this.§3?§,this.§0z§,this.§%@§,this.§"R§,this.§3"5§);
      }
   }
}
