package §<A§
{
   import §,]§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §8<§
   {
       
      
      private var §7R§:Texture;
      
      private var §"!+§:BitmapData;
      
      private var §'%§:Rectangle;
      
      private var §@M§:BitmapData;
      
      private var §25§:int;
      
      private var §"!<§:int;
      
      private var § R§:Number = 1.0;
      
      public function §8<§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§7R§ = param1;
         this.§"!+§ = param2;
         this.§'%§ = param3.clone();
         this.§25§ = param4;
         this.§"!<§ = param5;
         this.§ R§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§ R§;
      }
      
      public function get texture() : Texture
      {
         return this.§7R§;
      }
      
      public function get pivotX() : int
      {
         return this.§25§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§"!<§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§7R§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§7R§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§@M§)
         {
            this.§@M§ = new BitmapData(this.§'%§.width,this.§'%§.height);
            this.§@M§.copyPixels(this.§"!+§,this.§'%§,new Point(0,0));
         }
         return this.§@M§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§25§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§"!<§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§7R§)
         {
            this.§7R§.dispose();
            this.§7R§ = null;
         }
         if(this.§"!+§)
         {
            this.§"!+§.dispose();
            this.§"!+§ = null;
         }
      }
   }
}
