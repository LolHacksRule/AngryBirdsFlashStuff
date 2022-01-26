package §_-CR§
{
   import §_-5p§.§_-Kf§;
   import §_-Ls§.DisplayObject;
   import §_-Ls§.Sprite;
   
   public class §_-n3§ extends §_-Lj§
   {
      
      public static const §_-jC§:Number = 1024;
      
      public static const §_-0-3§:Number = 658;
      
      public static const §_-O6§:Number = 55;
      
      public static const §_-jr§:String = "cubic_in_out";
      
      public static const §_-yv§:String = "sin_in_out";
      
      public static const §_-nA§:String = "none";
       
      
      private var §_-NU§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §_-aC§:Number;
      
      private var §_-3v§:Number;
      
      private var §_-A8§:Boolean = true;
      
      private var §_-cR§:String = "cubic_in_out";
      
      public function §_-n3§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§_-NU§ = param3;
         this.mX = param4;
         this.mY = param5;
         this.§_-cR§ = param6;
      }
      
      public function set §_-P6§(param1:Boolean) : void
      {
         this.§_-A8§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§_-Kf§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§_-NU§))
            {
               if(_loc4_.name == §_-Sq§.§_-i2§)
               {
                  if(this.§_-A8§)
                  {
                     _loc4_.x = -this.§_-5U§() * this.§_-ba§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§_-5U§() * this.§_-ba§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.mX;
                  _loc4_.y -= this.mY;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §_-ba§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§_-cR§)
         {
            case §_-jr§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §_-yv§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §_-5U§() : Number
      {
         if(this.§_-A8§)
         {
            return this.§_-aC§ - §_-jC§;
         }
         return this.§_-3v§ - §_-0-3§;
      }
      
      public function §_-Ql§(param1:Number, param2:Number) : void
      {
         this.§_-aC§ = param1;
         this.§_-3v§ = param2;
      }
      
      override public function clone() : §_-Lj§
      {
         var _loc1_:§_-n3§ = new §_-n3§(time,duration,this.§_-NU§,this.mX,this.mY,this.§_-cR§);
         _loc1_.§_-aC§ = this.§_-aC§;
         _loc1_.§_-3v§ = this.§_-3v§;
         _loc1_.§_-A8§ = this.§_-A8§;
         return _loc1_;
      }
   }
}
