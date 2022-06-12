package §6#H§
{
   import §]#a§.§]$5§;
   import flash.display3D.Context3DBlendFactor;
   
   public class §+!'§
   {
      
      private static var §@",§:Array = [[[Context3DBlendFactor.ONE,Context3DBlendFactor.ZERO],[Context3DBlendFactor.SOURCE_ALPHA,Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA],[Context3DBlendFactor.SOURCE_ALPHA,Context3DBlendFactor.DESTINATION_ALPHA],[Context3DBlendFactor.DESTINATION_COLOR,Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA],[Context3DBlendFactor.SOURCE_ALPHA,Context3DBlendFactor.ONE],[Context3DBlendFactor.ZERO,Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA]],[[Context3DBlendFactor.ONE,Context3DBlendFactor.ZERO],[Context3DBlendFactor.ONE,Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA],[Context3DBlendFactor.ONE,Context3DBlendFactor.ONE],[Context3DBlendFactor.DESTINATION_COLOR,Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA],[Context3DBlendFactor.ONE,Context3DBlendFactor.ONE_MINUS_SOURCE_COLOR],[Context3DBlendFactor.ZERO,Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA]]];
      
      public static const AUTO:int = -1;
      
      public static const NONE:int = 0;
      
      public static const NORMAL:int = 1;
      
      public static const §'!_§:int = 2;
      
      public static const §7"Q§:int = 3;
      
      public static const SCREEN:int = 4;
      
      public static const §5"a§:int = 5;
      
      private static const §<"z§:int = 5;
       
      
      public function §+!'§()
      {
         super();
         throw new §]$5§();
      }
      
      public static function §[#3§(param1:int, param2:Boolean = true) : Array
      {
         var _loc3_:Object = §@",§[int(param2)];
         if(param1 >= 0 && param1 <= §<"z§)
         {
            return _loc3_[param1];
         }
         throw new ArgumentError("Invalid blend mode");
      }
   }
}
