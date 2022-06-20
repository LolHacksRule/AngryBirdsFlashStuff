package flex.lang.reflect
{
   import flash.utils.Dictionary;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   import flex.lang.reflect.builders.FieldBuilder;
   import flex.lang.reflect.builders.MetaDataAnnotationBuilder;
   import flex.lang.reflect.builders.MethodBuilder;
   import flex.lang.reflect.cache.ClassDataCache;
   import flex.lang.reflect.metadata.MetaDataAnnotation;
   import flex.lang.reflect.utils.MetadataTools;
   
   public class Klass
   {
      
      private static var metaDataCache:Dictionary = new Dictionary();
       
      
      private var classXML:XML;
      
      private var clazz:Class;
      
      private var _name:String;
      
      private var _metaData:Array;
      
      private var _constructor:Constructor;
      
      private var _fields:Array;
      
      private var _methods:Array;
      
      private var _interfaces:Array;
      
      private var _packageName:String;
      
      private var _inheritance:Array;
      
      public function Klass(clazz:Class)
      {
         super();
         if(clazz)
         {
            this.classXML = ClassDataCache.describeType(clazz);
         }
         if(!this.classXML)
         {
            this.classXML = <type/>;
         }
         this.clazz = clazz;
         this._name = this.classXML.@name;
      }
      
      private static function getDotPathFromName(name:String) : String
      {
         var colonReplace:RegExp = /::/g;
         return name.replace(colonReplace,".");
      }
      
      public static function getClassFromName(name:String) : Class
      {
         var resolvedClass:Class = null;
         var stringName:String = getDotPathFromName(name);
         if(stringName == "void" || stringName == "*")
         {
            return null;
         }
         try
         {
            resolvedClass = getDefinitionByName(stringName) as Class;
         }
         catch(e:Error)
         {
            resolvedClass = null;
         }
         return resolvedClass;
      }
      
      public function get asClass() : Class
      {
         return this.clazz;
      }
      
      public function get isInterface() : Boolean
      {
         var obj:XMLList = null;
         var isInt:Boolean = true;
         if(this.classXML && this.classXML.factory)
         {
            obj = this.classXML.factory.extendsClass.(@type == "Object");
            if(obj && obj.length() > 0)
            {
               isInt = false;
            }
         }
         return isInt;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get metadata() : Array
      {
         var annotationBuilder:MetaDataAnnotationBuilder = null;
         if(!this._metaData)
         {
            annotationBuilder = new MetaDataAnnotationBuilder(this.classXML);
            this._metaData = annotationBuilder.buildAllAnnotations();
         }
         return this._metaData;
      }
      
      function get constructorXML() : XML
      {
         return this.classXML.factory.constructor[0];
      }
      
      public function get constructor() : Constructor
      {
         if(!this._constructor)
         {
            this._constructor = new Constructor(this.constructorXML,this);
         }
         return this._constructor;
      }
      
      public function getField(name:String) : Field
      {
         for(var i:int = 0; i < this.fields.length; i++)
         {
            if(this.fields[i].name == name)
            {
               return this.fields[i];
            }
         }
         return null;
      }
      
      public function get fields() : Array
      {
         var fieldBuilder:FieldBuilder = null;
         if(!this._fields)
         {
            fieldBuilder = new FieldBuilder(this.classXML,this.clazz);
            this._fields = fieldBuilder.buildAllFields();
         }
         return this._fields;
      }
      
      public function getMethod(name:String) : Method
      {
         for(var i:int = 0; i < this.methods.length; i++)
         {
            if(this.methods[i].name == name)
            {
               return this.methods[i];
            }
         }
         return null;
      }
      
      public function get methods() : Array
      {
         var methodBuilder:MethodBuilder = null;
         if(!this._methods)
         {
            methodBuilder = new MethodBuilder(this.classXML,this.classInheritance);
            this._methods = methodBuilder.buildAllMethods();
         }
         return this._methods;
      }
      
      public function get interfaces() : Array
      {
         if(!this._interfaces)
         {
            this._interfaces = this.retrieveInterfaces();
         }
         return this._interfaces;
      }
      
      public function get packageName() : String
      {
         if(!this._packageName)
         {
            this._packageName = this.name.substr(0,this.name.indexOf("::"));
         }
         return this._packageName;
      }
      
      private function buildInheritance() : Array
      {
         var className:String = null;
         var i:int = 0;
         var superArray:Array = new Array();
         if(this.classXML.factory && this.classXML.factory.extendsClass)
         {
            for(i = 0; i < this.classXML.factory.extendsClass.length(); i++)
            {
               className = this.classXML.factory.extendsClass[i].@type;
               if(className == "Object")
               {
                  superArray.push(Object);
               }
               else
               {
                  superArray.push(getClassFromName(className));
               }
            }
         }
         return superArray;
      }
      
      public function get classInheritance() : Array
      {
         if(!this._inheritance)
         {
            this._inheritance = this.buildInheritance();
         }
         return this._inheritance;
      }
      
      public function get superClass() : Class
      {
         var inheritance:Array = this.classInheritance;
         if(inheritance.length > 0)
         {
            return inheritance[0];
         }
         return null;
      }
      
      public function get classDef() : Class
      {
         return this.asClass;
      }
      
      public function descendsFrom(clazz:Class) : Boolean
      {
         var className:String = getQualifiedClassName(clazz);
         return MetadataTools.classExtendsFromNode(this.classXML.factory[0],className);
      }
      
      private function retrieveInterfaces() : Array
      {
         var interfaceList:XMLList = this.classXML.factory.implementsInterface;
         var implement:Array = new Array();
         for(var i:int = 0; i < interfaceList.length(); i++)
         {
            implement.push(getClassFromName(interfaceList[i].@type));
         }
         return implement;
      }
      
      public function implementsInterface(interfaceRef:Class) : Boolean
      {
         var interfaces:Array = this.interfaces;
         var found:Boolean = false;
         for(var i:int = 0; i < interfaces.length; i++)
         {
            if(interfaces[i] == interfaceRef)
            {
               found = true;
               break;
            }
         }
         return found;
      }
      
      public function hasMetaData(name:String) : Boolean
      {
         return this.getMetaData(name) != null;
      }
      
      public function getMetaData(name:String) : MetaDataAnnotation
      {
         var len:int = this.metadata.length;
         for(var i:int = 0; i < len; i++)
         {
            if((this.metadata[i] as MetaDataAnnotation).name == name)
            {
               return this.metadata[i];
            }
         }
         return null;
      }
      
      function refreshClassXML(clazz:Class) : void
      {
         this.classXML = ClassDataCache.describeType(clazz,true);
      }
   }
}
