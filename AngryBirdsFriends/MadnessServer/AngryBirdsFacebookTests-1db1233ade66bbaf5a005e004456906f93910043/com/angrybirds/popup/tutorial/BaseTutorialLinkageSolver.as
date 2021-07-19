package com.angrybirds.popup.tutorial
{
   import flash.display.MovieClip;
   
   public class BaseTutorialLinkageSolver extends AbstractTutorialSolver
   {
       
      
      public function BaseTutorialLinkageSolver()
      {
         super();
      }
      
      protected function solveLinkageName(tutorialName:String) : String
      {
         var linkageName:String = "";
         switch(tutorialName)
         {
            case "BIRD_BLACK":
               linkageName = "TUTORIAL_BLACK";
               break;
            case "BIRD_BLUE":
               linkageName = "TUTORIAL_BLUE";
               break;
            case "BIRD_RED":
               linkageName = "TUTORIAL_RED";
               break;
            case "BIRD_WHITE":
               linkageName = "TUTORIAL_WHITE";
               break;
            case "BIRD_YELLOW":
               linkageName = "TUTORIAL_YELLOW";
               break;
            case "BIRD_GREEN":
               linkageName = "TUTORIAL_BOOMERANG";
               break;
            case "BIRD_REDBIG":
               linkageName = "TUTORIAL_BIG_BROTHER";
               break;
            default:
               return null;
         }
         return linkageName;
      }
      
      override public function solve(targetName:String) : MovieClip
      {
         var tutorialName:String = this.solveLinkageName(targetName);
         return solveTutorialClip(tutorialName);
      }
   }
}
