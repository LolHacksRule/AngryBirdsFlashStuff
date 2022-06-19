package §1"2§
{
   public class §`"@§
   {
      
      private static const §2!p§:String = "RIGHT";
      
      private static const §8!t§:String = "LEFT";
      
      private static const §2_§:String = "TOP";
      
      private static const §[!I§:String = "BOTTOM";
      
      private static const §]t§:String = "CENTER";
      
      private static const §4!8§:String = "NORMAL";
      
      private static const §!!@§:String = "SQRT";
      
      private static const §`!`§:String = "SQR";
       
      
      private var §^!d§:Number = 0.0;
      
      private var §`!&§:Number = 0.0;
      
      private var §@!O§:Number = 1.0;
      
      private var §7h§:Number = 1.0;
      
      private var §`$§:Number = 1.0;
      
      private var §4!D§:Number = 1.0;
      
      private var §!H§:String = "LEFT";
      
      private var §9?§:String = "TOP";
      
      private var § "B§:Boolean = false;
      
      private var §7!_§:Boolean = false;
      
      private var §]!!§:Boolean = false;
      
      private var §>!r§:Boolean = false;
      
      private var §!!^§:Boolean = false;
      
      private var §&!g§:Boolean = false;
      
      private var §9!k§:String = "NORMAL";
      
      private var §'Q§:Number = 1.0;
      
      private var § U§:Number = 1.0;
      
      private var §&!V§:Number = 1.0;
      
      private var §^!W§:Number = 1.0;
      
      private var §@c§:Number = 1.0;
      
      private var §9D§:Number = 1.0;
      
      private var §>U§:Number = 0.0;
      
      private var §>!c§:Number = 0.0;
      
      private var §2f§:Number = 1.0;
      
      private var §^L§:Number = 1.0;
      
      public function §`"@§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§^!d§ = param1;
         this.§`!&§ = param2;
         this.§>U§ = param1;
         this.§>!c§ = param2;
         this.§@!O§ = param3;
         this.§7h§ = param4;
         this.§`$§ = param5;
         this.§4!D§ = param6;
         this.§2f§ = param5;
         this.§^L§ = param6;
         this.§ !1§(param7);
         this.§+"%§(param8);
         this.§#g§(param9);
         this.§"!=§(param10);
         this.§;+§(param11);
         this.§<!t§(param12);
         this.§9!k§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§>U§;
      }
      
      public function get y() : Number
      {
         return this.§>!c§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§^!d§ = this.§[!v§(param1,this.§2f§,this.§`$§,this.§!H§,this.§ "B§,this.§7!_§,this.§'Q§,this.§&!V§,this.§@c§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§`!&§ = this.§[!v§(param1,this.§^L§,this.§4!D§,this.§9?§,this.§]!!§,this.§>!r§,this.§ U§,this.§^!W§,this.§9D§);
      }
      
      public function get scaleX() : Number
      {
         return this.§@!O§ * this.§40§;
      }
      
      public function get scaleY() : Number
      {
         return this.§7h§ * this.§!!1§;
      }
      
      private function get §40§() : Number
      {
         if(this.§ "B§ || this.§7!_§)
         {
            return this.§'Q§;
         }
         return 1;
      }
      
      private function get §!!1§() : Number
      {
         if(this.§]!!§ || this.§>!r§)
         {
            return this.§ U§;
         }
         return 1;
      }
      
      private function § !1§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §2!p§ || param1 == §]t§)
            {
               this.§!H§ = param1;
            }
         }
      }
      
      private function §+"%§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §[!I§ || param1 == §]t§)
            {
               this.§9?§ = param1;
            }
         }
      }
      
      private function §#g§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§ "B§ = true;
               this.§7!_§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§ "B§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§7!_§ = true;
            }
         }
      }
      
      private function §"!=§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§]!!§ = true;
               this.§>!r§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§]!!§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§>!r§ = true;
            }
         }
      }
      
      private function §<!t§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §!!@§)
            {
               this.§9!k§ = §!!@§;
            }
            else if(param1.toUpperCase() == §`!`§)
            {
               this.§9!k§ = §`!`§;
            }
         }
      }
      
      private function §;+§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§!!^§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§!!^§ = true;
               this.§&!g§ = true;
            }
         }
      }
      
      private function §7Y§() : void
      {
         if(this.§!!^§)
         {
            if(this.§'Q§ < this.§ U§)
            {
               if(!this.§&!g§)
               {
                  this.§ U§ = this.§'Q§;
               }
               else
               {
                  this.§'Q§ = this.§ U§;
               }
            }
            else if(!this.§&!g§)
            {
               this.§'Q§ = this.§ U§;
            }
            else
            {
               this.§ U§ = this.§'Q§;
            }
         }
      }
      
      private function §3!$§() : void
      {
         if(!this.§7!_§ && this.§'Q§ > 1)
         {
            this.§'Q§ = 1;
         }
         else if(!this.§ "B§ && this.§'Q§ < 1)
         {
            this.§'Q§ = 1;
         }
         if(!this.§>!r§ && this.§ U§ > 1)
         {
            this.§ U§ = 1;
         }
         else if(!this.§]!!§ && this.§ U§ < 1)
         {
            this.§ U§ = 1;
         }
      }
      
      private function §%"9§() : void
      {
         if(this.§9!k§ == §!!@§)
         {
            this.§'Q§ = Math.sqrt(this.§'Q§);
            this.§ U§ = Math.sqrt(this.§ U§);
         }
         else if(this.§9!k§ == §`!`§)
         {
            this.§'Q§ *= this.§'Q§;
            this.§ U§ *= this.§ U§;
         }
      }
      
      private function §[!v§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §8!t§ || param4 == §2_§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §2!p§ || param4 == §[!I§)
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
         else if(param4 == §]t§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§!!^§)
               {
                  if(!this.§&!g§)
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
      
      private function §,S§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §8!t§ || param4 == §2_§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §2!p§ || param4 == §[!I§)
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
         else if(param4 == §]t§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§!!^§)
               {
                  if(!this.§&!g§)
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
      
      public function §?l§(param1:Number, param2:Number) : void
      {
         this.§2f§ = param1;
         this.§^L§ = param2;
         this.§'Q§ = param1 / this.§`$§;
         this.§ U§ = param2 / this.§4!D§;
         this.§&!V§ = this.§'Q§;
         this.§^!W§ = this.§ U§;
         this.§7Y§();
         this.§3!$§();
         this.§@c§ = this.§'Q§;
         this.§9D§ = this.§ U§;
         this.§%"9§();
         this.§>U§ = this.§,S§(this.§^!d§,param1,this.§`$§,this.§!H§,this.§ "B§,this.§7!_§,this.§'Q§,this.§&!V§,this.§@c§);
         this.§>!c§ = this.§,S§(this.§`!&§,param2,this.§4!D§,this.§9?§,this.§]!!§,this.§>!r§,this.§ U§,this.§^!W§,this.§9D§);
      }
   }
}
