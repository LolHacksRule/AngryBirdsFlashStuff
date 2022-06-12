package §'!A§
{
   public class §]!b§
   {
      
      private static const §&L§:String = "RIGHT";
      
      private static const §1T§:String = "LEFT";
      
      private static const §&N§:String = "TOP";
      
      private static const §6!s§:String = "BOTTOM";
      
      private static const §;e§:String = "CENTER";
      
      private static const §3!'§:String = "NORMAL";
      
      private static const §<!r§:String = "SQRT";
      
      private static const §0"=§:String = "SQR";
       
      
      private var §""=§:Number = 0.0;
      
      private var §?=§:Number = 0.0;
      
      private var §`!,§:Number = 1.0;
      
      private var §>!u§:Number = 1.0;
      
      private var §+d§:Number = 1.0;
      
      private var §5!§:Number = 1.0;
      
      private var §%!!§:String = "LEFT";
      
      private var §;i§:String = "TOP";
      
      private var §2!&§:Boolean = false;
      
      private var §in§:Boolean = false;
      
      private var §0!!§:Boolean = false;
      
      private var §=h§:Boolean = false;
      
      private var §-"6§:Boolean = false;
      
      private var §+R§:Boolean = false;
      
      private var §`!O§:String = "NORMAL";
      
      private var §]!%§:Number = 1.0;
      
      private var §&![§:Number = 1.0;
      
      private var §9#§:Number = 1.0;
      
      private var §'![§:Number = 1.0;
      
      private var §`!E§:Number = 1.0;
      
      private var §7!Q§:Number = 1.0;
      
      private var mX:Number = 0.0;
      
      private var mY:Number = 0.0;
      
      private var §4r§:Number = 1.0;
      
      private var §+" §:Number = 1.0;
      
      public function §]!b§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§""=§ = param1;
         this.§?=§ = param2;
         this.mX = param1;
         this.mY = param2;
         this.§`!,§ = param3;
         this.§>!u§ = param4;
         this.§+d§ = param5;
         this.§5!§ = param6;
         this.§4r§ = param5;
         this.§+" § = param6;
         this.§0!y§(param7);
         this.§ true§(param8);
         this.§0"1§(param9);
         this.§<!`§(param10);
         this.§0!"§(param11);
         this.§8V§(param12);
         this.§`!O§ = param12;
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
         this.§""=§ = this.§8!c§(param1,this.§4r§,this.§+d§,this.§%!!§,this.§2!&§,this.§in§,this.§]!%§,this.§9#§,this.§`!E§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§?=§ = this.§8!c§(param1,this.§+" §,this.§5!§,this.§;i§,this.§0!!§,this.§=h§,this.§&![§,this.§'![§,this.§7!Q§);
      }
      
      public function get scaleX() : Number
      {
         return this.§`!,§ * this.§=!I§;
      }
      
      public function get scaleY() : Number
      {
         return this.§>!u§ * this.§ 2§;
      }
      
      private function get §=!I§() : Number
      {
         if(this.§2!&§ || this.§in§)
         {
            return this.§]!%§;
         }
         return 1;
      }
      
      private function get § 2§() : Number
      {
         if(this.§0!!§ || this.§=h§)
         {
            return this.§&![§;
         }
         return 1;
      }
      
      private function §0!y§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §&L§ || param1 == §;e§)
            {
               this.§%!!§ = param1;
            }
         }
      }
      
      private function § true§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §6!s§ || param1 == §;e§)
            {
               this.§;i§ = param1;
            }
         }
      }
      
      private function §0"1§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§2!&§ = true;
               this.§in§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§2!&§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§in§ = true;
            }
         }
      }
      
      private function §<!`§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§0!!§ = true;
               this.§=h§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§0!!§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§=h§ = true;
            }
         }
      }
      
      private function §8V§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §<!r§)
            {
               this.§`!O§ = §<!r§;
            }
            else if(param1.toUpperCase() == §0"=§)
            {
               this.§`!O§ = §0"=§;
            }
         }
      }
      
      private function §0!"§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§-"6§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§-"6§ = true;
               this.§+R§ = true;
            }
         }
      }
      
      private function §>!3§() : void
      {
         if(this.§-"6§)
         {
            if(this.§]!%§ < this.§&![§)
            {
               if(!this.§+R§)
               {
                  this.§&![§ = this.§]!%§;
               }
               else
               {
                  this.§]!%§ = this.§&![§;
               }
            }
            else if(!this.§+R§)
            {
               this.§]!%§ = this.§&![§;
            }
            else
            {
               this.§&![§ = this.§]!%§;
            }
         }
      }
      
      private function §5+§() : void
      {
         if(!this.§in§ && this.§]!%§ > 1)
         {
            this.§]!%§ = 1;
         }
         else if(!this.§2!&§ && this.§]!%§ < 1)
         {
            this.§]!%§ = 1;
         }
         if(!this.§=h§ && this.§&![§ > 1)
         {
            this.§&![§ = 1;
         }
         else if(!this.§0!!§ && this.§&![§ < 1)
         {
            this.§&![§ = 1;
         }
      }
      
      private function §5!t§() : void
      {
         if(this.§`!O§ == §<!r§)
         {
            this.§]!%§ = Math.sqrt(this.§]!%§);
            this.§&![§ = Math.sqrt(this.§&![§);
         }
         else if(this.§`!O§ == §0"=§)
         {
            this.§]!%§ *= this.§]!%§;
            this.§&![§ *= this.§&![§;
         }
      }
      
      private function §8!c§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §1T§ || param4 == §&N§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §&L§ || param4 == §6!s§)
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
         else if(param4 == §;e§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§-"6§)
               {
                  if(!this.§+R§)
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
      
      private function §-!-§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §1T§ || param4 == §&N§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §&L§ || param4 == §6!s§)
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
         else if(param4 == §;e§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§-"6§)
               {
                  if(!this.§+R§)
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
      
      public function §5[§(param1:Number, param2:Number) : void
      {
         this.§4r§ = param1;
         this.§+" § = param2;
         this.§]!%§ = param1 / this.§+d§;
         this.§&![§ = param2 / this.§5!§;
         this.§9#§ = this.§]!%§;
         this.§'![§ = this.§&![§;
         this.§>!3§();
         this.§5+§();
         this.§`!E§ = this.§]!%§;
         this.§7!Q§ = this.§&![§;
         this.§5!t§();
         this.mX = this.§-!-§(this.§""=§,param1,this.§+d§,this.§%!!§,this.§2!&§,this.§in§,this.§]!%§,this.§9#§,this.§`!E§);
         this.mY = this.§-!-§(this.§?=§,param2,this.§5!§,this.§;i§,this.§0!!§,this.§=h§,this.§&![§,this.§'![§,this.§7!Q§);
      }
   }
}
