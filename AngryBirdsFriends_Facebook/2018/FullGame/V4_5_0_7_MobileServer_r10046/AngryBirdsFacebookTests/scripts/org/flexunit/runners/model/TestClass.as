package org.flexunit.runners.model
{
   import flash.utils.Dictionary;
   import flex.lang.reflect.Field;
   import flex.lang.reflect.Klass;
   import flex.lang.reflect.Method;
   import flex.lang.reflect.metadata.MetaDataAnnotation;
   
   public class TestClass
   {
       
      
      private var klass:Class;
      
      private var _klassInfo:Klass;
      
      private var metaDataDictionary:Dictionary;
      
      public function TestClass(klass:Class)
      {
         var method:Method = null;
         this.metaDataDictionary = new Dictionary(false);
         super();
         this.klass = klass;
         this._klassInfo = new Klass(klass);
         var methods:Array = this._klassInfo.methods;
         for(var i:int = 0; i < methods.length; i++)
         {
            method = methods[i] as Method;
            this.addToMetaDataDictionary(new FrameworkMethod(method));
         }
      }
      
      public function get klassInfo() : Klass
      {
         return this._klassInfo;
      }
      
      private function addToMetaDataDictionary(testMethod:FrameworkMethod) : void
      {
         var metaTag:MetaDataAnnotation = null;
         var entry:Array = null;
         var i:int = 0;
         var found:Boolean = false;
         var j:int = 0;
         var metaDataList:Array = testMethod.metadata;
         if(metaDataList)
         {
            for(i = 0; i < metaDataList.length; i++)
            {
               metaTag = metaDataList[i];
               entry = this.metaDataDictionary[metaTag.name];
               if(!entry)
               {
                  this.metaDataDictionary[metaTag.name] = [];
                  entry = this.metaDataDictionary[metaTag.name];
               }
               found = false;
               for(j = 0; j < entry.length; j++)
               {
                  if((entry[j] as FrameworkMethod).method === testMethod.method)
                  {
                     found = true;
                     break;
                  }
               }
               if(!found)
               {
                  entry.push(testMethod);
               }
            }
         }
      }
      
      public function get asClass() : Class
      {
         return this.klass;
      }
      
      public function get name() : String
      {
         if(!this.klassInfo)
         {
            return "null";
         }
         return this.klassInfo.name;
      }
      
      public function get metadata() : Array
      {
         if(!this.klassInfo)
         {
            return null;
         }
         return this.klassInfo.metadata;
      }
      
      public function getMetaDataMethods(metaTag:String) : Array
      {
         var methodArray:Array = null;
         methodArray = this.metaDataDictionary[metaTag];
         if(!methodArray)
         {
            methodArray = new Array();
         }
         return methodArray;
      }
      
      public function getMetaDataFields(metaTag:String, static:Boolean = false) : Array
      {
         var field:Field = null;
         var fieldArray:Array = new Array();
         var len:uint = this.klassInfo.fields.length;
         for(var i:int = 0; i < len; i++)
         {
            field = this.klassInfo.fields[i] as Field;
            if(field.isStatic == static && field.hasMetaData(metaTag))
            {
               fieldArray.push(field);
            }
         }
         return fieldArray;
      }
      
      public function toString() : String
      {
         var str:String = "TestClass ";
         if(this._klassInfo)
         {
            str += "(" + this._klassInfo.name + ")";
         }
         return str;
      }
   }
}
