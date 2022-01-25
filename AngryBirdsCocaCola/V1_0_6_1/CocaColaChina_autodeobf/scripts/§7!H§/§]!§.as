package §7!H§
{
   public class §]!§
   {
      
      private static const §?!U§:String = "RIGHT";
      
      private static const §5v§:String = "LEFT";
      
      private static const get:String = "TOP";
      
      private static const §"!c§:String = "BOTTOM";
      
      private static const §8p§:String = "CENTER";
      
      private static const §3M§:String = "NORMAL";
      
      private static const §2m§:String = "SQRT";
      
      private static const §@f§:String = "SQR";
       
      
      private var §8!G§:Number = 0.0;
      
      private var §1!"§:Number = 0.0;
      
      private var §8h§:Number = 1.0;
      
      private var §6R§:Number = 1.0;
      
      private var §+!D§:Number = 1.0;
      
      private var §5!P§:Number = 1.0;
      
      private var §[3§:String = "LEFT";
      
      private var §6P§:String = "TOP";
      
      private var §=F§:Boolean = false;
      
      private var §7J§:Boolean = false;
      
      private var §#S§:Boolean = false;
      
      private var §<-§:Boolean = false;
      
      private var §2Z§:Boolean = false;
      
      private var §7!9§:Boolean = false;
      
      private var static:String = "NORMAL";
      
      private var §-E§:Number = 1.0;
      
      private var §%!a§:Number = 1.0;
      
      private var §;N§:Number = 1.0;
      
      private var §'!D§:Number = 1.0;
      
      private var §`!a§:Number = 1.0;
      
      private var §1!,§:Number = 1.0;
      
      private var §;i§:Number = 0.0;
      
      private var §%i§:Number = 0.0;
      
      private var §'!3§:Number = 1.0;
      
      private var §"n§:Number = 1.0;
      
      public function §]!§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§8!G§ = param1;
         this.§1!"§ = param2;
         this.§;i§ = param1;
         this.§%i§ = param2;
         this.§'!3§ = param3;
         this.§"n§ = param4;
         this.§8h§ = param5;
         this.§6R§ = param6;
         this.§+!D§ = param5;
         this.§5!P§ = param6;
         this.§5a§(param7);
         this.§#R§(param8);
         this.§<a§(param9);
         this.§^F§(param10);
         this.§+;§(param11);
         this.§?!_§(param12);
         this.static = param12;
      }
      
      public function get x() : Number
      {
         return this.§;i§;
      }
      
      public function get y() : Number
      {
         return this.§%i§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§8!G§ = this.§7w§(param1,this.§+!D§,this.§8h§,this.§[3§,this.§=F§,this.§7J§,this.§-E§,this.§;N§,this.§`!a§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§1!"§ = this.§7w§(param1,this.§5!P§,this.§6R§,this.§6P§,this.§#S§,this.§<-§,this.§%!a§,this.§'!D§,this.§1!,§);
      }
      
      public function get scaleX() : Number
      {
         return this.§'!3§ * this.§6!&§;
      }
      
      public function get scaleY() : Number
      {
         return this.§"n§ * this.§1U§;
      }
      
      private function get §6!&§() : Number
      {
         if(this.§=F§ || this.§7J§)
         {
            return this.§-E§;
         }
         return 1;
      }
      
      private function get §1U§() : Number
      {
         if(this.§#S§ || this.§<-§)
         {
            return this.§%!a§;
         }
         return 1;
      }
      
      private function §5a§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §?!U§ || param1 == §8p§)
            {
               this.§[3§ = param1;
            }
         }
      }
      
      private function §#R§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §"!c§ || param1 == §8p§)
            {
               this.§6P§ = param1;
            }
         }
      }
      
      private function §<a§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§=F§ = true;
               this.§7J§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§=F§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§7J§ = true;
            }
         }
      }
      
      private function §^F§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§#S§ = true;
               this.§<-§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§#S§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§<-§ = true;
            }
         }
      }
      
      private function §?!_§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §2m§)
            {
               this.static = §2m§;
            }
            else if(param1.toUpperCase() == §@f§)
            {
               this.static = §@f§;
            }
         }
      }
      
      private function §+;§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§2Z§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§2Z§ = true;
               this.§7!9§ = true;
            }
         }
      }
      
      private function §5[§() : void
      {
         if(this.§2Z§)
         {
            if(this.§-E§ < this.§%!a§)
            {
               if(!this.§7!9§)
               {
                  this.§%!a§ = this.§-E§;
               }
               else
               {
                  this.§-E§ = this.§%!a§;
               }
            }
            else if(!this.§7!9§)
            {
               this.§-E§ = this.§%!a§;
            }
            else
            {
               this.§%!a§ = this.§-E§;
            }
         }
      }
      
      private function §!!W§() : void
      {
         if(!this.§7J§ && this.§-E§ > 1)
         {
            this.§-E§ = 1;
         }
         else if(this.§7J§ && !this.§=F§ && this.§-E§ < 1)
         {
            this.§-E§ = 1;
         }
         if(!this.§<-§ && this.§%!a§ > 1)
         {
            this.§%!a§ = 1;
         }
         else if(this.§<-§ && !this.§#S§ && this.§%!a§ < 1)
         {
            this.§%!a§ = 1;
         }
      }
      
      private function §,S§() : void
      {
         if(this.static == §2m§)
         {
            this.§-E§ = Math.sqrt(this.§-E§);
            this.§%!a§ = Math.sqrt(this.§%!a§);
         }
         else if(this.static == §@f§)
         {
            this.§-E§ *= this.§-E§;
            this.§%!a§ *= this.§%!a§;
         }
      }
      
      private function §7w§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §5v§ || param4 == get)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §?!U§ || param4 == §"!c§)
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
         else if(param4 == §8p§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§2Z§)
               {
                  if(!this.§7!9§)
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
      
      private function §`M§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §5v§ || param4 == get)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §?!U§ || param4 == §"!c§)
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
         else if(param4 == §8p§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§2Z§)
               {
                  if(!this.§7!9§)
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
      
      public function § x§(param1:Number, param2:Number) : void
      {
         this.§+!D§ = param1;
         this.§5!P§ = param2;
         this.§-E§ = param1 / this.§8h§;
         this.§%!a§ = param2 / this.§6R§;
         this.§;N§ = this.§-E§;
         this.§'!D§ = this.§%!a§;
         this.§5[§();
         this.§!!W§();
         this.§`!a§ = this.§-E§;
         this.§1!,§ = this.§%!a§;
         this.§,S§();
         this.§;i§ = this.§`M§(this.§8!G§,param1,this.§8h§,this.§[3§,this.§=F§,this.§7J§,this.§-E§,this.§;N§,this.§`!a§);
         this.§%i§ = this.§`M§(this.§1!"§,param2,this.§6R§,this.§6P§,this.§#S§,this.§<-§,this.§%!a§,this.§'!D§,this.§1!,§);
      }
   }
}
