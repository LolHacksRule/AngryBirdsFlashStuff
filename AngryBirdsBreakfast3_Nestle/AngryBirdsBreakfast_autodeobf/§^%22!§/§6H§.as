package §^"!§
{
   import flash.display.MovieClip;
   
   public class §6H§ extends §;,§
   {
       
      
      public function §6H§()
      {
         super();
      }
      
      protected function solveLinkageName(param1:String) : String
      {
         var _loc2_:String = "";
         switch(param1)
         {
            case "BIRD_BLACK":
               _loc2_ = "TUTORIAL_BLACK";
               break;
            case "BIRD_BLUE":
               _loc2_ = "TUTORIAL_BLUE";
               break;
            case "BIRD_RED":
               _loc2_ = "TUTORIAL_RED";
               break;
            case "BIRD_WHITE":
               _loc2_ = "TUTORIAL_WHITE";
               break;
            case "BIRD_YELLOW":
               _loc2_ = "TUTORIAL_YELLOW";
               break;
            case "BIRD_GREEN":
               _loc2_ = "TUTORIAL_BOOMERANG";
               break;
            case "BIRD_REDBIG":
               _loc2_ = "TUTORIAL_BIG_BROTHER";
               break;
            default:
               return null;
         }
         return _loc2_;
      }
      
      override public function solve(param1:String) : MovieClip
      {
         var _loc2_:String = this.solveLinkageName(param1);
         return §-!C§(_loc2_);
      }
   }
}
