package §@R§
{
   public class §!r§
   {
      
      private static const §2!0§:String = "RIGHT";
      
      private static const §2J§:String = "LEFT";
      
      private static const §%q§:String = "TOP";
      
      private static const §"Z§:String = "BOTTOM";
      
      private static const §@!E§:String = "CENTER";
      
      private static const §0L§:String = "NORMAL";
      
      private static const §5f§:String = "SQRT";
      
      private static const §,`§:String = "SQR";
       
      
      private var §7!Y§:Number = 0.0;
      
      private var §+g§:Number = 0.0;
      
      private var §00§:Number = 0.0;
      
      private var §=&§:Number = 0.0;
      
      private var §#!7§:String = "LEFT";
      
      private var §8-§:String = "TOP";
      
      private var §1$§:Boolean = false;
      
      private var §0@§:Boolean = false;
      
      private var §var§:Boolean = false;
      
      private var §,K§:Boolean = false;
      
      private var §4!§:Boolean = false;
      
      private var §"M§:Boolean = false;
      
      private var §=H§:String = "NORMAL";
      
      private var §!!,§:Number = 0.0;
      
      private var §@!G§:Number = 0.0;
      
      private var mX:Number = 0.0;
      
      private var mY:Number = 0.0;
      
      private var §`!T§:Number = 1.0;
      
      private var §%K§:Number = 1.0;
      
      public function §!r§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§7!Y§ = param1;
         this.§+g§ = param2;
         this.§`!T§ = param3;
         this.§%K§ = param4;
         this.§00§ = param5;
         this.§=&§ = param6;
         this.§]Y§(param7);
         this.§1!$§(param8);
         this.§8N§(param9);
         this.§'!I§(param10);
         this.§<!9§(param11);
         this.§9e§(param12);
         this.§=H§ = param12;
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
         this.§7!Y§ = param1;
      }
      
      public function set y(param1:Number) : void
      {
         this.§+g§ = param1;
      }
      
      public function get scaleX() : Number
      {
         if(this.§1$§ || this.§0@§)
         {
            return this.§!!,§ * this.§`!T§;
         }
         return this.§`!T§;
      }
      
      public function get scaleY() : Number
      {
         if(this.§var§ || this.§,K§)
         {
            return this.§@!G§ * this.§%K§;
         }
         return this.§%K§;
      }
      
      private function §]Y§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §2!0§ || param1 == §@!E§)
            {
               this.§#!7§ = param1;
            }
         }
      }
      
      private function §1!$§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §"Z§ || param1 == §@!E§)
            {
               this.§8-§ = param1;
            }
         }
      }
      
      private function §8N§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§1$§ = true;
               this.§0@§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§1$§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§0@§ = true;
            }
         }
      }
      
      private function §'!I§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§var§ = true;
               this.§,K§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§var§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§,K§ = true;
            }
         }
      }
      
      private function §9e§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §5f§)
            {
               this.§=H§ = §5f§;
            }
            else if(param1.toUpperCase() == §,`§)
            {
               this.§=H§ = §,`§;
            }
         }
      }
      
      private function §<!9§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§4!§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§4!§ = true;
               this.§"M§ = true;
            }
         }
      }
      
      private function §4!O§() : void
      {
         if(this.§4!§)
         {
            if(this.§!!,§ < this.§@!G§)
            {
               if(!this.§"M§)
               {
                  this.§@!G§ = this.§!!,§;
               }
               else
               {
                  this.§!!,§ = this.§@!G§;
               }
            }
            else if(!this.§"M§)
            {
               this.§!!,§ = this.§@!G§;
            }
            else
            {
               this.§@!G§ = this.§!!,§;
            }
         }
      }
      
      private function §@c§() : void
      {
         if(!this.§0@§ && this.§!!,§ > 1)
         {
            this.§!!,§ = 1;
         }
         else if(this.§0@§ && !this.§1$§ && this.§!!,§ < 1)
         {
            this.§!!,§ = 1;
         }
         if(!this.§,K§ && this.§@!G§ > 1)
         {
            this.§@!G§ = 1;
         }
         else if(this.§,K§ && !this.§var§ && this.§@!G§ < 1)
         {
            this.§@!G§ = 1;
         }
      }
      
      private function §+k§() : void
      {
         if(this.§=H§ == §5f§)
         {
            this.§!!,§ = Math.sqrt(this.§!!,§);
            this.§@!G§ = Math.sqrt(this.§@!G§);
         }
         else if(this.§=H§ == §,`§)
         {
            this.§!!,§ *= this.§!!,§;
            this.§@!G§ *= this.§@!G§;
         }
      }
      
      private function §^[§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §2J§ || param4 == §%q§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §2!0§ || param4 == §"Z§)
         {
            _loc10_ = param1 + (param2 - param3);
         }
         else if(param4 == §@!E§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§4!§)
               {
                  if(!this.§"M§)
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
      
      public function §"!T§(param1:Number, param2:Number) : void
      {
         this.§!!,§ = param1 / this.§00§;
         this.§@!G§ = param2 / this.§=&§;
         var _loc3_:Number = this.§!!,§;
         var _loc4_:Number = this.§@!G§;
         this.§4!O§();
         this.§@c§();
         var _loc5_:Number = this.§!!,§;
         var _loc6_:Number = this.§@!G§;
         this.§+k§();
         this.mX = this.§^[§(this.§7!Y§,param1,this.§00§,this.§#!7§,this.§1$§,this.§0@§,this.§!!,§,_loc3_,_loc5_);
         this.mY = this.§^[§(this.§+g§,param2,this.§=&§,this.§8-§,this.§var§,this.§,K§,this.§@!G§,_loc4_,_loc6_);
      }
   }
}
