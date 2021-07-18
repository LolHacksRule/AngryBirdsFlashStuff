package com.rovio.states
{
   public class StateTemplate extends StateBase
   {
      
      public static const STATE_NAME:String = "template";
       
      
      public function StateTemplate(initState:Boolean = true, name:String = "template")
      {
         super(initState,name);
         mGenericState = true;
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
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
   }
}
