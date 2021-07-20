package §1h§
{
   public class §]$§
   {
      
      private static const §5!C§:String = "RIGHT";
      
      private static const §"!C§:String = "LEFT";
      
      private static const §#T§:String = "TOP";
      
      private static const §%!"§:String = "BOTTOM";
      
      private static const §`!6§:String = "CENTER";
      
      private static const §,!>§:String = "NORMAL";
      
      private static const §;z§:String = "SQRT";
      
      private static const §@!"§:String = "SQR";
       
      
      private var §`D§:Number = 0.0;
      
      private var §,%§:Number = 0.0;
      
      private var §44§:Number = 1.0;
      
      private var §20§:Number = 1.0;
      
      private var §0J§:Number = 1.0;
      
      private var §8w§:Number = 1.0;
      
      private var §40§:String = "LEFT";
      
      private var § if§:String = "TOP";
      
      private var §>Z§:Boolean = false;
      
      private var §!W§:Boolean = false;
      
      private var §&!B§:Boolean = false;
      
      private var §+!%§:Boolean = false;
      
      private var §7l§:Boolean = false;
      
      private var §^b§:Boolean = false;
      
      private var §[I§:String = "NORMAL";
      
      private var §4r§:Number = 1.0;
      
      private var §&o§:Number = 1.0;
      
      private var §[?§:Number = 1.0;
      
      private var §"`§:Number = 1.0;
      
      private var §]!%§:Number = 1.0;
      
      private var §@q§:Number = 1.0;
      
      private var §5!>§:Number = 0.0;
      
      private var §#!$§:Number = 0.0;
      
      private var §02§:Number = 1.0;
      
      private var §4^§:Number = 1.0;
      
      public function §]$§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§`D§ = param1;
         this.§,%§ = param2;
         this.§5!>§ = param1;
         this.§#!$§ = param2;
         this.§02§ = param3;
         this.§4^§ = param4;
         this.§44§ = param5;
         this.§20§ = param6;
         this.§0J§ = param5;
         this.§8w§ = param6;
         this.§2v§(param7);
         this.§8U§(param8);
         this.§<F§(param9);
         this.§<!#§(param10);
         this.§]5§(param11);
         this.§<n§(param12);
         this.§[I§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§5!>§;
      }
      
      public function get y() : Number
      {
         return this.§#!$§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§`D§ = this.§>V§(param1,this.§0J§,this.§44§,this.§40§,this.§>Z§,this.§!W§,this.§4r§,this.§[?§,this.§]!%§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§,%§ = this.§>V§(param1,this.§8w§,this.§20§,this.§ if§,this.§&!B§,this.§+!%§,this.§&o§,this.§"`§,this.§@q§);
      }
      
      public function get scaleX() : Number
      {
         return this.§02§ * this.§6!H§;
      }
      
      public function get scaleY() : Number
      {
         return this.§4^§ * this.§?6§;
      }
      
      private function get §6!H§() : Number
      {
         if(this.§>Z§ || this.§!W§)
         {
            return this.§4r§;
         }
         return 1;
      }
      
      private function get §?6§() : Number
      {
         if(this.§&!B§ || this.§+!%§)
         {
            return this.§&o§;
         }
         return 1;
      }
      
      private function §2v§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §5!C§ || param1 == §`!6§)
            {
               this.§40§ = param1;
            }
         }
      }
      
      private function §8U§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §%!"§ || param1 == §`!6§)
            {
               this.§ if§ = param1;
            }
         }
      }
      
      private function §<F§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§>Z§ = true;
               this.§!W§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§>Z§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§!W§ = true;
            }
         }
      }
      
      private function §<!#§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§&!B§ = true;
               this.§+!%§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§&!B§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§+!%§ = true;
            }
         }
      }
      
      private function §<n§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §;z§)
            {
               this.§[I§ = §;z§;
            }
            else if(param1.toUpperCase() == §@!"§)
            {
               this.§[I§ = §@!"§;
            }
         }
      }
      
      private function §]5§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§7l§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§7l§ = true;
               this.§^b§ = true;
            }
         }
      }
      
      private function §@!<§() : void
      {
         if(this.§7l§)
         {
            if(this.§4r§ < this.§&o§)
            {
               if(!this.§^b§)
               {
                  this.§&o§ = this.§4r§;
               }
               else
               {
                  this.§4r§ = this.§&o§;
               }
            }
            else if(!this.§^b§)
            {
               this.§4r§ = this.§&o§;
            }
            else
            {
               this.§&o§ = this.§4r§;
            }
         }
      }
      
      private function §9!$§() : void
      {
         if(!this.§!W§ && this.§4r§ > 1)
         {
            this.§4r§ = 1;
         }
         else if(this.§!W§ && !this.§>Z§ && this.§4r§ < 1)
         {
            this.§4r§ = 1;
         }
         if(!this.§+!%§ && this.§&o§ > 1)
         {
            this.§&o§ = 1;
         }
         else if(this.§+!%§ && !this.§&!B§ && this.§&o§ < 1)
         {
            this.§&o§ = 1;
         }
      }
      
      private function §[-§() : void
      {
         if(this.§[I§ == §;z§)
         {
            this.§4r§ = Math.sqrt(this.§4r§);
            this.§&o§ = Math.sqrt(this.§&o§);
         }
         else if(this.§[I§ == §@!"§)
         {
            this.§4r§ *= this.§4r§;
            this.§&o§ *= this.§&o§;
         }
      }
      
      private function §>V§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §"!C§ || param4 == §#T§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §5!C§ || param4 == §%!"§)
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
         else if(param4 == §`!6§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§7l§)
               {
                  if(!this.§^b§)
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
      
      private function §>!6§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §"!C§ || param4 == §#T§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §5!C§ || param4 == §%!"§)
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
         else if(param4 == §`!6§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§7l§)
               {
                  if(!this.§^b§)
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
      
      public function §5!!§(param1:Number, param2:Number) : void
      {
         this.§0J§ = param1;
         this.§8w§ = param2;
         this.§4r§ = param1 / this.§44§;
         this.§&o§ = param2 / this.§20§;
         this.§[?§ = this.§4r§;
         this.§"`§ = this.§&o§;
         this.§@!<§();
         this.§9!$§();
         this.§]!%§ = this.§4r§;
         this.§@q§ = this.§&o§;
         this.§[-§();
         this.§5!>§ = this.§>!6§(this.§`D§,param1,this.§44§,this.§40§,this.§>Z§,this.§!W§,this.§4r§,this.§[?§,this.§]!%§);
         this.§#!$§ = this.§>!6§(this.§,%§,param2,this.§20§,this.§ if§,this.§&!B§,this.§+!%§,this.§&o§,this.§"`§,this.§@q§);
      }
   }
}
