package §-"+§
{
   import flash.display3D.Context3DTextureFormat;
   import flash.utils.ByteArray;
   
   class §%!%§
   {
       
      
      private var §0#U§:String;
      
      private var § ";§:int;
      
      private var §;!U§:int;
      
      private var §#!z§:int;
      
      private var §]!$§:ByteArray;
      
      function §%!%§(param1:ByteArray)
      {
         super();
         var _loc2_:String = String.fromCharCode(param1[0],param1[1],param1[2]);
         if(_loc2_ != "ATF")
         {
            throw new ArgumentError("Invalid ATF data");
         }
         switch(param1[6])
         {
            case 0:
            case 1:
               this.§0#U§ = Context3DTextureFormat.BGRA;
               break;
            case 2:
            case 3:
               this.§0#U§ = Context3DTextureFormat.COMPRESSED;
               break;
            case 4:
            case 5:
               this.§0#U§ = "compressedAlpha";
               break;
            default:
               throw new Error("Invalid ATF format");
         }
         this.§ ";§ = Math.pow(2,param1[7]);
         this.§;!U§ = Math.pow(2,param1[8]);
         this.§#!z§ = param1[9];
         this.§]!$§ = param1;
      }
      
      public function get format() : String
      {
         return this.§0#U§;
      }
      
      public function get width() : int
      {
         return this.§ ";§;
      }
      
      public function get height() : int
      {
         return this.§;!U§;
      }
      
      public function get §#l§() : int
      {
         return this.§#!z§;
      }
      
      public function get data() : ByteArray
      {
         return this.§]!$§;
      }
   }
}
