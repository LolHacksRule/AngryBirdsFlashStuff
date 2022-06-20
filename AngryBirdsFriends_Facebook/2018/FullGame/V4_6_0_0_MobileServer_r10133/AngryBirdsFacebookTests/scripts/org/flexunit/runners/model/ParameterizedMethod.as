package org.flexunit.runners.model
{
   import flex.lang.reflect.Method;
   import flex.lang.reflect.metadata.MetaDataAnnotation;
   import flex.lang.reflect.metadata.MetaDataArgument;
   import org.flexunit.constants.AnnotationArgumentConstants;
   import org.flexunit.constants.AnnotationConstants;
   
   public class ParameterizedMethod extends FrameworkMethod
   {
       
      
      private var _arguments:Array;
      
      public function ParameterizedMethod(method:Method, arguments:Array, methodIndex:uint, totalMethods:uint)
      {
         var newMethod:Method = this.methodWithGuaranteedOrderMetaData(method,methodIndex,totalMethods);
         super(newMethod);
         this._arguments = arguments;
      }
      
      public function get arguments() : Array
      {
         return this._arguments;
      }
      
      override public function get name() : String
      {
         var paramName:String = this._arguments.join(",");
         return method.name + " (" + paramName + ")";
      }
      
      override public function invokeExplosively(target:Object, ... params) : Object
      {
         applyExplosively(target,this.arguments);
         return null;
      }
      
      protected function methodWithGuaranteedOrderMetaData(method:Method, methodIndex:int, totalMethods:int) : Method
      {
         var arg:MetaDataArgument = null;
         var orderArg:XML = null;
         var i:int = 0;
         var newMethod:Method = method.clone();
         var annotation:MetaDataAnnotation = newMethod.getMetaData(AnnotationConstants.TEST);
         var orderValueDec:Number = (methodIndex + 1) / Math.pow(10,totalMethods);
         if(annotation)
         {
            arg = annotation.getArgument(AnnotationArgumentConstants.ORDER,true);
            orderArg = <arg key="order" value="0"/>;
            if(arg)
            {
               orderArg.@value = orderValueDec + Number(arg.value);
               arguments = annotation.arguments;
               for(i = 0; i < arguments.length; i++)
               {
                  if(arguments[i] === arg)
                  {
                     arguments.splice(i,1,new MetaDataArgument(orderArg));
                     break;
                  }
               }
            }
            else
            {
               orderArg.@value = orderValueDec;
               annotation.arguments.push(new MetaDataArgument(orderArg));
            }
         }
         return newMethod;
      }
      
      override public function toString() : String
      {
         return "ParameterizedMethod " + this.name;
      }
   }
}
