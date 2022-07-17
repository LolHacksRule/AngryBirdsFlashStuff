package com.AngryBirds.ui
{
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   
   public class ViewLevelStart extends UIView
   {
       
      
      public function ViewLevelStart(param1:StateBase)
      {
         super(param1);
      }
      
      override public function init(param1:XML) : void
      {
         super.init(ViewXMLLibrary.mLibrary.Views.View_LevelStart[0]);
      }
      
      override public function listenerEventOccured(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         var _loc4_:Object = null;
         super.listenerEventOccured(param1,param2,param3);
         switch(param2)
         {
            case "PLAY_SUN_ANIMATION":
               if((_loc4_ = getItemByName("MovieClip_JapanSun")) is UIMovieClipRovio)
               {
                  (_loc4_ as UIMovieClipRovio).setVisibility(true);
                  (_loc4_ as UIMovieClipRovio).PlayAt(10);
                  break;
               }
               break;
            case "STOP_SUN_ANIMATION":
               if((_loc4_ = getItemByName("MovieClip_JapanSun")) is UIMovieClipRovio)
               {
                  (_loc4_ as UIMovieClipRovio).StopAt(0);
                  break;
               }
         }
      }
   }
}
