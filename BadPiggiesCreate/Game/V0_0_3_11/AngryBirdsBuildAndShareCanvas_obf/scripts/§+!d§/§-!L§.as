package §+!d§
{
   public class §-!L§
   {
      
      private static const §!!A§:String = "RIGHT";
      
      private static const § !!§:String = "LEFT";
      
      private static const §+i§:String = "TOP";
      
      private static const §?<§:String = "BOTTOM";
      
      private static const §3!C§:String = "CENTER";
      
      private static const §5s§:String = "NORMAL";
      
      private static const §8@§:String = "SQRT";
      
      private static const §"b§:String = "SQR";
       
      
      private var §2!F§:Number = 0.0;
      
      private var §!!$§:Number = 0.0;
      
      private var §'!"§:Number = 1.0;
      
      private var §;!n§:Number = 1.0;
      
      private var §1i§:Number = 1.0;
      
      private var §2!K§:Number = 1.0;
      
      private var §%"0§:String = "LEFT";
      
      private var §6!4§:String = "TOP";
      
      private var §[L§:Boolean = false;
      
      private var §5""§:Boolean = false;
      
      private var §8!d§:Boolean = false;
      
      private var §#!_§:Boolean = false;
      
      private var §,[§:Boolean = false;
      
      private var §`!b§:Boolean = false;
      
      private var §+!7§:String = "NORMAL";
      
      private var §7"&§:Number = 1.0;
      
      private var §1!G§:Number = 1.0;
      
      private var §1![§:Number = 1.0;
      
      private var §@!A§:Number = 1.0;
      
      private var §6]§:Number = 1.0;
      
      private var §[!B§:Number = 1.0;
      
      private var mX:Number = 0.0;
      
      private var mY:Number = 0.0;
      
      private var §#!B§:Number = 1.0;
      
      private var §5!v§:Number = 1.0;
      
      public function §-!L§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§2!F§ = param1;
         this.§!!$§ = param2;
         this.mX = param1;
         this.mY = param2;
         this.§'!"§ = param3;
         this.§;!n§ = param4;
         this.§1i§ = param5;
         this.§2!K§ = param6;
         this.§#!B§ = param5;
         this.§5!v§ = param6;
         this.§2N§(param7);
         this.§7N§(param8);
         this.§6!w§(param9);
         this.§;!,§(param10);
         this.§8!T§(param11);
         this.§;B§(param12);
         this.§+!7§ = param12;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set x(param1:Number) : void
      {
         this.§2!F§ = this.§+;§(param1,this.§#!B§,this.§1i§,this.§%"0§,this.§[L§,this.§5""§,this.§7"&§,this.§1![§,this.§6]§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§!!$§ = this.§+;§(param1,this.§5!v§,this.§2!K§,this.§6!4§,this.§8!d§,this.§#!_§,this.§1!G§,this.§@!A§,this.§[!B§);
      }
      
      public function get scaleX() : Number
      {
         return this.§'!"§ * this.§6!7§;
      }
      
      public function get scaleY() : Number
      {
         return this.§;!n§ * this.§,B§;
      }
      
      private function get §6!7§() : Number
      {
         if(this.§[L§ || this.§5""§)
         {
            return this.§7"&§;
         }
         return 1;
      }
      
      private function get §,B§() : Number
      {
         if(this.§8!d§ || this.§#!_§)
         {
            return this.§1!G§;
         }
         return 1;
      }
      
      private function §2N§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §!!A§ || param1 == §3!C§)
            {
               this.§%"0§ = param1;
            }
         }
      }
      
      private function §7N§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §?<§ || param1 == §3!C§)
            {
               this.§6!4§ = param1;
            }
         }
      }
      
      private function §6!w§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§[L§ = true;
               this.§5""§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§[L§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§5""§ = true;
            }
         }
      }
      
      private function §;!,§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§8!d§ = true;
               this.§#!_§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§8!d§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§#!_§ = true;
            }
         }
      }
      
      private function §;B§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §8@§)
            {
               this.§+!7§ = §8@§;
            }
            else if(param1.toUpperCase() == §"b§)
            {
               this.§+!7§ = §"b§;
            }
         }
      }
      
      private function §8!T§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§,[§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§,[§ = true;
               this.§`!b§ = true;
            }
         }
      }
      
      private function § A§() : void
      {
         if(this.§,[§)
         {
            if(this.§7"&§ < this.§1!G§)
            {
               if(!this.§`!b§)
               {
                  this.§1!G§ = this.§7"&§;
               }
               else
               {
                  this.§7"&§ = this.§1!G§;
               }
            }
            else if(!this.§`!b§)
            {
               this.§7"&§ = this.§1!G§;
            }
            else
            {
               this.§1!G§ = this.§7"&§;
            }
         }
      }
      
      private function §9"$§() : void
      {
         if(!this.§5""§ && this.§7"&§ > 1)
         {
            this.§7"&§ = 1;
         }
         else if(!this.§[L§ && this.§7"&§ < 1)
         {
            this.§7"&§ = 1;
         }
         if(!this.§#!_§ && this.§1!G§ > 1)
         {
            this.§1!G§ = 1;
         }
         else if(!this.§8!d§ && this.§1!G§ < 1)
         {
            this.§1!G§ = 1;
         }
      }
      
      private function §1"5§() : void
      {
         if(this.§+!7§ == §8@§)
         {
            this.§7"&§ = Math.sqrt(this.§7"&§);
            this.§1!G§ = Math.sqrt(this.§1!G§);
         }
         else if(this.§+!7§ == §"b§)
         {
            this.§7"&§ *= this.§7"&§;
            this.§1!G§ *= this.§1!G§;
         }
      }
      
      private function §+;§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == § !!§ || param4 == §+i§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §!!A§ || param4 == §?<§)
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
         else if(param4 == §3!C§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§,[§)
               {
                  if(!this.§`!b§)
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
      
      private function §^!N§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == § !!§ || param4 == §+i§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §!!A§ || param4 == §?<§)
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
         else if(param4 == §3!C§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§,[§)
               {
                  if(!this.§`!b§)
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
      
      public function §^!Z§(param1:Number, param2:Number) : void
      {
         this.§#!B§ = param1;
         this.§5!v§ = param2;
         this.§7"&§ = param1 / this.§1i§;
         this.§1!G§ = param2 / this.§2!K§;
         this.§1![§ = this.§7"&§;
         this.§@!A§ = this.§1!G§;
         this.§ A§();
         this.§9"$§();
         this.§6]§ = this.§7"&§;
         this.§[!B§ = this.§1!G§;
         this.§1"5§();
         this.mX = this.§^!N§(this.§2!F§,param1,this.§1i§,this.§%"0§,this.§[L§,this.§5""§,this.§7"&§,this.§1![§,this.§6]§);
         this.mY = this.§^!N§(this.§!!$§,param2,this.§2!K§,this.§6!4§,this.§8!d§,this.§#!_§,this.§1!G§,this.§@!A§,this.§[!B§);
      }
   }
}
