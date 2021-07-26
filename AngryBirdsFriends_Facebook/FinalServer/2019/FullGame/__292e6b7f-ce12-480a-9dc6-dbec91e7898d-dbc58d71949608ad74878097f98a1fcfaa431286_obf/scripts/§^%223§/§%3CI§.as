package §^"3§
{
   public class §<I§
   {
      
      private static const §8!+§:String = "RIGHT";
      
      private static const §!!f§:String = "LEFT";
      
      private static const §4#!§:String = "TOP";
      
      private static const §"s§:String = "BOTTOM";
      
      private static const §>#d§:String = "CENTER";
      
      private static const §1"g§:String = "NORMAL";
      
      private static const §[#E§:String = "SQRT";
      
      private static const §=#_§:String = "SQR";
      
      private static const §4b§:String = "NORMAL_SQRT";
       
      
      private var §1#?§:Number = 0.0;
      
      private var §;!-§:Number = 0.0;
      
      private var §,#V§:Number = 1.0;
      
      private var §'!Q§:Number = 1.0;
      
      private var §1"@§:Number = 1.0;
      
      private var §#0§:Number = 1.0;
      
      private var §%$&§:String = "LEFT";
      
      private var §[!J§:String = "TOP";
      
      private var §%![§:Boolean = false;
      
      private var §>!X§:Boolean = false;
      
      private var §+a§:Boolean = false;
      
      private var §8"4§:Boolean = false;
      
      private var §#"_§:Boolean = false;
      
      private var §0#x§:Boolean = false;
      
      private var §?x§:Boolean = false;
      
      private var §;"y§:String = "NORMAL";
      
      private var §&!U§:Number = 1.0;
      
      private var §0#E§:Number = 1.0;
      
      private var §%<§:Number = 1.0;
      
      private var §7#L§:Number = 1.0;
      
      private var §%#=§:Number = 1.0;
      
      private var §<">§:Number = 1.0;
      
      private var §&$'§:Number = 0.0;
      
      private var §<#-§:Number = 0.0;
      
      private var §6$'§:Number = 1.0;
      
      private var §?"4§:Number = 1.0;
      
      public function §<I§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§1#?§ = param1;
         this.§;!-§ = param2;
         this.§&$'§ = param1;
         this.§<#-§ = param2;
         this.§,#V§ = param3;
         this.§'!Q§ = param4;
         this.§1"@§ = param5;
         this.§#0§ = param6;
         this.§6$'§ = param5;
         this.§?"4§ = param6;
         this.§%;§(param7);
         this.§'#?§(param8);
         this.§"z§(param9);
         this.§@#i§(param10);
         this.§0$6§(param11);
         this.§@!@§(param12);
      }
      
      public function get x() : Number
      {
         return this.§&$'§;
      }
      
      public function get y() : Number
      {
         return this.§<#-§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§1#?§ = this.§]g§(param1,this.§6$'§,this.§1"@§,this.§%$&§,this.§%![§,this.§>!X§,this.§&!U§,this.§%<§,this.§%#=§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§;!-§ = this.§]g§(param1,this.§?"4§,this.§#0§,this.§[!J§,this.§+a§,this.§8"4§,this.§0#E§,this.§7#L§,this.§<">§);
      }
      
      public function get scaleX() : Number
      {
         return this.§,#V§ * this.§[s§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§,#V§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§'!Q§ * this.§<!#§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§'!Q§ = param1;
      }
      
      private function get §[s§() : Number
      {
         if(this.§%![§ || this.§>!X§)
         {
            return this.§&!U§;
         }
         return 1;
      }
      
      private function get §<!#§() : Number
      {
         if(this.§+a§ || this.§8"4§)
         {
            return this.§0#E§;
         }
         return 1;
      }
      
      private function §%;§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §8!+§ || param1 == §>#d§)
            {
               this.§%$&§ = param1;
            }
         }
      }
      
      private function §'#?§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §"s§ || param1 == §>#d§)
            {
               this.§[!J§ = param1;
            }
         }
      }
      
      private function §"z§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§%![§ = true;
               this.§>!X§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§%![§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§>!X§ = true;
            }
         }
      }
      
      private function §@#i§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§+a§ = true;
               this.§8"4§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§+a§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§8"4§ = true;
            }
         }
      }
      
      private function §@!@§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §[#E§)
            {
               this.§;"y§ = §[#E§;
            }
            else if(param1.toUpperCase() == §=#_§)
            {
               this.§;"y§ = §=#_§;
            }
            else if(param1.toUpperCase() == §4b§)
            {
               this.§;"y§ = §4b§;
            }
         }
      }
      
      private function §0$6§(param1:String) : void
      {
         if(param1)
         {
            switch(param1.toUpperCase())
            {
               case "TRUE":
                  this.§#"_§ = true;
                  break;
               case "UP":
                  this.§#"_§ = true;
                  this.§0#x§ = true;
                  break;
               case "PRODUCT":
                  this.§#"_§ = true;
                  this.§?x§ = true;
            }
         }
      }
      
      private function §-#G§() : void
      {
         if(this.§#"_§)
         {
            if(this.§?x§)
            {
               this.§&!U§ = Math.sqrt(this.§&!U§ * this.§0#E§);
               this.§0#E§ = this.§&!U§;
            }
            else if(this.§&!U§ < this.§0#E§)
            {
               if(!this.§0#x§)
               {
                  this.§0#E§ = this.§&!U§;
               }
               else
               {
                  this.§&!U§ = this.§0#E§;
               }
            }
            else if(!this.§0#x§)
            {
               this.§&!U§ = this.§0#E§;
            }
            else
            {
               this.§0#E§ = this.§&!U§;
            }
         }
      }
      
      private function §;e§() : void
      {
         if(!this.§>!X§ && this.§&!U§ > 1)
         {
            this.§&!U§ = 1;
         }
         else if(!this.§%![§ && this.§&!U§ < 1)
         {
            this.§&!U§ = 1;
         }
         if(!this.§8"4§ && this.§0#E§ > 1)
         {
            this.§0#E§ = 1;
         }
         else if(!this.§+a§ && this.§0#E§ < 1)
         {
            this.§0#E§ = 1;
         }
      }
      
      private function §;!o§() : void
      {
         if(this.§;"y§ == §[#E§)
         {
            this.§&!U§ = Math.sqrt(this.§&!U§);
            this.§0#E§ = Math.sqrt(this.§0#E§);
         }
         else if(this.§;"y§ == §=#_§)
         {
            this.§&!U§ *= this.§&!U§;
            this.§0#E§ *= this.§0#E§;
         }
         else if(this.§;"y§ == §4b§)
         {
            if(this.§&!U§ > 1)
            {
               this.§&!U§ = Math.sqrt(this.§&!U§);
            }
            if(this.§0#E§ > 1)
            {
               this.§0#E§ = Math.sqrt(this.§0#E§);
            }
         }
      }
      
      private function §]g§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §!!f§ || param4 == §4#!§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §8!+§ || param4 == §"s§)
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
         else if(param4 == §>#d§)
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
      
      private function §95§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number) : Number
      {
         var _loc8_:Number = param1;
         if(param4 == §!!f§ || param4 == §4#!§)
         {
            if(param5 || param6)
            {
               _loc8_ = param1 * param7;
            }
         }
         else if(param4 == §8!+§ || param4 == §"s§)
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
         else if(param4 == §>#d§)
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
      
      public function §0v§(param1:Number, param2:Number) : void
      {
         this.§6$'§ = param1;
         this.§?"4§ = param2;
         this.§&!U§ = param1 / this.§1"@§;
         this.§0#E§ = param2 / this.§#0§;
         this.§%<§ = this.§&!U§;
         this.§7#L§ = this.§0#E§;
         this.§-#G§();
         this.§;e§();
         this.§%#=§ = this.§&!U§;
         this.§<">§ = this.§0#E§;
         this.§;!o§();
         this.§&$'§ = this.§95§(this.§1#?§,param1,this.§1"@§,this.§%$&§,this.§%![§,this.§>!X§,this.§&!U§);
         this.§<#-§ = this.§95§(this.§;!-§,param2,this.§#0§,this.§[!J§,this.§+a§,this.§8"4§,this.§0#E§);
      }
   }
}
