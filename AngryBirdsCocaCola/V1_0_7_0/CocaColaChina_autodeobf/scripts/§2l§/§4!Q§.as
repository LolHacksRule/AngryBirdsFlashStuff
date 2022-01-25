package §2l§
{
   import §+!S§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §4!Q§
   {
       
      
      private var §3!"§:Texture;
      
      private var §;6§:BitmapData;
      
      private var §`!V§:Rectangle;
      
      private var §0!6§:BitmapData;
      
      private var §7O§:int;
      
      private var §"0§:int;
      
      private var §^!Y§:Number = 1.0;
      
      public function §4!Q§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§3!"§ = param1;
         this.§;6§ = param2;
         this.§`!V§ = param3.clone();
         this.§7O§ = param4;
         this.§"0§ = param5;
         this.§^!Y§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§^!Y§;
      }
      
      public function get texture() : Texture
      {
         return this.§3!"§;
      }
      
      public function get pivotX() : int
      {
         return this.§7O§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§"0§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§3!"§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§3!"§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§0!6§)
         {
            this.§0!6§ = new BitmapData(this.§`!V§.width,this.§`!V§.height);
            this.§0!6§.copyPixels(this.§;6§,this.§`!V§,new Point(0,0));
         }
         return this.§0!6§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§7O§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§"0§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§3!"§)
         {
            this.§3!"§.dispose();
            this.§3!"§ = null;
         }
         if(this.§;6§)
         {
            this.§;6§.dispose();
            this.§;6§ = null;
         }
      }
   }
}
