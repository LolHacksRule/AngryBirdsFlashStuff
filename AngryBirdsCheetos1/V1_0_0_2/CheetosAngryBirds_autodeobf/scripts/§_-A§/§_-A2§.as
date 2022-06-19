package §_-A§
{
   public class §_-A2§
   {
      
      private static const §_-Fl§:String = "RIGHT";
      
      private static const §throw§:String = "LEFT";
      
      private static const §_-YR§:String = "TOP";
      
      private static const §_-KY§:String = "BOTTOM";
      
      private static const §_-cU§:String = "CENTER";
      
      private static const §_-Uk§:String = "NORMAL";
      
      private static const §_-MQ§:String = "SQRT";
      
      private static const §_-if§:String = "SQR";
       
      
      private var §_-DC§:Number = 0.0;
      
      private var §_-BR§:Number = 0.0;
      
      private var §_-DJ§:Number = 0.0;
      
      private var §_-dG§:Number = 0.0;
      
      private var §_-5h§:String = "LEFT";
      
      private var §_-4J§:String = "TOP";
      
      private var §_-ZM§:Boolean = false;
      
      private var §_-Sw§:Boolean = false;
      
      private var §_-Bo§:Boolean = false;
      
      private var §_-E0§:Boolean = false;
      
      private var §_-t8§:Boolean = false;
      
      private var §_-i§:Boolean = false;
      
      private var §_-EO§:String = "NORMAL";
      
      private var §_-L6§:Number = 0.0;
      
      private var §use§:Number = 0.0;
      
      private var mX:Number = 0.0;
      
      private var mY:Number = 0.0;
      
      private var §_-J4§:Number = 1.0;
      
      private var §_-0J§:Number = 1.0;
      
      public function §_-A2§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§_-DC§ = param1;
         this.§_-BR§ = param2;
         this.§_-J4§ = param3;
         this.§_-0J§ = param4;
         this.§_-DJ§ = param5;
         this.§_-dG§ = param6;
         this.§_-Px§(param7);
         this.§_-ra§(param8);
         this.§_-81§(param9);
         this.§_-um§(param10);
         this.§_-oH§(param11);
         this.§_-eg§(param12);
         this.§_-EO§ = param12;
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
         this.§_-DC§ = param1;
      }
      
      public function set y(param1:Number) : void
      {
         this.§_-BR§ = param1;
      }
      
      public function get scaleX() : Number
      {
         if(this.§_-ZM§ || this.§_-Sw§)
         {
            return this.§_-L6§ * this.§_-J4§;
         }
         return this.§_-J4§;
      }
      
      public function get scaleY() : Number
      {
         if(this.§_-Bo§ || this.§_-E0§)
         {
            return this.§use§ * this.§_-0J§;
         }
         return this.§_-0J§;
      }
      
      private function §_-Px§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §_-Fl§ || param1 == §_-cU§)
            {
               this.§_-5h§ = param1;
            }
         }
      }
      
      private function §_-ra§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §_-KY§ || param1 == §_-cU§)
            {
               this.§_-4J§ = param1;
            }
         }
      }
      
      private function §_-81§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-ZM§ = true;
               this.§_-Sw§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§_-ZM§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§_-Sw§ = true;
            }
         }
      }
      
      private function §_-um§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-Bo§ = true;
               this.§_-E0§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§_-Bo§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§_-E0§ = true;
            }
         }
      }
      
      private function §_-eg§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §_-MQ§)
            {
               this.§_-EO§ = §_-MQ§;
            }
            else if(param1.toUpperCase() == §_-if§)
            {
               this.§_-EO§ = §_-if§;
            }
         }
      }
      
      private function §_-oH§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-t8§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§_-t8§ = true;
               this.§_-i§ = true;
            }
         }
      }
      
      private function §_-wY§() : void
      {
         if(this.§_-t8§)
         {
            if(this.§_-L6§ < this.§use§)
            {
               if(!this.§_-i§)
               {
                  this.§use§ = this.§_-L6§;
               }
               else
               {
                  this.§_-L6§ = this.§use§;
               }
            }
            else if(!this.§_-i§)
            {
               this.§_-L6§ = this.§use§;
            }
            else
            {
               this.§use§ = this.§_-L6§;
            }
         }
      }
      
      private function §_-GT§() : void
      {
         if(!this.§_-Sw§ && this.§_-L6§ > 1)
         {
            this.§_-L6§ = 1;
         }
         else if(this.§_-Sw§ && !this.§_-ZM§ && this.§_-L6§ < 1)
         {
            this.§_-L6§ = 1;
         }
         if(!this.§_-E0§ && this.§use§ > 1)
         {
            this.§use§ = 1;
         }
         else if(this.§_-E0§ && !this.§_-Bo§ && this.§use§ < 1)
         {
            this.§use§ = 1;
         }
      }
      
      private function §_-vk§() : void
      {
         if(this.§_-EO§ == §_-MQ§)
         {
            this.§_-L6§ = Math.sqrt(this.§_-L6§);
            this.§use§ = Math.sqrt(this.§use§);
         }
         else if(this.§_-EO§ == §_-if§)
         {
            this.§_-L6§ *= this.§_-L6§;
            this.§use§ *= this.§use§;
         }
      }
      
      private function §_-VJ§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §throw§ || param4 == §_-YR§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §_-Fl§ || param4 == §_-KY§)
         {
            _loc10_ = param1 + (param2 - param3);
         }
         else if(param4 == §_-cU§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§_-t8§)
               {
                  if(!this.§_-i§)
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
      
      public function §_-dk§(param1:Number, param2:Number) : void
      {
         this.§_-L6§ = param1 / this.§_-DJ§;
         this.§use§ = param2 / this.§_-dG§;
         var _loc3_:Number = this.§_-L6§;
         var _loc4_:Number = this.§use§;
         this.§_-wY§();
         this.§_-GT§();
         var _loc5_:Number = this.§_-L6§;
         var _loc6_:Number = this.§use§;
         this.§_-vk§();
         this.mX = this.§_-VJ§(this.§_-DC§,param1,this.§_-DJ§,this.§_-5h§,this.§_-ZM§,this.§_-Sw§,this.§_-L6§,_loc3_,_loc5_);
         this.mY = this.§_-VJ§(this.§_-BR§,param2,this.§_-dG§,this.§_-4J§,this.§_-Bo§,this.§_-E0§,this.§use§,_loc4_,_loc6_);
      }
   }
}
