package §@!§
{
   import §-A§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § !N§
   {
       
      
      private var §9q§:Texture;
      
      private var §^5§:BitmapData;
      
      private var §]!$§:Rectangle;
      
      private var §0!,§:BitmapData;
      
      private var §?!J§:int;
      
      private var §#!!§:int;
      
      private var §-§:Number = 1.0;
      
      public function § !N§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§9q§ = param1;
         this.§^5§ = param2;
         this.§]!$§ = param3.clone();
         this.§?!J§ = param4;
         this.§#!!§ = param5;
         this.§-§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§-§;
      }
      
      public function get texture() : Texture
      {
         return this.§9q§;
      }
      
      public function get pivotX() : int
      {
         return this.§?!J§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§#!!§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§9q§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§9q§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§0!,§)
         {
            this.§0!,§ = new BitmapData(this.§]!$§.width,this.§]!$§.height);
            this.§0!,§.copyPixels(this.§^5§,this.§]!$§,new Point(0,0));
         }
         return this.§0!,§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§?!J§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§#!!§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§9q§)
         {
            this.§9q§.dispose();
            this.§9q§ = null;
         }
         if(this.§^5§)
         {
            this.§^5§.dispose();
            this.§^5§ = null;
         }
      }
   }
}
