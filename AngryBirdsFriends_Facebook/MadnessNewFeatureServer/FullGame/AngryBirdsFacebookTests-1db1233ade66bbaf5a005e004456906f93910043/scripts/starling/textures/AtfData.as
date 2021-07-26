package starling.textures
{
   import flash.display3D.Context3DTextureFormat;
   import flash.utils.ByteArray;
   
   class AtfData
   {
       
      
      private var mFormat:String;
      
      private var mWidth:int;
      
      private var mHeight:int;
      
      private var mNumTextures:int;
      
      private var mData:ByteArray;
      
      function AtfData(data:ByteArray)
      {
         super();
         var signature:String = String.fromCharCode(data[0],data[1],data[2]);
         if(signature != "ATF")
         {
            throw new ArgumentError("Invalid ATF data");
         }
         switch(data[6])
         {
            case 0:
            case 1:
               this.mFormat = Context3DTextureFormat.BGRA;
               break;
            case 2:
            case 3:
               this.mFormat = Context3DTextureFormat.COMPRESSED;
               break;
            case 4:
            case 5:
               this.mFormat = "compressedAlpha";
               break;
            default:
               throw new Error("Invalid ATF format");
         }
         this.mWidth = Math.pow(2,data[7]);
         this.mHeight = Math.pow(2,data[8]);
         this.mNumTextures = data[9];
         this.mData = data;
      }
      
      public function get format() : String
      {
         return this.mFormat;
      }
      
      public function get width() : int
      {
         return this.mWidth;
      }
      
      public function get height() : int
      {
         return this.mHeight;
      }
      
      public function get numTextures() : int
      {
         return this.mNumTextures;
      }
      
      public function get data() : ByteArray
      {
         return this.mData;
      }
   }
}
