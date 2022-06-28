package §@s§
{
   public class §`D§
   {
      
      private static const §"!C§:String = "RIGHT";
      
      private static const §#T§:String = "LEFT";
      
      private static const §%!"§:String = "TOP";
      
      private static const §`!6§:String = "BOTTOM";
      
      private static const §,!>§:String = "CENTER";
      
      private static const §;z§:String = "NORMAL";
      
      private static const §@!"§:String = "SQRT";
      
      private static const §;x§:String = "SQR";
       
      
      private var §,%§:Number = 0.0;
      
      private var §!W§:Number = 0.0;
      
      private var §20§:Number = 1.0;
      
      private var §40§:Number = 1.0;
      
      private var §8w§:Number = 1.0;
      
      private var §44§:Number = 1.0;
      
      private var § if§:String = "LEFT";
      
      private var §>Z§:String = "TOP";
      
      private var §&!B§:Boolean = false;
      
      private var §+!%§:Boolean = false;
      
      private var §[I§:Boolean = false;
      
      private var §^b§:Boolean = false;
      
      private var §6x§:Boolean = false;
      
      private var §4r§:Boolean = false;
      
      private var §7l§:String = "NORMAL";
      
      private var §&o§:Number = 1.0;
      
      private var §[?§:Number = 1.0;
      
      private var §"`§:Number = 1.0;
      
      private var §]!%§:Number = 1.0;
      
      private var §@q§:Number = 1.0;
      
      private var §02§:Number = 1.0;
      
      private var §5!>§:Number = 0.0;
      
      private var §#!$§:Number = 0.0;
      
      private var §4^§:Number = 1.0;
      
      private var §6!H§:Number = 1.0;
      
      public function §`D§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§,%§ = param1;
         this.§!W§ = param2;
         this.§5!>§ = param1;
         this.§#!$§ = param2;
         this.§4^§ = param3;
         this.§6!H§ = param4;
         this.§20§ = param5;
         this.§40§ = param6;
         this.§8w§ = param5;
         this.§44§ = param6;
         this.§8U§(param7);
         this.§<F§(param8);
         this.§<!#§(param9);
         this.§<n§(param10);
         this.§@!<§(param11);
         this.§]5§(param12);
         this.§7l§ = param12;
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
         this.§,%§ = this.§>!6§(param1,this.§8w§,this.§20§,this.§ if§,this.§&!B§,this.§+!%§,this.§&o§,this.§"`§,this.§@q§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§!W§ = this.§>!6§(param1,this.§44§,this.§40§,this.§>Z§,this.§[I§,this.§^b§,this.§[?§,this.§]!%§,this.§02§);
      }
      
      public function get scaleX() : Number
      {
         return this.§4^§ * this.§?6§;
      }
      
      public function get scaleY() : Number
      {
         return this.§6!H§ * this.§2v§;
      }
      
      private function get §?6§() : Number
      {
         if(this.§&!B§ || this.§+!%§)
         {
            return this.§&o§;
         }
         return 1;
      }
      
      private function get §2v§() : Number
      {
         if(this.§[I§ || this.§^b§)
         {
            return this.§[?§;
         }
         return 1;
      }
      
      private function §8U§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §"!C§ || param1 == §,!>§)
            {
               this.§ if§ = param1;
            }
         }
      }
      
      private function §<F§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §`!6§ || param1 == §,!>§)
            {
               this.§>Z§ = param1;
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
            else if(param1.toUpperCase() == "DOWN")
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
            if(param1.toUpperCase() == "TRUE")
            {
               this.§[I§ = true;
               this.§^b§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§[I§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§^b§ = true;
            }
         }
      }
      
      private function §]5§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §@!"§)
            {
               this.§7l§ = §@!"§;
            }
            else if(param1.toUpperCase() == §;x§)
            {
               this.§7l§ = §;x§;
            }
         }
      }
      
      private function §@!<§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§6x§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§6x§ = true;
               this.§4r§ = true;
            }
         }
      }
      
      private function §9!$§() : void
      {
         if(this.§6x§)
         {
            if(this.§&o§ < this.§[?§)
            {
               if(!this.§4r§)
               {
                  this.§[?§ = this.§&o§;
               }
               else
               {
                  this.§&o§ = this.§[?§;
               }
            }
            else if(!this.§4r§)
            {
               this.§&o§ = this.§[?§;
            }
            else
            {
               this.§[?§ = this.§&o§;
            }
         }
      }
      
      private function §[-§() : void
      {
         if(!this.§+!%§ && this.§&o§ > 1)
         {
            this.§&o§ = 1;
         }
         else if(this.§+!%§ && !this.§&!B§ && this.§&o§ < 1)
         {
            this.§&o§ = 1;
         }
         if(!this.§^b§ && this.§[?§ > 1)
         {
            this.§[?§ = 1;
         }
         else if(this.§^b§ && !this.§[I§ && this.§[?§ < 1)
         {
            this.§[?§ = 1;
         }
      }
      
      private function §>V§() : void
      {
         if(this.§7l§ == §@!"§)
         {
            this.§&o§ = Math.sqrt(this.§&o§);
            this.§[?§ = Math.sqrt(this.§[?§);
         }
         else if(this.§7l§ == §;x§)
         {
            this.§&o§ *= this.§&o§;
            this.§[?§ *= this.§[?§;
         }
      }
      
      private function §>!6§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §#T§ || param4 == §%!"§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §"!C§ || param4 == §`!6§)
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
         else if(param4 == §,!>§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§6x§)
               {
                  if(!this.§4r§)
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
      
      private function §5!!§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §#T§ || param4 == §%!"§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §"!C§ || param4 == §`!6§)
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
         else if(param4 == §,!>§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§6x§)
               {
                  if(!this.§4r§)
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
      
      public function §5!C§(param1:Number, param2:Number) : void
      {
         this.§8w§ = param1;
         this.§44§ = param2;
         this.§&o§ = param1 / this.§20§;
         this.§[?§ = param2 / this.§40§;
         this.§"`§ = this.§&o§;
         this.§]!%§ = this.§[?§;
         this.§9!$§();
         this.§[-§();
         this.§@q§ = this.§&o§;
         this.§02§ = this.§[?§;
         this.§>V§();
         this.§5!>§ = this.§5!!§(this.§,%§,param1,this.§20§,this.§ if§,this.§&!B§,this.§+!%§,this.§&o§,this.§"`§,this.§@q§);
         this.§#!$§ = this.§5!!§(this.§!W§,param2,this.§40§,this.§>Z§,this.§[I§,this.§^b§,this.§[?§,this.§]!%§,this.§02§);
      }
   }
}
