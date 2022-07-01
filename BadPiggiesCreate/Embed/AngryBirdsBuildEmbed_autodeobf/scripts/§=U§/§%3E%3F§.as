package §=U§
{
   import §0!-§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §>?§
   {
       
      
      private var §8w§:Texture;
      
      private var §[0§:BitmapData;
      
      private var §%!!§:Rectangle;
      
      private var §!W§:BitmapData;
      
      private var §-!V§:int;
      
      private var §;!A§:int;
      
      private var §7P§:Number = 1.0;
      
      public function §>?§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§8w§ = param1;
         this.§[0§ = param2;
         this.§%!!§ = param3.clone();
         this.§-!V§ = param4;
         this.§;!A§ = param5;
         this.§7P§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§7P§;
      }
      
      public function get texture() : Texture
      {
         return this.§8w§;
      }
      
      public function get pivotX() : int
      {
         return this.§-!V§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§;!A§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§8w§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§8w§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§!W§)
         {
            this.§!W§ = new BitmapData(this.§%!!§.width,this.§%!!§.height);
            this.§!W§.copyPixels(this.§[0§,this.§%!!§,new Point(0,0));
         }
         return this.§!W§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§-!V§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§;!A§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§8w§)
         {
            this.§8w§.dispose();
            this.§8w§ = null;
         }
         if(this.§[0§)
         {
            this.§[0§.dispose();
            this.§[0§ = null;
         }
      }
   }
}
