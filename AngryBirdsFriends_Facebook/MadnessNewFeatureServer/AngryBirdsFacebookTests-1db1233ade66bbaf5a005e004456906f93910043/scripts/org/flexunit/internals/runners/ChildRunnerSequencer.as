package org.flexunit.internals.runners
{
   import flash.events.IEventDispatcher;
   import org.flexunit.internals.runners.statements.IAsyncStatement;
   import org.flexunit.internals.runners.statements.StatementSequencer;
   import org.flexunit.runner.notification.IRunNotifier;
   
   public class ChildRunnerSequencer extends StatementSequencer implements IAsyncStatement
   {
      
      public static const COMPLETE:String = "complete";
       
      
      private var runChild:Function;
      
      private var notifier:IRunNotifier;
      
      private var parent:IEventDispatcher;
      
      public function ChildRunnerSequencer(children:Array, runChild:Function, notifier:IRunNotifier)
      {
         super(children);
         this.runChild = runChild;
         this.notifier = notifier;
         this.parent = this.parent;
      }
      
      override protected function executeStep(child:*) : void
      {
         this.runChild(child,this.notifier,myToken);
      }
      
      override public function toString() : String
      {
         return "ChildRunnerSequence";
      }
   }
}
