package §-!F§
{
   public class §9L§
   {
      
      private static const §'!'§:String = "RIGHT";
      
      private static const §,?§:String = "LEFT";
      
      private static const §;!0§:String = "TOP";
      
      private static const §+i§:String = "BOTTOM";
      
      private static const §#^§:String = "CENTER";
      
      private static const §in§:String = "NORMAL";
      
      private static const §6!8§:String = "SQRT";
      
      private static const § in§:String = "SQR";
       
      
      private var §28§:Number = 0.0;
      
      private var §<! §:Number = 0.0;
      
      private var §[l§:Number = 1.0;
      
      private var §<L§:Number = 1.0;
      
      private var §4!7§:Number = 1.0;
      
      private var §'O§:Number = 1.0;
      
      private var §"!"§:String = "LEFT";
      
      private var §@!2§:String = "TOP";
      
      private var §;L§:Boolean = false;
      
      private var §+m§:Boolean = false;
      
      private var §"G§:Boolean = false;
      
      private var §,g§:Boolean = false;
      
      private var §1!9§:Boolean = false;
      
      private var §;h§:Boolean = false;
      
      private var §`3§:String = "NORMAL";
      
      private var §,p§:Number = 1.0;
      
      private var §?!,§:Number = 1.0;
      
      private var §2!$§:Number = 1.0;
      
      private var §?!2§:Number = 1.0;
      
      private var §-w§:Number = 1.0;
      
      private var §70§:Number = 1.0;
      
      private var §<!B§:Number = 0.0;
      
      private var §,k§:Number = 0.0;
      
      private var §,6§:Number = 1.0;
      
      private var §-3§:Number = 1.0;
      
      public function §9L§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§28§ = param1;
         this.§<! § = param2;
         this.§<!B§ = param1;
         this.§,k§ = param2;
         this.§,6§ = param3;
         this.§-3§ = param4;
         this.§[l§ = param5;
         this.§<L§ = param6;
         this.§4!7§ = param5;
         this.§'O§ = param6;
         this.§9d§(param7);
         this.§]@§(param8);
         this.§]!0§(param9);
         this.§[7§(param10);
         this.§,j§(param11);
         this.§-!@§(param12);
         this.§`3§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§<!B§;
      }
      
      public function get y() : Number
      {
         return this.§,k§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§28§ = this.§9G§(param1,this.§4!7§,this.§[l§,this.§"!"§,this.§;L§,this.§+m§,this.§,p§,this.§2!$§,this.§-w§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§<! § = this.§9G§(param1,this.§'O§,this.§<L§,this.§@!2§,this.§"G§,this.§,g§,this.§?!,§,this.§?!2§,this.§70§);
      }
      
      public function get scaleX() : Number
      {
         return this.§,6§ * this.§each §;
      }
      
      public function get scaleY() : Number
      {
         return this.§-3§ * this.§=-§;
      }
      
      private function get §each §() : Number
      {
         if(this.§;L§ || this.§+m§)
         {
            return this.§,p§;
         }
         return 1;
      }
      
      private function get §=-§() : Number
      {
         if(this.§"G§ || this.§,g§)
         {
            return this.§?!,§;
         }
         return 1;
      }
      
      private function §9d§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §'!'§ || param1 == §#^§)
            {
               this.§"!"§ = param1;
            }
         }
      }
      
      private function §]@§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §+i§ || param1 == §#^§)
            {
               this.§@!2§ = param1;
            }
         }
      }
      
      private function §]!0§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§;L§ = true;
               this.§+m§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§;L§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§+m§ = true;
            }
         }
      }
      
      private function §[7§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§"G§ = true;
               this.§,g§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§"G§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§,g§ = true;
            }
         }
      }
      
      private function §-!@§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §6!8§)
            {
               this.§`3§ = §6!8§;
            }
            else if(param1.toUpperCase() == § in§)
            {
               this.§`3§ = § in§;
            }
         }
      }
      
      private function §,j§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§1!9§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§1!9§ = true;
               this.§;h§ = true;
            }
         }
      }
      
      private function §[8§() : void
      {
         if(this.§1!9§)
         {
            if(this.§,p§ < this.§?!,§)
            {
               if(!this.§;h§)
               {
                  this.§?!,§ = this.§,p§;
               }
               else
               {
                  this.§,p§ = this.§?!,§;
               }
            }
            else if(!this.§;h§)
            {
               this.§,p§ = this.§?!,§;
            }
            else
            {
               this.§?!,§ = this.§,p§;
            }
         }
      }
      
      private function §#`§() : void
      {
         if(!this.§+m§ && this.§,p§ > 1)
         {
            this.§,p§ = 1;
         }
         else if(this.§+m§ && !this.§;L§ && this.§,p§ < 1)
         {
            this.§,p§ = 1;
         }
         if(!this.§,g§ && this.§?!,§ > 1)
         {
            this.§?!,§ = 1;
         }
         else if(this.§,g§ && !this.§"G§ && this.§?!,§ < 1)
         {
            this.§?!,§ = 1;
         }
      }
      
      private function §&!,§() : void
      {
         if(this.§`3§ == §6!8§)
         {
            this.§,p§ = Math.sqrt(this.§,p§);
            this.§?!,§ = Math.sqrt(this.§?!,§);
         }
         else if(this.§`3§ == § in§)
         {
            this.§,p§ *= this.§,p§;
            this.§?!,§ *= this.§?!,§;
         }
      }
      
      private function §9G§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §,?§ || param4 == §;!0§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §'!'§ || param4 == §+i§)
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
         else if(param4 == §#^§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§1!9§)
               {
                  if(!this.§;h§)
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
      
      private function §@-§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §,?§ || param4 == §;!0§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §'!'§ || param4 == §+i§)
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
         else if(param4 == §#^§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§1!9§)
               {
                  if(!this.§;h§)
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
      
      public function §4h§(param1:Number, param2:Number) : void
      {
         this.§4!7§ = param1;
         this.§'O§ = param2;
         this.§,p§ = param1 / this.§[l§;
         this.§?!,§ = param2 / this.§<L§;
         this.§2!$§ = this.§,p§;
         this.§?!2§ = this.§?!,§;
         this.§[8§();
         this.§#`§();
         this.§-w§ = this.§,p§;
         this.§70§ = this.§?!,§;
         this.§&!,§();
         this.§<!B§ = this.§@-§(this.§28§,param1,this.§[l§,this.§"!"§,this.§;L§,this.§+m§,this.§,p§,this.§2!$§,this.§-w§);
         this.§,k§ = this.§@-§(this.§<! §,param2,this.§<L§,this.§@!2§,this.§"G§,this.§,g§,this.§?!,§,this.§?!2§,this.§70§);
      }
   }
}
