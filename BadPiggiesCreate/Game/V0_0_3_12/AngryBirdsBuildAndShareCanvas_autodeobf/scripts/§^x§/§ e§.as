package §^x§
{
   public class § e§
   {
      
      private static const §0!,§:String = "RIGHT";
      
      private static const §1M§:String = "LEFT";
      
      private static const §^!P§:String = "TOP";
      
      private static const §?!t§:String = "BOTTOM";
      
      private static const §9f§:String = "CENTER";
      
      private static const §6z§:String = "NORMAL";
      
      private static const §@!8§:String = "SQRT";
      
      private static const §%J§:String = "SQR";
       
      
      private var §%n§:Number = 0.0;
      
      private var §`!m§:Number = 0.0;
      
      private var §7!b§:Number = 1.0;
      
      private var §5#§:Number = 1.0;
      
      private var §%!M§:Number = 1.0;
      
      private var §3!9§:Number = 1.0;
      
      private var §4!P§:String = "LEFT";
      
      private var §&^§:String = "TOP";
      
      private var § in§:Boolean = false;
      
      private var §4!h§:Boolean = false;
      
      private var §<]§:Boolean = false;
      
      private var §-!T§:Boolean = false;
      
      private var §%!!§:Boolean = false;
      
      private var §1`§:Boolean = false;
      
      private var §1G§:String = "NORMAL";
      
      private var §1"?§:Number = 1.0;
      
      private var §'!Q§:Number = 1.0;
      
      private var §#"5§:Number = 1.0;
      
      private var §8!p§:Number = 1.0;
      
      private var §?!j§:Number = 1.0;
      
      private var §3_§:Number = 1.0;
      
      private var mX:Number = 0.0;
      
      private var mY:Number = 0.0;
      
      private var §-!Q§:Number = 1.0;
      
      private var §?!&§:Number = 1.0;
      
      public function § e§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§%n§ = param1;
         this.§`!m§ = param2;
         this.mX = param1;
         this.mY = param2;
         this.§7!b§ = param3;
         this.§5#§ = param4;
         this.§%!M§ = param5;
         this.§3!9§ = param6;
         this.§-!Q§ = param5;
         this.§?!&§ = param6;
         this.§8F§(param7);
         this.§&!l§(param8);
         this.§@!p§(param9);
         this.§<!F§(param10);
         this.§2!+§(param11);
         this.§,K§(param12);
         this.§1G§ = param12;
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
         this.§%n§ = this.§16§(param1,this.§-!Q§,this.§%!M§,this.§4!P§,this.§ in§,this.§4!h§,this.§1"?§,this.§#"5§,this.§?!j§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§`!m§ = this.§16§(param1,this.§?!&§,this.§3!9§,this.§&^§,this.§<]§,this.§-!T§,this.§'!Q§,this.§8!p§,this.§3_§);
      }
      
      public function get scaleX() : Number
      {
         return this.§7!b§ * this.§7!&§;
      }
      
      public function get scaleY() : Number
      {
         return this.§5#§ * this.§&y§;
      }
      
      private function get §7!&§() : Number
      {
         if(this.§ in§ || this.§4!h§)
         {
            return this.§1"?§;
         }
         return 1;
      }
      
      private function get §&y§() : Number
      {
         if(this.§<]§ || this.§-!T§)
         {
            return this.§'!Q§;
         }
         return 1;
      }
      
      private function §8F§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §0!,§ || param1 == §9f§)
            {
               this.§4!P§ = param1;
            }
         }
      }
      
      private function §&!l§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §?!t§ || param1 == §9f§)
            {
               this.§&^§ = param1;
            }
         }
      }
      
      private function §@!p§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§ in§ = true;
               this.§4!h§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§ in§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§4!h§ = true;
            }
         }
      }
      
      private function §<!F§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§<]§ = true;
               this.§-!T§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§<]§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§-!T§ = true;
            }
         }
      }
      
      private function §,K§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §@!8§)
            {
               this.§1G§ = §@!8§;
            }
            else if(param1.toUpperCase() == §%J§)
            {
               this.§1G§ = §%J§;
            }
         }
      }
      
      private function §2!+§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§%!!§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§%!!§ = true;
               this.§1`§ = true;
            }
         }
      }
      
      private function §!!_§() : void
      {
         if(this.§%!!§)
         {
            if(this.§1"?§ < this.§'!Q§)
            {
               if(!this.§1`§)
               {
                  this.§'!Q§ = this.§1"?§;
               }
               else
               {
                  this.§1"?§ = this.§'!Q§;
               }
            }
            else if(!this.§1`§)
            {
               this.§1"?§ = this.§'!Q§;
            }
            else
            {
               this.§'!Q§ = this.§1"?§;
            }
         }
      }
      
      private function §''§() : void
      {
         if(!this.§4!h§ && this.§1"?§ > 1)
         {
            this.§1"?§ = 1;
         }
         else if(!this.§ in§ && this.§1"?§ < 1)
         {
            this.§1"?§ = 1;
         }
         if(!this.§-!T§ && this.§'!Q§ > 1)
         {
            this.§'!Q§ = 1;
         }
         else if(!this.§<]§ && this.§'!Q§ < 1)
         {
            this.§'!Q§ = 1;
         }
      }
      
      private function §4j§() : void
      {
         if(this.§1G§ == §@!8§)
         {
            this.§1"?§ = Math.sqrt(this.§1"?§);
            this.§'!Q§ = Math.sqrt(this.§'!Q§);
         }
         else if(this.§1G§ == §%J§)
         {
            this.§1"?§ *= this.§1"?§;
            this.§'!Q§ *= this.§'!Q§;
         }
      }
      
      private function §16§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §1M§ || param4 == §^!P§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §0!,§ || param4 == §?!t§)
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
         else if(param4 == §9f§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§%!!§)
               {
                  if(!this.§1`§)
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
      
      private function §7!3§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §1M§ || param4 == §^!P§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §0!,§ || param4 == §?!t§)
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
         else if(param4 == §9f§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§%!!§)
               {
                  if(!this.§1`§)
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
      
      public function §0!v§(param1:Number, param2:Number) : void
      {
         this.§-!Q§ = param1;
         this.§?!&§ = param2;
         this.§1"?§ = param1 / this.§%!M§;
         this.§'!Q§ = param2 / this.§3!9§;
         this.§#"5§ = this.§1"?§;
         this.§8!p§ = this.§'!Q§;
         this.§!!_§();
         this.§''§();
         this.§?!j§ = this.§1"?§;
         this.§3_§ = this.§'!Q§;
         this.§4j§();
         this.mX = this.§7!3§(this.§%n§,param1,this.§%!M§,this.§4!P§,this.§ in§,this.§4!h§,this.§1"?§,this.§#"5§,this.§?!j§);
         this.mY = this.§7!3§(this.§`!m§,param2,this.§3!9§,this.§&^§,this.§<]§,this.§-!T§,this.§'!Q§,this.§8!p§,this.§3_§);
      }
   }
}
