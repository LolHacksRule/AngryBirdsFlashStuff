package §1t§
{
   public class §=8§
   {
      
      private static const §8!&§:String = "RIGHT";
      
      private static const §&[§:String = "LEFT";
      
      private static const §;S§:String = "TOP";
      
      private static const §@`§:String = "BOTTOM";
      
      private static const §7!#§:String = "CENTER";
      
      private static const §%o§:String = "NORMAL";
      
      private static const §<!§:String = "SQRT";
      
      private static const §>o§:String = "SQR";
       
      
      private var §1k§:Number = 0.0;
      
      private var §6`§:Number = 0.0;
      
      private var §^W§:Number = 1.0;
      
      private var §!a§:Number = 1.0;
      
      private var §`d§:Number = 1.0;
      
      private var §%7§:Number = 1.0;
      
      private var §1!M§:String = "LEFT";
      
      private var §!!0§:String = "TOP";
      
      private var §;h§:Boolean = false;
      
      private var §&?§:Boolean = false;
      
      private var §8t§:Boolean = false;
      
      private var §!!N§:Boolean = false;
      
      private var §>!'§:Boolean = false;
      
      private var §0!;§:Boolean = false;
      
      private var §,!&§:String = "NORMAL";
      
      private var §!f§:Number = 1.0;
      
      private var §4p§:Number = 1.0;
      
      private var §6!G§:Number = 1.0;
      
      private var §8v§:Number = 1.0;
      
      private var §8J§:Number = 1.0;
      
      private var §6<§:Number = 1.0;
      
      private var § H§:Number = 0.0;
      
      private var §=§:Number = 0.0;
      
      private var §9n§:Number = 1.0;
      
      private var §3!,§:Number = 1.0;
      
      public function §=8§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§1k§ = param1;
         this.§6`§ = param2;
         this.§ H§ = param1;
         this.§=§ = param2;
         this.§^W§ = param3;
         this.§!a§ = param4;
         this.§`d§ = param5;
         this.§%7§ = param6;
         this.§9n§ = param5;
         this.§3!,§ = param6;
         this.§%!N§(param7);
         this.§ i§(param8);
         this.§ z§(param9);
         this.§?!I§(param10);
         this.§var §(param11);
         this.§@!H§(param12);
         this.§,!&§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§ H§;
      }
      
      public function get y() : Number
      {
         return this.§=§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§1k§ = this.§06§(param1,this.§9n§,this.§`d§,this.§1!M§,this.§;h§,this.§&?§,this.§!f§,this.§6!G§,this.§8J§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§6`§ = this.§06§(param1,this.§3!,§,this.§%7§,this.§!!0§,this.§8t§,this.§!!N§,this.§4p§,this.§8v§,this.§6<§);
      }
      
      public function get scaleX() : Number
      {
         return this.§^W§ * this.§6V§;
      }
      
      public function get scaleY() : Number
      {
         return this.§!a§ * this.§4F§;
      }
      
      private function get §6V§() : Number
      {
         if(this.§;h§ || this.§&?§)
         {
            return this.§!f§;
         }
         return 1;
      }
      
      private function get §4F§() : Number
      {
         if(this.§8t§ || this.§!!N§)
         {
            return this.§4p§;
         }
         return 1;
      }
      
      private function §%!N§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §8!&§ || param1 == §7!#§)
            {
               this.§1!M§ = param1;
            }
         }
      }
      
      private function § i§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §@`§ || param1 == §7!#§)
            {
               this.§!!0§ = param1;
            }
         }
      }
      
      private function § z§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§;h§ = true;
               this.§&?§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§;h§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§&?§ = true;
            }
         }
      }
      
      private function §?!I§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§8t§ = true;
               this.§!!N§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§8t§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§!!N§ = true;
            }
         }
      }
      
      private function §@!H§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §<!§)
            {
               this.§,!&§ = §<!§;
            }
            else if(param1.toUpperCase() == §>o§)
            {
               this.§,!&§ = §>o§;
            }
         }
      }
      
      private function §var §(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§>!'§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§>!'§ = true;
               this.§0!;§ = true;
            }
         }
      }
      
      private function §0^§() : void
      {
         if(this.§>!'§)
         {
            if(this.§!f§ < this.§4p§)
            {
               if(!this.§0!;§)
               {
                  this.§4p§ = this.§!f§;
               }
               else
               {
                  this.§!f§ = this.§4p§;
               }
            }
            else if(!this.§0!;§)
            {
               this.§!f§ = this.§4p§;
            }
            else
            {
               this.§4p§ = this.§!f§;
            }
         }
      }
      
      private function §+x§() : void
      {
         if(!this.§&?§ && this.§!f§ > 1)
         {
            this.§!f§ = 1;
         }
         else if(!this.§;h§ && this.§!f§ < 1)
         {
            this.§!f§ = 1;
         }
         if(!this.§!!N§ && this.§4p§ > 1)
         {
            this.§4p§ = 1;
         }
         else if(!this.§8t§ && this.§4p§ < 1)
         {
            this.§4p§ = 1;
         }
      }
      
      private function §,!A§() : void
      {
         if(this.§,!&§ == §<!§)
         {
            this.§!f§ = Math.sqrt(this.§!f§);
            this.§4p§ = Math.sqrt(this.§4p§);
         }
         else if(this.§,!&§ == §>o§)
         {
            this.§!f§ *= this.§!f§;
            this.§4p§ *= this.§4p§;
         }
      }
      
      private function §06§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §&[§ || param4 == §;S§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §8!&§ || param4 == §@`§)
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
         else if(param4 == §7!#§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§>!'§)
               {
                  if(!this.§0!;§)
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
      
      private function §!!C§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §&[§ || param4 == §;S§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §8!&§ || param4 == §@`§)
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
         else if(param4 == §7!#§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§>!'§)
               {
                  if(!this.§0!;§)
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
      
      public function §@!'§(param1:Number, param2:Number) : void
      {
         this.§9n§ = param1;
         this.§3!,§ = param2;
         this.§!f§ = param1 / this.§`d§;
         this.§4p§ = param2 / this.§%7§;
         this.§6!G§ = this.§!f§;
         this.§8v§ = this.§4p§;
         this.§0^§();
         this.§+x§();
         this.§8J§ = this.§!f§;
         this.§6<§ = this.§4p§;
         this.§,!A§();
         this.§ H§ = this.§!!C§(this.§1k§,param1,this.§`d§,this.§1!M§,this.§;h§,this.§&?§,this.§!f§,this.§6!G§,this.§8J§);
         this.§=§ = this.§!!C§(this.§6`§,param2,this.§%7§,this.§!!0§,this.§8t§,this.§!!N§,this.§4p§,this.§8v§,this.§6<§);
      }
   }
}
