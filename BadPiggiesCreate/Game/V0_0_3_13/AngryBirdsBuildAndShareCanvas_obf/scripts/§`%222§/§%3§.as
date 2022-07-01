package §`"2§
{
   import §@!#§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §%3§
   {
       
      
      private var §!"§:Texture;
      
      private var §`!h§:BitmapData;
      
      private var §-!x§:Rectangle;
      
      private var §6!8§:BitmapData;
      
      private var §%n§:int;
      
      private var §#Y§:int;
      
      private var §#"0§:Number = 1.0;
      
      public function §%3§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§!"§ = param1;
         this.§`!h§ = param2;
         this.§-!x§ = param3.clone();
         this.§%n§ = param4;
         this.§#Y§ = param5;
         this.§#"0§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§#"0§;
      }
      
      public function get texture() : Texture
      {
         return this.§!"§;
      }
      
      public function get pivotX() : int
      {
         return this.§%n§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§#Y§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§!"§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§!"§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§6!8§)
         {
            this.§6!8§ = new BitmapData(this.§-!x§.width,this.§-!x§.height);
            this.§6!8§.copyPixels(this.§`!h§,this.§-!x§,new Point(0,0));
         }
         return this.§6!8§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§%n§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§#Y§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§!"§)
         {
            this.§!"§.dispose();
            this.§!"§ = null;
         }
         if(this.§`!h§)
         {
            this.§`!h§.dispose();
            this.§`!h§ = null;
         }
      }
   }
}
