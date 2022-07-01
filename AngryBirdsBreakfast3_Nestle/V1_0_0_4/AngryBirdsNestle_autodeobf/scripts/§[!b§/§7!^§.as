package §[!b§
{
   public class §7!^§
   {
      
      private static const §`![§:String = "RIGHT";
      
      private static const §8!M§:String = "LEFT";
      
      private static const §^c§:String = "TOP";
      
      private static const §'!i§:String = "BOTTOM";
      
      private static const §%B§:String = "CENTER";
      
      private static const §'!9§:String = "NORMAL";
      
      private static const §51§:String = "SQRT";
      
      private static const §%n§:String = "SQR";
      
      private static const §<§:String = "NORMAL_SQRT";
       
      
      private var §2![§:Number = 0.0;
      
      private var §5"$§:Number = 0.0;
      
      private var § 9§:Number = 1.0;
      
      private var §;!l§:Number = 1.0;
      
      private var §5"&§:Number = 1.0;
      
      private var §5!'§:Number = 1.0;
      
      private var §?R§:String = "LEFT";
      
      private var §5!F§:String = "TOP";
      
      private var §]p§:Boolean = false;
      
      private var §9!j§:Boolean = false;
      
      private var §;!F§:Boolean = false;
      
      private var §1"$§:Boolean = false;
      
      private var §`!y§:Boolean = false;
      
      private var §!!E§:Boolean = false;
      
      private var §^!k§:Boolean = false;
      
      private var §<!W§:String = "NORMAL";
      
      private var §#3§:Number = 1.0;
      
      private var §5!U§:Number = 1.0;
      
      private var §9!c§:Number = 1.0;
      
      private var §&!K§:Number = 1.0;
      
      private var §'!J§:Number = 1.0;
      
      private var §@"'§:Number = 1.0;
      
      private var §0!'§:Number = 0.0;
      
      private var §#<§:Number = 0.0;
      
      private var §!5§:Number = 1.0;
      
      private var §!&§:Number = 1.0;
      
      public function §7!^§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§2![§ = param1;
         this.§5"$§ = param2;
         this.§0!'§ = param1;
         this.§#<§ = param2;
         this.§ 9§ = param3;
         this.§;!l§ = param4;
         this.§5"&§ = param5;
         this.§5!'§ = param6;
         this.§!5§ = param5;
         this.§!&§ = param6;
         this.§0!Z§(param7);
         this.§#"$§(param8);
         this.§#W§(param9);
         this.§&R§(param10);
         this.§8q§(param11);
         this.§#"#§(param12);
         this.§<!W§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§0!'§;
      }
      
      public function get y() : Number
      {
         return this.§#<§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§2![§ = this.§0'§(param1,this.§!5§,this.§5"&§,this.§?R§,this.§]p§,this.§9!j§,this.§#3§,this.§9!c§,this.§'!J§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§5"$§ = this.§0'§(param1,this.§!&§,this.§5!'§,this.§5!F§,this.§;!F§,this.§1"$§,this.§5!U§,this.§&!K§,this.§@"'§);
      }
      
      public function get scaleX() : Number
      {
         return this.§ 9§ * this.§+W§;
      }
      
      public function get scaleY() : Number
      {
         return this.§;!l§ * this.§%!G§;
      }
      
      private function get §+W§() : Number
      {
         if(this.§]p§ || this.§9!j§)
         {
            return this.§#3§;
         }
         return 1;
      }
      
      private function get §%!G§() : Number
      {
         if(this.§;!F§ || this.§1"$§)
         {
            return this.§5!U§;
         }
         return 1;
      }
      
      private function §0!Z§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §`![§ || param1 == §%B§)
            {
               this.§?R§ = param1;
            }
         }
      }
      
      private function §#"$§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §'!i§ || param1 == §%B§)
            {
               this.§5!F§ = param1;
            }
         }
      }
      
      private function §#W§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§]p§ = true;
               this.§9!j§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§]p§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§9!j§ = true;
            }
         }
      }
      
      private function §&R§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§;!F§ = true;
               this.§1"$§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§;!F§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§1"$§ = true;
            }
         }
      }
      
      private function §#"#§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §51§)
            {
               this.§<!W§ = §51§;
            }
            else if(param1.toUpperCase() == §%n§)
            {
               this.§<!W§ = §%n§;
            }
            else if(param1.toUpperCase() == §<§)
            {
               this.§<!W§ = §<§;
            }
         }
      }
      
      private function §8q§(param1:String) : void
      {
         if(param1)
         {
            switch(param1.toUpperCase())
            {
               case "TRUE":
                  this.§`!y§ = true;
                  break;
               case "UP":
                  this.§`!y§ = true;
                  this.§!!E§ = true;
                  break;
               case "UPDOWN":
                  this.§`!y§ = true;
                  this.§^!k§ = true;
            }
         }
      }
      
      private function §%!`§() : void
      {
         if(this.§`!y§)
         {
            if(this.§#3§ < this.§5!U§)
            {
               if(!this.§!!E§)
               {
                  this.§5!U§ = this.§#3§;
               }
               else
               {
                  this.§#3§ = this.§5!U§;
               }
            }
            else if(!this.§!!E§)
            {
               this.§#3§ = this.§5!U§;
            }
            else
            {
               this.§5!U§ = this.§#3§;
            }
         }
      }
      
      private function §2!z§() : void
      {
         if(!this.§9!j§ && this.§#3§ > 1)
         {
            this.§#3§ = 1;
         }
         else if(!this.§]p§ && this.§#3§ < 1)
         {
            this.§#3§ = 1;
         }
         if(!this.§1"$§ && this.§5!U§ > 1)
         {
            this.§5!U§ = 1;
         }
         else if(!this.§;!F§ && this.§5!U§ < 1)
         {
            this.§5!U§ = 1;
         }
      }
      
      private function §[!§() : void
      {
         if(this.§<!W§ == §51§)
         {
            this.§#3§ = Math.sqrt(this.§#3§);
            this.§5!U§ = Math.sqrt(this.§5!U§);
         }
         else if(this.§<!W§ == §%n§)
         {
            this.§#3§ *= this.§#3§;
            this.§5!U§ *= this.§5!U§;
         }
         else if(this.§<!W§ == §<§)
         {
            if(this.§#3§ > 1)
            {
               this.§#3§ = Math.sqrt(this.§#3§);
            }
            if(this.§5!U§ > 1)
            {
               this.§5!U§ = Math.sqrt(this.§5!U§);
            }
         }
      }
      
      private function §0'§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §8!M§ || param4 == §^c§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §`![§ || param4 == §'!i§)
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
         else if(param4 == §%B§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§`!y§)
               {
                  if(!this.§!!E§)
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
      
      private function §=e§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §8!M§ || param4 == §^c§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §`![§ || param4 == §'!i§)
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
         else if(param4 == §%B§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§`!y§)
               {
                  if(!this.§!!E§ && !this.§^!k§)
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
      
      public function §&Q§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§!5§ = param1;
         this.§!&§ = param2;
         this.§#3§ = param1 / this.§5"&§;
         if(!this.§^!k§)
         {
            this.§#3§ = param1 / this.§5"&§;
            this.§5!U§ = param2 / this.§5!'§;
         }
         else
         {
            _loc3_ = this.§#3§ = param2 / this.§5!'§;
            _loc4_ = this.§5!U§ = this.§#3§;
         }
         this.§9!c§ = this.§#3§;
         this.§&!K§ = this.§5!U§;
         this.§%!`§();
         this.§2!z§();
         this.§'!J§ = this.§#3§;
         this.§@"'§ = this.§5!U§;
         if(this.§^!k§)
         {
            this.§#3§ = param1 / this.§5"&§;
            this.§5!U§ = param2 / this.§5!'§;
         }
         this.§[!§();
         this.§0!'§ = this.§=e§(this.§2![§,param1,this.§5"&§,this.§?R§,this.§]p§,this.§9!j§,this.§#3§,this.§9!c§,this.§'!J§);
         this.§#<§ = this.§=e§(this.§5"$§,param2,this.§5!'§,this.§5!F§,this.§;!F§,this.§1"$§,this.§5!U§,this.§&!K§,this.§@"'§);
         if(this.§^!k§)
         {
            this.§#3§ = _loc3_;
            this.§5!U§ = _loc4_;
         }
      }
   }
}
