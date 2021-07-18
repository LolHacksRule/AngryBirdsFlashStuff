package §5X§
{
   public class §&!H§
   {
      
      private static const §!"#§:String = "RIGHT";
      
      private static const §4!x§:String = "LEFT";
      
      private static const §1"D§:String = "TOP";
      
      private static const §%s§:String = "BOTTOM";
      
      private static const §9!Q§:String = "CENTER";
      
      private static const §%v§:String = "NORMAL";
      
      private static const §2"B§:String = "SQRT";
      
      private static const §,!_§:String = "SQR";
      
      private static const §0$§:String = "NORMAL_SQRT";
       
      
      private var §&m§:Number = 0.0;
      
      private var §throw§:Number = 0.0;
      
      private var §9"0§:Number = 1.0;
      
      private var §>Q§:Number = 1.0;
      
      private var §!"D§:Number = 1.0;
      
      private var §5!j§:Number = 1.0;
      
      private var §]7§:String = "LEFT";
      
      private var §;!H§:String = "TOP";
      
      private var §4!7§:Boolean = false;
      
      private var §'"6§:Boolean = false;
      
      private var § p§:Boolean = false;
      
      private var §%N§:Boolean = false;
      
      private var §!=§:Boolean = false;
      
      private var §%$§:Boolean = false;
      
      private var §try§:String = "NORMAL";
      
      private var § F§:Number = 1.0;
      
      private var §2c§:Number = 1.0;
      
      private var §+!u§:Number = 1.0;
      
      private var §%"3§:Number = 1.0;
      
      private var §2m§:Number = 1.0;
      
      private var §`!h§:Number = 1.0;
      
      private var §""4§:Number = 0.0;
      
      private var §%W§:Number = 0.0;
      
      private var § !%§:Number = 1.0;
      
      private var §=D§:Number = 1.0;
      
      public function §&!H§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§&m§ = param1;
         this.§throw§ = param2;
         this.§""4§ = param1;
         this.§%W§ = param2;
         this.§9"0§ = param3;
         this.§>Q§ = param4;
         this.§!"D§ = param5;
         this.§5!j§ = param6;
         this.§ !%§ = param5;
         this.§=D§ = param6;
         this.§0"D§(param7);
         this.§[!"§(param8);
         this.§#"0§(param9);
         this.§;!,§(param10);
         this.§#!U§(param11);
         this.§<b§(param12);
         this.§try§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§""4§;
      }
      
      public function get y() : Number
      {
         return this.§%W§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§&m§ = this.§!+§(param1,this.§ !%§,this.§!"D§,this.§]7§,this.§4!7§,this.§'"6§,this.§ F§,this.§+!u§,this.§2m§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§throw§ = this.§!+§(param1,this.§=D§,this.§5!j§,this.§;!H§,this.§ p§,this.§%N§,this.§2c§,this.§%"3§,this.§`!h§);
      }
      
      public function get scaleX() : Number
      {
         return this.§9"0§ * this.§6g§;
      }
      
      public function get scaleY() : Number
      {
         return this.§>Q§ * this.§8H§;
      }
      
      private function get §6g§() : Number
      {
         if(this.§4!7§ || this.§'"6§)
         {
            return this.§ F§;
         }
         return 1;
      }
      
      private function get §8H§() : Number
      {
         if(this.§ p§ || this.§%N§)
         {
            return this.§2c§;
         }
         return 1;
      }
      
      private function §0"D§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §!"#§ || param1 == §9!Q§)
            {
               this.§]7§ = param1;
            }
         }
      }
      
      private function §[!"§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §%s§ || param1 == §9!Q§)
            {
               this.§;!H§ = param1;
            }
         }
      }
      
      private function §#"0§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§4!7§ = true;
               this.§'"6§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§4!7§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§'"6§ = true;
            }
         }
      }
      
      private function §;!,§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§ p§ = true;
               this.§%N§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§ p§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§%N§ = true;
            }
         }
      }
      
      private function §<b§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §2"B§)
            {
               this.§try§ = §2"B§;
            }
            else if(param1.toUpperCase() == §,!_§)
            {
               this.§try§ = §,!_§;
            }
            else if(param1.toUpperCase() == §0$§)
            {
               this.§try§ = §0$§;
            }
         }
      }
      
      private function §#!U§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§!=§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§!=§ = true;
               this.§%$§ = true;
            }
         }
      }
      
      private function §8!b§() : void
      {
         if(this.§!=§)
         {
            if(this.§ F§ < this.§2c§)
            {
               if(!this.§%$§)
               {
                  this.§2c§ = this.§ F§;
               }
               else
               {
                  this.§ F§ = this.§2c§;
               }
            }
            else if(!this.§%$§)
            {
               this.§ F§ = this.§2c§;
            }
            else
            {
               this.§2c§ = this.§ F§;
            }
         }
      }
      
      private function §7!!§() : void
      {
         if(!this.§'"6§ && this.§ F§ > 1)
         {
            this.§ F§ = 1;
         }
         else if(!this.§4!7§ && this.§ F§ < 1)
         {
            this.§ F§ = 1;
         }
         if(!this.§%N§ && this.§2c§ > 1)
         {
            this.§2c§ = 1;
         }
         else if(!this.§ p§ && this.§2c§ < 1)
         {
            this.§2c§ = 1;
         }
      }
      
      private function §;!C§() : void
      {
         if(this.§try§ == §2"B§)
         {
            this.§ F§ = Math.sqrt(this.§ F§);
            this.§2c§ = Math.sqrt(this.§2c§);
         }
         else if(this.§try§ == §,!_§)
         {
            this.§ F§ *= this.§ F§;
            this.§2c§ *= this.§2c§;
         }
         else if(this.§try§ == §0$§)
         {
            if(this.§ F§ > 1)
            {
               this.§ F§ = Math.sqrt(this.§ F§);
            }
            if(this.§2c§ > 1)
            {
               this.§2c§ = Math.sqrt(this.§2c§);
            }
         }
      }
      
      private function §!+§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §4!x§ || param4 == §1"D§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §!"#§ || param4 == §%s§)
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
         else if(param4 == §9!Q§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§!=§)
               {
                  if(!this.§%$§)
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
      
      private function §[7§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §4!x§ || param4 == §1"D§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §!"#§ || param4 == §%s§)
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
         else if(param4 == §9!Q§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§!=§)
               {
                  if(!this.§%$§)
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
      
      public function §'-§(param1:Number, param2:Number) : void
      {
         this.§ !%§ = param1;
         this.§=D§ = param2;
         this.§ F§ = param1 / this.§!"D§;
         this.§2c§ = param2 / this.§5!j§;
         this.§+!u§ = this.§ F§;
         this.§%"3§ = this.§2c§;
         this.§8!b§();
         this.§7!!§();
         this.§2m§ = this.§ F§;
         this.§`!h§ = this.§2c§;
         this.§;!C§();
         this.§""4§ = this.§[7§(this.§&m§,param1,this.§!"D§,this.§]7§,this.§4!7§,this.§'"6§,this.§ F§,this.§+!u§,this.§2m§);
         this.§%W§ = this.§[7§(this.§throw§,param2,this.§5!j§,this.§;!H§,this.§ p§,this.§%N§,this.§2c§,this.§%"3§,this.§`!h§);
      }
   }
}
