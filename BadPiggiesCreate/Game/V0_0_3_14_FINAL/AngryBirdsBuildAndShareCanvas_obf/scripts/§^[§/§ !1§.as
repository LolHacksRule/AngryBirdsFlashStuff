package §^[§
{
   import flash.display.Shape;
   import flash.filters.BlurFilter;
   import flash.utils.getTimer;
   
   public class § !1§ extends Shape
   {
      
      private static var §8!§:int;
       
      
      private const §^!0§:int = 100;
      
      private const §-"'§:int = 500;
      
      private var §7A§:int = 0;
      
      public function § !1§(param1:int, param2:int)
      {
         super();
         if(getTimer() - §8!§ < this.§^!0§)
         {
            this.§7A§ = this.§-"'§;
         }
         else
         {
            this.§7A§ = 0;
            §8!§ = getTimer();
         }
         this.x = param1;
         this.y = param2;
      }
      
      public function update(param1:int) : Boolean
      {
         this.§7A§ += param1;
         if(this.§7A§ >= this.§-"'§)
         {
            if(parent)
            {
               parent.removeChild(this);
            }
            return false;
         }
         graphics.clear();
         var _loc2_:Number = this.§7A§ / this.§-"'§;
         graphics.lineStyle(2,16777215,1 - _loc2_);
         var _loc3_:int = -_loc2_ * 100;
         var _loc4_:int = -_loc3_ + _loc2_ * 100;
         graphics.drawRect(_loc3_,-_loc2_ * 100,_loc4_,_loc2_ * 200);
         filters = [new BlurFilter(4 * _loc2_,4 * _loc2_)];
         return true;
      }
   }
}
