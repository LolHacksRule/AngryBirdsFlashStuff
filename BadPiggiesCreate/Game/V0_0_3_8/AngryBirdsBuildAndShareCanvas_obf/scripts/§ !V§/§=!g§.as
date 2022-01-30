package § !V§
{
   import §3!U§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §=!g§
   {
       
      
      private var §=#§:Texture;
      
      private var §+u§:BitmapData;
      
      private var §!!?§:Rectangle;
      
      private var §89§:BitmapData;
      
      private var §5!2§:int;
      
      private var §`P§:int;
      
      private var §?V§:Number = 1.0;
      
      public function §=!g§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§=#§ = param1;
         this.§+u§ = param2;
         this.§!!?§ = param3.clone();
         this.§5!2§ = param4;
         this.§`P§ = param5;
         this.§?V§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§?V§;
      }
      
      public function get texture() : Texture
      {
         return this.§=#§;
      }
      
      public function get pivotX() : int
      {
         return this.§5!2§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§`P§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§=#§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§=#§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§89§)
         {
            this.§89§ = new BitmapData(this.§!!?§.width,this.§!!?§.height);
            this.§89§.copyPixels(this.§+u§,this.§!!?§,new Point(0,0));
         }
         return this.§89§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§5!2§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§`P§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§=#§)
         {
            this.§=#§.dispose();
            this.§=#§ = null;
         }
         if(this.§+u§)
         {
            this.§+u§.dispose();
            this.§+u§ = null;
         }
      }
   }
}
