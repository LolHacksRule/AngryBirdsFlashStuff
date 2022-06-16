package starling.display
{
   import flash.display3D.Context3DBlendFactor;
   import starling.errors.AbstractClassError;
   
   public class BlendMode
   {
      
      private static var sBlendFactors:Array = [[[Context3DBlendFactor.ONE,Context3DBlendFactor.ZERO],[Context3DBlendFactor.SOURCE_ALPHA,Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA],[Context3DBlendFactor.SOURCE_ALPHA,Context3DBlendFactor.DESTINATION_ALPHA],[Context3DBlendFactor.DESTINATION_COLOR,Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA],[Context3DBlendFactor.SOURCE_ALPHA,Context3DBlendFactor.ONE],[Context3DBlendFactor.ZERO,Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA]],[[Context3DBlendFactor.ONE,Context3DBlendFactor.ZERO],[Context3DBlendFactor.ONE,Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA],[Context3DBlendFactor.ONE,Context3DBlendFactor.ONE],[Context3DBlendFactor.DESTINATION_COLOR,Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA],[Context3DBlendFactor.ONE,Context3DBlendFactor.ONE_MINUS_SOURCE_COLOR],[Context3DBlendFactor.ZERO,Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA]]];
      
      public static const AUTO:int = -1;
      
      public static const NONE:int = 0;
      
      public static const NORMAL:int = 1;
      
      public static const ADD:int = 2;
      
      public static const MULTIPLY:int = 3;
      
      public static const SCREEN:int = 4;
      
      public static const ERASE:int = 5;
      
      private static const MAX:int = 5;
       
      
      public function BlendMode()
      {
         super();
         throw new AbstractClassError();
      }
      
      public static function getBlendFactors(mode:int, premultipliedAlpha:Boolean = true) : Array
      {
         var modes:Object = sBlendFactors[int(premultipliedAlpha)];
         if(mode >= 0 && mode <= MAX)
         {
            return modes[mode];
         }
         throw new ArgumentError("Invalid blend mode");
      }
   }
}
