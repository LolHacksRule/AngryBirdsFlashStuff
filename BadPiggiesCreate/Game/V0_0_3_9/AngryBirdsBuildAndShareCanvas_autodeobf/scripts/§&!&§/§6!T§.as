package §&!&§
{
   public class §6!T§
   {
      
      private static const §^?§:String = "RIGHT";
      
      private static const §54§:String = "LEFT";
      
      private static const §@!+§:String = "TOP";
      
      private static const §-?§:String = "BOTTOM";
      
      private static const §@"5§:String = "CENTER";
      
      private static const §@!U§:String = "NORMAL";
      
      private static const §4!2§:String = "SQRT";
      
      private static const §3q§:String = "SQR";
       
      
      private var native:Number = 0.0;
      
      private var §7!4§:Number = 0.0;
      
      private var §'!e§:Number = 1.0;
      
      private var §5p§:Number = 1.0;
      
      private var §[!m§:Number = 1.0;
      
      private var §`""§:Number = 1.0;
      
      private var §`!2§:String = "LEFT";
      
      private var §^!>§:String = "TOP";
      
      private var §9!k§:Boolean = false;
      
      private var §>e§:Boolean = false;
      
      private var §`B§:Boolean = false;
      
      private var §+"-§:Boolean = false;
      
      private var §6e§:Boolean = false;
      
      private var §`!O§:Boolean = false;
      
      private var §8b§:String = "NORMAL";
      
      private var §3!v§:Number = 1.0;
      
      private var §9'§:Number = 1.0;
      
      private var §2+§:Number = 1.0;
      
      private var §0!k§:Number = 1.0;
      
      private var §?!r§:Number = 1.0;
      
      private var §>!g§:Number = 1.0;
      
      private var mX:Number = 0.0;
      
      private var mY:Number = 0.0;
      
      private var §9!K§:Number = 1.0;
      
      private var §@0§:Number = 1.0;
      
      public function §6!T§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.native = param1;
         this.§7!4§ = param2;
         this.mX = param1;
         this.mY = param2;
         this.§'!e§ = param3;
         this.§5p§ = param4;
         this.§[!m§ = param5;
         this.§`""§ = param6;
         this.§9!K§ = param5;
         this.§@0§ = param6;
         this.§4I§(param7);
         this.§]!t§(param8);
         this.§8!v§(param9);
         this.§1!^§(param10);
         this.§-8§(param11);
         this.§>!K§(param12);
         this.§8b§ = param12;
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
         this.native = this.§?!1§(param1,this.§9!K§,this.§[!m§,this.§`!2§,this.§9!k§,this.§>e§,this.§3!v§,this.§2+§,this.§?!r§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§7!4§ = this.§?!1§(param1,this.§@0§,this.§`""§,this.§^!>§,this.§`B§,this.§+"-§,this.§9'§,this.§0!k§,this.§>!g§);
      }
      
      public function get scaleX() : Number
      {
         return this.§'!e§ * this.§!"!§;
      }
      
      public function get scaleY() : Number
      {
         return this.§5p§ * this.§ `§;
      }
      
      private function get §!"!§() : Number
      {
         if(this.§9!k§ || this.§>e§)
         {
            return this.§3!v§;
         }
         return 1;
      }
      
      private function get § `§() : Number
      {
         if(this.§`B§ || this.§+"-§)
         {
            return this.§9'§;
         }
         return 1;
      }
      
      private function §4I§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §^?§ || param1 == §@"5§)
            {
               this.§`!2§ = param1;
            }
         }
      }
      
      private function §]!t§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §-?§ || param1 == §@"5§)
            {
               this.§^!>§ = param1;
            }
         }
      }
      
      private function §8!v§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§9!k§ = true;
               this.§>e§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§9!k§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§>e§ = true;
            }
         }
      }
      
      private function §1!^§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§`B§ = true;
               this.§+"-§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§`B§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§+"-§ = true;
            }
         }
      }
      
      private function §>!K§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §4!2§)
            {
               this.§8b§ = §4!2§;
            }
            else if(param1.toUpperCase() == §3q§)
            {
               this.§8b§ = §3q§;
            }
         }
      }
      
      private function §-8§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§6e§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§6e§ = true;
               this.§`!O§ = true;
            }
         }
      }
      
      private function §#!K§() : void
      {
         if(this.§6e§)
         {
            if(this.§3!v§ < this.§9'§)
            {
               if(!this.§`!O§)
               {
                  this.§9'§ = this.§3!v§;
               }
               else
               {
                  this.§3!v§ = this.§9'§;
               }
            }
            else if(!this.§`!O§)
            {
               this.§3!v§ = this.§9'§;
            }
            else
            {
               this.§9'§ = this.§3!v§;
            }
         }
      }
      
      private function §%y§() : void
      {
         if(!this.§>e§ && this.§3!v§ > 1)
         {
            this.§3!v§ = 1;
         }
         else if(!this.§9!k§ && this.§3!v§ < 1)
         {
            this.§3!v§ = 1;
         }
         if(!this.§+"-§ && this.§9'§ > 1)
         {
            this.§9'§ = 1;
         }
         else if(!this.§`B§ && this.§9'§ < 1)
         {
            this.§9'§ = 1;
         }
      }
      
      private function §9F§() : void
      {
         if(this.§8b§ == §4!2§)
         {
            this.§3!v§ = Math.sqrt(this.§3!v§);
            this.§9'§ = Math.sqrt(this.§9'§);
         }
         else if(this.§8b§ == §3q§)
         {
            this.§3!v§ *= this.§3!v§;
            this.§9'§ *= this.§9'§;
         }
      }
      
      private function §?!1§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §54§ || param4 == §@!+§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §^?§ || param4 == §-?§)
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
         else if(param4 == §@"5§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§6e§)
               {
                  if(!this.§`!O§)
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
      
      private function §0"#§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §54§ || param4 == §@!+§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §^?§ || param4 == §-?§)
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
         else if(param4 == §@"5§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§6e§)
               {
                  if(!this.§`!O§)
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
      
      public function §9!l§(param1:Number, param2:Number) : void
      {
         this.§9!K§ = param1;
         this.§@0§ = param2;
         this.§3!v§ = param1 / this.§[!m§;
         this.§9'§ = param2 / this.§`""§;
         this.§2+§ = this.§3!v§;
         this.§0!k§ = this.§9'§;
         this.§#!K§();
         this.§%y§();
         this.§?!r§ = this.§3!v§;
         this.§>!g§ = this.§9'§;
         this.§9F§();
         this.mX = this.§0"#§(this.native,param1,this.§[!m§,this.§`!2§,this.§9!k§,this.§>e§,this.§3!v§,this.§2+§,this.§?!r§);
         this.mY = this.§0"#§(this.§7!4§,param2,this.§`""§,this.§^!>§,this.§`B§,this.§+"-§,this.§9'§,this.§0!k§,this.§>!g§);
      }
   }
}
