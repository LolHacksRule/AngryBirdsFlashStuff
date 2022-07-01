package §;L§
{
   import § !=§.§0F§;
   import § !a§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §[!H§
   {
       
      
      private var §-e§:Texture;
      
      private var §@e§:BitmapData;
      
      private var §]X§:Rectangle;
      
      private var §'!=§:BitmapData;
      
      private var §]!E§:int;
      
      private var §<""§:int;
      
      private var §6!p§:Number = 1.0;
      
      public function §[!H§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§-e§ = param1;
         this.§@e§ = param2;
         this.§]X§ = param3.clone();
         this.§]!E§ = param4;
         this.§<""§ = param5;
         this.§6!p§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§6!p§;
      }
      
      public function get texture() : Texture
      {
         return this.§-e§;
      }
      
      public function get pivotX() : int
      {
         return this.§]!E§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§<""§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§-e§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§-e§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§'!=§)
         {
            this.§'!=§ = new BitmapData(this.§]X§.width,this.§]X§.height);
            this.§'!=§.copyPixels(this.§@e§,this.§]X§,new Point(0,0));
         }
         return this.§'!=§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§]!E§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§<""§ = param1;
      }
      
      public function §@!D§(param1:Boolean = false, param2:Boolean = true) : §0F§
      {
         var _loc3_:§0F§ = new §0F§(this.texture,param1,param2);
         _loc3_.pivotX = -this.pivotX;
         _loc3_.pivotY = -this.pivotY;
         _loc3_.scaleX = _loc3_.scaleY = this.scale;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§-e§)
         {
            this.§-e§.dispose();
            this.§-e§ = null;
         }
         if(this.§@e§)
         {
            this.§@e§.dispose();
            this.§@e§ = null;
         }
      }
   }
}
