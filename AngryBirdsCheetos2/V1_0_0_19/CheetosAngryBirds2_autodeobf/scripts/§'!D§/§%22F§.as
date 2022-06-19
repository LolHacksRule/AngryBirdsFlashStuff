package §'!D§
{
   public class §"F§
   {
      
      private static const §28§:String = "RIGHT";
      
      private static const §=f§:String = "LEFT";
      
      private static const §'#§:String = "TOP";
      
      private static const §+!0§:String = "BOTTOM";
      
      private static const §&!R§:String = "CENTER";
      
      private static const §]`§:String = "NORMAL";
      
      private static const §&!;§:String = "SQRT";
      
      private static const §>i§:String = "SQR";
       
      
      private var §-v§:Number = 0.0;
      
      private var §?!D§:Number = 0.0;
      
      private var § !U§:Number = 1.0;
      
      private var §1'§:Number = 1.0;
      
      private var §'Z§:Number = 1.0;
      
      private var §3!2§:Number = 1.0;
      
      private var §+n§:String = "LEFT";
      
      private var §0V§:String = "TOP";
      
      private var §9!^§:Boolean = false;
      
      private var §<!F§:Boolean = false;
      
      private var §%,§:Boolean = false;
      
      private var §2G§:Boolean = false;
      
      private var §<!>§:Boolean = false;
      
      private var §3H§:Boolean = false;
      
      private var §-9§:String = "NORMAL";
      
      private var §1J§:Number = 1.0;
      
      private var §`]§:Number = 1.0;
      
      private var §[!?§:Number = 1.0;
      
      private var §#!B§:Number = 1.0;
      
      private var §=5§:Number = 1.0;
      
      private var §0A§:Number = 1.0;
      
      private var §7F§:Number = 0.0;
      
      private var §6_§:Number = 0.0;
      
      private var §8m§:Number = 1.0;
      
      private var §&d§:Number = 1.0;
      
      public function §"F§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§-v§ = param1;
         this.§?!D§ = param2;
         this.§7F§ = param1;
         this.§6_§ = param2;
         this.§ !U§ = param3;
         this.§1'§ = param4;
         this.§'Z§ = param5;
         this.§3!2§ = param6;
         this.§8m§ = param5;
         this.§&d§ = param6;
         this.§?J§(param7);
         this.§2!5§(param8);
         this.§;!+§(param9);
         this.§6]§(param10);
         this.§+G§(param11);
         this.§?r§(param12);
         this.§-9§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§7F§;
      }
      
      public function get y() : Number
      {
         return this.§6_§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§-v§ = this.§[!P§(param1,this.§8m§,this.§'Z§,this.§+n§,this.§9!^§,this.§<!F§,this.§1J§,this.§[!?§,this.§=5§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§?!D§ = this.§[!P§(param1,this.§&d§,this.§3!2§,this.§0V§,this.§%,§,this.§2G§,this.§`]§,this.§#!B§,this.§0A§);
      }
      
      public function get scaleX() : Number
      {
         return this.§ !U§ * this.§"!b§;
      }
      
      public function get scaleY() : Number
      {
         return this.§1'§ * this.§0!Z§;
      }
      
      private function get §"!b§() : Number
      {
         if(this.§9!^§ || this.§<!F§)
         {
            return this.§1J§;
         }
         return 1;
      }
      
      private function get §0!Z§() : Number
      {
         if(this.§%,§ || this.§2G§)
         {
            return this.§`]§;
         }
         return 1;
      }
      
      private function §?J§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §28§ || param1 == §&!R§)
            {
               this.§+n§ = param1;
            }
         }
      }
      
      private function §2!5§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §+!0§ || param1 == §&!R§)
            {
               this.§0V§ = param1;
            }
         }
      }
      
      private function §;!+§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§9!^§ = true;
               this.§<!F§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§9!^§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§<!F§ = true;
            }
         }
      }
      
      private function §6]§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§%,§ = true;
               this.§2G§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§%,§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§2G§ = true;
            }
         }
      }
      
      private function §?r§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §&!;§)
            {
               this.§-9§ = §&!;§;
            }
            else if(param1.toUpperCase() == §>i§)
            {
               this.§-9§ = §>i§;
            }
         }
      }
      
      private function §+G§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§<!>§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§<!>§ = true;
               this.§3H§ = true;
            }
         }
      }
      
      private function §0!g§() : void
      {
         if(this.§<!>§)
         {
            if(this.§1J§ < this.§`]§)
            {
               if(!this.§3H§)
               {
                  this.§`]§ = this.§1J§;
               }
               else
               {
                  this.§1J§ = this.§`]§;
               }
            }
            else if(!this.§3H§)
            {
               this.§1J§ = this.§`]§;
            }
            else
            {
               this.§`]§ = this.§1J§;
            }
         }
      }
      
      private function §5!I§() : void
      {
         if(!this.§<!F§ && this.§1J§ > 1)
         {
            this.§1J§ = 1;
         }
         else if(!this.§9!^§ && this.§1J§ < 1)
         {
            this.§1J§ = 1;
         }
         if(!this.§2G§ && this.§`]§ > 1)
         {
            this.§`]§ = 1;
         }
         else if(!this.§%,§ && this.§`]§ < 1)
         {
            this.§`]§ = 1;
         }
      }
      
      private function §=r§() : void
      {
         if(this.§-9§ == §&!;§)
         {
            this.§1J§ = Math.sqrt(this.§1J§);
            this.§`]§ = Math.sqrt(this.§`]§);
         }
         else if(this.§-9§ == §>i§)
         {
            this.§1J§ *= this.§1J§;
            this.§`]§ *= this.§`]§;
         }
      }
      
      private function §[!P§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §=f§ || param4 == §'#§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §28§ || param4 == §+!0§)
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
         else if(param4 == §&!R§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§<!>§)
               {
                  if(!this.§3H§)
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
      
      private function §9j§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §=f§ || param4 == §'#§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §28§ || param4 == §+!0§)
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
         else if(param4 == §&!R§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§<!>§)
               {
                  if(!this.§3H§)
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
      
      public function §-g§(param1:Number, param2:Number) : void
      {
         this.§8m§ = param1;
         this.§&d§ = param2;
         this.§1J§ = param1 / this.§'Z§;
         this.§`]§ = param2 / this.§3!2§;
         this.§[!?§ = this.§1J§;
         this.§#!B§ = this.§`]§;
         this.§0!g§();
         this.§5!I§();
         this.§=5§ = this.§1J§;
         this.§0A§ = this.§`]§;
         this.§=r§();
         this.§7F§ = this.§9j§(this.§-v§,param1,this.§'Z§,this.§+n§,this.§9!^§,this.§<!F§,this.§1J§,this.§[!?§,this.§=5§);
         this.§6_§ = this.§9j§(this.§?!D§,param2,this.§3!2§,this.§0V§,this.§%,§,this.§2G§,this.§`]§,this.§#!B§,this.§0A§);
      }
   }
}
