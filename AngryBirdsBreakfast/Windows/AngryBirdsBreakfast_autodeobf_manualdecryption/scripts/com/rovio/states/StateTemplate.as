package com.rovio.states
{
   import com.rovio.data.localization.LocalizationManager;
   
   public class StateTemplate extends StateBase
   {
      
      public static const STATE_NAME:String = "template";
       
      
      public function StateTemplate(param1:LocalizationManager, param2:Boolean = true, param3:String = "template")
      {
         super(param2,param3,param1);
         mGenericState = true;
      }
      
      override protected function init() : void
      {
         super.init();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
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
