package §_-MN§
{
   public class §_-0I§
   {
      
      private static const §use §:String = "RIGHT";
      
      private static const §_-jO§:String = "LEFT";
      
      private static const §_-m8§:String = "TOP";
      
      private static const §_-01w§:String = "BOTTOM";
      
      private static const §_-pd§:String = "CENTER";
      
      private static const §_-zP§:String = "NORMAL";
      
      private static const §_-0F§:String = "SQRT";
      
      private static const §_-3Z§:String = "SQR";
       
      
      private var §_-09g§:Number = 0.0;
      
      private var §_-YU§:Number = 0.0;
      
      private var §_-I6§:Number = 1.0;
      
      private var §_-to§:Number = 1.0;
      
      private var §_-AC§:Number = 1.0;
      
      private var §_-bK§:Number = 1.0;
      
      private var §_-mb§:String = "LEFT";
      
      private var §_-01i§:String = "TOP";
      
      private var §_-Zq§:Boolean = false;
      
      private var §_-Wo§:Boolean = false;
      
      private var §else §:Boolean = false;
      
      private var §_-04S§:Boolean = false;
      
      private var §_-fu§:Boolean = false;
      
      private var §_-Ta§:Boolean = false;
      
      private var §_-0BX§:String = "NORMAL";
      
      private var §_-zt§:Number = 1.0;
      
      private var §_-mN§:Number = 1.0;
      
      private var §_-02z§:Number = 1.0;
      
      private var §_-e-§:Number = 1.0;
      
      private var §_-od§:Number = 1.0;
      
      private var §_-RA§:Number = 1.0;
      
      private var §_-c§:Number = 0.0;
      
      private var §_-l1§:Number = 0.0;
      
      private var §_-1e§:Number = 1.0;
      
      private var §_-1-§:Number = 1.0;
      
      public function §_-0I§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§_-09g§ = param1;
         this.§_-YU§ = param2;
         this.§_-c§ = param1;
         this.§_-l1§ = param2;
         this.§_-1e§ = param3;
         this.§_-1-§ = param4;
         this.§_-I6§ = param5;
         this.§_-to§ = param6;
         this.§_-AC§ = param5;
         this.§_-bK§ = param6;
         this.§_-0A§(param7);
         this.§_-9d§(param8);
         this.§_-Xh§(param9);
         this.§_-jN§(param10);
         this.§_-V5§(param11);
         this.§_-Vc§(param12);
         this.§_-0BX§ = param12;
      }
      
      public function get x() : Number
      {
         return this.§_-c§;
      }
      
      public function get y() : Number
      {
         return this.§_-l1§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§_-09g§ = this.§_-rP§(param1,this.§_-AC§,this.§_-I6§,this.§_-mb§,this.§_-Zq§,this.§_-Wo§,this.§_-zt§,this.§_-02z§,this.§_-od§);
      }
      
      public function set y(param1:Number) : void
      {
         this.§_-YU§ = this.§_-rP§(param1,this.§_-bK§,this.§_-to§,this.§_-01i§,this.§else §,this.§_-04S§,this.§_-mN§,this.§_-e-§,this.§_-RA§);
      }
      
      public function get scaleX() : Number
      {
         return this.§_-1e§ * this.§_-UH§;
      }
      
      public function get scaleY() : Number
      {
         return this.§_-1-§ * this.§_-Im§;
      }
      
      private function get §_-UH§() : Number
      {
         if(this.§_-Zq§ || this.§_-Wo§)
         {
            return this.§_-zt§;
         }
         return 1;
      }
      
      private function get §_-Im§() : Number
      {
         if(this.§else § || this.§_-04S§)
         {
            return this.§_-mN§;
         }
         return 1;
      }
      
      private function §_-0A§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §use § || param1 == §_-pd§)
            {
               this.§_-mb§ = param1;
            }
         }
      }
      
      private function §_-9d§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §_-01w§ || param1 == §_-pd§)
            {
               this.§_-01i§ = param1;
            }
         }
      }
      
      private function §_-Xh§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-Zq§ = true;
               this.§_-Wo§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§_-Zq§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§_-Wo§ = true;
            }
         }
      }
      
      private function §_-jN§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§else § = true;
               this.§_-04S§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§else § = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§_-04S§ = true;
            }
         }
      }
      
      private function §_-Vc§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §_-0F§)
            {
               this.§_-0BX§ = §_-0F§;
            }
            else if(param1.toUpperCase() == §_-3Z§)
            {
               this.§_-0BX§ = §_-3Z§;
            }
         }
      }
      
      private function §_-V5§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-fu§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§_-fu§ = true;
               this.§_-Ta§ = true;
            }
         }
      }
      
      private function §_-03b§() : void
      {
         if(this.§_-fu§)
         {
            if(this.§_-zt§ < this.§_-mN§)
            {
               if(!this.§_-Ta§)
               {
                  this.§_-mN§ = this.§_-zt§;
               }
               else
               {
                  this.§_-zt§ = this.§_-mN§;
               }
            }
            else if(!this.§_-Ta§)
            {
               this.§_-zt§ = this.§_-mN§;
            }
            else
            {
               this.§_-mN§ = this.§_-zt§;
            }
         }
      }
      
      private function §_-8N§() : void
      {
         if(!this.§_-Wo§ && this.§_-zt§ > 1)
         {
            this.§_-zt§ = 1;
         }
         else if(this.§_-Wo§ && !this.§_-Zq§ && this.§_-zt§ < 1)
         {
            this.§_-zt§ = 1;
         }
         if(!this.§_-04S§ && this.§_-mN§ > 1)
         {
            this.§_-mN§ = 1;
         }
         else if(this.§_-04S§ && !this.§else § && this.§_-mN§ < 1)
         {
            this.§_-mN§ = 1;
         }
      }
      
      private function §_-d5§() : void
      {
         if(this.§_-0BX§ == §_-0F§)
         {
            this.§_-zt§ = Math.sqrt(this.§_-zt§);
            this.§_-mN§ = Math.sqrt(this.§_-mN§);
         }
         else if(this.§_-0BX§ == §_-3Z§)
         {
            this.§_-zt§ *= this.§_-zt§;
            this.§_-mN§ *= this.§_-mN§;
         }
      }
      
      private function §_-rP§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §_-jO§ || param4 == §_-m8§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == §use § || param4 == §_-01w§)
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
         else if(param4 == §_-pd§)
         {
            _loc10_ = param1 - (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 / Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ = (param1 - param3 / 2 * (param2 / param3 - 1)) / Math.min(param9,param2 / param3);
               }
               else if(this.§_-fu§)
               {
                  if(!this.§_-Ta§)
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
      
      private function §_-rp§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §_-jO§ || param4 == §_-m8§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §use § || param4 == §_-01w§)
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
         else if(param4 == §_-pd§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§_-fu§)
               {
                  if(!this.§_-Ta§)
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
      
      public function §_-Vi§(param1:Number, param2:Number) : void
      {
         this.§_-AC§ = param1;
         this.§_-bK§ = param2;
         this.§_-zt§ = param1 / this.§_-I6§;
         this.§_-mN§ = param2 / this.§_-to§;
         this.§_-02z§ = this.§_-zt§;
         this.§_-e-§ = this.§_-mN§;
         this.§_-03b§();
         this.§_-8N§();
         this.§_-od§ = this.§_-zt§;
         this.§_-RA§ = this.§_-mN§;
         this.§_-d5§();
         this.§_-c§ = this.§_-rp§(this.§_-09g§,param1,this.§_-I6§,this.§_-mb§,this.§_-Zq§,this.§_-Wo§,this.§_-zt§,this.§_-02z§,this.§_-od§);
         this.§_-l1§ = this.§_-rp§(this.§_-YU§,param2,this.§_-to§,this.§_-01i§,this.§else §,this.§_-04S§,this.§_-mN§,this.§_-e-§,this.§_-RA§);
      }
   }
}
