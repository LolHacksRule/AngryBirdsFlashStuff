package §+!]§
{
   import §!!S§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §+!=§
   {
       
      
      private var §`!-§:Texture;
      
      private var §#O§:BitmapData;
      
      private var §7`§:Rectangle;
      
      private var §,M§:BitmapData;
      
      private var §use§:int;
      
      private var §?[§:int;
      
      private var §8=§:Number = 1.0;
      
      public function §+!=§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§`!-§ = param1;
         this.§#O§ = param2;
         this.§7`§ = param3.clone();
         this.§use§ = param4;
         this.§?[§ = param5;
         this.§8=§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§8=§;
      }
      
      public function get texture() : Texture
      {
         return this.§`!-§;
      }
      
      public function get pivotX() : int
      {
         return this.§use§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§?[§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§`!-§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§`!-§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§,M§)
         {
            this.§,M§ = new BitmapData(this.§7`§.width,this.§7`§.height);
            this.§,M§.copyPixels(this.§#O§,this.§7`§,new Point(0,0));
         }
         return this.§,M§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§use§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§?[§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§`!-§)
         {
            this.§`!-§.dispose();
            this.§`!-§ = null;
         }
         if(this.§#O§)
         {
            this.§#O§.dispose();
            this.§#O§ = null;
         }
      }
   }
}
