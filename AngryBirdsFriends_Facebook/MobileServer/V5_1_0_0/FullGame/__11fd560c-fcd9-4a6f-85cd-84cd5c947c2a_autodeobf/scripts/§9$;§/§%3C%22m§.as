package §9$;§
{
   import flash.display3D.Context3DTextureFormat;
   import flash.utils.ByteArray;
   
   class §<"m§
   {
       
      
      private var §]"0§:String;
      
      private var §4"V§:int;
      
      private var §""&§:int;
      
      private var §%"[§:int;
      
      private var §["[§:ByteArray;
      
      function §<"m§(param1:ByteArray)
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
               this.§]"0§ = Context3DTextureFormat.BGRA;
               break;
            case 2:
            case 3:
               this.§]"0§ = Context3DTextureFormat.COMPRESSED;
               break;
            case 4:
            case 5:
               this.§]"0§ = "compressedAlpha";
               break;
            default:
               throw new Error("Invalid ATF format");
         }
         this.§4"V§ = Math.pow(2,param1[7]);
         this.§""&§ = Math.pow(2,param1[8]);
         this.§%"[§ = param1[9];
         this.§["[§ = param1;
      }
      
      public function get format() : String
      {
         return this.§]"0§;
      }
      
      public function get width() : int
      {
         return this.§4"V§;
      }
      
      public function get height() : int
      {
         return this.§""&§;
      }
      
      public function get §]!I§() : int
      {
         return this.§%"[§;
      }
      
      public function get data() : ByteArray
      {
         return this.§["[§;
      }
   }
}
