package §9!z§
{
   import flash.display.DisplayObject;
   import flash.filters.BitmapFilter;
   import flash.filters.GlowFilter;
   
   public class §>!w§
   {
       
      
      protected var §[P§:BitmapFilter;
      
      public function §>!w§(param1:BitmapFilter = null)
      {
         super();
         if(param1)
         {
            this.§[P§ = param1.clone();
         }
         else
         {
            this.§[P§ = new GlowFilter(16777215,0.8,8,8,6);
         }
      }
      
      public function §&!S§(param1:DisplayObject) : void
      {
         param1.filters = [this.§[P§.clone()];
      }
      
      public function §8z§(param1:DisplayObject) : void
      {
         param1.filters = [];
      }
   }
}
