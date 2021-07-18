package §1n§
{
   import §[P§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §1D§
   {
       
      
      private var §<i§:Texture;
      
      private var §[,§:BitmapData;
      
      private var §?Q§:Rectangle;
      
      private var §"O§:BitmapData;
      
      private var §3e§:int;
      
      private var §>9§:int;
      
      private var §,&§:Number = 1.0;
      
      public function §1D§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§<i§ = param1;
         this.§[,§ = param2;
         this.§?Q§ = param3.clone();
         this.§3e§ = param4;
         this.§>9§ = param5;
         this.§,&§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§,&§;
      }
      
      public function get texture() : Texture
      {
         return this.§<i§;
      }
      
      public function get pivotX() : int
      {
         return this.§3e§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§>9§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§<i§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§<i§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§"O§)
         {
            this.§"O§ = new BitmapData(this.§?Q§.width,this.§?Q§.height);
            this.§"O§.copyPixels(this.§[,§,this.§?Q§,new Point(0,0));
         }
         return this.§"O§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§3e§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§>9§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§<i§)
         {
            this.§<i§.dispose();
            this.§<i§ = null;
         }
         if(this.§[,§)
         {
            this.§[,§.dispose();
            this.§[,§ = null;
         }
      }
   }
}
