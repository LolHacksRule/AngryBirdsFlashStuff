package §=`§
{
   import §?]§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §#`§
   {
       
      
      private var §!=§:Texture;
      
      private var §%o§:BitmapData;
      
      private var §'!9§:Rectangle;
      
      private var §'!3§:BitmapData;
      
      private var §1!3§:int;
      
      private var §;V§:int;
      
      private var §?z§:Number = 1.0;
      
      public function §#`§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§!=§ = param1;
         this.§%o§ = param2;
         this.§'!9§ = param3.clone();
         this.§1!3§ = param4;
         this.§;V§ = param5;
         this.§?z§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§?z§;
      }
      
      public function get texture() : Texture
      {
         return this.§!=§;
      }
      
      public function get pivotX() : int
      {
         return this.§1!3§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§;V§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§!=§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§!=§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§'!3§)
         {
            this.§'!3§ = new BitmapData(this.§'!9§.width,this.§'!9§.height);
            this.§'!3§.copyPixels(this.§%o§,this.§'!9§,new Point(0,0));
         }
         return this.§'!3§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§1!3§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§;V§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§!=§)
         {
            this.§!=§.dispose();
            this.§!=§ = null;
         }
         if(this.§%o§)
         {
            this.§%o§.dispose();
            this.§%o§ = null;
         }
      }
   }
}
