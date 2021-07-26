package §]!=§
{
   public class §"!C§
   {
      
      private static const §3!J§:String = "RIGHT";
      
      private static const §[C§:String = "LEFT";
      
      private static const §#!F§:String = "TOP";
      
      private static const §<!2§:String = "BOTTOM";
      
      private static const §?x§:String = "CENTER";
      
      private static const §3q§:String = "NORMAL";
      
      private static const §]V§:String = "SQRT";
      
      private static const §11§:String = "SQR";
       
      
      private var §5k§:Number = 0.0;
      
      private var §`L§:Number = 0.0;
      
      private var §=x§:Number = 1.0;
      
      private var §>S§:Number = 1.0;
      
      private var §40§:Number = 1.0;
      
      private var §6i§:Number = 1.0;
      
      private var §1!&§:String = "LEFT";
      
      private var §,!#§:String = "TOP";
      
      private var §8p§:Boolean = false;
      
      private var §<m§:Boolean = false;
      
      private var §?h§:Boolean = false;
      
      private var §^E§:Boolean = false;
      
      private var §]I§:Boolean = false;
      
      private var §2a§:Boolean = false;
      
      private var §?H§:String = "NORMAL";
      
      private var §!5§:Number = 1.0;
      
      private var §[!4§:Number = 1.0;
      
      private var §%Z§:Number = 1.0;
      
      private var §]4§:Number = 1.0;
      
      private var §2S§:Number = 1.0;
      
      private var §default§:Number = 1.0;
      
      private var §;!>§:Number = 0.0;
      
      private var §8<§:Number = 0.0;
      
      private var §2P§:Number = 1.0;
      
      private var §5!D§:Number = 1.0;
      
      public function §"!C§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§5k§ = param1;
         this.§`L§ = param2;
         this.§;!>§ = param1;
         this.§8<§ = param2;
         this.§=x§ = param3;
         this.§>S§ = param4;
         this.§40§ = param5;
         this.§6i§ = param6;
         this.§2P§ = param5;
         this.§5!D§ = param6;
         this.§5K§(param7);
         this.§6§(param8);
         this.§&W§(param9);
         this.§4Q§(param10);
         this.§;a§(param11);
         this.§2f§(param12);
         this.§?H§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§;!>§;
      }
      
      public function get y() : Number
      {
         return this.§8<§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§5k§ = this.§<8§(param1,this.§2P§,this.§40§,this.§1!&§,this.§8p§,this.§<m§,this.§!5§,this.§%Z§,this.§2S§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§`L§ = this.§<8§(param1,this.§5!D§,this.§6i§,this.§,!#§,this.§?h§,this.§^E§,this.§[!4§,this.§]4§,this.§default§);
      }
      
      public function get scaleX() : Number
      {
         return this.§=x§ * this.§#!0§;
      }
      
      public function get scaleY() : Number
      {
         return this.§>S§ * this.§,`§;
      }
      
      private function get §#!0§() : Number
      {
         if(this.§8p§ || this.§<m§)
         {
            return this.§!5§;
         }
         return 1;
      }
      
      private function get §,`§() : Number
      {
         if(this.§?h§ || this.§^E§)
         {
            return this.§[!4§;
         }
         return 1;
      }
      
      private function §5K§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §3!J§ || param1 == §?x§)
            {
               this.§1!&§ = param1;
            }
         }
      }
      
      private function §6§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §<!2§ || param1 == §?x§)
            {
               this.§,!#§ = param1;
            }
         }
      }
      
      private function §&W§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§8p§ = true;
               this.§<m§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§8p§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§<m§ = true;
            }
         }
      }
      
      private function §4Q§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§?h§ = true;
               this.§^E§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§?h§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§^E§ = true;
            }
         }
      }
      
      private function §2f§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §]V§)
            {
               this.§?H§ = §]V§;
            }
            else if(param1.toUpperCase() == §11§)
            {
               this.§?H§ = §11§;
            }
         }
      }
      
      private function §;a§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§]I§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§]I§ = true;
               this.§2a§ = true;
            }
         }
      }
      
      private function §"p§() : void
      {
         if(this.§]I§)
         {
            if(this.§!5§ < this.§[!4§)
            {
               if(!this.§2a§)
               {
                  this.§[!4§ = this.§!5§;
               }
               else
               {
                  this.§!5§ = this.§[!4§;
               }
            }
            else if(!this.§2a§)
            {
               this.§!5§ = this.§[!4§;
            }
            else
            {
               this.§[!4§ = this.§!5§;
            }
         }
      }
      
      private function §4!<§() : void
      {
         if(!this.§<m§ && this.§!5§ > 1)
         {
            this.§!5§ = 1;
         }
         else if(!this.§8p§ && this.§!5§ < 1)
         {
            this.§!5§ = 1;
         }
         if(!this.§^E§ && this.§[!4§ > 1)
         {
            this.§[!4§ = 1;
         }
         else if(!this.§?h§ && this.§[!4§ < 1)
         {
            this.§[!4§ = 1;
         }
      }
      
      private function §-D§() : void
      {
         if(this.§?H§ == §]V§)
         {
            this.§!5§ = Math.sqrt(this.§!5§);
            this.§[!4§ = Math.sqrt(this.§[!4§);
         }
         else if(this.§?H§ == §11§)
         {
            this.§!5§ *= this.§!5§;
            this.§[!4§ *= this.§[!4§;
         }
      }
      
      private function §<8§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §[C§ || param4 == §#!F§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §3!J§ || param4 == §<!2§)
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
         else if(param4 == §?x§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§]I§)
               {
                  if(!this.§2a§)
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
      
      private function §3f§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §[C§ || param4 == §#!F§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §3!J§ || param4 == §<!2§)
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
         else if(param4 == §?x§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§]I§)
               {
                  if(!this.§2a§)
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
      
      public function §"§(param1:Number, param2:Number) : void
      {
         this.§2P§ = param1;
         this.§5!D§ = param2;
         this.§!5§ = param1 / this.§40§;
         this.§[!4§ = param2 / this.§6i§;
         this.§%Z§ = this.§!5§;
         this.§]4§ = this.§[!4§;
         this.§"p§();
         this.§4!<§();
         this.§2S§ = this.§!5§;
         this.§default§ = this.§[!4§;
         this.§-D§();
         this.§;!>§ = this.§3f§(this.§5k§,param1,this.§40§,this.§1!&§,this.§8p§,this.§<m§,this.§!5§,this.§%Z§,this.§2S§);
         this.§8<§ = this.§3f§(this.§`L§,param2,this.§6i§,this.§,!#§,this.§?h§,this.§^E§,this.§[!4§,this.§]4§,this.§default§);
      }
   }
}
