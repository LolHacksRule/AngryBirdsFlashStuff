package §?"<§
{
   import §<L§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §?n§
   {
       
      
      private var §,x§:Texture;
      
      private var §;j§:BitmapData;
      
      private var §0b§:Rectangle;
      
      private var §6§:BitmapData;
      
      private var §-d§:int;
      
      private var §^#§:int;
      
      private var §6!l§:Number = 1.0;
      
      public function §?n§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§,x§ = param1;
         this.§;j§ = param2;
         this.§0b§ = param3.clone();
         this.§-d§ = param4;
         this.§^#§ = param5;
         this.§6!l§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§6!l§;
      }
      
      public function get texture() : Texture
      {
         return this.§,x§;
      }
      
      public function get pivotX() : int
      {
         return this.§-d§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§^#§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§,x§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§,x§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§6§)
         {
            this.§6§ = new BitmapData(this.§0b§.width,this.§0b§.height);
            this.§6§.copyPixels(this.§;j§,this.§0b§,new Point(0,0));
         }
         return this.§6§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§-d§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§^#§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§,x§)
         {
            this.§,x§.dispose();
            this.§,x§ = null;
         }
         if(this.§;j§)
         {
            this.§;j§.dispose();
            this.§;j§ = null;
         }
      }
   }
}
