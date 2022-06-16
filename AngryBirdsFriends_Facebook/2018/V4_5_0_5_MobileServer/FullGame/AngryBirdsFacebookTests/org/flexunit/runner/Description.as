package org.flexunit.runner
{
   import flash.utils.getQualifiedClassName;
   import flex.lang.reflect.Klass;
   import mx.utils.ObjectUtil;
   
   public class Description implements IDescription
   {
      
      public static var EMPTY:Description = new Description("Empty",null);
      
      public static var TEST_MECHANISM:Description = new Description("Test mechanism",null);
       
      
      private var _children:Array;
      
      private var _displayName:String = "";
      
      private var _metadata:Array;
      
      private var _isInstance:Boolean = false;
      
      public function Description(displayName:String, metadata:Array, isInstance:Boolean = false)
      {
         super();
         this._displayName = displayName;
         this._isInstance = isInstance;
         this._children = new Array();
         this._metadata = metadata;
      }
      
      public static function createSuiteDescription(suiteClassOrName:*, metaData:Array = null) : IDescription
      {
         var description:Description = null;
         var klass:Klass = null;
         if(suiteClassOrName is String)
         {
            description = new Description(suiteClassOrName,metaData);
         }
         else
         {
            klass = new Klass(suiteClassOrName);
            description = new Description(getQualifiedClassName(suiteClassOrName),klass.metadata);
         }
         return description;
      }
      
      public static function createTestDescription(testClassOrInstance:Class, name:String, metadata:Array = null) : IDescription
      {
         return new Description(getQualifiedClassName(testClassOrInstance) + "." + name,metadata);
      }
      
      public function get children() : Array
      {
         return this._children;
      }
      
      public function get displayName() : String
      {
         return this._displayName;
      }
      
      public function get isSuite() : Boolean
      {
         return !this.isTest;
      }
      
      public function get isTest() : Boolean
      {
         return this.children == null || this.children && this.children.length == 0;
      }
      
      public function get testCount() : int
      {
         var child:IDescription = null;
         var i:int = 0;
         if(this.isTest)
         {
            return 1;
         }
         var result:int = 0;
         if(this.children)
         {
            for(i = 0; i < this.children.length; i++)
            {
               child = this.children[i] as IDescription;
               result += child.testCount;
            }
         }
         return result;
      }
      
      public function getAllMetadata() : Array
      {
         return this._metadata;
      }
      
      public function get isInstance() : Boolean
      {
         return this._isInstance;
      }
      
      public function get isEmpty() : Boolean
      {
         return !this.isTest && this.testCount == 0;
      }
      
      public function addChild(description:IDescription) : void
      {
         this.children.push(description);
      }
      
      public function childlessCopy() : IDescription
      {
         trace("Method not yet implemented");
         return new Description(this._displayName,this._metadata);
      }
      
      public function equals(obj:Object) : Boolean
      {
         if(!(obj is Description))
         {
            return false;
         }
         var d:Description = Description(obj);
         return this.displayName == d.displayName && ObjectUtil.compare(this.children,d.children) == 0;
      }
   }
}
