package org.flexunit.internals.runners.statements
{
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   import org.flexunit.AssertionError;
   import org.flexunit.constants.AnnotationArgumentConstants;
   import org.flexunit.constants.AnnotationConstants;
   import org.flexunit.internals.runners.model.MultipleFailureException;
   import org.flexunit.runners.model.FrameworkMethod;
   import org.flexunit.token.AsyncTestToken;
   import org.flexunit.token.ChildResult;
   import org.flexunit.utils.ClassNameUtil;
   
   public class ExpectException extends AsyncStatementBase implements IAsyncStatement
   {
       
      
      private var exceptionName:String;
      
      private var exceptionClass:Class;
      
      private var statement:IAsyncStatement;
      
      private var receivedError:Boolean = false;
      
      public function ExpectException(exceptionName:String, statement:IAsyncStatement)
      {
         super();
         this.exceptionName = exceptionName;
         this.statement = statement;
         this.exceptionClass = getDefinitionByName(exceptionName) as Class;
         myToken = new AsyncTestToken(ClassNameUtil.getLoggerFriendlyClassName(this));
         myToken.addNotificationMethod(this.handleNextExecuteComplete);
      }
      
      public static function hasExpected(method:FrameworkMethod) : String
      {
         var expected:String = method.getSpecificMetaDataArgValue(AnnotationConstants.TEST,AnnotationArgumentConstants.EXPECTS);
         var hasExpected:Boolean = expected && expected.length > 0;
         if(!hasExpected)
         {
            expected = method.getSpecificMetaDataArgValue(AnnotationConstants.TEST,AnnotationArgumentConstants.EXPECTED);
            hasExpected = expected && expected.length > 0;
         }
         return !!hasExpected ? expected : null;
      }
      
      private function validErrorType(e:Error) : Boolean
      {
         return e is this.exceptionClass;
      }
      
      private function createInvalidError(e:Error) : Error
      {
         var message:* = "Unexpected exception, expected<" + this.exceptionName + "> but was<" + getQualifiedClassName(e) + ">";
         return new Error(message);
      }
      
      public function evaluate(parentToken:AsyncTestToken) : void
      {
         this.parentToken = parentToken;
         try
         {
            this.statement.evaluate(myToken);
         }
         catch(e:Error)
         {
            receivedError = true;
            if(validErrorType(e))
            {
               handleNextExecuteComplete(new ChildResult(myToken));
            }
            else
            {
               handleNextExecuteComplete(new ChildResult(myToken,createInvalidError(e)));
            }
         }
      }
      
      public function handleNextExecuteComplete(result:ChildResult) : void
      {
         var errorToSendBack:Error = null;
         var localError:Error = null;
         if(result && result.error)
         {
            this.receivedError = true;
            if(this.validErrorType(result.error))
            {
               errorToSendBack = null;
            }
            else
            {
               errorToSendBack = this.createInvalidError(result.error);
            }
         }
         if(!this.receivedError)
         {
            localError = new AssertionError("Expected exception: " + this.exceptionName);
            if(result.error)
            {
               if(result.error is MultipleFailureException)
               {
                  errorToSendBack = MultipleFailureException(result.error).addFailure(localError);
               }
               else
               {
                  errorToSendBack = new MultipleFailureException([result.error,localError]);
               }
            }
            if(!errorToSendBack)
            {
               errorToSendBack = localError;
            }
         }
         sendComplete(errorToSendBack);
      }
   }
}
