package § !%§
{
   import §&Y§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §0!U§
   {
       
      
      private var §'C§:Texture;
      
      private var §-Y§:BitmapData;
      
      private var §-!F§:Rectangle;
      
      private var §&w§:BitmapData;
      
      private var §[3§:int;
      
      private var §75§:int;
      
      private var §[2§:Number = 1.0;
      
      public function §0!U§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§'C§ = param1;
         this.§-Y§ = param2;
         this.§-!F§ = param3.clone();
         this.§[3§ = param4;
         this.§75§ = param5;
         this.§[2§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§[2§;
      }
      
      public function get texture() : Texture
      {
         return this.§'C§;
      }
      
      public function get pivotX() : int
      {
         return this.§[3§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§75§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§'C§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§'C§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§&w§)
         {
            this.§&w§ = new BitmapData(this.§-!F§.width,this.§-!F§.height);
            this.§&w§.copyPixels(this.§-Y§,this.§-!F§,new Point(0,0));
         }
         return this.§&w§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§[3§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§75§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§'C§)
         {
            this.§'C§.dispose();
            this.§'C§ = null;
         }
         if(this.§-Y§)
         {
            this.§-Y§.dispose();
            this.§-Y§ = null;
         }
      }
   }
}
