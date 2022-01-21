package §-1§
{
   public class §#!G§
   {
      
      private static const §7!H§:String = "RIGHT";
      
      private static const §1#§:String = "LEFT";
      
      private static const §@A§:String = "TOP";
      
      private static const §4!d§:String = "BOTTOM";
      
      private static const §9S§:String = "CENTER";
      
      private static const §`!;§:String = "NORMAL";
      
      private static const §0o§:String = "SQRT";
      
      private static const §<!G§:String = "SQR";
       
      
      private var §!u§:Number = 0.0;
      
      private var §+!g§:Number = 0.0;
      
      private var §64§:Number = 1.0;
      
      private var §+!_§:Number = 1.0;
      
      private var §>!C§:Number = 1.0;
      
      private var §"b§:Number = 1.0;
      
      private var §,H§:String = "LEFT";
      
      private var §4!T§:String = "TOP";
      
      private var §+5§:Boolean = false;
      
      private var §[3§:Boolean = false;
      
      private var §<C§:Boolean = false;
      
      private var §3q§:Boolean = false;
      
      private var §04§:Boolean = false;
      
      private var §!t§:Boolean = false;
      
      private var §3"§:String = "NORMAL";
      
      private var §%x§:Number = 1.0;
      
      private var §try§:Number = 1.0;
      
      private var §0!c§:Number = 1.0;
      
      private var §`!'§:Number = 1.0;
      
      private var §2!?§:Number = 1.0;
      
      private var §=O§:Number = 1.0;
      
      private var §;b§:Number = 0.0;
      
      private var §[!5§:Number = 0.0;
      
      private var §&Q§:Number = 1.0;
      
      private var §>! §:Number = 1.0;
      
      public function §#!G§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§!u§ = param1;
         this.§+!g§ = param2;
         this.§;b§ = param1;
         this.§[!5§ = param2;
         this.§64§ = param3;
         this.§+!_§ = param4;
         this.§>!C§ = param5;
         this.§"b§ = param6;
         this.§&Q§ = param5;
         this.§>! § = param6;
         this.§!!f§(param7);
         this.§+!$§(param8);
         this.§4x§(param9);
         this.§'j§(param10);
         this.§4l§(param11);
         this.§?m§(param12);
         this.§3"§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§;b§;
      }
      
      public function get y() : Number
      {
         return this.§[!5§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§!u§ = this.§[!K§(param1,this.§&Q§,this.§>!C§,this.§,H§,this.§+5§,this.§[3§,this.§%x§,this.§0!c§,this.§2!?§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§+!g§ = this.§[!K§(param1,this.§>! §,this.§"b§,this.§4!T§,this.§<C§,this.§3q§,this.§try§,this.§`!'§,this.§=O§);
      }
      
      public function get scaleX() : Number
      {
         return this.§64§ * this.§-!O§;
      }
      
      public function get scaleY() : Number
      {
         return this.§+!_§ * this.§%!R§;
      }
      
      private function get §-!O§() : Number
      {
         if(this.§+5§ || this.§[3§)
         {
            return this.§%x§;
         }
         return 1;
      }
      
      private function get §%!R§() : Number
      {
         if(this.§<C§ || this.§3q§)
         {
            return this.§try§;
         }
         return 1;
      }
      
      private function §!!f§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §7!H§ || param1 == §9S§)
            {
               this.§,H§ = param1;
            }
         }
      }
      
      private function §+!$§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §4!d§ || param1 == §9S§)
            {
               this.§4!T§ = param1;
            }
         }
      }
      
      private function §4x§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§+5§ = true;
               this.§[3§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§+5§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§[3§ = true;
            }
         }
      }
      
      private function §'j§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§<C§ = true;
               this.§3q§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§<C§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§3q§ = true;
            }
         }
      }
      
      private function §?m§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §0o§)
            {
               this.§3"§ = §0o§;
            }
            else if(param1.toUpperCase() == §<!G§)
            {
               this.§3"§ = §<!G§;
            }
         }
      }
      
      private function §4l§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§04§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§04§ = true;
               this.§!t§ = true;
            }
         }
      }
      
      private function §;L§() : void
      {
         if(this.§04§)
         {
            if(this.§%x§ < this.§try§)
            {
               if(!this.§!t§)
               {
                  this.§try§ = this.§%x§;
               }
               else
               {
                  this.§%x§ = this.§try§;
               }
            }
            else if(!this.§!t§)
            {
               this.§%x§ = this.§try§;
            }
            else
            {
               this.§try§ = this.§%x§;
            }
         }
      }
      
      private function §#q§() : void
      {
         if(!this.§[3§ && this.§%x§ > 1)
         {
            this.§%x§ = 1;
         }
         else if(!this.§+5§ && this.§%x§ < 1)
         {
            this.§%x§ = 1;
         }
         if(!this.§3q§ && this.§try§ > 1)
         {
            this.§try§ = 1;
         }
         else if(!this.§<C§ && this.§try§ < 1)
         {
            this.§try§ = 1;
         }
      }
      
      private function §^!h§() : void
      {
         if(this.§3"§ == §0o§)
         {
            this.§%x§ = Math.sqrt(this.§%x§);
            this.§try§ = Math.sqrt(this.§try§);
         }
         else if(this.§3"§ == §<!G§)
         {
            this.§%x§ *= this.§%x§;
            this.§try§ *= this.§try§;
         }
      }
      
      private function §[!K§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §1#§ || param4 == §@A§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §7!H§ || param4 == §4!d§)
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
         else if(param4 == §9S§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§04§)
               {
                  if(!this.§!t§)
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
      
      private function §!!H§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §1#§ || param4 == §@A§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §7!H§ || param4 == §4!d§)
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
         else if(param4 == §9S§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§04§)
               {
                  if(!this.§!t§)
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
      
      public function §[J§(param1:Number, param2:Number) : void
      {
         this.§&Q§ = param1;
         this.§>! § = param2;
         this.§%x§ = param1 / this.§>!C§;
         this.§try§ = param2 / this.§"b§;
         this.§0!c§ = this.§%x§;
         this.§`!'§ = this.§try§;
         this.§;L§();
         this.§#q§();
         this.§2!?§ = this.§%x§;
         this.§=O§ = this.§try§;
         this.§^!h§();
         this.§;b§ = this.§!!H§(this.§!u§,param1,this.§>!C§,this.§,H§,this.§+5§,this.§[3§,this.§%x§,this.§0!c§,this.§2!?§);
         this.§[!5§ = this.§!!H§(this.§+!g§,param2,this.§"b§,this.§4!T§,this.§<C§,this.§3q§,this.§try§,this.§`!'§,this.§=O§);
      }
   }
}
