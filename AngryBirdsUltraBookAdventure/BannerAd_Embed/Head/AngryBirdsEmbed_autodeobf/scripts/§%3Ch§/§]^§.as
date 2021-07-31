package §<h§
{
   import §?!"§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §]^§
   {
       
      
      private var §9X§:Texture;
      
      private var §]s§:BitmapData;
      
      private var §"!<§:Rectangle;
      
      private var §-e§:BitmapData;
      
      private var §^A§:int;
      
      private var §6W§:int;
      
      private var §=!%§:Number = 1.0;
      
      public function §]^§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§9X§ = param1;
         this.§]s§ = param2;
         this.§"!<§ = param3.clone();
         this.§^A§ = param4;
         this.§6W§ = param5;
         this.§=!%§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§=!%§;
      }
      
      public function get texture() : Texture
      {
         return this.§9X§;
      }
      
      public function get pivotX() : int
      {
         return this.§^A§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§6W§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§9X§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§9X§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§-e§)
         {
            this.§-e§ = new BitmapData(this.§"!<§.width,this.§"!<§.height);
            this.§-e§.copyPixels(this.§]s§,this.§"!<§,new Point(0,0));
         }
         return this.§-e§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§^A§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§6W§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§9X§)
         {
            this.§9X§.dispose();
            this.§9X§ = null;
         }
         if(this.§]s§)
         {
            this.§]s§.dispose();
            this.§]s§ = null;
         }
      }
   }
}
