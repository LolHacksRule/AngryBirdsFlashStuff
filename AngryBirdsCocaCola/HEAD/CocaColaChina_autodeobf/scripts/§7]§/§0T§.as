package §7]§
{
   public class §0T§
   {
      
      private static const §&D§:String = "RIGHT";
      
      private static const §,H§:String = "LEFT";
      
      private static const §2H§:String = "TOP";
      
      private static const §95§:String = "BOTTOM";
      
      private static const §<>§:String = "CENTER";
      
      private static const §&z§:String = "NORMAL";
      
      private static const §5!%§:String = "SQRT";
      
      private static const §?1§:String = "SQR";
       
      
      private var §;!C§:Number = 0.0;
      
      private var §#!S§:Number = 0.0;
      
      private var §3I§:Number = 1.0;
      
      private var §<^§:Number = 1.0;
      
      private var §[&§:Number = 1.0;
      
      private var §4!5§:Number = 1.0;
      
      private var §#B§:String = "LEFT";
      
      private var §^!$§:String = "TOP";
      
      private var §06§:Boolean = false;
      
      private var §"!O§:Boolean = false;
      
      private var §-!5§:Boolean = false;
      
      private var §'!X§:Boolean = false;
      
      private var §7!3§:Boolean = false;
      
      private var §6c§:Boolean = false;
      
      private var § W§:String = "NORMAL";
      
      private var §0!#§:Number = 1.0;
      
      private var §try §:Number = 1.0;
      
      private var §9F§:Number = 1.0;
      
      private var §2j§:Number = 1.0;
      
      private var §<#§:Number = 1.0;
      
      private var §<o§:Number = 1.0;
      
      private var §03§:Number = 0.0;
      
      private var §5,§:Number = 0.0;
      
      private var §"_§:Number = 1.0;
      
      private var §;!;§:Number = 1.0;
      
      public function §0T§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§;!C§ = param1;
         this.§#!S§ = param2;
         this.§03§ = param1;
         this.§5,§ = param2;
         this.§"_§ = param3;
         this.§;!;§ = param4;
         this.§3I§ = param5;
         this.§<^§ = param6;
         this.§[&§ = param5;
         this.§4!5§ = param6;
         this.§2!X§(param7);
         this.§]'§(param8);
         this.§&!O§(param9);
         this.§=!_§(param10);
         this.§!k§(param11);
         this.§=n§(param12);
         this.§ W§ = param12;
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
         this.§;!C§ = this.§1E§(param1,this.§[&§,this.§3I§,this.§#B§,this.§06§,this.§"!O§,this.§0!#§,this.§9F§,this.§<#§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§#!S§ = this.§1E§(param1,this.§4!5§,this.§<^§,this.§^!$§,this.§-!5§,this.§'!X§,this.§try §,this.§2j§,this.§<o§);
      }
      
      public function get scaleX() : Number
      {
         return this.§"_§ * this.§=F§;
      }
      
      public function get scaleY() : Number
      {
         return this.§;!;§ * this.§&O§;
      }
      
      private function get §=F§() : Number
      {
         if(this.§06§ || this.§"!O§)
         {
            return this.§0!#§;
         }
         return 1;
      }
      
      private function get §&O§() : Number
      {
         if(this.§-!5§ || this.§'!X§)
         {
            return this.§try §;
         }
         return 1;
      }
      
      private function §2!X§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §&D§ || param1 == §<>§)
            {
               this.§#B§ = param1;
            }
         }
      }
      
      private function §]'§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §95§ || param1 == §<>§)
            {
               this.§^!$§ = param1;
            }
         }
      }
      
      private function §&!O§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§06§ = true;
               this.§"!O§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§06§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§"!O§ = true;
            }
         }
      }
      
      private function §=!_§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§-!5§ = true;
               this.§'!X§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§-!5§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§'!X§ = true;
            }
         }
      }
      
      private function §=n§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §5!%§)
            {
               this.§ W§ = §5!%§;
            }
            else if(param1.toUpperCase() == §?1§)
            {
               this.§ W§ = §?1§;
            }
         }
      }
      
      private function §!k§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§7!3§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§7!3§ = true;
               this.§6c§ = true;
            }
         }
      }
      
      private function §@!9§() : void
      {
         if(this.§7!3§)
         {
            if(this.§0!#§ < this.§try §)
            {
               if(!this.§6c§)
               {
                  this.§try § = this.§0!#§;
               }
               else
               {
                  this.§0!#§ = this.§try §;
               }
            }
            else if(!this.§6c§)
            {
               this.§0!#§ = this.§try §;
            }
            else
            {
               this.§try § = this.§0!#§;
            }
         }
      }
      
      private function § %§() : void
      {
         if(!this.§"!O§ && this.§0!#§ > 1)
         {
            this.§0!#§ = 1;
         }
         else if(this.§"!O§ && !this.§06§ && this.§0!#§ < 1)
         {
            this.§0!#§ = 1;
         }
         if(!this.§'!X§ && this.§try § > 1)
         {
            this.§try § = 1;
         }
         else if(this.§'!X§ && !this.§-!5§ && this.§try § < 1)
         {
            this.§try § = 1;
         }
      }
      
      private function §^4§() : void
      {
         if(this.§ W§ == §5!%§)
         {
            this.§0!#§ = Math.sqrt(this.§0!#§);
            this.§try § = Math.sqrt(this.§try §);
         }
         else if(this.§ W§ == §?1§)
         {
            this.§0!#§ *= this.§0!#§;
            this.§try § *= this.§try §;
         }
      }
      
      private function §1E§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §,H§ || param4 == §2H§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §&D§ || param4 == §95§)
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
         else if(param4 == §<>§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§7!3§)
               {
                  if(!this.§6c§)
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
      
      private function §<L§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §,H§ || param4 == §2H§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §&D§ || param4 == §95§)
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
         else if(param4 == §<>§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§7!3§)
               {
                  if(!this.§6c§)
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
      
      public function §7h§(param1:Number, param2:Number) : void
      {
         this.§[&§ = param1;
         this.§4!5§ = param2;
         this.§0!#§ = param1 / this.§3I§;
         this.§try § = param2 / this.§<^§;
         this.§9F§ = this.§0!#§;
         this.§2j§ = this.§try §;
         this.§@!9§();
         this.§ %§();
         this.§<#§ = this.§0!#§;
         this.§<o§ = this.§try §;
         this.§^4§();
         this.§03§ = this.§<L§(this.§;!C§,param1,this.§3I§,this.§#B§,this.§06§,this.§"!O§,this.§0!#§,this.§9F§,this.§<#§);
         this.§5,§ = this.§<L§(this.§#!S§,param2,this.§<^§,this.§^!$§,this.§-!5§,this.§'!X§,this.§try §,this.§2j§,this.§<o§);
      }
   }
}
