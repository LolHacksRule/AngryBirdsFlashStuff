package §^H§
{
   import flash.display.DisplayObject;
   import flash.filters.BitmapFilter;
   import flash.filters.GlowFilter;
   
   public class §8=§
   {
       
      
      protected var §66§:BitmapFilter;
      
      public function §8=§(param1:BitmapFilter = null)
      {
         super();
         if(param1)
         {
            this.§66§ = param1.clone();
         }
         else
         {
            this.§66§ = new GlowFilter(16777215,0.8,8,8,6);
         }
      }
      
      public function §^!G§(param1:DisplayObject) : void
      {
         param1.filters = [this.§66§.clone()];
      }
      
      public function §;w§(param1:DisplayObject) : void
      {
         param1.filters = [];
      }
   }
}
