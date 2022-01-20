package §9`§
{
   import §&7§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §8!P§
   {
       
      
      private var §!W§:Texture;
      
      private var §"Z§:BitmapData;
      
      private var §,u§:Rectangle;
      
      private var §+J§:BitmapData;
      
      private var §>s§:int;
      
      private var §#!^§:int;
      
      private var §'W§:Number = 1.0;
      
      public function §8!P§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§!W§ = param1;
         this.§"Z§ = param2;
         this.§,u§ = param3.clone();
         this.§>s§ = param4;
         this.§#!^§ = param5;
         this.§'W§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§'W§;
      }
      
      public function get texture() : Texture
      {
         return this.§!W§;
      }
      
      public function get pivotX() : int
      {
         return this.§>s§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§#!^§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§!W§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§!W§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§+J§)
         {
            this.§+J§ = new BitmapData(this.§,u§.width,this.§,u§.height);
            this.§+J§.copyPixels(this.§"Z§,this.§,u§,new Point(0,0));
         }
         return this.§+J§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§>s§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§#!^§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§!W§)
         {
            this.§!W§.dispose();
            this.§!W§ = null;
         }
         if(this.§"Z§)
         {
            this.§"Z§.dispose();
            this.§"Z§ = null;
         }
      }
   }
}
