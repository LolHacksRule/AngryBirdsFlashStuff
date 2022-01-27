package §4!t§
{
   public class §[F§
   {
      
      private static const §`!k§:String = "RIGHT";
      
      private static const §#!x§:String = "LEFT";
      
      private static const §7t§:String = "TOP";
      
      private static const §4,§:String = "BOTTOM";
      
      private static const §9M§:String = "CENTER";
      
      private static const §!"D§:String = "NORMAL";
      
      private static const §;"3§:String = "SQRT";
      
      private static const §7!`§:String = "SQR";
      
      private static const §<!k§:String = "NORMAL_SQRT";
       
      
      private var §##§:Number = 0.0;
      
      private var §"%§:Number = 0.0;
      
      private var §-"A§:Number = 1.0;
      
      private var §5!B§:Number = 1.0;
      
      private var §,_§:Number = 1.0;
      
      private var §#$§:Number = 1.0;
      
      private var §<!K§:String = "LEFT";
      
      private var §%!v§:String = "TOP";
      
      private var §7!a§:Boolean = false;
      
      private var §4!P§:Boolean = false;
      
      private var §-!_§:Boolean = false;
      
      private var §,!H§:Boolean = false;
      
      private var §^!y§:Boolean = false;
      
      private var §7!k§:Boolean = false;
      
      private var §!"$§:String = "NORMAL";
      
      private var §3!N§:Number = 1.0;
      
      private var §#u§:Number = 1.0;
      
      private var §=!a§:Number = 1.0;
      
      private var §+!`§:Number = 1.0;
      
      private var §@G§:Number = 1.0;
      
      private var §&4§:Number = 1.0;
      
      private var §>!J§:Number = 0.0;
      
      private var §;`§:Number = 0.0;
      
      private var §9!&§:Number = 1.0;
      
      private var § !+§:Number = 1.0;
      
      public function §[F§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§##§ = param1;
         this.§"%§ = param2;
         this.§>!J§ = param1;
         this.§;`§ = param2;
         this.§-"A§ = param3;
         this.§5!B§ = param4;
         this.§,_§ = param5;
         this.§#$§ = param6;
         this.§9!&§ = param5;
         this.§ !+§ = param6;
         this.§'!$§(param7);
         this.§5b§(param8);
         this.§&q§(param9);
         this.§#!3§(param10);
         this.§,q§(param11);
         this.§8>§(param12);
         this.§!"$§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§>!J§;
      }
      
      public function get y() : Number
      {
         return this.§;`§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§##§ = this.§>",§(param1,this.§9!&§,this.§,_§,this.§<!K§,this.§7!a§,this.§4!P§,this.§3!N§,this.§=!a§,this.§@G§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§"%§ = this.§>",§(param1,this.§ !+§,this.§#$§,this.§%!v§,this.§-!_§,this.§,!H§,this.§#u§,this.§+!`§,this.§&4§);
      }
      
      public function get scaleX() : Number
      {
         return this.§-"A§ * this.§91§;
      }
      
      public function get scaleY() : Number
      {
         return this.§5!B§ * this.§#"-§;
      }
      
      private function get §91§() : Number
      {
         if(this.§7!a§ || this.§4!P§)
         {
            return this.§3!N§;
         }
         return 1;
      }
      
      private function get §#"-§() : Number
      {
         if(this.§-!_§ || this.§,!H§)
         {
            return this.§#u§;
         }
         return 1;
      }
      
      private function §'!$§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §`!k§ || param1 == §9M§)
            {
               this.§<!K§ = param1;
            }
         }
      }
      
      private function §5b§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §4,§ || param1 == §9M§)
            {
               this.§%!v§ = param1;
            }
         }
      }
      
      private function §&q§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§7!a§ = true;
               this.§4!P§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§7!a§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§4!P§ = true;
            }
         }
      }
      
      private function §#!3§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§-!_§ = true;
               this.§,!H§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§-!_§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§,!H§ = true;
            }
         }
      }
      
      private function §8>§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §;"3§)
            {
               this.§!"$§ = §;"3§;
            }
            else if(param1.toUpperCase() == §7!`§)
            {
               this.§!"$§ = §7!`§;
            }
            else if(param1.toUpperCase() == §<!k§)
            {
               this.§!"$§ = §<!k§;
            }
         }
      }
      
      private function §,q§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§^!y§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§^!y§ = true;
               this.§7!k§ = true;
            }
         }
      }
      
      private function §`!J§() : void
      {
         if(this.§^!y§)
         {
            if(this.§3!N§ < this.§#u§)
            {
               if(!this.§7!k§)
               {
                  this.§#u§ = this.§3!N§;
               }
               else
               {
                  this.§3!N§ = this.§#u§;
               }
            }
            else if(!this.§7!k§)
            {
               this.§3!N§ = this.§#u§;
            }
            else
            {
               this.§#u§ = this.§3!N§;
            }
         }
      }
      
      private function §,"=§() : void
      {
         if(!this.§4!P§ && this.§3!N§ > 1)
         {
            this.§3!N§ = 1;
         }
         else if(!this.§7!a§ && this.§3!N§ < 1)
         {
            this.§3!N§ = 1;
         }
         if(!this.§,!H§ && this.§#u§ > 1)
         {
            this.§#u§ = 1;
         }
         else if(!this.§-!_§ && this.§#u§ < 1)
         {
            this.§#u§ = 1;
         }
      }
      
      private function §^!A§() : void
      {
         if(this.§!"$§ == §;"3§)
         {
            this.§3!N§ = Math.sqrt(this.§3!N§);
            this.§#u§ = Math.sqrt(this.§#u§);
         }
         else if(this.§!"$§ == §7!`§)
         {
            this.§3!N§ *= this.§3!N§;
            this.§#u§ *= this.§#u§;
         }
         else if(this.§!"$§ == §<!k§)
         {
            if(this.§3!N§ > 1)
            {
               this.§3!N§ = Math.sqrt(this.§3!N§);
            }
            if(this.§#u§ > 1)
            {
               this.§#u§ = Math.sqrt(this.§#u§);
            }
         }
      }
      
      private function §>",§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §#!x§ || param4 == §7t§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §`!k§ || param4 == §4,§)
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
         else if(param4 == §9M§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§^!y§)
               {
                  if(!this.§7!k§)
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
      
      private function §0!j§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §#!x§ || param4 == §7t§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §`!k§ || param4 == §4,§)
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
         else if(param4 == §9M§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§^!y§)
               {
                  if(!this.§7!k§)
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
      
      public function §'"§(param1:Number, param2:Number) : void
      {
         this.§9!&§ = param1;
         this.§ !+§ = param2;
         this.§3!N§ = param1 / this.§,_§;
         this.§#u§ = param2 / this.§#$§;
         this.§=!a§ = this.§3!N§;
         this.§+!`§ = this.§#u§;
         this.§`!J§();
         this.§,"=§();
         this.§@G§ = this.§3!N§;
         this.§&4§ = this.§#u§;
         this.§^!A§();
         this.§>!J§ = this.§0!j§(this.§##§,param1,this.§,_§,this.§<!K§,this.§7!a§,this.§4!P§,this.§3!N§,this.§=!a§,this.§@G§);
         this.§;`§ = this.§0!j§(this.§"%§,param2,this.§#$§,this.§%!v§,this.§-!_§,this.§,!H§,this.§#u§,this.§+!`§,this.§&4§);
      }
   }
}
