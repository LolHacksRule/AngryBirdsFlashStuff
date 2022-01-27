package §5§#7
{
   import flash.display.MovieClip;
   
   public class §8"`§ extends § #-§
   {
      
      private static const §1l§:String = "TUTORIAL_";
       
      
      public function §8"`§()
      {
         super();
      }
      
      protected function §,#+§(param1:String) : String
      {
         var _loc2_:String = §1l§ + param1.toUpperCase();
         if(_loc2_ == "")
         {
            throw new Error("--#BirdTutorialSolver[solveTutorialName]::Tutorial linkage not found with tutorial name: " + param1);
         }
         return _loc2_;
      }
      
      override public function solve(param1:String) : MovieClip
      {
         var _loc2_:String = this.§,#+§(param1);
         return §;J§(_loc2_);
      }
   }
}
