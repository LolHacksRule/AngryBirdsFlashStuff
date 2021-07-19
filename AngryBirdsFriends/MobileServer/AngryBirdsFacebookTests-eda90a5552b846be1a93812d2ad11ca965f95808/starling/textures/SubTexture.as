package starling.textures
{
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import starling.utils.VertexData;
   
   public class SubTexture extends Texture
   {
      
      private static var sTexCoords:Point = new Point();
       
      
      private var mParent:Texture;
      
      private var mRoot:ConcreteTexture;
      
      private var mClipping:Rectangle;
      
      private var mRootClipping:Rectangle;
      
      private var mOwnsParent:Boolean;
      
      private var mClippedBitmapData:BitmapData;
      
      public function SubTexture(parentTexture:Texture, region:Rectangle, ownsParent:Boolean = false)
      {
         super();
         this.mParent = parentTexture;
         this.mOwnsParent = ownsParent;
         this.mRoot = this.mParent.root;
         if(region == null)
         {
            this.setClipping(new Rectangle(0,0,1,1));
         }
         else
         {
            this.setClipping(new Rectangle(region.x / parentTexture.width,region.y / parentTexture.height,region.width / parentTexture.width,region.height / parentTexture.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.mOwnsParent)
         {
            this.mParent.dispose();
         }
         if(this.mClippedBitmapData)
         {
            this.mClippedBitmapData.dispose();
            this.mClippedBitmapData = null;
         }
         super.dispose();
      }
      
      private function setClipping(value:Rectangle) : void
      {
         var parentClipping:Rectangle = null;
         this.mClipping = value;
         this.mRootClipping = value.clone();
         var parentTexture:SubTexture = this.mParent as SubTexture;
         while(parentTexture)
         {
            parentClipping = parentTexture.mClipping;
            this.mRootClipping.x = parentClipping.x + this.mRootClipping.x * parentClipping.width;
            this.mRootClipping.y = parentClipping.y + this.mRootClipping.y * parentClipping.height;
            this.mRootClipping.width *= parentClipping.width;
            this.mRootClipping.height *= parentClipping.height;
            parentTexture = parentTexture.mParent as SubTexture;
         }
      }
      
      override public function adjustVertexData(vertexData:VertexData, vertexID:int, count:int) : void
      {
         super.adjustVertexData(vertexData,vertexID,count);
         var clipX:Number = this.mRootClipping.x;
         var clipY:Number = this.mRootClipping.y;
         var clipWidth:Number = this.mRootClipping.width;
         var clipHeight:Number = this.mRootClipping.height;
         var endIndex:int = vertexID + count;
         for(var i:int = vertexID; i < endIndex; i++)
         {
            vertexData.getTexCoords(i,sTexCoords);
            vertexData.setTexCoords(i,clipX + sTexCoords.x * clipWidth,clipY + sTexCoords.y * clipHeight);
         }
      }
      
      override public function get parent() : Texture
      {
         return this.mParent;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.mParent.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var clip:Rectangle = null;
         var wd:int = 0;
         var ht:int = 0;
         if(this.mClippedBitmapData)
         {
            return this.mClippedBitmapData;
         }
         var data:BitmapData = this.bitmapData;
         if(data)
         {
            clip = this.clipping;
            clip.x *= this.bitmapData.width;
            clip.y *= this.bitmapData.height;
            clip.width *= this.bitmapData.width;
            clip.height *= this.bitmapData.height;
            wd = Math.max(2,clip.width);
            ht = Math.max(2,clip.height);
            this.mClippedBitmapData = new BitmapData(wd,ht,true,0);
            this.mClippedBitmapData.copyPixels(data,clip,new Point(0,0),null,null,true);
         }
         return this.mClippedBitmapData;
      }
      
      public function get ownsParent() : Boolean
      {
         return this.mOwnsParent;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.mClipping.clone();
      }
      
      override public function getBase(context:Context3D) : TextureBase
      {
         return this.mParent.getBase(context);
      }
      
      override public function get root() : ConcreteTexture
      {
         return this.mRoot;
      }
      
      override public function get format() : String
      {
         return this.mParent.format;
      }
      
      override public function get width() : Number
      {
         return this.mParent.width * this.mClipping.width;
      }
      
      override public function get height() : Number
      {
         return this.mParent.height * this.mClipping.height;
      }
      
      override public function get nativeWidth() : Number
      {
         return this.mParent.nativeWidth * this.mClipping.width;
      }
      
      override public function get nativeHeight() : Number
      {
         return this.mParent.nativeHeight * this.mClipping.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.mParent.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.mParent.premultipliedAlpha;
      }
      
      override public function get scale() : Number
      {
         return this.mParent.scale;
      }
      
      override public function requestBaseTextureUpdate(data:Object) : void
      {
         this.mParent.requestBaseTextureUpdate(data);
      }
   }
}
