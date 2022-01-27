package §8o§
{
   import §'!&§.§9!c§;
   import §3"$§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §!">§
   {
       
      
      private var §2o§:Texture;
      
      private var §%!O§:BitmapData;
      
      private var §"G§:Rectangle;
      
      private var §8!?§:BitmapData;
      
      private var §=!b§:int;
      
      private var §+"#§:int;
      
      private var §-!Y§:Number = 1.0;
      
      public function §!">§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.§2o§ = param1;
         this.§%!O§ = param2;
         this.§"G§ = param3.clone();
         this.§=!b§ = param4;
         this.§+"#§ = param5;
         this.§-!Y§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§-!Y§;
      }
      
      public function get texture() : Texture
      {
         return this.§2o§;
      }
      
      public function get pivotX() : int
      {
         return this.§=!b§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§+"#§ * this.scale;
      }
      
      public function get width() : Number
      {
         return this.§2o§.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.§2o§.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.§8!?§)
         {
            this.§8!?§ = new BitmapData(this.§"G§.width,this.§"G§.height);
            this.§8!?§.copyPixels(this.§%!O§,this.§"G§,new Point(0,0));
         }
         return this.§8!?§;
      }
      
      public function set pivotX(param1:int) : void
      {
         this.§=!b§ = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.§+"#§ = param1;
      }
      
      public function §+!'§(param1:Boolean = false, param2:Boolean = true) : §9!c§
      {
         var _loc3_:§9!c§ = new §9!c§(this.texture,param1,param2);
         _loc3_.pivotX = -this.pivotX;
         _loc3_.pivotY = -this.pivotY;
         _loc3_.scaleX = _loc3_.scaleY = this.scale;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§2o§)
         {
            this.§2o§.dispose();
            this.§2o§ = null;
         }
         if(this.§%!O§)
         {
            this.§%!O§.dispose();
            this.§%!O§ = null;
         }
      }
   }
}
