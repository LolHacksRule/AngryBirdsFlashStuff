package §+f§
{
   import §"`§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §=3§
   {
       
      
      private var §>a§:Texture;
      
      private var §&Z§:BitmapData;
      
      private var §#s§:Rectangle;
      
      private var §use §:BitmapData;
      
      private var §<!#§:int;
      
      private var §=!A§:int;
      
      private var §`Z§:Number = 1.0;
      
      public function §=3§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§>a§ = param1;
         this.§&Z§ = param2;
         this.§#s§ = param3.clone();
         this.§<!#§ = param4;
         this.§=!A§ = param5;
         this.§`Z§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§`Z§;
      }
      
      public function get texture() : Texture
      {
         return this.§>a§;
      }
      
      public function get pivotX() : int
      {
         return this.§<!#§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§=!A§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§>a§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§>a§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§use §)
         {
            this.§use § = new BitmapData(this.§#s§.width,this.§#s§.height);
            this.§use §.copyPixels(this.§&Z§,this.§#s§,new Point(0,0));
         }
         return this.§use §;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§<!#§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§=!A§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§>a§)
         {
            this.§>a§.dispose();
            this.§>a§ = null;
         }
         if(this.§&Z§)
         {
            this.§&Z§.dispose();
            this.§&Z§ = null;
         }
      }
   }
}
