package §-#]§
{
   import flash.display3D.Context3DTextureFormat;
   import flash.utils.ByteArray;
   
   class § #<§
   {
       
      
      private var §>"0§:String;
      
      private var §>"h§:int;
      
      private var §"#G§:int;
      
      private var §=d§:int;
      
      private var §1!,§:ByteArray;
      
      function § #<§(param1:ByteArray)
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
               this.§>"0§ = Context3DTextureFormat.BGRA;
               break;
            case 2:
            case 3:
               this.§>"0§ = Context3DTextureFormat.COMPRESSED;
               break;
            case 4:
            case 5:
               this.§>"0§ = "compressedAlpha";
               break;
            default:
               throw new Error("Invalid ATF format");
         }
         this.§>"h§ = Math.pow(2,param1[7]);
         this.§"#G§ = Math.pow(2,param1[8]);
         this.§=d§ = param1[9];
         this.§1!,§ = param1;
      }
      
      public function get format() : String
      {
         return this.§>"0§;
      }
      
      public function get width() : int
      {
         return this.§>"h§;
      }
      
      public function get height() : int
      {
         return this.§"#G§;
      }
      
      public function get §,!Z§() : int
      {
         return this.§=d§;
      }
      
      public function get data() : ByteArray
      {
         return this.§1!,§;
      }
   }
}
