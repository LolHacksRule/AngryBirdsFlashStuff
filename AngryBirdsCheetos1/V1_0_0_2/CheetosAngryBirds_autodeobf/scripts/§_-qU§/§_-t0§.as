package §_-qU§
{
   import §_-GY§.DisplayObject;
   import §_-GY§.Sprite;
   import §_-my§.§_-V0§;
   
   public class §_-t0§ extends §_-BV§
   {
       
      
      private var §_-1d§:String = "";
      
      private var §_-xc§:Number = 1.0;
      
      private var §_-fP§:Number = 1.0;
      
      public function §_-t0§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§_-1d§ = param3;
         this.§_-xc§ = param4;
         this.§_-fP§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§_-V0§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§_-1d§))
            {
               _loc4_.scaleX = this.§_-xc§ + (this.§_-fP§ - this.§_-xc§) * this.§_-lx§(param1);
               _loc4_.scaleY = this.§_-xc§ + (this.§_-fP§ - this.§_-xc§) * this.§_-lx§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §_-lx§(param1:Number) : Number
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
      
      override public function clone() : §_-BV§
      {
         return new §_-t0§(time,duration,this.§_-1d§,this.§_-xc§,this.§_-fP§);
      }
   }
}
