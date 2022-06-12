package §&"5§
{
   import §7R§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §6!L§
   {
       
      
      private var §+!m§:Texture;
      
      private var §"!S§:BitmapData;
      
      private var §0!q§:Rectangle;
      
      private var §&!@§:BitmapData;
      
      private var §>!v§:int;
      
      private var §>!J§:int;
      
      private var §?a§:Number = 1.0;
      
      public function §6!L§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§+!m§ = param1;
         this.§"!S§ = param2;
         this.§0!q§ = param3.clone();
         this.§>!v§ = param4;
         this.§>!J§ = param5;
         this.§?a§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§?a§;
      }
      
      public function get texture() : Texture
      {
         return this.§+!m§;
      }
      
      public function get pivotX() : int
      {
         return this.§>!v§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§>!J§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§+!m§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§+!m§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§&!@§)
         {
            this.§&!@§ = new BitmapData(this.§0!q§.width,this.§0!q§.height);
            this.§&!@§.copyPixels(this.§"!S§,this.§0!q§,new Point(0,0));
         }
         return this.§&!@§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§>!v§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§>!J§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§+!m§)
         {
            this.§+!m§.dispose();
            this.§+!m§ = null;
         }
         if(this.§"!S§)
         {
            this.§"!S§.dispose();
            this.§"!S§ = null;
         }
      }
   }
}
