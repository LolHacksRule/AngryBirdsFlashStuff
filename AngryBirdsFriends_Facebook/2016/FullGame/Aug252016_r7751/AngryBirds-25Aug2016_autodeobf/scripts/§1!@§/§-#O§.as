package §1!@§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   
   public class §-#O§
   {
       
      
      public function §-#O§()
      {
         super();
      }
      
      public static function each(param1:MovieClip, param2:String) : void
      {
         if(param2 && §,!T§(param1,param2))
         {
            param1.gotoAndStop(param2);
         }
         else
         {
            param1.gotoAndStop(1);
         }
      }
      
      public static function §,!T§(param1:MovieClip, param2:String) : Boolean
      {
         var _loc3_:int = param1.currentLabels.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(param1.currentLabels[_loc4_].name == param2)
            {
               return true;
            }
            _loc4_++;
         }
         return false;
      }
   }
}
