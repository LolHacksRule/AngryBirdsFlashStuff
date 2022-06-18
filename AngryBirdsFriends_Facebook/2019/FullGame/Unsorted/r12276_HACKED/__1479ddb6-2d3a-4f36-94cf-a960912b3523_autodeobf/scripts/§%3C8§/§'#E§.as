package §<8§
{
   public class §'#E§
   {
      
      private static const §+"Z§:String = "RIGHT";
      
      private static const §6j§:String = "LEFT";
      
      private static const §^$9§:String = "TOP";
      
      private static const §9!m§:String = "BOTTOM";
      
      private static const §3!`§:String = "CENTER";
      
      private static const §8!j§:String = "NORMAL";
      
      private static const §3#[§:String = "SQRT";
      
      private static const §=#A§:String = "SQR";
      
      private static const §;!?§:String = "NORMAL_SQRT";
       
      
      private var §0!$§:Number = 0.0;
      
      private var §]#'§:Number = 0.0;
      
      private var §!!h§:Number = 1.0;
      
      private var §=$#§:Number = 1.0;
      
      private var §'#H§:Number = 1.0;
      
      private var §&?§:Number = 1.0;
      
      private var §4y§:String = "LEFT";
      
      private var §0#1§:String = "TOP";
      
      private var §"!g§:Boolean = false;
      
      private var §2"X§:Boolean = false;
      
      private var §>"m§:Boolean = false;
      
      private var §2!K§:Boolean = false;
      
      private var §,"=§:Boolean = false;
      
      private var §+#N§:Boolean = false;
      
      private var §]$#§:Boolean = false;
      
      private var §=!;§:String = "NORMAL";
      
      private var §3#;§:Number = 1.0;
      
      private var §]!j§:Number = 1.0;
      
      private var §92§:Number = 1.0;
      
      private var §2!u§:Number = 1.0;
      
      private var §8"^§:Number = 1.0;
      
      private var §!5§:Number = 1.0;
      
      private var §0k§:Number = 0.0;
      
      private var §@_§:Number = 0.0;
      
      private var §;%§:Number = 1.0;
      
      private var §]"D§:Number = 1.0;
      
      public function §'#E§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§0!$§ = param1;
         this.§]#'§ = param2;
         this.§0k§ = param1;
         this.§@_§ = param2;
         this.§!!h§ = param3;
         this.§=$#§ = param4;
         this.§'#H§ = param5;
         this.§&?§ = param6;
         this.§;%§ = param5;
         this.§]"D§ = param6;
         this.§&#+§(param7);
         this.§4#w§(param8);
         this.§ !E§(param9);
         this.§^w§(param10);
         this.§##?§(param11);
         this.§>!,§(param12);
      }
      
      public function get x() : Number
      {
         return this.§0k§;
      }
      
      public function get y() : Number
      {
         return this.§@_§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§0!$§ = this.§"#p§(param1,this.§;%§,this.§'#H§,this.§4y§,this.§"!g§,this.§2"X§,this.§3#;§,this.§92§,this.§8"^§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§]#'§ = this.§"#p§(param1,this.§]"D§,this.§&?§,this.§0#1§,this.§>"m§,this.§2!K§,this.§]!j§,this.§2!u§,this.§!5§);
      }
      
      public function get scaleX() : Number
      {
         return this.§!!h§ * this.§]N§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§!!h§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§=$#§ * this.§1!]§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§=$#§ = param1;
      }
      
      private function get §]N§() : Number
      {
         if(this.§"!g§ || this.§2"X§)
         {
            return this.§3#;§;
         }
         return 1;
      }
      
      private function get §1!]§() : Number
      {
         if(this.§>"m§ || this.§2!K§)
         {
            return this.§]!j§;
         }
         return 1;
      }
      
      private function §&#+§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §+"Z§ || param1 == §3!`§)
            {
               this.§4y§ = param1;
            }
         }
      }
      
      private function §4#w§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §9!m§ || param1 == §3!`§)
            {
               this.§0#1§ = param1;
            }
         }
      }
      
      private function § !E§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§"!g§ = true;
               this.§2"X§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§"!g§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§2"X§ = true;
            }
         }
      }
      
      private function §^w§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§>"m§ = true;
               this.§2!K§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§>"m§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§2!K§ = true;
            }
         }
      }
      
      private function §>!,§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §3#[§)
            {
               this.§=!;§ = §3#[§;
            }
            else if(param1.toUpperCase() == §=#A§)
            {
               this.§=!;§ = §=#A§;
            }
            else if(param1.toUpperCase() == §;!?§)
            {
               this.§=!;§ = §;!?§;
            }
         }
      }
      
      private function §##?§(param1:String) : void
      {
         if(param1)
         {
            switch(param1.toUpperCase())
            {
               case "TRUE":
                  this.§,"=§ = true;
                  break;
               case "UP":
                  this.§,"=§ = true;
                  this.§+#N§ = true;
                  break;
               case "PRODUCT":
                  this.§,"=§ = true;
                  this.§]$#§ = true;
            }
         }
      }
      
      private function §<T§() : void
      {
         if(this.§,"=§)
         {
            if(this.§]$#§)
            {
               this.§3#;§ = Math.sqrt(this.§3#;§ * this.§]!j§);
               this.§]!j§ = this.§3#;§;
            }
            else if(this.§3#;§ < this.§]!j§)
            {
               if(!this.§+#N§)
               {
                  this.§]!j§ = this.§3#;§;
               }
               else
               {
                  this.§3#;§ = this.§]!j§;
               }
            }
            else if(!this.§+#N§)
            {
               this.§3#;§ = this.§]!j§;
            }
            else
            {
               this.§]!j§ = this.§3#;§;
            }
         }
      }
      
      private function §0"B§() : void
      {
         if(!this.§2"X§ && this.§3#;§ > 1)
         {
            this.§3#;§ = 1;
         }
         else if(!this.§"!g§ && this.§3#;§ < 1)
         {
            this.§3#;§ = 1;
         }
         if(!this.§2!K§ && this.§]!j§ > 1)
         {
            this.§]!j§ = 1;
         }
         else if(!this.§>"m§ && this.§]!j§ < 1)
         {
            this.§]!j§ = 1;
         }
      }
      
      private function §3#!§() : void
      {
         if(this.§=!;§ == §3#[§)
         {
            this.§3#;§ = Math.sqrt(this.§3#;§);
            this.§]!j§ = Math.sqrt(this.§]!j§);
         }
         else if(this.§=!;§ == §=#A§)
         {
            this.§3#;§ *= this.§3#;§;
            this.§]!j§ *= this.§]!j§;
         }
         else if(this.§=!;§ == §;!?§)
         {
            if(this.§3#;§ > 1)
            {
               this.§3#;§ = Math.sqrt(this.§3#;§);
            }
            if(this.§]!j§ > 1)
            {
               this.§]!j§ = Math.sqrt(this.§]!j§);
            }
         }
      }
      
      private function §"#p§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §6j§ || param4 == §^$9§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §+"Z§ || param4 == §9!m§)
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
         else if(param4 == §3!`§)
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
      
      private function §1!o§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number) : Number
      {
         var _loc8_:Number = param1;
         if(param4 == §6j§ || param4 == §^$9§)
         {
            if(param5 || param6)
            {
               _loc8_ = param1 * param7;
            }
         }
         else if(param4 == §+"Z§ || param4 == §9!m§)
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
         else if(param4 == §3!`§)
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
      
      public function §5"d§(param1:Number, param2:Number) : void
      {
         this.§;%§ = param1;
         this.§]"D§ = param2;
         this.§3#;§ = param1 / this.§'#H§;
         this.§]!j§ = param2 / this.§&?§;
         this.§92§ = this.§3#;§;
         this.§2!u§ = this.§]!j§;
         this.§<T§();
         this.§0"B§();
         this.§8"^§ = this.§3#;§;
         this.§!5§ = this.§]!j§;
         this.§3#!§();
         this.§0k§ = this.§1!o§(this.§0!$§,param1,this.§'#H§,this.§4y§,this.§"!g§,this.§2"X§,this.§3#;§);
         this.§@_§ = this.§1!o§(this.§]#'§,param2,this.§&?§,this.§0#1§,this.§>"m§,this.§2!K§,this.§]!j§);
      }
   }
}
