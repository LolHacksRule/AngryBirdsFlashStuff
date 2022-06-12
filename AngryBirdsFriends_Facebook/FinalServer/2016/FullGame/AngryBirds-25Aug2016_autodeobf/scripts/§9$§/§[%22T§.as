package §9$§
{
   import §'#Z§.§"!v§;
   import flash.display3D.Context3DBlendFactor;
   
   public class §["T§
   {
      
      private static var § "W§:Array = [[[Context3DBlendFactor.ONE,Context3DBlendFactor.ZERO],[Context3DBlendFactor.SOURCE_ALPHA,Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA],[Context3DBlendFactor.SOURCE_ALPHA,Context3DBlendFactor.DESTINATION_ALPHA],[Context3DBlendFactor.DESTINATION_COLOR,Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA],[Context3DBlendFactor.SOURCE_ALPHA,Context3DBlendFactor.ONE],[Context3DBlendFactor.ZERO,Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA]],[[Context3DBlendFactor.ONE,Context3DBlendFactor.ZERO],[Context3DBlendFactor.ONE,Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA],[Context3DBlendFactor.ONE,Context3DBlendFactor.ONE],[Context3DBlendFactor.DESTINATION_COLOR,Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA],[Context3DBlendFactor.ONE,Context3DBlendFactor.ONE_MINUS_SOURCE_COLOR],[Context3DBlendFactor.ZERO,Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA]]];
      
      public static const AUTO:int = -1;
      
      public static const NONE:int = 0;
      
      public static const NORMAL:int = 1;
      
      public static const §+"]§:int = 2;
      
      public static const §6f§:int = 3;
      
      public static const SCREEN:int = 4;
      
      public static const §4#x§:int = 5;
      
      private static const §'4§:int = 5;
       
      
      public function §["T§()
      {
         super();
         throw new §"!v§();
      }
      
      public static function § !v§(param1:int, param2:Boolean = true) : Array
      {
         var _loc3_:Object = § "W§[int(param2)];
         if(param1 >= 0 && param1 <= §'4§)
         {
            return _loc3_[param1];
         }
         throw new ArgumentError("Invalid blend mode");
      }
   }
}
