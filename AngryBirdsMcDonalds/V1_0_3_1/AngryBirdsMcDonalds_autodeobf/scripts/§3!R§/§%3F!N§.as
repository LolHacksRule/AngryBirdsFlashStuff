package §3!R§
{
   public class §?!N§
   {
      
      private static const §[!b§:String = "RIGHT";
      
      private static const §7p§:String = "LEFT";
      
      private static const §1@§:String = "TOP";
      
      private static const §6+§:String = "BOTTOM";
      
      private static const §9!o§:String = "CENTER";
      
      private static const §[X§:String = "NORMAL";
      
      private static const §7!l§:String = "SQRT";
      
      private static const §2k§:String = "SQR";
       
      
      private var §'!6§:Number = 0.0;
      
      private var §!!V§:Number = 0.0;
      
      private var §;X§:Number = 1.0;
      
      private var §4I§:Number = 1.0;
      
      private var §2p§:Number = 1.0;
      
      private var §;!_§:Number = 1.0;
      
      private var §>D§:String = "LEFT";
      
      private var §5F§:String = "TOP";
      
      private var §[Y§:Boolean = false;
      
      private var §0!A§:Boolean = false;
      
      private var §90§:Boolean = false;
      
      private var §6!^§:Boolean = false;
      
      private var §+!4§:Boolean = false;
      
      private var §#e§:Boolean = false;
      
      private var §"!"§:String = "NORMAL";
      
      private var §^!^§:Number = 1.0;
      
      private var § !_§:Number = 1.0;
      
      private var §2z§:Number = 1.0;
      
      private var § !T§:Number = 1.0;
      
      private var §3B§:Number = 1.0;
      
      private var §>,§:Number = 1.0;
      
      private var § !^§:Number = 0.0;
      
      private var §0p§:Number = 0.0;
      
      private var §5!f§:Number = 1.0;
      
      private var §`§:Number = 1.0;
      
      public function §?!N§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§'!6§ = param1;
         this.§!!V§ = param2;
         this.§ !^§ = param1;
         this.§0p§ = param2;
         this.§;X§ = param3;
         this.§4I§ = param4;
         this.§2p§ = param5;
         this.§;!_§ = param6;
         this.§5!f§ = param5;
         this.§`§ = param6;
         this.§<p§(param7);
         this.§?!W§(param8);
         this.§0_§(param9);
         this.§2!,§(param10);
         this.§@R§(param11);
         this.§9!4§(param12);
         this.§"!"§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§ !^§;
      }
      
      public function get y() : Number
      {
         return this.§0p§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§'!6§ = this.§[k§(param1,this.§5!f§,this.§2p§,this.§>D§,this.§[Y§,this.§0!A§,this.§^!^§,this.§2z§,this.§3B§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§!!V§ = this.§[k§(param1,this.§`§,this.§;!_§,this.§5F§,this.§90§,this.§6!^§,this.§ !_§,this.§ !T§,this.§>,§);
      }
      
      public function get scaleX() : Number
      {
         return this.§;X§ * this.§9!l§;
      }
      
      public function get scaleY() : Number
      {
         return this.§4I§ * this.§!!6§;
      }
      
      private function get §9!l§() : Number
      {
         if(this.§[Y§ || this.§0!A§)
         {
            return this.§^!^§;
         }
         return 1;
      }
      
      private function get §!!6§() : Number
      {
         if(this.§90§ || this.§6!^§)
         {
            return this.§ !_§;
         }
         return 1;
      }
      
      private function §<p§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §[!b§ || param1 == §9!o§)
            {
               this.§>D§ = param1;
            }
         }
      }
      
      private function §?!W§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §6+§ || param1 == §9!o§)
            {
               this.§5F§ = param1;
            }
         }
      }
      
      private function §0_§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§[Y§ = true;
               this.§0!A§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§[Y§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§0!A§ = true;
            }
         }
      }
      
      private function §2!,§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§90§ = true;
               this.§6!^§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§90§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§6!^§ = true;
            }
         }
      }
      
      private function §9!4§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §7!l§)
            {
               this.§"!"§ = §7!l§;
            }
            else if(param1.toUpperCase() == §2k§)
            {
               this.§"!"§ = §2k§;
            }
         }
      }
      
      private function §@R§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§+!4§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§+!4§ = true;
               this.§#e§ = true;
            }
         }
      }
      
      private function §?!l§() : void
      {
         if(this.§+!4§)
         {
            if(this.§^!^§ < this.§ !_§)
            {
               if(!this.§#e§)
               {
                  this.§ !_§ = this.§^!^§;
               }
               else
               {
                  this.§^!^§ = this.§ !_§;
               }
            }
            else if(!this.§#e§)
            {
               this.§^!^§ = this.§ !_§;
            }
            else
            {
               this.§ !_§ = this.§^!^§;
            }
         }
      }
      
      private function §[!f§() : void
      {
         if(!this.§0!A§ && this.§^!^§ > 1)
         {
            this.§^!^§ = 1;
         }
         else if(!this.§[Y§ && this.§^!^§ < 1)
         {
            this.§^!^§ = 1;
         }
         if(!this.§6!^§ && this.§ !_§ > 1)
         {
            this.§ !_§ = 1;
         }
         else if(!this.§90§ && this.§ !_§ < 1)
         {
            this.§ !_§ = 1;
         }
      }
      
      private function §7N§() : void
      {
         if(this.§"!"§ == §7!l§)
         {
            this.§^!^§ = Math.sqrt(this.§^!^§);
            this.§ !_§ = Math.sqrt(this.§ !_§);
         }
         else if(this.§"!"§ == §2k§)
         {
            this.§^!^§ *= this.§^!^§;
            this.§ !_§ *= this.§ !_§;
         }
      }
      
      private function §[k§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §7p§ || param4 == §1@§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §[!b§ || param4 == §6+§)
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
         else if(param4 == §9!o§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§+!4§)
               {
                  if(!this.§#e§)
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
      
      private function §`f§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §7p§ || param4 == §1@§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §[!b§ || param4 == §6+§)
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
         else if(param4 == §9!o§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§+!4§)
               {
                  if(!this.§#e§)
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
      
      public function §=t§(param1:Number, param2:Number) : void
      {
         this.§5!f§ = param1;
         this.§`§ = param2;
         this.§^!^§ = param1 / this.§2p§;
         this.§ !_§ = param2 / this.§;!_§;
         this.§2z§ = this.§^!^§;
         this.§ !T§ = this.§ !_§;
         this.§?!l§();
         this.§[!f§();
         this.§3B§ = this.§^!^§;
         this.§>,§ = this.§ !_§;
         this.§7N§();
         this.§ !^§ = this.§`f§(this.§'!6§,param1,this.§2p§,this.§>D§,this.§[Y§,this.§0!A§,this.§^!^§,this.§2z§,this.§3B§);
         this.§0p§ = this.§`f§(this.§!!V§,param2,this.§;!_§,this.§5F§,this.§90§,this.§6!^§,this.§ !_§,this.§ !T§,this.§>,§);
      }
   }
}
