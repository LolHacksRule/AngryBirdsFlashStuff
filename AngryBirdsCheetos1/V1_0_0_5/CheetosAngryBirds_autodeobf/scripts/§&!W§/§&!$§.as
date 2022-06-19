package §&!W§
{
   import §2k§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §&!$§
   {
       
      
      private var §>c§:Texture;
      
      private var §[!H§:BitmapData;
      
      private var §5b§:Rectangle;
      
      private var §6U§:BitmapData;
      
      private var §^D§:int;
      
      private var §%B§:int;
      
      private var §7<§:Number = 1.0;
      
      public function §&!$§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§>c§ = param1;
         this.§[!H§ = param2;
         this.§5b§ = param3.clone();
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
         return this.§>c§;
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
         return this.§>c§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§>c§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§6U§)
         {
            this.§6U§ = new BitmapData(this.§5b§.width,this.§5b§.height);
            this.§6U§.copyPixels(this.§[!H§,this.§5b§,new Point(0,0));
         }
         return this.§6U§;
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
         if(this.§>c§)
         {
            this.§>c§.dispose();
            this.§>c§ = null;
         }
         if(this.§[!H§)
         {
            this.§[!H§.dispose();
            this.§[!H§ = null;
         }
      }
   }
}
