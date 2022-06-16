package org.flexunit.runners.model
{
   import flex.lang.reflect.Method;
   import flex.lang.reflect.metadata.MetaDataAnnotation;
   import flex.lang.reflect.metadata.MetaDataArgument;
   import org.flexunit.constants.AnnotationArgumentConstants;
   import org.flexunit.token.AsyncTestToken;
   
   public class FrameworkMethod
   {
       
      
      private var _method:Method;
      
      private var asyncFound:Boolean = false;
      
      private var _async:Boolean = false;
      
      public function FrameworkMethod(method:Method)
      {
         super();
         this._method = method;
      }
      
      public function get method() : Method
      {
         return this._method;
      }
      
      public function get name() : String
      {
         return this.method.name;
      }
      
      public function get metadata() : Array
      {
         return this.method.metadata;
      }
      
      public function getSpecificMetaDataArgValue(metaDataTag:String, key:String) : String
      {
         var metaDataArgument:MetaDataArgument = null;
         var returnValue:String = null;
         var metaDataAnnotation:MetaDataAnnotation = this.method.getMetaData(metaDataTag);
         if(metaDataAnnotation)
         {
            metaDataArgument = metaDataAnnotation.getArgument(key,true);
         }
         if(metaDataArgument)
         {
            returnValue = metaDataArgument.value;
         }
         return returnValue;
      }
      
      public function get isAsync() : Boolean
      {
         if(!this.asyncFound)
         {
            this.asyncFound = true;
            this._async = this.determineAsync();
         }
         return this._async;
      }
      
      private function determineAsync() : Boolean
      {
         var annotation:MetaDataAnnotation = null;
         var i:int = 0;
         var async:Boolean = false;
         var annotations:Array = this.method.metadata;
         if(annotations)
         {
            for(i = 0; i < annotations.length; i++)
            {
               annotation = annotations[i] as MetaDataAnnotation;
               if(annotation.hasArgument(AnnotationArgumentConstants.ASYNC))
               {
                  async = true;
                  break;
               }
            }
         }
         return async;
      }
      
      public function hasMetaData(metaDataTag:String) : Boolean
      {
         return this.method.hasMetaData(metaDataTag);
      }
      
      public function producesType(type:Class) : Boolean
      {
         return this.method.parameterTypes.length == 0 && type == this.method.returnType;
      }
      
      public function applyExplosively(target:Object, params:Array) : void
      {
         var result:Object = this.method.apply(target,params);
      }
      
      public function invokeExplosivelyAsync1(parentToken:AsyncTestToken, target:Object, ... params) : void
      {
         this.applyExplosively(target,params);
         parentToken.sendResult();
      }
      
      public function invokeExplosively(target:Object, ... params) : Object
      {
         return this.method.apply(target,params);
      }
      
      public function validatePublicVoidNoArg(isStatic:Boolean, errors:Array) : void
      {
         this.validatePublicVoid(isStatic,errors);
         var needsParams:* = this.method.parameterTypes.length > 0;
         if(needsParams)
         {
            errors.push(new Error("Method " + this.name + " should have no parameters"));
         }
      }
      
      public function validatePublicVoid(isStatic:Boolean, errors:Array) : void
      {
         var state:String = null;
         if(this.method.isStatic != isStatic)
         {
            state = !!isStatic ? "should" : "should not";
            errors.push(new Error("Method " + this.name + "() " + state + " be static"));
         }
         var isVoid:* = !this.method.returnType;
         if(!isVoid)
         {
            errors.push(new Error("Method " + this.name + "() should be void"));
         }
      }
      
      public function toString() : String
      {
         return "FrameworkMethod " + this.name;
      }
   }
}
