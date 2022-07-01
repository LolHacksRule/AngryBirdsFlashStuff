package §<8§
{
   public class §-f§
   {
      
      private static const §9^§:String = "RIGHT";
      
      private static const §>0§:String = "LEFT";
      
      private static const §-P§:String = "TOP";
      
      private static const §2!j§:String = "BOTTOM";
      
      private static const §&!h§:String = "CENTER";
      
      private static const §0I§:String = "NORMAL";
      
      private static const §'c§:String = "SQRT";
      
      private static const §^!$§:String = "SQR";
       
      
      private var §5!3§:Number = 0.0;
      
      private var §4!M§:Number = 0.0;
      
      private var §2!b§:Number = 1.0;
      
      private var §4!k§:Number = 1.0;
      
      private var §0"3§:Number = 1.0;
      
      private var §-!,§:Number = 1.0;
      
      private var §6&§:String = "LEFT";
      
      private var §<!H§:String = "TOP";
      
      private var §0!4§:Boolean = false;
      
      private var §']§:Boolean = false;
      
      private var §@"§:Boolean = false;
      
      private var §=!7§:Boolean = false;
      
      private var §9d§:Boolean = false;
      
      private var §,"-§:Boolean = false;
      
      private var §'$§:String = "NORMAL";
      
      private var §4§:Number = 1.0;
      
      private var §#!§:Number = 1.0;
      
      private var §2!A§:Number = 1.0;
      
      private var §%!l§:Number = 1.0;
      
      private var §!!$§:Number = 1.0;
      
      private var §;!R§:Number = 1.0;
      
      private var mX:Number = 0.0;
      
      private var mY:Number = 0.0;
      
      private var §!"+§:Number = 1.0;
      
      private var §'!p§:Number = 1.0;
      
      public function §-f§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§5!3§ = param1;
         this.§4!M§ = param2;
         this.mX = param1;
         this.mY = param2;
         this.§2!b§ = param3;
         this.§4!k§ = param4;
         this.§0"3§ = param5;
         this.§-!,§ = param6;
         this.§!"+§ = param5;
         this.§'!p§ = param6;
         this.§ '§(param7);
         this.§&!R§(param8);
         this.§-i§(param9);
         this.§9!+§(param10);
         this.§5b§(param11);
         this.§<2§(param12);
         this.§'$§ = param12;
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
         this.§5!3§ = this.§^V§(param1,this.§!"+§,this.§0"3§,this.§6&§,this.§0!4§,this.§']§,this.§4§,this.§2!A§,this.§!!$§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§4!M§ = this.§^V§(param1,this.§'!p§,this.§-!,§,this.§<!H§,this.§@"§,this.§=!7§,this.§#!§,this.§%!l§,this.§;!R§);
      }
      
      public function get scaleX() : Number
      {
         return this.§2!b§ * this.§1x§;
      }
      
      public function get scaleY() : Number
      {
         return this.§4!k§ * this.§2i§;
      }
      
      private function get §1x§() : Number
      {
         if(this.§0!4§ || this.§']§)
         {
            return this.§4§;
         }
         return 1;
      }
      
      private function get §2i§() : Number
      {
         if(this.§@"§ || this.§=!7§)
         {
            return this.§#!§;
         }
         return 1;
      }
      
      private function § '§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §9^§ || param1 == §&!h§)
            {
               this.§6&§ = param1;
            }
         }
      }
      
      private function §&!R§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §2!j§ || param1 == §&!h§)
            {
               this.§<!H§ = param1;
            }
         }
      }
      
      private function §-i§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§0!4§ = true;
               this.§']§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§0!4§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§']§ = true;
            }
         }
      }
      
      private function §9!+§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§@"§ = true;
               this.§=!7§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§@"§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§=!7§ = true;
            }
         }
      }
      
      private function §<2§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §'c§)
            {
               this.§'$§ = §'c§;
            }
            else if(param1.toUpperCase() == §^!$§)
            {
               this.§'$§ = §^!$§;
            }
         }
      }
      
      private function §5b§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§9d§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§9d§ = true;
               this.§,"-§ = true;
            }
         }
      }
      
      private function §[!c§() : void
      {
         if(this.§9d§)
         {
            if(this.§4§ < this.§#!§)
            {
               if(!this.§,"-§)
               {
                  this.§#!§ = this.§4§;
               }
               else
               {
                  this.§4§ = this.§#!§;
               }
            }
            else if(!this.§,"-§)
            {
               this.§4§ = this.§#!§;
            }
            else
            {
               this.§#!§ = this.§4§;
            }
         }
      }
      
      private function §5"9§() : void
      {
         if(!this.§']§ && this.§4§ > 1)
         {
            this.§4§ = 1;
         }
         else if(!this.§0!4§ && this.§4§ < 1)
         {
            this.§4§ = 1;
         }
         if(!this.§=!7§ && this.§#!§ > 1)
         {
            this.§#!§ = 1;
         }
         else if(!this.§@"§ && this.§#!§ < 1)
         {
            this.§#!§ = 1;
         }
      }
      
      private function §in§() : void
      {
         if(this.§'$§ == §'c§)
         {
            this.§4§ = Math.sqrt(this.§4§);
            this.§#!§ = Math.sqrt(this.§#!§);
         }
         else if(this.§'$§ == §^!$§)
         {
            this.§4§ *= this.§4§;
            this.§#!§ *= this.§#!§;
         }
      }
      
      private function §^V§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §>0§ || param4 == §-P§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §9^§ || param4 == §2!j§)
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
         else if(param4 == §&!h§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§9d§)
               {
                  if(!this.§,"-§)
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
      
      private function §0g§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §>0§ || param4 == §-P§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §9^§ || param4 == §2!j§)
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
         else if(param4 == §&!h§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§9d§)
               {
                  if(!this.§,"-§)
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
      
      public function §]!K§(param1:Number, param2:Number) : void
      {
         this.§!"+§ = param1;
         this.§'!p§ = param2;
         this.§4§ = param1 / this.§0"3§;
         this.§#!§ = param2 / this.§-!,§;
         this.§2!A§ = this.§4§;
         this.§%!l§ = this.§#!§;
         this.§[!c§();
         this.§5"9§();
         this.§!!$§ = this.§4§;
         this.§;!R§ = this.§#!§;
         this.§in§();
         this.mX = this.§0g§(this.§5!3§,param1,this.§0"3§,this.§6&§,this.§0!4§,this.§']§,this.§4§,this.§2!A§,this.§!!$§);
         this.mY = this.§0g§(this.§4!M§,param2,this.§-!,§,this.§<!H§,this.§@"§,this.§=!7§,this.§#!§,this.§%!l§,this.§;!R§);
      }
   }
}
