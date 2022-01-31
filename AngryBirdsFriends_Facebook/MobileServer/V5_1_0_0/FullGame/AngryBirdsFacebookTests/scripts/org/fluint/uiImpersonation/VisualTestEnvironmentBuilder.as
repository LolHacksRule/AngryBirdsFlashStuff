package org.fluint.uiImpersonation
{
   import flash.display.DisplayObjectContainer;
   import org.fluint.uiImpersonation.actionScript.ActionScriptEnvironmentBuilder;
   
   public class VisualTestEnvironmentBuilder implements IVisualEnvironmentBuilder
   {
      
      protected static var instance:VisualTestEnvironmentBuilder;
       
      
      protected var builder:IVisualEnvironmentBuilder;
      
      protected var visualDisplayRoot:DisplayObjectContainer;
      
      public function VisualTestEnvironmentBuilder(visualDisplayRoot:DisplayObjectContainer)
      {
         super();
         this.visualDisplayRoot = visualDisplayRoot;
         if(!this.builder)
         {
            this.builder = new ActionScriptEnvironmentBuilder(visualDisplayRoot);
         }
      }
      
      public static function getInstance(visualDisplayRoot:DisplayObjectContainer = null) : VisualTestEnvironmentBuilder
      {
         if(!instance)
         {
            instance = new VisualTestEnvironmentBuilder(visualDisplayRoot);
         }
         return instance;
      }
      
      public function buildVisualTestEnvironment() : IVisualTestEnvironment
      {
         return this.builder.buildVisualTestEnvironment();
      }
   }
}
