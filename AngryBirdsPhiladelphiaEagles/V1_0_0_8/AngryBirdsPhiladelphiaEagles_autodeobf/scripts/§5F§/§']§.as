package §5F§
{
   public class §']§
   {
      
      private static const §5Y§:String = "RIGHT";
      
      private static const §&!G§:String = "LEFT";
      
      private static const §+!K§:String = "TOP";
      
      private static const §=!8§:String = "BOTTOM";
      
      private static const §"!6§:String = "CENTER";
      
      private static const §!!3§:String = "NORMAL";
      
      private static const §]?§:String = "SQRT";
      
      private static const §;!8§:String = "SQR";
       
      
      private var §'!0§:Number = 0.0;
      
      private var §%R§:Number = 0.0;
      
      private var §[[§:Number = 1.0;
      
      private var §5K§:Number = 1.0;
      
      private var §0k§:Number = 1.0;
      
      private var §#=§:Number = 1.0;
      
      private var §-!-§:String = "LEFT";
      
      private var §;'§:String = "TOP";
      
      private var §5T§:Boolean = false;
      
      private var §=I§:Boolean = false;
      
      private var §#b§:Boolean = false;
      
      private var §%!+§:Boolean = false;
      
      private var §8!D§:Boolean = false;
      
      private var §'d§:Boolean = false;
      
      private var §6,§:String = "NORMAL";
      
      private var §2Q§:Number = 1.0;
      
      private var §`T§:Number = 1.0;
      
      private var §5u§:Number = 1.0;
      
      private var §]Z§:Number = 1.0;
      
      private var §[Z§:Number = 1.0;
      
      private var §!j§:Number = 1.0;
      
      private var §+Z§:Number = 0.0;
      
      private var §04§:Number = 0.0;
      
      private var § else§:Number = 1.0;
      
      private var §?I§:Number = 1.0;
      
      public function §']§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§'!0§ = param1;
         this.§%R§ = param2;
         this.§+Z§ = param1;
         this.§04§ = param2;
         this.§ else§ = param3;
         this.§?I§ = param4;
         this.§[[§ = param5;
         this.§5K§ = param6;
         this.§0k§ = param5;
         this.§#=§ = param6;
         this.§,E§(param7);
         this.§5!!§(param8);
         this.§%8§(param9);
         this.§%,§(param10);
         this.§1!=§(param11);
         this.§4F§(param12);
         this.§6,§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§+Z§;
      }
      
      public function get y() : Number
      {
         return this.§04§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§'!0§ = this.§#o§(param1,this.§0k§,this.§[[§,this.§-!-§,this.§5T§,this.§=I§,this.§2Q§,this.§5u§,this.§[Z§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§%R§ = this.§#o§(param1,this.§#=§,this.§5K§,this.§;'§,this.§#b§,this.§%!+§,this.§`T§,this.§]Z§,this.§!j§);
      }
      
      public function get scaleX() : Number
      {
         return this.§ else§ * this.§-x§;
      }
      
      public function get scaleY() : Number
      {
         return this.§?I§ * this.§`P§;
      }
      
      private function get §-x§() : Number
      {
         if(this.§5T§ || this.§=I§)
         {
            return this.§2Q§;
         }
         return 1;
      }
      
      private function get §`P§() : Number
      {
         if(this.§#b§ || this.§%!+§)
         {
            return this.§`T§;
         }
         return 1;
      }
      
      private function §,E§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §5Y§ || param1 == §"!6§)
            {
               this.§-!-§ = param1;
            }
         }
      }
      
      private function §5!!§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §=!8§ || param1 == §"!6§)
            {
               this.§;'§ = param1;
            }
         }
      }
      
      private function §%8§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§5T§ = true;
               this.§=I§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§5T§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§=I§ = true;
            }
         }
      }
      
      private function §%,§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§#b§ = true;
               this.§%!+§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§#b§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§%!+§ = true;
            }
         }
      }
      
      private function §4F§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §]?§)
            {
               this.§6,§ = §]?§;
            }
            else if(param1.toUpperCase() == §;!8§)
            {
               this.§6,§ = §;!8§;
            }
         }
      }
      
      private function §1!=§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§8!D§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§8!D§ = true;
               this.§'d§ = true;
            }
         }
      }
      
      private function §^!P§() : void
      {
         if(this.§8!D§)
         {
            if(this.§2Q§ < this.§`T§)
            {
               if(!this.§'d§)
               {
                  this.§`T§ = this.§2Q§;
               }
               else
               {
                  this.§2Q§ = this.§`T§;
               }
            }
            else if(!this.§'d§)
            {
               this.§2Q§ = this.§`T§;
            }
            else
            {
               this.§`T§ = this.§2Q§;
            }
         }
      }
      
      private function §&3§() : void
      {
         if(!this.§=I§ && this.§2Q§ > 1)
         {
            this.§2Q§ = 1;
         }
         else if(this.§=I§ && !this.§5T§ && this.§2Q§ < 1)
         {
            this.§2Q§ = 1;
         }
         if(!this.§%!+§ && this.§`T§ > 1)
         {
            this.§`T§ = 1;
         }
         else if(this.§%!+§ && !this.§#b§ && this.§`T§ < 1)
         {
            this.§`T§ = 1;
         }
      }
      
      private function §#-§() : void
      {
         if(this.§6,§ == §]?§)
         {
            this.§2Q§ = Math.sqrt(this.§2Q§);
            this.§`T§ = Math.sqrt(this.§`T§);
         }
         else if(this.§6,§ == §;!8§)
         {
            this.§2Q§ *= this.§2Q§;
            this.§`T§ *= this.§`T§;
         }
      }
      
      private function §#o§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §&!G§ || param4 == §+!K§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §5Y§ || param4 == §=!8§)
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
         else if(param4 == §"!6§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§8!D§)
               {
                  if(!this.§'d§)
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
      
      private function §+d§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §&!G§ || param4 == §+!K§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §5Y§ || param4 == §=!8§)
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
         else if(param4 == §"!6§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§8!D§)
               {
                  if(!this.§'d§)
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
      
      public function §&x§(param1:Number, param2:Number) : void
      {
         this.§0k§ = param1;
         this.§#=§ = param2;
         this.§2Q§ = param1 / this.§[[§;
         this.§`T§ = param2 / this.§5K§;
         this.§5u§ = this.§2Q§;
         this.§]Z§ = this.§`T§;
         this.§^!P§();
         this.§&3§();
         this.§[Z§ = this.§2Q§;
         this.§!j§ = this.§`T§;
         this.§#-§();
         this.§+Z§ = this.§+d§(this.§'!0§,param1,this.§[[§,this.§-!-§,this.§5T§,this.§=I§,this.§2Q§,this.§5u§,this.§[Z§);
         this.§04§ = this.§+d§(this.§%R§,param2,this.§5K§,this.§;'§,this.§#b§,this.§%!+§,this.§`T§,this.§]Z§,this.§!j§);
      }
   }
}
