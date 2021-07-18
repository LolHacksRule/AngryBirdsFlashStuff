package §^[§
{
   import flash.display.DisplayObject;
   import flash.filters.BitmapFilter;
   import flash.filters.GlowFilter;
   
   public class §[@§
   {
       
      
      protected var §8O§:BitmapFilter;
      
      public function §[@§(param1:BitmapFilter = null)
      {
         super();
         if(param1)
         {
            this.§8O§ = param1.clone();
         }
         else
         {
            this.§8O§ = new GlowFilter(16777215,0.8,8,8,6);
         }
      }
      
      public function §"!,§(param1:DisplayObject) : void
      {
         param1.filters = [this.§8O§.clone()];
      }
      
      public function §0k§(param1:DisplayObject) : void
      {
         param1.filters = [];
      }
   }
}
