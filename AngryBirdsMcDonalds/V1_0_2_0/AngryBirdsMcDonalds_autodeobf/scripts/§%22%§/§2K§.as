package §"%§
{
   public class §2K§
   {
      
      private static const §8!P§:String = "RIGHT";
      
      private static const §%!$§:String = "LEFT";
      
      private static const §14§:String = "TOP";
      
      private static const §2!b§:String = "BOTTOM";
      
      private static const §!]§:String = "CENTER";
      
      private static const §9!9§:String = "NORMAL";
      
      private static const §@V§:String = "SQRT";
      
      private static const §9!o§:String = "SQR";
       
      
      private var §7!8§:Number = 0.0;
      
      private var §`i§:Number = 0.0;
      
      private var §]W§:Number = 1.0;
      
      private var §;y§:Number = 1.0;
      
      private var §77§:Number = 1.0;
      
      private var §[$§:Number = 1.0;
      
      private var §8F§:String = "LEFT";
      
      private var §],§:String = "TOP";
      
      private var §6z§:Boolean = false;
      
      private var §9!C§:Boolean = false;
      
      private var §2!!§:Boolean = false;
      
      private var §&!j§:Boolean = false;
      
      private var §[o§:Boolean = false;
      
      private var §,W§:Boolean = false;
      
      private var §?u§:String = "NORMAL";
      
      private var §5!Y§:Number = 1.0;
      
      private var §4n§:Number = 1.0;
      
      private var §@!=§:Number = 1.0;
      
      private var §>!E§:Number = 1.0;
      
      private var §>>§:Number = 1.0;
      
      private var §?!`§:Number = 1.0;
      
      private var § +§:Number = 0.0;
      
      private var §'Z§:Number = 0.0;
      
      private var §0I§:Number = 1.0;
      
      private var § !a§:Number = 1.0;
      
      public function §2K§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§7!8§ = param1;
         this.§`i§ = param2;
         this.§ +§ = param1;
         this.§'Z§ = param2;
         this.§]W§ = param3;
         this.§;y§ = param4;
         this.§77§ = param5;
         this.§[$§ = param6;
         this.§0I§ = param5;
         this.§ !a§ = param6;
         this.§@N§(param7);
         this.§0!A§(param8);
         this.§@!c§(param9);
         this.§3!P§(param10);
         this.§!!7§(param11);
         this.§?_§(param12);
         this.§?u§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§ +§;
      }
      
      public function get y() : Number
      {
         return this.§'Z§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§7!8§ = this.§5Q§(param1,this.§0I§,this.§77§,this.§8F§,this.§6z§,this.§9!C§,this.§5!Y§,this.§@!=§,this.§>>§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§`i§ = this.§5Q§(param1,this.§ !a§,this.§[$§,this.§],§,this.§2!!§,this.§&!j§,this.§4n§,this.§>!E§,this.§?!`§);
      }
      
      public function get scaleX() : Number
      {
         return this.§]W§ * this.§;8§;
      }
      
      public function get scaleY() : Number
      {
         return this.§;y§ * this.§in§;
      }
      
      private function get §;8§() : Number
      {
         if(this.§6z§ || this.§9!C§)
         {
            return this.§5!Y§;
         }
         return 1;
      }
      
      private function get §in§() : Number
      {
         if(this.§2!!§ || this.§&!j§)
         {
            return this.§4n§;
         }
         return 1;
      }
      
      private function §@N§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §8!P§ || param1 == §!]§)
            {
               this.§8F§ = param1;
            }
         }
      }
      
      private function §0!A§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §2!b§ || param1 == §!]§)
            {
               this.§],§ = param1;
            }
         }
      }
      
      private function §@!c§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§6z§ = true;
               this.§9!C§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§6z§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§9!C§ = true;
            }
         }
      }
      
      private function §3!P§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§2!!§ = true;
               this.§&!j§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§2!!§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§&!j§ = true;
            }
         }
      }
      
      private function §?_§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §@V§)
            {
               this.§?u§ = §@V§;
            }
            else if(param1.toUpperCase() == §9!o§)
            {
               this.§?u§ = §9!o§;
            }
         }
      }
      
      private function §!!7§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§[o§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§[o§ = true;
               this.§,W§ = true;
            }
         }
      }
      
      private function §^!]§() : void
      {
         if(this.§[o§)
         {
            if(this.§5!Y§ < this.§4n§)
            {
               if(!this.§,W§)
               {
                  this.§4n§ = this.§5!Y§;
               }
               else
               {
                  this.§5!Y§ = this.§4n§;
               }
            }
            else if(!this.§,W§)
            {
               this.§5!Y§ = this.§4n§;
            }
            else
            {
               this.§4n§ = this.§5!Y§;
            }
         }
      }
      
      private function §0`§() : void
      {
         if(!this.§9!C§ && this.§5!Y§ > 1)
         {
            this.§5!Y§ = 1;
         }
         else if(!this.§6z§ && this.§5!Y§ < 1)
         {
            this.§5!Y§ = 1;
         }
         if(!this.§&!j§ && this.§4n§ > 1)
         {
            this.§4n§ = 1;
         }
         else if(!this.§2!!§ && this.§4n§ < 1)
         {
            this.§4n§ = 1;
         }
      }
      
      private function §?"§() : void
      {
         if(this.§?u§ == §@V§)
         {
            this.§5!Y§ = Math.sqrt(this.§5!Y§);
            this.§4n§ = Math.sqrt(this.§4n§);
         }
         else if(this.§?u§ == §9!o§)
         {
            this.§5!Y§ *= this.§5!Y§;
            this.§4n§ *= this.§4n§;
         }
      }
      
      private function §5Q§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §%!$§ || param4 == §14§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §8!P§ || param4 == §2!b§)
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
         else if(param4 == §!]§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§[o§)
               {
                  if(!this.§,W§)
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
      
      private function §]+§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §%!$§ || param4 == §14§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §8!P§ || param4 == §2!b§)
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
         else if(param4 == §!]§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§[o§)
               {
                  if(!this.§,W§)
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
      
      public function §,>§(param1:Number, param2:Number) : void
      {
         this.§0I§ = param1;
         this.§ !a§ = param2;
         this.§5!Y§ = param1 / this.§77§;
         this.§4n§ = param2 / this.§[$§;
         this.§@!=§ = this.§5!Y§;
         this.§>!E§ = this.§4n§;
         this.§^!]§();
         this.§0`§();
         this.§>>§ = this.§5!Y§;
         this.§?!`§ = this.§4n§;
         this.§?"§();
         this.§ +§ = this.§]+§(this.§7!8§,param1,this.§77§,this.§8F§,this.§6z§,this.§9!C§,this.§5!Y§,this.§@!=§,this.§>>§);
         this.§'Z§ = this.§]+§(this.§`i§,param2,this.§[$§,this.§],§,this.§2!!§,this.§&!j§,this.§4n§,this.§>!E§,this.§?!`§);
      }
   }
}
