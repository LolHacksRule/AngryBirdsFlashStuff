package §4!j§
{
   public class §6Q§
   {
      
      private static const §,+§:String = "RIGHT";
      
      private static const §7R§:String = "LEFT";
      
      private static const §>!w§:String = "TOP";
      
      private static const §,'§:String = "BOTTOM";
      
      private static const §true §:String = "CENTER";
      
      private static const §]!Q§:String = "NORMAL";
      
      private static const §"1§:String = "SQRT";
      
      private static const §0m§:String = "SQR";
       
      
      private var §%!t§:Number = 0.0;
      
      private var §5!R§:Number = 0.0;
      
      private var §&#§:Number = 1.0;
      
      private var § d§:Number = 1.0;
      
      private var §6!`§:Number = 1.0;
      
      private var §01§:Number = 1.0;
      
      private var §1!J§:String = "LEFT";
      
      private var §1!_§:String = "TOP";
      
      private var §5"5§:Boolean = false;
      
      private var §3!7§:Boolean = false;
      
      private var §^3§:Boolean = false;
      
      private var §+!Y§:Boolean = false;
      
      private var §%`§:Boolean = false;
      
      private var §7-§:Boolean = false;
      
      private var §7F§:String = "NORMAL";
      
      private var §?&§:Number = 1.0;
      
      private var §#!F§:Number = 1.0;
      
      private var § !=§:Number = 1.0;
      
      private var §]!l§:Number = 1.0;
      
      private var §[!,§:Number = 1.0;
      
      private var §@!U§:Number = 1.0;
      
      private var mX:Number = 0.0;
      
      private var mY:Number = 0.0;
      
      private var §@u§:Number = 1.0;
      
      private var §;!c§:Number = 1.0;
      
      public function §6Q§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§%!t§ = param1;
         this.§5!R§ = param2;
         this.mX = param1;
         this.mY = param2;
         this.§&#§ = param3;
         this.§ d§ = param4;
         this.§6!`§ = param5;
         this.§01§ = param6;
         this.§@u§ = param5;
         this.§;!c§ = param6;
         this.§default§(param7);
         this.§8"6§(param8);
         this.§!!z§(param9);
         this.§08§(param10);
         this.§@_§(param11);
         this.§"B§(param12);
         this.§7F§ = param12;
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
         this.§%!t§ = this.§@!y§(param1,this.§@u§,this.§6!`§,this.§1!J§,this.§5"5§,this.§3!7§,this.§?&§,this.§ !=§,this.§[!,§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§5!R§ = this.§@!y§(param1,this.§;!c§,this.§01§,this.§1!_§,this.§^3§,this.§+!Y§,this.§#!F§,this.§]!l§,this.§@!U§);
      }
      
      public function get scaleX() : Number
      {
         return this.§&#§ * this.§&!z§;
      }
      
      public function get scaleY() : Number
      {
         return this.§ d§ * this.§2j§;
      }
      
      private function get §&!z§() : Number
      {
         if(this.§5"5§ || this.§3!7§)
         {
            return this.§?&§;
         }
         return 1;
      }
      
      private function get §2j§() : Number
      {
         if(this.§^3§ || this.§+!Y§)
         {
            return this.§#!F§;
         }
         return 1;
      }
      
      private function §default§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §,+§ || param1 == §true §)
            {
               this.§1!J§ = param1;
            }
         }
      }
      
      private function §8"6§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §,'§ || param1 == §true §)
            {
               this.§1!_§ = param1;
            }
         }
      }
      
      private function §!!z§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§5"5§ = true;
               this.§3!7§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§5"5§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§3!7§ = true;
            }
         }
      }
      
      private function §08§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§^3§ = true;
               this.§+!Y§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§^3§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§+!Y§ = true;
            }
         }
      }
      
      private function §"B§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §"1§)
            {
               this.§7F§ = §"1§;
            }
            else if(param1.toUpperCase() == §0m§)
            {
               this.§7F§ = §0m§;
            }
         }
      }
      
      private function §@_§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§%`§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§%`§ = true;
               this.§7-§ = true;
            }
         }
      }
      
      private function §[1§() : void
      {
         if(this.§%`§)
         {
            if(this.§?&§ < this.§#!F§)
            {
               if(!this.§7-§)
               {
                  this.§#!F§ = this.§?&§;
               }
               else
               {
                  this.§?&§ = this.§#!F§;
               }
            }
            else if(!this.§7-§)
            {
               this.§?&§ = this.§#!F§;
            }
            else
            {
               this.§#!F§ = this.§?&§;
            }
         }
      }
      
      private function § !G§() : void
      {
         if(!this.§3!7§ && this.§?&§ > 1)
         {
            this.§?&§ = 1;
         }
         else if(!this.§5"5§ && this.§?&§ < 1)
         {
            this.§?&§ = 1;
         }
         if(!this.§+!Y§ && this.§#!F§ > 1)
         {
            this.§#!F§ = 1;
         }
         else if(!this.§^3§ && this.§#!F§ < 1)
         {
            this.§#!F§ = 1;
         }
      }
      
      private function §9"1§() : void
      {
         if(this.§7F§ == §"1§)
         {
            this.§?&§ = Math.sqrt(this.§?&§);
            this.§#!F§ = Math.sqrt(this.§#!F§);
         }
         else if(this.§7F§ == §0m§)
         {
            this.§?&§ *= this.§?&§;
            this.§#!F§ *= this.§#!F§;
         }
      }
      
      private function §@!y§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §7R§ || param4 == §>!w§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §,+§ || param4 == §,'§)
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
         else if(param4 == §true §)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§%`§)
               {
                  if(!this.§7-§)
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
      
      private function §-!0§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §7R§ || param4 == §>!w§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §,+§ || param4 == §,'§)
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
         else if(param4 == §true §)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§%`§)
               {
                  if(!this.§7-§)
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
      
      public function §2L§(param1:Number, param2:Number) : void
      {
         this.§@u§ = param1;
         this.§;!c§ = param2;
         this.§?&§ = param1 / this.§6!`§;
         this.§#!F§ = param2 / this.§01§;
         this.§ !=§ = this.§?&§;
         this.§]!l§ = this.§#!F§;
         this.§[1§();
         this.§ !G§();
         this.§[!,§ = this.§?&§;
         this.§@!U§ = this.§#!F§;
         this.§9"1§();
         this.mX = this.§-!0§(this.§%!t§,param1,this.§6!`§,this.§1!J§,this.§5"5§,this.§3!7§,this.§?&§,this.§ !=§,this.§[!,§);
         this.mY = this.§-!0§(this.§5!R§,param2,this.§01§,this.§1!_§,this.§^3§,this.§+!Y§,this.§#!F§,this.§]!l§,this.§@!U§);
      }
   }
}
