package §_-CR§
{
   import §_-5p§.§_-Kf§;
   import §_-Ls§.DisplayObject;
   import §_-Ls§.Sprite;
   
   public class §_-Vs§ extends §_-Lj§
   {
       
      
      private var §_-NU§:String = "";
      
      private var §_-v3§:Number = 1.0;
      
      private var §_-mk§:Number = 1.0;
      
      public function §_-Vs§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§_-NU§ = param3;
         this.§_-v3§ = param4;
         this.§_-mk§ = param5;
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
               _loc4_.scaleX = this.§_-v3§ + (this.§_-mk§ - this.§_-v3§) * this.§_-ba§(param1);
               _loc4_.scaleY = this.§_-v3§ + (this.§_-mk§ - this.§_-v3§) * this.§_-ba§(param1);
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
         if(duration <= 0)
         {
            return 1;
         }
         var _loc2_:Number = (param1 - this.time) / duration;
         _loc2_ *= 2;
         if(_loc2_ < 1)
         {
            return Math.pow(_loc2_,3) / 2;
         }
         _loc2_ -= 2;
         return (Math.pow(_loc2_,3) + 2) / 2;
      }
      
      override public function clone() : §_-Lj§
      {
         return new §_-Vs§(time,duration,this.§_-NU§,this.§_-v3§,this.§_-mk§);
      }
   }
}
