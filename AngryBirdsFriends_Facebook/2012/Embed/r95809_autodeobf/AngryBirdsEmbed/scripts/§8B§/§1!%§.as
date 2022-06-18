package §8B§
{
   public class §1!%§
   {
      
      private static const §[@§:String = "RIGHT";
      
      private static const § N§:String = "LEFT";
      
      private static const §]A§:String = "TOP";
      
      private static const §]!#§:String = "BOTTOM";
      
      private static const §'l§:String = "CENTER";
      
      private static const §5S§:String = "NORMAL";
      
      private static const §>2§:String = "SQRT";
      
      private static const §1!D§:String = "SQR";
       
      
      private var §>!E§:Number = 0.0;
      
      private var §>!;§:Number = 0.0;
      
      private var §"P§:Number = 1.0;
      
      private var §7s§:Number = 1.0;
      
      private var §#&§:Number = 1.0;
      
      private var § !#§:Number = 1.0;
      
      private var §3r§:String = "LEFT";
      
      private var §=!2§:String = "TOP";
      
      private var §<F§:Boolean = false;
      
      private var §7!D§:Boolean = false;
      
      private var §00§:Boolean = false;
      
      private var §^?§:Boolean = false;
      
      private var §9q§:Boolean = false;
      
      private var §=S§:Boolean = false;
      
      private var §"!C§:String = "NORMAL";
      
      private var §1Y§:Number = 1.0;
      
      private var §4K§:Number = 1.0;
      
      private var §&!%§:Number = 1.0;
      
      private var §"?§:Number = 1.0;
      
      private var §9`§:Number = 1.0;
      
      private var §?!>§:Number = 1.0;
      
      private var §#d§:Number = 0.0;
      
      private var §7^§:Number = 0.0;
      
      private var §3p§:Number = 1.0;
      
      private var §`A§:Number = 1.0;
      
      public function §1!%§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§>!E§ = param1;
         this.§>!;§ = param2;
         this.§#d§ = param1;
         this.§7^§ = param2;
         this.§3p§ = param3;
         this.§`A§ = param4;
         this.§"P§ = param5;
         this.§7s§ = param6;
         this.§#&§ = param5;
         this.§ !#§ = param6;
         this.§%C§(param7);
         this.§#!G§(param8);
         this.§3X§(param9);
         this.§8A§(param10);
         this.§]!@§(param11);
         this.§ W§(param12);
         this.§"!C§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§#d§;
      }
      
      public function get y() : Number
      {
         return this.§7^§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§>!E§ = this.§`!A§(param1,this.§#&§,this.§"P§,this.§3r§,this.§<F§,this.§7!D§,this.§1Y§,this.§&!%§,this.§9`§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§>!;§ = this.§`!A§(param1,this.§ !#§,this.§7s§,this.§=!2§,this.§00§,this.§^?§,this.§4K§,this.§"?§,this.§?!>§);
      }
      
      public function get scaleX() : Number
      {
         return this.§3p§ * this.§[=§;
      }
      
      public function get scaleY() : Number
      {
         return this.§`A§ * this.§4!C§;
      }
      
      private function get §[=§() : Number
      {
         if(this.§<F§ || this.§7!D§)
         {
            return this.§1Y§;
         }
         return 1;
      }
      
      private function get §4!C§() : Number
      {
         if(this.§00§ || this.§^?§)
         {
            return this.§4K§;
         }
         return 1;
      }
      
      private function §%C§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §[@§ || param1 == §'l§)
            {
               this.§3r§ = param1;
            }
         }
      }
      
      private function §#!G§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §]!#§ || param1 == §'l§)
            {
               this.§=!2§ = param1;
            }
         }
      }
      
      private function §3X§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§<F§ = true;
               this.§7!D§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§<F§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§7!D§ = true;
            }
         }
      }
      
      private function §8A§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§00§ = true;
               this.§^?§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§00§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§^?§ = true;
            }
         }
      }
      
      private function § W§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §>2§)
            {
               this.§"!C§ = §>2§;
            }
            else if(param1.toUpperCase() == §1!D§)
            {
               this.§"!C§ = §1!D§;
            }
         }
      }
      
      private function §]!@§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§9q§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§9q§ = true;
               this.§=S§ = true;
            }
         }
      }
      
      private function §54§() : void
      {
         if(this.§9q§)
         {
            if(this.§1Y§ < this.§4K§)
            {
               if(!this.§=S§)
               {
                  this.§4K§ = this.§1Y§;
               }
               else
               {
                  this.§1Y§ = this.§4K§;
               }
            }
            else if(!this.§=S§)
            {
               this.§1Y§ = this.§4K§;
            }
            else
            {
               this.§4K§ = this.§1Y§;
            }
         }
      }
      
      private function §%g§() : void
      {
         if(!this.§7!D§ && this.§1Y§ > 1)
         {
            this.§1Y§ = 1;
         }
         else if(this.§7!D§ && !this.§<F§ && this.§1Y§ < 1)
         {
            this.§1Y§ = 1;
         }
         if(!this.§^?§ && this.§4K§ > 1)
         {
            this.§4K§ = 1;
         }
         else if(this.§^?§ && !this.§00§ && this.§4K§ < 1)
         {
            this.§4K§ = 1;
         }
      }
      
      private function §7H§() : void
      {
         if(this.§"!C§ == §>2§)
         {
            this.§1Y§ = Math.sqrt(this.§1Y§);
            this.§4K§ = Math.sqrt(this.§4K§);
         }
         else if(this.§"!C§ == §1!D§)
         {
            this.§1Y§ *= this.§1Y§;
            this.§4K§ *= this.§4K§;
         }
      }
      
      private function §`!A§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == § N§ || param4 == §]A§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §[@§ || param4 == §]!#§)
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
         else if(param4 == §'l§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§9q§)
               {
                  if(!this.§=S§)
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
      
      private function §+e§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == § N§ || param4 == §]A§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §[@§ || param4 == §]!#§)
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
         else if(param4 == §'l§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§9q§)
               {
                  if(!this.§=S§)
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
      
      public function §=e§(param1:Number, param2:Number) : void
      {
         this.§#&§ = param1;
         this.§ !#§ = param2;
         this.§1Y§ = param1 / this.§"P§;
         this.§4K§ = param2 / this.§7s§;
         this.§&!%§ = this.§1Y§;
         this.§"?§ = this.§4K§;
         this.§54§();
         this.§%g§();
         this.§9`§ = this.§1Y§;
         this.§?!>§ = this.§4K§;
         this.§7H§();
         this.§#d§ = this.§+e§(this.§>!E§,param1,this.§"P§,this.§3r§,this.§<F§,this.§7!D§,this.§1Y§,this.§&!%§,this.§9`§);
         this.§7^§ = this.§+e§(this.§>!;§,param2,this.§7s§,this.§=!2§,this.§00§,this.§^?§,this.§4K§,this.§"?§,this.§?!>§);
      }
   }
}
