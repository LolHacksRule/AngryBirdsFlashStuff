package com.rovio.states
{
   import com.rovio.data.localization.LocalizationManager;
   
   public class StateTemplate extends StateBase
   {
      
      public static const STATE_NAME:String = "template";
       
      
      public function StateTemplate(localizationManager:LocalizationManager, initState:Boolean = true, name:String = "template")
      {
         super(initState,name,localizationManager);
         mGenericState = true;
      }
      
      override protected function init() : void
      {
         super.init();
      }
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
      }
      
      override protected function update(deltaTime:Number) : void
      {
         super.update(deltaTime);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
   }
}
