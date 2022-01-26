package §[!8§
{
   import §&V§.§,w§;
   import §@!=§.DisplayObject;
   import §@!=§.Sprite;
   
   public class §#d§ extends §-u§
   {
       
      
      private var §'+§:String = "";
      
      private var §45§:Number = 1.0;
      
      private var §#i§:Number = 1.0;
      
      public function §#d§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.§'+§ = param3;
         this.§45§ = param4;
         this.§#i§ = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§,w§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§'+§))
            {
               _loc4_.scaleX = this.§45§ + (this.§#i§ - this.§45§) * this.§>!-§(param1);
               _loc4_.scaleY = this.§45§ + (this.§#i§ - this.§45§) * this.§>!-§(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §>!-§(param1:Number) : Number
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
      
      override public function clone() : §-u§
      {
         return new §#d§(time,duration,this.§'+§,this.§45§,this.§#i§);
      }
   }
}
