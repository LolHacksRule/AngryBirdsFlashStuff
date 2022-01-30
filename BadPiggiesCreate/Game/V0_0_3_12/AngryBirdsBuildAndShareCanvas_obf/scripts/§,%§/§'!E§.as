package §,%§
{
   import §@!-§.§3"1§;
   import §@!i§.DisplayObject;
   import §@!i§.Sprite;
   
   public class §'!E§ extends §"!2§
   {
       
      
      private var §?!p§:String = "";
      
      private var §="9§:Number = 1.0;
      
      private var §+">§:Number = 1.0;
      
      public function §'!E§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§?!p§ = param3;
         this.§="9§ = param4;
         this.§+">§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§3"1§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§?!p§))
            {
               _loc4_.scaleX = this.§="9§ + (this.§+">§ - this.§="9§) * this.§%"§(param1);
               _loc4_.scaleY = this.§="9§ + (this.§+">§ - this.§="9§) * this.§%"§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §%"§(param1:Number) : Number
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
      
      override public function clone() : §"!2§
      {
         return new §'!E§(time,duration,this.§?!p§,this.§="9§,this.§+">§);
      }
   }
}
