package §in§
{
   public class § !;§
   {
      
      private static const §2!=§:String = "RIGHT";
      
      private static const §`Y§:String = "LEFT";
      
      private static const § !F§:String = "TOP";
      
      private static const §],§:String = "BOTTOM";
      
      private static const §^g§:String = "CENTER";
      
      private static const §6I§:String = "NORMAL";
      
      private static const §4V§:String = "SQRT";
      
      private static const §4&§:String = "SQR";
       
      
      private var §2T§:Number = 0.0;
      
      private var §8g§:Number = 0.0;
      
      private var §]]§:Number = 1.0;
      
      private var §,`§:Number = 1.0;
      
      private var §!!1§:Number = 1.0;
      
      private var §5#§:Number = 1.0;
      
      private var §6>§:String = "LEFT";
      
      private var §",§:String = "TOP";
      
      private var §13§:Boolean = false;
      
      private var §6E§:Boolean = false;
      
      private var §2!'§:Boolean = false;
      
      private var §5A§:Boolean = false;
      
      private var §`!&§:Boolean = false;
      
      private var §1U§:Boolean = false;
      
      private var §>!%§:String = "NORMAL";
      
      private var §,e§:Number = 1.0;
      
      private var §0u§:Number = 1.0;
      
      private var §&!B§:Number = 1.0;
      
      private var §4h§:Number = 1.0;
      
      private var §,!+§:Number = 1.0;
      
      private var §[M§:Number = 1.0;
      
      private var §2!2§:Number = 0.0;
      
      private var §9!3§:Number = 0.0;
      
      private var § !&§:Number = 1.0;
      
      private var §7k§:Number = 1.0;
      
      public function § !;§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§2T§ = param1;
         this.§8g§ = param2;
         this.§2!2§ = param1;
         this.§9!3§ = param2;
         this.§ !&§ = param3;
         this.§7k§ = param4;
         this.§]]§ = param5;
         this.§,`§ = param6;
         this.§!!1§ = param5;
         this.§5#§ = param6;
         this.§9!9§(param7);
         this.§+!@§(param8);
         this.§-g§(param9);
         this.§?!-§(param10);
         this.§>1§(param11);
         this.§4d§(param12);
         this.§>!%§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§2!2§;
      }
      
      public function get y() : Number
      {
         return this.§9!3§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§2T§ = this.§^%§(param1,this.§!!1§,this.§]]§,this.§6>§,this.§13§,this.§6E§,this.§,e§,this.§&!B§,this.§,!+§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§8g§ = this.§^%§(param1,this.§5#§,this.§,`§,this.§",§,this.§2!'§,this.§5A§,this.§0u§,this.§4h§,this.§[M§);
      }
      
      public function get scaleX() : Number
      {
         return this.§ !&§ * this.§%!6§;
      }
      
      public function get scaleY() : Number
      {
         return this.§7k§ * this.§?m§;
      }
      
      private function get §%!6§() : Number
      {
         if(this.§13§ || this.§6E§)
         {
            return this.§,e§;
         }
         return 1;
      }
      
      private function get §?m§() : Number
      {
         if(this.§2!'§ || this.§5A§)
         {
            return this.§0u§;
         }
         return 1;
      }
      
      private function §9!9§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §2!=§ || param1 == §^g§)
            {
               this.§6>§ = param1;
            }
         }
      }
      
      private function §+!@§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §],§ || param1 == §^g§)
            {
               this.§",§ = param1;
            }
         }
      }
      
      private function §-g§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§13§ = true;
               this.§6E§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§13§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§6E§ = true;
            }
         }
      }
      
      private function §?!-§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§2!'§ = true;
               this.§5A§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§2!'§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§5A§ = true;
            }
         }
      }
      
      private function §4d§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §4V§)
            {
               this.§>!%§ = §4V§;
            }
            else if(param1.toUpperCase() == §4&§)
            {
               this.§>!%§ = §4&§;
            }
         }
      }
      
      private function §>1§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§`!&§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§`!&§ = true;
               this.§1U§ = true;
            }
         }
      }
      
      private function §#[§() : void
      {
         if(this.§`!&§)
         {
            if(this.§,e§ < this.§0u§)
            {
               if(!this.§1U§)
               {
                  this.§0u§ = this.§,e§;
               }
               else
               {
                  this.§,e§ = this.§0u§;
               }
            }
            else if(!this.§1U§)
            {
               this.§,e§ = this.§0u§;
            }
            else
            {
               this.§0u§ = this.§,e§;
            }
         }
      }
      
      private function §1W§() : void
      {
         if(!this.§6E§ && this.§,e§ > 1)
         {
            this.§,e§ = 1;
         }
         else if(this.§6E§ && !this.§13§ && this.§,e§ < 1)
         {
            this.§,e§ = 1;
         }
         if(!this.§5A§ && this.§0u§ > 1)
         {
            this.§0u§ = 1;
         }
         else if(this.§5A§ && !this.§2!'§ && this.§0u§ < 1)
         {
            this.§0u§ = 1;
         }
      }
      
      private function §=F§() : void
      {
         if(this.§>!%§ == §4V§)
         {
            this.§,e§ = Math.sqrt(this.§,e§);
            this.§0u§ = Math.sqrt(this.§0u§);
         }
         else if(this.§>!%§ == §4&§)
         {
            this.§,e§ *= this.§,e§;
            this.§0u§ *= this.§0u§;
         }
      }
      
      private function §^%§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §`Y§ || param4 == § !F§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §2!=§ || param4 == §],§)
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
         else if(param4 == §^g§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§`!&§)
               {
                  if(!this.§1U§)
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
      
      private function §6Y§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §`Y§ || param4 == § !F§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §2!=§ || param4 == §],§)
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
         else if(param4 == §^g§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§`!&§)
               {
                  if(!this.§1U§)
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
      
      public function §5w§(param1:Number, param2:Number) : void
      {
         this.§!!1§ = param1;
         this.§5#§ = param2;
         this.§,e§ = param1 / this.§]]§;
         this.§0u§ = param2 / this.§,`§;
         this.§&!B§ = this.§,e§;
         this.§4h§ = this.§0u§;
         this.§#[§();
         this.§1W§();
         this.§,!+§ = this.§,e§;
         this.§[M§ = this.§0u§;
         this.§=F§();
         this.§2!2§ = this.§6Y§(this.§2T§,param1,this.§]]§,this.§6>§,this.§13§,this.§6E§,this.§,e§,this.§&!B§,this.§,!+§);
         this.§9!3§ = this.§6Y§(this.§8g§,param2,this.§,`§,this.§",§,this.§2!'§,this.§5A§,this.§0u§,this.§4h§,this.§[M§);
      }
   }
}
