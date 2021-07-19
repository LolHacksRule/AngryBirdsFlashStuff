package § `§
{
   import §]!B§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §6!=§
   {
       
      
      private var §if§:Texture;
      
      private var §,!>§:BitmapData;
      
      private var §'W§:Rectangle;
      
      private var §=r§:BitmapData;
      
      private var §?!Q§:int;
      
      private var §+9§:int;
      
      private var §1R§:Number = 1.0;
      
      public function §6!=§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§if§ = param1;
         this.§,!>§ = param2;
         this.§'W§ = param3.clone();
         this.§?!Q§ = param4;
         this.§+9§ = param5;
         this.§1R§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§1R§;
      }
      
      public function get texture() : Texture
      {
         return this.§if§;
      }
      
      public function get pivotX() : int
      {
         return this.§?!Q§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§+9§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§if§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§if§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§=r§)
         {
            this.§=r§ = new BitmapData(this.§'W§.width,this.§'W§.height);
            this.§=r§.copyPixels(this.§,!>§,this.§'W§,new Point(0,0));
         }
         return this.§=r§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§?!Q§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§+9§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§if§)
         {
            this.§if§.dispose();
            this.§if§ = null;
         }
         if(this.§,!>§)
         {
            this.§,!>§.dispose();
            this.§,!>§ = null;
         }
      }
   }
}
