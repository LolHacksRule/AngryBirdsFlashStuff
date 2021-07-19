package §5§#7
{
   import flash.display.MovieClip;
   
   public class §8"`§ extends § #-§
   {
      
      private static const §1l§:String = "TUTORIAL_";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §1l§ = "TUTORIAL_";
         }
      }
      
      public function §8"`§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      protected function §,#+§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§1l§);
         if(!(_loc4_ && param1))
         {
            §§push(§§pop() + param1.toUpperCase());
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() == "")
               {
                  if(_loc3_ || this)
                  {
                     throw new Error("--#BirdTutorialSolver[solveTutorialName]::Tutorial linkage not found with tutorial name: " + param1);
                  }
                  addr69:
                  §§push(_loc2_);
               }
               §§goto(addr69);
            }
            return §§pop();
         }
         §§goto(addr69);
      }
      
      override public function solve(param1:String) : MovieClip
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§,#+§(param1));
         if(_loc3_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         return §;J§(_loc2_);
      }
   }
}
