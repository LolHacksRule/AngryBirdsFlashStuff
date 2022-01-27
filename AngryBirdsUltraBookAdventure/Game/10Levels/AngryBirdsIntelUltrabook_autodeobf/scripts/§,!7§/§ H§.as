package §,!7§
{
   import §6!J§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § H§
   {
       
      
      private var §>!S§:Texture;
      
      private var §1z§:BitmapData;
      
      private var §,>§:Rectangle;
      
      private var §5!O§:BitmapData;
      
      private var §1l§:int;
      
      private var §%!N§:int;
      
      private var §?C§:Number = 1.0;
      
      public function § H§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§>!S§ = param1;
         this.§1z§ = param2;
         this.§,>§ = param3.clone();
         this.§1l§ = param4;
         this.§%!N§ = param5;
         this.§?C§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§?C§;
      }
      
      public function get texture() : Texture
      {
         return this.§>!S§;
      }
      
      public function get pivotX() : int
      {
         return this.§1l§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§%!N§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§>!S§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§>!S§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§5!O§)
         {
            this.§5!O§ = new BitmapData(this.§,>§.width,this.§,>§.height);
            this.§5!O§.copyPixels(this.§1z§,this.§,>§,new Point(0,0));
         }
         return this.§5!O§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§1l§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§%!N§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§>!S§)
         {
            this.§>!S§.dispose();
            this.§>!S§ = null;
         }
         if(this.§1z§)
         {
            this.§1z§.dispose();
            this.§1z§ = null;
         }
      }
   }
}
