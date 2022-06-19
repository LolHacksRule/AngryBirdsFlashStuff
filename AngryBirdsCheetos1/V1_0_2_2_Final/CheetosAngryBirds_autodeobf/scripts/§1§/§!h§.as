package §1§
{
   public class §!h§
   {
      
      private static const §1r§:String = "RIGHT";
      
      private static const §"!7§:String = "LEFT";
      
      private static const §'<§:String = "TOP";
      
      private static const §3!D§:String = "BOTTOM";
      
      private static const §"l§:String = "CENTER";
      
      private static const §]C§:String = "NORMAL";
      
      private static const §>J§:String = "SQRT";
      
      private static const §"t§:String = "SQR";
       
      
      private var §7d§:Number = 0.0;
      
      private var §%!7§:Number = 0.0;
      
      private var §1!P§:Number = 1.0;
      
      private var §8!!§:Number = 1.0;
      
      private var §#Z§:Number = 1.0;
      
      private var §%!&§:Number = 1.0;
      
      private var §!!O§:String = "LEFT";
      
      private var §7!T§:String = "TOP";
      
      private var §;!2§:Boolean = false;
      
      private var §"k§:Boolean = false;
      
      private var §1t§:Boolean = false;
      
      private var §'!§:Boolean = false;
      
      private var §-!'§:Boolean = false;
      
      private var §8n§:Boolean = false;
      
      private var §[J§:String = "NORMAL";
      
      private var §6w§:Number = 1.0;
      
      private var §#!O§:Number = 1.0;
      
      private var §>!F§:Number = 1.0;
      
      private var §9p§:Number = 1.0;
      
      private var §!7§:Number = 1.0;
      
      private var §&d§:Number = 1.0;
      
      private var §<!Y§:Number = 0.0;
      
      private var § l§:Number = 0.0;
      
      private var §>!]§:Number = 1.0;
      
      private var §"y§:Number = 1.0;
      
      public function §!h§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§7d§ = param1;
         this.§%!7§ = param2;
         this.§<!Y§ = param1;
         this.§ l§ = param2;
         this.§>!]§ = param3;
         this.§"y§ = param4;
         this.§1!P§ = param5;
         this.§8!!§ = param6;
         this.§#Z§ = param5;
         this.§%!&§ = param6;
         this.§9T§(param7);
         this.§5_§(param8);
         this.§`!F§(param9);
         this.§[9§(param10);
         this.§-!§(param11);
         this.§49§(param12);
         this.§[J§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§<!Y§;
      }
      
      public function get y() : Number
      {
         return this.§ l§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§7d§ = this.§@!<§(param1,this.§#Z§,this.§1!P§,this.§!!O§,this.§;!2§,this.§"k§,this.§6w§,this.§>!F§,this.§!7§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§%!7§ = this.§@!<§(param1,this.§%!&§,this.§8!!§,this.§7!T§,this.§1t§,this.§'!§,this.§#!O§,this.§9p§,this.§&d§);
      }
      
      public function get scaleX() : Number
      {
         return this.§>!]§ * this.§;N§;
      }
      
      public function get scaleY() : Number
      {
         return this.§"y§ * this.§7Y§;
      }
      
      private function get §;N§() : Number
      {
         if(this.§;!2§ || this.§"k§)
         {
            return this.§6w§;
         }
         return 1;
      }
      
      private function get §7Y§() : Number
      {
         if(this.§1t§ || this.§'!§)
         {
            return this.§#!O§;
         }
         return 1;
      }
      
      private function §9T§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §1r§ || param1 == §"l§)
            {
               this.§!!O§ = param1;
            }
         }
      }
      
      private function §5_§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §3!D§ || param1 == §"l§)
            {
               this.§7!T§ = param1;
            }
         }
      }
      
      private function §`!F§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§;!2§ = true;
               this.§"k§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§;!2§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§"k§ = true;
            }
         }
      }
      
      private function §[9§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§1t§ = true;
               this.§'!§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§1t§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§'!§ = true;
            }
         }
      }
      
      private function §49§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §>J§)
            {
               this.§[J§ = §>J§;
            }
            else if(param1.toUpperCase() == §"t§)
            {
               this.§[J§ = §"t§;
            }
         }
      }
      
      private function §-!§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§-!'§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§-!'§ = true;
               this.§8n§ = true;
            }
         }
      }
      
      private function §%+§() : void
      {
         if(this.§-!'§)
         {
            if(this.§6w§ < this.§#!O§)
            {
               if(!this.§8n§)
               {
                  this.§#!O§ = this.§6w§;
               }
               else
               {
                  this.§6w§ = this.§#!O§;
               }
            }
            else if(!this.§8n§)
            {
               this.§6w§ = this.§#!O§;
            }
            else
            {
               this.§#!O§ = this.§6w§;
            }
         }
      }
      
      private function §>N§() : void
      {
         if(!this.§"k§ && this.§6w§ > 1)
         {
            this.§6w§ = 1;
         }
         else if(this.§"k§ && !this.§;!2§ && this.§6w§ < 1)
         {
            this.§6w§ = 1;
         }
         if(!this.§'!§ && this.§#!O§ > 1)
         {
            this.§#!O§ = 1;
         }
         else if(this.§'!§ && !this.§1t§ && this.§#!O§ < 1)
         {
            this.§#!O§ = 1;
         }
      }
      
      private function §0s§() : void
      {
         if(this.§[J§ == §>J§)
         {
            this.§6w§ = Math.sqrt(this.§6w§);
            this.§#!O§ = Math.sqrt(this.§#!O§);
         }
         else if(this.§[J§ == §"t§)
         {
            this.§6w§ *= this.§6w§;
            this.§#!O§ *= this.§#!O§;
         }
      }
      
      private function §@!<§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §"!7§ || param4 == §'<§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §1r§ || param4 == §3!D§)
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
         else if(param4 == §"l§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§-!'§)
               {
                  if(!this.§8n§)
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
      
      private function §%!5§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §"!7§ || param4 == §'<§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §1r§ || param4 == §3!D§)
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
         else if(param4 == §"l§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§-!'§)
               {
                  if(!this.§8n§)
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
      
      public function §;+§(param1:Number, param2:Number) : void
      {
         this.§#Z§ = param1;
         this.§%!&§ = param2;
         this.§6w§ = param1 / this.§1!P§;
         this.§#!O§ = param2 / this.§8!!§;
         this.§>!F§ = this.§6w§;
         this.§9p§ = this.§#!O§;
         this.§%+§();
         this.§>N§();
         this.§!7§ = this.§6w§;
         this.§&d§ = this.§#!O§;
         this.§0s§();
         this.§<!Y§ = this.§%!5§(this.§7d§,param1,this.§1!P§,this.§!!O§,this.§;!2§,this.§"k§,this.§6w§,this.§>!F§,this.§!7§);
         this.§ l§ = this.§%!5§(this.§%!7§,param2,this.§8!!§,this.§7!T§,this.§1t§,this.§'!§,this.§#!O§,this.§9p§,this.§&d§);
      }
   }
}
