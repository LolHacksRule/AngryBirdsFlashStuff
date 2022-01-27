package §0b§
{
   import flash.display.MovieClip;
   
   public class §-W§ extends §&!c§
   {
      
      private static const §-!K§:String = "TUTORIAL_";
       
      
      public function §-W§()
      {
         super();
      }
      
      protected function §]"2§(param1:String) : String
      {
         var _loc2_:String = §-!K§ + param1.toUpperCase();
         if(_loc2_ == "")
         {
            throw new Error("--#BirdTutorialSolver[solveTutorialName]::Tutorial linkage not found with tutorial name: " + param1);
         }
         return _loc2_;
      }
      
      override public function solve(param1:String) : MovieClip
      {
         var _loc2_:String = this.§]"2§(param1);
         return §+"-§(_loc2_);
      }
   }
}
