package §9!z§
{
   import flash.display.Shape;
   import flash.filters.BlurFilter;
   import flash.utils.getTimer;
   
   public class §=T§ extends Shape
   {
      
      private static var §@!]§:int;
       
      
      private const § set§:int = 100;
      
      private const §%"0§:int = 500;
      
      private var §;k§:int = 0;
      
      public function §=T§(param1:int, param2:int)
      {
         super();
         if(getTimer() - §@!]§ < this.§ set§)
         {
            this.§;k§ = this.§%"0§;
         }
         else
         {
            this.§;k§ = 0;
            §@!]§ = getTimer();
         }
         this.x = param1;
         this.y = param2;
      }
      
      public function update(param1:int) : Boolean
      {
         this.§;k§ += param1;
         if(this.§;k§ >= this.§%"0§)
         {
            if(parent)
            {
               parent.removeChild(this);
            }
            return false;
         }
         graphics.clear();
         var _loc2_:Number = this.§;k§ / this.§%"0§;
         graphics.lineStyle(2,16777215,1 - _loc2_);
         var _loc3_:int = -_loc2_ * 100;
         var _loc4_:int = -_loc3_ + _loc2_ * 100;
         graphics.drawRect(_loc3_,-_loc2_ * 100,_loc4_,_loc2_ * 200);
         filters = [new BlurFilter(4 * _loc2_,4 * _loc2_)];
         return true;
      }
   }
}
