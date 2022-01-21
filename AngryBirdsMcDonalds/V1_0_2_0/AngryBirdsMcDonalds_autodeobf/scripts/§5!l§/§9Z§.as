package §5!l§
{
   import §",§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §9Z§
   {
       
      
      private var §%S§:Texture;
      
      private var §^&§:BitmapData;
      
      private var §>3§:Rectangle;
      
      private var §`!A§:BitmapData;
      
      private var §]a§:int;
      
      private var §!a§:int;
      
      private var §>c§:Number = 1.0;
      
      public function §9Z§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§%S§ = param1;
         this.§^&§ = param2;
         this.§>3§ = param3.clone();
         this.§]a§ = param4;
         this.§!a§ = param5;
         this.§>c§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§>c§;
      }
      
      public function get texture() : Texture
      {
         return this.§%S§;
      }
      
      public function get pivotX() : int
      {
         return this.§]a§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§!a§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§%S§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§%S§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§`!A§)
         {
            this.§`!A§ = new BitmapData(this.§>3§.width,this.§>3§.height);
            this.§`!A§.copyPixels(this.§^&§,this.§>3§,new Point(0,0));
         }
         return this.§`!A§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§]a§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§!a§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§%S§)
         {
            this.§%S§.dispose();
            this.§%S§ = null;
         }
         if(this.§^&§)
         {
            this.§^&§.dispose();
            this.§^&§ = null;
         }
      }
   }
}
