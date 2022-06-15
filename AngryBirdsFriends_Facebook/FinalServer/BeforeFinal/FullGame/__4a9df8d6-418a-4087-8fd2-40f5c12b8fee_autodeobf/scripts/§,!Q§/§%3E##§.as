package §,!Q§
{
   public class §>##§
   {
      
      private static const §^-§:String = "RIGHT";
      
      private static const §4!4§:String = "LEFT";
      
      private static const §>!=§:String = "TOP";
      
      private static const §'!E§:String = "BOTTOM";
      
      private static const §+!T§:String = "CENTER";
      
      private static const §'v§:String = "NORMAL";
      
      private static const § !%§:String = "SQRT";
      
      private static const §2!@§:String = "SQR";
      
      private static const §0B§:String = "NORMAL_SQRT";
       
      
      private var §4#<§:Number = 0.0;
      
      private var §`#6§:Number = 0.0;
      
      private var §4R§:Number = 1.0;
      
      private var §^"`§:Number = 1.0;
      
      private var §""K§:Number = 1.0;
      
      private var §3$!§:Number = 1.0;
      
      private var §@#b§:String = "LEFT";
      
      private var §]"E§:String = "TOP";
      
      private var §5U§:Boolean = false;
      
      private var §4#T§:Boolean = false;
      
      private var §,L§:Boolean = false;
      
      private var §>E§:Boolean = false;
      
      private var §="[§:Boolean = false;
      
      private var §8!a§:Boolean = false;
      
      private var §="n§:Boolean = false;
      
      private var §`"K§:String = "NORMAL";
      
      private var §""`§:Number = 1.0;
      
      private var §+$0§:Number = 1.0;
      
      private var §>"+§:Number = 1.0;
      
      private var §7$=§:Number = 1.0;
      
      private var § "O§:Number = 1.0;
      
      private var §>#A§:Number = 1.0;
      
      private var §["d§:Number = 0.0;
      
      private var §%#z§:Number = 0.0;
      
      private var §[z§:Number = 1.0;
      
      private var §`#9§:Number = 1.0;
      
      public function §>##§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§4#<§ = param1;
         this.§`#6§ = param2;
         this.§["d§ = param1;
         this.§%#z§ = param2;
         this.§4R§ = param3;
         this.§^"`§ = param4;
         this.§""K§ = param5;
         this.§3$!§ = param6;
         this.§[z§ = param5;
         this.§`#9§ = param6;
         this.§]!B§(param7);
         this.§&2§(param8);
         this.§7"V§(param9);
         this.§`!Y§(param10);
         this.§@#'§(param11);
         this.§1";§(param12);
      }
      
      public function get x() : Number
      {
         return this.§["d§;
      }
      
      public function get y() : Number
      {
         return this.§%#z§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§4#<§ = this.§!$$§(param1,this.§[z§,this.§""K§,this.§@#b§,this.§5U§,this.§4#T§,this.§""`§,this.§>"+§,this.§ "O§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§`#6§ = this.§!$$§(param1,this.§`#9§,this.§3$!§,this.§]"E§,this.§,L§,this.§>E§,this.§+$0§,this.§7$=§,this.§>#A§);
      }
      
      public function get scaleX() : Number
      {
         return this.§4R§ * this.§^"g§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§4R§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§^"`§ * this.§!q§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§^"`§ = param1;
      }
      
      private function get §^"g§() : Number
      {
         if(this.§5U§ || this.§4#T§)
         {
            return this.§""`§;
         }
         return 1;
      }
      
      private function get §!q§() : Number
      {
         if(this.§,L§ || this.§>E§)
         {
            return this.§+$0§;
         }
         return 1;
      }
      
      private function §]!B§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §^-§ || param1 == §+!T§)
            {
               this.§@#b§ = param1;
            }
         }
      }
      
      private function §&2§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §'!E§ || param1 == §+!T§)
            {
               this.§]"E§ = param1;
            }
         }
      }
      
      private function §7"V§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§5U§ = true;
               this.§4#T§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§5U§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§4#T§ = true;
            }
         }
      }
      
      private function §`!Y§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§,L§ = true;
               this.§>E§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§,L§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§>E§ = true;
            }
         }
      }
      
      private function §1";§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == § !%§)
            {
               this.§`"K§ = § !%§;
            }
            else if(param1.toUpperCase() == §2!@§)
            {
               this.§`"K§ = §2!@§;
            }
            else if(param1.toUpperCase() == §0B§)
            {
               this.§`"K§ = §0B§;
            }
         }
      }
      
      private function §@#'§(param1:String) : void
      {
         if(param1)
         {
            switch(param1.toUpperCase())
            {
               case "TRUE":
                  this.§="[§ = true;
                  break;
               case "UP":
                  this.§="[§ = true;
                  this.§8!a§ = true;
                  break;
               case "PRODUCT":
                  this.§="[§ = true;
                  this.§="n§ = true;
            }
         }
      }
      
      private function §]G§() : void
      {
         if(this.§="[§)
         {
            if(this.§="n§)
            {
               this.§""`§ = Math.sqrt(this.§""`§ * this.§+$0§);
               this.§+$0§ = this.§""`§;
            }
            else if(this.§""`§ < this.§+$0§)
            {
               if(!this.§8!a§)
               {
                  this.§+$0§ = this.§""`§;
               }
               else
               {
                  this.§""`§ = this.§+$0§;
               }
            }
            else if(!this.§8!a§)
            {
               this.§""`§ = this.§+$0§;
            }
            else
            {
               this.§+$0§ = this.§""`§;
            }
         }
      }
      
      private function §9#L§() : void
      {
         if(!this.§4#T§ && this.§""`§ > 1)
         {
            this.§""`§ = 1;
         }
         else if(!this.§5U§ && this.§""`§ < 1)
         {
            this.§""`§ = 1;
         }
         if(!this.§>E§ && this.§+$0§ > 1)
         {
            this.§+$0§ = 1;
         }
         else if(!this.§,L§ && this.§+$0§ < 1)
         {
            this.§+$0§ = 1;
         }
      }
      
      private function §!#e§() : void
      {
         if(this.§`"K§ == § !%§)
         {
            this.§""`§ = Math.sqrt(this.§""`§);
            this.§+$0§ = Math.sqrt(this.§+$0§);
         }
         else if(this.§`"K§ == §2!@§)
         {
            this.§""`§ *= this.§""`§;
            this.§+$0§ *= this.§+$0§;
         }
         else if(this.§`"K§ == §0B§)
         {
            if(this.§""`§ > 1)
            {
               this.§""`§ = Math.sqrt(this.§""`§);
            }
            if(this.§+$0§ > 1)
            {
               this.§+$0§ = Math.sqrt(this.§+$0§);
            }
         }
      }
      
      private function §!$$§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §4!4§ || param4 == §>!=§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §^-§ || param4 == §'!E§)
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
         else if(param4 == §+!T§)
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
      
      private function §&"$§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number) : Number
      {
         var _loc8_:Number = param1;
         if(param4 == §4!4§ || param4 == §>!=§)
         {
            if(param5 || param6)
            {
               _loc8_ = param1 * param7;
            }
         }
         else if(param4 == §^-§ || param4 == §'!E§)
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
         else if(param4 == §+!T§)
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
      
      public function §!+§(param1:Number, param2:Number) : void
      {
         this.§[z§ = param1;
         this.§`#9§ = param2;
         this.§""`§ = param1 / this.§""K§;
         this.§+$0§ = param2 / this.§3$!§;
         this.§>"+§ = this.§""`§;
         this.§7$=§ = this.§+$0§;
         this.§]G§();
         this.§9#L§();
         this.§ "O§ = this.§""`§;
         this.§>#A§ = this.§+$0§;
         this.§!#e§();
         this.§["d§ = this.§&"$§(this.§4#<§,param1,this.§""K§,this.§@#b§,this.§5U§,this.§4#T§,this.§""`§);
         this.§%#z§ = this.§&"$§(this.§`#6§,param2,this.§3$!§,this.§]"E§,this.§,L§,this.§>E§,this.§+$0§);
      }
   }
}
