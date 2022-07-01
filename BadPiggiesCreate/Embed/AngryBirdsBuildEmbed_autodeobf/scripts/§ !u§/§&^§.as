package § !u§
{
   import flash.display.DisplayObject;
   import flash.filters.BitmapFilter;
   import flash.filters.GlowFilter;
   
   public class §&^§
   {
       
      
      protected var §!!#§:BitmapFilter;
      
      public function §&^§(param1:BitmapFilter = null)
      {
         super();
         if(param1)
         {
            this.§!!#§ = param1.clone();
         }
         else
         {
            this.§!!#§ = new GlowFilter(16777215,1,8,8,6);
         }
      }
      
      public function §@!C§(param1:DisplayObject) : void
      {
         param1.filters = [this.§!!#§.clone()];
      }
      
      public function § B§(param1:DisplayObject) : void
      {
         param1.filters = [];
      }
   }
}
