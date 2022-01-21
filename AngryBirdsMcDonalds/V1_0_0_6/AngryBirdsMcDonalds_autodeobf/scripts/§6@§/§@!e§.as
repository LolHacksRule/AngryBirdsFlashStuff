package §6@§
{
   public class §@!e§
   {
      
      private static const §9!T§:String = "RIGHT";
      
      private static const §;!<§:String = "LEFT";
      
      private static const §1!=§:String = "TOP";
      
      private static const §5p§:String = "BOTTOM";
      
      private static const §1!S§:String = "CENTER";
      
      private static const §]!%§:String = "NORMAL";
      
      private static const §]!U§:String = "SQRT";
      
      private static const §!d§:String = "SQR";
       
      
      private var §>3§:Number = 0.0;
      
      private var §1![§:Number = 0.0;
      
      private var §5&§:Number = 1.0;
      
      private var §,9§:Number = 1.0;
      
      private var §&K§:Number = 1.0;
      
      private var §6!7§:Number = 1.0;
      
      private var §0c§:String = "LEFT";
      
      private var §'!9§:String = "TOP";
      
      private var §=r§:Boolean = false;
      
      private var §<x§:Boolean = false;
      
      private var §4!W§:Boolean = false;
      
      private var §]H§:Boolean = false;
      
      private var §4!3§:Boolean = false;
      
      private var §6!2§:Boolean = false;
      
      private var §4!d§:String = "NORMAL";
      
      private var §"!J§:Number = 1.0;
      
      private var §8!d§:Number = 1.0;
      
      private var §"!a§:Number = 1.0;
      
      private var §`!Y§:Number = 1.0;
      
      private var §-!h§:Number = 1.0;
      
      private var §3!V§:Number = 1.0;
      
      private var §+p§:Number = 0.0;
      
      private var §,,§:Number = 0.0;
      
      private var §>+§:Number = 1.0;
      
      private var §"4§:Number = 1.0;
      
      public function §@!e§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§>3§ = param1;
         this.§1![§ = param2;
         this.§+p§ = param1;
         this.§,,§ = param2;
         this.§5&§ = param3;
         this.§,9§ = param4;
         this.§&K§ = param5;
         this.§6!7§ = param6;
         this.§>+§ = param5;
         this.§"4§ = param6;
         this.§9E§(param7);
         this.§>!1§(param8);
         this.§=! §(param9);
         this.§^!g§(param10);
         this.§%o§(param11);
         this.§^,§(param12);
         this.§4!d§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§+p§;
      }
      
      public function get y() : Number
      {
         return this.§,,§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§>3§ = this.§^f§(param1,this.§>+§,this.§&K§,this.§0c§,this.§=r§,this.§<x§,this.§"!J§,this.§"!a§,this.§-!h§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§1![§ = this.§^f§(param1,this.§"4§,this.§6!7§,this.§'!9§,this.§4!W§,this.§]H§,this.§8!d§,this.§`!Y§,this.§3!V§);
      }
      
      public function get scaleX() : Number
      {
         return this.§5&§ * this.§%!M§;
      }
      
      public function get scaleY() : Number
      {
         return this.§,9§ * this.§#u§;
      }
      
      private function get §%!M§() : Number
      {
         if(this.§=r§ || this.§<x§)
         {
            return this.§"!J§;
         }
         return 1;
      }
      
      private function get §#u§() : Number
      {
         if(this.§4!W§ || this.§]H§)
         {
            return this.§8!d§;
         }
         return 1;
      }
      
      private function §9E§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §9!T§ || param1 == §1!S§)
            {
               this.§0c§ = param1;
            }
         }
      }
      
      private function §>!1§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §5p§ || param1 == §1!S§)
            {
               this.§'!9§ = param1;
            }
         }
      }
      
      private function §=! §(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§=r§ = true;
               this.§<x§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§=r§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§<x§ = true;
            }
         }
      }
      
      private function §^!g§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§4!W§ = true;
               this.§]H§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§4!W§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§]H§ = true;
            }
         }
      }
      
      private function §^,§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §]!U§)
            {
               this.§4!d§ = §]!U§;
            }
            else if(param1.toUpperCase() == §!d§)
            {
               this.§4!d§ = §!d§;
            }
         }
      }
      
      private function §%o§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§4!3§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§4!3§ = true;
               this.§6!2§ = true;
            }
         }
      }
      
      private function §?!_§() : void
      {
         if(this.§4!3§)
         {
            if(this.§"!J§ < this.§8!d§)
            {
               if(!this.§6!2§)
               {
                  this.§8!d§ = this.§"!J§;
               }
               else
               {
                  this.§"!J§ = this.§8!d§;
               }
            }
            else if(!this.§6!2§)
            {
               this.§"!J§ = this.§8!d§;
            }
            else
            {
               this.§8!d§ = this.§"!J§;
            }
         }
      }
      
      private function § !c§() : void
      {
         if(!this.§<x§ && this.§"!J§ > 1)
         {
            this.§"!J§ = 1;
         }
         else if(!this.§=r§ && this.§"!J§ < 1)
         {
            this.§"!J§ = 1;
         }
         if(!this.§]H§ && this.§8!d§ > 1)
         {
            this.§8!d§ = 1;
         }
         else if(!this.§4!W§ && this.§8!d§ < 1)
         {
            this.§8!d§ = 1;
         }
      }
      
      private function §8!!§() : void
      {
         if(this.§4!d§ == §]!U§)
         {
            this.§"!J§ = Math.sqrt(this.§"!J§);
            this.§8!d§ = Math.sqrt(this.§8!d§);
         }
         else if(this.§4!d§ == §!d§)
         {
            this.§"!J§ *= this.§"!J§;
            this.§8!d§ *= this.§8!d§;
         }
      }
      
      private function §^f§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §;!<§ || param4 == §1!=§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §9!T§ || param4 == §5p§)
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
         else if(param4 == §1!S§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§4!3§)
               {
                  if(!this.§6!2§)
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
      
      private function §0w§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §;!<§ || param4 == §1!=§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §9!T§ || param4 == §5p§)
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
         else if(param4 == §1!S§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§4!3§)
               {
                  if(!this.§6!2§)
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
      
      public function §<!d§(param1:Number, param2:Number) : void
      {
         this.§>+§ = param1;
         this.§"4§ = param2;
         this.§"!J§ = param1 / this.§&K§;
         this.§8!d§ = param2 / this.§6!7§;
         this.§"!a§ = this.§"!J§;
         this.§`!Y§ = this.§8!d§;
         this.§?!_§();
         this.§ !c§();
         this.§-!h§ = this.§"!J§;
         this.§3!V§ = this.§8!d§;
         this.§8!!§();
         this.§+p§ = this.§0w§(this.§>3§,param1,this.§&K§,this.§0c§,this.§=r§,this.§<x§,this.§"!J§,this.§"!a§,this.§-!h§);
         this.§,,§ = this.§0w§(this.§1![§,param2,this.§6!7§,this.§'!9§,this.§4!W§,this.§]H§,this.§8!d§,this.§`!Y§,this.§3!V§);
      }
   }
}
