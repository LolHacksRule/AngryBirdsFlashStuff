package §_-16§
{
   public class § do§
   {
      
      private static const §_-KX§:String = "RIGHT";
      
      private static const §_-ck§:String = "LEFT";
      
      private static const §_-Hn§:String = "TOP";
      
      private static const §_-wP§:String = "BOTTOM";
      
      private static const §_-C4§:String = "CENTER";
      
      private static const §_-yu§:String = "NORMAL";
      
      private static const §_-MG§:String = "SQRT";
      
      private static const §_-97§:String = "SQR";
       
      
      private var §_-5H§:Number = 0.0;
      
      private var §_-fB§:Number = 0.0;
      
      private var §_-os§:Number = 0.0;
      
      private var §_-jH§:Number = 0.0;
      
      private var §_-E9§:String = "LEFT";
      
      private var §_-z1§:String = "TOP";
      
      private var §_-qo§:Boolean = false;
      
      private var §_-0-H§:Boolean = false;
      
      private var §_-uy§:Boolean = false;
      
      private var §_-CS§:Boolean = false;
      
      private var §_-mJ§:Boolean = false;
      
      private var §_-9d§:Boolean = false;
      
      private var §_-8M§:String = "NORMAL";
      
      private var §_-7X§:Number = 0.0;
      
      private var §_-UV§:Number = 0.0;
      
      private var mX:Number = 0.0;
      
      private var mY:Number = 0.0;
      
      private var §_-wX§:Number = 1.0;
      
      private var §_-GM§:Number = 1.0;
      
      public function § do§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.§_-5H§ = param1;
         this.§_-fB§ = param2;
         this.§_-wX§ = param3;
         this.§_-GM§ = param4;
         this.§_-os§ = param5;
         this.§_-jH§ = param6;
         this.§_-gs§(param7);
         this.§_-vA§(param8);
         this.§_-Kp§(param9);
         this.§_-Fa§(param10);
         this.§_-013§(param11);
         this.§_-gj§(param12);
         this.§_-8M§ = param12;
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
         this.§_-5H§ = param1;
      }
      
      public function set y(param1:Number) : void
      {
         this.§_-fB§ = param1;
      }
      
      public function get scaleX() : Number
      {
         if(this.§_-qo§ || this.§_-0-H§)
         {
            return this.§_-7X§ * this.§_-wX§;
         }
         return this.§_-wX§;
      }
      
      public function get scaleY() : Number
      {
         if(this.§_-uy§ || this.§_-CS§)
         {
            return this.§_-UV§ * this.§_-GM§;
         }
         return this.§_-GM§;
      }
      
      private function §_-gs§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §_-KX§ || param1 == §_-C4§)
            {
               this.§_-E9§ = param1;
            }
         }
      }
      
      private function §_-vA§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §_-wP§ || param1 == §_-C4§)
            {
               this.§_-z1§ = param1;
            }
         }
      }
      
      private function §_-Kp§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-qo§ = true;
               this.§_-0-H§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§_-qo§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§_-0-H§ = true;
            }
         }
      }
      
      private function §_-Fa§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-uy§ = true;
               this.§_-CS§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§_-uy§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§_-CS§ = true;
            }
         }
      }
      
      private function §_-gj§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §_-MG§)
            {
               this.§_-8M§ = §_-MG§;
            }
            else if(param1.toUpperCase() == §_-97§)
            {
               this.§_-8M§ = §_-97§;
            }
         }
      }
      
      private function §_-013§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-mJ§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§_-mJ§ = true;
               this.§_-9d§ = true;
            }
         }
      }
      
      private function §_-Ga§() : void
      {
         if(this.§_-mJ§)
         {
            if(this.§_-7X§ < this.§_-UV§)
            {
               if(!this.§_-9d§)
               {
                  this.§_-UV§ = this.§_-7X§;
               }
               else
               {
                  this.§_-7X§ = this.§_-UV§;
               }
            }
            else if(!this.§_-9d§)
            {
               this.§_-7X§ = this.§_-UV§;
            }
            else
            {
               this.§_-UV§ = this.§_-7X§;
            }
         }
      }
      
      private function §_-Gx§() : void
      {
         if(!this.§_-0-H§ && this.§_-7X§ > 1)
         {
            this.§_-7X§ = 1;
         }
         else if(this.§_-0-H§ && !this.§_-qo§ && this.§_-7X§ < 1)
         {
            this.§_-7X§ = 1;
         }
         if(!this.§_-CS§ && this.§_-UV§ > 1)
         {
            this.§_-UV§ = 1;
         }
         else if(this.§_-CS§ && !this.§_-uy§ && this.§_-UV§ < 1)
         {
            this.§_-UV§ = 1;
         }
      }
      
      private function §_-0-a§() : void
      {
         if(this.§_-8M§ == §_-MG§)
         {
            this.§_-7X§ = Math.sqrt(this.§_-7X§);
            this.§_-UV§ = Math.sqrt(this.§_-UV§);
         }
         else if(this.§_-8M§ == §_-97§)
         {
            this.§_-7X§ *= this.§_-7X§;
            this.§_-UV§ *= this.§_-UV§;
         }
      }
      
      private function §_-Ro§(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == §_-ck§ || param4 == §_-Hn§)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 * param7;
            }
         }
         else if(param4 == §_-KX§ || param4 == §_-wP§)
         {
            _loc10_ = param1 + (param2 - param3);
         }
         else if(param4 == §_-C4§)
         {
            _loc10_ = param1 + (param2 - param3) / 2;
            if(param5 || param6)
            {
               _loc10_ = param1 * Math.min(param9,param2 / param3);
               if(!param6 && param7 >= 1)
               {
                  _loc10_ += param3 / 2 * (param2 / param3 - 1);
               }
               else if(this.§_-mJ§)
               {
                  if(!this.§_-9d§)
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
      
      public function §_-g§(param1:Number, param2:Number) : void
      {
         this.§_-7X§ = param1 / this.§_-os§;
         this.§_-UV§ = param2 / this.§_-jH§;
         var _loc3_:Number = this.§_-7X§;
         var _loc4_:Number = this.§_-UV§;
         this.§_-Ga§();
         this.§_-Gx§();
         var _loc5_:Number = this.§_-7X§;
         var _loc6_:Number = this.§_-UV§;
         this.§_-0-a§();
         this.mX = this.§_-Ro§(this.§_-5H§,param1,this.§_-os§,this.§_-E9§,this.§_-qo§,this.§_-0-H§,this.§_-7X§,_loc3_,_loc5_);
         this.mY = this.§_-Ro§(this.§_-fB§,param2,this.§_-jH§,this.§_-z1§,this.§_-uy§,this.§_-CS§,this.§_-UV§,_loc4_,_loc6_);
      }
   }
}
