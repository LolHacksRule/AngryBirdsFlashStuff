package §&V§
{
   import §%?§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §;Q§
   {
       
      
      private var §+F§:Texture;
      
      private var §1B§:BitmapData;
      
      private var §>!!§:Rectangle;
      
      private var §5!2§:BitmapData;
      
      private var §#0§:int;
      
      private var §7I§:int;
      
      private var §50§:Number = 1.0;
      
      public function §;Q§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§+F§ = param1;
         this.§1B§ = param2;
         this.§>!!§ = param3.clone();
         this.§#0§ = param4;
         this.§7I§ = param5;
         this.§50§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§50§;
      }
      
      public function get texture() : Texture
      {
         return this.§+F§;
      }
      
      public function get pivotX() : int
      {
         return this.§#0§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§7I§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§+F§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§+F§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§5!2§)
         {
            this.§5!2§ = new BitmapData(this.§>!!§.width,this.§>!!§.height);
            this.§5!2§.copyPixels(this.§1B§,this.§>!!§,new Point(0,0));
         }
         return this.§5!2§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§#0§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§7I§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§+F§)
         {
            this.§+F§.dispose();
            this.§+F§ = null;
         }
         if(this.§1B§)
         {
            this.§1B§.dispose();
            this.§1B§ = null;
         }
      }
   }
}
