package §4!0§
{
   import §[!A§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §#^§
   {
       
      
      private var §+r§:Texture;
      
      private var §1i§:BitmapData;
      
      private var §]8§:Rectangle;
      
      private var §''§:BitmapData;
      
      private var §4G§:int;
      
      private var §8K§:int;
      
      private var §"[§:Number = 1.0;
      
      public function §#^§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§+r§ = param1;
         this.§1i§ = param2;
         this.§]8§ = param3.clone();
         this.§4G§ = param4;
         this.§8K§ = param5;
         this.§"[§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§"[§;
      }
      
      public function get texture() : Texture
      {
         return this.§+r§;
      }
      
      public function get pivotX() : int
      {
         return this.§4G§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§8K§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§+r§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§+r§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§''§)
         {
            this.§''§ = new BitmapData(this.§]8§.width,this.§]8§.height);
            this.§''§.copyPixels(this.§1i§,this.§]8§,new Point(0,0));
         }
         return this.§''§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§4G§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§8K§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§+r§)
         {
            this.§+r§.dispose();
            this.§+r§ = null;
         }
         if(this.§1i§)
         {
            this.§1i§.dispose();
            this.§1i§ = null;
         }
      }
   }
}
