package flex.lang.reflect
{
   import flex.lang.reflect.metadata.MetaDataAnnotation;
   import org.flexunit.constants.AnnotationConstants;
   
   public class Method
   {
       
      
      private var _methodXML:XML;
      
      private var _declaringClass:Class;
      
      private var _name:String;
      
      private var _parameterTypes:Array;
      
      private var _returnType:Class;
      
      private var _metaData:Array;
      
      private var _isStatic:Boolean = false;
      
      private var _elementType:Class;
      
      public function Method(methodXML:XML, isStatic:Boolean = false)
      {
         super();
         if(!methodXML)
         {
            throw new ArgumentError("Valid XML must be provided to Method Constructor");
         }
         this._methodXML = methodXML;
         this._isStatic = isStatic;
         this._name = methodXML.@name;
      }
      
      private static function getDeclaringClassFromMeta(methodXML:XML) : Class
      {
         var type:Class = null;
         if(String(methodXML.@declaredBy).length > 0)
         {
            type = Klass.getClassFromName(methodXML.@declaredBy);
         }
         return type;
      }
      
      private static function getReturnTypeFromMeta(methodXML:XML) : Class
      {
         var type:Class = null;
         if(String(methodXML.@returnType).length > 0)
         {
            type = Klass.getClassFromName(methodXML.@returnType);
         }
         return type;
      }
      
      private static function getParameterClass(parameter:XML) : Class
      {
         var type:Class = null;
         if(String(parameter.@type).length > 0)
         {
            type = Klass.getClassFromName(parameter.@type);
         }
         return type;
      }
      
      private static function getParameterTypes(methodXML:XML) : Array
      {
         var paramArray:Array = null;
         var i:int = 0;
         var paramsLength:int = 0;
         var parameters:XMLList = methodXML.parameter;
         if(!paramArray)
         {
            paramArray = new Array();
         }
         paramsLength = parameters.length();
         if(parameters && paramsLength > 0)
         {
            for(i = 0; i < paramsLength; i++)
            {
               paramArray.push(getParameterClass(parameters[i]));
            }
         }
         return paramArray;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get isStatic() : Boolean
      {
         return this._isStatic;
      }
      
      public function get methodXML() : XML
      {
         return this._methodXML;
      }
      
      public function get declaringClass() : Class
      {
         if(!this._declaringClass)
         {
            this._declaringClass = getDeclaringClassFromMeta(this.methodXML);
         }
         return this._declaringClass;
      }
      
      public function get returnType() : Class
      {
         if(!this._returnType)
         {
            this._returnType = getReturnTypeFromMeta(this.methodXML);
         }
         return this._returnType;
      }
      
      public function get parameterTypes() : Array
      {
         if(!this._parameterTypes)
         {
            this._parameterTypes = getParameterTypes(this.methodXML);
         }
         return this._parameterTypes;
      }
      
      public function get metadata() : Array
      {
         var methodMetaData:XMLList = null;
         var i:int = 0;
         if(!this._metaData)
         {
            this._metaData = new Array();
            if(this.methodXML && this.methodXML.metadata)
            {
               methodMetaData = this.methodXML.metadata;
               for(i = 0; i < methodMetaData.length(); i++)
               {
                  this._metaData.push(new MetaDataAnnotation(methodMetaData[i]));
               }
            }
         }
         return this._metaData;
      }
      
      public function hasMetaData(name:String) : Boolean
      {
         return this.getMetaData(name) != null;
      }
      
      public function getMetaData(name:String) : MetaDataAnnotation
      {
         var i:int = 0;
         var metadataAr:Array = this.metadata;
         if(metadataAr.length)
         {
            for(i = 0; i < metadataAr.length; i++)
            {
               if((metadataAr[i] as MetaDataAnnotation).name == name)
               {
                  return metadataAr[i];
               }
            }
         }
         return null;
      }
      
      public function get elementType() : Class
      {
         var meta:MetaDataAnnotation = null;
         var potentialClassName:String = null;
         if(this._elementType)
         {
            return this._elementType;
         }
         if(this.returnType == Array && this.hasMetaData(AnnotationConstants.ARRAY_ELEMENT_TYPE))
         {
            meta = this.getMetaData(AnnotationConstants.ARRAY_ELEMENT_TYPE);
            try
            {
               if(meta && meta.arguments)
               {
                  potentialClassName = meta.defaultArgument.key;
               }
               this._elementType = Klass.getClassFromName(potentialClassName);
            }
            catch(error:Error)
            {
               _elementType = null;
               trace("Cannot find specified ArrayElementType(" + meta + ") in SWF");
            }
         }
         return this._elementType;
      }
      
      private function getFunction(obj:Object) : Function
      {
         var method:Function = null;
         if(this.isStatic)
         {
            method = this.declaringClass[this.name];
         }
         else
         {
            method = obj[this.name];
         }
         return method;
      }
      
      public function apply(obj:Object, argArray:*) : *
      {
         var returnVal:Object = null;
         var method:Function = this.getFunction(obj);
         if(argArray && argArray.length > 0)
         {
            returnVal = method.apply(obj,argArray);
         }
         else
         {
            returnVal = method.apply(obj);
         }
         return returnVal;
      }
      
      public function invoke(obj:Object, ... args) : Object
      {
         var returnVal:Object = null;
         var method:Function = this.getFunction(obj);
         if(args && args.length > 0)
         {
            returnVal = method.apply(obj,args);
         }
         else
         {
            returnVal = method.apply(obj);
         }
         return returnVal;
      }
      
      public function clone() : Method
      {
         var xmlCopy:XML = this.methodXML.copy();
         return new Method(xmlCopy,this.isStatic);
      }
      
      public function equals(item:Method) : Boolean
      {
         var localParamLen:int = 0;
         var remoteParamLen:int = 0;
         var localMetaLen:int = 0;
         var remoteMetaLen:int = 0;
         var j:int = 0;
         var i:int = 0;
         var localMeta:MetaDataAnnotation = null;
         var remoteMeta:MetaDataAnnotation = null;
         if(!item)
         {
            return false;
         }
         var equiv:* = Boolean(this.name == item.name && this.isStatic == item.isStatic && this.declaringClass == item.declaringClass && this.returnType == item.returnType);
         var localParams:Array = this.parameterTypes;
         var remoteParams:Array = item.parameterTypes;
         var localMetaData:Array = this.metadata;
         var remoteMetaData:Array = item.metadata;
         if(equiv)
         {
            localParamLen = !!localParams ? int(localParams.length) : 0;
            remoteParamLen = !!remoteParams ? int(remoteParams.length) : 0;
            if(localParamLen != remoteParamLen)
            {
               return false;
            }
            if(localParamLen > 0)
            {
               for(j = 0; j < localParamLen; j++)
               {
                  equiv = localParams[j] == remoteParams[j];
                  if(!equiv)
                  {
                     break;
                  }
               }
            }
            localMetaLen = !!localMetaData ? int(localMetaData.length) : 0;
            remoteMetaLen = !!remoteMetaData ? int(remoteMetaData.length) : 0;
            if(localMetaLen != remoteMetaLen)
            {
               return false;
            }
            if(localMetaLen > 0)
            {
               for(i = 0; i < localMetaLen; i++)
               {
                  localMeta = localMetaData[i];
                  remoteMeta = remoteMetaData[i];
                  equiv = Boolean(localMeta.equals(remoteMeta));
                  if(!equiv)
                  {
                     break;
                  }
               }
            }
         }
         return equiv;
      }
   }
}
