package §+$§
{
   public class §;!K§
   {
      
      private static const §11§:String = "RIGHT";
      
      private static const §%v§:String = "LEFT";
      
      private static const §&!I§:String = "TOP";
      
      private static const §&G§:String = "BOTTOM";
      
      private static const §9G§:String = "CENTER";
      
      private static const §=,§:String = "NORMAL";
      
      private static const §^^§:String = "SQRT";
      
      private static const §3!_§:String = "SQR";
       
      
      private var §`&§:Number = 0.0;
      
      private var §&U§:Number = 0.0;
      
      private var §[!E§:Number = 1.0;
      
      private var §?!!§:Number = 1.0;
      
      private var §default§:Number = 1.0;
      
      private var §^!N§:Number = 1.0;
      
      private var §9!I§:String = "LEFT";
      
      private var §&!n§:String = "TOP";
      
      private var §'!D§:Boolean = false;
      
      private var §+]§:Boolean = false;
      
      private var §#b§:Boolean = false;
      
      private var §;!i§:Boolean = false;
      
      private var §+1§:Boolean = false;
      
      private var §-![§:Boolean = false;
      
      private var §?b§:String = "NORMAL";
      
      private var §#P§:Number = 1.0;
      
      private var §=T§:Number = 1.0;
      
      private var §5!1§:Number = 1.0;
      
      private var §#C§:Number = 1.0;
      
      private var §02§:Number = 1.0;
      
      private var §&O§:Number = 1.0;
      
      private var §=!=§:Number = 0.0;
      
      private var §[!;§:Number = 0.0;
      
      private var §`e§:Number = 1.0;
      
      private var §9!A§:Number = 1.0;
      
      public function §;!K§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§`&§ = param1;
         this.§&U§ = param2;
         this.§=!=§ = param1;
         this.§[!;§ = param2;
         this.§[!E§ = param3;
         this.§?!!§ = param4;
         this.§default§ = param5;
         this.§^!N§ = param6;
         this.§`e§ = param5;
         this.§9!A§ = param6;
         this.§6!P§(param7);
         this.§-M§(param8);
         this.§<J§(param9);
         this.§6![§(param10);
         this.§05§(param11);
         this.§with§(param12);
         this.§?b§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§=!=§;
      }
      
      public function get y() : Number
      {
         return this.§[!;§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§`&§ = this.§>=§(param1,this.§`e§,this.§default§,this.§9!I§,this.§'!D§,this.§+]§,this.§#P§,this.§5!1§,this.§02§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§&U§ = this.§>=§(param1,this.§9!A§,this.§^!N§,this.§&!n§,this.§#b§,this.§;!i§,this.§=T§,this.§#C§,this.§&O§);
      }
      
      public function get scaleX() : Number
      {
         return this.§[!E§ * this.§;g§;
      }
      
      public function get scaleY() : Number
      {
         return this.§?!!§ * this.§<!i§;
      }
      
      private function get §;g§() : Number
      {
         if(this.§'!D§ || this.§+]§)
         {
            return this.§#P§;
         }
         return 1;
      }
      
      private function get §<!i§() : Number
      {
         if(this.§#b§ || this.§;!i§)
         {
            return this.§=T§;
         }
         return 1;
      }
      
      private function §6!P§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §11§ || param1 == §9G§)
            {
               this.§9!I§ = param1;
            }
         }
      }
      
      private function §-M§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §&G§ || param1 == §9G§)
            {
               this.§&!n§ = param1;
            }
         }
      }
      
      private function §<J§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§'!D§ = true;
               this.§+]§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§'!D§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§+]§ = true;
            }
         }
      }
      
      private function §6![§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§#b§ = true;
               this.§;!i§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§#b§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§;!i§ = true;
            }
         }
      }
      
      private function §with§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §^^§)
            {
               this.§?b§ = §^^§;
            }
            else if(param1.toUpperCase() == §3!_§)
            {
               this.§?b§ = §3!_§;
            }
         }
      }
      
      private function §05§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§+1§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§+1§ = true;
               this.§-![§ = true;
            }
         }
      }
      
      private function §]@§() : void
      {
         if(this.§+1§)
         {
            if(this.§#P§ < this.§=T§)
            {
               if(!this.§-![§)
               {
                  this.§=T§ = this.§#P§;
               }
               else
               {
                  this.§#P§ = this.§=T§;
               }
            }
            else if(!this.§-![§)
            {
               this.§#P§ = this.§=T§;
            }
            else
            {
               this.§=T§ = this.§#P§;
            }
         }
      }
      
      private function §!j§() : void
      {
         if(!this.§+]§ && this.§#P§ > 1)
         {
            this.§#P§ = 1;
         }
         else if(!this.§'!D§ && this.§#P§ < 1)
         {
            this.§#P§ = 1;
         }
         if(!this.§;!i§ && this.§=T§ > 1)
         {
            this.§=T§ = 1;
         }
         else if(!this.§#b§ && this.§=T§ < 1)
         {
            this.§=T§ = 1;
         }
      }
      
      private function §2i§() : void
      {
         if(this.§?b§ == §^^§)
         {
            this.§#P§ = Math.sqrt(this.§#P§);
            this.§=T§ = Math.sqrt(this.§=T§);
         }
         else if(this.§?b§ == §3!_§)
         {
            this.§#P§ *= this.§#P§;
            this.§=T§ *= this.§=T§;
         }
      }
      
      private function §>=§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §%v§ || param4 == §&!I§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §11§ || param4 == §&G§)
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
         else if(param4 == §9G§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§+1§)
               {
                  if(!this.§-![§)
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
      
      private function §&[§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §%v§ || param4 == §&!I§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §11§ || param4 == §&G§)
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
         else if(param4 == §9G§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§+1§)
               {
                  if(!this.§-![§)
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
      
      public function §2!]§(param1:Number, param2:Number) : void
      {
         this.§`e§ = param1;
         this.§9!A§ = param2;
         this.§#P§ = param1 / this.§default§;
         this.§=T§ = param2 / this.§^!N§;
         this.§5!1§ = this.§#P§;
         this.§#C§ = this.§=T§;
         this.§]@§();
         this.§!j§();
         this.§02§ = this.§#P§;
         this.§&O§ = this.§=T§;
         this.§2i§();
         this.§=!=§ = this.§&[§(this.§`&§,param1,this.§default§,this.§9!I§,this.§'!D§,this.§+]§,this.§#P§,this.§5!1§,this.§02§);
         this.§[!;§ = this.§&[§(this.§&U§,param2,this.§^!N§,this.§&!n§,this.§#b§,this.§;!i§,this.§=T§,this.§#C§,this.§&O§);
      }
   }
}
