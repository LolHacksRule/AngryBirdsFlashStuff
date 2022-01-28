package §_-wG§
{
   import §_-3b§.§_-Og§;
   import §_-SE§.DisplayObject;
   import §_-SE§.Sprite;
   
   public class §_-io§ extends include
   {
       
      
      private var §_-cV§:String = "";
      
      private var §_-NN§:Number = 1.0;
      
      private var §_-at§:Number = 1.0;
      
      public function §_-io§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§_-cV§ = param3;
         this.§_-NN§ = param4;
         this.§_-at§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§_-Og§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§_-cV§))
            {
               _loc4_.scaleX = this.§_-NN§ + (this.§_-at§ - this.§_-NN§) * this.§_-G1§(param1);
               _loc4_.scaleY = this.§_-NN§ + (this.§_-at§ - this.§_-NN§) * this.§_-G1§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §_-G1§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         _loc2_ *= 2;
         if(_loc2_ < 1)
         {
            return Math.pow(_loc2_,3) / 2;
         }
         _loc2_ -= 2;
         return (Math.pow(_loc2_,3) + 2) / 2;
      }
      
      override public function clone() : include
      {
         return new §_-io§(time,duration,this.§_-cV§,this.§_-NN§,this.§_-at§);
      }
   }
}
