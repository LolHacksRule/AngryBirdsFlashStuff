package §'"!§
{
   public class §5Z§
   {
      
      private static const § q§:String = "RIGHT";
      
      private static const §<Q§:String = "LEFT";
      
      private static const § !;§:String = "TOP";
      
      private static const §^!O§:String = "BOTTOM";
      
      private static const §"!W§:String = "CENTER";
      
      private static const §<0§:String = "NORMAL";
      
      private static const §>!G§:String = "SQRT";
      
      private static const §!!S§:String = "SQR";
      
      private static const §5y§:String = "NORMAL_SQRT";
       
      
      private var §]! §:Number = 0.0;
      
      private var §7!4§:Number = 0.0;
      
      private var §;!g§:Number = 1.0;
      
      private var §'!0§:Number = 1.0;
      
      private var §&!i§:Number = 1.0;
      
      private var §3!W§:Number = 1.0;
      
      private var §-!=§:String = "LEFT";
      
      private var §;^§:String = "TOP";
      
      private var §@![§:Boolean = false;
      
      private var §;!z§:Boolean = false;
      
      private var §'L§:Boolean = false;
      
      private var § !7§:Boolean = false;
      
      private var §]"6§:Boolean = false;
      
      private var §4!E§:Boolean = false;
      
      private var §^!Y§:Boolean = false;
      
      private var §-!J§:String = "NORMAL";
      
      private var §=!]§:Number = 1.0;
      
      private var §1!b§:Number = 1.0;
      
      private var §'!Z§:Number = 1.0;
      
      private var §8!?§:Number = 1.0;
      
      private var §!W§:Number = 1.0;
      
      private var §'a§:Number = 1.0;
      
      private var §]!B§:Number = 0.0;
      
      private var §9=§:Number = 0.0;
      
      private var §^!J§:Number = 1.0;
      
      private var §+=§:Number = 1.0;
      
      public function §5Z§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§]! § = param1;
         this.§7!4§ = param2;
         this.§]!B§ = param1;
         this.§9=§ = param2;
         this.§;!g§ = param3;
         this.§'!0§ = param4;
         this.§&!i§ = param5;
         this.§3!W§ = param6;
         this.§^!J§ = param5;
         this.§+=§ = param6;
         this.§-t§(param7);
         this.§[P§(param8);
         this.§6"!§(param9);
         this.§]!E§(param10);
         this.§?!I§(param11);
         this.§!B§(param12);
         this.§-!J§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§]!B§;
      }
      
      public function get y() : Number
      {
         return this.§9=§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§]! § = this.§?!;§(param1,this.§^!J§,this.§&!i§,this.§-!=§,this.§@![§,this.§;!z§,this.§=!]§,this.§'!Z§,this.§!W§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§7!4§ = this.§?!;§(param1,this.§+=§,this.§3!W§,this.§;^§,this.§'L§,this.§ !7§,this.§1!b§,this.§8!?§,this.§'a§);
      }
      
      public function get scaleX() : Number
      {
         return this.§;!g§ * this.§]s§;
      }
      
      public function get scaleY() : Number
      {
         return this.§'!0§ * this.§<!§;
      }
      
      private function get §]s§() : Number
      {
         if(this.§@![§ || this.§;!z§)
         {
            return this.§=!]§;
         }
         return 1;
      }
      
      private function get §<!§() : Number
      {
         if(this.§'L§ || this.§ !7§)
         {
            return this.§1!b§;
         }
         return 1;
      }
      
      private function §-t§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == § q§ || param1 == §"!W§)
            {
               this.§-!=§ = param1;
            }
         }
      }
      
      private function §[P§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §^!O§ || param1 == §"!W§)
            {
               this.§;^§ = param1;
            }
         }
      }
      
      private function §6"!§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§@![§ = true;
               this.§;!z§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§@![§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§;!z§ = true;
            }
         }
      }
      
      private function §]!E§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§'L§ = true;
               this.§ !7§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§'L§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§ !7§ = true;
            }
         }
      }
      
      private function §!B§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §>!G§)
            {
               this.§-!J§ = §>!G§;
            }
            else if(param1.toUpperCase() == §!!S§)
            {
               this.§-!J§ = §!!S§;
            }
            else if(param1.toUpperCase() == §5y§)
            {
               this.§-!J§ = §5y§;
            }
         }
      }
      
      private function §?!I§(param1:String) : void
      {
         if(param1)
         {
            switch(param1.toUpperCase())
            {
               case "TRUE":
                  this.§]"6§ = true;
                  break;
               case "UP":
                  this.§]"6§ = true;
                  this.§4!E§ = true;
                  break;
               case "UPDOWN":
                  this.§]"6§ = true;
                  this.§^!Y§ = true;
            }
         }
      }
      
      private function §8!R§() : void
      {
         if(this.§]"6§)
         {
            if(this.§=!]§ < this.§1!b§)
            {
               if(!this.§4!E§)
               {
                  this.§1!b§ = this.§=!]§;
               }
               else
               {
                  this.§=!]§ = this.§1!b§;
               }
            }
            else if(!this.§4!E§)
            {
               this.§=!]§ = this.§1!b§;
            }
            else
            {
               this.§1!b§ = this.§=!]§;
            }
         }
      }
      
      private function §+"8§() : void
      {
         if(!this.§;!z§ && this.§=!]§ > 1)
         {
            this.§=!]§ = 1;
         }
         else if(!this.§@![§ && this.§=!]§ < 1)
         {
            this.§=!]§ = 1;
         }
         if(!this.§ !7§ && this.§1!b§ > 1)
         {
            this.§1!b§ = 1;
         }
         else if(!this.§'L§ && this.§1!b§ < 1)
         {
            this.§1!b§ = 1;
         }
      }
      
      private function §0!T§() : void
      {
         if(this.§-!J§ == §>!G§)
         {
            this.§=!]§ = Math.sqrt(this.§=!]§);
            this.§1!b§ = Math.sqrt(this.§1!b§);
         }
         else if(this.§-!J§ == §!!S§)
         {
            this.§=!]§ *= this.§=!]§;
            this.§1!b§ *= this.§1!b§;
         }
         else if(this.§-!J§ == §5y§)
         {
            if(this.§=!]§ > 1)
            {
               this.§=!]§ = Math.sqrt(this.§=!]§);
            }
            if(this.§1!b§ > 1)
            {
               this.§1!b§ = Math.sqrt(this.§1!b§);
            }
         }
      }
      
      private function §?!;§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §<Q§ || param4 == § !;§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == § q§ || param4 == §^!O§)
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
         else if(param4 == §"!W§)
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
      
      private function §8b§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number) : Number
      {
         var _loc8_:Number = param1;
         if(param4 == §<Q§ || param4 == § !;§)
         {
            if(param5 || param6)
            {
               _loc8_ = param1 * param7;
            }
         }
         else if(param4 == § q§ || param4 == §^!O§)
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
         else if(param4 == §"!W§)
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
      
      public function §"!$§(param1:Number, param2:Number) : void
      {
         this.§^!J§ = param1;
         this.§+=§ = param2;
         this.§=!]§ = param1 / this.§&!i§;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         if(this.§^!Y§)
         {
            _loc3_ = this.§=!]§ = param2 / this.§3!W§;
            _loc4_ = this.§1!b§ = this.§=!]§;
         }
         else
         {
            this.§=!]§ = param1 / this.§&!i§;
            this.§1!b§ = param2 / this.§3!W§;
         }
         this.§'!Z§ = this.§=!]§;
         this.§8!?§ = this.§1!b§;
         this.§8!R§();
         this.§+"8§();
         this.§!W§ = this.§=!]§;
         this.§'a§ = this.§1!b§;
         if(this.§^!Y§)
         {
            this.§=!]§ = param1 / this.§&!i§;
            this.§1!b§ = param2 / this.§3!W§;
         }
         this.§0!T§();
         this.§]!B§ = this.§8b§(this.§]! §,param1,this.§&!i§,this.§-!=§,this.§@![§,this.§;!z§,this.§=!]§);
         this.§9=§ = this.§8b§(this.§7!4§,param2,this.§3!W§,this.§;^§,this.§'L§,this.§ !7§,this.§1!b§);
         if(this.§^!Y§)
         {
            this.§=!]§ = _loc3_;
            this.§1!b§ = _loc4_;
         }
      }
   }
}
