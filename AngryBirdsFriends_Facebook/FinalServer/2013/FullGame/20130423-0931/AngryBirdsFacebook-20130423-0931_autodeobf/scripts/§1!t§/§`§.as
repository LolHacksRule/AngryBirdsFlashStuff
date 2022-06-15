package §1!t§
{
   public class §`§
   {
      
      private static const §+!H§:String = "RIGHT";
      
      private static const §2"W§:String = "LEFT";
      
      private static const §^!m§:String = "TOP";
      
      private static const §@![§:String = "BOTTOM";
      
      private static const §;";§:String = "CENTER";
      
      private static const §1"1§:String = "NORMAL";
      
      private static const §-",§:String = "SQRT";
      
      private static const §'w§:String = "SQR";
       
      
      private var § !w§:Number = 0.0;
      
      private var §-"3§:Number = 0.0;
      
      private var §8!d§:Number = 1.0;
      
      private var §0"§:Number = 1.0;
      
      private var §2!V§:Number = 1.0;
      
      private var §["<§:Number = 1.0;
      
      private var §^!b§:String = "LEFT";
      
      private var §'!j§:String = "TOP";
      
      private var §<"R§:Boolean = false;
      
      private var §7!s§:Boolean = false;
      
      private var §5!3§:Boolean = false;
      
      private var §92§:Boolean = false;
      
      private var §^"Z§:Boolean = false;
      
      private var §"!g§:Boolean = false;
      
      private var §[4§:String = "NORMAL";
      
      private var §8!S§:Number = 1.0;
      
      private var §,@§:Number = 1.0;
      
      private var §3!g§:Number = 1.0;
      
      private var §="<§:Number = 1.0;
      
      private var §4!G§:Number = 1.0;
      
      private var §!!H§:Number = 1.0;
      
      private var §4!K§:Number = 0.0;
      
      private var §7!#§:Number = 0.0;
      
      private var §,!&§:Number = 1.0;
      
      private var §+!i§:Number = 1.0;
      
      public function §`§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§ !w§ = param1;
         this.§-"3§ = param2;
         this.§4!K§ = param1;
         this.§7!#§ = param2;
         this.§8!d§ = param3;
         this.§0"§ = param4;
         this.§2!V§ = param5;
         this.§["<§ = param6;
         this.§,!&§ = param5;
         this.§+!i§ = param6;
         this.§"!p§(param7);
         this.§+"0§(param8);
         this.§;>§(param9);
         this.§,c§(param10);
         this.§"3§(param11);
         this.§4F§(param12);
         this.§[4§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§4!K§;
      }
      
      public function get y() : Number
      {
         return this.§7!#§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§ !w§ = this.§5!V§(param1,this.§,!&§,this.§2!V§,this.§^!b§,this.§<"R§,this.§7!s§,this.§8!S§,this.§3!g§,this.§4!G§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§-"3§ = this.§5!V§(param1,this.§+!i§,this.§["<§,this.§'!j§,this.§5!3§,this.§92§,this.§,@§,this.§="<§,this.§!!H§);
      }
      
      public function get scaleX() : Number
      {
         return this.§8!d§ * this.§3<§;
      }
      
      public function get scaleY() : Number
      {
         return this.§0"§ * this.§1n§;
      }
      
      private function get §3<§() : Number
      {
         if(this.§<"R§ || this.§7!s§)
         {
            return this.§8!S§;
         }
         return 1;
      }
      
      private function get §1n§() : Number
      {
         if(this.§5!3§ || this.§92§)
         {
            return this.§,@§;
         }
         return 1;
      }
      
      private function §"!p§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §+!H§ || param1 == §;";§)
            {
               this.§^!b§ = param1;
            }
         }
      }
      
      private function §+"0§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §@![§ || param1 == §;";§)
            {
               this.§'!j§ = param1;
            }
         }
      }
      
      private function §;>§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§<"R§ = true;
               this.§7!s§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§<"R§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§7!s§ = true;
            }
         }
      }
      
      private function §,c§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§5!3§ = true;
               this.§92§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§5!3§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§92§ = true;
            }
         }
      }
      
      private function §4F§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §-",§)
            {
               this.§[4§ = §-",§;
            }
            else if(param1.toUpperCase() == §'w§)
            {
               this.§[4§ = §'w§;
            }
         }
      }
      
      private function §"3§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§^"Z§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§^"Z§ = true;
               this.§"!g§ = true;
            }
         }
      }
      
      private function §<!#§() : void
      {
         if(this.§^"Z§)
         {
            if(this.§8!S§ < this.§,@§)
            {
               if(!this.§"!g§)
               {
                  this.§,@§ = this.§8!S§;
               }
               else
               {
                  this.§8!S§ = this.§,@§;
               }
            }
            else if(!this.§"!g§)
            {
               this.§8!S§ = this.§,@§;
            }
            else
            {
               this.§,@§ = this.§8!S§;
            }
         }
      }
      
      private function § !+§() : void
      {
         if(!this.§7!s§ && this.§8!S§ > 1)
         {
            this.§8!S§ = 1;
         }
         else if(!this.§<"R§ && this.§8!S§ < 1)
         {
            this.§8!S§ = 1;
         }
         if(!this.§92§ && this.§,@§ > 1)
         {
            this.§,@§ = 1;
         }
         else if(!this.§5!3§ && this.§,@§ < 1)
         {
            this.§,@§ = 1;
         }
      }
      
      private function §?@§() : void
      {
         if(this.§[4§ == §-",§)
         {
            this.§8!S§ = Math.sqrt(this.§8!S§);
            this.§,@§ = Math.sqrt(this.§,@§);
         }
         else if(this.§[4§ == §'w§)
         {
            this.§8!S§ *= this.§8!S§;
            this.§,@§ *= this.§,@§;
         }
      }
      
      private function §5!V§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §2"W§ || param4 == §^!m§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §+!H§ || param4 == §@![§)
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
         else if(param4 == §;";§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§^"Z§)
               {
                  if(!this.§"!g§)
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
      
      private function §1]§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §2"W§ || param4 == §^!m§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §+!H§ || param4 == §@![§)
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
         else if(param4 == §;";§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§^"Z§)
               {
                  if(!this.§"!g§)
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
      
      public function §,!_§(param1:Number, param2:Number) : void
      {
         this.§,!&§ = param1;
         this.§+!i§ = param2;
         this.§8!S§ = param1 / this.§2!V§;
         this.§,@§ = param2 / this.§["<§;
         this.§3!g§ = this.§8!S§;
         this.§="<§ = this.§,@§;
         this.§<!#§();
         this.§ !+§();
         this.§4!G§ = this.§8!S§;
         this.§!!H§ = this.§,@§;
         this.§?@§();
         this.§4!K§ = this.§1]§(this.§ !w§,param1,this.§2!V§,this.§^!b§,this.§<"R§,this.§7!s§,this.§8!S§,this.§3!g§,this.§4!G§);
         this.§7!#§ = this.§1]§(this.§-"3§,param2,this.§["<§,this.§'!j§,this.§5!3§,this.§92§,this.§,@§,this.§="<§,this.§!!H§);
      }
   }
}
