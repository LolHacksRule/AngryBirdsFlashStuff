package §7'§
{
   public class §1!H§
   {
      
      private static const §4!P§:String = "RIGHT";
      
      private static const §false§:String = "LEFT";
      
      private static const §0P§:String = "TOP";
      
      private static const § !`§:String = "BOTTOM";
      
      private static const §<;§:String = "CENTER";
      
      private static const §2E§:String = "NORMAL";
      
      private static const §6!R§:String = "SQRT";
      
      private static const § !X§:String = "SQR";
       
      
      private var §0!F§:Number = 0.0;
      
      private var §,9§:Number = 0.0;
      
      private var §9E§:Number = 1.0;
      
      private var §8b§:Number = 1.0;
      
      private var §9!"§:Number = 1.0;
      
      private var §1B§:Number = 1.0;
      
      private var §7!$§:String = "LEFT";
      
      private var §3#§:String = "TOP";
      
      private var §,p§:Boolean = false;
      
      private var § v§:Boolean = false;
      
      private var §2!Y§:Boolean = false;
      
      private var §7!M§:Boolean = false;
      
      private var §%!Q§:Boolean = false;
      
      private var §[$§:Boolean = false;
      
      private var §8!;§:String = "NORMAL";
      
      private var §6!2§:Number = 1.0;
      
      private var §^>§:Number = 1.0;
      
      private var §]&§:Number = 1.0;
      
      private var §+v§:Number = 1.0;
      
      private var §^%§:Number = 1.0;
      
      private var §8!_§:Number = 1.0;
      
      private var §!-§:Number = 0.0;
      
      private var §[4§:Number = 0.0;
      
      private var §%!=§:Number = 1.0;
      
      private var §!!Y§:Number = 1.0;
      
      public function §1!H§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§0!F§ = param1;
         this.§,9§ = param2;
         this.§!-§ = param1;
         this.§[4§ = param2;
         this.§9E§ = param3;
         this.§8b§ = param4;
         this.§9!"§ = param5;
         this.§1B§ = param6;
         this.§%!=§ = param5;
         this.§!!Y§ = param6;
         this.§>S§(param7);
         this.§#s§(param8);
         this.§3&§(param9);
         this.§0!&§(param10);
         this.§<!3§(param11);
         this.§1j§(param12);
         this.§8!;§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§!-§;
      }
      
      public function get y() : Number
      {
         return this.§[4§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§0!F§ = this.§?!P§(param1,this.§%!=§,this.§9!"§,this.§7!$§,this.§,p§,this.§ v§,this.§6!2§,this.§]&§,this.§^%§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§,9§ = this.§?!P§(param1,this.§!!Y§,this.§1B§,this.§3#§,this.§2!Y§,this.§7!M§,this.§^>§,this.§+v§,this.§8!_§);
      }
      
      public function get scaleX() : Number
      {
         return this.§9E§ * this.§'"§;
      }
      
      public function get scaleY() : Number
      {
         return this.§8b§ * this.§[&§;
      }
      
      private function get §'"§() : Number
      {
         if(this.§,p§ || this.§ v§)
         {
            return this.§6!2§;
         }
         return 1;
      }
      
      private function get §[&§() : Number
      {
         if(this.§2!Y§ || this.§7!M§)
         {
            return this.§^>§;
         }
         return 1;
      }
      
      private function §>S§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §4!P§ || param1 == §<;§)
            {
               this.§7!$§ = param1;
            }
         }
      }
      
      private function §#s§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == § !`§ || param1 == §<;§)
            {
               this.§3#§ = param1;
            }
         }
      }
      
      private function §3&§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§,p§ = true;
               this.§ v§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§,p§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§ v§ = true;
            }
         }
      }
      
      private function §0!&§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§2!Y§ = true;
               this.§7!M§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§2!Y§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§7!M§ = true;
            }
         }
      }
      
      private function §1j§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §6!R§)
            {
               this.§8!;§ = §6!R§;
            }
            else if(param1.toUpperCase() == § !X§)
            {
               this.§8!;§ = § !X§;
            }
         }
      }
      
      private function §<!3§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§%!Q§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§%!Q§ = true;
               this.§[$§ = true;
            }
         }
      }
      
      private function §,!G§() : void
      {
         if(this.§%!Q§)
         {
            if(this.§6!2§ < this.§^>§)
            {
               if(!this.§[$§)
               {
                  this.§^>§ = this.§6!2§;
               }
               else
               {
                  this.§6!2§ = this.§^>§;
               }
            }
            else if(!this.§[$§)
            {
               this.§6!2§ = this.§^>§;
            }
            else
            {
               this.§^>§ = this.§6!2§;
            }
         }
      }
      
      private function §,! §() : void
      {
         if(!this.§ v§ && this.§6!2§ > 1)
         {
            this.§6!2§ = 1;
         }
         else if(!this.§,p§ && this.§6!2§ < 1)
         {
            this.§6!2§ = 1;
         }
         if(!this.§7!M§ && this.§^>§ > 1)
         {
            this.§^>§ = 1;
         }
         else if(!this.§2!Y§ && this.§^>§ < 1)
         {
            this.§^>§ = 1;
         }
      }
      
      private function §0!a§() : void
      {
         if(this.§8!;§ == §6!R§)
         {
            this.§6!2§ = Math.sqrt(this.§6!2§);
            this.§^>§ = Math.sqrt(this.§^>§);
         }
         else if(this.§8!;§ == § !X§)
         {
            this.§6!2§ *= this.§6!2§;
            this.§^>§ *= this.§^>§;
         }
      }
      
      private function §?!P§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §false§ || param4 == §0P§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §4!P§ || param4 == § !`§)
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
         else if(param4 == §<;§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§%!Q§)
               {
                  if(!this.§[$§)
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
      
      private function §6;§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §false§ || param4 == §0P§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §4!P§ || param4 == § !`§)
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
         else if(param4 == §<;§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§%!Q§)
               {
                  if(!this.§[$§)
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
      
      public function §&s§(param1:Number, param2:Number) : void
      {
         this.§%!=§ = param1;
         this.§!!Y§ = param2;
         this.§6!2§ = param1 / this.§9!"§;
         this.§^>§ = param2 / this.§1B§;
         this.§]&§ = this.§6!2§;
         this.§+v§ = this.§^>§;
         this.§,!G§();
         this.§,! §();
         this.§^%§ = this.§6!2§;
         this.§8!_§ = this.§^>§;
         this.§0!a§();
         this.§!-§ = this.§6;§(this.§0!F§,param1,this.§9!"§,this.§7!$§,this.§,p§,this.§ v§,this.§6!2§,this.§]&§,this.§^%§);
         this.§[4§ = this.§6;§(this.§,9§,param2,this.§1B§,this.§3#§,this.§2!Y§,this.§7!M§,this.§^>§,this.§+v§,this.§8!_§);
      }
   }
}
