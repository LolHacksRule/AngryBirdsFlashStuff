package §"#z§
{
   import flash.display3D.Context3DTextureFormat;
   import flash.utils.ByteArray;
   
   class §`?§
   {
       
      
      private var §<y§:String;
      
      private var §>H§:int;
      
      private var §^l§:int;
      
      private var §8=§:int;
      
      private var §8#f§:ByteArray;
      
      function §`?§(param1:ByteArray)
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
               this.§<y§ = Context3DTextureFormat.BGRA;
               break;
            case 2:
            case 3:
               this.§<y§ = Context3DTextureFormat.COMPRESSED;
               break;
            case 4:
            case 5:
               this.§<y§ = "compressedAlpha";
               break;
            default:
               throw new Error("Invalid ATF format");
         }
         this.§>H§ = Math.pow(2,param1[7]);
         this.§^l§ = Math.pow(2,param1[8]);
         this.§8=§ = param1[9];
         this.§8#f§ = param1;
      }
      
      public function get format() : String
      {
         return this.§<y§;
      }
      
      public function get width() : int
      {
         return this.§>H§;
      }
      
      public function get height() : int
      {
         return this.§^l§;
      }
      
      public function get §#$5§() : int
      {
         return this.§8=§;
      }
      
      public function get data() : ByteArray
      {
         return this.§8#f§;
      }
   }
}
