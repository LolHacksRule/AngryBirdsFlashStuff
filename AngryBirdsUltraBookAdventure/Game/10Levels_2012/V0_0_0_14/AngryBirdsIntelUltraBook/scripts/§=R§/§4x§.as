package §=R§
{
   public class §4x§
   {
      
      private static const §`8§:String = "RIGHT";
      
      private static const §;!r§:String = "LEFT";
      
      private static const §`=§:String = "TOP";
      
      private static const §%P§:String = "BOTTOM";
      
      private static const §,N§:String = "CENTER";
      
      private static const §>!a§:String = "NORMAL";
      
      private static const §>x§:String = "SQRT";
      
      private static const §5!W§:String = "SQR";
       
      
      private var §&!s§:Number = 0.0;
      
      private var §,a§:Number = 0.0;
      
      private var §%W§:Number = 1.0;
      
      private var §@C§:Number = 1.0;
      
      private var §1z§:Number = 1.0;
      
      private var §3C§:Number = 1.0;
      
      private var §2!5§:String = "LEFT";
      
      private var §<!"§:String = "TOP";
      
      private var §+!x§:Boolean = false;
      
      private var §<!?§:Boolean = false;
      
      private var §;S§:Boolean = false;
      
      private var §"!b§:Boolean = false;
      
      private var §;o§:Boolean = false;
      
      private var §>!q§:Boolean = false;
      
      private var §'`§:String = "NORMAL";
      
      private var §^!l§:Number = 1.0;
      
      private var §+^§:Number = 1.0;
      
      private var §-!b§:Number = 1.0;
      
      private var §`!"§:Number = 1.0;
      
      private var §-S§:Number = 1.0;
      
      private var §-P§:Number = 1.0;
      
      private var §;!@§:Number = 0.0;
      
      private var §3L§:Number = 0.0;
      
      private var §9P§:Number = 1.0;
      
      private var §;!x§:Number = 1.0;
      
      public function §4x§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§&!s§ = param1;
         this.§,a§ = param2;
         this.§;!@§ = param1;
         this.§3L§ = param2;
         this.§9P§ = param3;
         this.§;!x§ = param4;
         this.§%W§ = param5;
         this.§@C§ = param6;
         this.§1z§ = param5;
         this.§3C§ = param6;
         this.§%I§(param7);
         this.§0!4§(param8);
         this.§=!l§(param9);
         this.§-!S§(param10);
         this.§@!<§(param11);
         this.§!r§(param12);
         this.§'`§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§;!@§;
      }
      
      public function get y() : Number
      {
         return this.§3L§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§&!s§ = this.§=4§(param1,this.§1z§,this.§%W§,this.§2!5§,this.§+!x§,this.§<!?§,this.§^!l§,this.§-!b§,this.§-S§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§,a§ = this.§=4§(param1,this.§3C§,this.§@C§,this.§<!"§,this.§;S§,this.§"!b§,this.§+^§,this.§`!"§,this.§-P§);
      }
      
      public function get scaleX() : Number
      {
         return this.§9P§ * this.§!!l§;
      }
      
      public function get scaleY() : Number
      {
         return this.§;!x§ * this.§]!;§;
      }
      
      private function get §!!l§() : Number
      {
         if(this.§+!x§ || this.§<!?§)
         {
            return this.§^!l§;
         }
         return 1;
      }
      
      private function get §]!;§() : Number
      {
         if(this.§;S§ || this.§"!b§)
         {
            return this.§+^§;
         }
         return 1;
      }
      
      private function §%I§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §`8§ || param1 == §,N§)
            {
               this.§2!5§ = param1;
            }
         }
      }
      
      private function §0!4§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §%P§ || param1 == §,N§)
            {
               this.§<!"§ = param1;
            }
         }
      }
      
      private function §=!l§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§+!x§ = true;
               this.§<!?§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§+!x§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§<!?§ = true;
            }
         }
      }
      
      private function §-!S§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§;S§ = true;
               this.§"!b§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§;S§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§"!b§ = true;
            }
         }
      }
      
      private function §!r§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §>x§)
            {
               this.§'`§ = §>x§;
            }
            else if(param1.toUpperCase() == §5!W§)
            {
               this.§'`§ = §5!W§;
            }
         }
      }
      
      private function §@!<§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§;o§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§;o§ = true;
               this.§>!q§ = true;
            }
         }
      }
      
      private function §4N§() : void
      {
         if(this.§;o§)
         {
            if(this.§^!l§ < this.§+^§)
            {
               if(!this.§>!q§)
               {
                  this.§+^§ = this.§^!l§;
               }
               else
               {
                  this.§^!l§ = this.§+^§;
               }
            }
            else if(!this.§>!q§)
            {
               this.§^!l§ = this.§+^§;
            }
            else
            {
               this.§+^§ = this.§^!l§;
            }
         }
      }
      
      private function §9z§() : void
      {
         if(!this.§<!?§ && this.§^!l§ > 1)
         {
            this.§^!l§ = 1;
         }
         else if(this.§<!?§ && !this.§+!x§ && this.§^!l§ < 1)
         {
            this.§^!l§ = 1;
         }
         if(!this.§"!b§ && this.§+^§ > 1)
         {
            this.§+^§ = 1;
         }
         else if(this.§"!b§ && !this.§;S§ && this.§+^§ < 1)
         {
            this.§+^§ = 1;
         }
      }
      
      private function §7!§() : void
      {
         if(this.§'`§ == §>x§)
         {
            this.§^!l§ = Math.sqrt(this.§^!l§);
            this.§+^§ = Math.sqrt(this.§+^§);
         }
         else if(this.§'`§ == §5!W§)
         {
            this.§^!l§ *= this.§^!l§;
            this.§+^§ *= this.§+^§;
         }
      }
      
      private function §=4§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §;!r§ || param4 == §`=§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §`8§ || param4 == §%P§)
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
         else if(param4 == §,N§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§;o§)
               {
                  if(!this.§>!q§)
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
      
      private function §=K§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §;!r§ || param4 == §`=§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §`8§ || param4 == §%P§)
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
         else if(param4 == §,N§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§;o§)
               {
                  if(!this.§>!q§)
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
      
      public function §4^§(param1:Number, param2:Number) : void
      {
         this.§1z§ = param1;
         this.§3C§ = param2;
         this.§^!l§ = param1 / this.§%W§;
         this.§+^§ = param2 / this.§@C§;
         this.§-!b§ = this.§^!l§;
         this.§`!"§ = this.§+^§;
         this.§4N§();
         this.§9z§();
         this.§-S§ = this.§^!l§;
         this.§-P§ = this.§+^§;
         this.§7!§();
         this.§;!@§ = this.§=K§(this.§&!s§,param1,this.§%W§,this.§2!5§,this.§+!x§,this.§<!?§,this.§^!l§,this.§-!b§,this.§-S§);
         this.§3L§ = this.§=K§(this.§,a§,param2,this.§@C§,this.§<!"§,this.§;S§,this.§"!b§,this.§+^§,this.§`!"§,this.§-P§);
      }
   }
}
