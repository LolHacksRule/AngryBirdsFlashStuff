package flex.lang.reflect.builders
{
   import flex.lang.reflect.Method;
   import flex.lang.reflect.cache.ClassDataCache;
   import flex.lang.reflect.utils.MetadataTools;
   
   public class MethodBuilder
   {
       
      
      private var classXML:XML;
      
      private var inheritance:Array;
      
      private var methodMap:Object;
      
      public function MethodBuilder(classXML:XML, inheritance:Array)
      {
         super();
         this.classXML = classXML;
         this.inheritance = inheritance;
         this.methodMap = new Object();
      }
      
      private function buildMethod(methodData:XML, isStatic:Boolean) : Method
      {
         return new Method(methodData,isStatic);
      }
      
      private function buildMethods(parentBlock:XML, isStatic:Boolean = false) : Array
      {
         var methods:Array = new Array();
         var methodList:XMLList = new XMLList();
         if(parentBlock)
         {
            methodList = MetadataTools.getMethodsList(parentBlock);
         }
         for(var i:int = 0; i < methodList.length(); i++)
         {
            methods.push(this.buildMethod(methodList[i],isStatic));
         }
         return methods;
      }
      
      private function addMetaDataToMethod(subClassMethod:Method, superClassMethod:Method) : void
      {
         var subMetaDataArray:Array = subClassMethod.metadata;
         var superMetaDataArray:Array = superClassMethod.metadata;
         for(var i:int = 0; i < superMetaDataArray.length; i++)
         {
            subMetaDataArray.push(superMetaDataArray[i]);
         }
      }
      
      private function addMetaDataPerSuperClass(methodMap:Object, superXML:XML) : void
      {
         var methods:Array = null;
         var superMethod:Method = null;
         var instanceMethod:Method = null;
         var i:int = 0;
         if(superXML.factory)
         {
            methods = this.buildMethods(superXML.factory[0],false);
            for(i = 0; i < methods.length; i++)
            {
               superMethod = methods[i] as Method;
               instanceMethod = methodMap[superMethod.name];
               if(instanceMethod)
               {
                  this.addMetaDataToMethod(instanceMethod,superMethod);
               }
            }
         }
      }
      
      public function buildAllMethods() : Array
      {
         var method:Method = null;
         var i:int = 0;
         var j:int = 0;
         var methods:Array = new Array();
         if(this.classXML.factory)
         {
            methods = methods.concat(this.buildMethods(this.classXML.factory[0],false));
         }
         methods = methods.concat(this.buildMethods(this.classXML,true));
         if(this.inheritance && this.inheritance.length > 1)
         {
            for(i = 0; i < methods.length; i++)
            {
               method = methods[i] as Method;
               this.methodMap[method.name] = method;
            }
            for(j = 0; j < this.inheritance.length; j++)
            {
               if(this.inheritance[j] != Object)
               {
                  this.addMetaDataPerSuperClass(this.methodMap,ClassDataCache.describeType(this.inheritance[j]));
               }
            }
         }
         return methods;
      }
   }
}
