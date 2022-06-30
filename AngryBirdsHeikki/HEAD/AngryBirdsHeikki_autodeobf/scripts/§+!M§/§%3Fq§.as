package §+!M§
{
   public class §?q§
   {
      
      private static const §+H§:String = "RIGHT";
      
      private static const §1!&§:String = "LEFT";
      
      private static const §+!7§:String = "TOP";
      
      private static const §8o§:String = "BOTTOM";
      
      private static const §]![§:String = "CENTER";
      
      private static const §"!+§:String = "NORMAL";
      
      private static const §?=§:String = "SQRT";
      
      private static const §;!3§:String = "SQR";
       
      
      private var §!x§:Number = 0.0;
      
      private var §0!&§:Number = 0.0;
      
      private var §!o§:Number = 1.0;
      
      private var §<3§:Number = 1.0;
      
      private var §4t§:Number = 1.0;
      
      private var §`x§:Number = 1.0;
      
      private var §`&§:String = "LEFT";
      
      private var §3! §:String = "TOP";
      
      private var §+^§:Boolean = false;
      
      private var §`!e§:Boolean = false;
      
      private var §]i§:Boolean = false;
      
      private var §0!c§:Boolean = false;
      
      private var §]#§:Boolean = false;
      
      private var §6^§:Boolean = false;
      
      private var §6!2§:String = "NORMAL";
      
      private var §1N§:Number = 1.0;
      
      private var §#!d§:Number = 1.0;
      
      private var §6!C§:Number = 1.0;
      
      private var §?8§:Number = 1.0;
      
      private var §+O§:Number = 1.0;
      
      private var §2v§:Number = 1.0;
      
      private var §5T§:Number = 0.0;
      
      private var §![§:Number = 0.0;
      
      private var §;v§:Number = 1.0;
      
      private var §do §:Number = 1.0;
      
      public function §?q§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§!x§ = param1;
         this.§0!&§ = param2;
         this.§5T§ = param1;
         this.§![§ = param2;
         this.§!o§ = param3;
         this.§<3§ = param4;
         this.§4t§ = param5;
         this.§`x§ = param6;
         this.§;v§ = param5;
         this.§do § = param6;
         this.§%v§(param7);
         this.§9C§(param8);
         this.§+S§(param9);
         this.§4n§(param10);
         this.§8h§(param11);
         this.§!-§(param12);
         this.§6!2§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§5T§;
      }
      
      public function get y() : Number
      {
         return this.§![§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§!x§ = this.§&!@§(param1,this.§;v§,this.§4t§,this.§`&§,this.§+^§,this.§`!e§,this.§1N§,this.§6!C§,this.§+O§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§0!&§ = this.§&!@§(param1,this.§do §,this.§`x§,this.§3! §,this.§]i§,this.§0!c§,this.§#!d§,this.§?8§,this.§2v§);
      }
      
      public function get scaleX() : Number
      {
         return this.§!o§ * this.§#!P§;
      }
      
      public function get scaleY() : Number
      {
         return this.§<3§ * this.§"^§;
      }
      
      private function get §#!P§() : Number
      {
         if(this.§+^§ || this.§`!e§)
         {
            return this.§1N§;
         }
         return 1;
      }
      
      private function get §"^§() : Number
      {
         if(this.§]i§ || this.§0!c§)
         {
            return this.§#!d§;
         }
         return 1;
      }
      
      private function §%v§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §+H§ || param1 == §]![§)
            {
               this.§`&§ = param1;
            }
         }
      }
      
      private function §9C§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §8o§ || param1 == §]![§)
            {
               this.§3! § = param1;
            }
         }
      }
      
      private function §+S§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§+^§ = true;
               this.§`!e§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§+^§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§`!e§ = true;
            }
         }
      }
      
      private function §4n§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§]i§ = true;
               this.§0!c§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§]i§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§0!c§ = true;
            }
         }
      }
      
      private function §!-§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §?=§)
            {
               this.§6!2§ = §?=§;
            }
            else if(param1.toUpperCase() == §;!3§)
            {
               this.§6!2§ = §;!3§;
            }
         }
      }
      
      private function §8h§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§]#§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§]#§ = true;
               this.§6^§ = true;
            }
         }
      }
      
      private function §"!C§() : void
      {
         if(this.§]#§)
         {
            if(this.§1N§ < this.§#!d§)
            {
               if(!this.§6^§)
               {
                  this.§#!d§ = this.§1N§;
               }
               else
               {
                  this.§1N§ = this.§#!d§;
               }
            }
            else if(!this.§6^§)
            {
               this.§1N§ = this.§#!d§;
            }
            else
            {
               this.§#!d§ = this.§1N§;
            }
         }
      }
      
      private function §0m§() : void
      {
         if(!this.§`!e§ && this.§1N§ > 1)
         {
            this.§1N§ = 1;
         }
         else if(!this.§+^§ && this.§1N§ < 1)
         {
            this.§1N§ = 1;
         }
         if(!this.§0!c§ && this.§#!d§ > 1)
         {
            this.§#!d§ = 1;
         }
         else if(!this.§]i§ && this.§#!d§ < 1)
         {
            this.§#!d§ = 1;
         }
      }
      
      private function §'!O§() : void
      {
         if(this.§6!2§ == §?=§)
         {
            this.§1N§ = Math.sqrt(this.§1N§);
            this.§#!d§ = Math.sqrt(this.§#!d§);
         }
         else if(this.§6!2§ == §;!3§)
         {
            this.§1N§ *= this.§1N§;
            this.§#!d§ *= this.§#!d§;
         }
      }
      
      private function §&!@§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §1!&§ || param4 == §+!7§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §+H§ || param4 == §8o§)
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
         else if(param4 == §]![§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§]#§)
               {
                  if(!this.§6^§)
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
      
      private function §0!M§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §1!&§ || param4 == §+!7§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §+H§ || param4 == §8o§)
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
         else if(param4 == §]![§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§]#§)
               {
                  if(!this.§6^§)
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
      
      public function §,+§(param1:Number, param2:Number) : void
      {
         this.§;v§ = param1;
         this.§do § = param2;
         this.§1N§ = param1 / this.§4t§;
         this.§#!d§ = param2 / this.§`x§;
         this.§6!C§ = this.§1N§;
         this.§?8§ = this.§#!d§;
         this.§"!C§();
         this.§0m§();
         this.§+O§ = this.§1N§;
         this.§2v§ = this.§#!d§;
         this.§'!O§();
         this.§5T§ = this.§0!M§(this.§!x§,param1,this.§4t§,this.§`&§,this.§+^§,this.§`!e§,this.§1N§,this.§6!C§,this.§+O§);
         this.§![§ = this.§0!M§(this.§0!&§,param2,this.§`x§,this.§3! §,this.§]i§,this.§0!c§,this.§#!d§,this.§?8§,this.§2v§);
      }
   }
}
