package org.fluint.uiImpersonation.actionScript
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import org.fluint.uiImpersonation.IVisualEnvironmentBuilder;
   import org.fluint.uiImpersonation.IVisualTestEnvironment;
   
   public class ActionScriptEnvironmentBuilder implements IVisualEnvironmentBuilder
   {
       
      
      protected var visualDisplayRoot:DisplayObjectContainer;
      
      protected var environmentProxy:IVisualTestEnvironment;
      
      public function ActionScriptEnvironmentBuilder(visualDisplayRoot:DisplayObjectContainer)
      {
         super();
         this.visualDisplayRoot = visualDisplayRoot;
      }
      
      public function buildVisualTestEnvironment() : IVisualTestEnvironment
      {
         if(!this.environmentProxy)
         {
            this.environmentProxy = new ActionScriptVisualTestEnvironment();
         }
         if(this.visualDisplayRoot && this.environmentProxy.testEnvironment is DisplayObject)
         {
            this.visualDisplayRoot.addChild(this.environmentProxy.testEnvironment);
         }
         return this.environmentProxy;
      }
   }
}
