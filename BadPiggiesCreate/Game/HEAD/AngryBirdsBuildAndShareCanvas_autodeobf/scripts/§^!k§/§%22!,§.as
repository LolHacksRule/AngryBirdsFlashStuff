package §^!k§
{
   import flash.display.Shape;
   import flash.filters.BlurFilter;
   import flash.utils.getTimer;
   
   public class §"!,§ extends Shape
   {
      
      private static var §8!O§:int;
       
      
      private const §<!T§:int = 100;
      
      private const §3"<§:int = 500;
      
      private var §9R§:int = 0;
      
      public function §"!,§(param1:int, param2:int)
      {
         super();
         if(getTimer() - §8!O§ < this.§<!T§)
         {
            this.§9R§ = this.§3"<§;
         }
         else
         {
            this.§9R§ = 0;
            §8!O§ = getTimer();
         }
         this.x = param1;
         this.y = param2;
      }
      
      public function update(param1:int) : Boolean
      {
         this.§9R§ += param1;
         if(this.§9R§ >= this.§3"<§)
         {
            if(parent)
            {
               parent.removeChild(this);
            }
            return false;
         }
         graphics.clear();
         var _loc2_:Number = this.§9R§ / this.§3"<§;
         graphics.lineStyle(2,16777215,1 - _loc2_);
         var _loc3_:int = -_loc2_ * 100;
         var _loc4_:int = -_loc3_ + _loc2_ * 100;
         graphics.drawRect(_loc3_,-_loc2_ * 100,_loc4_,_loc2_ * 200);
         filters = [new BlurFilter(4 * _loc2_,4 * _loc2_)];
         return true;
      }
   }
}
