package §-V§
{
   public class §[u§
   {
      
      private static const §"!T§:String = "RIGHT";
      
      private static const §2!0§:String = "LEFT";
      
      private static const §2J§:String = "TOP";
      
      private static const §%q§:String = "BOTTOM";
      
      private static const §"Z§:String = "CENTER";
      
      private static const §@!E§:String = "NORMAL";
      
      private static const §0L§:String = "SQRT";
      
      private static const §5f§:String = "SQR";
       
      
      private var §!r§:Number = 0.0;
      
      private var §7!Y§:Number = 0.0;
      
      private var §&!=§:Number = 0.0;
      
      private var §00§:Number = 0.0;
      
      private var §=&§:String = "LEFT";
      
      private var §#!7§:String = "TOP";
      
      private var §8-§:Boolean = false;
      
      private var §+g§:Boolean = false;
      
      private var §1$§:Boolean = false;
      
      private var §0@§:Boolean = false;
      
      private var §=H§:Boolean = false;
      
      private var §,K§:Boolean = false;
      
      private var §var§:String = "NORMAL";
      
      private var §"M§:Number = 0.0;
      
      private var §!!,§:Number = 0.0;
      
      private var mX:Number = 0.0;
      
      private var mY:Number = 0.0;
      
      private var §@!G§:Number = 1.0;
      
      private var §`!T§:Number = 1.0;
      
      public function §[u§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§!r§ = param1;
         this.§7!Y§ = param2;
         this.§@!G§ = param3;
         this.§`!T§ = param4;
         this.§&!=§ = param5;
         this.§00§ = param6;
         this.§%K§(param7);
         this.§]Y§(param8);
         this.§1!$§(param9);
         this.§8N§(param10);
         this.§9e§(param11);
         this.§'!I§(param12);
         this.§var§ = param12;
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
         this.§!r§ = param1;
      }
      
      public function set y(param1:Number) : void
      {
         this.§7!Y§ = param1;
      }
      
      public function get scaleX() : Number
      {
         if(this.§8-§ || this.§+g§)
         {
            return this.§"M§ * this.§@!G§;
         }
         return this.§@!G§;
      }
      
      public function get scaleY() : Number
      {
         if(this.§1$§ || this.§0@§)
         {
            return this.§!!,§ * this.§`!T§;
         }
         return this.§`!T§;
      }
      
      private function §%K§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §"!T§ || param1 == §"Z§)
            {
               this.§=&§ = param1;
            }
         }
      }
      
      private function §]Y§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §%q§ || param1 == §"Z§)
            {
               this.§#!7§ = param1;
            }
         }
      }
      
      private function §1!$§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§8-§ = true;
               this.§+g§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§8-§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§+g§ = true;
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
            if(param1.toUpperCase() == "DOWN")
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
            if(param1.toUpperCase() == §0L§)
            {
               this.§var§ = §0L§;
            }
            else if(param1.toUpperCase() == §5f§)
            {
               this.§var§ = §5f§;
            }
         }
      }
      
      private function §9e§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§=H§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§=H§ = true;
               this.§,K§ = true;
            }
         }
      }
      
      private function §<!9§() : void
      {
         if(this.§=H§)
         {
            if(this.§"M§ < this.§!!,§)
            {
               if(!this.§,K§)
               {
                  this.§!!,§ = this.§"M§;
               }
               else
               {
                  this.§"M§ = this.§!!,§;
               }
            }
            else if(!this.§,K§)
            {
               this.§"M§ = this.§!!,§;
            }
            else
            {
               this.§!!,§ = this.§"M§;
            }
         }
      }
      
      private function §4!O§() : void
      {
         if(!this.§+g§ && this.§"M§ > 1)
         {
            this.§"M§ = 1;
         }
         else if(this.§+g§ && !this.§8-§ && this.§"M§ < 1)
         {
            this.§"M§ = 1;
         }
         if(!this.§0@§ && this.§!!,§ > 1)
         {
            this.§!!,§ = 1;
         }
         else if(this.§0@§ && !this.§1$§ && this.§!!,§ < 1)
         {
            this.§!!,§ = 1;
         }
      }
      
      private function §@c§() : void
      {
         if(this.§var§ == §0L§)
         {
            this.§"M§ = Math.sqrt(this.§"M§);
            this.§!!,§ = Math.sqrt(this.§!!,§);
         }
         else if(this.§var§ == §5f§)
         {
            this.§"M§ *= this.§"M§;
            this.§!!,§ *= this.§!!,§;
         }
      }
      
      private function §+k§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §2!0§ || param4 == §2J§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §"!T§ || param4 == §%q§)
         {
            _loc10_ = param1 + (param2 - param3);
         }
         else if(param4 == §"Z§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§=H§)
               {
                  if(!this.§,K§)
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
      
      public function §^[§(param1:Number, param2:Number) : void
      {
         this.§"M§ = param1 / this.§&!=§;
         this.§!!,§ = param2 / this.§00§;
         var _loc3_:Number = this.§"M§;
         var _loc4_:Number = this.§!!,§;
         this.§<!9§();
         this.§4!O§();
         var _loc5_:Number = this.§"M§;
         var _loc6_:Number = this.§!!,§;
         this.§@c§();
         this.mX = this.§+k§(this.§!r§,param1,this.§&!=§,this.§=&§,this.§8-§,this.§+g§,this.§"M§,_loc3_,_loc5_);
         this.mY = this.§+k§(this.§7!Y§,param2,this.§00§,this.§#!7§,this.§1$§,this.§0@§,this.§!!,§,_loc4_,_loc6_);
      }
   }
}
