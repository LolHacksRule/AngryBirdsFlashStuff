package §#?§
{
   import §21§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §^@§
   {
       
      
      private var §!r§:Texture;
      
      private var §7R§:BitmapData;
      
      private var §6m§:Rectangle;
      
      private var §-!C§:BitmapData;
      
      private var §@3§:int;
      
      private var §1!C§:int;
      
      private var §,!F§:Number = 1.0;
      
      public function §^@§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§!r§ = param1;
         this.§7R§ = param2;
         this.§6m§ = param3.clone();
         this.§@3§ = param4;
         this.§1!C§ = param5;
         this.§,!F§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§,!F§;
      }
      
      public function get texture() : Texture
      {
         return this.§!r§;
      }
      
      public function get pivotX() : int
      {
         return this.§@3§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§1!C§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§!r§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§!r§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§-!C§)
         {
            this.§-!C§ = new BitmapData(this.§6m§.width,this.§6m§.height);
            this.§-!C§.copyPixels(this.§7R§,this.§6m§,new Point(0,0));
         }
         return this.§-!C§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§@3§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§1!C§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§!r§)
         {
            this.§!r§.dispose();
            this.§!r§ = null;
         }
         if(this.§7R§)
         {
            this.§7R§.dispose();
            this.§7R§ = null;
         }
      }
   }
}
