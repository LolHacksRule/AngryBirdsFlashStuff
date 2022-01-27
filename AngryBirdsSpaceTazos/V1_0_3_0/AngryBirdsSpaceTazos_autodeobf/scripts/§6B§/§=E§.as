package §6B§
{
   public class §=E§
   {
      
      private static const §&X§:String = "RIGHT";
      
      private static const §&!c§:String = "LEFT";
      
      private static const §0=§:String = "TOP";
      
      private static const §1"3§:String = "BOTTOM";
      
      private static const §^`§:String = "CENTER";
      
      private static const §5"'§:String = "NORMAL";
      
      private static const §""2§:String = "SQRT";
      
      private static const §7U§:String = "SQR";
      
      private static const §<R§:String = "NORMAL_SQRT";
       
      
      private var §2"7§:Number = 0.0;
      
      private var §[J§:Number = 0.0;
      
      private var §56§:Number = 1.0;
      
      private var §%!M§:Number = 1.0;
      
      private var §"!F§:Number = 1.0;
      
      private var §;o§:Number = 1.0;
      
      private var §%"G§:String = "LEFT";
      
      private var §?!+§:String = "TOP";
      
      private var §"!u§:Boolean = false;
      
      private var §[!3§:Boolean = false;
      
      private var §%!Z§:Boolean = false;
      
      private var §,!e§:Boolean = false;
      
      private var §7!X§:Boolean = false;
      
      private var §#"E§:Boolean = false;
      
      private var §0"%§:String = "NORMAL";
      
      private var §^!1§:Number = 1.0;
      
      private var §]!O§:Number = 1.0;
      
      private var §=x§:Number = 1.0;
      
      private var §0"0§:Number = 1.0;
      
      private var §<";§:Number = 1.0;
      
      private var §^q§:Number = 1.0;
      
      private var §1!`§:Number = 0.0;
      
      private var §<2§:Number = 0.0;
      
      private var §@!,§:Number = 1.0;
      
      private var § $§:Number = 1.0;
      
      public function §=E§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§2"7§ = param1;
         this.§[J§ = param2;
         this.§1!`§ = param1;
         this.§<2§ = param2;
         this.§56§ = param3;
         this.§%!M§ = param4;
         this.§"!F§ = param5;
         this.§;o§ = param6;
         this.§@!,§ = param5;
         this.§ $§ = param6;
         this.§7!!§(param7);
         this.§?W§(param8);
         this.§5!d§(param9);
         this.§1!S§(param10);
         this.§8"'§(param11);
         this.§,!D§(param12);
         this.§0"%§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§1!`§;
      }
      
      public function get y() : Number
      {
         return this.§<2§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§2"7§ = this.§4l§(param1,this.§@!,§,this.§"!F§,this.§%"G§,this.§"!u§,this.§[!3§,this.§^!1§,this.§=x§,this.§<";§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§[J§ = this.§4l§(param1,this.§ $§,this.§;o§,this.§?!+§,this.§%!Z§,this.§,!e§,this.§]!O§,this.§0"0§,this.§^q§);
      }
      
      public function get scaleX() : Number
      {
         return this.§56§ * this.§2!'§;
      }
      
      public function get scaleY() : Number
      {
         return this.§%!M§ * this.§[,§;
      }
      
      private function get §2!'§() : Number
      {
         if(this.§"!u§ || this.§[!3§)
         {
            return this.§^!1§;
         }
         return 1;
      }
      
      private function get §[,§() : Number
      {
         if(this.§%!Z§ || this.§,!e§)
         {
            return this.§]!O§;
         }
         return 1;
      }
      
      private function §7!!§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §&X§ || param1 == §^`§)
            {
               this.§%"G§ = param1;
            }
         }
      }
      
      private function §?W§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §1"3§ || param1 == §^`§)
            {
               this.§?!+§ = param1;
            }
         }
      }
      
      private function §5!d§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§"!u§ = true;
               this.§[!3§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§"!u§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§[!3§ = true;
            }
         }
      }
      
      private function §1!S§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§%!Z§ = true;
               this.§,!e§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§%!Z§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§,!e§ = true;
            }
         }
      }
      
      private function §,!D§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §""2§)
            {
               this.§0"%§ = §""2§;
            }
            else if(param1.toUpperCase() == §7U§)
            {
               this.§0"%§ = §7U§;
            }
            else if(param1.toUpperCase() == §<R§)
            {
               this.§0"%§ = §<R§;
            }
         }
      }
      
      private function §8"'§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§7!X§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§7!X§ = true;
               this.§#"E§ = true;
            }
         }
      }
      
      private function §,!&§() : void
      {
         if(this.§7!X§)
         {
            if(this.§^!1§ < this.§]!O§)
            {
               if(!this.§#"E§)
               {
                  this.§]!O§ = this.§^!1§;
               }
               else
               {
                  this.§^!1§ = this.§]!O§;
               }
            }
            else if(!this.§#"E§)
            {
               this.§^!1§ = this.§]!O§;
            }
            else
            {
               this.§]!O§ = this.§^!1§;
            }
         }
      }
      
      private function §;!I§() : void
      {
         if(!this.§[!3§ && this.§^!1§ > 1)
         {
            this.§^!1§ = 1;
         }
         else if(!this.§"!u§ && this.§^!1§ < 1)
         {
            this.§^!1§ = 1;
         }
         if(!this.§,!e§ && this.§]!O§ > 1)
         {
            this.§]!O§ = 1;
         }
         else if(!this.§%!Z§ && this.§]!O§ < 1)
         {
            this.§]!O§ = 1;
         }
      }
      
      private function §9Z§() : void
      {
         if(this.§0"%§ == §""2§)
         {
            this.§^!1§ = Math.sqrt(this.§^!1§);
            this.§]!O§ = Math.sqrt(this.§]!O§);
         }
         else if(this.§0"%§ == §7U§)
         {
            this.§^!1§ *= this.§^!1§;
            this.§]!O§ *= this.§]!O§;
         }
         else if(this.§0"%§ == §<R§)
         {
            if(this.§^!1§ > 1)
            {
               this.§^!1§ = Math.sqrt(this.§^!1§);
            }
            if(this.§]!O§ > 1)
            {
               this.§]!O§ = Math.sqrt(this.§]!O§);
            }
         }
      }
      
      private function §4l§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §&!c§ || param4 == §0=§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §&X§ || param4 == §1"3§)
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
         else if(param4 == §^`§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§7!X§)
               {
                  if(!this.§#"E§)
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
      
      private function §+"8§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §&!c§ || param4 == §0=§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §&X§ || param4 == §1"3§)
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
         else if(param4 == §^`§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§7!X§)
               {
                  if(!this.§#"E§)
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
      
      public function § z§(param1:Number, param2:Number) : void
      {
         this.§@!,§ = param1;
         this.§ $§ = param2;
         this.§^!1§ = param1 / this.§"!F§;
         this.§]!O§ = param2 / this.§;o§;
         this.§=x§ = this.§^!1§;
         this.§0"0§ = this.§]!O§;
         this.§,!&§();
         this.§;!I§();
         this.§<";§ = this.§^!1§;
         this.§^q§ = this.§]!O§;
         this.§9Z§();
         this.§1!`§ = this.§+"8§(this.§2"7§,param1,this.§"!F§,this.§%"G§,this.§"!u§,this.§[!3§,this.§^!1§,this.§=x§,this.§<";§);
         this.§<2§ = this.§+"8§(this.§[J§,param2,this.§;o§,this.§?!+§,this.§%!Z§,this.§,!e§,this.§]!O§,this.§0"0§,this.§^q§);
      }
   }
}
