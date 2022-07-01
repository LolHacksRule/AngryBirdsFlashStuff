package §<!0§
{
   public class §&!u§
   {
      
      private static const §&f§:String = "RIGHT";
      
      private static const §`!K§:String = "LEFT";
      
      private static const §%!r§:String = "TOP";
      
      private static const §1Q§:String = "BOTTOM";
      
      private static const §0V§:String = "CENTER";
      
      private static const §3z§:String = "NORMAL";
      
      private static const §-@§:String = "SQRT";
      
      private static const §3"3§:String = "SQR";
      
      private static const §7!%§:String = "NORMAL_SQRT";
       
      
      private var §=!u§:Number = 0.0;
      
      private var §+!!§:Number = 0.0;
      
      private var §3!^§:Number = 1.0;
      
      private var §`R§:Number = 1.0;
      
      private var §5f§:Number = 1.0;
      
      private var §`"'§:Number = 1.0;
      
      private var §#""§:String = "LEFT";
      
      private var §+!R§:String = "TOP";
      
      private var §5!k§:Boolean = false;
      
      private var §'G§:Boolean = false;
      
      private var §-!e§:Boolean = false;
      
      private var §'@§:Boolean = false;
      
      private var §2!8§:Boolean = false;
      
      private var §0!W§:Boolean = false;
      
      private var §7!X§:Boolean = false;
      
      private var §-V§:String = "NORMAL";
      
      private var §8N§:Number = 1.0;
      
      private var §^r§:Number = 1.0;
      
      private var §<!<§:Number = 1.0;
      
      private var §!!=§:Number = 1.0;
      
      private var §4S§:Number = 1.0;
      
      private var §7!&§:Number = 1.0;
      
      private var §'!a§:Number = 0.0;
      
      private var §[6§:Number = 0.0;
      
      private var §-!k§:Number = 1.0;
      
      private var §]v§:Number = 1.0;
      
      public function §&!u§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§=!u§ = param1;
         this.§+!!§ = param2;
         this.§'!a§ = param1;
         this.§[6§ = param2;
         this.§3!^§ = param3;
         this.§`R§ = param4;
         this.§5f§ = param5;
         this.§`"'§ = param6;
         this.§-!k§ = param5;
         this.§]v§ = param6;
         this.§6c§(param7);
         this.§?!§(param8);
         this.§6!T§(param9);
         this.§]4§(param10);
         this.§5_§(param11);
         this.§2n§(param12);
         this.§-V§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§'!a§;
      }
      
      public function get y() : Number
      {
         return this.§[6§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§=!u§ = this.§2J§(param1,this.§-!k§,this.§5f§,this.§#""§,this.§5!k§,this.§'G§,this.§8N§,this.§<!<§,this.§4S§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§+!!§ = this.§2J§(param1,this.§]v§,this.§`"'§,this.§+!R§,this.§-!e§,this.§'@§,this.§^r§,this.§!!=§,this.§7!&§);
      }
      
      public function get scaleX() : Number
      {
         return this.§3!^§ * this.§`7§;
      }
      
      public function get scaleY() : Number
      {
         return this.§`R§ * this.§"y§;
      }
      
      private function get §`7§() : Number
      {
         if(this.§5!k§ || this.§'G§)
         {
            return this.§8N§;
         }
         return 1;
      }
      
      private function get §"y§() : Number
      {
         if(this.§-!e§ || this.§'@§)
         {
            return this.§^r§;
         }
         return 1;
      }
      
      private function §6c§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §&f§ || param1 == §0V§)
            {
               this.§#""§ = param1;
            }
         }
      }
      
      private function §?!§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §1Q§ || param1 == §0V§)
            {
               this.§+!R§ = param1;
            }
         }
      }
      
      private function §6!T§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§5!k§ = true;
               this.§'G§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§5!k§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§'G§ = true;
            }
         }
      }
      
      private function §]4§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§-!e§ = true;
               this.§'@§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§-!e§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§'@§ = true;
            }
         }
      }
      
      private function §2n§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §-@§)
            {
               this.§-V§ = §-@§;
            }
            else if(param1.toUpperCase() == §3"3§)
            {
               this.§-V§ = §3"3§;
            }
            else if(param1.toUpperCase() == §7!%§)
            {
               this.§-V§ = §7!%§;
            }
         }
      }
      
      private function §5_§(param1:String) : void
      {
         if(param1)
         {
            switch(param1.toUpperCase())
            {
               case "TRUE":
                  this.§2!8§ = true;
                  break;
               case "UP":
                  this.§2!8§ = true;
                  this.§0!W§ = true;
                  break;
               case "UPDOWN":
                  this.§2!8§ = true;
                  this.§7!X§ = true;
            }
         }
      }
      
      private function §]" §() : void
      {
         if(this.§2!8§)
         {
            if(this.§8N§ < this.§^r§)
            {
               if(!this.§0!W§)
               {
                  this.§^r§ = this.§8N§;
               }
               else
               {
                  this.§8N§ = this.§^r§;
               }
            }
            else if(!this.§0!W§)
            {
               this.§8N§ = this.§^r§;
            }
            else
            {
               this.§^r§ = this.§8N§;
            }
         }
      }
      
      private function §,!7§() : void
      {
         if(!this.§'G§ && this.§8N§ > 1)
         {
            this.§8N§ = 1;
         }
         else if(!this.§5!k§ && this.§8N§ < 1)
         {
            this.§8N§ = 1;
         }
         if(!this.§'@§ && this.§^r§ > 1)
         {
            this.§^r§ = 1;
         }
         else if(!this.§-!e§ && this.§^r§ < 1)
         {
            this.§^r§ = 1;
         }
      }
      
      private function §;!k§() : void
      {
         if(this.§-V§ == §-@§)
         {
            this.§8N§ = Math.sqrt(this.§8N§);
            this.§^r§ = Math.sqrt(this.§^r§);
         }
         else if(this.§-V§ == §3"3§)
         {
            this.§8N§ *= this.§8N§;
            this.§^r§ *= this.§^r§;
         }
         else if(this.§-V§ == §7!%§)
         {
            if(this.§8N§ > 1)
            {
               this.§8N§ = Math.sqrt(this.§8N§);
            }
            if(this.§^r§ > 1)
            {
               this.§^r§ = Math.sqrt(this.§^r§);
            }
         }
      }
      
      private function §2J§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §`!K§ || param4 == §%!r§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §&f§ || param4 == §1Q§)
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
         else if(param4 == §0V§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§2!8§)
               {
                  if(!this.§0!W§)
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
      
      private function §&!;§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §`!K§ || param4 == §%!r§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §&f§ || param4 == §1Q§)
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
         else if(param4 == §0V§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§2!8§)
               {
                  if(!this.§0!W§ && !this.§7!X§)
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
      
      public function §?B§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§-!k§ = param1;
         this.§]v§ = param2;
         this.§8N§ = param1 / this.§5f§;
         if(!this.§7!X§)
         {
            this.§8N§ = param1 / this.§5f§;
            this.§^r§ = param2 / this.§`"'§;
         }
         else
         {
            _loc3_ = this.§8N§ = param2 / this.§`"'§;
            _loc4_ = this.§^r§ = this.§8N§;
         }
         this.§<!<§ = this.§8N§;
         this.§!!=§ = this.§^r§;
         this.§]" §();
         this.§,!7§();
         this.§4S§ = this.§8N§;
         this.§7!&§ = this.§^r§;
         if(this.§7!X§)
         {
            this.§8N§ = param1 / this.§5f§;
            this.§^r§ = param2 / this.§`"'§;
         }
         this.§;!k§();
         this.§'!a§ = this.§&!;§(this.§=!u§,param1,this.§5f§,this.§#""§,this.§5!k§,this.§'G§,this.§8N§,this.§<!<§,this.§4S§);
         this.§[6§ = this.§&!;§(this.§+!!§,param2,this.§`"'§,this.§+!R§,this.§-!e§,this.§'@§,this.§^r§,this.§!!=§,this.§7!&§);
         if(this.§7!X§)
         {
            this.§8N§ = _loc3_;
            this.§^r§ = _loc4_;
         }
      }
   }
}
