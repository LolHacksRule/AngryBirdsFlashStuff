package §0!#§
{
   public class §"F§
   {
      
      private static const §?y§:String = "RIGHT";
      
      private static const §-4§:String = "LEFT";
      
      private static const §93§:String = "TOP";
      
      private static const §%'§:String = "BOTTOM";
      
      private static const §7!?§:String = "CENTER";
      
      private static const §[!F§:String = "NORMAL";
      
      private static const §[Y§:String = "SQRT";
      
      private static const §4K§:String = "SQR";
       
      
      private var §?!B§:Number = 0.0;
      
      private var §#Y§:Number = 0.0;
      
      private var §&x§:Number = 1.0;
      
      private var static:Number = 1.0;
      
      private var §7!H§:Number = 1.0;
      
      private var §'z§:Number = 1.0;
      
      private var §[O§:String = "LEFT";
      
      private var §<k§:String = "TOP";
      
      private var §@0§:Boolean = false;
      
      private var §5!0§:Boolean = false;
      
      private var §2!3§:Boolean = false;
      
      private var §+V§:Boolean = false;
      
      private var §9§:Boolean = false;
      
      private var §`C§:Boolean = false;
      
      private var §-?§:String = "NORMAL";
      
      private var §7!#§:Number = 1.0;
      
      private var §""§:Number = 1.0;
      
      private var §<E§:Number = 1.0;
      
      private var §;!K§:Number = 1.0;
      
      private var §8Q§:Number = 1.0;
      
      private var §[a§:Number = 1.0;
      
      private var §-`§:Number = 0.0;
      
      private var §4J§:Number = 0.0;
      
      private var §5n§:Number = 1.0;
      
      private var §@!$§:Number = 1.0;
      
      public function §"F§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§?!B§ = param1;
         this.§#Y§ = param2;
         this.§-`§ = param1;
         this.§4J§ = param2;
         this.§&x§ = param3;
         this.static = param4;
         this.§7!H§ = param5;
         this.§'z§ = param6;
         this.§5n§ = param5;
         this.§@!$§ = param6;
         this.§9>§(param7);
         this.§&!8§(param8);
         this.§`b§(param9);
         this.§?o§(param10);
         this.§6x§(param11);
         this.§^=§(param12);
         this.§-?§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§-`§;
      }
      
      public function get y() : Number
      {
         return this.§4J§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§?!B§ = this.§]D§(param1,this.§5n§,this.§7!H§,this.§[O§,this.§@0§,this.§5!0§,this.§7!#§,this.§<E§,this.§8Q§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§#Y§ = this.§]D§(param1,this.§@!$§,this.§'z§,this.§<k§,this.§2!3§,this.§+V§,this.§""§,this.§;!K§,this.§[a§);
      }
      
      public function get scaleX() : Number
      {
         return this.§&x§ * this.§,w§;
      }
      
      public function get scaleY() : Number
      {
         return this.static * this.§>!G§;
      }
      
      private function get §,w§() : Number
      {
         if(this.§@0§ || this.§5!0§)
         {
            return this.§7!#§;
         }
         return 1;
      }
      
      private function get §>!G§() : Number
      {
         if(this.§2!3§ || this.§+V§)
         {
            return this.§""§;
         }
         return 1;
      }
      
      private function §9>§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §?y§ || param1 == §7!?§)
            {
               this.§[O§ = param1;
            }
         }
      }
      
      private function §&!8§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §%'§ || param1 == §7!?§)
            {
               this.§<k§ = param1;
            }
         }
      }
      
      private function §`b§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§@0§ = true;
               this.§5!0§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§@0§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§5!0§ = true;
            }
         }
      }
      
      private function §?o§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§2!3§ = true;
               this.§+V§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§2!3§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§+V§ = true;
            }
         }
      }
      
      private function §^=§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §[Y§)
            {
               this.§-?§ = §[Y§;
            }
            else if(param1.toUpperCase() == §4K§)
            {
               this.§-?§ = §4K§;
            }
         }
      }
      
      private function §6x§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§9§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§9§ = true;
               this.§`C§ = true;
            }
         }
      }
      
      private function §2I§() : void
      {
         if(this.§9§)
         {
            if(this.§7!#§ < this.§""§)
            {
               if(!this.§`C§)
               {
                  this.§""§ = this.§7!#§;
               }
               else
               {
                  this.§7!#§ = this.§""§;
               }
            }
            else if(!this.§`C§)
            {
               this.§7!#§ = this.§""§;
            }
            else
            {
               this.§""§ = this.§7!#§;
            }
         }
      }
      
      private function §;!=§() : void
      {
         if(!this.§5!0§ && this.§7!#§ > 1)
         {
            this.§7!#§ = 1;
         }
         else if(!this.§@0§ && this.§7!#§ < 1)
         {
            this.§7!#§ = 1;
         }
         if(!this.§+V§ && this.§""§ > 1)
         {
            this.§""§ = 1;
         }
         else if(!this.§2!3§ && this.§""§ < 1)
         {
            this.§""§ = 1;
         }
      }
      
      private function §'T§() : void
      {
         if(this.§-?§ == §[Y§)
         {
            this.§7!#§ = Math.sqrt(this.§7!#§);
            this.§""§ = Math.sqrt(this.§""§);
         }
         else if(this.§-?§ == §4K§)
         {
            this.§7!#§ *= this.§7!#§;
            this.§""§ *= this.§""§;
         }
      }
      
      private function §]D§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §-4§ || param4 == §93§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §?y§ || param4 == §%'§)
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
         else if(param4 == §7!?§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§9§)
               {
                  if(!this.§`C§)
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
      
      private function § g§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §-4§ || param4 == §93§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §?y§ || param4 == §%'§)
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
         else if(param4 == §7!?§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§9§)
               {
                  if(!this.§`C§)
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
      
      public function §7!'§(param1:Number, param2:Number) : void
      {
         this.§5n§ = param1;
         this.§@!$§ = param2;
         this.§7!#§ = param1 / this.§7!H§;
         this.§""§ = param2 / this.§'z§;
         this.§<E§ = this.§7!#§;
         this.§;!K§ = this.§""§;
         this.§2I§();
         this.§;!=§();
         this.§8Q§ = this.§7!#§;
         this.§[a§ = this.§""§;
         this.§'T§();
         this.§-`§ = this.§ g§(this.§?!B§,param1,this.§7!H§,this.§[O§,this.§@0§,this.§5!0§,this.§7!#§,this.§<E§,this.§8Q§);
         this.§4J§ = this.§ g§(this.§#Y§,param2,this.§'z§,this.§<k§,this.§2!3§,this.§+V§,this.§""§,this.§;!K§,this.§[a§);
      }
   }
}
