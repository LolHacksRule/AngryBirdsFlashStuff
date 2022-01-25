package §2!$§
{
   public class §,8§
   {
      
      private static const § %§:String = "RIGHT";
      
      private static const §^4§:String = "LEFT";
      
      private static const §1E§:String = "TOP";
      
      private static const §<L§:String = "BOTTOM";
      
      private static const §7h§:String = "CENTER";
      
      private static const §&D§:String = "NORMAL";
      
      private static const §,H§:String = "SQRT";
      
      private static const §2H§:String = "SQR";
       
      
      private var §[M§:Number = 0.0;
      
      private var §[<§:Number = 0.0;
      
      private var §4+§:Number = 1.0;
      
      private var §`'§:Number = 1.0;
      
      private var §?!?§:Number = 1.0;
      
      private var §@!a§:Number = 1.0;
      
      private var §+N§:String = "LEFT";
      
      private var §[&§:String = "TOP";
      
      private var §4!5§:Boolean = false;
      
      private var §^!S§:Boolean = false;
      
      private var §3I§:Boolean = false;
      
      private var §[!_§:Boolean = false;
      
      private var §#B§:Boolean = false;
      
      private var §0T§:Boolean = false;
      
      private var §<^§:String = "NORMAL";
      
      private var §;!C§:Number = 1.0;
      
      private var §#!S§:Number = 1.0;
      
      private var §"!O§:Number = 1.0;
      
      private var §'!X§:Number = 1.0;
      
      private var §6c§:Number = 1.0;
      
      private var §0!#§:Number = 1.0;
      
      private var §03§:Number = 0.0;
      
      private var §5,§:Number = 0.0;
      
      private var §try §:Number = 1.0;
      
      private var §9F§:Number = 1.0;
      
      public function §,8§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§[M§ = param1;
         this.§[<§ = param2;
         this.§03§ = param1;
         this.§5,§ = param2;
         this.§try § = param3;
         this.§9F§ = param4;
         this.§4+§ = param5;
         this.§`'§ = param6;
         this.§?!?§ = param5;
         this.§@!a§ = param6;
         this.§<o§(param7);
         this.§"_§(param8);
         this.§;!;§(param9);
         this.§=F§(param10);
         this.§2!X§(param11);
         this.§&O§(param12);
         this.§<^§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§03§;
      }
      
      public function get y() : Number
      {
         return this.§5,§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§[M§ = this.§=n§(param1,this.§?!?§,this.§4+§,this.§+N§,this.§4!5§,this.§^!S§,this.§;!C§,this.§"!O§,this.§6c§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§[<§ = this.§=n§(param1,this.§@!a§,this.§`'§,this.§[&§,this.§3I§,this.§[!_§,this.§#!S§,this.§'!X§,this.§0!#§);
      }
      
      public function get scaleX() : Number
      {
         return this.§try § * this.§2j§;
      }
      
      public function get scaleY() : Number
      {
         return this.§9F§ * this.§<#§;
      }
      
      private function get §2j§() : Number
      {
         if(this.§4!5§ || this.§^!S§)
         {
            return this.§;!C§;
         }
         return 1;
      }
      
      private function get §<#§() : Number
      {
         if(this.§3I§ || this.§[!_§)
         {
            return this.§#!S§;
         }
         return 1;
      }
      
      private function §<o§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == § %§ || param1 == §7h§)
            {
               this.§+N§ = param1;
            }
         }
      }
      
      private function §"_§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §<L§ || param1 == §7h§)
            {
               this.§[&§ = param1;
            }
         }
      }
      
      private function §;!;§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§4!5§ = true;
               this.§^!S§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§4!5§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§^!S§ = true;
            }
         }
      }
      
      private function §=F§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§3I§ = true;
               this.§[!_§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§3I§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§[!_§ = true;
            }
         }
      }
      
      private function §&O§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §,H§)
            {
               this.§<^§ = §,H§;
            }
            else if(param1.toUpperCase() == §2H§)
            {
               this.§<^§ = §2H§;
            }
         }
      }
      
      private function §2!X§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§#B§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§#B§ = true;
               this.§0T§ = true;
            }
         }
      }
      
      private function §]'§() : void
      {
         if(this.§#B§)
         {
            if(this.§;!C§ < this.§#!S§)
            {
               if(!this.§0T§)
               {
                  this.§#!S§ = this.§;!C§;
               }
               else
               {
                  this.§;!C§ = this.§#!S§;
               }
            }
            else if(!this.§0T§)
            {
               this.§;!C§ = this.§#!S§;
            }
            else
            {
               this.§#!S§ = this.§;!C§;
            }
         }
      }
      
      private function §&!O§() : void
      {
         if(!this.§^!S§ && this.§;!C§ > 1)
         {
            this.§;!C§ = 1;
         }
         else if(this.§^!S§ && !this.§4!5§ && this.§;!C§ < 1)
         {
            this.§;!C§ = 1;
         }
         if(!this.§[!_§ && this.§#!S§ > 1)
         {
            this.§#!S§ = 1;
         }
         else if(this.§[!_§ && !this.§3I§ && this.§#!S§ < 1)
         {
            this.§#!S§ = 1;
         }
      }
      
      private function §=!_§() : void
      {
         if(this.§<^§ == §,H§)
         {
            this.§;!C§ = Math.sqrt(this.§;!C§);
            this.§#!S§ = Math.sqrt(this.§#!S§);
         }
         else if(this.§<^§ == §2H§)
         {
            this.§;!C§ *= this.§;!C§;
            this.§#!S§ *= this.§#!S§;
         }
      }
      
      private function §=n§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §^4§ || param4 == §1E§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == § %§ || param4 == §<L§)
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
         else if(param4 == §7h§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§#B§)
               {
                  if(!this.§0T§)
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
      
      private function §!k§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §^4§ || param4 == §1E§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == § %§ || param4 == §<L§)
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
         else if(param4 == §7h§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§#B§)
               {
                  if(!this.§0T§)
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
      
      public function §@!9§(param1:Number, param2:Number) : void
      {
         this.§?!?§ = param1;
         this.§@!a§ = param2;
         this.§;!C§ = param1 / this.§4+§;
         this.§#!S§ = param2 / this.§`'§;
         this.§"!O§ = this.§;!C§;
         this.§'!X§ = this.§#!S§;
         this.§]'§();
         this.§&!O§();
         this.§6c§ = this.§;!C§;
         this.§0!#§ = this.§#!S§;
         this.§=!_§();
         this.§03§ = this.§!k§(this.§[M§,param1,this.§4+§,this.§+N§,this.§4!5§,this.§^!S§,this.§;!C§,this.§"!O§,this.§6c§);
         this.§5,§ = this.§!k§(this.§[<§,param2,this.§`'§,this.§[&§,this.§3I§,this.§[!_§,this.§#!S§,this.§'!X§,this.§0!#§);
      }
   }
}
