package §'!U§
{
   public class §4!]§
   {
      
      private static const §-8§:String = "RIGHT";
      
      private static const §=^§:String = "LEFT";
      
      private static const §-#"§:String = "TOP";
      
      private static const §7#z§:String = "BOTTOM";
      
      private static const §^$7§:String = "CENTER";
      
      private static const §'x§:String = "NORMAL";
      
      private static const §<#V§:String = "SQRT";
      
      private static const §+#d§:String = "SQR";
      
      private static const §=!m§:String = "NORMAL_SQRT";
       
      
      private var §9"X§:Number = 0.0;
      
      private var §<!l§:Number = 0.0;
      
      private var §3!_§:Number = 1.0;
      
      private var §&$,§:Number = 1.0;
      
      private var §6"`§:Number = 1.0;
      
      private var §=#K§:Number = 1.0;
      
      private var §;!b§:String = "LEFT";
      
      private var §29§:String = "TOP";
      
      private var §%#G§:Boolean = false;
      
      private var §,#n§:Boolean = false;
      
      private var §`#4§:Boolean = false;
      
      private var §9#m§:Boolean = false;
      
      private var §`!U§:Boolean = false;
      
      private var §`M§:Boolean = false;
      
      private var §1!U§:Boolean = false;
      
      private var §7#7§:String = "NORMAL";
      
      private var §%#1§:Number = 1.0;
      
      private var §1#@§:Number = 1.0;
      
      private var §3"L§:Number = 1.0;
      
      private var §"!!§:Number = 1.0;
      
      private var §&2§:Number = 1.0;
      
      private var §6$8§:Number = 1.0;
      
      private var §+!5§:Number = 0.0;
      
      private var §'! §:Number = 0.0;
      
      private var §1#u§:Number = 1.0;
      
      private var §1V§:Number = 1.0;
      
      public function §4!]§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§9"X§ = param1;
         this.§<!l§ = param2;
         this.§+!5§ = param1;
         this.§'! § = param2;
         this.§3!_§ = param3;
         this.§&$,§ = param4;
         this.§6"`§ = param5;
         this.§=#K§ = param6;
         this.§1#u§ = param5;
         this.§1V§ = param6;
         this.§`"0§(param7);
         this.§-!y§(param8);
         this.§]-§(param9);
         this.§-"s§(param10);
         this.§&"s§(param11);
         this.§'";§(param12);
      }
      
      public function get x() : Number
      {
         return this.§+!5§;
      }
      
      public function get y() : Number
      {
         return this.§'! §;
      }
      
      public function set x(param1:Number) : void
      {
         this.§9"X§ = this.§8"5§(param1,this.§1#u§,this.§6"`§,this.§;!b§,this.§%#G§,this.§,#n§,this.§%#1§,this.§3"L§,this.§&2§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§<!l§ = this.§8"5§(param1,this.§1V§,this.§=#K§,this.§29§,this.§`#4§,this.§9#m§,this.§1#@§,this.§"!!§,this.§6$8§);
      }
      
      public function get scaleX() : Number
      {
         return this.§3!_§ * this.§?!g§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§3!_§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§&$,§ * this.§<"e§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§&$,§ = param1;
      }
      
      private function get §?!g§() : Number
      {
         if(this.§%#G§ || this.§,#n§)
         {
            return this.§%#1§;
         }
         return 1;
      }
      
      private function get §<"e§() : Number
      {
         if(this.§`#4§ || this.§9#m§)
         {
            return this.§1#@§;
         }
         return 1;
      }
      
      private function §`"0§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §-8§ || param1 == §^$7§)
            {
               this.§;!b§ = param1;
            }
         }
      }
      
      private function §-!y§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §7#z§ || param1 == §^$7§)
            {
               this.§29§ = param1;
            }
         }
      }
      
      private function §]-§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§%#G§ = true;
               this.§,#n§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§%#G§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§,#n§ = true;
            }
         }
      }
      
      private function §-"s§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§`#4§ = true;
               this.§9#m§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§`#4§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§9#m§ = true;
            }
         }
      }
      
      private function §'";§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §<#V§)
            {
               this.§7#7§ = §<#V§;
            }
            else if(param1.toUpperCase() == §+#d§)
            {
               this.§7#7§ = §+#d§;
            }
            else if(param1.toUpperCase() == §=!m§)
            {
               this.§7#7§ = §=!m§;
            }
         }
      }
      
      private function §&"s§(param1:String) : void
      {
         if(param1)
         {
            switch(param1.toUpperCase())
            {
               case "TRUE":
                  this.§`!U§ = true;
                  break;
               case "UP":
                  this.§`!U§ = true;
                  this.§`M§ = true;
                  break;
               case "PRODUCT":
                  this.§`!U§ = true;
                  this.§1!U§ = true;
            }
         }
      }
      
      private function §4!T§() : void
      {
         if(this.§`!U§)
         {
            if(this.§1!U§)
            {
               this.§%#1§ = Math.sqrt(this.§%#1§ * this.§1#@§);
               this.§1#@§ = this.§%#1§;
            }
            else if(this.§%#1§ < this.§1#@§)
            {
               if(!this.§`M§)
               {
                  this.§1#@§ = this.§%#1§;
               }
               else
               {
                  this.§%#1§ = this.§1#@§;
               }
            }
            else if(!this.§`M§)
            {
               this.§%#1§ = this.§1#@§;
            }
            else
            {
               this.§1#@§ = this.§%#1§;
            }
         }
      }
      
      private function §4#g§() : void
      {
         if(!this.§,#n§ && this.§%#1§ > 1)
         {
            this.§%#1§ = 1;
         }
         else if(!this.§%#G§ && this.§%#1§ < 1)
         {
            this.§%#1§ = 1;
         }
         if(!this.§9#m§ && this.§1#@§ > 1)
         {
            this.§1#@§ = 1;
         }
         else if(!this.§`#4§ && this.§1#@§ < 1)
         {
            this.§1#@§ = 1;
         }
      }
      
      private function §[#C§() : void
      {
         if(this.§7#7§ == §<#V§)
         {
            this.§%#1§ = Math.sqrt(this.§%#1§);
            this.§1#@§ = Math.sqrt(this.§1#@§);
         }
         else if(this.§7#7§ == §+#d§)
         {
            this.§%#1§ *= this.§%#1§;
            this.§1#@§ *= this.§1#@§;
         }
         else if(this.§7#7§ == §=!m§)
         {
            if(this.§%#1§ > 1)
            {
               this.§%#1§ = Math.sqrt(this.§%#1§);
            }
            if(this.§1#@§ > 1)
            {
               this.§1#@§ = Math.sqrt(this.§1#@§);
            }
         }
      }
      
      private function §8"5§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §=^§ || param4 == §-#"§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §-8§ || param4 == §7#z§)
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
         else if(param4 == §^$7§)
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
      
      private function §7$$§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number) : Number
      {
         var _loc8_:Number = param1;
         if(param4 == §=^§ || param4 == §-#"§)
         {
            if(param5 || param6)
            {
               _loc8_ = param1 * param7;
            }
         }
         else if(param4 == §-8§ || param4 == §7#z§)
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
         else if(param4 == §^$7§)
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
      
      public function §="6§(param1:Number, param2:Number) : void
      {
         this.§1#u§ = param1;
         this.§1V§ = param2;
         this.§%#1§ = param1 / this.§6"`§;
         this.§1#@§ = param2 / this.§=#K§;
         this.§3"L§ = this.§%#1§;
         this.§"!!§ = this.§1#@§;
         this.§4!T§();
         this.§4#g§();
         this.§&2§ = this.§%#1§;
         this.§6$8§ = this.§1#@§;
         this.§[#C§();
         this.§+!5§ = this.§7$$§(this.§9"X§,param1,this.§6"`§,this.§;!b§,this.§%#G§,this.§,#n§,this.§%#1§);
         this.§'! § = this.§7$$§(this.§<!l§,param2,this.§=#K§,this.§29§,this.§`#4§,this.§9#m§,this.§1#@§);
      }
   }
}
