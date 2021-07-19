package §4W§
{
   import §2!-§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §>c§
   {
       
      
      private var §[!H§:Texture;
      
      private var §5b§:BitmapData;
      
      private var §6U§:Rectangle;
      
      private var §^!I§:BitmapData;
      
      private var §^D§:int;
      
      private var §%B§:int;
      
      private var §7<§:Number = 1.0;
      
      public function §>c§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§[!H§ = param1;
         this.§5b§ = param2;
         this.§6U§ = param3.clone();
         this.§^D§ = param4;
         this.§%B§ = param5;
         this.§7<§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§7<§;
      }
      
      public function get texture() : Texture
      {
         return this.§[!H§;
      }
      
      public function get pivotX() : int
      {
         return this.§^D§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§%B§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§[!H§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§[!H§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§^!I§)
         {
            this.§^!I§ = new BitmapData(this.§6U§.width,this.§6U§.height);
            this.§^!I§.copyPixels(this.§5b§,this.§6U§,new Point(0,0));
         }
         return this.§^!I§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§^D§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§%B§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§[!H§)
         {
            this.§[!H§.dispose();
            this.§[!H§ = null;
         }
         if(this.§5b§)
         {
            this.§5b§.dispose();
            this.§5b§ = null;
         }
      }
   }
}
