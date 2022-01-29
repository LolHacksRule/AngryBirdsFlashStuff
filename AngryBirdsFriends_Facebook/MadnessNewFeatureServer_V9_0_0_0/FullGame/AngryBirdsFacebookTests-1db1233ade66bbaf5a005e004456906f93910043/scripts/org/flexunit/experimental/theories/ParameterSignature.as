package org.flexunit.experimental.theories
{
   import flex.lang.reflect.Constructor;
   import flex.lang.reflect.Field;
   import flex.lang.reflect.Method;
   import flex.lang.reflect.metadata.MetaDataAnnotation;
   import org.flexunit.runners.model.FrameworkMethod;
   
   public class ParameterSignature
   {
       
      
      private var _type:Class;
      
      private var _metaDataList:Array;
      
      public function ParameterSignature(type:Class, metaDataList:Array)
      {
         super();
         this._type = type;
         this._metaDataList = metaDataList;
      }
      
      public static function signaturesByMethod(method:Method) : Array
      {
         return signatures(method.parameterTypes,method.metadata);
      }
      
      public static function signaturesByContructor(constructor:Constructor) : Array
      {
         return signatures(constructor.parameterTypes,null);
      }
      
      private static function signatures(parameterTypes:Array, metadataList:Array) : Array
      {
         var sigs:Array = new Array();
         for(var i:int = 0; i < parameterTypes.length; i++)
         {
            sigs.push(new ParameterSignature(parameterTypes[i],metadataList));
         }
         return sigs;
      }
      
      public function canAcceptType(candidate:Class) : Boolean
      {
         return this.type == candidate;
      }
      
      public function get type() : Class
      {
         return this._type;
      }
      
      public function canAcceptArrayType(field:Field) : Boolean
      {
         return field.type == Array && this.canAcceptType(field.elementType);
      }
      
      public function canAcceptArrayTypeMethod(frameworkMethod:FrameworkMethod) : Boolean
      {
         return frameworkMethod.producesType(Array) && this.canAcceptType(frameworkMethod.method.elementType);
      }
      
      public function hasMetadata(type:String) : Boolean
      {
         return this.getAnnotation(type) != null;
      }
      
      public function findDeepAnnotation(type:String) : MetaDataAnnotation
      {
         var metaDataList2:Array = this._metaDataList.slice();
         return this.privateFindDeepAnnotation(metaDataList2,type,3);
      }
      
      private function privateFindDeepAnnotation(metaDataList:Array, type:String, depth:int) : MetaDataAnnotation
      {
         if(depth == 0)
         {
            return null;
         }
         return this.getAnnotation(type);
      }
      
      public function getAnnotation(type:String) : MetaDataAnnotation
      {
         for(var i:int = 0; i < this._metaDataList.length; i++)
         {
            if((this._metaDataList[i] as MetaDataAnnotation).name == type)
            {
               return this._metaDataList[i];
            }
         }
         return null;
      }
      
      public function toString() : String
      {
         return "ParameterSignature ( type:" + this.type + ", metadata:" + this._metaDataList + " )";
      }
   }
}
