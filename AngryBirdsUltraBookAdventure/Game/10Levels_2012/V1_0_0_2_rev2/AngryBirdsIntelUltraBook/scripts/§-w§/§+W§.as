package §-w§
{
   import §^!+§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §+W§
   {
       
      
      private var §[!5§:Texture;
      
      private var §4!R§:BitmapData;
      
      private var §3E§:Rectangle;
      
      private var §]!P§:BitmapData;
      
      private var §&5§:int;
      
      private var §1!O§:int;
      
      private var §'8§:Number = 1.0;
      
      public function §+W§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§[!5§ = param1;
         this.§4!R§ = param2;
         this.§3E§ = param3.clone();
         this.§&5§ = param4;
         this.§1!O§ = param5;
         this.§'8§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§'8§;
      }
      
      public function get texture() : Texture
      {
         return this.§[!5§;
      }
      
      public function get pivotX() : int
      {
         return this.§&5§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§1!O§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§[!5§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§[!5§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§]!P§)
         {
            this.§]!P§ = new BitmapData(this.§3E§.width,this.§3E§.height);
            this.§]!P§.copyPixels(this.§4!R§,this.§3E§,new Point(0,0));
         }
         return this.§]!P§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§&5§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§1!O§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§[!5§)
         {
            this.§[!5§.dispose();
            this.§[!5§ = null;
         }
         if(this.§4!R§)
         {
            this.§4!R§.dispose();
            this.§4!R§ = null;
         }
      }
   }
}
