package §"!n§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   
   public class §^#f§
   {
       
      
      public function §^#f§()
      {
         super();
      }
      
      public static function §##[§(param1:MovieClip, param2:String) : void
      {
         if(param2 && §=!`§(param1,param2))
         {
            param1.gotoAndStop(param2);
         }
         else
         {
            param1.gotoAndStop(1);
         }
      }
      
      public static function §=!`§(param1:MovieClip, param2:String) : Boolean
      {
         var _loc5_:FrameLabel = null;
         var _loc3_:int = param1.currentLabels.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if((_loc5_ = param1.currentLabels[_loc4_]).name == param2)
            {
               return true;
            }
            _loc4_++;
         }
         return false;
      }
   }
}
