package org.fluint.sequence
{
   import flash.events.Event;
   
   public class SequenceRunner
   {
       
      
      protected var testCase;
      
      protected var steps:Array;
      
      protected var assertHandlers:Array;
      
      protected var currentStep:int = 0;
      
      protected var _executingStep:ISequenceStep;
      
      protected var _pendingStep:ISequencePend;
      
      public function SequenceRunner(testCase:*)
      {
         super();
         this.steps = new Array();
         this.assertHandlers = new Array();
         this.testCase = testCase;
      }
      
      public function get numberOfSteps() : int
      {
         return this.steps.length;
      }
      
      public function getStep(stepIndex:int) : ISequenceStep
      {
         return this.steps[stepIndex];
      }
      
      public function getExecutingStep() : ISequenceStep
      {
         return this._executingStep;
      }
      
      public function getPendingStep() : ISequencePend
      {
         return this._pendingStep;
      }
      
      public function addStep(step:ISequenceStep) : void
      {
         this.steps.push(step);
      }
      
      public function addAssertHandler(assertHandler:Function, passThroughData:Object) : void
      {
         this.assertHandlers.push(new AssertHandler(assertHandler,passThroughData));
      }
      
      public function run() : void
      {
         this.continueSequence(null);
      }
      
      protected function applyActions(actions:Array) : void
      {
         for(var i:int = 0; i < actions.length; i++)
         {
            this._executingStep = actions[i] as ISequenceStep;
            (actions[i] as ISequenceAction).execute();
         }
      }
      
      protected function applyHandlers(event:Event) : void
      {
         var handler:AssertHandler = null;
         for(var i:int = 0; i < this.assertHandlers.length; i++)
         {
            handler = this.assertHandlers[i] as AssertHandler;
            handler.assertHandler(event,handler.passThroughData);
         }
      }
      
      public function continueSequence(event:Event) : void
      {
         var nextPend:ISequencePend = null;
         var actionArray:Array = new Array();
         var scheduledNewAsync:Boolean = false;
         while(this.currentStep < this.numberOfSteps)
         {
            if(this.steps[this.currentStep] is ISequencePend)
            {
               nextPend = this.steps[this.currentStep] as ISequencePend;
               ++this.currentStep;
               break;
            }
            actionArray.push(this.steps[this.currentStep]);
            ++this.currentStep;
         }
         if(nextPend)
         {
            this._pendingStep = nextPend;
            nextPend.setupListeners(this.testCase,this);
            scheduledNewAsync = true;
         }
         this.applyActions(actionArray);
         if(this.currentStep >= this.numberOfSteps && !scheduledNewAsync)
         {
            this.applyHandlers(event);
         }
      }
   }
}

class AssertHandler
{
    
   
   public var assertHandler:Function;
   
   public var passThroughData:Object;
   
   function AssertHandler(assertHandler:Function, passThroughData:Object = null)
   {
      super();
      this.assertHandler = assertHandler;
      this.passThroughData = passThroughData;
   }
}
