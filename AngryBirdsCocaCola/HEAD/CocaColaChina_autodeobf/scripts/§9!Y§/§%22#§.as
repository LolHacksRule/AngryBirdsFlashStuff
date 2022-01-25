package §9!Y§
{
   import §"![§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §"#§
   {
       
      
      private var §<Y§:Texture;
      
      private var §63§:BitmapData;
      
      private var §7!b§:Rectangle;
      
      private var §^! §:BitmapData;
      
      private var §[,§:int;
      
      private var §6!V§:int;
      
      private var § 6§:Number = 1.0;
      
      public function §"#§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§<Y§ = param1;
         this.§63§ = param2;
         this.§7!b§ = param3.clone();
         this.§[,§ = param4;
         this.§6!V§ = param5;
         this.§ 6§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§ 6§;
      }
      
      public function get texture() : Texture
      {
         return this.§<Y§;
      }
      
      public function get pivotX() : int
      {
         return this.§[,§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§6!V§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§<Y§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§<Y§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§^! §)
         {
            this.§^! § = new BitmapData(this.§7!b§.width,this.§7!b§.height);
            this.§^! §.copyPixels(this.§63§,this.§7!b§,new Point(0,0));
         }
         return this.§^! §;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§[,§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§6!V§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§<Y§)
         {
            this.§<Y§.dispose();
            this.§<Y§ = null;
         }
         if(this.§63§)
         {
            this.§63§.dispose();
            this.§63§ = null;
         }
      }
   }
}
