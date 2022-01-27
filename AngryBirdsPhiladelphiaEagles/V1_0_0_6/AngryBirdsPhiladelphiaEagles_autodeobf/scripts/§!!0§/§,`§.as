package §!!0§
{
   public class §,`§
   {
      
      private static const §@;§:String = "RIGHT";
      
      private static const §5j§:String = "LEFT";
      
      private static const §6!1§:String = "TOP";
      
      private static const §1G§:String = "BOTTOM";
      
      private static const §@C§:String = "CENTER";
      
      private static const §,6§:String = "NORMAL";
      
      private static const §7!$§:String = "SQRT";
      
      private static const §%3§:String = "SQR";
       
      
      private var §#!P§:Number = 0.0;
      
      private var §3E§:Number = 0.0;
      
      private var §4e§:Number = 1.0;
      
      private var §1@§:Number = 1.0;
      
      private var §3n§:Number = 1.0;
      
      private var §0!'§:Number = 1.0;
      
      private var §]x§:String = "LEFT";
      
      private var §+!?§:String = "TOP";
      
      private var §?!8§:Boolean = false;
      
      private var §"H§:Boolean = false;
      
      private var §%!1§:Boolean = false;
      
      private var § a§:Boolean = false;
      
      private var §!!$§:Boolean = false;
      
      private var §7!P§:Boolean = false;
      
      private var §1m§:String = "NORMAL";
      
      private var §75§:Number = 1.0;
      
      private var §>!O§:Number = 1.0;
      
      private var §9r§:Number = 1.0;
      
      private var §!!+§:Number = 1.0;
      
      private var §8!,§:Number = 1.0;
      
      private var §`j§:Number = 1.0;
      
      private var §#$§:Number = 0.0;
      
      private var §do§:Number = 0.0;
      
      private var §6!4§:Number = 1.0;
      
      private var §@Y§:Number = 1.0;
      
      public function §,`§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§#!P§ = param1;
         this.§3E§ = param2;
         this.§#$§ = param1;
         this.§do§ = param2;
         this.§6!4§ = param3;
         this.§@Y§ = param4;
         this.§4e§ = param5;
         this.§1@§ = param6;
         this.§3n§ = param5;
         this.§0!'§ = param6;
         this.§?!#§(param7);
         this.§5A§(param8);
         this.§>!K§(param9);
         this.§'!C§(param10);
         this.§4O§(param11);
         this.§1!;§(param12);
         this.§1m§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§#$§;
      }
      
      public function get y() : Number
      {
         return this.§do§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§#!P§ = this.§8R§(param1,this.§3n§,this.§4e§,this.§]x§,this.§?!8§,this.§"H§,this.§75§,this.§9r§,this.§8!,§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§3E§ = this.§8R§(param1,this.§0!'§,this.§1@§,this.§+!?§,this.§%!1§,this.§ a§,this.§>!O§,this.§!!+§,this.§`j§);
      }
      
      public function get scaleX() : Number
      {
         return this.§6!4§ * this.§][§;
      }
      
      public function get scaleY() : Number
      {
         return this.§@Y§ * this.§[!-§;
      }
      
      private function get §][§() : Number
      {
         if(this.§?!8§ || this.§"H§)
         {
            return this.§75§;
         }
         return 1;
      }
      
      private function get §[!-§() : Number
      {
         if(this.§%!1§ || this.§ a§)
         {
            return this.§>!O§;
         }
         return 1;
      }
      
      private function §?!#§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §@;§ || param1 == §@C§)
            {
               this.§]x§ = param1;
            }
         }
      }
      
      private function §5A§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §1G§ || param1 == §@C§)
            {
               this.§+!?§ = param1;
            }
         }
      }
      
      private function §>!K§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§?!8§ = true;
               this.§"H§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§?!8§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§"H§ = true;
            }
         }
      }
      
      private function §'!C§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§%!1§ = true;
               this.§ a§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§%!1§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§ a§ = true;
            }
         }
      }
      
      private function §1!;§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §7!$§)
            {
               this.§1m§ = §7!$§;
            }
            else if(param1.toUpperCase() == §%3§)
            {
               this.§1m§ = §%3§;
            }
         }
      }
      
      private function §4O§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§!!$§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§!!$§ = true;
               this.§7!P§ = true;
            }
         }
      }
      
      private function §-B§() : void
      {
         if(this.§!!$§)
         {
            if(this.§75§ < this.§>!O§)
            {
               if(!this.§7!P§)
               {
                  this.§>!O§ = this.§75§;
               }
               else
               {
                  this.§75§ = this.§>!O§;
               }
            }
            else if(!this.§7!P§)
            {
               this.§75§ = this.§>!O§;
            }
            else
            {
               this.§>!O§ = this.§75§;
            }
         }
      }
      
      private function §7$§() : void
      {
         if(!this.§"H§ && this.§75§ > 1)
         {
            this.§75§ = 1;
         }
         else if(this.§"H§ && !this.§?!8§ && this.§75§ < 1)
         {
            this.§75§ = 1;
         }
         if(!this.§ a§ && this.§>!O§ > 1)
         {
            this.§>!O§ = 1;
         }
         else if(this.§ a§ && !this.§%!1§ && this.§>!O§ < 1)
         {
            this.§>!O§ = 1;
         }
      }
      
      private function §5S§() : void
      {
         if(this.§1m§ == §7!$§)
         {
            this.§75§ = Math.sqrt(this.§75§);
            this.§>!O§ = Math.sqrt(this.§>!O§);
         }
         else if(this.§1m§ == §%3§)
         {
            this.§75§ *= this.§75§;
            this.§>!O§ *= this.§>!O§;
         }
      }
      
      private function §8R§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §5j§ || param4 == §6!1§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §@;§ || param4 == §1G§)
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
         else if(param4 == §@C§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§!!$§)
               {
                  if(!this.§7!P§)
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
      
      private function §09§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §5j§ || param4 == §6!1§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §@;§ || param4 == §1G§)
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
         else if(param4 == §@C§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§!!$§)
               {
                  if(!this.§7!P§)
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
      
      public function §4!%§(param1:Number, param2:Number) : void
      {
         this.§3n§ = param1;
         this.§0!'§ = param2;
         this.§75§ = param1 / this.§4e§;
         this.§>!O§ = param2 / this.§1@§;
         this.§9r§ = this.§75§;
         this.§!!+§ = this.§>!O§;
         this.§-B§();
         this.§7$§();
         this.§8!,§ = this.§75§;
         this.§`j§ = this.§>!O§;
         this.§5S§();
         this.§#$§ = this.§09§(this.§#!P§,param1,this.§4e§,this.§]x§,this.§?!8§,this.§"H§,this.§75§,this.§9r§,this.§8!,§);
         this.§do§ = this.§09§(this.§3E§,param2,this.§1@§,this.§+!?§,this.§%!1§,this.§ a§,this.§>!O§,this.§!!+§,this.§`j§);
      }
   }
}
