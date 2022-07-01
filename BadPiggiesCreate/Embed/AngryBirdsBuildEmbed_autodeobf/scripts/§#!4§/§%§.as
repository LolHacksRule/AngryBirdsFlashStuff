package §#!4§
{
   public class §%§
   {
      
      private static const §"3§:String = "RIGHT";
      
      private static const §#!6§:String = "LEFT";
      
      private static const §"!u§:String = "TOP";
      
      private static const §8R§:String = "BOTTOM";
      
      private static const §"!;§:String = "CENTER";
      
      private static const §@v§:String = "NORMAL";
      
      private static const §3!!§:String = "SQRT";
      
      private static const §switch§:String = "SQR";
       
      
      private var §-!'§:Number = 0.0;
      
      private var §<!X§:Number = 0.0;
      
      private var §=!M§:Number = 1.0;
      
      private var §%7§:Number = 1.0;
      
      private var §;b§:Number = 1.0;
      
      private var §7!L§:Number = 1.0;
      
      private var §1b§:String = "LEFT";
      
      private var §"F§:String = "TOP";
      
      private var §4L§:Boolean = false;
      
      private var § !#§:Boolean = false;
      
      private var §5!q§:Boolean = false;
      
      private var §6F§:Boolean = false;
      
      private var § e§:Boolean = false;
      
      private var §'!!§:Boolean = false;
      
      private var §2v§:String = "NORMAL";
      
      private var §%z§:Number = 1.0;
      
      private var §2%§:Number = 1.0;
      
      private var §4F§:Number = 1.0;
      
      private var §"y§:Number = 1.0;
      
      private var §0!6§:Number = 1.0;
      
      private var §]I§:Number = 1.0;
      
      private var mX:Number = 0.0;
      
      private var mY:Number = 0.0;
      
      private var §&!^§:Number = 1.0;
      
      private var §7?§:Number = 1.0;
      
      public function §%§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§-!'§ = param1;
         this.§<!X§ = param2;
         this.mX = param1;
         this.mY = param2;
         this.§&!^§ = param3;
         this.§7?§ = param4;
         this.§=!M§ = param5;
         this.§%7§ = param6;
         this.§;b§ = param5;
         this.§7!L§ = param6;
         this.§]!s§(param7);
         this.§,!f§(param8);
         this.§9B§(param9);
         this.§ y§(param10);
         this.§@y§(param11);
         this.§;7§(param12);
         this.§2v§ = param12;
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
         this.§-!'§ = this.§;n§(param1,this.§;b§,this.§=!M§,this.§1b§,this.§4L§,this.§ !#§,this.§%z§,this.§4F§,this.§0!6§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§<!X§ = this.§;n§(param1,this.§7!L§,this.§%7§,this.§"F§,this.§5!q§,this.§6F§,this.§2%§,this.§"y§,this.§]I§);
      }
      
      public function get scaleX() : Number
      {
         return this.§&!^§ * this.§#f§;
      }
      
      public function get scaleY() : Number
      {
         return this.§7?§ * this.§2H§;
      }
      
      private function get §#f§() : Number
      {
         if(this.§4L§ || this.§ !#§)
         {
            return this.§%z§;
         }
         return 1;
      }
      
      private function get §2H§() : Number
      {
         if(this.§5!q§ || this.§6F§)
         {
            return this.§2%§;
         }
         return 1;
      }
      
      private function §]!s§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §"3§ || param1 == §"!;§)
            {
               this.§1b§ = param1;
            }
         }
      }
      
      private function §,!f§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §8R§ || param1 == §"!;§)
            {
               this.§"F§ = param1;
            }
         }
      }
      
      private function §9B§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§4L§ = true;
               this.§ !#§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§4L§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§ !#§ = true;
            }
         }
      }
      
      private function § y§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§5!q§ = true;
               this.§6F§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§5!q§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§6F§ = true;
            }
         }
      }
      
      private function §;7§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §3!!§)
            {
               this.§2v§ = §3!!§;
            }
            else if(param1.toUpperCase() == §switch§)
            {
               this.§2v§ = §switch§;
            }
         }
      }
      
      private function §@y§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§ e§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§ e§ = true;
               this.§'!!§ = true;
            }
         }
      }
      
      private function §?$§() : void
      {
         if(this.§ e§)
         {
            if(this.§%z§ < this.§2%§)
            {
               if(!this.§'!!§)
               {
                  this.§2%§ = this.§%z§;
               }
               else
               {
                  this.§%z§ = this.§2%§;
               }
            }
            else if(!this.§'!!§)
            {
               this.§%z§ = this.§2%§;
            }
            else
            {
               this.§2%§ = this.§%z§;
            }
         }
      }
      
      private function §+T§() : void
      {
         if(!this.§ !#§ && this.§%z§ > 1)
         {
            this.§%z§ = 1;
         }
         else if(this.§ !#§ && !this.§4L§ && this.§%z§ < 1)
         {
            this.§%z§ = 1;
         }
         if(!this.§6F§ && this.§2%§ > 1)
         {
            this.§2%§ = 1;
         }
         else if(this.§6F§ && !this.§5!q§ && this.§2%§ < 1)
         {
            this.§2%§ = 1;
         }
      }
      
      private function §"!g§() : void
      {
         if(this.§2v§ == §3!!§)
         {
            this.§%z§ = Math.sqrt(this.§%z§);
            this.§2%§ = Math.sqrt(this.§2%§);
         }
         else if(this.§2v§ == §switch§)
         {
            this.§%z§ *= this.§%z§;
            this.§2%§ *= this.§2%§;
         }
      }
      
      private function §;n§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §#!6§ || param4 == §"!u§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §"3§ || param4 == §8R§)
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
         else if(param4 == §"!;§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§ e§)
               {
                  if(!this.§'!!§)
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
      
      private function §3E§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §#!6§ || param4 == §"!u§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §"3§ || param4 == §8R§)
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
         else if(param4 == §"!;§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§ e§)
               {
                  if(!this.§'!!§)
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
      
      public function §^=§(param1:Number, param2:Number) : void
      {
         this.§;b§ = param1;
         this.§7!L§ = param2;
         this.§%z§ = param1 / this.§=!M§;
         this.§2%§ = param2 / this.§%7§;
         this.§4F§ = this.§%z§;
         this.§"y§ = this.§2%§;
         this.§?$§();
         this.§+T§();
         this.§0!6§ = this.§%z§;
         this.§]I§ = this.§2%§;
         this.§"!g§();
         this.mX = this.§3E§(this.§-!'§,param1,this.§=!M§,this.§1b§,this.§4L§,this.§ !#§,this.§%z§,this.§4F§,this.§0!6§);
         this.mY = this.§3E§(this.§<!X§,param2,this.§%7§,this.§"F§,this.§5!q§,this.§6F§,this.§2%§,this.§"y§,this.§]I§);
      }
   }
}
