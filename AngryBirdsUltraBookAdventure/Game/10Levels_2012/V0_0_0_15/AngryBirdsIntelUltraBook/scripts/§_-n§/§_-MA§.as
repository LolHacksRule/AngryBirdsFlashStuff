package §_-n§
{
   import §_-8d§.§_-0FF§;
   import §_-uY§.DisplayObject;
   import §_-uY§.Sprite;
   
   public class §_-MA§ extends §_-tC§
   {
       
      
      private var §_-ml§:String = "";
      
      private var §_-Uw§:Number = 1.0;
      
      private var §_-0Cd§:Number = 1.0;
      
      public function §_-MA§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§_-ml§ = param3;
         this.§_-Uw§ = param4;
         this.§_-0Cd§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§_-0FF§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§_-ml§))
            {
               _loc4_.scaleX = this.§_-Uw§ + (this.§_-0Cd§ - this.§_-Uw§) * this.§_-vp§(param1);
               _loc4_.scaleY = this.§_-Uw§ + (this.§_-0Cd§ - this.§_-Uw§) * this.§_-vp§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §_-vp§(param1:Number) : Number
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
      
      override public function clone() : §_-tC§
      {
         return new §_-MA§(time,duration,this.§_-ml§,this.§_-Uw§,this.§_-0Cd§);
      }
   }
}
