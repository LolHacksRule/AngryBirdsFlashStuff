package §9!l§
{
   import flash.display.DisplayObject;
   import flash.filters.BitmapFilter;
   import flash.filters.GlowFilter;
   
   public class §[!&§
   {
       
      
      protected var §^A§:BitmapFilter;
      
      public function §[!&§(param1:BitmapFilter = null)
      {
         super();
         if(param1)
         {
            this.§^A§ = param1.clone();
         }
         else
         {
            this.§^A§ = new GlowFilter(16777215,0.8,8,8,6);
         }
      }
      
      public function §<e§(param1:DisplayObject) : void
      {
         param1.filters = [this.§^A§.clone()];
      }
      
      public function §-! §(param1:DisplayObject) : void
      {
         param1.filters = [];
      }
   }
}
