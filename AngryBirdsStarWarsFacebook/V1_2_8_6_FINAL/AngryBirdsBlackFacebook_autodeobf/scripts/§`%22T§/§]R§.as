package §`"T§
{
   import flash.display.MovieClip;
   
   public class §]R§ extends §'P§
   {
      
      private static const §'!!§:String = "TUTORIAL_";
       
      
      public function §]R§()
      {
         super();
      }
      
      protected function §'"7§(param1:String) : String
      {
         var _loc2_:String = §'!!§ + param1.toUpperCase();
         if(_loc2_ == "")
         {
            throw new Error("--#BirdTutorialSolver[solveTutorialName]::Tutorial linkage not found with tutorial name: " + param1);
         }
         return _loc2_;
      }
      
      override public function solve(param1:String) : MovieClip
      {
         var _loc2_:String = this.§'"7§(param1);
         return §=[§(_loc2_);
      }
   }
}
