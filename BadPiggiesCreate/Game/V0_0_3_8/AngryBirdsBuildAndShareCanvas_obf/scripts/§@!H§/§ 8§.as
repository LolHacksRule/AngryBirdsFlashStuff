package §@!H§
{
   import flash.display.DisplayObject;
   import flash.filters.BitmapFilter;
   import flash.filters.GlowFilter;
   
   public class § 8§
   {
       
      
      protected var §5!k§:BitmapFilter;
      
      public function § 8§(param1:BitmapFilter = null)
      {
         super();
         if(param1)
         {
            this.§5!k§ = param1.clone();
         }
         else
         {
            this.§5!k§ = new GlowFilter(16777215,0.8,8,8,6);
         }
      }
      
      public function §?U§(param1:DisplayObject) : void
      {
         param1.filters = [this.§5!k§.clone()];
      }
      
      public function §!i§(param1:DisplayObject) : void
      {
         param1.filters = [];
      }
   }
}
