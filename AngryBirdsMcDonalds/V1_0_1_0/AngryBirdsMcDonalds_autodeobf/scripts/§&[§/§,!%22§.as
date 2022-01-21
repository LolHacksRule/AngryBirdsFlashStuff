package §&[§
{
   import §@j§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §,!"§
   {
       
      
      private var §6l§:Texture;
      
      private var §=!2§:BitmapData;
      
      private var §5X§:Rectangle;
      
      private var § !7§:BitmapData;
      
      private var §-!C§:int;
      
      private var §+!@§:int;
      
      private var §&!U§:Number = 1.0;
      
      public function §,!"§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§6l§ = param1;
         this.§=!2§ = param2;
         this.§5X§ = param3.clone();
         this.§-!C§ = param4;
         this.§+!@§ = param5;
         this.§&!U§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§&!U§;
      }
      
      public function get texture() : Texture
      {
         return this.§6l§;
      }
      
      public function get pivotX() : int
      {
         return this.§-!C§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§+!@§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§6l§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§6l§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§ !7§)
         {
            this.§ !7§ = new BitmapData(this.§5X§.width,this.§5X§.height);
            this.§ !7§.copyPixels(this.§=!2§,this.§5X§,new Point(0,0));
         }
         return this.§ !7§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§-!C§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§+!@§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§6l§)
         {
            this.§6l§.dispose();
            this.§6l§ = null;
         }
         if(this.§=!2§)
         {
            this.§=!2§.dispose();
            this.§=!2§ = null;
         }
      }
   }
}
