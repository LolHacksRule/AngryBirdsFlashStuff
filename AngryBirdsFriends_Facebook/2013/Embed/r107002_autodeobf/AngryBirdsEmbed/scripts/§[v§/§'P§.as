package §[v§
{
   import §1#§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §'P§
   {
       
      
      private var §"<§:Texture;
      
      private var § !&§:BitmapData;
      
      private var §`i§:Rectangle;
      
      private var §84§:BitmapData;
      
      private var §>!§:int;
      
      private var §=y§:int;
      
      private var §%g§:Number = 1.0;
      
      public function §'P§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§"<§ = param1;
         this.§ !&§ = param2;
         this.§`i§ = param3.clone();
         this.§>!§ = param4;
         this.§=y§ = param5;
         this.§%g§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§%g§;
      }
      
      public function get texture() : Texture
      {
         return this.§"<§;
      }
      
      public function get pivotX() : int
      {
         return this.§>!§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§=y§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§"<§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§"<§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§84§)
         {
            this.§84§ = new BitmapData(this.§`i§.width,this.§`i§.height);
            this.§84§.copyPixels(this.§ !&§,this.§`i§,new Point(0,0));
         }
         return this.§84§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§>!§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§=y§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§"<§)
         {
            this.§"<§.dispose();
            this.§"<§ = null;
         }
         if(this.§ !&§)
         {
            this.§ !&§.dispose();
            this.§ !&§ = null;
         }
      }
   }
}
