package §>!-§
{
   public class §7,§
   {
      
      private static const §@-§:String = "RIGHT";
      
      private static const §=8§:String = "LEFT";
      
      private static const §^e§:String = "TOP";
      
      private static const §7![§:String = "BOTTOM";
      
      private static const §^7§:String = "CENTER";
      
      private static const §#V§:String = "NORMAL";
      
      private static const §,!K§:String = "SQRT";
      
      private static const §>![§:String = "SQR";
       
      
      private var §#I§:Number = 0.0;
      
      private var §<Y§:Number = 0.0;
      
      private var §6D§:Number = 1.0;
      
      private var §8X§:Number = 1.0;
      
      private var §&D§:Number = 1.0;
      
      private var §=!j§:Number = 1.0;
      
      private var § !I§:String = "LEFT";
      
      private var §[g§:String = "TOP";
      
      private var §-l§:Boolean = false;
      
      private var §1!4§:Boolean = false;
      
      private var §?f§:Boolean = false;
      
      private var §?!b§:Boolean = false;
      
      private var §'!8§:Boolean = false;
      
      private var §%!g§:Boolean = false;
      
      private var §;r§:String = "NORMAL";
      
      private var §^w§:Number = 1.0;
      
      private var §&M§:Number = 1.0;
      
      private var §6!S§:Number = 1.0;
      
      private var §'4§:Number = 1.0;
      
      private var §+!W§:Number = 1.0;
      
      private var §%0§:Number = 1.0;
      
      private var §`!%§:Number = 0.0;
      
      private var §else§:Number = 0.0;
      
      private var §?@§:Number = 1.0;
      
      private var §-Z§:Number = 1.0;
      
      public function §7,§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§#I§ = param1;
         this.§<Y§ = param2;
         this.§`!%§ = param1;
         this.§else§ = param2;
         this.§?@§ = param3;
         this.§-Z§ = param4;
         this.§6D§ = param5;
         this.§8X§ = param6;
         this.§&D§ = param5;
         this.§=!j§ = param6;
         this.§0!e§(param7);
         this.§0! §(param8);
         this.§'3§(param9);
         this.§-I§(param10);
         this.§&J§(param11);
         this.§=s§(param12);
         this.§;r§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§`!%§;
      }
      
      public function get y() : Number
      {
         return this.§else§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§#I§ = this.§5!]§(param1,this.§&D§,this.§6D§,this.§ !I§,this.§-l§,this.§1!4§,this.§^w§,this.§6!S§,this.§+!W§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§<Y§ = this.§5!]§(param1,this.§=!j§,this.§8X§,this.§[g§,this.§?f§,this.§?!b§,this.§&M§,this.§'4§,this.§%0§);
      }
      
      public function get scaleX() : Number
      {
         return this.§?@§ * this.§[+§;
      }
      
      public function get scaleY() : Number
      {
         return this.§-Z§ * this.§ true§;
      }
      
      private function get §[+§() : Number
      {
         if(this.§-l§ || this.§1!4§)
         {
            return this.§^w§;
         }
         return 1;
      }
      
      private function get § true§() : Number
      {
         if(this.§?f§ || this.§?!b§)
         {
            return this.§&M§;
         }
         return 1;
      }
      
      private function §0!e§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §@-§ || param1 == §^7§)
            {
               this.§ !I§ = param1;
            }
         }
      }
      
      private function §0! §(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §7![§ || param1 == §^7§)
            {
               this.§[g§ = param1;
            }
         }
      }
      
      private function §'3§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§-l§ = true;
               this.§1!4§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§-l§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§1!4§ = true;
            }
         }
      }
      
      private function §-I§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§?f§ = true;
               this.§?!b§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§?f§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§?!b§ = true;
            }
         }
      }
      
      private function §=s§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §,!K§)
            {
               this.§;r§ = §,!K§;
            }
            else if(param1.toUpperCase() == §>![§)
            {
               this.§;r§ = §>![§;
            }
         }
      }
      
      private function §&J§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§'!8§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§'!8§ = true;
               this.§%!g§ = true;
            }
         }
      }
      
      private function §=!"§() : void
      {
         if(this.§'!8§)
         {
            if(this.§^w§ < this.§&M§)
            {
               if(!this.§%!g§)
               {
                  this.§&M§ = this.§^w§;
               }
               else
               {
                  this.§^w§ = this.§&M§;
               }
            }
            else if(!this.§%!g§)
            {
               this.§^w§ = this.§&M§;
            }
            else
            {
               this.§&M§ = this.§^w§;
            }
         }
      }
      
      private function §2p§() : void
      {
         if(!this.§1!4§ && this.§^w§ > 1)
         {
            this.§^w§ = 1;
         }
         else if(this.§1!4§ && !this.§-l§ && this.§^w§ < 1)
         {
            this.§^w§ = 1;
         }
         if(!this.§?!b§ && this.§&M§ > 1)
         {
            this.§&M§ = 1;
         }
         else if(this.§?!b§ && !this.§?f§ && this.§&M§ < 1)
         {
            this.§&M§ = 1;
         }
      }
      
      private function §30§() : void
      {
         if(this.§;r§ == §,!K§)
         {
            this.§^w§ = Math.sqrt(this.§^w§);
            this.§&M§ = Math.sqrt(this.§&M§);
         }
         else if(this.§;r§ == §>![§)
         {
            this.§^w§ *= this.§^w§;
            this.§&M§ *= this.§&M§;
         }
      }
      
      private function §5!]§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §=8§ || param4 == §^e§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §@-§ || param4 == §7![§)
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
         else if(param4 == §^7§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§'!8§)
               {
                  if(!this.§%!g§)
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
      
      private function §%[§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §=8§ || param4 == §^e§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §@-§ || param4 == §7![§)
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
         else if(param4 == §^7§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§'!8§)
               {
                  if(!this.§%!g§)
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
      
      public function §#!J§(param1:Number, param2:Number) : void
      {
         this.§&D§ = param1;
         this.§=!j§ = param2;
         this.§^w§ = param1 / this.§6D§;
         this.§&M§ = param2 / this.§8X§;
         this.§6!S§ = this.§^w§;
         this.§'4§ = this.§&M§;
         this.§=!"§();
         this.§2p§();
         this.§+!W§ = this.§^w§;
         this.§%0§ = this.§&M§;
         this.§30§();
         this.§`!%§ = this.§%[§(this.§#I§,param1,this.§6D§,this.§ !I§,this.§-l§,this.§1!4§,this.§^w§,this.§6!S§,this.§+!W§);
         this.§else§ = this.§%[§(this.§<Y§,param2,this.§8X§,this.§[g§,this.§?f§,this.§?!b§,this.§&M§,this.§'4§,this.§%0§);
      }
   }
}
