package §`n§
{
   import §+![§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §6o§
   {
       
      
      private var §>b§:Texture;
      
      private var §3!&§:BitmapData;
      
      private var §=c§:Rectangle;
      
      private var §09§:BitmapData;
      
      private var §+Z§:int;
      
      private var §null§:int;
      
      private var §3&§:Number = 1.0;
      
      public function §6o§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§>b§ = param1;
         this.§3!&§ = param2;
         this.§=c§ = param3.clone();
         this.§+Z§ = param4;
         this.§null§ = param5;
         this.§3&§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§3&§;
      }
      
      public function get texture() : Texture
      {
         return this.§>b§;
      }
      
      public function get pivotX() : int
      {
         return this.§+Z§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§null§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§>b§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§>b§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§09§)
         {
            this.§09§ = new BitmapData(this.§=c§.width,this.§=c§.height);
            this.§09§.copyPixels(this.§3!&§,this.§=c§,new Point(0,0));
         }
         return this.§09§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§+Z§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§null§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§>b§)
         {
            this.§>b§.dispose();
            this.§>b§ = null;
         }
         if(this.§3!&§)
         {
            this.§3!&§.dispose();
            this.§3!&§ = null;
         }
      }
   }
}
