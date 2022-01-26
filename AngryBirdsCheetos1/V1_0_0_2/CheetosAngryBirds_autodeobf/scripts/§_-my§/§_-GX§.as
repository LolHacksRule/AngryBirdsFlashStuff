package §_-my§
{
   import §_-yp§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-GX§
   {
       
      
      private var §_-eE§:Texture;
      
      private var §_-Td§:BitmapData;
      
      private var §_-ga§:Rectangle;
      
      private var §_-H6§:BitmapData;
      
      private var §_-gL§:int;
      
      private var §_-q5§:int;
      
      private var §_-uV§:Number = 1.0;
      
      public function §_-GX§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§_-eE§ = param1;
         this.§_-Td§ = param2;
         this.§_-ga§ = param3.clone();
         this.§_-gL§ = param4;
         this.§_-q5§ = param5;
         this.§_-uV§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§_-uV§;
      }
      
      public function get texture() : Texture
      {
         return this.§_-eE§;
      }
      
      public function get pivotX() : int
      {
         return this.§_-gL§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§_-q5§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§_-eE§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§_-eE§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§_-H6§)
         {
            this.§_-H6§ = new BitmapData(this.§_-ga§.width,this.§_-ga§.height);
            this.§_-H6§.copyPixels(this.§_-Td§,this.§_-ga§,new Point(0,0));
         }
         return this.§_-H6§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§_-gL§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§_-q5§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§_-eE§)
         {
            this.§_-eE§.dispose();
            this.§_-eE§ = null;
         }
         if(this.§_-Td§)
         {
            this.§_-Td§.dispose();
            this.§_-Td§ = null;
         }
      }
   }
}
