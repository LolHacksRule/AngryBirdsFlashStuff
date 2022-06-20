package §""4§
{
   import flash.display3D.Context3DTextureFormat;
   import flash.utils.ByteArray;
   
   class §@";§
   {
       
      
      private var §%M§:String;
      
      private var §@!l§:int;
      
      private var §,7§:int;
      
      private var §8#l§:int;
      
      private var §6"G§:ByteArray;
      
      function §@";§(param1:ByteArray)
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
               this.§%M§ = Context3DTextureFormat.BGRA;
               break;
            case 2:
            case 3:
               this.§%M§ = Context3DTextureFormat.COMPRESSED;
               break;
            case 4:
            case 5:
               this.§%M§ = "compressedAlpha";
               break;
            default:
               throw new Error("Invalid ATF format");
         }
         this.§@!l§ = Math.pow(2,param1[7]);
         this.§,7§ = Math.pow(2,param1[8]);
         this.§8#l§ = param1[9];
         this.§6"G§ = param1;
      }
      
      public function get format() : String
      {
         return this.§%M§;
      }
      
      public function get width() : int
      {
         return this.§@!l§;
      }
      
      public function get height() : int
      {
         return this.§,7§;
      }
      
      public function get §?e§() : int
      {
         return this.§8#l§;
      }
      
      public function get data() : ByteArray
      {
         return this.§6"G§;
      }
   }
}
