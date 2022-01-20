package §@-§
{
   public class §0F§
   {
      
      private static const §"U§:String = "RIGHT";
      
      private static const §]!e§:String = "LEFT";
      
      private static const §'!n§:String = "TOP";
      
      private static const §,!d§:String = "BOTTOM";
      
      private static const §'!m§:String = "CENTER";
      
      private static const §-X§:String = "NORMAL";
      
      private static const §#!,§:String = "SQRT";
      
      private static const §+!n§:String = "SQR";
       
      
      private var §#N§:Number = 0.0;
      
      private var §5p§:Number = 0.0;
      
      private var §<!m§:Number = 1.0;
      
      private var §<A§:Number = 1.0;
      
      private var §4!1§:Number = 1.0;
      
      private var §=c§:Number = 1.0;
      
      private var § !A§:String = "LEFT";
      
      private var §8!7§:String = "TOP";
      
      private var §+!p§:Boolean = false;
      
      private var §9!U§:Boolean = false;
      
      private var §>,§:Boolean = false;
      
      private var §[!'§:Boolean = false;
      
      private var §@!6§:Boolean = false;
      
      private var §^6§:Boolean = false;
      
      private var §!@§:String = "NORMAL";
      
      private var §?!V§:Number = 1.0;
      
      private var §8!?§:Number = 1.0;
      
      private var §4!m§:Number = 1.0;
      
      private var §6w§:Number = 1.0;
      
      private var §6s§:Number = 1.0;
      
      private var §=<§:Number = 1.0;
      
      private var §=y§:Number = 0.0;
      
      private var §#J§:Number = 0.0;
      
      private var §1!=§:Number = 1.0;
      
      private var §5E§:Number = 1.0;
      
      public function §0F§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§#N§ = param1;
         this.§5p§ = param2;
         this.§=y§ = param1;
         this.§#J§ = param2;
         this.§<!m§ = param3;
         this.§<A§ = param4;
         this.§4!1§ = param5;
         this.§=c§ = param6;
         this.§1!=§ = param5;
         this.§5E§ = param6;
         this.§&D§(param7);
         this.§%$§(param8);
         this.§;!b§(param9);
         this.§+T§(param10);
         this.§'!>§(param11);
         this.§6!#§(param12);
         this.§!@§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§=y§;
      }
      
      public function get y() : Number
      {
         return this.§#J§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§#N§ = this.§7m§(param1,this.§1!=§,this.§4!1§,this.§ !A§,this.§+!p§,this.§9!U§,this.§?!V§,this.§4!m§,this.§6s§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§5p§ = this.§7m§(param1,this.§5E§,this.§=c§,this.§8!7§,this.§>,§,this.§[!'§,this.§8!?§,this.§6w§,this.§=<§);
      }
      
      public function get scaleX() : Number
      {
         return this.§<!m§ * this.§;§;
      }
      
      public function get scaleY() : Number
      {
         return this.§<A§ * this.§-!D§;
      }
      
      private function get §;§() : Number
      {
         if(this.§+!p§ || this.§9!U§)
         {
            return this.§?!V§;
         }
         return 1;
      }
      
      private function get §-!D§() : Number
      {
         if(this.§>,§ || this.§[!'§)
         {
            return this.§8!?§;
         }
         return 1;
      }
      
      private function §&D§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §"U§ || param1 == §'!m§)
            {
               this.§ !A§ = param1;
            }
         }
      }
      
      private function §%$§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §,!d§ || param1 == §'!m§)
            {
               this.§8!7§ = param1;
            }
         }
      }
      
      private function §;!b§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§+!p§ = true;
               this.§9!U§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§+!p§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§9!U§ = true;
            }
         }
      }
      
      private function §+T§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§>,§ = true;
               this.§[!'§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§>,§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§[!'§ = true;
            }
         }
      }
      
      private function §6!#§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §#!,§)
            {
               this.§!@§ = §#!,§;
            }
            else if(param1.toUpperCase() == §+!n§)
            {
               this.§!@§ = §+!n§;
            }
         }
      }
      
      private function §'!>§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§@!6§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§@!6§ = true;
               this.§^6§ = true;
            }
         }
      }
      
      private function §;J§() : void
      {
         if(this.§@!6§)
         {
            if(this.§?!V§ < this.§8!?§)
            {
               if(!this.§^6§)
               {
                  this.§8!?§ = this.§?!V§;
               }
               else
               {
                  this.§?!V§ = this.§8!?§;
               }
            }
            else if(!this.§^6§)
            {
               this.§?!V§ = this.§8!?§;
            }
            else
            {
               this.§8!?§ = this.§?!V§;
            }
         }
      }
      
      private function §3l§() : void
      {
         if(!this.§9!U§ && this.§?!V§ > 1)
         {
            this.§?!V§ = 1;
         }
         else if(!this.§+!p§ && this.§?!V§ < 1)
         {
            this.§?!V§ = 1;
         }
         if(!this.§[!'§ && this.§8!?§ > 1)
         {
            this.§8!?§ = 1;
         }
         else if(!this.§>,§ && this.§8!?§ < 1)
         {
            this.§8!?§ = 1;
         }
      }
      
      private function §+y§() : void
      {
         if(this.§!@§ == §#!,§)
         {
            this.§?!V§ = Math.sqrt(this.§?!V§);
            this.§8!?§ = Math.sqrt(this.§8!?§);
         }
         else if(this.§!@§ == §+!n§)
         {
            this.§?!V§ *= this.§?!V§;
            this.§8!?§ *= this.§8!?§;
         }
      }
      
      private function §7m§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §]!e§ || param4 == §'!n§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §"U§ || param4 == §,!d§)
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
         else if(param4 == §'!m§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§@!6§)
               {
                  if(!this.§^6§)
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
      
      private function §^!#§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §]!e§ || param4 == §'!n§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §"U§ || param4 == §,!d§)
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
         else if(param4 == §'!m§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§@!6§)
               {
                  if(!this.§^6§)
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
      
      public function §>!`§(param1:Number, param2:Number) : void
      {
         this.§1!=§ = param1;
         this.§5E§ = param2;
         this.§?!V§ = param1 / this.§4!1§;
         this.§8!?§ = param2 / this.§=c§;
         this.§4!m§ = this.§?!V§;
         this.§6w§ = this.§8!?§;
         this.§;J§();
         this.§3l§();
         this.§6s§ = this.§?!V§;
         this.§=<§ = this.§8!?§;
         this.§+y§();
         this.§=y§ = this.§^!#§(this.§#N§,param1,this.§4!1§,this.§ !A§,this.§+!p§,this.§9!U§,this.§?!V§,this.§4!m§,this.§6s§);
         this.§#J§ = this.§^!#§(this.§5p§,param2,this.§=c§,this.§8!7§,this.§>,§,this.§[!'§,this.§8!?§,this.§6w§,this.§=<§);
      }
   }
}
