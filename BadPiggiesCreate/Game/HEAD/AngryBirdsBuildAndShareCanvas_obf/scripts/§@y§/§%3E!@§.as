package §@y§
{
   public class §>!@§
   {
      
      private static const §24§:String = "RIGHT";
      
      private static const §?!t§:String = "LEFT";
      
      private static const §#Y§:String = "TOP";
      
      private static const §+!a§:String = "BOTTOM";
      
      private static const §""7§:String = "CENTER";
      
      private static const §,!H§:String = "NORMAL";
      
      private static const §'"!§:String = "SQRT";
      
      private static const §#d§:String = "SQR";
       
      
      private var §]^§:Number = 0.0;
      
      private var §,"'§:Number = 0.0;
      
      private var §?!O§:Number = 1.0;
      
      private var §,f§:Number = 1.0;
      
      private var §4;§:Number = 1.0;
      
      private var §8?§:Number = 1.0;
      
      private var §"!d§:String = "LEFT";
      
      private var §,1§:String = "TOP";
      
      private var §1!!§:Boolean = false;
      
      private var §0I§:Boolean = false;
      
      private var §+!X§:Boolean = false;
      
      private var §6"8§:Boolean = false;
      
      private var §6!h§:Boolean = false;
      
      private var §7!,§:Boolean = false;
      
      private var §=8§:String = "NORMAL";
      
      private var §9!O§:Number = 1.0;
      
      private var §;R§:Number = 1.0;
      
      private var §,o§:Number = 1.0;
      
      private var §>Y§:Number = 1.0;
      
      private var §0!V§:Number = 1.0;
      
      private var §-Y§:Number = 1.0;
      
      private var mX:Number = 0.0;
      
      private var mY:Number = 0.0;
      
      private var §3]§:Number = 1.0;
      
      private var §5!6§:Number = 1.0;
      
      public function §>!@§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§]^§ = param1;
         this.§,"'§ = param2;
         this.mX = param1;
         this.mY = param2;
         this.§?!O§ = param3;
         this.§,f§ = param4;
         this.§4;§ = param5;
         this.§8?§ = param6;
         this.§3]§ = param5;
         this.§5!6§ = param6;
         this.§3!A§(param7);
         this.§ !u§(param8);
         this.§6!Z§(param9);
         this.§]M§(param10);
         this.§,&§(param11);
         this.§06§(param12);
         this.§=8§ = param12;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set x(param1:Number) : void
      {
         this.§]^§ = this.§=_§(param1,this.§3]§,this.§4;§,this.§"!d§,this.§1!!§,this.§0I§,this.§9!O§,this.§,o§,this.§0!V§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§,"'§ = this.§=_§(param1,this.§5!6§,this.§8?§,this.§,1§,this.§+!X§,this.§6"8§,this.§;R§,this.§>Y§,this.§-Y§);
      }
      
      public function get scaleX() : Number
      {
         return this.§?!O§ * this.§"!5§;
      }
      
      public function get scaleY() : Number
      {
         return this.§,f§ * this.§=!C§;
      }
      
      private function get §"!5§() : Number
      {
         if(this.§1!!§ || this.§0I§)
         {
            return this.§9!O§;
         }
         return 1;
      }
      
      private function get §=!C§() : Number
      {
         if(this.§+!X§ || this.§6"8§)
         {
            return this.§;R§;
         }
         return 1;
      }
      
      private function §3!A§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §24§ || param1 == §""7§)
            {
               this.§"!d§ = param1;
            }
         }
      }
      
      private function § !u§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §+!a§ || param1 == §""7§)
            {
               this.§,1§ = param1;
            }
         }
      }
      
      private function §6!Z§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§1!!§ = true;
               this.§0I§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§1!!§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§0I§ = true;
            }
         }
      }
      
      private function §]M§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§+!X§ = true;
               this.§6"8§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§+!X§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§6"8§ = true;
            }
         }
      }
      
      private function §06§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §'"!§)
            {
               this.§=8§ = §'"!§;
            }
            else if(param1.toUpperCase() == §#d§)
            {
               this.§=8§ = §#d§;
            }
         }
      }
      
      private function §,&§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§6!h§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§6!h§ = true;
               this.§7!,§ = true;
            }
         }
      }
      
      private function §>!N§() : void
      {
         if(this.§6!h§)
         {
            if(this.§9!O§ < this.§;R§)
            {
               if(!this.§7!,§)
               {
                  this.§;R§ = this.§9!O§;
               }
               else
               {
                  this.§9!O§ = this.§;R§;
               }
            }
            else if(!this.§7!,§)
            {
               this.§9!O§ = this.§;R§;
            }
            else
            {
               this.§;R§ = this.§9!O§;
            }
         }
      }
      
      private function §7%§() : void
      {
         if(!this.§0I§ && this.§9!O§ > 1)
         {
            this.§9!O§ = 1;
         }
         else if(!this.§1!!§ && this.§9!O§ < 1)
         {
            this.§9!O§ = 1;
         }
         if(!this.§6"8§ && this.§;R§ > 1)
         {
            this.§;R§ = 1;
         }
         else if(!this.§+!X§ && this.§;R§ < 1)
         {
            this.§;R§ = 1;
         }
      }
      
      private function § h§() : void
      {
         if(this.§=8§ == §'"!§)
         {
            this.§9!O§ = Math.sqrt(this.§9!O§);
            this.§;R§ = Math.sqrt(this.§;R§);
         }
         else if(this.§=8§ == §#d§)
         {
            this.§9!O§ *= this.§9!O§;
            this.§;R§ *= this.§;R§;
         }
      }
      
      private function §=_§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §?!t§ || param4 == §#Y§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §24§ || param4 == §+!a§)
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
         else if(param4 == §""7§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§6!h§)
               {
                  if(!this.§7!,§)
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
      
      private function §;W§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §?!t§ || param4 == §#Y§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §24§ || param4 == §+!a§)
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
         else if(param4 == §""7§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§6!h§)
               {
                  if(!this.§7!,§)
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
      
      public function §8!p§(param1:Number, param2:Number) : void
      {
         this.§3]§ = param1;
         this.§5!6§ = param2;
         this.§9!O§ = param1 / this.§4;§;
         this.§;R§ = param2 / this.§8?§;
         this.§,o§ = this.§9!O§;
         this.§>Y§ = this.§;R§;
         this.§>!N§();
         this.§7%§();
         this.§0!V§ = this.§9!O§;
         this.§-Y§ = this.§;R§;
         this.§ h§();
         this.mX = this.§;W§(this.§]^§,param1,this.§4;§,this.§"!d§,this.§1!!§,this.§0I§,this.§9!O§,this.§,o§,this.§0!V§);
         this.mY = this.§;W§(this.§,"'§,param2,this.§8?§,this.§,1§,this.§+!X§,this.§6"8§,this.§;R§,this.§>Y§,this.§-Y§);
      }
   }
}
