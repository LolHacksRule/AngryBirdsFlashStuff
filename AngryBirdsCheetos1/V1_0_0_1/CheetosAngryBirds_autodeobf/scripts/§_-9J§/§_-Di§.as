package §_-9J§
{
   public class §_-Di§
   {
      
      private static const §_-Sj§:String = "RIGHT";
      
      private static const §_-Jw§:String = "LEFT";
      
      private static const §_-HF§:String = "TOP";
      
      private static const §_-9k§:String = "BOTTOM";
      
      private static const §_-yl§:String = "CENTER";
      
      private static const §_-Qj§:String = "NORMAL";
      
      private static const §_-L3§:String = "SQRT";
      
      private static const §_-ID§:String = "SQR";
       
      
      private var §_-bH§:Number = 0.0;
      
      private var §_-BA§:Number = 0.0;
      
      private var §_-bx§:Number = 0.0;
      
      private var §_-NE§:Number = 0.0;
      
      private var §_-DT§:String = "LEFT";
      
      private var §super§:String = "TOP";
      
      private var §_-y7§:Boolean = false;
      
      private var §_-xj§:Boolean = false;
      
      private var §_-dg§:Boolean = false;
      
      private var §_-Vb§:Boolean = false;
      
      private var §switch§:Boolean = false;
      
      private var §_-Zu§:Boolean = false;
      
      private var §_-CZ§:String = "NORMAL";
      
      private var §_-tw§:Number = 0.0;
      
      private var §_-Id§:Number = 0.0;
      
      private var mX:Number = 0.0;
      
      private var mY:Number = 0.0;
      
      private var §_-kn§:Number = 1.0;
      
      private var §_-sy§:Number = 1.0;
      
      public function §_-Di§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§_-bH§ = param1;
         this.§_-BA§ = param2;
         this.§_-kn§ = param3;
         this.§_-sy§ = param4;
         this.§_-bx§ = param5;
         this.§_-NE§ = param6;
         this.§_-5a§(param7);
         this.§_-0m§(param8);
         this.§_-K1§(param9);
         this.§_-Ub§(param10);
         this.§_-yn§(param11);
         this.§_-MX§(param12);
         this.§_-CZ§ = param12;
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
         this.§_-bH§ = param1;
      }
      
      public function set y(param1:Number) : void
      {
         this.§_-BA§ = param1;
      }
      
      public function get scaleX() : Number
      {
         if(this.§_-y7§ || this.§_-xj§)
         {
            return this.§_-tw§ * this.§_-kn§;
         }
         return this.§_-kn§;
      }
      
      public function get scaleY() : Number
      {
         if(this.§_-dg§ || this.§_-Vb§)
         {
            return this.§_-Id§ * this.§_-sy§;
         }
         return this.§_-sy§;
      }
      
      private function §_-5a§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §_-Sj§ || param1 == §_-yl§)
            {
               this.§_-DT§ = param1;
            }
         }
      }
      
      private function §_-0m§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §_-9k§ || param1 == §_-yl§)
            {
               this.§super§ = param1;
            }
         }
      }
      
      private function §_-K1§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-y7§ = true;
               this.§_-xj§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§_-y7§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§_-xj§ = true;
            }
         }
      }
      
      private function §_-Ub§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-dg§ = true;
               this.§_-Vb§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§_-dg§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§_-Vb§ = true;
            }
         }
      }
      
      private function §_-MX§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §_-L3§)
            {
               this.§_-CZ§ = §_-L3§;
            }
            else if(param1.toUpperCase() == §_-ID§)
            {
               this.§_-CZ§ = §_-ID§;
            }
         }
      }
      
      private function §_-yn§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§switch§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§switch§ = true;
               this.§_-Zu§ = true;
            }
         }
      }
      
      private function §_-PU§() : void
      {
         if(this.§switch§)
         {
            if(this.§_-tw§ < this.§_-Id§)
            {
               if(!this.§_-Zu§)
               {
                  this.§_-Id§ = this.§_-tw§;
               }
               else
               {
                  this.§_-tw§ = this.§_-Id§;
               }
            }
            else if(!this.§_-Zu§)
            {
               this.§_-tw§ = this.§_-Id§;
            }
            else
            {
               this.§_-Id§ = this.§_-tw§;
            }
         }
      }
      
      private function §_-hg§() : void
      {
         if(!this.§_-xj§ && this.§_-tw§ > 1)
         {
            this.§_-tw§ = 1;
         }
         else if(this.§_-xj§ && !this.§_-y7§ && this.§_-tw§ < 1)
         {
            this.§_-tw§ = 1;
         }
         if(!this.§_-Vb§ && this.§_-Id§ > 1)
         {
            this.§_-Id§ = 1;
         }
         else if(this.§_-Vb§ && !this.§_-dg§ && this.§_-Id§ < 1)
         {
            this.§_-Id§ = 1;
         }
      }
      
      private function §_-W5§() : void
      {
         if(this.§_-CZ§ == §_-L3§)
         {
            this.§_-tw§ = Math.sqrt(this.§_-tw§);
            this.§_-Id§ = Math.sqrt(this.§_-Id§);
         }
         else if(this.§_-CZ§ == §_-ID§)
         {
            this.§_-tw§ *= this.§_-tw§;
            this.§_-Id§ *= this.§_-Id§;
         }
      }
      
      private function §_-RF§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §_-Jw§ || param4 == §_-HF§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §_-Sj§ || param4 == §_-9k§)
         {
            _loc10_ = param1 + (param2 - param3);
         }
         else if(param4 == §_-yl§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§switch§)
               {
                  if(!this.§_-Zu§)
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
      
      public function §_-ga§(param1:Number, param2:Number) : void
      {
         this.§_-tw§ = param1 / this.§_-bx§;
         this.§_-Id§ = param2 / this.§_-NE§;
         var _loc3_:Number = this.§_-tw§;
         var _loc4_:Number = this.§_-Id§;
         this.§_-PU§();
         this.§_-hg§();
         var _loc5_:Number = this.§_-tw§;
         var _loc6_:Number = this.§_-Id§;
         this.§_-W5§();
         this.mX = this.§_-RF§(this.§_-bH§,param1,this.§_-bx§,this.§_-DT§,this.§_-y7§,this.§_-xj§,this.§_-tw§,_loc3_,_loc5_);
         this.mY = this.§_-RF§(this.§_-BA§,param2,this.§_-NE§,this.§super§,this.§_-dg§,this.§_-Vb§,this.§_-Id§,_loc4_,_loc6_);
      }
   }
}
