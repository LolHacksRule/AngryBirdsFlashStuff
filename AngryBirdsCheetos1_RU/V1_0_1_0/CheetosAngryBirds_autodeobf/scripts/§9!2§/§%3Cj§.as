package §9!2§
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §switch§.Texture;
   
   public class §<j§
   {
       
      
      private var §#!X§:Texture;
      
      private var §>2§:BitmapData;
      
      private var §>B§:Rectangle;
      
      private var §8b§:BitmapData;
      
      private var §4!M§:int;
      
      private var §;H§:int;
      
      private var §4!S§:Number = 1.0;
      
      public function §<j§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§#!X§ = param1;
         this.§>2§ = param2;
         this.§>B§ = param3.clone();
         this.§4!M§ = param4;
         this.§;H§ = param5;
         this.§4!S§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§4!S§;
      }
      
      public function get texture() : Texture
      {
         return this.§#!X§;
      }
      
      public function get pivotX() : int
      {
         return this.§4!M§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§;H§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§#!X§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§#!X§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§8b§)
         {
            this.§8b§ = new BitmapData(this.§>B§.width,this.§>B§.height);
            this.§8b§.copyPixels(this.§>2§,this.§>B§,new Point(0,0));
         }
         return this.§8b§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§4!M§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§;H§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§#!X§)
         {
            this.§#!X§.dispose();
            this.§#!X§ = null;
         }
         if(this.§>2§)
         {
            this.§>2§.dispose();
            this.§>2§ = null;
         }
      }
   }
}
