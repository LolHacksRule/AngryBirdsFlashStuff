package §9t§
{
   import §]!a§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §35§
   {
       
      
      private var §7Y§:Texture;
      
      private var §<!]§:BitmapData;
      
      private var §9!f§:Rectangle;
      
      private var §5&§:BitmapData;
      
      private var §4!=§:int;
      
      private var §>!D§:int;
      
      private var §#![§:Number = 1.0;
      
      public function §35§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§7Y§ = param1;
         this.§<!]§ = param2;
         this.§9!f§ = param3.clone();
         this.§4!=§ = param4;
         this.§>!D§ = param5;
         this.§#![§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§#![§;
      }
      
      public function get texture() : Texture
      {
         return this.§7Y§;
      }
      
      public function get pivotX() : int
      {
         return this.§4!=§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§>!D§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§7Y§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§7Y§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§5&§)
         {
            this.§5&§ = new BitmapData(this.§9!f§.width,this.§9!f§.height);
            this.§5&§.copyPixels(this.§<!]§,this.§9!f§,new Point(0,0));
         }
         return this.§5&§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§4!=§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§>!D§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§7Y§)
         {
            this.§7Y§.dispose();
            this.§7Y§ = null;
         }
         if(this.§<!]§)
         {
            this.§<!]§.dispose();
            this.§<!]§ = null;
         }
      }
   }
}
