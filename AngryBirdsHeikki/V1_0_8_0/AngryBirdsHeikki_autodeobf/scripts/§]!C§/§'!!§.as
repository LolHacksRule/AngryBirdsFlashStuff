package §]!C§
{
   import §#!6§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §'!!§
   {
       
      
      private var §6!&§:Texture;
      
      private var §+0§:BitmapData;
      
      private var §,!Y§:Rectangle;
      
      private var §;Q§:BitmapData;
      
      private var §&,§:int;
      
      private var §'0§:int;
      
      private var §35§:Number = 1.0;
      
      public function §'!!§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§6!&§ = param1;
         this.§+0§ = param2;
         this.§,!Y§ = param3.clone();
         this.§&,§ = param4;
         this.§'0§ = param5;
         this.§35§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§35§;
      }
      
      public function get texture() : Texture
      {
         return this.§6!&§;
      }
      
      public function get pivotX() : int
      {
         return this.§&,§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§'0§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§6!&§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§6!&§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§;Q§)
         {
            this.§;Q§ = new BitmapData(this.§,!Y§.width,this.§,!Y§.height);
            this.§;Q§.copyPixels(this.§+0§,this.§,!Y§,new Point(0,0));
         }
         return this.§;Q§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§&,§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§'0§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§6!&§)
         {
            this.§6!&§.dispose();
            this.§6!&§ = null;
         }
         if(this.§+0§)
         {
            this.§+0§.dispose();
            this.§+0§ = null;
         }
      }
   }
}
