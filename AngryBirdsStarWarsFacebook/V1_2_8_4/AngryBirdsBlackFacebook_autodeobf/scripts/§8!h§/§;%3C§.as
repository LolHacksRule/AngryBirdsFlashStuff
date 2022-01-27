package §8!h§
{
   public class §;<§
   {
      
      private static const §[#"§:String = "RIGHT";
      
      private static const §%!;§:String = "LEFT";
      
      private static const §#!M§:String = "TOP";
      
      private static const §"!u§:String = "BOTTOM";
      
      private static const §%"r§:String = "CENTER";
      
      private static const §"z§:String = "NORMAL";
      
      private static const §>!J§:String = "SQRT";
      
      private static const §72§:String = "SQR";
      
      private static const §@"9§:String = "NORMAL_SQRT";
       
      
      private var §@"+§:Number = 0.0;
      
      private var §]I§:Number = 0.0;
      
      private var §7! §:Number = 1.0;
      
      private var §8"a§:Number = 1.0;
      
      private var §+!%§:Number = 1.0;
      
      private var §5"F§:Number = 1.0;
      
      private var §#a§:String = "LEFT";
      
      private var §4E§:String = "TOP";
      
      private var § !I§:Boolean = false;
      
      private var §1"-§:Boolean = false;
      
      private var §!!1§:Boolean = false;
      
      private var §!#6§:Boolean = false;
      
      private var §'"G§:Boolean = false;
      
      private var §["L§:Boolean = false;
      
      private var §3"i§:String = "NORMAL";
      
      private var §@?§:Number = 1.0;
      
      private var §`"9§:Number = 1.0;
      
      private var §3d§:Number = 1.0;
      
      private var §@"C§:Number = 1.0;
      
      private var §^"U§:Number = 1.0;
      
      private var §'g§:Number = 1.0;
      
      private var §0U§:Number = 0.0;
      
      private var §3"[§:Number = 0.0;
      
      private var §5"[§:Number = 1.0;
      
      private var §%"8§:Number = 1.0;
      
      public function §;<§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§@"+§ = param1;
         this.§]I§ = param2;
         this.§0U§ = param1;
         this.§3"[§ = param2;
         this.§7! § = param3;
         this.§8"a§ = param4;
         this.§+!%§ = param5;
         this.§5"F§ = param6;
         this.§5"[§ = param5;
         this.§%"8§ = param6;
         this.§1#'§(param7);
         this.§&#%§(param8);
         this.§ !G§(param9);
         this.§?E§(param10);
         this.§""p§(param11);
         this.§9O§(param12);
         this.§3"i§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§0U§;
      }
      
      public function get y() : Number
      {
         return this.§3"[§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§@"+§ = this.§#!s§(param1,this.§5"[§,this.§+!%§,this.§#a§,this.§ !I§,this.§1"-§,this.§@?§,this.§3d§,this.§^"U§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§]I§ = this.§#!s§(param1,this.§%"8§,this.§5"F§,this.§4E§,this.§!!1§,this.§!#6§,this.§`"9§,this.§@"C§,this.§'g§);
      }
      
      public function get scaleX() : Number
      {
         return this.§7! § * this.§8"=§;
      }
      
      public function get scaleY() : Number
      {
         return this.§8"a§ * this.§;3§;
      }
      
      private function get §8"=§() : Number
      {
         if(this.§ !I§ || this.§1"-§)
         {
            return this.§@?§;
         }
         return 1;
      }
      
      private function get §;3§() : Number
      {
         if(this.§!!1§ || this.§!#6§)
         {
            return this.§`"9§;
         }
         return 1;
      }
      
      private function §1#'§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §[#"§ || param1 == §%"r§)
            {
               this.§#a§ = param1;
            }
         }
      }
      
      private function §&#%§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §"!u§ || param1 == §%"r§)
            {
               this.§4E§ = param1;
            }
         }
      }
      
      private function § !G§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§ !I§ = true;
               this.§1"-§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§ !I§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§1"-§ = true;
            }
         }
      }
      
      private function §?E§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§!!1§ = true;
               this.§!#6§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§!!1§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§!#6§ = true;
            }
         }
      }
      
      private function §9O§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §>!J§)
            {
               this.§3"i§ = §>!J§;
            }
            else if(param1.toUpperCase() == §72§)
            {
               this.§3"i§ = §72§;
            }
            else if(param1.toUpperCase() == §@"9§)
            {
               this.§3"i§ = §@"9§;
            }
         }
      }
      
      private function §""p§(param1:String) : void
      {
         if(param1)
         {
            switch(param1.toUpperCase())
            {
               case "TRUE":
                  this.§'"G§ = true;
                  break;
               case "UP":
                  this.§'"G§ = true;
                  this.§["L§ = true;
            }
         }
      }
      
      private function §-K§() : void
      {
         if(this.§'"G§)
         {
            if(this.§@?§ < this.§`"9§)
            {
               if(!this.§["L§)
               {
                  this.§`"9§ = this.§@?§;
               }
               else
               {
                  this.§@?§ = this.§`"9§;
               }
            }
            else if(!this.§["L§)
            {
               this.§@?§ = this.§`"9§;
            }
            else
            {
               this.§`"9§ = this.§@?§;
            }
         }
      }
      
      private function §&'§() : void
      {
         if(!this.§1"-§ && this.§@?§ > 1)
         {
            this.§@?§ = 1;
         }
         else if(!this.§ !I§ && this.§@?§ < 1)
         {
            this.§@?§ = 1;
         }
         if(!this.§!#6§ && this.§`"9§ > 1)
         {
            this.§`"9§ = 1;
         }
         else if(!this.§!!1§ && this.§`"9§ < 1)
         {
            this.§`"9§ = 1;
         }
      }
      
      private function §6!p§() : void
      {
         if(this.§3"i§ == §>!J§)
         {
            this.§@?§ = Math.sqrt(this.§@?§);
            this.§`"9§ = Math.sqrt(this.§`"9§);
         }
         else if(this.§3"i§ == §72§)
         {
            this.§@?§ *= this.§@?§;
            this.§`"9§ *= this.§`"9§;
         }
         else if(this.§3"i§ == §@"9§)
         {
            if(this.§@?§ > 1)
            {
               this.§@?§ = Math.sqrt(this.§@?§);
            }
            if(this.§`"9§ > 1)
            {
               this.§`"9§ = Math.sqrt(this.§`"9§);
            }
         }
      }
      
      private function §#!s§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §%!;§ || param4 == §#!M§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §[#"§ || param4 == §"!u§)
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
         else if(param4 == §%"r§)
         {
            if(param5 || param6)
            {
               _loc10_ = (param1 - param2 / 2) / param7 + param3 / 2;
            }
            else
            {
               _loc10_ = param1 - param2 / 2 + param3 / 2;
            }
         }
         return _loc10_;
      }
      
      private function §`!!§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number) : Number
      {
         var _loc8_:Number = param1;
         if(param4 == §%!;§ || param4 == §#!M§)
         {
            if(param5 || param6)
            {
               _loc8_ = param1 * param7;
            }
         }
         else if(param4 == §[#"§ || param4 == §"!u§)
         {
            if(param5 || param6)
            {
               _loc8_ = param2 - (param3 - param1) * param7;
            }
            else
            {
               _loc8_ = param2 - (param3 - param1);
            }
         }
         else if(param4 == §%"r§)
         {
            if(param5 || param6)
            {
               _loc8_ = param2 / 2 + (param1 - param3 / 2) * param7;
            }
            else
            {
               _loc8_ = param2 / 2 + (param1 - param3 / 2);
            }
         }
         return _loc8_;
      }
      
      public function §&!0§(param1:Number, param2:Number) : void
      {
         this.§5"[§ = param1;
         this.§%"8§ = param2;
         this.§@?§ = param1 / this.§+!%§;
         this.§@?§ = param1 / this.§+!%§;
         this.§`"9§ = param2 / this.§5"F§;
         this.§3d§ = this.§@?§;
         this.§@"C§ = this.§`"9§;
         this.§-K§();
         this.§&'§();
         this.§^"U§ = this.§@?§;
         this.§'g§ = this.§`"9§;
         this.§6!p§();
         this.§0U§ = this.§`!!§(this.§@"+§,param1,this.§+!%§,this.§#a§,this.§ !I§,this.§1"-§,this.§@?§);
         this.§3"[§ = this.§`!!§(this.§]I§,param2,this.§5"F§,this.§4E§,this.§!!1§,this.§!#6§,this.§`"9§);
      }
   }
}
