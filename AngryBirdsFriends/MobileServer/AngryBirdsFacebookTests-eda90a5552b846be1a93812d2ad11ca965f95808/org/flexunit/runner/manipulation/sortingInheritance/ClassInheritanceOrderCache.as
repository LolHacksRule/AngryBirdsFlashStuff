package org.flexunit.runner.manipulation.sortingInheritance
{
   import flash.utils.Dictionary;
   import flex.lang.reflect.Klass;
   import flex.lang.reflect.Method;
   import org.flexunit.runner.IDescription;
   import org.flexunit.runners.model.TestClass;
   import org.flexunit.utils.DescriptionUtil;
   
   public class ClassInheritanceOrderCache implements ISortingInheritanceCache
   {
       
      
      private var superFirst:Boolean = true;
      
      private var testClass:TestClass;
      
      private var superIndexMap:Dictionary;
      
      private var klassInfo:Klass;
      
      private var maxInheritance:int;
      
      public function ClassInheritanceOrderCache(testClass:TestClass)
      {
         super();
         this.testClass = testClass;
         this.klassInfo = testClass.klassInfo;
         this.superIndexMap = this.buildMap(testClass);
      }
      
      private function returnOnlyName(description:IDescription) : String
      {
         return DescriptionUtil.getMethodNameFromDescription(description);
      }
      
      public function getInheritedOrder(description:IDescription, superFirst:Boolean = true) : int
      {
         var method:Method = this.klassInfo.getMethod(this.returnOnlyName(description));
         var index:int = this.superIndexMap[method.declaringClass];
         if(!superFirst)
         {
            index = this.maxInheritance - index;
         }
         return index;
      }
      
      private function buildMap(testClass:TestClass) : Dictionary
      {
         var dict:Dictionary = new Dictionary(true);
         var inheritance:Array = this.klassInfo.classInheritance;
         this.maxInheritance = inheritance.length;
         dict[testClass.asClass] = 0;
         for(var i:int = 0; i < inheritance.length; i++)
         {
            dict[inheritance[i]] = i + 1;
         }
         return dict;
      }
   }
}
