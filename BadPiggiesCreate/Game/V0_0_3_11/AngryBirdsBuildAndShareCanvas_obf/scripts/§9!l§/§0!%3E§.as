package §9!l§
{
   import flash.display.Shape;
   import flash.filters.BlurFilter;
   import flash.utils.getTimer;
   
   public class §0!>§ extends Shape
   {
      
      private static var §@!2§:int;
       
      
      private const §3a§:int = 100;
      
      private const §8!G§:int = 500;
      
      private var §]!p§:int = 0;
      
      public function §0!>§(param1:int, param2:int)
      {
         super();
         if(getTimer() - §@!2§ < this.§3a§)
         {
            this.§]!p§ = this.§8!G§;
         }
         else
         {
            this.§]!p§ = 0;
            §@!2§ = getTimer();
         }
         this.x = param1;
         this.y = param2;
      }
      
      public function update(param1:int) : Boolean
      {
         this.§]!p§ += param1;
         if(this.§]!p§ >= this.§8!G§)
         {
            if(parent)
            {
               parent.removeChild(this);
            }
            return false;
         }
         graphics.clear();
         var _loc2_:Number = this.§]!p§ / this.§8!G§;
         graphics.lineStyle(2,16777215,1 - _loc2_);
         var _loc3_:int = -_loc2_ * 100;
         var _loc4_:int = -_loc3_ + _loc2_ * 100;
         graphics.drawRect(_loc3_,-_loc2_ * 100,_loc4_,_loc2_ * 200);
         filters = [new BlurFilter(4 * _loc2_,4 * _loc2_)];
         return true;
      }
   }
}
