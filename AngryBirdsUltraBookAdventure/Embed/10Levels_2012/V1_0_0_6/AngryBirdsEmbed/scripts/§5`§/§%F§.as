package §5`§
{
   import §7!=§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §%F§
   {
       
      
      private var §[#§:Texture;
      
      private var §9P§:BitmapData;
      
      private var §2f§:Rectangle;
      
      private var §2A§:BitmapData;
      
      private var §3!4§:int;
      
      private var §;!0§:int;
      
      private var §]H§:Number = 1.0;
      
      public function §%F§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§[#§ = param1;
         this.§9P§ = param2;
         this.§2f§ = param3.clone();
         this.§3!4§ = param4;
         this.§;!0§ = param5;
         this.§]H§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§]H§;
      }
      
      public function get texture() : Texture
      {
         return this.§[#§;
      }
      
      public function get pivotX() : int
      {
         return this.§3!4§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§;!0§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§[#§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§[#§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§2A§)
         {
            this.§2A§ = new BitmapData(this.§2f§.width,this.§2f§.height);
            this.§2A§.copyPixels(this.§9P§,this.§2f§,new Point(0,0));
         }
         return this.§2A§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§3!4§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§;!0§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§[#§)
         {
            this.§[#§.dispose();
            this.§[#§ = null;
         }
         if(this.§9P§)
         {
            this.§9P§.dispose();
            this.§9P§ = null;
         }
      }
   }
}
