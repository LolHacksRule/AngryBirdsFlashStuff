package §>[§
{
   import §=!E§.DisplayObject;
   import §=!E§.Sprite;
   import §]!C§.§0!d§;
   
   public class §0!;§ extends §%!U§
   {
       
      
      private var §3y§:String = "";
      
      private var §?!N§:Number = 1.0;
      
      private var §%!E§:Number = 1.0;
      
      public function §0!;§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§3y§ = param3;
         this.§?!N§ = param4;
         this.§%!E§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§0!d§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§3y§))
            {
               _loc4_.scaleX = this.§?!N§ + (this.§%!E§ - this.§?!N§) * this.§8!e§(param1);
               _loc4_.scaleY = this.§?!N§ + (this.§%!E§ - this.§?!N§) * this.§8!e§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §8!e§(param1:Number) : Number
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
      
      override public function clone() : §%!U§
      {
         return new §0!;§(time,duration,this.§3y§,this.§?!N§,this.§%!E§);
      }
   }
}
