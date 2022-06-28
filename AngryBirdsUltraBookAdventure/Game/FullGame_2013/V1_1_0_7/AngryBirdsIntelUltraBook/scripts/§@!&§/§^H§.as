package §@!&§
{
   public class §^H§
   {
      
      private static const §?!>§:String = "RIGHT";
      
      private static const §>e§:String = "LEFT";
      
      private static const §?!x§:String = "TOP";
      
      private static const §`f§:String = "BOTTOM";
      
      private static const §!k§:String = "CENTER";
      
      private static const §0!t§:String = "NORMAL";
      
      private static const §+u§:String = "SQRT";
      
      private static const §#!g§:String = "SQR";
       
      
      private var §>H§:Number = 0.0;
      
      private var §'P§:Number = 0.0;
      
      private var §2E§:Number = 1.0;
      
      private var §,!b§:Number = 1.0;
      
      private var §,!X§:Number = 1.0;
      
      private var §+!p§:Number = 1.0;
      
      private var §3!=§:String = "LEFT";
      
      private var § !6§:String = "TOP";
      
      private var §3!B§:Boolean = false;
      
      private var §[!=§:Boolean = false;
      
      private var §,!u§:Boolean = false;
      
      private var §@w§:Boolean = false;
      
      private var §3!Z§:Boolean = false;
      
      private var §8!5§:Boolean = false;
      
      private var §?R§:String = "NORMAL";
      
      private var §,L§:Number = 1.0;
      
      private var § 0§:Number = 1.0;
      
      private var §<e§:Number = 1.0;
      
      private var §!8§:Number = 1.0;
      
      private var §`p§:Number = 1.0;
      
      private var §5!J§:Number = 1.0;
      
      private var §#!!§:Number = 0.0;
      
      private var §!!3§:Number = 0.0;
      
      private var §3o§:Number = 1.0;
      
      private var §6>§:Number = 1.0;
      
      public function §^H§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§>H§ = param1;
         this.§'P§ = param2;
         this.§#!!§ = param1;
         this.§!!3§ = param2;
         this.§2E§ = param3;
         this.§,!b§ = param4;
         this.§,!X§ = param5;
         this.§+!p§ = param6;
         this.§3o§ = param5;
         this.§6>§ = param6;
         this.§1g§(param7);
         this.§]!!§(param8);
         this.§8!y§(param9);
         this.§8!;§(param10);
         this.§^P§(param11);
         this.§"!X§(param12);
         this.§?R§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§#!!§;
      }
      
      public function get y() : Number
      {
         return this.§!!3§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§>H§ = this.§%B§(param1,this.§3o§,this.§,!X§,this.§3!=§,this.§3!B§,this.§[!=§,this.§,L§,this.§<e§,this.§`p§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§'P§ = this.§%B§(param1,this.§6>§,this.§+!p§,this.§ !6§,this.§,!u§,this.§@w§,this.§ 0§,this.§!8§,this.§5!J§);
      }
      
      public function get scaleX() : Number
      {
         return this.§2E§ * this.§;!$§;
      }
      
      public function get scaleY() : Number
      {
         return this.§,!b§ * this.§9d§;
      }
      
      private function get §;!$§() : Number
      {
         if(this.§3!B§ || this.§[!=§)
         {
            return this.§,L§;
         }
         return 1;
      }
      
      private function get §9d§() : Number
      {
         if(this.§,!u§ || this.§@w§)
         {
            return this.§ 0§;
         }
         return 1;
      }
      
      private function §1g§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §?!>§ || param1 == §!k§)
            {
               this.§3!=§ = param1;
            }
         }
      }
      
      private function §]!!§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §`f§ || param1 == §!k§)
            {
               this.§ !6§ = param1;
            }
         }
      }
      
      private function §8!y§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§3!B§ = true;
               this.§[!=§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§3!B§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§[!=§ = true;
            }
         }
      }
      
      private function §8!;§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§,!u§ = true;
               this.§@w§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§,!u§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§@w§ = true;
            }
         }
      }
      
      private function §"!X§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §+u§)
            {
               this.§?R§ = §+u§;
            }
            else if(param1.toUpperCase() == §#!g§)
            {
               this.§?R§ = §#!g§;
            }
         }
      }
      
      private function §^P§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§3!Z§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§3!Z§ = true;
               this.§8!5§ = true;
            }
         }
      }
      
      private function §5!s§() : void
      {
         if(this.§3!Z§)
         {
            if(this.§,L§ < this.§ 0§)
            {
               if(!this.§8!5§)
               {
                  this.§ 0§ = this.§,L§;
               }
               else
               {
                  this.§,L§ = this.§ 0§;
               }
            }
            else if(!this.§8!5§)
            {
               this.§,L§ = this.§ 0§;
            }
            else
            {
               this.§ 0§ = this.§,L§;
            }
         }
      }
      
      private function §8j§() : void
      {
         if(!this.§[!=§ && this.§,L§ > 1)
         {
            this.§,L§ = 1;
         }
         else if(!this.§3!B§ && this.§,L§ < 1)
         {
            this.§,L§ = 1;
         }
         if(!this.§@w§ && this.§ 0§ > 1)
         {
            this.§ 0§ = 1;
         }
         else if(!this.§,!u§ && this.§ 0§ < 1)
         {
            this.§ 0§ = 1;
         }
      }
      
      private function §'!L§() : void
      {
         if(this.§?R§ == §+u§)
         {
            this.§,L§ = Math.sqrt(this.§,L§);
            this.§ 0§ = Math.sqrt(this.§ 0§);
         }
         else if(this.§?R§ == §#!g§)
         {
            this.§,L§ *= this.§,L§;
            this.§ 0§ *= this.§ 0§;
         }
      }
      
      private function §%B§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §>e§ || param4 == §?!x§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §?!>§ || param4 == §`f§)
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
         else if(param4 == §!k§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§3!Z§)
               {
                  if(!this.§8!5§)
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
      
      private function §2p§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §>e§ || param4 == §?!x§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §?!>§ || param4 == §`f§)
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
         else if(param4 == §!k§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§3!Z§)
               {
                  if(!this.§8!5§)
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
      
      public function §3!&§(param1:Number, param2:Number) : void
      {
         this.§3o§ = param1;
         this.§6>§ = param2;
         this.§,L§ = param1 / this.§,!X§;
         this.§ 0§ = param2 / this.§+!p§;
         this.§<e§ = this.§,L§;
         this.§!8§ = this.§ 0§;
         this.§5!s§();
         this.§8j§();
         this.§`p§ = this.§,L§;
         this.§5!J§ = this.§ 0§;
         this.§'!L§();
         this.§#!!§ = this.§2p§(this.§>H§,param1,this.§,!X§,this.§3!=§,this.§3!B§,this.§[!=§,this.§,L§,this.§<e§,this.§`p§);
         this.§!!3§ = this.§2p§(this.§'P§,param2,this.§+!p§,this.§ !6§,this.§,!u§,this.§@w§,this.§ 0§,this.§!8§,this.§5!J§);
      }
   }
}
