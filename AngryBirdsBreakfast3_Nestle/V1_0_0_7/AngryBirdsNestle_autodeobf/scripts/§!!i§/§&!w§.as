package §!!i§
{
   import flash.display.MovieClip;
   
   public class §&!w§ extends §@r§
   {
      
      private static const §%!L§:String = "TUTORIAL_";
       
      
      public function §&!w§()
      {
         super();
      }
      
      override protected function solveLinkageName(param1:String) : String
      {
         var _loc2_:String = "";
         switch(param1)
         {
            case "BIRD_REDBIG":
               _loc2_ = "Tutorial_Big_Brother";
               break;
            case "BIRD_BLUE":
               _loc2_ = "Tutorial_Blue";
               break;
            case "BIRD_BLACK":
               _loc2_ = "Tutorial_Bomb";
               break;
            case "BIRD_RED":
               _loc2_ = "Tutorial_Red";
               break;
            case "BIRD_YELLOW":
               _loc2_ = "Tutorial_Yellow";
               break;
            case "BIRD_WHITE":
               _loc2_ = "Tutorial_White";
               break;
            default:
               return null;
         }
         return _loc2_;
      }
      
      override public function solve(param1:String) : MovieClip
      {
         var _loc2_:String = this.solveLinkageName(param1);
         return §[!^§(_loc2_);
      }
   }
}
