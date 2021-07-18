package §^!k§
{
   import flash.display.DisplayObject;
   import flash.filters.BitmapFilter;
   import flash.filters.GlowFilter;
   
   public class §1",§
   {
       
      
      protected var §]!q§:BitmapFilter;
      
      public function §1",§(param1:BitmapFilter = null)
      {
         super();
         if(param1)
         {
            this.§]!q§ = param1.clone();
         }
         else
         {
            this.§]!q§ = new GlowFilter(16777215,0.8,8,8,6);
         }
      }
      
      public function §#!>§(param1:DisplayObject) : void
      {
         param1.filters = [this.§]!q§.clone()];
      }
      
      public function §8"-§(param1:DisplayObject) : void
      {
         param1.filters = [];
      }
   }
}
