package §,!_§
{
   import §7i§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §;K§
   {
       
      
      private var §5@§:Texture;
      
      private var §"!_§:BitmapData;
      
      private var §1!i§:Rectangle;
      
      private var § §:BitmapData;
      
      private var §0!>§:int;
      
      private var §+<§:int;
      
      private var §7!H§:Number = 1.0;
      
      public function §;K§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§5@§ = param1;
         this.§"!_§ = param2;
         this.§1!i§ = param3.clone();
         this.§0!>§ = param4;
         this.§+<§ = param5;
         this.§7!H§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§7!H§;
      }
      
      public function get texture() : Texture
      {
         return this.§5@§;
      }
      
      public function get pivotX() : int
      {
         return this.§0!>§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§+<§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§5@§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§5@§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§ §)
         {
            this.§ § = new BitmapData(this.§1!i§.width,this.§1!i§.height);
            this.§ §.copyPixels(this.§"!_§,this.§1!i§,new Point(0,0));
         }
         return this.§ §;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§0!>§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§+<§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§5@§)
         {
            this.§5@§.dispose();
            this.§5@§ = null;
         }
         if(this.§"!_§)
         {
            this.§"!_§.dispose();
            this.§"!_§ = null;
         }
      }
   }
}
