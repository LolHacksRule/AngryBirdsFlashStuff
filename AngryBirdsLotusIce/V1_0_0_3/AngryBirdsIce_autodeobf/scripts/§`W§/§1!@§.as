package §`W§
{
   public class §1!@§
   {
      
      private static const §;"§:String = "RIGHT";
      
      private static const §[!'§:String = "LEFT";
      
      private static const §@0§:String = "TOP";
      
      private static const § !+§:String = "BOTTOM";
      
      private static const §?[§:String = "CENTER";
      
      private static const §@!;§:String = "NORMAL";
      
      private static const §&n§:String = "SQRT";
      
      private static const §-!#§:String = "SQR";
       
      
      private var §'Y§:Number = 0.0;
      
      private var §"M§:Number = 0.0;
      
      private var §7G§:Number = 1.0;
      
      private var §0b§:Number = 1.0;
      
      private var §<j§:Number = 1.0;
      
      private var §+Z§:Number = 1.0;
      
      private var §&P§:String = "LEFT";
      
      private var §"S§:String = "TOP";
      
      private var §![§:Boolean = false;
      
      private var §0a§:Boolean = false;
      
      private var §4M§:Boolean = false;
      
      private var §0s§:Boolean = false;
      
      private var §<!1§:Boolean = false;
      
      private var §>;§:Boolean = false;
      
      private var §@!'§:String = "NORMAL";
      
      private var §>!D§:Number = 1.0;
      
      private var § e§:Number = 1.0;
      
      private var §8!@§:Number = 1.0;
      
      private var §^`§:Number = 1.0;
      
      private var §2!+§:Number = 1.0;
      
      private var §'!'§:Number = 1.0;
      
      private var §-Y§:Number = 0.0;
      
      private var §%!;§:Number = 0.0;
      
      private var §9K§:Number = 1.0;
      
      private var §4w§:Number = 1.0;
      
      public function §1!@§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§'Y§ = param1;
         this.§"M§ = param2;
         this.§-Y§ = param1;
         this.§%!;§ = param2;
         this.§9K§ = param3;
         this.§4w§ = param4;
         this.§7G§ = param5;
         this.§0b§ = param6;
         this.§<j§ = param5;
         this.§+Z§ = param6;
         this.§9]§(param7);
         this.§'U§(param8);
         this.§"U§(param9);
         this.§"5§(param10);
         this.§",§(param11);
         this.§8!<§(param12);
         this.§@!'§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§-Y§;
      }
      
      public function get y() : Number
      {
         return this.§%!;§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§'Y§ = this.§^S§(param1,this.§<j§,this.§7G§,this.§&P§,this.§![§,this.§0a§,this.§>!D§,this.§8!@§,this.§2!+§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§"M§ = this.§^S§(param1,this.§+Z§,this.§0b§,this.§"S§,this.§4M§,this.§0s§,this.§ e§,this.§^`§,this.§'!'§);
      }
      
      public function get scaleX() : Number
      {
         return this.§9K§ * this.§8!2§;
      }
      
      public function get scaleY() : Number
      {
         return this.§4w§ * this.§ !!§;
      }
      
      private function get §8!2§() : Number
      {
         if(this.§![§ || this.§0a§)
         {
            return this.§>!D§;
         }
         return 1;
      }
      
      private function get § !!§() : Number
      {
         if(this.§4M§ || this.§0s§)
         {
            return this.§ e§;
         }
         return 1;
      }
      
      private function §9]§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §;"§ || param1 == §?[§)
            {
               this.§&P§ = param1;
            }
         }
      }
      
      private function §'U§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == § !+§ || param1 == §?[§)
            {
               this.§"S§ = param1;
            }
         }
      }
      
      private function §"U§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§![§ = true;
               this.§0a§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§![§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§0a§ = true;
            }
         }
      }
      
      private function §"5§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§4M§ = true;
               this.§0s§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§4M§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§0s§ = true;
            }
         }
      }
      
      private function §8!<§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §&n§)
            {
               this.§@!'§ = §&n§;
            }
            else if(param1.toUpperCase() == §-!#§)
            {
               this.§@!'§ = §-!#§;
            }
         }
      }
      
      private function §",§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§<!1§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§<!1§ = true;
               this.§>;§ = true;
            }
         }
      }
      
      private function §4!7§() : void
      {
         if(this.§<!1§)
         {
            if(this.§>!D§ < this.§ e§)
            {
               if(!this.§>;§)
               {
                  this.§ e§ = this.§>!D§;
               }
               else
               {
                  this.§>!D§ = this.§ e§;
               }
            }
            else if(!this.§>;§)
            {
               this.§>!D§ = this.§ e§;
            }
            else
            {
               this.§ e§ = this.§>!D§;
            }
         }
      }
      
      private function §[!&§() : void
      {
         if(!this.§0a§ && this.§>!D§ > 1)
         {
            this.§>!D§ = 1;
         }
         else if(this.§0a§ && !this.§![§ && this.§>!D§ < 1)
         {
            this.§>!D§ = 1;
         }
         if(!this.§0s§ && this.§ e§ > 1)
         {
            this.§ e§ = 1;
         }
         else if(this.§0s§ && !this.§4M§ && this.§ e§ < 1)
         {
            this.§ e§ = 1;
         }
      }
      
      private function §7§() : void
      {
         if(this.§@!'§ == §&n§)
         {
            this.§>!D§ = Math.sqrt(this.§>!D§);
            this.§ e§ = Math.sqrt(this.§ e§);
         }
         else if(this.§@!'§ == §-!#§)
         {
            this.§>!D§ *= this.§>!D§;
            this.§ e§ *= this.§ e§;
         }
      }
      
      private function §^S§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §[!'§ || param4 == §@0§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §;"§ || param4 == § !+§)
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
         else if(param4 == §?[§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§<!1§)
               {
                  if(!this.§>;§)
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
      
      private function §-!6§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §[!'§ || param4 == §@0§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §;"§ || param4 == § !+§)
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
         else if(param4 == §?[§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§<!1§)
               {
                  if(!this.§>;§)
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
      
      public function §]d§(param1:Number, param2:Number) : void
      {
         this.§<j§ = param1;
         this.§+Z§ = param2;
         this.§>!D§ = param1 / this.§7G§;
         this.§ e§ = param2 / this.§0b§;
         this.§8!@§ = this.§>!D§;
         this.§^`§ = this.§ e§;
         this.§4!7§();
         this.§[!&§();
         this.§2!+§ = this.§>!D§;
         this.§'!'§ = this.§ e§;
         this.§7§();
         this.§-Y§ = this.§-!6§(this.§'Y§,param1,this.§7G§,this.§&P§,this.§![§,this.§0a§,this.§>!D§,this.§8!@§,this.§2!+§);
         this.§%!;§ = this.§-!6§(this.§"M§,param2,this.§0b§,this.§"S§,this.§4M§,this.§0s§,this.§ e§,this.§^`§,this.§'!'§);
      }
   }
}
