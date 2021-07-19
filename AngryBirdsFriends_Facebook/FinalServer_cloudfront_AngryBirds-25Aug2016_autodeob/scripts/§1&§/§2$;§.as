package §1&§
{
   import flash.display3D.Context3DTextureFormat;
   import flash.utils.ByteArray;
   
   class §2$;§
   {
       
      
      private var §'!J§:String;
      
      private var §]<§:int;
      
      private var §""b§:int;
      
      private var §1m§:int;
      
      private var §+!&§:ByteArray;
      
      function §2$;§(param1:ByteArray)
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
               this.§'!J§ = Context3DTextureFormat.BGRA;
               break;
            case 2:
            case 3:
               this.§'!J§ = Context3DTextureFormat.COMPRESSED;
               break;
            case 4:
            case 5:
               this.§'!J§ = "compressedAlpha";
               break;
            default:
               throw new Error("Invalid ATF format");
         }
         this.§]<§ = Math.pow(2,param1[7]);
         this.§""b§ = Math.pow(2,param1[8]);
         this.§1m§ = param1[9];
         this.§+!&§ = param1;
      }
      
      public function get format() : String
      {
         return this.§'!J§;
      }
      
      public function get width() : int
      {
         return this.§]<§;
      }
      
      public function get height() : int
      {
         return this.§""b§;
      }
      
      public function get §5"H§() : int
      {
         return this.§1m§;
      }
      
      public function get data() : ByteArray
      {
         return this.§+!&§;
      }
   }
}
