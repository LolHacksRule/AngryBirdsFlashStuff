package §8K§
{
   import §^n§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §9!S§
   {
       
      
      private var §&q§:Texture;
      
      private var § Z§:BitmapData;
      
      private var §=!K§:Rectangle;
      
      private var §-8§:BitmapData;
      
      private var § z§:int;
      
      private var §]E§:int;
      
      private var §+o§:Number = 1.0;
      
      public function §9!S§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§&q§ = param1;
         this.§ Z§ = param2;
         this.§=!K§ = param3.clone();
         this.§ z§ = param4;
         this.§]E§ = param5;
         this.§+o§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§+o§;
      }
      
      public function get texture() : Texture
      {
         return this.§&q§;
      }
      
      public function get pivotX() : int
      {
         return this.§ z§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§]E§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§&q§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§&q§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§-8§)
         {
            this.§-8§ = new BitmapData(this.§=!K§.width,this.§=!K§.height);
            this.§-8§.copyPixels(this.§ Z§,this.§=!K§,new Point(0,0));
         }
         return this.§-8§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§ z§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§]E§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§&q§)
         {
            this.§&q§.dispose();
            this.§&q§ = null;
         }
         if(this.§ Z§)
         {
            this.§ Z§.dispose();
            this.§ Z§ = null;
         }
      }
   }
}
