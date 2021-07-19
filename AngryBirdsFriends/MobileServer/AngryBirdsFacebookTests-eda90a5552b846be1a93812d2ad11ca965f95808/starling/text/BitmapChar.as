package starling.text
{
   import flash.utils.Dictionary;
   import starling.display.Image;
   import starling.textures.Texture;
   
   public class BitmapChar
   {
       
      
      private var mTexture:Texture;
      
      private var mCharID:int;
      
      private var mXOffset:Number;
      
      private var mYOffset:Number;
      
      private var mXAdvance:Number;
      
      private var mKernings:Dictionary;
      
      public function BitmapChar(id:int, texture:Texture, xOffset:Number, yOffset:Number, xAdvance:Number)
      {
         super();
         this.mCharID = id;
         this.mTexture = texture;
         this.mXOffset = xOffset;
         this.mYOffset = yOffset;
         this.mXAdvance = xAdvance;
         this.mKernings = null;
      }
      
      public function addKerning(charID:int, amount:Number) : void
      {
         if(this.mKernings == null)
         {
            this.mKernings = new Dictionary();
         }
         this.mKernings[charID] = amount;
      }
      
      public function getKerning(charID:int) : Number
      {
         if(this.mKernings == null || this.mKernings[charID] == undefined)
         {
            return 0;
         }
         return this.mKernings[charID];
      }
      
      public function createImage() : Image
      {
         return new Image(this.mTexture);
      }
      
      public function get charID() : int
      {
         return this.mCharID;
      }
      
      public function get xOffset() : Number
      {
         return this.mXOffset;
      }
      
      public function get yOffset() : Number
      {
         return this.mYOffset;
      }
      
      public function get xAdvance() : Number
      {
         return this.mXAdvance;
      }
      
      public function get texture() : Texture
      {
         return this.mTexture;
      }
      
      public function get width() : Number
      {
         return this.mTexture.width;
      }
      
      public function get height() : Number
      {
         return this.mTexture.height;
      }
   }
}
