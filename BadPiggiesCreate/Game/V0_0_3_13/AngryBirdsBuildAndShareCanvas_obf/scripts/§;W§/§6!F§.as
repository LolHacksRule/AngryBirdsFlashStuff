package §;W§
{
   import flash.display.Shape;
   import flash.filters.BlurFilter;
   import flash.utils.getTimer;
   
   public class §6!F§ extends Shape
   {
      
      private static var §&l§:int;
       
      
      private const §7I§:int = 100;
      
      private const §"!!§:int = 500;
      
      private var §[!#§:int = 0;
      
      public function §6!F§(param1:int, param2:int)
      {
         super();
         if(getTimer() - §&l§ < this.§7I§)
         {
            this.§[!#§ = this.§"!!§;
         }
         else
         {
            this.§[!#§ = 0;
            §&l§ = getTimer();
         }
         this.x = param1;
         this.y = param2;
      }
      
      public function update(param1:int) : Boolean
      {
         this.§[!#§ += param1;
         if(this.§[!#§ >= this.§"!!§)
         {
            if(parent)
            {
               parent.removeChild(this);
            }
            return false;
         }
         graphics.clear();
         var _loc2_:Number = this.§[!#§ / this.§"!!§;
         graphics.lineStyle(2,16777215,1 - _loc2_);
         var _loc3_:int = -_loc2_ * 100;
         var _loc4_:int = -_loc3_ + _loc2_ * 100;
         graphics.drawRect(_loc3_,-_loc2_ * 100,_loc4_,_loc2_ * 200);
         filters = [new BlurFilter(4 * _loc2_,4 * _loc2_)];
         return true;
      }
   }
}
