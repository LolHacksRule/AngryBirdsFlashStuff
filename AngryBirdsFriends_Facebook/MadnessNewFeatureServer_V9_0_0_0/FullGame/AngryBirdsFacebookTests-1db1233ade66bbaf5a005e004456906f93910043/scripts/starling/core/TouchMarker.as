package starling.core
{
   import flash.display.BitmapData;
   import flash.display.Shape;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   import starling.display.Image;
   import starling.display.Sprite;
   import starling.textures.Texture;
   
   class TouchMarker extends Sprite
   {
       
      
      private var mCenter:Point;
      
      private var mTexture:Texture;
      
      function TouchMarker(context:Context3D)
      {
         var marker:Image = null;
         super();
         this.mCenter = new Point();
         this.mTexture = this.createTexture(context);
         for(var i:int = 0; i < 2; i++)
         {
            marker = new Image(this.mTexture);
            marker.pivotX = this.mTexture.width / 2;
            marker.pivotY = this.mTexture.height / 2;
            marker.touchable = false;
            addChild(marker);
         }
      }
      
      override public function dispose() : void
      {
         this.mTexture.dispose();
         super.dispose();
      }
      
      public function moveMarker(x:Number, y:Number, withCenter:Boolean = false) : void
      {
         if(withCenter)
         {
            this.mCenter.x += x - this.realMarker.x;
            this.mCenter.y += y - this.realMarker.y;
         }
         this.realMarker.x = x;
         this.realMarker.y = y;
         this.mockMarker.x = 2 * this.mCenter.x - x;
         this.mockMarker.y = 2 * this.mCenter.y - y;
      }
      
      public function moveCenter(x:Number, y:Number) : void
      {
         this.mCenter.x = x;
         this.mCenter.y = y;
         this.moveMarker(this.realX,this.realY);
      }
      
      private function createTexture(context:Context3D) : Texture
      {
         var scale:Number = Starling.contentScaleFactor;
         var radius:Number = 12 * scale;
         var width:int = 32 * scale;
         var height:int = 32 * scale;
         var thickness:Number = 1.5 * scale;
         var shape:Shape = new Shape();
         shape.graphics.lineStyle(thickness,0,0.3);
         shape.graphics.drawCircle(width / 2,height / 2,radius + thickness);
         shape.graphics.beginFill(16777215,0.4);
         shape.graphics.lineStyle(thickness,16777215);
         shape.graphics.drawCircle(width / 2,height / 2,radius);
         shape.graphics.endFill();
         var bmpData:BitmapData = new BitmapData(width,height,true,0);
         bmpData.draw(shape);
         return Texture.fromBitmapData(context,bmpData,false,false,scale);
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
