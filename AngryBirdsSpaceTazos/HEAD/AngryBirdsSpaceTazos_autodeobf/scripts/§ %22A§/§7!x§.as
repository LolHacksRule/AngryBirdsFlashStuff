package § "A§
{
   import flash.display.MovieClip;
   
   public class §7!x§ extends §3!t§
   {
      
      private static const §7"!§:String = "TUTORIAL_";
       
      
      public function §7!x§()
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
         return §,"6§(_loc2_);
      }
   }
}
