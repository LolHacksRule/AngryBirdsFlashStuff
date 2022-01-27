package §7!6§
{
   public class §<2§
   {
      
      private static const § !4§:String = "RIGHT";
      
      private static const §@b§:String = "LEFT";
      
      private static const §="§:String = "TOP";
      
      private static const §5!r§:String = "BOTTOM";
      
      private static const §-j§:String = "CENTER";
      
      private static const §-4§:String = "NORMAL";
      
      private static const §3!o§:String = "SQRT";
      
      private static const §8y§:String = "SQR";
      
      private static const §0Q§:String = "NORMAL_SQRT";
       
      
      private var §,!G§:Number = 0.0;
      
      private var §%!K§:Number = 0.0;
      
      private var §;!b§:Number = 1.0;
      
      private var §function§:Number = 1.0;
      
      private var §+T§:Number = 1.0;
      
      private var §`2§:Number = 1.0;
      
      private var §<`§:String = "LEFT";
      
      private var §0!0§:String = "TOP";
      
      private var §7" §:Boolean = false;
      
      private var §;!O§:Boolean = false;
      
      private var §8"+§:Boolean = false;
      
      private var §'%§:Boolean = false;
      
      private var §#"4§:Boolean = false;
      
      private var §=!<§:Boolean = false;
      
      private var §2"'§:String = "NORMAL";
      
      private var §9R§:Number = 1.0;
      
      private var §!!<§:Number = 1.0;
      
      private var §@"5§:Number = 1.0;
      
      private var §]",§:Number = 1.0;
      
      private var §?![§:Number = 1.0;
      
      private var §'"3§:Number = 1.0;
      
      private var §''§:Number = 0.0;
      
      private var §3"<§:Number = 0.0;
      
      private var §?m§:Number = 1.0;
      
      private var §4"%§:Number = 1.0;
      
      public function §<2§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§,!G§ = param1;
         this.§%!K§ = param2;
         this.§''§ = param1;
         this.§3"<§ = param2;
         this.§;!b§ = param3;
         this.§function§ = param4;
         this.§+T§ = param5;
         this.§`2§ = param6;
         this.§?m§ = param5;
         this.§4"%§ = param6;
         this.§-"D§(param7);
         this.§%!6§(param8);
         this.§`m§(param9);
         this.§3!b§(param10);
         this.§^!r§(param11);
         this.§]v§(param12);
         this.§2"'§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§''§;
      }
      
      public function get y() : Number
      {
         return this.§3"<§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§,!G§ = this.§7",§(param1,this.§?m§,this.§+T§,this.§<`§,this.§7" §,this.§;!O§,this.§9R§,this.§@"5§,this.§?![§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§%!K§ = this.§7",§(param1,this.§4"%§,this.§`2§,this.§0!0§,this.§8"+§,this.§'%§,this.§!!<§,this.§]",§,this.§'"3§);
      }
      
      public function get scaleX() : Number
      {
         return this.§;!b§ * this.§+!4§;
      }
      
      public function get scaleY() : Number
      {
         return this.§function§ * this.§-"6§;
      }
      
      private function get §+!4§() : Number
      {
         if(this.§7" § || this.§;!O§)
         {
            return this.§9R§;
         }
         return 1;
      }
      
      private function get §-"6§() : Number
      {
         if(this.§8"+§ || this.§'%§)
         {
            return this.§!!<§;
         }
         return 1;
      }
      
      private function §-"D§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == § !4§ || param1 == §-j§)
            {
               this.§<`§ = param1;
            }
         }
      }
      
      private function §%!6§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §5!r§ || param1 == §-j§)
            {
               this.§0!0§ = param1;
            }
         }
      }
      
      private function §`m§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§7" § = true;
               this.§;!O§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§7" § = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§;!O§ = true;
            }
         }
      }
      
      private function §3!b§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§8"+§ = true;
               this.§'%§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§8"+§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§'%§ = true;
            }
         }
      }
      
      private function §]v§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §3!o§)
            {
               this.§2"'§ = §3!o§;
            }
            else if(param1.toUpperCase() == §8y§)
            {
               this.§2"'§ = §8y§;
            }
            else if(param1.toUpperCase() == §0Q§)
            {
               this.§2"'§ = §0Q§;
            }
         }
      }
      
      private function §^!r§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§#"4§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§#"4§ = true;
               this.§=!<§ = true;
            }
         }
      }
      
      private function §<!>§() : void
      {
         if(this.§#"4§)
         {
            if(this.§9R§ < this.§!!<§)
            {
               if(!this.§=!<§)
               {
                  this.§!!<§ = this.§9R§;
               }
               else
               {
                  this.§9R§ = this.§!!<§;
               }
            }
            else if(!this.§=!<§)
            {
               this.§9R§ = this.§!!<§;
            }
            else
            {
               this.§!!<§ = this.§9R§;
            }
         }
      }
      
      private function §%f§() : void
      {
         if(!this.§;!O§ && this.§9R§ > 1)
         {
            this.§9R§ = 1;
         }
         else if(!this.§7" § && this.§9R§ < 1)
         {
            this.§9R§ = 1;
         }
         if(!this.§'%§ && this.§!!<§ > 1)
         {
            this.§!!<§ = 1;
         }
         else if(!this.§8"+§ && this.§!!<§ < 1)
         {
            this.§!!<§ = 1;
         }
      }
      
      private function §#"3§() : void
      {
         if(this.§2"'§ == §3!o§)
         {
            this.§9R§ = Math.sqrt(this.§9R§);
            this.§!!<§ = Math.sqrt(this.§!!<§);
         }
         else if(this.§2"'§ == §8y§)
         {
            this.§9R§ *= this.§9R§;
            this.§!!<§ *= this.§!!<§;
         }
         else if(this.§2"'§ == §0Q§)
         {
            if(this.§9R§ > 1)
            {
               this.§9R§ = Math.sqrt(this.§9R§);
            }
            if(this.§!!<§ > 1)
            {
               this.§!!<§ = Math.sqrt(this.§!!<§);
            }
         }
      }
      
      private function §7",§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §@b§ || param4 == §="§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == § !4§ || param4 == §5!r§)
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
         else if(param4 == §-j§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§#"4§)
               {
                  if(!this.§=!<§)
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
      
      private function §<a§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §@b§ || param4 == §="§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == § !4§ || param4 == §5!r§)
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
         else if(param4 == §-j§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§#"4§)
               {
                  if(!this.§=!<§)
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
      
      public function §4!?§(param1:Number, param2:Number) : void
      {
         this.§?m§ = param1;
         this.§4"%§ = param2;
         this.§9R§ = param1 / this.§+T§;
         this.§!!<§ = param2 / this.§`2§;
         this.§@"5§ = this.§9R§;
         this.§]",§ = this.§!!<§;
         this.§<!>§();
         this.§%f§();
         this.§?![§ = this.§9R§;
         this.§'"3§ = this.§!!<§;
         this.§#"3§();
         this.§''§ = this.§<a§(this.§,!G§,param1,this.§+T§,this.§<`§,this.§7" §,this.§;!O§,this.§9R§,this.§@"5§,this.§?![§);
         this.§3"<§ = this.§<a§(this.§%!K§,param2,this.§`2§,this.§0!0§,this.§8"+§,this.§'%§,this.§!!<§,this.§]",§,this.§'"3§);
      }
   }
}
