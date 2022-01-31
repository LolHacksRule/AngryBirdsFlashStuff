package org.flexunit.internals.runners.statements
{
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import org.flexunit.constants.AnnotationArgumentConstants;
   import org.flexunit.constants.AnnotationConstants;
   import org.flexunit.runners.model.FrameworkMethod;
   import org.flexunit.token.AsyncTestToken;
   import org.flexunit.token.ChildResult;
   import org.flexunit.utils.ClassNameUtil;
   
   public class FailOnTimeout extends AsyncStatementBase implements IAsyncStatement
   {
       
      
      private var timeout:Number = 0;
      
      private var statement:IAsyncStatement;
      
      private var timer:Timer;
      
      private var timerComplete:Boolean = false;
      
      private var returnMessageSent:Boolean = false;
      
      public function FailOnTimeout(timeout:Number, statement:IAsyncStatement)
      {
         super();
         this.timeout = timeout;
         this.statement = statement;
         myToken = new AsyncTestToken(ClassNameUtil.getLoggerFriendlyClassName(this));
         myToken.addNotificationMethod(this.handleNextExecuteComplete);
         this.timer = new Timer(timeout,1);
         this.timer.addEventListener(TimerEvent.TIMER_COMPLETE,this.handleTimerComplete,false,0,true);
      }
      
      public static function hasTimeout(method:FrameworkMethod) : String
      {
         var timeoutStr:String = String(method.getSpecificMetaDataArgValue(AnnotationConstants.TEST,AnnotationArgumentConstants.TIMEOUT));
         var hasTimeout:Boolean = timeoutStr && timeoutStr != "null" && timeoutStr.length > 0;
         return !!hasTimeout ? timeoutStr : null;
      }
      
      public function evaluate(parentToken:AsyncTestToken) : void
      {
         this.parentToken = parentToken;
         this.timer.start();
         this.statement.evaluate(myToken);
      }
      
      private function handleTimerComplete(event:TimerEvent) : void
      {
         this.timerComplete = true;
         this.handleNextExecuteComplete(new ChildResult(myToken,new Error("Test did not complete within specified timeout " + this.timeout + "ms")));
      }
      
      public function handleNextExecuteComplete(result:ChildResult) : void
      {
         this.timer.stop();
         this.timer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.handleTimerComplete,false);
         if(this.returnMessageSent)
         {
            return;
         }
         this.returnMessageSent = true;
         sendComplete(result.error);
      }
   }
}
