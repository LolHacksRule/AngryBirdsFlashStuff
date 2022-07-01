package §;W§
{
   import flash.display.DisplayObject;
   import flash.filters.BitmapFilter;
   import flash.filters.GlowFilter;
   
   public class §,!e§
   {
       
      
      protected var §-!v§:BitmapFilter;
      
      public function §,!e§(param1:BitmapFilter = null)
      {
         super();
         if(param1)
         {
            this.§-!v§ = param1.clone();
         }
         else
         {
            this.§-!v§ = new GlowFilter(16777215,0.8,8,8,6);
         }
      }
      
      public function §;@§(param1:DisplayObject) : void
      {
         param1.filters = [this.§-!v§.clone()];
      }
      
      public function §"#§(param1:DisplayObject) : void
      {
         param1.filters = [];
      }
   }
}
