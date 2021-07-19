package §,L§
{
   public class §3!K§
   {
      
      private static const §+!3§:String = "RIGHT";
      
      private static const §7U§:String = "LEFT";
      
      private static const §>!^§:String = "TOP";
      
      private static const §5!b§:String = "BOTTOM";
      
      private static const §]`§:String = "CENTER";
      
      private static const §=!0§:String = "NORMAL";
      
      private static const §4M§:String = "SQRT";
      
      private static const §5!w§:String = "SQR";
      
      private static const §;I§:String = "NORMAL_SQRT";
       
      
      private var §8!j§:Number = 0.0;
      
      private var §2+§:Number = 0.0;
      
      private var §"w§:Number = 1.0;
      
      private var §8W§:Number = 1.0;
      
      private var §?!9§:Number = 1.0;
      
      private var §,!i§:Number = 1.0;
      
      private var §!!_§:String = "LEFT";
      
      private var §,"#§:String = "TOP";
      
      private var §@!$§:Boolean = false;
      
      private var §4!u§:Boolean = false;
      
      private var §&!>§:Boolean = false;
      
      private var §;!C§:Boolean = false;
      
      private var §&7§:Boolean = false;
      
      private var §3@§:Boolean = false;
      
      private var §=!a§:Boolean = false;
      
      private var §^!g§:String = "NORMAL";
      
      private var §%!>§:Number = 1.0;
      
      private var §^x§:Number = 1.0;
      
      private var §=!A§:Number = 1.0;
      
      private var §2=§:Number = 1.0;
      
      private var §"!C§:Number = 1.0;
      
      private var §>!6§:Number = 1.0;
      
      private var §%!3§:Number = 0.0;
      
      private var §?!e§:Number = 0.0;
      
      private var §+q§:Number = 1.0;
      
      private var §;>§:Number = 1.0;
      
      public function §3!K§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§8!j§ = param1;
         this.§2+§ = param2;
         this.§%!3§ = param1;
         this.§?!e§ = param2;
         this.§"w§ = param3;
         this.§8W§ = param4;
         this.§?!9§ = param5;
         this.§,!i§ = param6;
         this.§+q§ = param5;
         this.§;>§ = param6;
         this.§;!f§(param7);
         this.§9!t§(param8);
         this.§ &§(param9);
         this.§ !^§(param10);
         this.§0H§(param11);
         this.§ !`§(param12);
         this.§^!g§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§%!3§;
      }
      
      public function get y() : Number
      {
         return this.§?!e§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§8!j§ = this.§@H§(param1,this.§+q§,this.§?!9§,this.§!!_§,this.§@!$§,this.§4!u§,this.§%!>§,this.§=!A§,this.§"!C§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§2+§ = this.§@H§(param1,this.§;>§,this.§,!i§,this.§,"#§,this.§&!>§,this.§;!C§,this.§^x§,this.§2=§,this.§>!6§);
      }
      
      public function get scaleX() : Number
      {
         return this.§"w§ * this.§"!4§;
      }
      
      public function get scaleY() : Number
      {
         return this.§8W§ * this.§;b§;
      }
      
      private function get §"!4§() : Number
      {
         if(this.§@!$§ || this.§4!u§)
         {
            return this.§%!>§;
         }
         return 1;
      }
      
      private function get §;b§() : Number
      {
         if(this.§&!>§ || this.§;!C§)
         {
            return this.§^x§;
         }
         return 1;
      }
      
      private function §;!f§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §+!3§ || param1 == §]`§)
            {
               this.§!!_§ = param1;
            }
         }
      }
      
      private function §9!t§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §5!b§ || param1 == §]`§)
            {
               this.§,"#§ = param1;
            }
         }
      }
      
      private function § &§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§@!$§ = true;
               this.§4!u§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§@!$§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§4!u§ = true;
            }
         }
      }
      
      private function § !^§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§&!>§ = true;
               this.§;!C§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§&!>§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§;!C§ = true;
            }
         }
      }
      
      private function § !`§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §4M§)
            {
               this.§^!g§ = §4M§;
            }
            else if(param1.toUpperCase() == §5!w§)
            {
               this.§^!g§ = §5!w§;
            }
            else if(param1.toUpperCase() == §;I§)
            {
               this.§^!g§ = §;I§;
            }
         }
      }
      
      private function §0H§(param1:String) : void
      {
         if(param1)
         {
            switch(param1.toUpperCase())
            {
               case "TRUE":
                  this.§&7§ = true;
                  break;
               case "UP":
                  this.§&7§ = true;
                  this.§3@§ = true;
                  break;
               case "UPDOWN":
                  this.§&7§ = true;
                  this.§=!a§ = true;
            }
         }
      }
      
      private function §=;§() : void
      {
         if(this.§&7§)
         {
            if(this.§%!>§ < this.§^x§)
            {
               if(!this.§3@§)
               {
                  this.§^x§ = this.§%!>§;
               }
               else
               {
                  this.§%!>§ = this.§^x§;
               }
            }
            else if(!this.§3@§)
            {
               this.§%!>§ = this.§^x§;
            }
            else
            {
               this.§^x§ = this.§%!>§;
            }
         }
      }
      
      private function §%a§() : void
      {
         if(!this.§4!u§ && this.§%!>§ > 1)
         {
            this.§%!>§ = 1;
         }
         else if(!this.§@!$§ && this.§%!>§ < 1)
         {
            this.§%!>§ = 1;
         }
         if(!this.§;!C§ && this.§^x§ > 1)
         {
            this.§^x§ = 1;
         }
         else if(!this.§&!>§ && this.§^x§ < 1)
         {
            this.§^x§ = 1;
         }
      }
      
      private function §<!`§() : void
      {
         if(this.§^!g§ == §4M§)
         {
            this.§%!>§ = Math.sqrt(this.§%!>§);
            this.§^x§ = Math.sqrt(this.§^x§);
         }
         else if(this.§^!g§ == §5!w§)
         {
            this.§%!>§ *= this.§%!>§;
            this.§^x§ *= this.§^x§;
         }
         else if(this.§^!g§ == §;I§)
         {
            if(this.§%!>§ > 1)
            {
               this.§%!>§ = Math.sqrt(this.§%!>§);
            }
            if(this.§^x§ > 1)
            {
               this.§^x§ = Math.sqrt(this.§^x§);
            }
         }
      }
      
      private function §@H§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §7U§ || param4 == §>!^§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §+!3§ || param4 == §5!b§)
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
         else if(param4 == §]`§)
         {
            if(param5 || param6)
            {
               _loc10_ = (param1 - param2 / 2) / param7 + param3 / 2;
            }
            else
            {
               _loc10_ = param1 - param2 / 2 + param3 / 2;
            }
         }
         return _loc10_;
      }
      
      private function §]+§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number) : Number
      {
         var _loc8_:Number = param1;
         if(param4 == §7U§ || param4 == §>!^§)
         {
            if(param5 || param6)
            {
               _loc8_ = param1 * param7;
            }
         }
         else if(param4 == §+!3§ || param4 == §5!b§)
         {
            if(param5 || param6)
            {
               _loc8_ = param2 - (param3 - param1) * param7;
            }
            else
            {
               _loc8_ = param2 - (param3 - param1);
            }
         }
         else if(param4 == §]`§)
         {
            if(param5 || param6)
            {
               _loc8_ = param2 / 2 + (param1 - param3 / 2) * param7;
            }
            else
            {
               _loc8_ = param2 / 2 + (param1 - param3 / 2);
            }
         }
         return _loc8_;
      }
      
      public function §3!l§(param1:Number, param2:Number) : void
      {
         this.§+q§ = param1;
         this.§;>§ = param2;
         this.§%!>§ = param1 / this.§?!9§;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         if(this.§=!a§)
         {
            _loc3_ = this.§%!>§ = param2 / this.§,!i§;
            _loc4_ = this.§^x§ = this.§%!>§;
         }
         else
         {
            this.§%!>§ = param1 / this.§?!9§;
            this.§^x§ = param2 / this.§,!i§;
         }
         this.§=!A§ = this.§%!>§;
         this.§2=§ = this.§^x§;
         this.§=;§();
         this.§%a§();
         this.§"!C§ = this.§%!>§;
         this.§>!6§ = this.§^x§;
         if(this.§=!a§)
         {
            this.§%!>§ = param1 / this.§?!9§;
            this.§^x§ = param2 / this.§,!i§;
         }
         this.§<!`§();
         this.§%!3§ = this.§]+§(this.§8!j§,param1,this.§?!9§,this.§!!_§,this.§@!$§,this.§4!u§,this.§%!>§);
         this.§?!e§ = this.§]+§(this.§2+§,param2,this.§,!i§,this.§,"#§,this.§&!>§,this.§;!C§,this.§^x§);
         if(this.§=!a§)
         {
            this.§%!>§ = _loc3_;
            this.§^x§ = _loc4_;
         }
      }
   }
}
