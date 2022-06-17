package §8"b§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   
   public class §1!9§
   {
       
      
      public function §1!9§()
      {
         super();
      }
      
      public static function §`!c§(param1:MovieClip, param2:String) : void
      {
         if(param2 && §9!<§(param1,param2))
         {
            param1.gotoAndStop(param2);
         }
         else
         {
            param1.gotoAndStop(1);
         }
      }
      
      public static function §9!<§(param1:MovieClip, param2:String) : Boolean
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
