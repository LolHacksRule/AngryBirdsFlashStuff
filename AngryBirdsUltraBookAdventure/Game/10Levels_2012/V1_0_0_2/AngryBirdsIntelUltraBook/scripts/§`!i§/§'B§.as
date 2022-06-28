package §`!i§
{
   import §'!9§.DisplayObject;
   import §'!9§.Sprite;
   import §-w§.§,Q§;
   
   public class §'B§ extends §8d§
   {
       
      
      private var §!0§:String = "";
      
      private var §%!V§:Number = 1.0;
      
      private var §&!u§:Number = 1.0;
      
      public function §'B§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§!0§ = param3;
         this.§%!V§ = param4;
         this.§&!u§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§,Q§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§!0§))
            {
               _loc4_.scaleX = this.§%!V§ + (this.§&!u§ - this.§%!V§) * this.§'X§(param1);
               _loc4_.scaleY = this.§%!V§ + (this.§&!u§ - this.§%!V§) * this.§'X§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §'X§(param1:Number) : Number
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
      
      override public function clone() : §8d§
      {
         return new §'B§(time,duration,this.§!0§,this.§%!V§,this.§&!u§);
      }
   }
}
