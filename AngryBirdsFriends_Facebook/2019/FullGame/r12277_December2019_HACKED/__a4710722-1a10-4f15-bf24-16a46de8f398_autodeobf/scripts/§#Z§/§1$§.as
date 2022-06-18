package §#Z§
{
   import §8"'§.§2!H§;
   import flash.display3D.Context3DBlendFactor;
   
   public class §1$§
   {
      
      private static var §&"<§:Array = [[[Context3DBlendFactor.ONE,Context3DBlendFactor.ZERO],[Context3DBlendFactor.SOURCE_ALPHA,Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA],[Context3DBlendFactor.SOURCE_ALPHA,Context3DBlendFactor.DESTINATION_ALPHA],[Context3DBlendFactor.DESTINATION_COLOR,Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA],[Context3DBlendFactor.SOURCE_ALPHA,Context3DBlendFactor.ONE],[Context3DBlendFactor.ZERO,Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA]],[[Context3DBlendFactor.ONE,Context3DBlendFactor.ZERO],[Context3DBlendFactor.ONE,Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA],[Context3DBlendFactor.ONE,Context3DBlendFactor.ONE],[Context3DBlendFactor.DESTINATION_COLOR,Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA],[Context3DBlendFactor.ONE,Context3DBlendFactor.ONE_MINUS_SOURCE_COLOR],[Context3DBlendFactor.ZERO,Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA]]];
      
      public static const AUTO:int = -1;
      
      public static const NONE:int = 0;
      
      public static const NORMAL:int = 1;
      
      public static const §!6§:int = 2;
      
      public static const §3J§:int = 3;
      
      public static const SCREEN:int = 4;
      
      public static const §+!%§:int = 5;
      
      private static const §;!8§:int = 5;
       
      
      public function §1$§()
      {
         super();
         throw new §2!H§();
      }
      
      public static function §'"]§(param1:int, param2:Boolean = true) : Array
      {
         var _loc3_:Object = §&"<§[int(param2)];
         if(param1 >= 0 && param1 <= §;!8§)
         {
            return _loc3_[param1];
         }
         throw new ArgumentError("Invalid blend mode");
      }
   }
}
