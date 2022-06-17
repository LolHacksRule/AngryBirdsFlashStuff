package §""'§
{
   import flash.display3D.Context3DTextureFormat;
   import flash.utils.ByteArray;
   
   class §?]§
   {
       
      
      private var §]"!§:String;
      
      private var §@#Z§:int;
      
      private var §+#j§:int;
      
      private var § true§:int;
      
      private var §"""§:ByteArray;
      
      function §?]§(param1:ByteArray)
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
               this.§]"!§ = Context3DTextureFormat.BGRA;
               break;
            case 2:
            case 3:
               this.§]"!§ = Context3DTextureFormat.COMPRESSED;
               break;
            case 4:
            case 5:
               this.§]"!§ = "compressedAlpha";
               break;
            default:
               throw new Error("Invalid ATF format");
         }
         this.§@#Z§ = Math.pow(2,param1[7]);
         this.§+#j§ = Math.pow(2,param1[8]);
         this.§ true§ = param1[9];
         this.§"""§ = param1;
      }
      
      public function get format() : String
      {
         return this.§]"!§;
      }
      
      public function get width() : int
      {
         return this.§@#Z§;
      }
      
      public function get height() : int
      {
         return this.§+#j§;
      }
      
      public function get §?#5§() : int
      {
         return this.§ true§;
      }
      
      public function get data() : ByteArray
      {
         return this.§"""§;
      }
   }
}
