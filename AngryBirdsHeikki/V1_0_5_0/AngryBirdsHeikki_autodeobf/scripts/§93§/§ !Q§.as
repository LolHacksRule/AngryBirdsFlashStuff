package §93§
{
   public class § !Q§
   {
      
      private static const §59§:String = "RIGHT";
      
      private static const §-!P§:String = "LEFT";
      
      private static const §2!X§:String = "TOP";
      
      private static const §-!V§:String = "BOTTOM";
      
      private static const §6!4§:String = "CENTER";
      
      private static const §,!,§:String = "NORMAL";
      
      private static const §;m§:String = "SQRT";
      
      private static const §#7§:String = "SQR";
       
      
      private var § u§:Number = 0.0;
      
      private var §;! §:Number = 0.0;
      
      private var §!!5§:Number = 1.0;
      
      private var §"!A§:Number = 1.0;
      
      private var §&;§:Number = 1.0;
      
      private var § r§:Number = 1.0;
      
      private var §;T§:String = "LEFT";
      
      private var §8!W§:String = "TOP";
      
      private var §+%§:Boolean = false;
      
      private var §,!1§:Boolean = false;
      
      private var §&!'§:Boolean = false;
      
      private var §4B§:Boolean = false;
      
      private var §9!@§:Boolean = false;
      
      private var §]]§:Boolean = false;
      
      private var §9r§:String = "NORMAL";
      
      private var §<!L§:Number = 1.0;
      
      private var §#p§:Number = 1.0;
      
      private var §[r§:Number = 1.0;
      
      private var §&!S§:Number = 1.0;
      
      private var §7m§:Number = 1.0;
      
      private var §65§:Number = 1.0;
      
      private var §<O§:Number = 0.0;
      
      private var §92§:Number = 0.0;
      
      private var §#l§:Number = 1.0;
      
      private var §<!;§:Number = 1.0;
      
      public function § !Q§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§ u§ = param1;
         this.§;! § = param2;
         this.§<O§ = param1;
         this.§92§ = param2;
         this.§#l§ = param3;
         this.§<!;§ = param4;
         this.§!!5§ = param5;
         this.§"!A§ = param6;
         this.§&;§ = param5;
         this.§ r§ = param6;
         this.§5v§(param7);
         this.§9X§(param8);
         this.§6f§(param9);
         this.§#!3§(param10);
         this.§9K§(param11);
         this.§?![§(param12);
         this.§9r§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§<O§;
      }
      
      public function get y() : Number
      {
         return this.§92§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§ u§ = this.§4S§(param1,this.§&;§,this.§!!5§,this.§;T§,this.§+%§,this.§,!1§,this.§<!L§,this.§[r§,this.§7m§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§;! § = this.§4S§(param1,this.§ r§,this.§"!A§,this.§8!W§,this.§&!'§,this.§4B§,this.§#p§,this.§&!S§,this.§65§);
      }
      
      public function get scaleX() : Number
      {
         return this.§#l§ * this.§2!_§;
      }
      
      public function get scaleY() : Number
      {
         return this.§<!;§ * this.§!&§;
      }
      
      private function get §2!_§() : Number
      {
         if(this.§+%§ || this.§,!1§)
         {
            return this.§<!L§;
         }
         return 1;
      }
      
      private function get §!&§() : Number
      {
         if(this.§&!'§ || this.§4B§)
         {
            return this.§#p§;
         }
         return 1;
      }
      
      private function §5v§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §59§ || param1 == §6!4§)
            {
               this.§;T§ = param1;
            }
         }
      }
      
      private function §9X§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §-!V§ || param1 == §6!4§)
            {
               this.§8!W§ = param1;
            }
         }
      }
      
      private function §6f§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§+%§ = true;
               this.§,!1§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§+%§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§,!1§ = true;
            }
         }
      }
      
      private function §#!3§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§&!'§ = true;
               this.§4B§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§&!'§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§4B§ = true;
            }
         }
      }
      
      private function §?![§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §;m§)
            {
               this.§9r§ = §;m§;
            }
            else if(param1.toUpperCase() == §#7§)
            {
               this.§9r§ = §#7§;
            }
         }
      }
      
      private function §9K§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§9!@§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§9!@§ = true;
               this.§]]§ = true;
            }
         }
      }
      
      private function §56§() : void
      {
         if(this.§9!@§)
         {
            if(this.§<!L§ < this.§#p§)
            {
               if(!this.§]]§)
               {
                  this.§#p§ = this.§<!L§;
               }
               else
               {
                  this.§<!L§ = this.§#p§;
               }
            }
            else if(!this.§]]§)
            {
               this.§<!L§ = this.§#p§;
            }
            else
            {
               this.§#p§ = this.§<!L§;
            }
         }
      }
      
      private function §1c§() : void
      {
         if(!this.§,!1§ && this.§<!L§ > 1)
         {
            this.§<!L§ = 1;
         }
         else if(this.§,!1§ && !this.§+%§ && this.§<!L§ < 1)
         {
            this.§<!L§ = 1;
         }
         if(!this.§4B§ && this.§#p§ > 1)
         {
            this.§#p§ = 1;
         }
         else if(this.§4B§ && !this.§&!'§ && this.§#p§ < 1)
         {
            this.§#p§ = 1;
         }
      }
      
      private function §"n§() : void
      {
         if(this.§9r§ == §;m§)
         {
            this.§<!L§ = Math.sqrt(this.§<!L§);
            this.§#p§ = Math.sqrt(this.§#p§);
         }
         else if(this.§9r§ == §#7§)
         {
            this.§<!L§ *= this.§<!L§;
            this.§#p§ *= this.§#p§;
         }
      }
      
      private function §4S§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §-!P§ || param4 == §2!X§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §59§ || param4 == §-!V§)
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
         else if(param4 == §6!4§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§9!@§)
               {
                  if(!this.§]]§)
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
      
      private function §[!D§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §-!P§ || param4 == §2!X§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §59§ || param4 == §-!V§)
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
         else if(param4 == §6!4§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§9!@§)
               {
                  if(!this.§]]§)
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
      
      public function §7P§(param1:Number, param2:Number) : void
      {
         this.§&;§ = param1;
         this.§ r§ = param2;
         this.§<!L§ = param1 / this.§!!5§;
         this.§#p§ = param2 / this.§"!A§;
         this.§[r§ = this.§<!L§;
         this.§&!S§ = this.§#p§;
         this.§56§();
         this.§1c§();
         this.§7m§ = this.§<!L§;
         this.§65§ = this.§#p§;
         this.§"n§();
         this.§<O§ = this.§[!D§(this.§ u§,param1,this.§!!5§,this.§;T§,this.§+%§,this.§,!1§,this.§<!L§,this.§[r§,this.§7m§);
         this.§92§ = this.§[!D§(this.§;! §,param2,this.§"!A§,this.§8!W§,this.§&!'§,this.§4B§,this.§#p§,this.§&!S§,this.§65§);
      }
   }
}
