package §8!7§
{
   import flash.display.DisplayObject;
   import flash.filters.BitmapFilter;
   import flash.filters.GlowFilter;
   
   public class §`!#§
   {
       
      
      protected var §+Y§:BitmapFilter;
      
      public function §`!#§(param1:BitmapFilter = null)
      {
         super();
         if(param1)
         {
            this.§+Y§ = param1.clone();
         }
         else
         {
            this.§+Y§ = new GlowFilter(16777215,0.8,8,8,6);
         }
      }
      
      public function §;!@§(param1:DisplayObject) : void
      {
         param1.filters = [this.§+Y§.clone()];
      }
      
      public function §8!S§(param1:DisplayObject) : void
      {
         param1.filters = [];
      }
   }
}
