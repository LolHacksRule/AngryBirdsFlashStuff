package §3#T§
{
   public class §=!q§
   {
      
      private static const §3!%§:String = "RIGHT";
      
      private static const § #P§:String = "LEFT";
      
      private static const §9Q§:String = "TOP";
      
      private static const §="O§:String = "BOTTOM";
      
      private static const §9"h§:String = "CENTER";
      
      private static const §]!j§:String = "NORMAL";
      
      private static const §@!f§:String = "SQRT";
      
      private static const §;!t§:String = "SQR";
      
      private static const §;#X§:String = "NORMAL_SQRT";
       
      
      private var §<!o§:Number = 0.0;
      
      private var §;"c§:Number = 0.0;
      
      private var §="z§:Number = 1.0;
      
      private var §?b§:Number = 1.0;
      
      private var §5!Q§:Number = 1.0;
      
      private var §+8§:Number = 1.0;
      
      private var §9#&§:String = "LEFT";
      
      private var §`"'§:String = "TOP";
      
      private var §="'§:Boolean = false;
      
      private var §""Z§:Boolean = false;
      
      private var §4M§:Boolean = false;
      
      private var §7#A§:Boolean = false;
      
      private var §5!J§:Boolean = false;
      
      private var §"#R§:Boolean = false;
      
      private var §>b§:Boolean = false;
      
      private var §'$'§:String = "NORMAL";
      
      private var §'"N§:Number = 1.0;
      
      private var §"e§:Number = 1.0;
      
      private var §6N§:Number = 1.0;
      
      private var §?"S§:Number = 1.0;
      
      private var §8!4§:Number = 1.0;
      
      private var §7"'§:Number = 1.0;
      
      private var §8u§:Number = 0.0;
      
      private var §!#§:Number = 0.0;
      
      private var §!"T§:Number = 1.0;
      
      private var §0F§:Number = 1.0;
      
      public function §=!q§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§<!o§ = param1;
         this.§;"c§ = param2;
         this.§8u§ = param1;
         this.§!#§ = param2;
         this.§="z§ = param3;
         this.§?b§ = param4;
         this.§5!Q§ = param5;
         this.§+8§ = param6;
         this.§!"T§ = param5;
         this.§0F§ = param6;
         this.§0!"§(param7);
         this.§?0§(param8);
         this.§'"=§(param9);
         this.§ $3§(param10);
         this.§+q§(param11);
         this.§%"3§(param12);
      }
      
      public function get x() : Number
      {
         return this.§8u§;
      }
      
      public function get y() : Number
      {
         return this.§!#§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§<!o§ = this.§7!&§(param1,this.§!"T§,this.§5!Q§,this.§9#&§,this.§="'§,this.§""Z§,this.§'"N§,this.§6N§,this.§8!4§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§;"c§ = this.§7!&§(param1,this.§0F§,this.§+8§,this.§`"'§,this.§4M§,this.§7#A§,this.§"e§,this.§?"S§,this.§7"'§);
      }
      
      public function get scaleX() : Number
      {
         return this.§="z§ * this.§8"f§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§="z§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§?b§ * this.§-"o§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§?b§ = param1;
      }
      
      private function get §8"f§() : Number
      {
         if(this.§="'§ || this.§""Z§)
         {
            return this.§'"N§;
         }
         return 1;
      }
      
      private function get §-"o§() : Number
      {
         if(this.§4M§ || this.§7#A§)
         {
            return this.§"e§;
         }
         return 1;
      }
      
      private function §0!"§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §3!%§ || param1 == §9"h§)
            {
               this.§9#&§ = param1;
            }
         }
      }
      
      private function §?0§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §="O§ || param1 == §9"h§)
            {
               this.§`"'§ = param1;
            }
         }
      }
      
      private function §'"=§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§="'§ = true;
               this.§""Z§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§="'§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§""Z§ = true;
            }
         }
      }
      
      private function § $3§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§4M§ = true;
               this.§7#A§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§4M§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§7#A§ = true;
            }
         }
      }
      
      private function §%"3§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §@!f§)
            {
               this.§'$'§ = §@!f§;
            }
            else if(param1.toUpperCase() == §;!t§)
            {
               this.§'$'§ = §;!t§;
            }
            else if(param1.toUpperCase() == §;#X§)
            {
               this.§'$'§ = §;#X§;
            }
         }
      }
      
      private function §+q§(param1:String) : void
      {
         if(param1)
         {
            switch(param1.toUpperCase())
            {
               case "TRUE":
                  this.§5!J§ = true;
                  break;
               case "UP":
                  this.§5!J§ = true;
                  this.§"#R§ = true;
                  break;
               case "PRODUCT":
                  this.§5!J§ = true;
                  this.§>b§ = true;
            }
         }
      }
      
      private function §7s§() : void
      {
         if(this.§5!J§)
         {
            if(this.§>b§)
            {
               this.§'"N§ = Math.sqrt(this.§'"N§ * this.§"e§);
               this.§"e§ = this.§'"N§;
            }
            else if(this.§'"N§ < this.§"e§)
            {
               if(!this.§"#R§)
               {
                  this.§"e§ = this.§'"N§;
               }
               else
               {
                  this.§'"N§ = this.§"e§;
               }
            }
            else if(!this.§"#R§)
            {
               this.§'"N§ = this.§"e§;
            }
            else
            {
               this.§"e§ = this.§'"N§;
            }
         }
      }
      
      private function §!T§() : void
      {
         if(!this.§""Z§ && this.§'"N§ > 1)
         {
            this.§'"N§ = 1;
         }
         else if(!this.§="'§ && this.§'"N§ < 1)
         {
            this.§'"N§ = 1;
         }
         if(!this.§7#A§ && this.§"e§ > 1)
         {
            this.§"e§ = 1;
         }
         else if(!this.§4M§ && this.§"e§ < 1)
         {
            this.§"e§ = 1;
         }
      }
      
      private function §!$A§() : void
      {
         if(this.§'$'§ == §@!f§)
         {
            this.§'"N§ = Math.sqrt(this.§'"N§);
            this.§"e§ = Math.sqrt(this.§"e§);
         }
         else if(this.§'$'§ == §;!t§)
         {
            this.§'"N§ *= this.§'"N§;
            this.§"e§ *= this.§"e§;
         }
         else if(this.§'$'§ == §;#X§)
         {
            if(this.§'"N§ > 1)
            {
               this.§'"N§ = Math.sqrt(this.§'"N§);
            }
            if(this.§"e§ > 1)
            {
               this.§"e§ = Math.sqrt(this.§"e§);
            }
         }
      }
      
      private function §7!&§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == § #P§ || param4 == §9Q§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §3!%§ || param4 == §="O§)
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
         else if(param4 == §9"h§)
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
      
      private function §^">§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number) : Number
      {
         var _loc8_:Number = param1;
         if(param4 == § #P§ || param4 == §9Q§)
         {
            if(param5 || param6)
            {
               _loc8_ = param1 * param7;
            }
         }
         else if(param4 == §3!%§ || param4 == §="O§)
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
         else if(param4 == §9"h§)
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
      
      public function §6#[§(param1:Number, param2:Number) : void
      {
         this.§!"T§ = param1;
         this.§0F§ = param2;
         this.§'"N§ = param1 / this.§5!Q§;
         this.§"e§ = param2 / this.§+8§;
         this.§6N§ = this.§'"N§;
         this.§?"S§ = this.§"e§;
         this.§7s§();
         this.§!T§();
         this.§8!4§ = this.§'"N§;
         this.§7"'§ = this.§"e§;
         this.§!$A§();
         this.§8u§ = this.§^">§(this.§<!o§,param1,this.§5!Q§,this.§9#&§,this.§="'§,this.§""Z§,this.§'"N§);
         this.§!#§ = this.§^">§(this.§;"c§,param2,this.§+8§,this.§`"'§,this.§4M§,this.§7#A§,this.§"e§);
      }
   }
}
