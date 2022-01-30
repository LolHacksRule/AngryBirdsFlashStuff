package §^H§
{
   import flash.display.Shape;
   import flash.filters.BlurFilter;
   import flash.utils.getTimer;
   
   public class §`J§ extends Shape
   {
      
      private static var §+",§:int;
       
      
      private const §81§:int = 100;
      
      private const §2!F§:int = 500;
      
      private var §&!w§:int = 0;
      
      public function §`J§(param1:int, param2:int)
      {
         super();
         if(getTimer() - §+",§ < this.§81§)
         {
            this.§&!w§ = this.§2!F§;
         }
         else
         {
            this.§&!w§ = 0;
            §+",§ = getTimer();
         }
         this.x = param1;
         this.y = param2;
      }
      
      public function update(param1:int) : Boolean
      {
         this.§&!w§ += param1;
         if(this.§&!w§ >= this.§2!F§)
         {
            if(parent)
            {
               parent.removeChild(this);
            }
            return false;
         }
         graphics.clear();
         var _loc2_:Number = this.§&!w§ / this.§2!F§;
         graphics.lineStyle(2,16777215,1 - _loc2_);
         var _loc3_:int = -_loc2_ * 100;
         var _loc4_:int = -_loc3_ + _loc2_ * 100;
         graphics.drawRect(_loc3_,-_loc2_ * 100,_loc4_,_loc2_ * 200);
         filters = [new BlurFilter(4 * _loc2_,4 * _loc2_)];
         return true;
      }
   }
}
