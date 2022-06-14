package §6!D§
{
   import §0!R§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §3!K§
   {
       
      
      private var §&M§:Texture;
      
      private var §,!a§:BitmapData;
      
      private var §5""§:Rectangle;
      
      private var §#!b§:BitmapData;
      
      private var §4!^§:int;
      
      private var §'?§:int;
      
      private var §[!q§:Number = 1.0;
      
      public function §3!K§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§&M§ = param1;
         this.§,!a§ = param2;
         this.§5""§ = param3.clone();
         this.§4!^§ = param4;
         this.§'?§ = param5;
         this.§[!q§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§[!q§;
      }
      
      public function get texture() : Texture
      {
         return this.§&M§;
      }
      
      public function get pivotX() : int
      {
         return this.§4!^§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§'?§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§&M§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§&M§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§#!b§)
         {
            this.§#!b§ = new BitmapData(this.§5""§.width,this.§5""§.height);
            this.§#!b§.copyPixels(this.§,!a§,this.§5""§,new Point(0,0));
         }
         return this.§#!b§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§4!^§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§'?§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§&M§)
         {
            this.§&M§.dispose();
            this.§&M§ = null;
         }
         if(this.§,!a§)
         {
            this.§,!a§.dispose();
            this.§,!a§ = null;
         }
      }
   }
}
