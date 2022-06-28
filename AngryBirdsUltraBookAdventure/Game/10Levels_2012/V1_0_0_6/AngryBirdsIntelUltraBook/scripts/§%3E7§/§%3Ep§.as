package §>7§
{
   public class §>p§
   {
      
      private static const § S§:String = "RIGHT";
      
      private static const §8!9§:String = "LEFT";
      
      private static const §<f§:String = "TOP";
      
      private static const §#[§:String = "BOTTOM";
      
      private static const §[p§:String = "CENTER";
      
      private static const §1!8§:String = "NORMAL";
      
      private static const §9<§:String = "SQRT";
      
      private static const §%§:String = "SQR";
       
      
      private var §2!z§:Number = 0.0;
      
      private var §33§:Number = 0.0;
      
      private var §>!1§:Number = 1.0;
      
      private var §1!w§:Number = 1.0;
      
      private var §"!V§:Number = 1.0;
      
      private var §-!e§:Number = 1.0;
      
      private var §7R§:String = "LEFT";
      
      private var §5!Q§:String = "TOP";
      
      private var §`!u§:Boolean = false;
      
      private var §=,§:Boolean = false;
      
      private var §#F§:Boolean = false;
      
      private var §]!6§:Boolean = false;
      
      private var §@!M§:Boolean = false;
      
      private var §0x§:Boolean = false;
      
      private var §7`§:String = "NORMAL";
      
      private var §"$§:Number = 1.0;
      
      private var §[! §:Number = 1.0;
      
      private var §`!,§:Number = 1.0;
      
      private var §'1§:Number = 1.0;
      
      private var §<!M§:Number = 1.0;
      
      private var §2t§:Number = 1.0;
      
      private var §#!u§:Number = 0.0;
      
      private var §<h§:Number = 0.0;
      
      private var §5!A§:Number = 1.0;
      
      private var §,!C§:Number = 1.0;
      
      public function §>p§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§2!z§ = param1;
         this.§33§ = param2;
         this.§#!u§ = param1;
         this.§<h§ = param2;
         this.§5!A§ = param3;
         this.§,!C§ = param4;
         this.§>!1§ = param5;
         this.§1!w§ = param6;
         this.§"!V§ = param5;
         this.§-!e§ = param6;
         this.§#>§(param7);
         this.§-!W§(param8);
         this.§?!-§(param9);
         this.§&z§(param10);
         this.§@!p§(param11);
         this.§<!;§(param12);
         this.§7`§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§#!u§;
      }
      
      public function get y() : Number
      {
         return this.§<h§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§2!z§ = this.§=C§(param1,this.§"!V§,this.§>!1§,this.§7R§,this.§`!u§,this.§=,§,this.§"$§,this.§`!,§,this.§<!M§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§33§ = this.§=C§(param1,this.§-!e§,this.§1!w§,this.§5!Q§,this.§#F§,this.§]!6§,this.§[! §,this.§'1§,this.§2t§);
      }
      
      public function get scaleX() : Number
      {
         return this.§5!A§ * this.§[%§;
      }
      
      public function get scaleY() : Number
      {
         return this.§,!C§ * this.§[l§;
      }
      
      private function get §[%§() : Number
      {
         if(this.§`!u§ || this.§=,§)
         {
            return this.§"$§;
         }
         return 1;
      }
      
      private function get §[l§() : Number
      {
         if(this.§#F§ || this.§]!6§)
         {
            return this.§[! §;
         }
         return 1;
      }
      
      private function §#>§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == § S§ || param1 == §[p§)
            {
               this.§7R§ = param1;
            }
         }
      }
      
      private function §-!W§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §#[§ || param1 == §[p§)
            {
               this.§5!Q§ = param1;
            }
         }
      }
      
      private function §?!-§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§`!u§ = true;
               this.§=,§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§`!u§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§=,§ = true;
            }
         }
      }
      
      private function §&z§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§#F§ = true;
               this.§]!6§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§#F§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§]!6§ = true;
            }
         }
      }
      
      private function §<!;§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §9<§)
            {
               this.§7`§ = §9<§;
            }
            else if(param1.toUpperCase() == §%§)
            {
               this.§7`§ = §%§;
            }
         }
      }
      
      private function §@!p§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§@!M§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§@!M§ = true;
               this.§0x§ = true;
            }
         }
      }
      
      private function §#!g§() : void
      {
         if(this.§@!M§)
         {
            if(this.§"$§ < this.§[! §)
            {
               if(!this.§0x§)
               {
                  this.§[! § = this.§"$§;
               }
               else
               {
                  this.§"$§ = this.§[! §;
               }
            }
            else if(!this.§0x§)
            {
               this.§"$§ = this.§[! §;
            }
            else
            {
               this.§[! § = this.§"$§;
            }
         }
      }
      
      private function §74§() : void
      {
         if(!this.§=,§ && this.§"$§ > 1)
         {
            this.§"$§ = 1;
         }
         else if(this.§=,§ && !this.§`!u§ && this.§"$§ < 1)
         {
            this.§"$§ = 1;
         }
         if(!this.§]!6§ && this.§[! § > 1)
         {
            this.§[! § = 1;
         }
         else if(this.§]!6§ && !this.§#F§ && this.§[! § < 1)
         {
            this.§[! § = 1;
         }
      }
      
      private function §!4§() : void
      {
         if(this.§7`§ == §9<§)
         {
            this.§"$§ = Math.sqrt(this.§"$§);
            this.§[! § = Math.sqrt(this.§[! §);
         }
         else if(this.§7`§ == §%§)
         {
            this.§"$§ *= this.§"$§;
            this.§[! § *= this.§[! §;
         }
      }
      
      private function §=C§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §8!9§ || param4 == §<f§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == § S§ || param4 == §#[§)
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
         else if(param4 == §[p§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§@!M§)
               {
                  if(!this.§0x§)
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
      
      private function §?!#§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §8!9§ || param4 == §<f§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == § S§ || param4 == §#[§)
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
         else if(param4 == §[p§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§@!M§)
               {
                  if(!this.§0x§)
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
      
      public function §+_§(param1:Number, param2:Number) : void
      {
         this.§"!V§ = param1;
         this.§-!e§ = param2;
         this.§"$§ = param1 / this.§>!1§;
         this.§[! § = param2 / this.§1!w§;
         this.§`!,§ = this.§"$§;
         this.§'1§ = this.§[! §;
         this.§#!g§();
         this.§74§();
         this.§<!M§ = this.§"$§;
         this.§2t§ = this.§[! §;
         this.§!4§();
         this.§#!u§ = this.§?!#§(this.§2!z§,param1,this.§>!1§,this.§7R§,this.§`!u§,this.§=,§,this.§"$§,this.§`!,§,this.§<!M§);
         this.§<h§ = this.§?!#§(this.§33§,param2,this.§1!w§,this.§5!Q§,this.§#F§,this.§]!6§,this.§[! §,this.§'1§,this.§2t§);
      }
   }
}
