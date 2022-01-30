package §@f§
{
   public class §['§
   {
      
      private static const §73§:String = "RIGHT";
      
      private static const §^L§:String = "LEFT";
      
      private static const §@![§:String = "TOP";
      
      private static const §`Y§:String = "BOTTOM";
      
      private static const §<!H§:String = "CENTER";
      
      private static const §9L§:String = "NORMAL";
      
      private static const §;!$§:String = "SQRT";
      
      private static const §[!r§:String = "SQR";
      
      private static const §+!%§:String = "NORMAL_SQRT";
       
      
      private var §%u§:Number = 0.0;
      
      private var §7!#§:Number = 0.0;
      
      private var §9"§:Number = 1.0;
      
      private var §4,§:Number = 1.0;
      
      private var §;@§:Number = 1.0;
      
      private var §@l§:Number = 1.0;
      
      private var §,;§:String = "LEFT";
      
      private var §4F§:String = "TOP";
      
      private var §<!a§:Boolean = false;
      
      private var §8w§:Boolean = false;
      
      private var §^!J§:Boolean = false;
      
      private var §"!l§:Boolean = false;
      
      private var §9_§:Boolean = false;
      
      private var §+?§:Boolean = false;
      
      private var § !u§:Boolean = false;
      
      private var §1!q§:String = "NORMAL";
      
      private var §,K§:Number = 1.0;
      
      private var §5"%§:Number = 1.0;
      
      private var §8!2§:Number = 1.0;
      
      private var §0v§:Number = 1.0;
      
      private var §5g§:Number = 1.0;
      
      private var §3@§:Number = 1.0;
      
      private var §%!H§:Number = 0.0;
      
      private var §^<§:Number = 0.0;
      
      private var §=!W§:Number = 1.0;
      
      private var §,"2§:Number = 1.0;
      
      public function §['§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§%u§ = param1;
         this.§7!#§ = param2;
         this.§%!H§ = param1;
         this.§^<§ = param2;
         this.§9"§ = param3;
         this.§4,§ = param4;
         this.§;@§ = param5;
         this.§@l§ = param6;
         this.§=!W§ = param5;
         this.§,"2§ = param6;
         this.§7i§(param7);
         this.§%x§(param8);
         this.§%!R§(param9);
         this.§^D§(param10);
         this.§%!D§(param11);
         this.§]!f§(param12);
         this.§1!q§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§%!H§;
      }
      
      public function get y() : Number
      {
         return this.§^<§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§%u§ = this.§2" §(param1,this.§=!W§,this.§;@§,this.§,;§,this.§<!a§,this.§8w§,this.§,K§,this.§8!2§,this.§5g§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§7!#§ = this.§2" §(param1,this.§,"2§,this.§@l§,this.§4F§,this.§^!J§,this.§"!l§,this.§5"%§,this.§0v§,this.§3@§);
      }
      
      public function get scaleX() : Number
      {
         return this.§9"§ * this.§5d§;
      }
      
      public function get scaleY() : Number
      {
         return this.§4,§ * this.§0!4§;
      }
      
      private function get §5d§() : Number
      {
         if(this.§<!a§ || this.§8w§)
         {
            return this.§,K§;
         }
         return 1;
      }
      
      private function get §0!4§() : Number
      {
         if(this.§^!J§ || this.§"!l§)
         {
            return this.§5"%§;
         }
         return 1;
      }
      
      private function §7i§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §73§ || param1 == §<!H§)
            {
               this.§,;§ = param1;
            }
         }
      }
      
      private function §%x§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §`Y§ || param1 == §<!H§)
            {
               this.§4F§ = param1;
            }
         }
      }
      
      private function §%!R§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§<!a§ = true;
               this.§8w§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§<!a§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§8w§ = true;
            }
         }
      }
      
      private function §^D§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§^!J§ = true;
               this.§"!l§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§^!J§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§"!l§ = true;
            }
         }
      }
      
      private function §]!f§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §;!$§)
            {
               this.§1!q§ = §;!$§;
            }
            else if(param1.toUpperCase() == §[!r§)
            {
               this.§1!q§ = §[!r§;
            }
            else if(param1.toUpperCase() == §+!%§)
            {
               this.§1!q§ = §+!%§;
            }
         }
      }
      
      private function §%!D§(param1:String) : void
      {
         if(param1)
         {
            switch(param1.toUpperCase())
            {
               case "TRUE":
                  this.§9_§ = true;
                  break;
               case "UP":
                  this.§9_§ = true;
                  this.§+?§ = true;
                  break;
               case "UPDOWN":
                  this.§9_§ = true;
                  this.§ !u§ = true;
            }
         }
      }
      
      private function §%!y§() : void
      {
         if(this.§9_§)
         {
            if(this.§,K§ < this.§5"%§)
            {
               if(!this.§+?§)
               {
                  this.§5"%§ = this.§,K§;
               }
               else
               {
                  this.§,K§ = this.§5"%§;
               }
            }
            else if(!this.§+?§)
            {
               this.§,K§ = this.§5"%§;
            }
            else
            {
               this.§5"%§ = this.§,K§;
            }
         }
      }
      
      private function §-u§() : void
      {
         if(!this.§8w§ && this.§,K§ > 1)
         {
            this.§,K§ = 1;
         }
         else if(!this.§<!a§ && this.§,K§ < 1)
         {
            this.§,K§ = 1;
         }
         if(!this.§"!l§ && this.§5"%§ > 1)
         {
            this.§5"%§ = 1;
         }
         else if(!this.§^!J§ && this.§5"%§ < 1)
         {
            this.§5"%§ = 1;
         }
      }
      
      private function §2!$§() : void
      {
         if(this.§1!q§ == §;!$§)
         {
            this.§,K§ = Math.sqrt(this.§,K§);
            this.§5"%§ = Math.sqrt(this.§5"%§);
         }
         else if(this.§1!q§ == §[!r§)
         {
            this.§,K§ *= this.§,K§;
            this.§5"%§ *= this.§5"%§;
         }
         else if(this.§1!q§ == §+!%§)
         {
            if(this.§,K§ > 1)
            {
               this.§,K§ = Math.sqrt(this.§,K§);
            }
            if(this.§5"%§ > 1)
            {
               this.§5"%§ = Math.sqrt(this.§5"%§);
            }
         }
      }
      
      private function §2" §(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §^L§ || param4 == §@![§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §73§ || param4 == §`Y§)
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
         else if(param4 == §<!H§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§9_§)
               {
                  if(!this.§+?§)
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
      
      private function §1a§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §^L§ || param4 == §@![§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §73§ || param4 == §`Y§)
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
         else if(param4 == §<!H§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§9_§)
               {
                  if(!this.§+?§ && !this.§ !u§)
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
      
      public function §4h§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§=!W§ = param1;
         this.§,"2§ = param2;
         this.§,K§ = param1 / this.§;@§;
         if(!this.§ !u§)
         {
            this.§,K§ = param1 / this.§;@§;
            this.§5"%§ = param2 / this.§@l§;
         }
         else
         {
            _loc3_ = this.§,K§ = param2 / this.§@l§;
            _loc4_ = this.§5"%§ = this.§,K§;
         }
         this.§8!2§ = this.§,K§;
         this.§0v§ = this.§5"%§;
         this.§%!y§();
         this.§-u§();
         this.§5g§ = this.§,K§;
         this.§3@§ = this.§5"%§;
         if(this.§ !u§)
         {
            this.§,K§ = param1 / this.§;@§;
            this.§5"%§ = param2 / this.§@l§;
         }
         this.§2!$§();
         this.§%!H§ = this.§1a§(this.§%u§,param1,this.§;@§,this.§,;§,this.§<!a§,this.§8w§,this.§,K§,this.§8!2§,this.§5g§);
         this.§^<§ = this.§1a§(this.§7!#§,param2,this.§@l§,this.§4F§,this.§^!J§,this.§"!l§,this.§5"%§,this.§0v§,this.§3@§);
         if(this.§ !u§)
         {
            this.§,K§ = _loc3_;
            this.§5"%§ = _loc4_;
         }
      }
   }
}
