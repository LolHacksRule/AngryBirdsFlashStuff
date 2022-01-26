package §_-5Y§
{
   import §_-5M§.§_-sV§;
   import §_-DQ§.Texture;
   import §_-PC§.§_-lx§;
   import flash.display.BitmapData;
   
   public class §_-ih§ extends §_-sV§
   {
       
      
      private var §_-sY§:Texture;
      
      private var §_-ub§:§_-lx§;
      
      public function §_-ih§(param1:XML, param2:BitmapData, param3:§_-lx§)
      {
         this.§_-ub§ = param3;
         this.§_-sY§ = this.§_-ub§.§_-a§(param2);
         super(param1,this.§_-sY§);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§_-ub§.§try§(this.§_-sY§);
         this.§_-sY§ = null;
      }
   }
}
