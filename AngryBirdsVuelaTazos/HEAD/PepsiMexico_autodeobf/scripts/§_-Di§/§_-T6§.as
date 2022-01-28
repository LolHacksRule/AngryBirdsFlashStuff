package §_-Di§
{
   import §_-3b§.§_-Og§;
   import §_-Q0§.Texture;
   import §_-cD§.§_-ur§;
   import flash.display.BitmapData;
   
   public class §_-T6§ extends §_-ur§
   {
       
      
      private var §_-C6§:Texture;
      
      private var §_-wI§:§_-Og§;
      
      public function §_-T6§(param1:XML, param2:BitmapData, param3:§_-Og§)
      {
         var _loc4_:* = true;
         if(param1.disableMipMapping.length() == 1)
         {
            _loc4_ = §_-06§(param1.disableMipMapping) == 0;
         }
         this.§_-wI§ = param3;
         this.§_-C6§ = this.§_-wI§.§_-R5§(param2,_loc4_);
         super(param1,this.§_-C6§);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§_-wI§.§_-Ug§(this.§_-C6§);
         this.§_-C6§ = null;
      }
   }
}
