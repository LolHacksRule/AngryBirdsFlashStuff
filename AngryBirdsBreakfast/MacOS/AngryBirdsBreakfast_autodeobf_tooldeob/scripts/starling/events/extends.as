package starling.events
{
   import starling.textures.Texture;
   import starling.display.Image;
   import starling.display.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class TouchMarker extends Sprite
   {
      
      private static var TouchMarkerBmp:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var mCenter:Point;
      
      private var mTexture:Texture;
      
      function TouchMarker(param1:Context3D)
      {
         var _loc3_:Image = null;
         super();
         this.mCenter = new Point();
         this.mTexture = Texture.fromBitmap(param1,new TouchMarkerBmp());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new Image(this.mTexture);
            _loc3_.pivotX = this.mTexture.width / 2;
            _loc3_.pivotY = this.mTexture.height / 2;
            _loc3_.touchable = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.mTexture.dispose();
         super.dispose();
      }
      
      public function moveMarker(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.mCenter.x += param1 - this.realMarker.x;
            this.mCenter.y += param2 - this.realMarker.y;
         }
         this.realMarker.x = param1;
         this.realMarker.y = param2;
         this.mockMarker.x = 2 * this.mCenter.x - param1;
         this.mockMarker.y = 2 * this.mCenter.y - param2;
      }
      
      public function moveCenter(param1:Number, param2:Number) : void
      {
         this.mCenter.x = param1;
         this.mCenter.y = param2;
         this.moveMarker(this.realX,this.realY);
      }
      
      private function get realMarker() : Image
      {
         return getChildAt(0) as Image;
      }
      
      private function get mockMarker() : Image
      {
         return getChildAt(1) as Image;
      }
      
      public function get realX() : Number
      {
         return this.realMarker.x;
      }
      
      public function get realY() : Number
      {
         return this.realMarker.y;
      }
      
      public function get mockX() : Number
      {
         return this.mockMarker.x;
      }
      
      public function get mockY() : Number
      {
         return this.mockMarker.y;
      }
   }
}
