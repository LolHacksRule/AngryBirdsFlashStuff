package §4##§
{
   public class §"!=§
   {
      
      private static const §'!%§:String = "RIGHT";
      
      private static const §]"k§:String = "LEFT";
      
      private static const §8"T§:String = "TOP";
      
      private static const §<p§:String = "BOTTOM";
      
      private static const §"!p§:String = "CENTER";
      
      private static const §1!9§:String = "NORMAL";
      
      private static const §'"N§:String = "SQRT";
      
      private static const §^"c§:String = "SQR";
      
      private static const §1!>§:String = "NORMAL_SQRT";
       
      
      private var §`";§:Number = 0.0;
      
      private var §4"b§:Number = 0.0;
      
      private var §9"Q§:Number = 1.0;
      
      private var §0!,§:Number = 1.0;
      
      private var §&!w§:Number = 1.0;
      
      private var §4B§:Number = 1.0;
      
      private var §?S§:String = "LEFT";
      
      private var § "P§:String = "TOP";
      
      private var §6! §:Boolean = false;
      
      private var §^"m§:Boolean = false;
      
      private var §5!L§:Boolean = false;
      
      private var §[x§:Boolean = false;
      
      private var §-"J§:Boolean = false;
      
      private var §<s§:Boolean = false;
      
      private var §""u§:String = "NORMAL";
      
      private var §1!<§:Number = 1.0;
      
      private var §^#+§:Number = 1.0;
      
      private var §2h§:Number = 1.0;
      
      private var §6N§:Number = 1.0;
      
      private var §!"V§:Number = 1.0;
      
      private var §`!T§:Number = 1.0;
      
      private var §]!_§:Number = 0.0;
      
      private var §#j§:Number = 0.0;
      
      private var §<"z§:Number = 1.0;
      
      private var §5#0§:Number = 1.0;
      
      public function §"!=§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§`";§ = param1;
         this.§4"b§ = param2;
         this.§]!_§ = param1;
         this.§#j§ = param2;
         this.§9"Q§ = param3;
         this.§0!,§ = param4;
         this.§&!w§ = param5;
         this.§4B§ = param6;
         this.§<"z§ = param5;
         this.§5#0§ = param6;
         this.§]!a§(param7);
         this.§2"L§(param8);
         this.§=[§(param9);
         this.§%"[§(param10);
         this.§7"Y§(param11);
         this.§4!I§(param12);
         this.§""u§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§]!_§;
      }
      
      public function get y() : Number
      {
         return this.§#j§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§`";§ = this.§8q§(param1,this.§<"z§,this.§&!w§,this.§?S§,this.§6! §,this.§^"m§,this.§1!<§,this.§2h§,this.§!"V§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§4"b§ = this.§8q§(param1,this.§5#0§,this.§4B§,this.§ "P§,this.§5!L§,this.§[x§,this.§^#+§,this.§6N§,this.§`!T§);
      }
      
      public function get scaleX() : Number
      {
         return this.§9"Q§ * this.§`!#§;
      }
      
      public function get scaleY() : Number
      {
         return this.§0!,§ * this.§5R§;
      }
      
      private function get §`!#§() : Number
      {
         if(this.§6! § || this.§^"m§)
         {
            return this.§1!<§;
         }
         return 1;
      }
      
      private function get §5R§() : Number
      {
         if(this.§5!L§ || this.§[x§)
         {
            return this.§^#+§;
         }
         return 1;
      }
      
      private function §]!a§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §'!%§ || param1 == §"!p§)
            {
               this.§?S§ = param1;
            }
         }
      }
      
      private function §2"L§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §<p§ || param1 == §"!p§)
            {
               this.§ "P§ = param1;
            }
         }
      }
      
      private function §=[§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§6! § = true;
               this.§^"m§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§6! § = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§^"m§ = true;
            }
         }
      }
      
      private function §%"[§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§5!L§ = true;
               this.§[x§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§5!L§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§[x§ = true;
            }
         }
      }
      
      private function §4!I§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §'"N§)
            {
               this.§""u§ = §'"N§;
            }
            else if(param1.toUpperCase() == §^"c§)
            {
               this.§""u§ = §^"c§;
            }
            else if(param1.toUpperCase() == §1!>§)
            {
               this.§""u§ = §1!>§;
            }
         }
      }
      
      private function §7"Y§(param1:String) : void
      {
         if(param1)
         {
            switch(param1.toUpperCase())
            {
               case "TRUE":
                  this.§-"J§ = true;
                  break;
               case "UP":
                  this.§-"J§ = true;
                  this.§<s§ = true;
            }
         }
      }
      
      private function §'"z§() : void
      {
         if(this.§-"J§)
         {
            if(this.§1!<§ < this.§^#+§)
            {
               if(!this.§<s§)
               {
                  this.§^#+§ = this.§1!<§;
               }
               else
               {
                  this.§1!<§ = this.§^#+§;
               }
            }
            else if(!this.§<s§)
            {
               this.§1!<§ = this.§^#+§;
            }
            else
            {
               this.§^#+§ = this.§1!<§;
            }
         }
      }
      
      private function §2"e§() : void
      {
         if(!this.§^"m§ && this.§1!<§ > 1)
         {
            this.§1!<§ = 1;
         }
         else if(!this.§6! § && this.§1!<§ < 1)
         {
            this.§1!<§ = 1;
         }
         if(!this.§[x§ && this.§^#+§ > 1)
         {
            this.§^#+§ = 1;
         }
         else if(!this.§5!L§ && this.§^#+§ < 1)
         {
            this.§^#+§ = 1;
         }
      }
      
      private function §#!c§() : void
      {
         if(this.§""u§ == §'"N§)
         {
            this.§1!<§ = Math.sqrt(this.§1!<§);
            this.§^#+§ = Math.sqrt(this.§^#+§);
         }
         else if(this.§""u§ == §^"c§)
         {
            this.§1!<§ *= this.§1!<§;
            this.§^#+§ *= this.§^#+§;
         }
         else if(this.§""u§ == §1!>§)
         {
            if(this.§1!<§ > 1)
            {
               this.§1!<§ = Math.sqrt(this.§1!<§);
            }
            if(this.§^#+§ > 1)
            {
               this.§^#+§ = Math.sqrt(this.§^#+§);
            }
         }
      }
      
      private function §8q§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §]"k§ || param4 == §8"T§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §'!%§ || param4 == §<p§)
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
         else if(param4 == §"!p§)
         {
            if(param5 || param6)
            {
               _loc10_ = (param1 - param2 / 2) / param7 + param3 / 2;
            }
            else
            {
               _loc10_ = param1 - param2 / 2 + param3 / 2;
            }
         }
         return _loc10_;
      }
      
      private function §!",§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number) : Number
      {
         var _loc8_:Number = param1;
         if(param4 == §]"k§ || param4 == §8"T§)
         {
            if(param5 || param6)
            {
               _loc8_ = param1 * param7;
            }
         }
         else if(param4 == §'!%§ || param4 == §<p§)
         {
            if(param5 || param6)
            {
               _loc8_ = param2 - (param3 - param1) * param7;
            }
            else
            {
               _loc8_ = param2 - (param3 - param1);
            }
         }
         else if(param4 == §"!p§)
         {
            if(param5 || param6)
            {
               _loc8_ = param2 / 2 + (param1 - param3 / 2) * param7;
            }
            else
            {
               _loc8_ = param2 / 2 + (param1 - param3 / 2);
            }
         }
         return _loc8_;
      }
      
      public function §]c§(param1:Number, param2:Number) : void
      {
         this.§<"z§ = param1;
         this.§5#0§ = param2;
         this.§1!<§ = param1 / this.§&!w§;
         this.§1!<§ = param1 / this.§&!w§;
         this.§^#+§ = param2 / this.§4B§;
         this.§2h§ = this.§1!<§;
         this.§6N§ = this.§^#+§;
         this.§'"z§();
         this.§2"e§();
         this.§!"V§ = this.§1!<§;
         this.§`!T§ = this.§^#+§;
         this.§#!c§();
         this.§]!_§ = this.§!",§(this.§`";§,param1,this.§&!w§,this.§?S§,this.§6! §,this.§^"m§,this.§1!<§);
         this.§#j§ = this.§!",§(this.§4"b§,param2,this.§4B§,this.§ "P§,this.§5!L§,this.§[x§,this.§^#+§);
      }
   }
}
