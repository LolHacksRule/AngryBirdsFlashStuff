package §#S§
{
   import §?7§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §6!r§
   {
       
      
      private var §&P§:Texture;
      
      private var §&%§:BitmapData;
      
      private var §#U§:Rectangle;
      
      private var §=S§:BitmapData;
      
      private var §1m§:int;
      
      private var §;!Q§:int;
      
      private var §%""§:Number = 1.0;
      
      public function §6!r§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§&P§ = param1;
         this.§&%§ = param2;
         this.§#U§ = param3.clone();
         this.§1m§ = param4;
         this.§;!Q§ = param5;
         this.§%""§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§%""§;
      }
      
      public function get texture() : Texture
      {
         return this.§&P§;
      }
      
      public function get pivotX() : int
      {
         return this.§1m§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§;!Q§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§&P§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§&P§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§=S§)
         {
            this.§=S§ = new BitmapData(this.§#U§.width,this.§#U§.height);
            this.§=S§.copyPixels(this.§&%§,this.§#U§,new Point(0,0));
         }
         return this.§=S§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§1m§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§;!Q§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§&P§)
         {
            this.§&P§.dispose();
            this.§&P§ = null;
         }
         if(this.§&%§)
         {
            this.§&%§.dispose();
            this.§&%§ = null;
         }
      }
   }
}
