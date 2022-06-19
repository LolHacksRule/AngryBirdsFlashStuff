package §=!7§
{
   import § `§.§2w§;
   import §]@§.DisplayObject;
   import §]@§.Sprite;
   
   public class §+!R§ extends §%f§
   {
       
      
      private var §8?§:String = "";
      
      private var §6!<§:Number = 1.0;
      
      private var §?G§:Number = 1.0;
      
      public function §+!R§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§8?§ = param3;
         this.§6!<§ = param4;
         this.§?G§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§2w§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§8?§))
            {
               _loc4_.scaleX = this.§6!<§ + (this.§?G§ - this.§6!<§) * this.§"!<§(param1);
               _loc4_.scaleY = this.§6!<§ + (this.§?G§ - this.§6!<§) * this.§"!<§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §"!<§(param1:Number) : Number
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
      
      override public function clone() : §%f§
      {
         return new §+!R§(time,duration,this.§8?§,this.§6!<§,this.§?G§);
      }
   }
}
