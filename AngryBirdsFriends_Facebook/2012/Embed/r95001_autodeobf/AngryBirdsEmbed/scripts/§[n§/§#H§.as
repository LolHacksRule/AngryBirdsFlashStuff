package §[n§
{
   import §<-§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §#H§
   {
       
      
      private var §[d§:Texture;
      
      private var §<f§:BitmapData;
      
      private var §9%§:Rectangle;
      
      private var §^4§:BitmapData;
      
      private var §=C§:int;
      
      private var §]0§:int;
      
      private var §@]§:Number = 1.0;
      
      public function §#H§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§[d§ = param1;
         this.§<f§ = param2;
         this.§9%§ = param3.clone();
         this.§=C§ = param4;
         this.§]0§ = param5;
         this.§@]§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§@]§;
      }
      
      public function get texture() : Texture
      {
         return this.§[d§;
      }
      
      public function get pivotX() : int
      {
         return this.§=C§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§]0§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§[d§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§[d§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§^4§)
         {
            this.§^4§ = new BitmapData(this.§9%§.width,this.§9%§.height);
            this.§^4§.copyPixels(this.§<f§,this.§9%§,new Point(0,0));
         }
         return this.§^4§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§=C§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§]0§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§[d§)
         {
            this.§[d§.dispose();
            this.§[d§ = null;
         }
         if(this.§<f§)
         {
            this.§<f§.dispose();
            this.§<f§ = null;
         }
      }
   }
}
