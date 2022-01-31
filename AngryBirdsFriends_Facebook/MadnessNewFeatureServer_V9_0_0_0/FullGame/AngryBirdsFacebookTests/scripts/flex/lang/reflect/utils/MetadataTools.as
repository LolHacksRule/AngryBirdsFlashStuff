package flex.lang.reflect.utils
{
   public class MetadataTools
   {
       
      
      public function MetadataTools()
      {
         super();
      }
      
      public static function isClass(description:XML) : Boolean
      {
         var baseType:String = description.@base;
         return baseType == "Class";
      }
      
      public static function isInstance(description:XML) : Boolean
      {
         var baseType:String = description.@base;
         return baseType != "Class";
      }
      
      public static function classExtends(description:XML, className:String) : Boolean
      {
         if(isClass(description))
         {
            return classExtendsFromNode(description.factory[0],className);
         }
         return classExtendsFromNode(description,className);
      }
      
      public static function classImplements(description:XML, interfaceName:String) : Boolean
      {
         if(isClass(description))
         {
            return classImpementsNode(description.factory[0],interfaceName);
         }
         return classImpementsNode(description,interfaceName);
      }
      
      public static function getArgValueFromDescription(description:XML, metadata:String, key:String) : String
      {
         if(isClass(description))
         {
            return getArgValueFromMetaDataNode(description.factory[0],metadata,key);
         }
         return getArgValueFromMetaDataNode(description,metadata,key);
      }
      
      public static function getMethodsList(description:XML) : XMLList
      {
         return description.method;
      }
      
      public static function getMethodsDecoratedBy(methodList:XMLList, metadata:String) : XMLList
      {
         var narrowedMethodList:XMLList = null;
         var parentNodes:XMLList = null;
         var i:int = 0;
         narrowedMethodList = methodList.metadata.(@name == metadata);
         parentNodes = new XMLList();
         for(i = 0; i < narrowedMethodList.length(); i++)
         {
            parentNodes += narrowedMethodList[i].parent();
         }
         return parentNodes;
      }
      
      public static function classExtendsFromNode(node:XML, className:String) : Boolean
      {
         var extendsList:XMLList = null;
         var doesExtend:Boolean = false;
         if(node && node.extendsClass)
         {
            extendsList = node.extendsClass.(@type == className);
            doesExtend = extendsList && extendsList.length() > 0;
         }
         return doesExtend;
      }
      
      public static function classImpementsNode(node:XML, interfaceName:String) : Boolean
      {
         var implementsList:XMLList = null;
         var doesImplement:Boolean = false;
         if(node && node.implementsInterface)
         {
            implementsList = node.implementsInterface.(@type == interfaceName);
            doesImplement = implementsList && implementsList.length() > 0;
         }
         return doesImplement;
      }
      
      public static function nodeHasMetaData(node:XML, metadata:String) : Boolean
      {
         var metaNodes:XMLList = null;
         if(node && node.metadata && node.metadata.length() > 0)
         {
            metaNodes = node.metadata.(@name == metadata);
            if(metaNodes.length() > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function doesMethodAcceptsParams(method:XML) : Boolean
      {
         if(method && method.parameter && method.parameter.length() > 0)
         {
            return true;
         }
         return false;
      }
      
      public static function getMethodReturnType(method:XML) : String
      {
         if(method)
         {
            return method.@returnType;
         }
         return "";
      }
      
      public static function nodeMetaData(node:XML) : XMLList
      {
         if(node && node.metadata && node.metadata.length() > 0)
         {
            return node.metadata;
         }
         return null;
      }
      
      public static function getMetaDataNodeFromNodesList(nodes:XMLList, type:String) : XML
      {
         var node:XML = null;
         var i:int = 0;
         if(nodes)
         {
            for(i = 0; i < nodes.length(); i++)
            {
               node = nodes[i] as XML;
               if(node.(@name == type).length())
               {
                  return node;
               }
            }
         }
         return null;
      }
      
      public static function getArgsFromFromNode(node:XML, metaDataName:String) : XML
      {
         var metadata:XML = null;
         var xmlList:XMLList = null;
         if(node.hasOwnProperty("metadata"))
         {
            xmlList = node.metadata.(@name == metaDataName);
            metadata = !!xmlList ? xmlList[0] : null;
         }
         return metadata;
      }
      
      public static function checkForValueInBlankMetaDataNode(node:XML, metaDataName:String, value:String) : Boolean
      {
         var metaNodes:XMLList = null;
         var arg:XMLList = null;
         var i:int = 0;
         var exists:Boolean = false;
         if(node && node.metadata && node.metadata.length() > 0)
         {
            metaNodes = node.metadata.(@name == metaDataName);
            if(metaNodes.arg)
            {
               arg = metaNodes.arg.(@key == "");
               for(i = 0; i < arg.length(); i++)
               {
                  if(arg[i].@value == value)
                  {
                     exists = true;
                     break;
                  }
               }
            }
         }
         return exists;
      }
      
      public static function getArgValueFromMetaDataNode(node:XML, metaDataName:String, key:String) : String
      {
         var value:String = null;
         var metaNodes:XMLList = null;
         var arg:XMLList = null;
         if(node && node.metadata && node.metadata.length() > 0)
         {
            metaNodes = node.metadata.(@name == metaDataName);
            if(metaNodes.arg)
            {
               arg = metaNodes.arg.(@key == key);
               if(String(arg.@value).length > 0)
               {
                  value = arg.@value;
               }
            }
         }
         return value;
      }
      
      public static function getArgValueFromSingleMetaDataNode(node:XML, key:String) : String
      {
         var value:String = null;
         var metaNodes:XMLList = null;
         var arg:XMLList = null;
         if(node)
         {
            if(node.arg && node.arg.length() > 0)
            {
               arg = node.arg.(@key == key);
               if(String(arg.@value).length > 0)
               {
                  value = arg.@value;
               }
            }
         }
         return value;
      }
   }
}
