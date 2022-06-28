package §9Y§
{
   public class §7!T§
   {
      
      private static const §&U§:String = "RIGHT";
      
      private static const §<!5§:String = "LEFT";
      
      private static const §`$§:String = "TOP";
      
      private static const §,!§:String = "BOTTOM";
      
      private static const § !q§:String = "CENTER";
      
      private static const §8!H§:String = "NORMAL";
      
      private static const §]!`§:String = "SQRT";
      
      private static const §`0§:String = "SQR";
       
      
      private var §4I§:Number = 0.0;
      
      private var §#z§:Number = 0.0;
      
      private var §9I§:Number = 1.0;
      
      private var §1I§:Number = 1.0;
      
      private var § !6§:Number = 1.0;
      
      private var §0!j§:Number = 1.0;
      
      private var §@b§:String = "LEFT";
      
      private var §3!%§:String = "TOP";
      
      private var §=B§:Boolean = false;
      
      private var §@!X§:Boolean = false;
      
      private var §=!H§:Boolean = false;
      
      private var §=6§:Boolean = false;
      
      private var §5w§:Boolean = false;
      
      private var §9!T§:Boolean = false;
      
      private var §@!!§:String = "NORMAL";
      
      private var §@R§:Number = 1.0;
      
      private var §];§:Number = 1.0;
      
      private var §]!Q§:Number = 1.0;
      
      private var §6!T§:Number = 1.0;
      
      private var §@m§:Number = 1.0;
      
      private var §^!T§:Number = 1.0;
      
      private var §,G§:Number = 0.0;
      
      private var §78§:Number = 0.0;
      
      private var §2!F§:Number = 1.0;
      
      private var §93§:Number = 1.0;
      
      public function §7!T§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§4I§ = param1;
         this.§#z§ = param2;
         this.§,G§ = param1;
         this.§78§ = param2;
         this.§2!F§ = param3;
         this.§93§ = param4;
         this.§9I§ = param5;
         this.§1I§ = param6;
         this.§ !6§ = param5;
         this.§0!j§ = param6;
         this.§!!j§(param7);
         this.§@F§(param8);
         this.§'!W§(param9);
         this.§8!N§(param10);
         this.§2T§(param11);
         this.§4$§(param12);
         this.§@!!§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§,G§;
      }
      
      public function get y() : Number
      {
         return this.§78§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§4I§ = this.§!&§(param1,this.§ !6§,this.§9I§,this.§@b§,this.§=B§,this.§@!X§,this.§@R§,this.§]!Q§,this.§@m§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§#z§ = this.§!&§(param1,this.§0!j§,this.§1I§,this.§3!%§,this.§=!H§,this.§=6§,this.§];§,this.§6!T§,this.§^!T§);
      }
      
      public function get scaleX() : Number
      {
         return this.§2!F§ * this.§4!_§;
      }
      
      public function get scaleY() : Number
      {
         return this.§93§ * this.§#§;
      }
      
      private function get §4!_§() : Number
      {
         if(this.§=B§ || this.§@!X§)
         {
            return this.§@R§;
         }
         return 1;
      }
      
      private function get §#§() : Number
      {
         if(this.§=!H§ || this.§=6§)
         {
            return this.§];§;
         }
         return 1;
      }
      
      private function §!!j§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §&U§ || param1 == § !q§)
            {
               this.§@b§ = param1;
            }
         }
      }
      
      private function §@F§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §,!§ || param1 == § !q§)
            {
               this.§3!%§ = param1;
            }
         }
      }
      
      private function §'!W§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§=B§ = true;
               this.§@!X§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§=B§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§@!X§ = true;
            }
         }
      }
      
      private function §8!N§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§=!H§ = true;
               this.§=6§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§=!H§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§=6§ = true;
            }
         }
      }
      
      private function §4$§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §]!`§)
            {
               this.§@!!§ = §]!`§;
            }
            else if(param1.toUpperCase() == §`0§)
            {
               this.§@!!§ = §`0§;
            }
         }
      }
      
      private function §2T§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§5w§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§5w§ = true;
               this.§9!T§ = true;
            }
         }
      }
      
      private function §[!0§() : void
      {
         if(this.§5w§)
         {
            if(this.§@R§ < this.§];§)
            {
               if(!this.§9!T§)
               {
                  this.§];§ = this.§@R§;
               }
               else
               {
                  this.§@R§ = this.§];§;
               }
            }
            else if(!this.§9!T§)
            {
               this.§@R§ = this.§];§;
            }
            else
            {
               this.§];§ = this.§@R§;
            }
         }
      }
      
      private function §+_§() : void
      {
         if(!this.§@!X§ && this.§@R§ > 1)
         {
            this.§@R§ = 1;
         }
         else if(this.§@!X§ && !this.§=B§ && this.§@R§ < 1)
         {
            this.§@R§ = 1;
         }
         if(!this.§=6§ && this.§];§ > 1)
         {
            this.§];§ = 1;
         }
         else if(this.§=6§ && !this.§=!H§ && this.§];§ < 1)
         {
            this.§];§ = 1;
         }
      }
      
      private function §,d§() : void
      {
         if(this.§@!!§ == §]!`§)
         {
            this.§@R§ = Math.sqrt(this.§@R§);
            this.§];§ = Math.sqrt(this.§];§);
         }
         else if(this.§@!!§ == §`0§)
         {
            this.§@R§ *= this.§@R§;
            this.§];§ *= this.§];§;
         }
      }
      
      private function §!&§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §<!5§ || param4 == §`$§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §&U§ || param4 == §,!§)
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
         else if(param4 == § !q§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§5w§)
               {
                  if(!this.§9!T§)
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
      
      private function §8!;§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §<!5§ || param4 == §`$§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §&U§ || param4 == §,!§)
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
         else if(param4 == § !q§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§5w§)
               {
                  if(!this.§9!T§)
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
      
      public function §'!0§(param1:Number, param2:Number) : void
      {
         this.§ !6§ = param1;
         this.§0!j§ = param2;
         this.§@R§ = param1 / this.§9I§;
         this.§];§ = param2 / this.§1I§;
         this.§]!Q§ = this.§@R§;
         this.§6!T§ = this.§];§;
         this.§[!0§();
         this.§+_§();
         this.§@m§ = this.§@R§;
         this.§^!T§ = this.§];§;
         this.§,d§();
         this.§,G§ = this.§8!;§(this.§4I§,param1,this.§9I§,this.§@b§,this.§=B§,this.§@!X§,this.§@R§,this.§]!Q§,this.§@m§);
         this.§78§ = this.§8!;§(this.§#z§,param2,this.§1I§,this.§3!%§,this.§=!H§,this.§=6§,this.§];§,this.§6!T§,this.§^!T§);
      }
   }
}
