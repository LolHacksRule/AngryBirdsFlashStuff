package §^'§
{
   import §@M§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §!!M§
   {
       
      
      private var §#!9§:Texture;
      
      private var §!D§:BitmapData;
      
      private var §+V§:Rectangle;
      
      private var §0e§:BitmapData;
      
      private var §6!H§:int;
      
      private var §2x§:int;
      
      private var §"!3§:Number = 1.0;
      
      public function §!!M§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§#!9§ = param1;
         this.§!D§ = param2;
         this.§+V§ = param3.clone();
         this.§6!H§ = param4;
         this.§2x§ = param5;
         this.§"!3§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§"!3§;
      }
      
      public function get texture() : Texture
      {
         return this.§#!9§;
      }
      
      public function get pivotX() : int
      {
         return this.§6!H§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§2x§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§#!9§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§#!9§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§0e§)
         {
            this.§0e§ = new BitmapData(this.§+V§.width,this.§+V§.height);
            this.§0e§.copyPixels(this.§!D§,this.§+V§,new Point(0,0));
         }
         return this.§0e§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§6!H§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§2x§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§#!9§)
         {
            this.§#!9§.dispose();
            this.§#!9§ = null;
         }
         if(this.§!D§)
         {
            this.§!D§.dispose();
            this.§!D§ = null;
         }
      }
   }
}
