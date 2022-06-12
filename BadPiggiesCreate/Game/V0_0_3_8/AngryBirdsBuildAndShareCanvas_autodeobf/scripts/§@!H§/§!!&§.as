package §@!H§
{
   import flash.display.Shape;
   import flash.filters.BlurFilter;
   import flash.utils.getTimer;
   
   public class §!!&§ extends Shape
   {
      
      private static var §4%§:int;
       
      
      private const §6"'§:int = 100;
      
      private const §^!A§:int = 500;
      
      private var §<h§:int = 0;
      
      public function §!!&§(param1:int, param2:int)
      {
         super();
         if(getTimer() - §4%§ < this.§6"'§)
         {
            this.§<h§ = this.§^!A§;
         }
         else
         {
            this.§<h§ = 0;
            §4%§ = getTimer();
         }
         this.x = param1;
         this.y = param2;
      }
      
      public function update(param1:int) : Boolean
      {
         this.§<h§ += param1;
         if(this.§<h§ >= this.§^!A§)
         {
            if(parent)
            {
               parent.removeChild(this);
            }
            return false;
         }
         graphics.clear();
         var _loc2_:Number = this.§<h§ / this.§^!A§;
         graphics.lineStyle(2,16777215,1 - _loc2_);
         var _loc3_:int = -_loc2_ * 100;
         var _loc4_:int = -_loc3_ + _loc2_ * 100;
         graphics.drawRect(_loc3_,-_loc2_ * 100,_loc4_,_loc2_ * 200);
         filters = [new BlurFilter(4 * _loc2_,4 * _loc2_)];
         return true;
      }
   }
}
