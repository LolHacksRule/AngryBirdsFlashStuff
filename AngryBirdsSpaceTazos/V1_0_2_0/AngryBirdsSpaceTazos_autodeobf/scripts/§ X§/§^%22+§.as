package § X§
{
   import flash.display.MovieClip;
   
   public class §^"+§ extends §0"7§
   {
      
      private static const §7V§:String = "TUTORIAL_";
       
      
      public function §^"+§()
      {
         super();
      }
      
      override protected function solveLinkageName(param1:String) : String
      {
         var _loc2_:String = "";
         switch(param1)
         {
            case "RedBigBird":
               _loc2_ = "Tutorial_Big_Brother";
               break;
            case "SmallBlueBird":
               _loc2_ = "Tutorial_Blue";
               break;
            case "BlackBird":
               _loc2_ = "Tutorial_Bomb";
               break;
            case "RedBird":
               _loc2_ = "Tutorial_Red";
               break;
            case "LaserBird":
               _loc2_ = "Tutorial_Lazer";
               break;
            case "TazosBird":
               _loc2_ = "Tutorial_Tazos";
               break;
            default:
               return null;
         }
         return _loc2_;
      }
      
      override public function solve(param1:String) : MovieClip
      {
         var _loc2_:String = this.solveLinkageName(param1);
         return §<"D§(_loc2_);
      }
   }
}
