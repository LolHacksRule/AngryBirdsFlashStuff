package com.AngryBirds.states
{
   import com.AngryBirds.ui.ViewLevelEditorStart;
   import com.rovio.factory.MouseCursorController;
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Components.UIRepeaterButtonRovio;
   
   public class StateLevelEditorStart extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelEditorStart";
       
      
      public var mLoadLevelId:String = "";
      
      public function StateLevelEditorStart(param1:Boolean = false, param2:String = "LevelEditorStart")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new ViewLevelEditorStart(this);
         mUIView.init(null);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.mLoadLevelId = "";
         mUIView.getItemByName("Button_EditorStart_Build").setVisibility(true);
         mUIView.getItemByName("Button_EditorStart_BuildFromScratch").setVisibility(false);
         mUIView.getItemByName("Button_EditorStart_SelectTemplate").setVisibility(false);
         mUIView.getItemByName("Popup_EditorStart_LoadTemplate").setVisibility(false);
         (mUIView.getItemByName("MovieClip_EditorStart_BadPiggiesLogo") as UIMovieClipRovio).PlayAt(1);
         MouseCursorController.setCursor("");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != StateBase.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         if(param2.length > 0 && param3 is UIRepeaterButtonRovio)
         {
            if((param3 as UIRepeaterButtonRovio).mParentContainer.mParentContainer.mName == "Repeater_TemplateSelection")
            {
               StateLevelLoad.prepareToLoadEditorTemplate(param2);
               this.mNextState = StateLevelLoad.STATE_NAME;
               return;
            }
         }
         switch(param2)
         {
            case "EDITOR_START_BUILD":
               mUIView.getItemByName("Button_EditorStart_Build").setVisibility(false);
               mUIView.getItemByName("Button_EditorStart_BuildFromScratch").setVisibility(true);
               mUIView.getItemByName("Button_EditorStart_SelectTemplate").setVisibility(true);
               break;
            case "EDITOR_START_BUILD_FROM_SCRATCH":
               StateLevelLoad.prepareToLoadLevelEditorDefaultLevel();
               this.mNextState = StateLevelLoad.STATE_NAME;
               break;
            case "EDITOR_START_SELECT_TEMPLATE":
               mUIView.getItemByName("Popup_EditorStart_LoadTemplate").setVisibility(true);
               break;
            case "POPUP_LOAD_LEVEL_CLOSE":
               mUIView.getItemByName("Popup_EditorStart_LoadTemplate").setVisibility(false);
               break;
            case "EDITOR_START_LOAD_TEMPLATE":
               StateLevelLoad.prepareToLoadEditorTemplate("LEVEL_TEMPLATE_1");
               this.mNextState = StateLevelLoad.STATE_NAME;
         }
      }
   }
}
