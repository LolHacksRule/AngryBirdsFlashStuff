package §-!0§
{
   import each.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §9X§
   {
       
      
      private var §]s§:Texture;
      
      private var §"!<§:BitmapData;
      
      private var §-e§:Rectangle;
      
      private var §4@§:BitmapData;
      
      private var §^A§:int;
      
      private var §6W§:int;
      
      private var §=!%§:Number = 1.0;
      
      public function §9X§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§]s§ = param1;
         this.§"!<§ = param2;
         this.§-e§ = param3.clone();
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
         return this.§]s§;
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
         return this.§]s§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§]s§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§4@§)
         {
            this.§4@§ = new BitmapData(this.§-e§.width,this.§-e§.height);
            this.§4@§.copyPixels(this.§"!<§,this.§-e§,new Point(0,0));
         }
         return this.§4@§;
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
         if(this.§]s§)
         {
            this.§]s§.dispose();
            this.§]s§ = null;
         }
         if(this.§"!<§)
         {
            this.§"!<§.dispose();
            this.§"!<§ = null;
         }
      }
   }
}
