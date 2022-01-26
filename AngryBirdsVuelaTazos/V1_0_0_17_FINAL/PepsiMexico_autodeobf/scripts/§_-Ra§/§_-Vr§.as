package §_-Ra§
{
   import §_-4g§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-Vr§
   {
       
      
      private var §_-cX§:Texture;
      
      private var §_-LZ§:BitmapData;
      
      private var §_-Cq§:Rectangle;
      
      private var §_-Xl§:BitmapData;
      
      private var §_-ov§:int;
      
      private var §_-eM§:int;
      
      public function §_-Vr§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int)
      {
         super();
         this.§_-cX§ = param1;
         this.§_-LZ§ = param2;
         this.§_-Cq§ = param3.clone();
         this.§_-ov§ = param4;
         this.§_-eM§ = param5;
      }
      
      public function get texture() : Texture
      {
         return this.§_-cX§;
      }
      
      public function get pivotX() : int
      {
         return this.§_-ov§;
      }
      
      public function get pivotY() : int
      {
         return this.§_-eM§;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§_-Xl§)
         {
            this.§_-Xl§ = new BitmapData(this.§_-Cq§.width,this.§_-Cq§.height);
            this.§_-Xl§.copyPixels(this.§_-LZ§,this.§_-Cq§,new Point(0,0));
         }
         return this.§_-Xl§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§_-ov§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§_-eM§ = param1;
      }
   }
}
