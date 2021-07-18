package com.AngryBirds.ui
{
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   
   public class ViewLevelStart extends UIView
   {
       
      
      public function ViewLevelStart(newStateBase:StateBase)
      {
         super(newStateBase);
      }
      
      override public function init(data:XML) : void
      {
         super.init(ViewXMLLibrary.mLibrary.Views.View_LevelStart[0]);
      }
      
      override public function listenerEventOccured(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var obj:Object = null;
         super.listenerEventOccured(eventIndex,eventName,component);
         switch(eventName)
         {
            case "PLAY_SUN_ANIMATION":
               obj = getItemByName("MovieClip_JapanSun");
               if(obj is UIMovieClipRovio)
               {
                  (obj as UIMovieClipRovio).setVisibility(true);
                  (obj as UIMovieClipRovio).PlayAt(10);
               }
               break;
            case "STOP_SUN_ANIMATION":
               obj = getItemByName("MovieClip_JapanSun");
               if(obj is UIMovieClipRovio)
               {
                  (obj as UIMovieClipRovio).StopAt(0);
               }
         }
      }
   }
}
